; ModuleID = 'vithist.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vithist_t = type { %struct.vithist_entry_t**, i32*, i32, i32, i32, i32, i32*, i32*, %struct.vh_lms2vh_t**, %struct.gnode_s* }
%struct.vithist_entry_t = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, %union.vh_lmstate_t }
%union.vh_lmstate_t = type { %struct.anon }
%struct.anon = type { [2 x i16] }
%struct.vh_lms2vh_t = type { i32, i32, %struct.vithist_entry_t*, %struct.gnode_s* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
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
%struct.wordprob_t = type { i32, i32 }
%struct.hyp_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dagnode_t = type { i32, i32, i32, i32, %struct.gnode_s* }

@.str = private unnamed_addr constant [10 x i8] c"vithist.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Initializing Viterbi-history module\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Allocation for viterbi history, finall size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"Hmm->out.history equals to -1 with score %d, some active phone was not computed?\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"VITHIST  frame %d  #entries %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"VITHIST  #frames %d  #entries %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\09%7s %5s %5s %11s %9s %8s %7s %4s Word (LM-state)\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Seq/Val\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SFrm\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"EFrm\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"PathScr\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SegAScr\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SegLScr\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Pred\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%5d BS: %11d BV: %8d\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"\09%c%6d %5d %5d %11d %9d %8d %7d %4d %s\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"END_VITHIST\0A\00", align 1
@.str.24 = private unnamed_addr constant [64 x i8] c"Nodes %d (NODEID WORD STARTFRAME FIRST-ENDFRAME LAST-ENDFRAME)\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%d %s %d %d %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Initial %d\0AFinal %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"BestSegAscr 0 (NODEID ENDFRAME ASCORE)\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Edges (FROM-NODEID TO-NODEID ASCORE)\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"Edges (FROM-NODEID ENDFRAME ASCORE)\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1
@.str.33 = private unnamed_addr constant [59 x i8] c"Viterbi history array exhausted; increase VITHIST_MAXBLKS\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.vithist_t* @vithist_init(%struct.kbcore_t* %kbc, i32 %wbeam, i32 %bghist) #0 {
entry:
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %wbeam.addr = alloca i32, align 4
  %bghist.addr = alloca i32, align 4
  %vh = alloca %struct.vithist_t*, align 8
  %lm = alloca %struct.lm_s*, align 8
  %lmset = alloca %struct.lmset_s*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %wp = alloca %struct.wordprob_t*, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store i32 %wbeam, i32* %wbeam.addr, align 4
  store i32 %bghist, i32* %bghist.addr, align 4
  store i32 -1, i32* %max, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  %call = call i8* @__ckd_calloc__(i64 1, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 79)
  %0 = bitcast i8* %call to %struct.vithist_t*
  store %struct.vithist_t* %0, %struct.vithist_t** %vh, align 8
  %call1 = call i8* @__ckd_calloc__(i64 256, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 81)
  %1 = bitcast i8* %call1 to %struct.vithist_entry_t**
  %2 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %entry2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %2, i32 0, i32 0
  store %struct.vithist_entry_t** %1, %struct.vithist_entry_t*** %entry2, align 8
  %3 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %3, i32 0, i32 2
  store i32 0, i32* %n_entry, align 4
  %call3 = call i8* @__ckd_calloc__(i64 15001, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 84)
  %4 = bitcast i8* %call3 to i32*
  %5 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %5, i32 0, i32 1
  store i32* %4, i32** %frame_start, align 8
  %call4 = call i8* @__ckd_calloc__(i64 15001, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 86)
  %6 = bitcast i8* %call4 to i32*
  %7 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %7, i32 0, i32 6
  store i32* %6, i32** %bestscore, align 8
  %call5 = call i8* @__ckd_calloc__(i64 15001, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 87)
  %8 = bitcast i8* %call5 to i32*
  %9 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %9, i32 0, i32 7
  store i32* %8, i32** %bestvh, align 8
  %10 = load i32, i32* %wbeam.addr, align 4
  %11 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %wbeam6 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %11, i32 0, i32 5
  store i32 %10, i32* %wbeam6, align 4
  %12 = load i32, i32* %bghist.addr, align 4
  %13 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %bghist7 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %13, i32 0, i32 4
  store i32 %12, i32* %bghist7, align 4
  %14 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm8 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %14, i32 0, i32 4
  %15 = load %struct.lm_s*, %struct.lm_s** %lm8, align 8
  store %struct.lm_s* %15, %struct.lm_s** %lm, align 8
  %16 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lmset9 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %16, i32 0, i32 5
  %17 = load %struct.lmset_s*, %struct.lmset_s** %lmset9, align 8
  store %struct.lmset_s* %17, %struct.lmset_s** %lmset, align 8
  %18 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict10 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %18, i32 0, i32 2
  %19 = load %struct.dict_t*, %struct.dict_t** %dict10, align 8
  store %struct.dict_t* %19, %struct.dict_t** %dict, align 8
  %20 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %20, i32 0, i32 7
  %21 = load i32, i32* %n_word, align 4
  %conv = sext i32 %21 to i64
  %call11 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 96)
  %22 = bitcast i8* %call11 to %struct.wordprob_t*
  store %struct.wordprob_t* %22, %struct.wordprob_t** %wp, align 8
  %23 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool = icmp ne %struct.lmset_s* %23, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %n_lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %25, i32 0, i32 12
  %26 = load i32, i32* %n_lm, align 4
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %28, i64 %idxprom
  %lm13 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx, i32 0, i32 1
  %29 = load %struct.lm_s*, %struct.lm_s** %lm13, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 0
  %30 = load i32, i32* %n_ug, align 4
  %31 = load i32, i32* %max, align 4
  %cmp14 = icmp sgt i32 %30, %31
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %32 to i64
  %33 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx18 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %33, i64 %idxprom17
  %lm19 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx18, i32 0, i32 1
  %34 = load %struct.lm_s*, %struct.lm_s** %lm19, align 8
  %n_ug20 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %34, i32 0, i32 0
  %35 = load i32, i32* %n_ug20, align 4
  store i32 %35, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_E__pr_info_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %37 = load i32, i32* %max, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %max, align 4
  %conv21 = sext i32 %38 to i64
  %call22 = call i8* @__ckd_calloc__(i64 %conv21, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 106)
  %39 = bitcast i8* %call22 to %struct.vh_lms2vh_t**
  %40 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %lms2vh_root = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %40, i32 0, i32 8
  store %struct.vh_lms2vh_t** %39, %struct.vh_lms2vh_t*** %lms2vh_root, align 8
  br label %if.end.30

if.else:                                          ; preds = %entry
  %41 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tobool23 = icmp ne %struct.lm_s* %41, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.else
  %42 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug25 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %42, i32 0, i32 0
  %43 = load i32, i32* %n_ug25, align 4
  %conv26 = sext i32 %43 to i64
  %call27 = call i8* @__ckd_calloc__(i64 %conv26, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 109)
  %44 = bitcast i8* %call27 to %struct.vh_lms2vh_t**
  %45 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %lms2vh_root28 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %45, i32 0, i32 8
  store %struct.vh_lms2vh_t** %44, %struct.vh_lms2vh_t*** %lms2vh_root28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %for.end
  %46 = load %struct.wordprob_t*, %struct.wordprob_t** %wp, align 8
  %47 = bitcast %struct.wordprob_t* %46 to i8*
  call void @ckd_free(i8* %47)
  %48 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %lwidlist = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %48, i32 0, i32 9
  store %struct.gnode_s* null, %struct.gnode_s** %lwidlist, align 8
  %49 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  ret %struct.vithist_t* %49
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare void @ckd_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @vithist_utt_begin(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %ve = alloca %struct.vithist_entry_t*, align 8
  %lm = alloca %struct.lm_s*, align 8
  %dict = alloca %struct.dict_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 4
  %1 = load %struct.lm_s*, %struct.lm_s** %lm1, align 8
  store %struct.lm_s* %1, %struct.lm_s** %lm, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict2 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 2
  %3 = load %struct.dict_t*, %struct.dict_t** %dict2, align 8
  store %struct.dict_t* %3, %struct.dict_t** %dict, align 8
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %call = call %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %4)
  store %struct.vithist_entry_t* %call, %struct.vithist_entry_t** %ve, align 8
  %5 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %startwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %5, i32 0, i32 11
  %6 = load i32, i32* %startwid, align 4
  %7 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %7, i32 0, i32 0
  store i32 %6, i32* %wid, align 4
  %8 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %8, i32 0, i32 1
  store i16 -1, i16* %sf, align 2
  %9 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %9, i32 0, i32 2
  store i16 -1, i16* %ef, align 2
  %10 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ascr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %10, i32 0, i32 3
  store i32 0, i32* %ascr, align 4
  %11 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lscr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %11, i32 0, i32 4
  store i32 0, i32* %lscr, align 4
  %12 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %12, i32 0, i32 5
  store i32 0, i32* %score, align 4
  %13 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %pred = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %13, i32 0, i32 6
  store i32 -1, i32* %pred, align 4
  %14 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %type = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %14, i32 0, i32 7
  store i32 0, i32* %type, align 4
  %15 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %15, i32 0, i32 8
  store i32 1, i32* %valid, align 4
  %16 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %startlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %16, i32 0, i32 5
  %17 = load i16, i16* %startlwid, align 2
  %18 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %18, i32 0, i32 9
  %lm3g = bitcast %union.vh_lmstate_t* %lmstate to %struct.anon*
  %lwid = getelementptr inbounds %struct.anon, %struct.anon* %lm3g, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %lwid, i32 0, i64 0
  store i16 %17, i16* %arrayidx, align 2
  %19 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate3 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %19, i32 0, i32 9
  %lm3g4 = bitcast %union.vh_lmstate_t* %lmstate3 to %struct.anon*
  %lwid5 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid5, i32 0, i64 1
  store i16 -1, i16* %arrayidx6, align 2
  %20 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %20, i32 0, i32 3
  store i32 0, i32* %n_frm, align 4
  %21 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %21, i32 0, i32 1
  %22 = load i32*, i32** %frame_start, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 1, i32* %arrayidx7, align 4
  %23 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %23, i32 0, i32 6
  %24 = load i32*, i32** %bestscore, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 -2147483648, i32* %arrayidx8, align 4
  %25 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %25, i32 0, i32 7
  %26 = load i32*, i32** %bestvh, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 -1, i32* %arrayidx9, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %vh) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %0, i32 0, i32 2
  %1 = load i32, i32* %n_entry, align 4
  %shr = ashr i32 %1, 14
  store i32 %shr, i32* %b, align 4
  %2 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry1 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %2, i32 0, i32 2
  %3 = load i32, i32* %n_entry1, align 4
  %and = and i32 %3, 16383
  store i32 %and, i32* %l, align 4
  %4 = load i32, i32* %l, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %b, align 4
  %cmp2 = icmp sge i32 %5, 256
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call = call i8* @__ckd_calloc__(i64 16384, i64 36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 136)
  %6 = bitcast i8* %call to %struct.vithist_entry_t*
  store %struct.vithist_entry_t* %6, %struct.vithist_entry_t** %ve, align 8
  %7 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %8 = load i32, i32* %b, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry4 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %9, i32 0, i32 0
  %10 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry4, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %10, i64 %idxprom
  store %struct.vithist_entry_t* %7, %struct.vithist_entry_t** %arrayidx, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %b, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry6 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %12, i32 0, i32 0
  %13 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry6, align 8
  %arrayidx7 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %13, i64 %idxprom5
  %14 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx7, align 8
  %15 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %14, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %16 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry9 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %16, i32 0, i32 2
  %17 = load i32, i32* %n_entry9, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %n_entry9, align 4
  %18 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  ret %struct.vithist_entry_t* %18
}

; Function Attrs: nounwind uwtable
define %struct.vithist_entry_t* @vithist_id2entry(%struct.vithist_t* %vh, i32 %id) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %id.addr = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %shr = ashr i32 %0, 14
  %idxprom = sext i32 %shr to i64
  %1 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry1 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %1, i32 0, i32 0
  %2 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry1, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %2, i64 %idxprom
  %3 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx, align 8
  %4 = load i32, i32* %id.addr, align 4
  %and = and i32 %4, 16383
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %3, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %5 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  ret %struct.vithist_entry_t* %5
}

; Function Attrs: nounwind uwtable
define void @vithist_rescore(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc, i32 %wid, i32 %ef, i32 %score, i32 %pred, i32 %type) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %wid.addr = alloca i32, align 4
  %ef.addr = alloca i32, align 4
  %score.addr = alloca i32, align 4
  %pred.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %pve = alloca %struct.vithist_entry_t*, align 8
  %tve = alloca %struct.vithist_entry_t, align 4
  %lwid = alloca i16, align 2
  %se = alloca i32, align 4
  %fe = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store i32 %wid, i32* %wid.addr, align 4
  store i32 %ef, i32* %ef.addr, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %pred, i32* %pred.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %pred.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %1 = load i32, i32* %score.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i32 0, i32 0), i32 %1)
  call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %pred.addr, align 4
  %shr = ashr i32 %2, 14
  %idxprom = sext i32 %shr to i64
  %3 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry1 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %3, i32 0, i32 0
  %4 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry1, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %4, i64 %idxprom
  %5 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx, align 8
  %6 = load i32, i32* %pred.addr, align 4
  %and = and i32 %6, 16383
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %5, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %pve, align 8
  %7 = load i32, i32* %wid.addr, align 4
  %wid2 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 0
  store i32 %7, i32* %wid2, align 4
  %8 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %ef3 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %8, i32 0, i32 2
  %9 = load i16, i16* %ef3, align 2
  %conv = sext i16 %9 to i32
  %add = add nsw i32 %conv, 1
  %conv4 = trunc i32 %add to i16
  %sf = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 1
  store i16 %conv4, i16* %sf, align 2
  %10 = load i32, i32* %ef.addr, align 4
  %conv5 = trunc i32 %10 to i16
  %ef6 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 2
  store i16 %conv5, i16* %ef6, align 2
  %11 = load i32, i32* %type.addr, align 4
  %type7 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 7
  store i32 %11, i32* %type7, align 4
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 8
  store i32 1, i32* %valid, align 4
  %12 = load i32, i32* %score.addr, align 4
  %13 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %score8 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %13, i32 0, i32 5
  %14 = load i32, i32* %score8, align 4
  %sub = sub nsw i32 %12, %14
  %ascr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 3
  store i32 %sub, i32* %ascr, align 4
  %15 = load i32, i32* %pred.addr, align 4
  %cmp9 = icmp eq i32 %15, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %se, align 4
  store i32 1, i32* %fe, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %16 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %ef12 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %16, i32 0, i32 2
  %17 = load i16, i16* %ef12, align 2
  %idxprom13 = sext i16 %17 to i64
  %18 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %18, i32 0, i32 1
  %19 = load i32*, i32** %frame_start, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  store i32 %20, i32* %se, align 4
  %21 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %ef15 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %21, i32 0, i32 2
  %22 = load i16, i16* %ef15, align 2
  %conv16 = sext i16 %22 to i32
  %add17 = add nsw i32 %conv16, 1
  %idxprom18 = sext i32 %add17 to i64
  %23 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start19 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %23, i32 0, i32 1
  %24 = load i32*, i32** %frame_start19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  %25 = load i32, i32* %arrayidx20, align 4
  store i32 %25, i32* %fe, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.11
  %26 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %26, i32 0, i32 2
  %27 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %28 = load i32, i32* %wid.addr, align 4
  %call = call i32 @dict_filler_word(%struct.dict_t* %27, i32 %28)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.end.21
  %29 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %fillpen = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %29, i32 0, i32 6
  %30 = load %struct.fillpen_t*, %struct.fillpen_t** %fillpen, align 8
  %31 = load i32, i32* %wid.addr, align 4
  %call23 = call i32 @fillpen(%struct.fillpen_t* %30, i32 %31)
  %lscr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 4
  store i32 %call23, i32* %lscr, align 4
  %32 = load i32, i32* %score.addr, align 4
  %lscr24 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 4
  %33 = load i32, i32* %lscr24, align 4
  %add25 = add nsw i32 %32, %33
  %score26 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 5
  store i32 %add25, i32* %score26, align 4
  %34 = load i32, i32* %pred.addr, align 4
  %pred27 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 6
  store i32 %34, i32* %pred27, align 4
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 9
  %lm3g = bitcast %union.vh_lmstate_t* %lmstate to %struct.anon*
  %35 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %lmstate28 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %35, i32 0, i32 9
  %lm3g29 = bitcast %union.vh_lmstate_t* %lmstate28 to %struct.anon*
  %36 = bitcast %struct.anon* %lm3g to i8*
  %37 = bitcast %struct.anon* %lm3g29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 4, i32 2, i1 false)
  %38 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %39 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  call void @vithist_enter(%struct.vithist_t* %38, %struct.kbcore_t* %39, %struct.vithist_entry_t* %tve)
  br label %if.end.91

if.else.30:                                       ; preds = %if.end.21
  %40 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lmset = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %40, i32 0, i32 5
  %41 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %tobool31 = icmp ne %struct.lmset_s* %41, null
  br i1 %tobool31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.else.30
  %42 = load i32, i32* %wid.addr, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %43, i32 0, i32 4
  %44 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %dict2lmwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %44, i32 0, i32 38
  %45 = load i16*, i16** %dict2lmwid, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %45, i64 %idxprom33
  %46 = load i16, i16* %arrayidx34, align 2
  store i16 %46, i16* %lwid, align 2
  br label %if.end.39

if.else.35:                                       ; preds = %if.else.30
  %47 = load i32, i32* %wid.addr, align 4
  %idxprom36 = sext i32 %47 to i64
  %48 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict2lmwid37 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %48, i32 0, i32 7
  %49 = load i16*, i16** %dict2lmwid37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %49, i64 %idxprom36
  %50 = load i16, i16* %arrayidx38, align 2
  store i16 %50, i16* %lwid, align 2
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.35, %if.then.32
  %51 = load i16, i16* %lwid, align 2
  %lmstate40 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 9
  %lm3g41 = bitcast %union.vh_lmstate_t* %lmstate40 to %struct.anon*
  %lwid42 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid42, i32 0, i64 0
  store i16 %51, i16* %arrayidx43, align 2
  %52 = load i32, i32* %se, align 4
  store i32 %52, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %fe, align 4
  %cmp44 = icmp slt i32 %53, %54
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %i, align 4
  %shr46 = ashr i32 %55, 14
  %idxprom47 = sext i32 %shr46 to i64
  %56 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry48 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %56, i32 0, i32 0
  %57 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry48, align 8
  %arrayidx49 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %57, i64 %idxprom47
  %58 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx49, align 8
  %59 = load i32, i32* %i, align 4
  %and50 = and i32 %59, 16383
  %idx.ext51 = sext i32 %and50 to i64
  %add.ptr52 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %58, i64 %idx.ext51
  store %struct.vithist_entry_t* %add.ptr52, %struct.vithist_entry_t** %pve, align 8
  %60 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %valid53 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %60, i32 0, i32 8
  %61 = load i32, i32* %valid53, align 4
  %tobool54 = icmp ne i32 %61, 0
  br i1 %tobool54, label %if.then.55, label %if.end.90

if.then.55:                                       ; preds = %for.body
  %62 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm56 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %62, i32 0, i32 4
  %63 = load %struct.lm_s*, %struct.lm_s** %lm56, align 8
  %64 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %lmstate57 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %64, i32 0, i32 9
  %lm3g58 = bitcast %union.vh_lmstate_t* %lmstate57 to %struct.anon*
  %lwid59 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid59, i32 0, i64 1
  %65 = load i16, i16* %arrayidx60, align 2
  %66 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %lmstate61 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %66, i32 0, i32 9
  %lm3g62 = bitcast %union.vh_lmstate_t* %lmstate61 to %struct.anon*
  %lwid63 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid63, i32 0, i64 0
  %67 = load i16, i16* %arrayidx64, align 2
  %68 = load i16, i16* %lwid, align 2
  %69 = load i32, i32* %wid.addr, align 4
  %call65 = call i32 @lm_tg_score(%struct.lm_s* %63, i16 zeroext %65, i16 zeroext %67, i16 zeroext %68, i32 %69)
  %lscr66 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 4
  store i32 %call65, i32* %lscr66, align 4
  %70 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %score67 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %70, i32 0, i32 5
  %71 = load i32, i32* %score67, align 4
  %ascr68 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 3
  %72 = load i32, i32* %ascr68, align 4
  %add69 = add nsw i32 %71, %72
  %lscr70 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 4
  %73 = load i32, i32* %lscr70, align 4
  %add71 = add nsw i32 %add69, %73
  %score72 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 5
  store i32 %add71, i32* %score72, align 4
  %score73 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 5
  %74 = load i32, i32* %score73, align 4
  %75 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %wbeam = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %75, i32 0, i32 5
  %76 = load i32, i32* %wbeam, align 4
  %sub74 = sub nsw i32 %74, %76
  %77 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %77, i32 0, i32 3
  %78 = load i32, i32* %n_frm, align 4
  %idxprom75 = sext i32 %78 to i64
  %79 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %79, i32 0, i32 6
  %80 = load i32*, i32** %bestscore, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %80, i64 %idxprom75
  %81 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp sge i32 %sub74, %81
  br i1 %cmp77, label %if.then.79, label %if.end.89

if.then.79:                                       ; preds = %if.then.55
  %82 = load i32, i32* %i, align 4
  %pred80 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 6
  store i32 %82, i32* %pred80, align 4
  %83 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %pve, align 8
  %lmstate81 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %83, i32 0, i32 9
  %lm3g82 = bitcast %union.vh_lmstate_t* %lmstate81 to %struct.anon*
  %lwid83 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g82, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid83, i32 0, i64 0
  %84 = load i16, i16* %arrayidx84, align 2
  %lmstate85 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %tve, i32 0, i32 9
  %lm3g86 = bitcast %union.vh_lmstate_t* %lmstate85 to %struct.anon*
  %lwid87 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g86, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid87, i32 0, i64 1
  store i16 %84, i16* %arrayidx88, align 2
  %85 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %86 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  call void @vithist_enter(%struct.vithist_t* %85, %struct.kbcore_t* %86, %struct.vithist_entry_t* %tve)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.79, %if.then.55
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %87 = load i32, i32* %i, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.91

if.end.91:                                        ; preds = %for.end, %if.then.22
  ret void
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @dict_filler_word(%struct.dict_t*, i32) #1

declare i32 @fillpen(%struct.fillpen_t*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @vithist_enter(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc, %struct.vithist_entry_t* %tve) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %tve.addr = alloca %struct.vithist_entry_t*, align 8
  %ve = alloca %struct.vithist_entry_t*, align 8
  %vhid = alloca i32, align 4
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store %struct.vithist_entry_t* %tve, %struct.vithist_entry_t** %tve.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %1 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve.addr, align 8
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %1, i32 0, i32 9
  %call = call i32 @vh_lmstate_find(%struct.vithist_t* %0, %union.vh_lmstate_t* %lmstate)
  store i32 %call, i32* %vhid, align 4
  %2 = load i32, i32* %vhid, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %3, i32 0, i32 2
  %4 = load i32, i32* %n_entry, align 4
  store i32 %4, i32* %vhid, align 4
  %5 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %call1 = call %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %5)
  store %struct.vithist_entry_t* %call1, %struct.vithist_entry_t** %ve, align 8
  %6 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %7 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve.addr, align 8
  %8 = bitcast %struct.vithist_entry_t* %6 to i8*
  %9 = bitcast %struct.vithist_entry_t* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 36, i32 4, i1 false)
  %10 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %11 = load i32, i32* %vhid, align 4
  %12 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  call void @vithist_lmstate_enter(%struct.vithist_t* %10, i32 %11, %struct.vithist_entry_t* %12)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %vhid, align 4
  %shr = ashr i32 %13, 14
  %idxprom = sext i32 %shr to i64
  %14 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %14, i32 0, i32 0
  %15 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry2, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %15, i64 %idxprom
  %16 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx, align 8
  %17 = load i32, i32* %vhid, align 4
  %and = and i32 %17, 16383
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %16, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %18 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %18, i32 0, i32 5
  %19 = load i32, i32* %score, align 4
  %20 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve.addr, align 8
  %score3 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %20, i32 0, i32 5
  %21 = load i32, i32* %score3, align 4
  %cmp4 = icmp slt i32 %19, %21
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %22 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %23 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve.addr, align 8
  %24 = bitcast %struct.vithist_entry_t* %22 to i8*
  %25 = bitcast %struct.vithist_entry_t* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 36, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %26 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %26, i32 0, i32 3
  %27 = load i32, i32* %n_frm, align 4
  %idxprom7 = sext i32 %27 to i64
  %28 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %28, i32 0, i32 6
  %29 = load i32*, i32** %bestscore, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %29, i64 %idxprom7
  %30 = load i32, i32* %arrayidx8, align 4
  %31 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve.addr, align 8
  %score9 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %31, i32 0, i32 5
  %32 = load i32, i32* %score9, align 4
  %cmp10 = icmp slt i32 %30, %32
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end.6
  %33 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve.addr, align 8
  %score12 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %33, i32 0, i32 5
  %34 = load i32, i32* %score12, align 4
  %35 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm13 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %35, i32 0, i32 3
  %36 = load i32, i32* %n_frm13, align 4
  %idxprom14 = sext i32 %36 to i64
  %37 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore15 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %37, i32 0, i32 6
  %38 = load i32*, i32** %bestscore15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %38, i64 %idxprom14
  store i32 %34, i32* %arrayidx16, align 4
  %39 = load i32, i32* %vhid, align 4
  %40 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm17 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %40, i32 0, i32 3
  %41 = load i32, i32* %n_frm17, align 4
  %idxprom18 = sext i32 %41 to i64
  %42 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %42, i32 0, i32 7
  %43 = load i32*, i32** %bestvh, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %43, i64 %idxprom18
  store i32 %39, i32* %arrayidx19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %if.end.6
  ret void
}

declare i32 @lm_tg_score(%struct.lm_s*, i16 zeroext, i16 zeroext, i16 zeroext, i32) #1

; Function Attrs: nounwind uwtable
define void @vithist_prune(%struct.vithist_t* %vh, %struct.dict_t* %dict, i32 %frm, i32 %maxwpf, i32 %maxhist, i32 %beam) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %frm.addr = alloca i32, align 4
  %maxwpf.addr = alloca i32, align 4
  %maxhist.addr = alloca i32, align 4
  %beam.addr = alloca i32, align 4
  %se = alloca i32, align 4
  %fe = alloca i32, align 4
  %filler_done = alloca i32, align 4
  %th = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  %h = alloca i8*, align 8
  %wid = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store i32 %frm, i32* %frm.addr, align 4
  store i32 %maxwpf, i32* %maxwpf.addr, align 4
  store i32 %maxhist, i32* %maxhist.addr, align 4
  store i32 %beam, i32* %beam.addr, align 4
  %0 = load i32, i32* %frm.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %1, i32 0, i32 1
  %2 = load i32*, i32** %frame_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %se, align 4
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 2
  %5 = load i32, i32* %n_entry, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %fe, align 4
  %6 = load i32, i32* %frm.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %7, i32 0, i32 6
  %8 = load i32*, i32** %bestscore, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %beam.addr, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* %th, align 4
  %call = call i8* @heap_new()
  store i8* %call, i8** %h, align 8
  %11 = load i32, i32* %maxwpf.addr, align 4
  %add3 = add nsw i32 %11, 1
  %conv = sext i32 %add3 to i64
  %call4 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 410)
  %12 = bitcast i8* %call4 to i32*
  store i32* %12, i32** %wid, align 8
  %13 = load i32*, i32** %wid, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 -1, i32* %arrayidx5, align 4
  %14 = load i32, i32* %se, align 4
  store i32 %14, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %fe, align 4
  %cmp = icmp sle i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %shr = ashr i32 %17, 14
  %idxprom7 = sext i32 %shr to i64
  %18 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry8 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %18, i32 0, i32 0
  %19 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry8, align 8
  %arrayidx9 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %19, i64 %idxprom7
  %20 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx9, align 8
  %21 = load i32, i32* %i, align 4
  %and = and i32 %21, 16383
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %20, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %22 = load i8*, i8** %h, align 8
  %23 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %24 = bitcast %struct.vithist_entry_t* %23 to i8*
  %25 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %25, i32 0, i32 5
  %26 = load i32, i32* %score, align 4
  %sub10 = sub nsw i32 0, %26
  %call11 = call i32 @heap_insert(i8* %22, i8* %24, i32 %sub10)
  %27 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %27, i32 0, i32 8
  store i32 0, i32* %valid, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %filler_done, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.then.23, %for.end
  %29 = load i8*, i8** %h, align 8
  %30 = bitcast %struct.vithist_entry_t** %ve to i8**
  %call12 = call i32 @heap_pop(i8* %29, i8** %30, i32* %i)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %31 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score15 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %31, i32 0, i32 5
  %32 = load i32, i32* %score15, align 4
  %33 = load i32, i32* %th, align 4
  %cmp16 = icmp sge i32 %32, %33
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %34 = load i32, i32* %maxhist.addr, align 4
  %cmp18 = icmp sgt i32 %34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %37 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid20 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %37, i32 0, i32 0
  %38 = load i32, i32* %wid20, align 4
  %call21 = call i32 @dict_filler_word(%struct.dict_t* %36, i32 %38)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %while.body
  %39 = load i32, i32* %filler_done, align 4
  %tobool22 = icmp ne i32 %39, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  br label %while.cond

if.end:                                           ; preds = %if.then
  store i32 1, i32* %filler_done, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.38, %if.end.24
  %40 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %40 to i64
  %41 = load i32*, i32** %wid, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %41, i64 %idxprom26
  %42 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp sge i32 %42, 0
  br i1 %cmp28, label %land.rhs.30, label %land.end.36

land.rhs.30:                                      ; preds = %for.cond.25
  %43 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %43 to i64
  %44 = load i32*, i32** %wid, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %44, i64 %idxprom31
  %45 = load i32, i32* %arrayidx32, align 4
  %46 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid33 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %46, i32 0, i32 0
  %47 = load i32, i32* %wid33, align 4
  %cmp34 = icmp ne i32 %45, %47
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.30, %for.cond.25
  %48 = phi i1 [ false, %for.cond.25 ], [ %cmp34, %land.rhs.30 ]
  br i1 %48, label %for.body.37, label %for.end.40

for.body.37:                                      ; preds = %land.end.36
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.37
  %49 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %49, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.25

for.end.40:                                       ; preds = %land.end.36
  %50 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load i32*, i32** %wid, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %51, i64 %idxprom41
  %52 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp slt i32 %52, 0
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %for.end.40
  %53 = load i32, i32* %maxwpf.addr, align 4
  %cmp46 = icmp sgt i32 %53, 0
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %if.then.45
  %54 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid49 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %54, i32 0, i32 0
  %55 = load i32, i32* %wid49, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %56 to i64
  %57 = load i32*, i32** %wid, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %57, i64 %idxprom50
  store i32 %55, i32* %arrayidx51, align 4
  %58 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %58, 1
  %idxprom53 = sext i32 %add52 to i64
  %59 = load i32*, i32** %wid, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %59, i64 %idxprom53
  store i32 -1, i32* %arrayidx54, align 4
  %60 = load i32, i32* %maxwpf.addr, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %maxwpf.addr, align 4
  %61 = load i32, i32* %maxhist.addr, align 4
  %dec55 = add nsw i32 %61, -1
  store i32 %dec55, i32* %maxhist.addr, align 4
  %62 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid56 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %62, i32 0, i32 8
  store i32 1, i32* %valid56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.48, %if.then.45
  br label %if.end.63

if.else:                                          ; preds = %for.end.40
  %63 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bghist = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %63, i32 0, i32 4
  %64 = load i32, i32* %bghist, align 4
  %tobool58 = icmp ne i32 %64, 0
  br i1 %tobool58, label %if.end.62, label %if.then.59

if.then.59:                                       ; preds = %if.else
  %65 = load i32, i32* %maxhist.addr, align 4
  %dec60 = add nsw i32 %65, -1
  store i32 %dec60, i32* %maxhist.addr, align 4
  %66 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid61 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %66, i32 0, i32 8
  store i32 1, i32* %valid61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.else
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.57
  br label %while.cond

while.end:                                        ; preds = %land.end
  %67 = load i32*, i32** %wid, align 8
  %68 = bitcast i32* %67 to i8*
  call void @ckd_free(i8* %68)
  %69 = load i8*, i8** %h, align 8
  %call64 = call i32 @heap_destroy(i8* %69)
  %70 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %71 = load i32, i32* %frm.addr, align 4
  call void @vithist_frame_gc(%struct.vithist_t* %70, i32 %71)
  ret void
}

declare i8* @heap_new() #1

declare i32 @heap_insert(i8*, i8*, i32) #1

declare i32 @heap_pop(i8*, i8**, i32*) #1

declare i32 @heap_destroy(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @vithist_frame_gc(%struct.vithist_t* %vh, i32 %frm) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %frm.addr = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  %tve = alloca %struct.vithist_entry_t*, align 8
  %se = alloca i32, align 4
  %fe = alloca i32, align 4
  %te = alloca i32, align 4
  %bs = alloca i32, align 4
  %bv = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %frm, i32* %frm.addr, align 4
  %0 = load i32, i32* %frm.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %1, i32 0, i32 1
  %2 = load i32*, i32** %frame_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %se, align 4
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 2
  %5 = load i32, i32* %n_entry, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %fe, align 4
  %6 = load i32, i32* %se, align 4
  store i32 %6, i32* %te, align 4
  store i32 -2147483648, i32* %bs, align 4
  store i32 -1, i32* %bv, align 4
  %7 = load i32, i32* %se, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %fe, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %shr = ashr i32 %10, 14
  %idxprom1 = sext i32 %shr to i64
  %11 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %11, i32 0, i32 0
  %12 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry2, align 8
  %arrayidx3 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %12, i64 %idxprom1
  %13 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx3, align 8
  %14 = load i32, i32* %i, align 4
  %and = and i32 %14, 16383
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %13, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %15 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %15, i32 0, i32 8
  %16 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %te, align 4
  %cmp4 = icmp ne i32 %17, %18
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %19 = load i32, i32* %te, align 4
  %shr6 = ashr i32 %19, 14
  %idxprom7 = sext i32 %shr6 to i64
  %20 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry8 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %20, i32 0, i32 0
  %21 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry8, align 8
  %arrayidx9 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %21, i64 %idxprom7
  %22 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx9, align 8
  %23 = load i32, i32* %te, align 4
  %and10 = and i32 %23, 16383
  %idx.ext11 = sext i32 %and10 to i64
  %add.ptr12 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %22, i64 %idx.ext11
  store %struct.vithist_entry_t* %add.ptr12, %struct.vithist_entry_t** %tve, align 8
  %24 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %tve, align 8
  %25 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %26 = bitcast %struct.vithist_entry_t* %24 to i8*
  %27 = bitcast %struct.vithist_entry_t* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 36, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %28 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %28, i32 0, i32 5
  %29 = load i32, i32* %score, align 4
  %30 = load i32, i32* %bs, align 4
  %cmp13 = icmp sgt i32 %29, %30
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %31 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score15 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %31, i32 0, i32 5
  %32 = load i32, i32* %score15, align 4
  store i32 %32, i32* %bs, align 4
  %33 = load i32, i32* %te, align 4
  store i32 %33, i32* %bv, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %34 = load i32, i32* %te, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %te, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %35 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %35, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %bv, align 4
  %37 = load i32, i32* %frm.addr, align 4
  %idxprom19 = sext i32 %37 to i64
  %38 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %38, i32 0, i32 7
  %39 = load i32*, i32** %bestvh, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %39, i64 %idxprom19
  store i32 %36, i32* %arrayidx20, align 4
  %40 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry21 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %40, i32 0, i32 2
  %41 = load i32, i32* %n_entry21, align 4
  %sub22 = sub nsw i32 %41, 1
  %shr23 = ashr i32 %sub22, 14
  store i32 %shr23, i32* %i, align 4
  %42 = load i32, i32* %te, align 4
  %sub24 = sub nsw i32 %42, 1
  %shr25 = ashr i32 %sub24, 14
  store i32 %shr25, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.35, %for.end
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %j, align 4
  %cmp27 = icmp sgt i32 %43, %44
  br i1 %cmp27, label %for.body.28, label %for.end.36

for.body.28:                                      ; preds = %for.cond.26
  %45 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %45 to i64
  %46 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry30 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %46, i32 0, i32 0
  %47 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry30, align 8
  %arrayidx31 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %47, i64 %idxprom29
  %48 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx31, align 8
  %49 = bitcast %struct.vithist_entry_t* %48 to i8*
  call void @ckd_free(i8* %49)
  %50 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %50 to i64
  %51 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry33 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %51, i32 0, i32 0
  %52 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry33, align 8
  %arrayidx34 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %52, i64 %idxprom32
  store %struct.vithist_entry_t* null, %struct.vithist_entry_t** %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.28
  %53 = load i32, i32* %i, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.26

for.end.36:                                       ; preds = %for.cond.26
  %54 = load i32, i32* %te, align 4
  %55 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry37 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %55, i32 0, i32 2
  store i32 %54, i32* %n_entry37, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @vithist_frame_windup(%struct.vithist_t* %vh, i32 %frm, %struct._IO_FILE* %fp, %struct.kbcore_t* %kbc) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %frm.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %frm, i32* %frm.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %0, i32 0, i32 3
  %1 = load i32, i32* %n_frm, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %n_frm, align 4
  %2 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %2, i32 0, i32 2
  %3 = load i32, i32* %n_entry, align 4
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm1 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 3
  %5 = load i32, i32* %n_frm1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %6, i32 0, i32 1
  %7 = load i32*, i32** %frame_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %10 = load i32, i32* %frm.addr, align 4
  %11 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @vithist_dump(%struct.vithist_t* %9, i32 %10, %struct.kbcore_t* %11, %struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  call void @vithist_lmstate_reset(%struct.vithist_t* %13)
  %14 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %14, i32 0, i32 3
  %15 = load i32, i32* %n_frm2, align 4
  %idxprom3 = sext i32 %15 to i64
  %16 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %16, i32 0, i32 6
  %17 = load i32*, i32** %bestscore, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %17, i64 %idxprom3
  store i32 -2147483648, i32* %arrayidx4, align 4
  %18 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm5 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %18, i32 0, i32 3
  %19 = load i32, i32* %n_frm5, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %20, i32 0, i32 7
  %21 = load i32*, i32** %bestvh, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %21, i64 %idxprom6
  store i32 -1, i32* %arrayidx7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @vithist_dump(%struct.vithist_t* %vh, i32 %frm, %struct.kbcore_t* %kbc, %struct._IO_FILE* %fp) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %frm.addr = alloca i32, align 4
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dict = alloca %struct.dict_t*, align 8
  %lm = alloca %struct.lm_s*, align 8
  %ve = alloca %struct.vithist_entry_t*, align 8
  %lwid = alloca i16, align 2
  %sf = alloca i32, align 4
  %ef = alloca i32, align 4
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %frm, i32* %frm.addr, align 4
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 2
  %1 = load %struct.dict_t*, %struct.dict_t** %dict1, align 8
  store %struct.dict_t* %1, %struct.dict_t** %dict, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm2 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 4
  %3 = load %struct.lm_s*, %struct.lm_s** %lm2, align 8
  store %struct.lm_s* %3, %struct.lm_s** %lm, align 8
  %4 = load i32, i32* %frm.addr, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %frm.addr, align 4
  store i32 %5, i32* %sf, align 4
  %6 = load i32, i32* %frm.addr, align 4
  store i32 %6, i32* %ef, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load i32, i32* %frm.addr, align 4
  %9 = load i32, i32* %sf, align 4
  %add = add nsw i32 %9, 1
  %idxprom = sext i32 %add to i64
  %10 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %10, i32 0, i32 1
  %11 = load i32*, i32** %frame_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32, i32* %sf, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start4 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %14, i32 0, i32 1
  %15 = load i32*, i32** %frame_start4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 %idxprom3
  %16 = load i32, i32* %arrayidx5, align 4
  %sub = sub nsw i32 %12, %16
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i32 %8, i32 %sub)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %sf, align 4
  %17 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %17, i32 0, i32 3
  %18 = load i32, i32* %n_frm, align 4
  %sub6 = sub nsw i32 %18, 1
  store i32 %sub6, i32* %ef, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm7 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %20, i32 0, i32 3
  %21 = load i32, i32* %n_frm7, align 4
  %22 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %22, i32 0, i32 2
  %23 = load i32, i32* %n_entry, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i32 %21, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %25 = load i32, i32* %sf, align 4
  store i32 %25, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %if.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %ef, align 4
  %cmp10 = icmp sle i32 %26, %27
  br i1 %cmp10, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %30 to i64
  %31 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %31, i32 0, i32 6
  %32 = load i32*, i32** %bestscore, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %32, i64 %idxprom11
  %33 = load i32, i32* %arrayidx12, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %34 to i64
  %35 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %35, i32 0, i32 7
  %36 = load i32*, i32** %bestvh, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %36, i64 %idxprom13
  %37 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i32 %29, i32 %33, i32 %37)
  %38 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %38 to i64
  %39 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start17 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %39, i32 0, i32 1
  %40 = load i32*, i32** %frame_start17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %40, i64 %idxprom16
  %41 = load i32, i32* %arrayidx18, align 4
  store i32 %41, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %43, 1
  %idxprom21 = sext i32 %add20 to i64
  %44 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start22 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %44, i32 0, i32 1
  %45 = load i32*, i32** %frame_start22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %45, i64 %idxprom21
  %46 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %42, %46
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.19
  %47 = load i32, i32* %j, align 4
  %shr = ashr i32 %47, 14
  store i32 %shr, i32* %b, align 4
  %48 = load i32, i32* %j, align 4
  %and = and i32 %48, 16383
  store i32 %and, i32* %l, align 4
  %49 = load i32, i32* %b, align 4
  %idxprom26 = sext i32 %49 to i64
  %50 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry27 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %50, i32 0, i32 0
  %51 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry27, align 8
  %arrayidx28 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %51, i64 %idxprom26
  %52 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx28, align 8
  %53 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %52, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %55 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %55, i32 0, i32 8
  %56 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %56, 0
  %cond = select i1 %tobool, i32 32, i32 42
  %57 = load i32, i32* %j, align 4
  %58 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf29 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %58, i32 0, i32 1
  %59 = load i16, i16* %sf29, align 2
  %conv = sext i16 %59 to i32
  %60 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef30 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %60, i32 0, i32 2
  %61 = load i16, i16* %ef30, align 2
  %conv31 = sext i16 %61 to i32
  %62 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %62, i32 0, i32 5
  %63 = load i32, i32* %score, align 4
  %64 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ascr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %64, i32 0, i32 3
  %65 = load i32, i32* %ascr, align 4
  %66 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lscr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %66, i32 0, i32 4
  %67 = load i32, i32* %lscr, align 4
  %68 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %pred = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %68, i32 0, i32 6
  %69 = load i32, i32* %pred, align 4
  %70 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %type = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %70, i32 0, i32 7
  %71 = load i32, i32* %type, align 4
  %72 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %72, i32 0, i32 0
  %73 = load i32, i32* %wid, align 4
  %idxprom32 = sext i32 %73 to i64
  %74 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %74, i32 0, i32 4
  %75 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx33 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %75, i64 %idxprom32
  %word34 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx33, i32 0, i32 0
  %76 = load i8*, i8** %word34, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i32 %cond, i32 %57, i32 %conv, i32 %conv31, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71, i8* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %78 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %78, i32 0, i32 9
  %lm3g = bitcast %union.vh_lmstate_t* %lmstate to %struct.anon*
  %lwid36 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid36, i32 0, i64 0
  %79 = load i16, i16* %arrayidx37, align 2
  %idxprom38 = zext i16 %79 to i64
  %80 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %wordstr = getelementptr inbounds %struct.lm_s, %struct.lm_s* %80, i32 0, i32 4
  %81 = load i8**, i8*** %wordstr, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %81, i64 %idxprom38
  %82 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %82)
  %83 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate41 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %83, i32 0, i32 9
  %lm3g42 = bitcast %union.vh_lmstate_t* %lmstate41 to %struct.anon*
  %lwid43 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid43, i32 0, i64 1
  %84 = load i16, i16* %arrayidx44, align 2
  store i16 %84, i16* %lwid, align 2
  %85 = load i16, i16* %lwid, align 2
  %conv45 = zext i16 %85 to i32
  %cmp46 = icmp ne i32 %conv45, 65535
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %for.body.25
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %87 = load i16, i16* %lwid, align 2
  %idxprom49 = zext i16 %87 to i64
  %88 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %wordstr50 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %88, i32 0, i32 4
  %89 = load i8**, i8*** %wordstr50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %89, i64 %idxprom49
  %90 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %90)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %for.body.25
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %92 = load i32, i32* %j, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %94 to i64
  %95 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start56 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %95, i32 0, i32 1
  %96 = load i32*, i32** %frame_start56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %96, i64 %idxprom55
  %97 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %93, %97
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %for.end
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %for.end
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %99 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %99, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0))
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call67 = call i32 @fflush(%struct._IO_FILE* %101)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @vithist_lmstate_reset(%struct.vithist_t* %vh) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %lgn = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %i = alloca i32, align 4
  %lms2vh = alloca %struct.vh_lms2vh_t*, align 8
  %child = alloca %struct.vh_lms2vh_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lwidlist = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %0, i32 0, i32 9
  %1 = load %struct.gnode_s*, %struct.gnode_s** %lwidlist, align 8
  store %struct.gnode_s* %1, %struct.gnode_s** %lgn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %2 = load %struct.gnode_s*, %struct.gnode_s** %lgn, align 8
  %tobool = icmp ne %struct.gnode_s* %2, null
  br i1 %tobool, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gnode_s*, %struct.gnode_s** %lgn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %int32 = bitcast %union.anytype_s* %data to i32*
  %4 = load i32, i32* %int32, align 4
  store i32 %4, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lms2vh_root = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %6, i32 0, i32 8
  %7 = load %struct.vh_lms2vh_t**, %struct.vh_lms2vh_t*** %lms2vh_root, align 8
  %arrayidx = getelementptr inbounds %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %7, i64 %idxprom
  %8 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %arrayidx, align 8
  store %struct.vh_lms2vh_t* %8, %struct.vh_lms2vh_t** %lms2vh, align 8
  %9 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %children = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %9, i32 0, i32 3
  %10 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %10, %struct.gnode_s** %gn, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool2 = icmp ne %struct.gnode_s* %11, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %12 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data4 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %12, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data4 to i8**
  %13 = load i8*, i8** %ptr, align 8
  %14 = bitcast i8* %13 to %struct.vh_lms2vh_t*
  store %struct.vh_lms2vh_t* %14, %struct.vh_lms2vh_t** %child, align 8
  %15 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %child, align 8
  %16 = bitcast %struct.vh_lms2vh_t* %15 to i8*
  call void @ckd_free(i8* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %17 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %17, i32 0, i32 1
  %18 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %18, %struct.gnode_s** %gn, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %19 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %children5 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %19, i32 0, i32 3
  %20 = load %struct.gnode_s*, %struct.gnode_s** %children5, align 8
  call void @glist_free(%struct.gnode_s* %20)
  %21 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %22 = bitcast %struct.vh_lms2vh_t* %21 to i8*
  call void @ckd_free(i8* %22)
  %23 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %23 to i64
  %24 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lms2vh_root7 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %24, i32 0, i32 8
  %25 = load %struct.vh_lms2vh_t**, %struct.vh_lms2vh_t*** %lms2vh_root7, align 8
  %arrayidx8 = getelementptr inbounds %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %25, i64 %idxprom6
  store %struct.vh_lms2vh_t* null, %struct.vh_lms2vh_t** %arrayidx8, align 8
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %26 = load %struct.gnode_s*, %struct.gnode_s** %lgn, align 8
  %next10 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %26, i32 0, i32 1
  %27 = load %struct.gnode_s*, %struct.gnode_s** %next10, align 8
  store %struct.gnode_s* %27, %struct.gnode_s** %lgn, align 8
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %28 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lwidlist12 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %28, i32 0, i32 9
  %29 = load %struct.gnode_s*, %struct.gnode_s** %lwidlist12, align 8
  call void @glist_free(%struct.gnode_s* %29)
  %30 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lwidlist13 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %30, i32 0, i32 9
  store %struct.gnode_s* null, %struct.gnode_s** %lwidlist13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @vithist_utt_end(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc) #0 {
entry:
  %retval = alloca i32, align 4
  %vh.addr = alloca %struct.vithist_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %sv = alloca i32, align 4
  %nsv = alloca i32, align 4
  %scr = alloca i32, align 4
  %bestscore = alloca i32, align 4
  %bestvh = alloca i32, align 4
  %vhid = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  %bestve = alloca %struct.vithist_entry_t*, align 8
  %endwid = alloca i16, align 2
  %lm = alloca %struct.lm_s*, align 8
  %dict = alloca %struct.dict_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store %struct.vithist_entry_t* null, %struct.vithist_entry_t** %bestve, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %0, i32 0, i32 3
  %1 = load i32, i32* %n_frm, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %f, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %f, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 1
  %5 = load i32*, i32** %frame_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %sv, align 4
  %7 = load i32, i32* %f, align 4
  %add = add nsw i32 %7, 1
  %idxprom1 = sext i32 %add to i64
  %8 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %8, i32 0, i32 1
  %9 = load i32*, i32** %frame_start2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx3, align 4
  store i32 %10, i32* %nsv, align 4
  %11 = load i32, i32* %sv, align 4
  %12 = load i32, i32* %nsv, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %f, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %f, align 4
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %15 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm8 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %15, i32 0, i32 4
  %16 = load %struct.lm_s*, %struct.lm_s** %lm8, align 8
  store %struct.lm_s* %16, %struct.lm_s** %lm, align 8
  %17 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %finishlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %17, i32 0, i32 6
  %18 = load i16, i16* %finishlwid, align 2
  store i16 %18, i16* %endwid, align 2
  %19 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict9 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %19, i32 0, i32 2
  %20 = load %struct.dict_t*, %struct.dict_t** %dict9, align 8
  store %struct.dict_t* %20, %struct.dict_t** %dict, align 8
  store i32 -2147483648, i32* %bestscore, align 4
  store i32 -1, i32* %bestvh, align 4
  %21 = load i32, i32* %sv, align 4
  store i32 %21, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.25, %if.end.7
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %nsv, align 4
  %cmp11 = icmp slt i32 %22, %23
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  %24 = load i32, i32* %i, align 4
  %shr = ashr i32 %24, 14
  store i32 %shr, i32* %b, align 4
  %25 = load i32, i32* %i, align 4
  %and = and i32 %25, 16383
  store i32 %and, i32* %l, align 4
  %26 = load i32, i32* %b, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry14 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %27, i32 0, i32 0
  %28 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry14, align 8
  %arrayidx15 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %28, i64 %idxprom13
  %29 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx15, align 8
  %30 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %29, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %31 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %31, i32 0, i32 5
  %32 = load i32, i32* %score, align 4
  store i32 %32, i32* %scr, align 4
  %33 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %34 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %34, i32 0, i32 9
  %lm3g = bitcast %union.vh_lmstate_t* %lmstate to %struct.anon*
  %lwid = getelementptr inbounds %struct.anon, %struct.anon* %lm3g, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid, i32 0, i64 1
  %35 = load i16, i16* %arrayidx16, align 2
  %36 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate17 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %36, i32 0, i32 9
  %lm3g18 = bitcast %union.vh_lmstate_t* %lmstate17 to %struct.anon*
  %lwid19 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid19, i32 0, i64 0
  %37 = load i16, i16* %arrayidx20, align 2
  %38 = load i16, i16* %endwid, align 2
  %39 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %39, i32 0, i32 12
  %40 = load i32, i32* %finishwid, align 4
  %call = call i32 @lm_tg_score(%struct.lm_s* %33, i16 zeroext %35, i16 zeroext %37, i16 zeroext %38, i32 %40)
  %41 = load i32, i32* %scr, align 4
  %add21 = add nsw i32 %41, %call
  store i32 %add21, i32* %scr, align 4
  %42 = load i32, i32* %bestscore, align 4
  %43 = load i32, i32* %scr, align 4
  %cmp22 = icmp slt i32 %42, %43
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.12
  %44 = load i32, i32* %scr, align 4
  store i32 %44, i32* %bestscore, align 4
  %45 = load i32, i32* %i, align 4
  store i32 %45, i32* %bestvh, align 4
  %46 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  store %struct.vithist_entry_t* %46, %struct.vithist_entry_t** %bestve, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %for.body.12
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  %48 = load i32, i32* %f, align 4
  %49 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm27 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %49, i32 0, i32 3
  %50 = load i32, i32* %n_frm27, align 4
  %sub28 = sub nsw i32 %50, 1
  %cmp29 = icmp ne i32 %48, %sub28
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %for.end.26
  %51 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm31 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %51, i32 0, i32 3
  %52 = load i32, i32* %n_frm31, align 4
  %sub32 = sub nsw i32 %52, 1
  store i32 %sub32, i32* %n_frm31, align 4
  %53 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %54 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %55 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %silwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %55, i32 0, i32 13
  %56 = load i32, i32* %silwid, align 4
  %57 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm33 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %57, i32 0, i32 3
  %58 = load i32, i32* %n_frm33, align 4
  %59 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %bestve, align 8
  %score34 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %59, i32 0, i32 5
  %60 = load i32, i32* %score34, align 4
  %61 = load i32, i32* %bestvh, align 4
  call void @vithist_rescore(%struct.vithist_t* %53, %struct.kbcore_t* %54, i32 %56, i32 %58, i32 %60, i32 %61, i32 -1)
  %62 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm35 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %62, i32 0, i32 3
  %63 = load i32, i32* %n_frm35, align 4
  %add36 = add nsw i32 %63, 1
  store i32 %add36, i32* %n_frm35, align 4
  %64 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %64, i32 0, i32 2
  %65 = load i32, i32* %n_entry, align 4
  %66 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm37 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %66, i32 0, i32 3
  %67 = load i32, i32* %n_frm37, align 4
  %idxprom38 = sext i32 %67 to i64
  %68 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start39 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %68, i32 0, i32 1
  %69 = load i32*, i32** %frame_start39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %69, i64 %idxprom38
  store i32 %65, i32* %arrayidx40, align 4
  %70 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %71 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %call41 = call i32 @vithist_utt_end(%struct.vithist_t* %70, %struct.kbcore_t* %71)
  store i32 %call41, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.end.26
  %72 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry43 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %72, i32 0, i32 2
  %73 = load i32, i32* %n_entry43, align 4
  store i32 %73, i32* %vhid, align 4
  %74 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %call44 = call %struct.vithist_entry_t* @vithist_entry_alloc(%struct.vithist_t* %74)
  store %struct.vithist_entry_t* %call44, %struct.vithist_entry_t** %ve, align 8
  %75 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid45 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %75, i32 0, i32 12
  %76 = load i32, i32* %finishwid45, align 4
  %77 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %77, i32 0, i32 0
  store i32 %76, i32* %wid, align 4
  %78 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %bestve, align 8
  %ef = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %78, i32 0, i32 2
  %79 = load i16, i16* %ef, align 2
  %conv = sext i16 %79 to i32
  %cmp46 = icmp eq i32 %conv, -1
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %80 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %bestve, align 8
  %ef48 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %80, i32 0, i32 2
  %81 = load i16, i16* %ef48, align 2
  %conv49 = sext i16 %81 to i32
  %add50 = add nsw i32 %conv49, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add50, %cond.false ]
  %conv51 = trunc i32 %cond to i16
  %82 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %82, i32 0, i32 1
  store i16 %conv51, i16* %sf, align 2
  %83 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm52 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %83, i32 0, i32 3
  %84 = load i32, i32* %n_frm52, align 4
  %conv53 = trunc i32 %84 to i16
  %85 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef54 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %85, i32 0, i32 2
  store i16 %conv53, i16* %ef54, align 2
  %86 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ascr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %86, i32 0, i32 3
  store i32 0, i32* %ascr, align 4
  %87 = load i32, i32* %bestscore, align 4
  %88 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %bestve, align 8
  %score55 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %88, i32 0, i32 5
  %89 = load i32, i32* %score55, align 4
  %sub56 = sub nsw i32 %87, %89
  %90 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lscr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %90, i32 0, i32 4
  store i32 %sub56, i32* %lscr, align 4
  %91 = load i32, i32* %bestscore, align 4
  %92 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score57 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %92, i32 0, i32 5
  store i32 %91, i32* %score57, align 4
  %93 = load i32, i32* %bestvh, align 4
  %94 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %pred = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %94, i32 0, i32 6
  store i32 %93, i32* %pred, align 4
  %95 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %type = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %95, i32 0, i32 7
  store i32 0, i32* %type, align 4
  %96 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %96, i32 0, i32 8
  store i32 1, i32* %valid, align 4
  %97 = load i16, i16* %endwid, align 2
  %98 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate58 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %98, i32 0, i32 9
  %lm3g59 = bitcast %union.vh_lmstate_t* %lmstate58 to %struct.anon*
  %lwid60 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid60, i32 0, i64 0
  store i16 %97, i16* %arrayidx61, align 2
  %99 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate62 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %99, i32 0, i32 9
  %lm3g63 = bitcast %union.vh_lmstate_t* %lmstate62 to %struct.anon*
  %lwid64 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g63, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid64, i32 0, i64 0
  %100 = load i16, i16* %arrayidx65, align 2
  %101 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate66 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %101, i32 0, i32 9
  %lm3g67 = bitcast %union.vh_lmstate_t* %lmstate66 to %struct.anon*
  %lwid68 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid68, i32 0, i64 1
  store i16 %100, i16* %arrayidx69, align 2
  %102 = load i32, i32* %vhid, align 4
  store i32 %102, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.30, %if.then.6
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define i32 @vithist_partialutt_end(%struct.vithist_t* %vh, %struct.kbcore_t* %kbc) #0 {
entry:
  %retval = alloca i32, align 4
  %vh.addr = alloca %struct.vithist_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %sv = alloca i32, align 4
  %nsv = alloca i32, align 4
  %scr = alloca i32, align 4
  %bestscore = alloca i32, align 4
  %bestvh = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  %bestve = alloca %struct.vithist_entry_t*, align 8
  %endwid = alloca i16, align 2
  %lm = alloca %struct.lm_s*, align 8
  %dict = alloca %struct.dict_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %0, i32 0, i32 3
  %1 = load i32, i32* %n_frm, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %f, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %f, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 1
  %5 = load i32*, i32** %frame_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %sv, align 4
  %7 = load i32, i32* %f, align 4
  %add = add nsw i32 %7, 1
  %idxprom1 = sext i32 %add to i64
  %8 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %frame_start2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %8, i32 0, i32 1
  %9 = load i32*, i32** %frame_start2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx3, align 4
  store i32 %10, i32* %nsv, align 4
  %11 = load i32, i32* %sv, align 4
  %12 = load i32, i32* %nsv, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %f, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i32, i32* %f, align 4
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %15 = load i32, i32* %f, align 4
  %16 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm8 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %16, i32 0, i32 3
  %17 = load i32, i32* %n_frm8, align 4
  %sub9 = sub nsw i32 %17, 1
  %cmp10 = icmp ne i32 %15, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %18 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %lm13 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %18, i32 0, i32 4
  %19 = load %struct.lm_s*, %struct.lm_s** %lm13, align 8
  store %struct.lm_s* %19, %struct.lm_s** %lm, align 8
  %20 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict14 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %20, i32 0, i32 2
  %21 = load %struct.dict_t*, %struct.dict_t** %dict14, align 8
  store %struct.dict_t* %21, %struct.dict_t** %dict, align 8
  %22 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %finishlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %22, i32 0, i32 6
  %23 = load i16, i16* %finishlwid, align 2
  store i16 %23, i16* %endwid, align 2
  store i32 -2147483648, i32* %bestscore, align 4
  store i32 -1, i32* %bestvh, align 4
  %24 = load i32, i32* %sv, align 4
  store i32 %24, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.30, %if.end.12
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nsv, align 4
  %cmp16 = icmp slt i32 %25, %26
  br i1 %cmp16, label %for.body.17, label %for.end.31

for.body.17:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %i, align 4
  %shr = ashr i32 %27, 14
  store i32 %shr, i32* %b, align 4
  %28 = load i32, i32* %i, align 4
  %and = and i32 %28, 16383
  store i32 %and, i32* %l, align 4
  %29 = load i32, i32* %b, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry19 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %30, i32 0, i32 0
  %31 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry19, align 8
  %arrayidx20 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %31, i64 %idxprom18
  %32 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx20, align 8
  %33 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %32, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %34 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %34, i32 0, i32 5
  %35 = load i32, i32* %score, align 4
  store i32 %35, i32* %scr, align 4
  %36 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %37 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %37, i32 0, i32 9
  %lm3g = bitcast %union.vh_lmstate_t* %lmstate to %struct.anon*
  %lwid = getelementptr inbounds %struct.anon, %struct.anon* %lm3g, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid, i32 0, i64 1
  %38 = load i16, i16* %arrayidx21, align 2
  %39 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lmstate22 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %39, i32 0, i32 9
  %lm3g23 = bitcast %union.vh_lmstate_t* %lmstate22 to %struct.anon*
  %lwid24 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid24, i32 0, i64 0
  %40 = load i16, i16* %arrayidx25, align 2
  %41 = load i16, i16* %endwid, align 2
  %42 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %42, i32 0, i32 12
  %43 = load i32, i32* %finishwid, align 4
  %call = call i32 @lm_tg_score(%struct.lm_s* %36, i16 zeroext %38, i16 zeroext %40, i16 zeroext %41, i32 %43)
  %44 = load i32, i32* %scr, align 4
  %add26 = add nsw i32 %44, %call
  store i32 %add26, i32* %scr, align 4
  %45 = load i32, i32* %bestscore, align 4
  %46 = load i32, i32* %scr, align 4
  %cmp27 = icmp slt i32 %45, %46
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.17
  %47 = load i32, i32* %scr, align 4
  store i32 %47, i32* %bestscore, align 4
  %48 = load i32, i32* %i, align 4
  store i32 %48, i32* %bestvh, align 4
  %49 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  store %struct.vithist_entry_t* %49, %struct.vithist_entry_t** %bestve, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.body.17
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  %51 = load i32, i32* %bestvh, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %for.end.31, %if.then.11, %if.then.6
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define void @vithist_utt_reset(%struct.vithist_t* %vh) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %b = alloca i32, align 4
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  call void @vithist_lmstate_reset(%struct.vithist_t* %0)
  %1 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %1, i32 0, i32 2
  %2 = load i32, i32* %n_entry, align 4
  %sub = sub nsw i32 %2, 1
  %shr = ashr i32 %sub, 14
  store i32 %shr, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %b, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %b, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry1 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %5, i32 0, i32 0
  %6 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry1, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %6, i64 %idxprom
  %7 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx, align 8
  %8 = bitcast %struct.vithist_entry_t* %7 to i8*
  call void @ckd_free(i8* %8)
  %9 = load i32, i32* %b, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry3 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %10, i32 0, i32 0
  %11 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry3, align 8
  %arrayidx4 = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %11, i64 %idxprom2
  store %struct.vithist_entry_t* null, %struct.vithist_entry_t** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %b, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry5 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %13, i32 0, i32 2
  store i32 0, i32* %n_entry5, align 4
  %14 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestscore = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %14, i32 0, i32 6
  %15 = load i32*, i32** %bestscore, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 -2147483648, i32* %arrayidx6, align 4
  %16 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %16, i32 0, i32 7
  %17 = load i32*, i32** %bestvh, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 -1, i32* %arrayidx7, align 4
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @vithist_backtrace(%struct.vithist_t* %vh, i32 %id) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %id.addr = alloca i32, align 4
  %ve = alloca %struct.vithist_entry_t*, align 8
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %hyp = alloca %struct.gnode_s*, align 8
  %h = alloca %struct.hyp_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  store %struct.gnode_s* null, %struct.gnode_s** %hyp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %id.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %id.addr, align 4
  %shr = ashr i32 %1, 14
  store i32 %shr, i32* %b, align 4
  %2 = load i32, i32* %id.addr, align 4
  %and = and i32 %2, 16383
  store i32 %and, i32* %l, align 4
  %3 = load i32, i32* %b, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry1 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 0
  %5 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry1, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %5, i64 %idxprom
  %6 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx, align 8
  %7 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %6, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %call = call i8* @__ckd_calloc__(i64 1, i64 28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 784)
  %8 = bitcast i8* %call to %struct.hyp_t*
  store %struct.hyp_t* %8, %struct.hyp_t** %h, align 8
  %9 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %9, i32 0, i32 0
  %10 = load i32, i32* %wid, align 4
  %11 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id2 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %11, i32 0, i32 0
  store i32 %10, i32* %id2, align 4
  %12 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %12, i32 0, i32 1
  %13 = load i16, i16* %sf, align 2
  %conv = sext i16 %13 to i32
  %14 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %sf3 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %14, i32 0, i32 2
  store i32 %conv, i32* %sf3, align 4
  %15 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %15, i32 0, i32 2
  %16 = load i16, i16* %ef, align 2
  %conv4 = sext i16 %16 to i32
  %17 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ef5 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %17, i32 0, i32 3
  store i32 %conv4, i32* %ef5, align 4
  %18 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ascr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %18, i32 0, i32 3
  %19 = load i32, i32* %ascr, align 4
  %20 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ascr6 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %20, i32 0, i32 4
  store i32 %19, i32* %ascr6, align 4
  %21 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %lscr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %21, i32 0, i32 4
  %22 = load i32, i32* %lscr, align 4
  %23 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %lscr7 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %23, i32 0, i32 5
  store i32 %22, i32* %lscr7, align 4
  %24 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %type = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %24, i32 0, i32 7
  %25 = load i32, i32* %type, align 4
  %26 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %type8 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %26, i32 0, i32 6
  store i32 %25, i32* %type8, align 4
  %27 = load i32, i32* %id.addr, align 4
  %28 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %vhid = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %28, i32 0, i32 1
  store i32 %27, i32* %vhid, align 4
  %29 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  %30 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %31 = bitcast %struct.hyp_t* %30 to i8*
  %call9 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %29, i8* %31)
  store %struct.gnode_s* %call9, %struct.gnode_s** %hyp, align 8
  %32 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %pred = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %32, i32 0, i32 6
  %33 = load i32, i32* %pred, align 4
  store i32 %33, i32* %id.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  ret %struct.gnode_s* %34
}

declare %struct.gnode_s* @glist_add_ptr(%struct.gnode_s*, i8*) #1

; Function Attrs: nounwind uwtable
define void @vithist_dag_write(%struct.vithist_t* %vh, %struct.gnode_s* %hyp, %struct.dict_t* %dict, i32 %oldfmt, %struct._IO_FILE* %fp) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %hyp.addr = alloca %struct.gnode_s*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %oldfmt.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %sfwid = alloca %struct.gnode_s**, align 8
  %ve = alloca %struct.vithist_entry_t*, align 8
  %ve2 = alloca %struct.vithist_entry_t*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %gn2 = alloca %struct.gnode_s*, align 8
  %gn3 = alloca %struct.gnode_s*, align 8
  %dn = alloca %struct.dagnode_t*, align 8
  %dn2 = alloca %struct.dagnode_t*, align 8
  %sf = alloca i32, align 4
  %ef = alloca i32, align 4
  %n_node = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca %struct.hyp_t*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %struct.gnode_s* %hyp, %struct.gnode_s** %hyp.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store i32 %oldfmt, i32* %oldfmt.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %0, i32 0, i32 3
  %1 = load i32, i32* %n_frm, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 823)
  %2 = bitcast i8* %call to %struct.gnode_s**
  store %struct.gnode_s** %2, %struct.gnode_s*** %sfwid, align 8
  store i32 0, i32* %n_node, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %4, i32 0, i32 2
  %5 = load i32, i32* %n_entry, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %shr = ashr i32 %6, 14
  %idxprom = sext i32 %shr to i64
  %7 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %entry2 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %7, i32 0, i32 0
  %8 = load %struct.vithist_entry_t**, %struct.vithist_entry_t*** %entry2, align 8
  %arrayidx = getelementptr inbounds %struct.vithist_entry_t*, %struct.vithist_entry_t** %8, i64 %idxprom
  %9 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %arrayidx, align 8
  %10 = load i32, i32* %i, align 4
  %and = and i32 %10, 16383
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %9, i64 %idx.ext
  store %struct.vithist_entry_t* %add.ptr, %struct.vithist_entry_t** %ve, align 8
  %11 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %11, i32 0, i32 8
  %12 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.76

if.end:                                           ; preds = %for.body
  %13 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf3 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %13, i32 0, i32 1
  %14 = load i16, i16* %sf3, align 2
  %conv4 = sext i16 %14 to i32
  %cmp5 = icmp sle i32 %conv4, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %15 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf8 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %15, i32 0, i32 1
  %16 = load i16, i16* %sf8, align 2
  %conv9 = sext i16 %16 to i32
  %add10 = add nsw i32 %conv9, 1
  store i32 %add10, i32* %sf, align 4
  %17 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef11 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %17, i32 0, i32 2
  %18 = load i16, i16* %ef11, align 2
  %conv12 = sext i16 %18 to i32
  %cmp13 = icmp slt i32 %conv12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %19 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef15 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %19, i32 0, i32 2
  %20 = load i16, i16* %ef15, align 2
  %conv16 = sext i16 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv16, %cond.false ]
  store i32 %cond, i32* %ef, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %21 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %sf17 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %21, i32 0, i32 1
  %22 = load i16, i16* %sf17, align 2
  %conv18 = sext i16 %22 to i32
  store i32 %conv18, i32* %sf, align 4
  %23 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef19 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %23, i32 0, i32 2
  %24 = load i16, i16* %ef19, align 2
  %conv20 = sext i16 %24 to i32
  store i32 %conv20, i32* %ef, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %cond.end
  %25 = load i32, i32* %sf, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx23 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %26, i64 %idxprom22
  %27 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx23, align 8
  store %struct.gnode_s* %27, %struct.gnode_s** %gn, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end.21
  %28 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool25 = icmp ne %struct.gnode_s* %28, null
  br i1 %tobool25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %29 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %29, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %30 = load i8*, i8** %ptr, align 8
  %31 = bitcast i8* %30 to %struct.dagnode_t*
  store %struct.dagnode_t* %31, %struct.dagnode_t** %dn, align 8
  %32 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %wid = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %32, i32 0, i32 0
  %33 = load i32, i32* %wid, align 4
  %34 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid27 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %34, i32 0, i32 0
  %35 = load i32, i32* %wid27, align 4
  %cmp28 = icmp eq i32 %33, %35
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.26
  br label %for.end

if.end.31:                                        ; preds = %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %36 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %36, i32 0, i32 1
  %37 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %37, %struct.gnode_s** %gn, align 8
  br label %for.cond.24

for.end:                                          ; preds = %if.then.30, %for.cond.24
  %38 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool32 = icmp ne %struct.gnode_s* %38, null
  br i1 %tobool32, label %if.else.42, label %if.then.33

if.then.33:                                       ; preds = %for.end
  %call34 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 854)
  %39 = bitcast i8* %call34 to %struct.dagnode_t*
  store %struct.dagnode_t* %39, %struct.dagnode_t** %dn, align 8
  %40 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid35 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %40, i32 0, i32 0
  %41 = load i32, i32* %wid35, align 4
  %42 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %wid36 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %42, i32 0, i32 0
  store i32 %41, i32* %wid36, align 4
  %43 = load i32, i32* %ef, align 4
  %44 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %fef = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %44, i32 0, i32 1
  store i32 %43, i32* %fef, align 4
  %45 = load i32, i32* %ef, align 4
  %46 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %lef = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %46, i32 0, i32 2
  store i32 %45, i32* %lef, align 4
  %47 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %47, i32 0, i32 3
  store i32 -1, i32* %seqid, align 4
  %48 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %velist = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %48, i32 0, i32 4
  store %struct.gnode_s* null, %struct.gnode_s** %velist, align 8
  %49 = load i32, i32* %n_node, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %n_node, align 4
  %50 = load i32, i32* %sf, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx38 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %51, i64 %idxprom37
  %52 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx38, align 8
  %53 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %54 = bitcast %struct.dagnode_t* %53 to i8*
  %call39 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %52, i8* %54)
  %55 = load i32, i32* %sf, align 4
  %idxprom40 = sext i32 %55 to i64
  %56 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx41 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %56, i64 %idxprom40
  store %struct.gnode_s* %call39, %struct.gnode_s** %arrayidx41, align 8
  br label %if.end.44

if.else.42:                                       ; preds = %for.end
  %57 = load i32, i32* %ef, align 4
  %58 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %lef43 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %58, i32 0, i32 2
  store i32 %57, i32* %lef43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.33
  %59 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %velist45 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %59, i32 0, i32 4
  %60 = load %struct.gnode_s*, %struct.gnode_s** %velist45, align 8
  store %struct.gnode_s* %60, %struct.gnode_s** %gn, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.59, %if.end.44
  %61 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool47 = icmp ne %struct.gnode_s* %61, null
  br i1 %tobool47, label %for.body.48, label %for.end.61

for.body.48:                                      ; preds = %for.cond.46
  %62 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data49 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %62, i32 0, i32 0
  %ptr50 = bitcast %union.anytype_s* %data49 to i8**
  %63 = load i8*, i8** %ptr50, align 8
  %64 = bitcast i8* %63 to %struct.vithist_entry_t*
  store %struct.vithist_entry_t* %64, %struct.vithist_entry_t** %ve2, align 8
  %65 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve2, align 8
  %ef51 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %65, i32 0, i32 2
  %66 = load i16, i16* %ef51, align 2
  %conv52 = sext i16 %66 to i32
  %67 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef53 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %67, i32 0, i32 2
  %68 = load i16, i16* %ef53, align 2
  %conv54 = sext i16 %68 to i32
  %cmp55 = icmp eq i32 %conv52, %conv54
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body.48
  br label %for.end.61

if.end.58:                                        ; preds = %for.body.48
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %69 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next60 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %69, i32 0, i32 1
  %70 = load %struct.gnode_s*, %struct.gnode_s** %next60, align 8
  store %struct.gnode_s* %70, %struct.gnode_s** %gn, align 8
  br label %for.cond.46

for.end.61:                                       ; preds = %if.then.57, %for.cond.46
  %71 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool62 = icmp ne %struct.gnode_s* %71, null
  br i1 %tobool62, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %for.end.61
  %72 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %72, i32 0, i32 5
  %73 = load i32, i32* %score, align 4
  %74 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve2, align 8
  %score64 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %74, i32 0, i32 5
  %75 = load i32, i32* %score64, align 4
  %cmp65 = icmp sgt i32 %73, %75
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.then.63
  %76 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %77 = bitcast %struct.vithist_entry_t* %76 to i8*
  %78 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data68 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %78, i32 0, i32 0
  %ptr69 = bitcast %union.anytype_s* %data68 to i8**
  store i8* %77, i8** %ptr69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.then.63
  br label %if.end.75

if.else.71:                                       ; preds = %for.end.61
  %79 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %velist72 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %79, i32 0, i32 4
  %80 = load %struct.gnode_s*, %struct.gnode_s** %velist72, align 8
  %81 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %82 = bitcast %struct.vithist_entry_t* %81 to i8*
  %call73 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %80, i8* %82)
  %83 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %velist74 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %83, i32 0, i32 4
  store %struct.gnode_s* %call73, %struct.gnode_s** %velist74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.71, %if.end.70
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %if.then
  %84 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %84, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %85 = load %struct.gnode_s*, %struct.gnode_s** %hyp.addr, align 8
  store %struct.gnode_s* %85, %struct.gnode_s** %gn, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.101, %for.end.78
  %86 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool80 = icmp ne %struct.gnode_s* %86, null
  br i1 %tobool80, label %for.body.81, label %for.end.103

for.body.81:                                      ; preds = %for.cond.79
  %87 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data82 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %87, i32 0, i32 0
  %ptr83 = bitcast %union.anytype_s* %data82 to i8**
  %88 = load i8*, i8** %ptr83, align 8
  %89 = bitcast i8* %88 to %struct.hyp_t*
  store %struct.hyp_t* %89, %struct.hyp_t** %h, align 8
  %90 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %sf84 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %90, i32 0, i32 2
  %91 = load i32, i32* %sf84, align 4
  %idxprom85 = sext i32 %91 to i64
  %92 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx86 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %92, i64 %idxprom85
  %93 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx86, align 8
  store %struct.gnode_s* %93, %struct.gnode_s** %gn2, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.98, %for.body.81
  %94 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %tobool88 = icmp ne %struct.gnode_s* %94, null
  br i1 %tobool88, label %for.body.89, label %for.end.100

for.body.89:                                      ; preds = %for.cond.87
  %95 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %data90 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %95, i32 0, i32 0
  %ptr91 = bitcast %union.anytype_s* %data90 to i8**
  %96 = load i8*, i8** %ptr91, align 8
  %97 = bitcast i8* %96 to %struct.dagnode_t*
  store %struct.dagnode_t* %97, %struct.dagnode_t** %dn, align 8
  %98 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %98, i32 0, i32 0
  %99 = load i32, i32* %id, align 4
  %100 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %wid92 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %100, i32 0, i32 0
  %101 = load i32, i32* %wid92, align 4
  %cmp93 = icmp eq i32 %99, %101
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %for.body.89
  %102 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid96 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %102, i32 0, i32 3
  store i32 0, i32* %seqid96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %for.body.89
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %103 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %next99 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %103, i32 0, i32 1
  %104 = load %struct.gnode_s*, %struct.gnode_s** %next99, align 8
  store %struct.gnode_s* %104, %struct.gnode_s** %gn2, align 8
  br label %for.cond.87

for.end.100:                                      ; preds = %for.cond.87
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end.100
  %105 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next102 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %105, i32 0, i32 1
  %106 = load %struct.gnode_s*, %struct.gnode_s** %next102, align 8
  store %struct.gnode_s* %106, %struct.gnode_s** %gn, align 8
  br label %for.cond.79

for.end.103:                                      ; preds = %for.cond.79
  %107 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx104 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %107, i64 0
  %108 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx104, align 8
  %data105 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %108, i32 0, i32 0
  %ptr106 = bitcast %union.anytype_s* %data105 to i8**
  %109 = load i8*, i8** %ptr106, align 8
  %110 = bitcast i8* %109 to %struct.dagnode_t*
  store %struct.dagnode_t* %110, %struct.dagnode_t** %dn, align 8
  %111 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid107 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %111, i32 0, i32 3
  store i32 0, i32* %seqid107, align 4
  %112 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm108 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %112, i32 0, i32 3
  %113 = load i32, i32* %n_frm108, align 4
  %idxprom109 = sext i32 %113 to i64
  %114 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx110 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %114, i64 %idxprom109
  %115 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx110, align 8
  %data111 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %115, i32 0, i32 0
  %ptr112 = bitcast %union.anytype_s* %data111 to i8**
  %116 = load i8*, i8** %ptr112, align 8
  %117 = bitcast i8* %116 to %struct.dagnode_t*
  store %struct.dagnode_t* %117, %struct.dagnode_t** %dn, align 8
  %118 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid113 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %118, i32 0, i32 3
  store i32 0, i32* %seqid113, align 4
  store i32 0, i32* %i, align 4
  %119 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm114 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %119, i32 0, i32 3
  %120 = load i32, i32* %n_frm114, align 4
  store i32 %120, i32* %f, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.142, %for.end.103
  %121 = load i32, i32* %f, align 4
  %cmp116 = icmp sge i32 %121, 0
  br i1 %cmp116, label %for.body.118, label %for.end.143

for.body.118:                                     ; preds = %for.cond.115
  %122 = load i32, i32* %f, align 4
  %idxprom119 = sext i32 %122 to i64
  %123 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx120 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %123, i64 %idxprom119
  %124 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx120, align 8
  store %struct.gnode_s* %124, %struct.gnode_s** %gn, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.139, %for.body.118
  %125 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool122 = icmp ne %struct.gnode_s* %125, null
  br i1 %tobool122, label %for.body.123, label %for.end.141

for.body.123:                                     ; preds = %for.cond.121
  %126 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data124 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %126, i32 0, i32 0
  %ptr125 = bitcast %union.anytype_s* %data124 to i8**
  %127 = load i8*, i8** %ptr125, align 8
  %128 = bitcast i8* %127 to %struct.dagnode_t*
  store %struct.dagnode_t* %128, %struct.dagnode_t** %dn, align 8
  %129 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %lef126 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %129, i32 0, i32 2
  %130 = load i32, i32* %lef126, align 4
  %131 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %fef127 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %131, i32 0, i32 1
  %132 = load i32, i32* %fef127, align 4
  %cmp128 = icmp sgt i32 %130, %132
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.123
  %133 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid130 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %133, i32 0, i32 3
  %134 = load i32, i32* %seqid130, align 4
  %cmp131 = icmp sge i32 %134, 0
  br i1 %cmp131, label %if.then.133, label %if.else.136

if.then.133:                                      ; preds = %lor.lhs.false, %for.body.123
  %135 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %135, 1
  store i32 %inc134, i32* %i, align 4
  %136 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid135 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %136, i32 0, i32 3
  store i32 %135, i32* %seqid135, align 4
  br label %if.end.138

if.else.136:                                      ; preds = %lor.lhs.false
  %137 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid137 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %137, i32 0, i32 3
  store i32 -1, i32* %seqid137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.133
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %138 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next140 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %138, i32 0, i32 1
  %139 = load %struct.gnode_s*, %struct.gnode_s** %next140, align 8
  store %struct.gnode_s* %139, %struct.gnode_s** %gn, align 8
  br label %for.cond.121

for.end.141:                                      ; preds = %for.cond.121
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %140 = load i32, i32* %f, align 4
  %dec = add nsw i32 %140, -1
  store i32 %dec, i32* %f, align 4
  br label %for.cond.115

for.end.143:                                      ; preds = %for.cond.115
  %141 = load i32, i32* %i, align 4
  store i32 %141, i32* %n_node, align 4
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %143 = load i32, i32* %n_node, align 4
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.24, i32 0, i32 0), i32 %143)
  %144 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm145 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %144, i32 0, i32 3
  %145 = load i32, i32* %n_frm145, align 4
  store i32 %145, i32* %f, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.173, %for.end.143
  %146 = load i32, i32* %f, align 4
  %cmp147 = icmp sge i32 %146, 0
  br i1 %cmp147, label %for.body.149, label %for.end.175

for.body.149:                                     ; preds = %for.cond.146
  %147 = load i32, i32* %f, align 4
  %idxprom150 = sext i32 %147 to i64
  %148 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx151 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %148, i64 %idxprom150
  %149 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx151, align 8
  store %struct.gnode_s* %149, %struct.gnode_s** %gn, align 8
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.170, %for.body.149
  %150 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool153 = icmp ne %struct.gnode_s* %150, null
  br i1 %tobool153, label %for.body.154, label %for.end.172

for.body.154:                                     ; preds = %for.cond.152
  %151 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data155 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %151, i32 0, i32 0
  %ptr156 = bitcast %union.anytype_s* %data155 to i8**
  %152 = load i8*, i8** %ptr156, align 8
  %153 = bitcast i8* %152 to %struct.dagnode_t*
  store %struct.dagnode_t* %153, %struct.dagnode_t** %dn, align 8
  %154 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid157 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %154, i32 0, i32 3
  %155 = load i32, i32* %seqid157, align 4
  %cmp158 = icmp sge i32 %155, 0
  br i1 %cmp158, label %if.then.160, label %if.end.169

if.then.160:                                      ; preds = %for.body.154
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %157 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid161 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %157, i32 0, i32 3
  %158 = load i32, i32* %seqid161, align 4
  %159 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %wid162 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %159, i32 0, i32 0
  %160 = load i32, i32* %wid162, align 4
  %idxprom163 = sext i32 %160 to i64
  %161 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %161, i32 0, i32 4
  %162 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx164 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %162, i64 %idxprom163
  %word165 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx164, i32 0, i32 0
  %163 = load i8*, i8** %word165, align 8
  %164 = load i32, i32* %f, align 4
  %165 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %fef166 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %165, i32 0, i32 1
  %166 = load i32, i32* %fef166, align 4
  %167 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %lef167 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %167, i32 0, i32 2
  %168 = load i32, i32* %lef167, align 4
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 %158, i8* %163, i32 %164, i32 %166, i32 %168)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.160, %for.body.154
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169
  %169 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next171 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %169, i32 0, i32 1
  %170 = load %struct.gnode_s*, %struct.gnode_s** %next171, align 8
  store %struct.gnode_s* %170, %struct.gnode_s** %gn, align 8
  br label %for.cond.152

for.end.172:                                      ; preds = %for.cond.152
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.end.172
  %171 = load i32, i32* %f, align 4
  %dec174 = add nsw i32 %171, -1
  store i32 %dec174, i32* %f, align 4
  br label %for.cond.146

for.end.175:                                      ; preds = %for.cond.146
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %174 = load i32, i32* %n_node, align 4
  %sub = sub nsw i32 %174, 1
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 %sub, i32 0)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %178 = load i32, i32* %oldfmt.addr, align 4
  %tobool181 = icmp ne i32 %178, 0
  br i1 %tobool181, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %for.end.175
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.186

if.else.184:                                      ; preds = %for.end.175
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.182
  %181 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm187 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %181, i32 0, i32 3
  %182 = load i32, i32* %n_frm187, align 4
  %sub188 = sub nsw i32 %182, 1
  store i32 %sub188, i32* %f, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.269, %if.end.186
  %183 = load i32, i32* %f, align 4
  %cmp190 = icmp sge i32 %183, 0
  br i1 %cmp190, label %for.body.192, label %for.end.271

for.body.192:                                     ; preds = %for.cond.189
  %184 = load i32, i32* %f, align 4
  %idxprom193 = sext i32 %184 to i64
  %185 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx194 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %185, i64 %idxprom193
  %186 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx194, align 8
  store %struct.gnode_s* %186, %struct.gnode_s** %gn, align 8
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.266, %for.body.192
  %187 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool196 = icmp ne %struct.gnode_s* %187, null
  br i1 %tobool196, label %for.body.197, label %for.end.268

for.body.197:                                     ; preds = %for.cond.195
  %188 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data198 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %188, i32 0, i32 0
  %ptr199 = bitcast %union.anytype_s* %data198 to i8**
  %189 = load i8*, i8** %ptr199, align 8
  %190 = bitcast i8* %189 to %struct.dagnode_t*
  store %struct.dagnode_t* %190, %struct.dagnode_t** %dn, align 8
  %191 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid200 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %191, i32 0, i32 3
  %192 = load i32, i32* %seqid200, align 4
  %cmp201 = icmp slt i32 %192, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %for.body.197
  br label %for.inc.266

if.end.204:                                       ; preds = %for.body.197
  %193 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %velist205 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %193, i32 0, i32 4
  %194 = load %struct.gnode_s*, %struct.gnode_s** %velist205, align 8
  store %struct.gnode_s* %194, %struct.gnode_s** %gn2, align 8
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.263, %if.end.204
  %195 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %tobool207 = icmp ne %struct.gnode_s* %195, null
  br i1 %tobool207, label %for.body.208, label %for.end.265

for.body.208:                                     ; preds = %for.cond.206
  %196 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %data209 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %196, i32 0, i32 0
  %ptr210 = bitcast %union.anytype_s* %data209 to i8**
  %197 = load i8*, i8** %ptr210, align 8
  %198 = bitcast i8* %197 to %struct.vithist_entry_t*
  store %struct.vithist_entry_t* %198, %struct.vithist_entry_t** %ve, align 8
  %199 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef211 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %199, i32 0, i32 2
  %200 = load i16, i16* %ef211, align 2
  %conv212 = sext i16 %200 to i32
  %cmp213 = icmp slt i32 %conv212, 0
  br i1 %cmp213, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %for.body.208
  br label %cond.end.220

cond.false.216:                                   ; preds = %for.body.208
  %201 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ef217 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %201, i32 0, i32 2
  %202 = load i16, i16* %ef217, align 2
  %conv218 = sext i16 %202 to i32
  %add219 = add nsw i32 %conv218, 1
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.216, %cond.true.215
  %cond221 = phi i32 [ 1, %cond.true.215 ], [ %add219, %cond.false.216 ]
  store i32 %cond221, i32* %sf, align 4
  %203 = load i32, i32* %oldfmt.addr, align 4
  %tobool222 = icmp ne i32 %203, 0
  br i1 %tobool222, label %if.then.223, label %if.else.242

if.then.223:                                      ; preds = %cond.end.220
  %204 = load i32, i32* %sf, align 4
  %idxprom224 = sext i32 %204 to i64
  %205 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx225 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %205, i64 %idxprom224
  %206 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx225, align 8
  store %struct.gnode_s* %206, %struct.gnode_s** %gn3, align 8
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.239, %if.then.223
  %207 = load %struct.gnode_s*, %struct.gnode_s** %gn3, align 8
  %tobool227 = icmp ne %struct.gnode_s* %207, null
  br i1 %tobool227, label %for.body.228, label %for.end.241

for.body.228:                                     ; preds = %for.cond.226
  %208 = load %struct.gnode_s*, %struct.gnode_s** %gn3, align 8
  %data229 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %208, i32 0, i32 0
  %ptr230 = bitcast %union.anytype_s* %data229 to i8**
  %209 = load i8*, i8** %ptr230, align 8
  %210 = bitcast i8* %209 to %struct.dagnode_t*
  store %struct.dagnode_t* %210, %struct.dagnode_t** %dn2, align 8
  %211 = load %struct.dagnode_t*, %struct.dagnode_t** %dn2, align 8
  %seqid231 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %211, i32 0, i32 3
  %212 = load i32, i32* %seqid231, align 4
  %cmp232 = icmp sge i32 %212, 0
  br i1 %cmp232, label %if.then.234, label %if.end.238

if.then.234:                                      ; preds = %for.body.228
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %214 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid235 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %214, i32 0, i32 3
  %215 = load i32, i32* %seqid235, align 4
  %216 = load %struct.dagnode_t*, %struct.dagnode_t** %dn2, align 8
  %seqid236 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %216, i32 0, i32 3
  %217 = load i32, i32* %seqid236, align 4
  %218 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ascr = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %218, i32 0, i32 3
  %219 = load i32, i32* %ascr, align 4
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 %215, i32 %217, i32 %219)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.234, %for.body.228
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %220 = load %struct.gnode_s*, %struct.gnode_s** %gn3, align 8
  %next240 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %220, i32 0, i32 1
  %221 = load %struct.gnode_s*, %struct.gnode_s** %next240, align 8
  store %struct.gnode_s* %221, %struct.gnode_s** %gn3, align 8
  br label %for.cond.226

for.end.241:                                      ; preds = %for.cond.226
  br label %if.end.262

if.else.242:                                      ; preds = %cond.end.220
  %222 = load i32, i32* %sf, align 4
  %idxprom243 = sext i32 %222 to i64
  %223 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx244 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %223, i64 %idxprom243
  %224 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx244, align 8
  store %struct.gnode_s* %224, %struct.gnode_s** %gn3, align 8
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.259, %if.else.242
  %225 = load %struct.gnode_s*, %struct.gnode_s** %gn3, align 8
  %tobool246 = icmp ne %struct.gnode_s* %225, null
  br i1 %tobool246, label %for.body.247, label %for.end.261

for.body.247:                                     ; preds = %for.cond.245
  %226 = load %struct.gnode_s*, %struct.gnode_s** %gn3, align 8
  %data248 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %226, i32 0, i32 0
  %ptr249 = bitcast %union.anytype_s* %data248 to i8**
  %227 = load i8*, i8** %ptr249, align 8
  %228 = bitcast i8* %227 to %struct.dagnode_t*
  store %struct.dagnode_t* %228, %struct.dagnode_t** %dn2, align 8
  %229 = load %struct.dagnode_t*, %struct.dagnode_t** %dn2, align 8
  %seqid250 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %229, i32 0, i32 3
  %230 = load i32, i32* %seqid250, align 4
  %cmp251 = icmp sge i32 %230, 0
  br i1 %cmp251, label %if.then.253, label %if.end.258

if.then.253:                                      ; preds = %for.body.247
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %232 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %seqid254 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %232, i32 0, i32 3
  %233 = load i32, i32* %seqid254, align 4
  %234 = load i32, i32* %sf, align 4
  %sub255 = sub nsw i32 %234, 1
  %235 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %ascr256 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %235, i32 0, i32 3
  %236 = load i32, i32* %ascr256, align 4
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 %233, i32 %sub255, i32 %236)
  br label %for.end.261

if.end.258:                                       ; preds = %for.body.247
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %237 = load %struct.gnode_s*, %struct.gnode_s** %gn3, align 8
  %next260 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %237, i32 0, i32 1
  %238 = load %struct.gnode_s*, %struct.gnode_s** %next260, align 8
  store %struct.gnode_s* %238, %struct.gnode_s** %gn3, align 8
  br label %for.cond.245

for.end.261:                                      ; preds = %if.then.253, %for.cond.245
  br label %if.end.262

if.end.262:                                       ; preds = %for.end.261, %for.end.241
  br label %for.inc.263

for.inc.263:                                      ; preds = %if.end.262
  %239 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %next264 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %239, i32 0, i32 1
  %240 = load %struct.gnode_s*, %struct.gnode_s** %next264, align 8
  store %struct.gnode_s* %240, %struct.gnode_s** %gn2, align 8
  br label %for.cond.206

for.end.265:                                      ; preds = %for.cond.206
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end.265, %if.then.203
  %241 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next267 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %241, i32 0, i32 1
  %242 = load %struct.gnode_s*, %struct.gnode_s** %next267, align 8
  store %struct.gnode_s* %242, %struct.gnode_s** %gn, align 8
  br label %for.cond.195

for.end.268:                                      ; preds = %for.cond.195
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.end.268
  %243 = load i32, i32* %f, align 4
  %dec270 = add nsw i32 %243, -1
  store i32 %dec270, i32* %f, align 4
  br label %for.cond.189

for.end.271:                                      ; preds = %for.cond.189
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %f, align 4
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.291, %for.end.271
  %245 = load i32, i32* %f, align 4
  %246 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %n_frm274 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %246, i32 0, i32 3
  %247 = load i32, i32* %n_frm274, align 4
  %cmp275 = icmp sle i32 %245, %247
  br i1 %cmp275, label %for.body.277, label %for.end.293

for.body.277:                                     ; preds = %for.cond.273
  %248 = load i32, i32* %f, align 4
  %idxprom278 = sext i32 %248 to i64
  %249 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx279 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %249, i64 %idxprom278
  %250 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx279, align 8
  store %struct.gnode_s* %250, %struct.gnode_s** %gn, align 8
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.286, %for.body.277
  %251 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool281 = icmp ne %struct.gnode_s* %251, null
  br i1 %tobool281, label %for.body.282, label %for.end.288

for.body.282:                                     ; preds = %for.cond.280
  %252 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data283 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %252, i32 0, i32 0
  %ptr284 = bitcast %union.anytype_s* %data283 to i8**
  %253 = load i8*, i8** %ptr284, align 8
  %254 = bitcast i8* %253 to %struct.dagnode_t*
  store %struct.dagnode_t* %254, %struct.dagnode_t** %dn, align 8
  %255 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %velist285 = getelementptr inbounds %struct.dagnode_t, %struct.dagnode_t* %255, i32 0, i32 4
  %256 = load %struct.gnode_s*, %struct.gnode_s** %velist285, align 8
  call void @glist_free(%struct.gnode_s* %256)
  %257 = load %struct.dagnode_t*, %struct.dagnode_t** %dn, align 8
  %258 = bitcast %struct.dagnode_t* %257 to i8*
  call void @ckd_free(i8* %258)
  br label %for.inc.286

for.inc.286:                                      ; preds = %for.body.282
  %259 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next287 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %259, i32 0, i32 1
  %260 = load %struct.gnode_s*, %struct.gnode_s** %next287, align 8
  store %struct.gnode_s* %260, %struct.gnode_s** %gn, align 8
  br label %for.cond.280

for.end.288:                                      ; preds = %for.cond.280
  %261 = load i32, i32* %f, align 4
  %idxprom289 = sext i32 %261 to i64
  %262 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %arrayidx290 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %262, i64 %idxprom289
  %263 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx290, align 8
  call void @glist_free(%struct.gnode_s* %263)
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.end.288
  %264 = load i32, i32* %f, align 4
  %inc292 = add nsw i32 %264, 1
  store i32 %inc292, i32* %f, align 4
  br label %for.cond.273

for.end.293:                                      ; preds = %for.cond.273
  %265 = load %struct.gnode_s**, %struct.gnode_s*** %sfwid, align 8
  %266 = bitcast %struct.gnode_s** %265 to i8*
  call void @ckd_free(i8* %266)
  ret void
}

declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: nounwind uwtable
define void @vithist_free(%struct.vithist_t* %v) #0 {
entry:
  %v.addr = alloca %struct.vithist_t*, align 8
  store %struct.vithist_t* %v, %struct.vithist_t** %v.addr, align 8
  %0 = load %struct.vithist_t*, %struct.vithist_t** %v.addr, align 8
  %tobool = icmp ne %struct.vithist_t* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.vithist_t*, %struct.vithist_t** %v.addr, align 8
  %2 = bitcast %struct.vithist_t* %1 to i8*
  call void @ckd_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vh_lmstate_find(%struct.vithist_t* %vh, %union.vh_lmstate_t* %lms) #0 {
entry:
  %retval = alloca i32, align 4
  %vh.addr = alloca %struct.vithist_t*, align 8
  %lms.addr = alloca %union.vh_lmstate_t*, align 8
  %lms2vh = alloca %struct.vh_lms2vh_t*, align 8
  %lwid = alloca i16, align 2
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store %union.vh_lmstate_t* %lms, %union.vh_lmstate_t** %lms.addr, align 8
  %0 = load %union.vh_lmstate_t*, %union.vh_lmstate_t** %lms.addr, align 8
  %lm3g = bitcast %union.vh_lmstate_t* %0 to %struct.anon*
  %lwid1 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %lwid1, i32 0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  store i16 %1, i16* %lwid, align 2
  %2 = load i16, i16* %lwid, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lms2vh_root = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %3, i32 0, i32 8
  %4 = load %struct.vh_lms2vh_t**, %struct.vh_lms2vh_t*** %lms2vh_root, align 8
  %arrayidx2 = getelementptr inbounds %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %4, i64 %idxprom
  %5 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %arrayidx2, align 8
  store %struct.vh_lms2vh_t* %5, %struct.vh_lms2vh_t** %lms2vh, align 8
  %cmp = icmp eq %struct.vh_lms2vh_t* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %union.vh_lmstate_t*, %union.vh_lmstate_t** %lms.addr, align 8
  %lm3g3 = bitcast %union.vh_lmstate_t* %6 to %struct.anon*
  %lwid4 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid4, i32 0, i64 1
  %7 = load i16, i16* %arrayidx5, align 2
  store i16 %7, i16* %lwid, align 2
  %8 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %children = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %8, i32 0, i32 3
  %9 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %9, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %11, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %12 = load i8*, i8** %ptr, align 8
  %13 = bitcast i8* %12 to %struct.vh_lms2vh_t*
  store %struct.vh_lms2vh_t* %13, %struct.vh_lms2vh_t** %lms2vh, align 8
  %14 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %state = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %14, i32 0, i32 0
  %15 = load i32, i32* %state, align 4
  %16 = load i16, i16* %lwid, align 2
  %conv = zext i16 %16 to i32
  %cmp6 = icmp eq i32 %15, %conv
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  %17 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %vhid = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %17, i32 0, i32 1
  %18 = load i32, i32* %vhid, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %19 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %19, i32 0, i32 1
  %20 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %20, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @vithist_lmstate_enter(%struct.vithist_t* %vh, i32 %vhid, %struct.vithist_entry_t* %ve) #0 {
entry:
  %vh.addr = alloca %struct.vithist_t*, align 8
  %vhid.addr = alloca i32, align 4
  %ve.addr = alloca %struct.vithist_entry_t*, align 8
  %lms2vh = alloca %struct.vh_lms2vh_t*, align 8
  %child = alloca %struct.vh_lms2vh_t*, align 8
  %lwid = alloca i16, align 2
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %vhid, i32* %vhid.addr, align 4
  store %struct.vithist_entry_t* %ve, %struct.vithist_entry_t** %ve.addr, align 8
  %0 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve.addr, align 8
  %lmstate = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %0, i32 0, i32 9
  %lm3g = bitcast %union.vh_lmstate_t* %lmstate to %struct.anon*
  %lwid1 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %lwid1, i32 0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  store i16 %1, i16* %lwid, align 2
  %2 = load i16, i16* %lwid, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lms2vh_root = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %3, i32 0, i32 8
  %4 = load %struct.vh_lms2vh_t**, %struct.vh_lms2vh_t*** %lms2vh_root, align 8
  %arrayidx2 = getelementptr inbounds %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %4, i64 %idxprom
  %5 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %arrayidx2, align 8
  store %struct.vh_lms2vh_t* %5, %struct.vh_lms2vh_t** %lms2vh, align 8
  %cmp = icmp eq %struct.vh_lms2vh_t* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 218)
  %6 = bitcast i8* %call to %struct.vh_lms2vh_t*
  store %struct.vh_lms2vh_t* %6, %struct.vh_lms2vh_t** %lms2vh, align 8
  %7 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %8 = load i16, i16* %lwid, align 2
  %idxprom3 = zext i16 %8 to i64
  %9 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lms2vh_root4 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %9, i32 0, i32 8
  %10 = load %struct.vh_lms2vh_t**, %struct.vh_lms2vh_t*** %lms2vh_root4, align 8
  %arrayidx5 = getelementptr inbounds %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %10, i64 %idxprom3
  store %struct.vh_lms2vh_t* %7, %struct.vh_lms2vh_t** %arrayidx5, align 8
  %11 = load i16, i16* %lwid, align 2
  %conv = zext i16 %11 to i32
  %12 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %state = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %12, i32 0, i32 0
  store i32 %conv, i32* %state, align 4
  %13 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %children = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %13, i32 0, i32 3
  store %struct.gnode_s* null, %struct.gnode_s** %children, align 8
  %14 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lwidlist = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %14, i32 0, i32 9
  %15 = load %struct.gnode_s*, %struct.gnode_s** %lwidlist, align 8
  %16 = load i16, i16* %lwid, align 2
  %conv6 = zext i16 %16 to i32
  %call7 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %15, i32 %conv6)
  %17 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %lwidlist8 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %17, i32 0, i32 9
  store %struct.gnode_s* %call7, %struct.gnode_s** %lwidlist8, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 229)
  %18 = bitcast i8* %call9 to %struct.vh_lms2vh_t*
  store %struct.vh_lms2vh_t* %18, %struct.vh_lms2vh_t** %child, align 8
  %19 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve.addr, align 8
  %lmstate10 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %19, i32 0, i32 9
  %lm3g11 = bitcast %union.vh_lmstate_t* %lmstate10 to %struct.anon*
  %lwid12 = getelementptr inbounds %struct.anon, %struct.anon* %lm3g11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x i16], [2 x i16]* %lwid12, i32 0, i64 1
  %20 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %20 to i32
  %21 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %child, align 8
  %state15 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %21, i32 0, i32 0
  store i32 %conv14, i32* %state15, align 4
  %22 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %child, align 8
  %children16 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %22, i32 0, i32 3
  store %struct.gnode_s* null, %struct.gnode_s** %children16, align 8
  %23 = load i32, i32* %vhid.addr, align 4
  %24 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %child, align 8
  %vhid17 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %24, i32 0, i32 1
  store i32 %23, i32* %vhid17, align 4
  %25 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve.addr, align 8
  %26 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %child, align 8
  %ve18 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %26, i32 0, i32 2
  store %struct.vithist_entry_t* %25, %struct.vithist_entry_t** %ve18, align 8
  %27 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %children19 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %27, i32 0, i32 3
  %28 = load %struct.gnode_s*, %struct.gnode_s** %children19, align 8
  %29 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %child, align 8
  %30 = bitcast %struct.vh_lms2vh_t* %29 to i8*
  %call20 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %28, i8* %30)
  %31 = load %struct.vh_lms2vh_t*, %struct.vh_lms2vh_t** %lms2vh, align 8
  %children21 = getelementptr inbounds %struct.vh_lms2vh_t, %struct.vh_lms2vh_t* %31, i32 0, i32 3
  store %struct.gnode_s* %call20, %struct.gnode_s** %children21, align 8
  ret void
}

declare %struct.gnode_s* @glist_add_int32(%struct.gnode_s*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
