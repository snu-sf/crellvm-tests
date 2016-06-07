; ModuleID = 'lextree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lextree_t = type { i32, %struct.gnode_s*, %struct.lextree_lcroot_t*, i32, i32, %struct.lextree_node_t**, %struct.lextree_node_t**, i32, i32, i32, i32 }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
%struct.lextree_lcroot_t = type { i8, %struct.gnode_s* }
%struct.lextree_node_t = type { %struct.hmm_t, %struct.gnode_s*, i32, i32, i32, i32*, i8, i8, i16 }
%struct.hmm_t = type { %struct.hmm_state_t*, %struct.hmm_state_t, %struct.hmm_state_t, i32**, i32 }
%struct.hmm_state_t = type { i32, i32 }
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
%struct.ascr_t = type { i32*, i32* }
%struct.vithist_t = type { %struct.vithist_entry_t**, i32*, i32, i32, i32, i32, i32*, i32*, %struct.vh_lms2vh_t**, %struct.gnode_s* }
%struct.vithist_entry_t = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, %union.vh_lmstate_t }
%union.vh_lmstate_t = type { %struct.anon }
%struct.anon = type { [2 x i16] }
%struct.vh_lms2vh_t = type { i32, i32, %struct.vithist_entry_t*, %struct.gnode_s* }

@.str = private unnamed_addr constant [10 x i8] c"lextree.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"#Nodes allocated(%d) != #nodes freed(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lcroot %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"#State= %d unsupported\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Fr %d  #active %d  best %d  wbest %d\0A\00", align 1
@lextree_hmm_propagate.maxNewHeurScore = internal global i32 -2147483648, align 4
@lextree_hmm_propagate.lastfrm = internal global i32 -1, align 4
@.str.7 = private unnamed_addr constant [78 x i8] c"Hmm->out.history equals to -1 with score %d and active idx %d, lextree->type\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"wid(%d)pr(%d)com(%d)ss(%d)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.lextree_t* @lextree_build(%struct.kbcore_t* %kbc, %struct.wordprob_t* %wordprob, i32 %n_word, i8* %lc) #0 {
entry:
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %wordprob.addr = alloca %struct.wordprob_t*, align 8
  %n_word.addr = alloca i32, align 4
  %lc.addr = alloca i8*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %tmat = alloca %struct.tmat_t*, align 8
  %d2p = alloca %struct.dict2pid_t*, align 8
  %ldiph_lc = alloca i32*, align 8
  %lextree = alloca %struct.lextree_t*, align 8
  %lcroot = alloca %struct.lextree_lcroot_t*, align 8
  %n_lc = alloca i32, align 4
  %n_node = alloca i32, align 4
  %n_ci = alloca i32, align 4
  %n_sseq = alloca i32, align 4
  %pronlen = alloca i32, align 4
  %ssid = alloca i32, align 4
  %prob = alloca i32, align 4
  %ci = alloca i32, align 4
  %rc = alloca i32, align 4
  %wid = alloca i32, align 4
  %np = alloca i32, align 4
  %n_st = alloca i32, align 4
  %ln = alloca %struct.lextree_node_t*, align 8
  %parent = alloca %struct.lextree_node_t**, align 8
  %ssid2ln = alloca %struct.lextree_node_t**, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %ssid_lc = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store %struct.wordprob_t* %wordprob, %struct.wordprob_t** %wordprob.addr, align 8
  store i32 %n_word, i32* %n_word.addr, align 4
  store i8* %lc, i8** %lc.addr, align 8
  store %struct.lextree_node_t* null, %struct.lextree_node_t** %ln, align 8
  store %struct.gnode_s* null, %struct.gnode_s** %gn, align 8
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %mdef1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 1
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  store %struct.mdef_t* %1, %struct.mdef_t** %mdef, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict2 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 2
  %3 = load %struct.dict_t*, %struct.dict_t** %dict2, align 8
  store %struct.dict_t* %3, %struct.dict_t** %dict, align 8
  %4 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %tmat3 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %4, i32 0, i32 11
  %5 = load %struct.tmat_t*, %struct.tmat_t** %tmat3, align 8
  store %struct.tmat_t* %5, %struct.tmat_t** %tmat, align 8
  %6 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict2pid = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %6, i32 0, i32 3
  %7 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  store %struct.dict2pid_t* %7, %struct.dict2pid_t** %d2p, align 8
  %8 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %8, i32 0, i32 0
  %9 = load i32, i32* %n_ciphone, align 4
  store i32 %9, i32* %n_ci, align 4
  %10 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_sseq4 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %10, i32 0, i32 10
  %11 = load i32, i32* %n_sseq4, align 4
  store i32 %11, i32* %n_sseq, align 4
  %12 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %12, i32 0, i32 2
  %13 = load i32, i32* %n_emit_state, align 4
  store i32 %13, i32* %n_st, align 4
  %call = call i8* @__ckd_calloc__(i64 1, i64 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 115)
  %14 = bitcast i8* %call to %struct.lextree_t*
  store %struct.lextree_t* %14, %struct.lextree_t** %lextree, align 8
  %15 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %15, i32 0, i32 1
  store %struct.gnode_s* null, %struct.gnode_s** %root, align 8
  %16 = load i32, i32* %n_sseq, align 4
  %conv = sext i32 %16 to i64
  %call5 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 119)
  %17 = bitcast i8* %call5 to %struct.lextree_node_t**
  store %struct.lextree_node_t** %17, %struct.lextree_node_t*** %ssid2ln, align 8
  %18 = load i32, i32* %n_sseq, align 4
  %conv6 = sext i32 %18 to i64
  %call7 = call i8* @__ckd_calloc__(i64 %conv6, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 122)
  %19 = bitcast i8* %call7 to i32**
  store i32** %19, i32*** %ssid_lc, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %n_sseq, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %n_ci, align 4
  %add = add nsw i32 %22, 31
  %shr = ashr i32 %add, 5
  %conv9 = sext i32 %shr to i64
  %call10 = call i8* @__ckd_calloc__(i64 %conv9, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 124)
  %23 = bitcast i8* %call10 to i32*
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32**, i32*** %ssid_lc, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %25, i64 %idxprom
  store i32* %23, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n_node, align 4
  store i32 0, i32* %n_lc, align 4
  store %struct.lextree_lcroot_t* null, %struct.lextree_lcroot_t** %lcroot, align 8
  %27 = load i8*, i8** %lc.addr, align 8
  %tobool = icmp ne i8* %27, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %28 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_lc11 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %28, i32 0, i32 3
  store i32 0, i32* %n_lc11, align 4
  %29 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %lcroot12 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %29, i32 0, i32 2
  store %struct.lextree_lcroot_t* null, %struct.lextree_lcroot_t** %lcroot12, align 8
  %call13 = call i8* @__ckd_calloc__(i64 1, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 135)
  %30 = bitcast i8* %call13 to %struct.lextree_node_t**
  store %struct.lextree_node_t** %30, %struct.lextree_node_t*** %parent, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 0, i32* %n_lc, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.21, %if.else
  %31 = load i32, i32* %n_lc, align 4
  %idxprom15 = sext i32 %31 to i64
  %32 = load i8*, i8** %lc.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %32, i64 %idxprom15
  %33 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %33 to i32
  %cmp18 = icmp sge i32 %conv17, 0
  br i1 %cmp18, label %for.body.20, label %for.end.23

for.body.20:                                      ; preds = %for.cond.14
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.20
  %34 = load i32, i32* %n_lc, align 4
  %inc22 = add nsw i32 %34, 1
  store i32 %inc22, i32* %n_lc, align 4
  br label %for.cond.14

for.end.23:                                       ; preds = %for.cond.14
  %35 = load i32, i32* %n_lc, align 4
  %36 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_lc24 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %36, i32 0, i32 3
  store i32 %35, i32* %n_lc24, align 4
  %37 = load i32, i32* %n_lc, align 4
  %conv25 = sext i32 %37 to i64
  %call26 = call i8* @__ckd_calloc__(i64 %conv25, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 141)
  %38 = bitcast i8* %call26 to %struct.lextree_lcroot_t*
  store %struct.lextree_lcroot_t* %38, %struct.lextree_lcroot_t** %lcroot, align 8
  %39 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %40 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %lcroot27 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %40, i32 0, i32 2
  store %struct.lextree_lcroot_t* %39, %struct.lextree_lcroot_t** %lcroot27, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.40, %for.end.23
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %n_lc, align 4
  %cmp29 = icmp slt i32 %41, %42
  br i1 %cmp29, label %for.body.31, label %for.end.42

for.body.31:                                      ; preds = %for.cond.28
  %43 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load i8*, i8** %lc.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %44, i64 %idxprom32
  %45 = load i8, i8* %arrayidx33, align 1
  %46 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %46 to i64
  %47 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx35 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %47, i64 %idxprom34
  %lc36 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx35, i32 0, i32 0
  store i8 %45, i8* %lc36, align 1
  %48 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %48 to i64
  %49 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx38 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %49, i64 %idxprom37
  %root39 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx38, i32 0, i32 1
  store %struct.gnode_s* null, %struct.gnode_s** %root39, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.31
  %50 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %50, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.28

for.end.42:                                       ; preds = %for.cond.28
  %51 = load i32, i32* %n_lc, align 4
  %conv43 = sext i32 %51 to i64
  %call44 = call i8* @__ckd_calloc__(i64 %conv43, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 149)
  %52 = bitcast i8* %call44 to %struct.lextree_node_t**
  store %struct.lextree_node_t** %52, %struct.lextree_node_t*** %parent, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.42, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.481, %if.end
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %n_word.addr, align 4
  %cmp46 = icmp slt i32 %53, %54
  br i1 %cmp46, label %for.body.48, label %for.end.483

for.body.48:                                      ; preds = %for.cond.45
  %55 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %55 to i64
  %56 = load %struct.wordprob_t*, %struct.wordprob_t** %wordprob.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %56, i64 %idxprom49
  %wid51 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx50, i32 0, i32 0
  %57 = load i32, i32* %wid51, align 4
  store i32 %57, i32* %wid, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load %struct.wordprob_t*, %struct.wordprob_t** %wordprob.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %59, i64 %idxprom52
  %prob54 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx53, i32 0, i32 1
  %60 = load i32, i32* %prob54, align 4
  store i32 %60, i32* %prob, align 4
  %61 = load i32, i32* %wid, align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %62, i32 0, i32 4
  %63 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx56 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %63, i64 %idxprom55
  %pronlen57 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx56, i32 0, i32 2
  %64 = load i32, i32* %pronlen57, align 4
  store i32 %64, i32* %pronlen, align 4
  %65 = load i32, i32* %pronlen, align 4
  %cmp58 = icmp eq i32 %65, 1
  br i1 %cmp58, label %if.then.60, label %if.else.154

if.then.60:                                       ; preds = %for.body.48
  %66 = load i32, i32* %wid, align 4
  %idxprom61 = sext i32 %66 to i64
  %67 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word62 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %67, i32 0, i32 4
  %68 = load %struct.dictword_t*, %struct.dictword_t** %word62, align 8
  %arrayidx63 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %68, i64 %idxprom61
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx63, i32 0, i32 1
  %69 = load i8*, i8** %ciphone, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %69, i64 0
  %70 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %70 to i32
  store i32 %conv65, i32* %ci, align 4
  %71 = load i8*, i8** %lc.addr, align 8
  %tobool66 = icmp ne i8* %71, null
  br i1 %tobool66, label %if.else.88, label %if.then.67

if.then.67:                                       ; preds = %if.then.60
  %72 = load i32, i32* %wid, align 4
  %73 = load i32, i32* %prob, align 4
  %74 = load i32, i32* %wid, align 4
  %idxprom68 = sext i32 %74 to i64
  %75 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %internal = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %75, i32 0, i32 0
  %76 = load i32**, i32*** %internal, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %76, i64 %idxprom68
  %77 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %77, i64 0
  %78 = load i32, i32* %arrayidx70, align 4
  %79 = load i32, i32* %n_st, align 4
  %80 = load i32, i32* %wid, align 4
  %idxprom71 = sext i32 %80 to i64
  %81 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word72 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %81, i32 0, i32 4
  %82 = load %struct.dictword_t*, %struct.dictword_t** %word72, align 8
  %arrayidx73 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %82, i64 %idxprom71
  %ciphone74 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx73, i32 0, i32 1
  %83 = load i8*, i8** %ciphone74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %84 to i32
  %call77 = call %struct.lextree_node_t* @lextree_node_alloc(i32 %72, i32 %73, i32 1, i32 %78, i32 %79, i32 %conv76)
  store %struct.lextree_node_t* %call77, %struct.lextree_node_t** %ln, align 8
  %85 = load i32, i32* %ci, align 4
  %idxprom78 = sext i32 %85 to i64
  %86 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %86, i32 0, i32 8
  %87 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx79 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %87, i64 %idxprom78
  %tmat80 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx79, i32 0, i32 1
  %88 = load i32, i32* %tmat80, align 4
  %idxprom81 = sext i32 %88 to i64
  %89 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %tp = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %89, i32 0, i32 0
  %90 = load i32***, i32**** %tp, align 8
  %arrayidx82 = getelementptr inbounds i32**, i32*** %90, i64 %idxprom81
  %91 = load i32**, i32*** %arrayidx82, align 8
  %92 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %92, i32 0, i32 0
  %tp83 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm, i32 0, i32 3
  store i32** %91, i32*** %tp83, align 8
  %93 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root84 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %93, i32 0, i32 1
  %94 = load %struct.gnode_s*, %struct.gnode_s** %root84, align 8
  %95 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %96 = bitcast %struct.lextree_node_t* %95 to i8*
  %call85 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %94, i8* %96)
  %97 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root86 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %97, i32 0, i32 1
  store %struct.gnode_s* %call85, %struct.gnode_s** %root86, align 8
  %98 = load i32, i32* %n_node, align 4
  %inc87 = add nsw i32 %98, 1
  store i32 %inc87, i32* %n_node, align 4
  br label %if.end.153

if.else.88:                                       ; preds = %if.then.60
  store i32 0, i32* %np, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.150, %if.else.88
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* %n_lc, align 4
  %cmp90 = icmp slt i32 %99, %100
  br i1 %cmp90, label %for.body.92, label %for.end.152

for.body.92:                                      ; preds = %for.cond.89
  %101 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %101 to i64
  %102 = load i8*, i8** %lc.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %102, i64 %idxprom93
  %103 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %103 to i32
  %idxprom96 = sext i32 %conv95 to i64
  %104 = load i32, i32* %ci, align 4
  %idxprom97 = sext i32 %104 to i64
  %105 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %single_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %105, i32 0, i32 2
  %106 = load i32**, i32*** %single_lc, align 8
  %arrayidx98 = getelementptr inbounds i32*, i32** %106, i64 %idxprom97
  %107 = load i32*, i32** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %107, i64 %idxprom96
  %108 = load i32, i32* %arrayidx99, align 4
  store i32 %108, i32* %ssid, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.109, %for.body.92
  %109 = load i32, i32* %k, align 4
  %110 = load i32, i32* %np, align 4
  %cmp101 = icmp slt i32 %109, %110
  br i1 %cmp101, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.100
  %111 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %111 to i64
  %112 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx104 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %112, i64 %idxprom103
  %113 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx104, align 8
  %ssid105 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %113, i32 0, i32 4
  %114 = load i32, i32* %ssid105, align 4
  %115 = load i32, i32* %ssid, align 4
  %cmp106 = icmp ne i32 %114, %115
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.100
  %116 = phi i1 [ false, %for.cond.100 ], [ %cmp106, %land.rhs ]
  br i1 %116, label %for.body.108, label %for.end.111

for.body.108:                                     ; preds = %land.end
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.108
  %117 = load i32, i32* %k, align 4
  %inc110 = add nsw i32 %117, 1
  store i32 %inc110, i32* %k, align 4
  br label %for.cond.100

for.end.111:                                      ; preds = %land.end
  %118 = load i32, i32* %k, align 4
  %119 = load i32, i32* %np, align 4
  %cmp112 = icmp sge i32 %118, %119
  br i1 %cmp112, label %if.then.114, label %if.else.139

if.then.114:                                      ; preds = %for.end.111
  %120 = load i32, i32* %wid, align 4
  %121 = load i32, i32* %prob, align 4
  %122 = load i32, i32* %ssid, align 4
  %123 = load i32, i32* %n_st, align 4
  %124 = load i32, i32* %ci, align 4
  %call115 = call %struct.lextree_node_t* @lextree_node_alloc(i32 %120, i32 %121, i32 1, i32 %122, i32 %123, i32 %124)
  store %struct.lextree_node_t* %call115, %struct.lextree_node_t** %ln, align 8
  %125 = load i32, i32* %ci, align 4
  %idxprom116 = sext i32 %125 to i64
  %126 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %phone117 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %126, i32 0, i32 8
  %127 = load %struct.phone_t*, %struct.phone_t** %phone117, align 8
  %arrayidx118 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %127, i64 %idxprom116
  %tmat119 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx118, i32 0, i32 1
  %128 = load i32, i32* %tmat119, align 4
  %idxprom120 = sext i32 %128 to i64
  %129 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %tp121 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %129, i32 0, i32 0
  %130 = load i32***, i32**** %tp121, align 8
  %arrayidx122 = getelementptr inbounds i32**, i32*** %130, i64 %idxprom120
  %131 = load i32**, i32*** %arrayidx122, align 8
  %132 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm123 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %132, i32 0, i32 0
  %tp124 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm123, i32 0, i32 3
  store i32** %131, i32*** %tp124, align 8
  %133 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root125 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %133, i32 0, i32 1
  %134 = load %struct.gnode_s*, %struct.gnode_s** %root125, align 8
  %135 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %136 = bitcast %struct.lextree_node_t* %135 to i8*
  %call126 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %134, i8* %136)
  %137 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root127 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %137, i32 0, i32 1
  store %struct.gnode_s* %call126, %struct.gnode_s** %root127, align 8
  %138 = load i32, i32* %n_node, align 4
  %inc128 = add nsw i32 %138, 1
  store i32 %inc128, i32* %n_node, align 4
  %139 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %139 to i64
  %140 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx130 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %140, i64 %idxprom129
  %root131 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx130, i32 0, i32 1
  %141 = load %struct.gnode_s*, %struct.gnode_s** %root131, align 8
  %142 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %143 = bitcast %struct.lextree_node_t* %142 to i8*
  %call132 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %141, i8* %143)
  %144 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %144 to i64
  %145 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx134 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %145, i64 %idxprom133
  %root135 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx134, i32 0, i32 1
  store %struct.gnode_s* %call132, %struct.gnode_s** %root135, align 8
  %146 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %147 = load i32, i32* %np, align 4
  %inc136 = add nsw i32 %147, 1
  store i32 %inc136, i32* %np, align 4
  %idxprom137 = sext i32 %147 to i64
  %148 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx138 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %148, i64 %idxprom137
  store %struct.lextree_node_t* %146, %struct.lextree_node_t** %arrayidx138, align 8
  br label %if.end.149

if.else.139:                                      ; preds = %for.end.111
  %149 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %149 to i64
  %150 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx141 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %150, i64 %idxprom140
  %root142 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx141, i32 0, i32 1
  %151 = load %struct.gnode_s*, %struct.gnode_s** %root142, align 8
  %152 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %152 to i64
  %153 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx144 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %153, i64 %idxprom143
  %154 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx144, align 8
  %155 = bitcast %struct.lextree_node_t* %154 to i8*
  %call145 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %151, i8* %155)
  %156 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %156 to i64
  %157 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx147 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %157, i64 %idxprom146
  %root148 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx147, i32 0, i32 1
  store %struct.gnode_s* %call145, %struct.gnode_s** %root148, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.139, %if.then.114
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %158 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %158, 1
  store i32 %inc151, i32* %j, align 4
  br label %for.cond.89

for.end.152:                                      ; preds = %for.cond.89
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.152, %if.then.67
  br label %if.end.480

if.else.154:                                      ; preds = %for.body.48
  %159 = load i8*, i8** %lc.addr, align 8
  %tobool155 = icmp ne i8* %159, null
  br i1 %tobool155, label %if.else.209, label %if.then.156

if.then.156:                                      ; preds = %if.else.154
  %160 = load i32, i32* %wid, align 4
  %idxprom157 = sext i32 %160 to i64
  %161 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %internal158 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %161, i32 0, i32 0
  %162 = load i32**, i32*** %internal158, align 8
  %arrayidx159 = getelementptr inbounds i32*, i32** %162, i64 %idxprom157
  %163 = load i32*, i32** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %163, i64 0
  %164 = load i32, i32* %arrayidx160, align 4
  store i32 %164, i32* %ssid, align 4
  %165 = load i32, i32* %wid, align 4
  %idxprom161 = sext i32 %165 to i64
  %166 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word162 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %166, i32 0, i32 4
  %167 = load %struct.dictword_t*, %struct.dictword_t** %word162, align 8
  %arrayidx163 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %167, i64 %idxprom161
  %ciphone164 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx163, i32 0, i32 1
  %168 = load i8*, i8** %ciphone164, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %169 to i32
  store i32 %conv166, i32* %ci, align 4
  %170 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root167 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %170, i32 0, i32 1
  %171 = load %struct.gnode_s*, %struct.gnode_s** %root167, align 8
  store %struct.gnode_s* %171, %struct.gnode_s** %gn, align 8
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.182, %if.then.156
  %172 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool169 = icmp ne %struct.gnode_s* %172, null
  br i1 %tobool169, label %for.body.170, label %for.end.183

for.body.170:                                     ; preds = %for.cond.168
  %173 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %173, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %174 = load i8*, i8** %ptr, align 8
  %175 = bitcast i8* %174 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %175, %struct.lextree_node_t** %ln, align 8
  %176 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid171 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %176, i32 0, i32 4
  %177 = load i32, i32* %ssid171, align 4
  %178 = load i32, i32* %ssid, align 4
  %cmp172 = icmp eq i32 %177, %178
  br i1 %cmp172, label %land.lhs.true, label %if.end.181

land.lhs.true:                                    ; preds = %for.body.170
  %179 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %179, i32 0, i32 7
  %180 = load i8, i8* %composite, align 1
  %conv174 = sext i8 %180 to i32
  %tobool175 = icmp ne i32 %conv174, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.181

land.lhs.true.176:                                ; preds = %land.lhs.true
  %181 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid177 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %181, i32 0, i32 2
  %182 = load i32, i32* %wid177, align 4
  %cmp178 = icmp slt i32 %182, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %land.lhs.true.176
  br label %for.end.183

if.end.181:                                       ; preds = %land.lhs.true.176, %land.lhs.true, %for.body.170
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %183 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %183, i32 0, i32 1
  %184 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %184, %struct.gnode_s** %gn, align 8
  br label %for.cond.168

for.end.183:                                      ; preds = %if.then.180, %for.cond.168
  %185 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool184 = icmp ne %struct.gnode_s* %185, null
  br i1 %tobool184, label %if.else.200, label %if.then.185

if.then.185:                                      ; preds = %for.end.183
  %186 = load i32, i32* %prob, align 4
  %187 = load i32, i32* %ssid, align 4
  %188 = load i32, i32* %n_st, align 4
  %189 = load i32, i32* %ci, align 4
  %call186 = call %struct.lextree_node_t* @lextree_node_alloc(i32 -1, i32 %186, i32 1, i32 %187, i32 %188, i32 %189)
  store %struct.lextree_node_t* %call186, %struct.lextree_node_t** %ln, align 8
  %190 = load i32, i32* %ci, align 4
  %idxprom187 = sext i32 %190 to i64
  %191 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %phone188 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %191, i32 0, i32 8
  %192 = load %struct.phone_t*, %struct.phone_t** %phone188, align 8
  %arrayidx189 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %192, i64 %idxprom187
  %tmat190 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx189, i32 0, i32 1
  %193 = load i32, i32* %tmat190, align 4
  %idxprom191 = sext i32 %193 to i64
  %194 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %tp192 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %194, i32 0, i32 0
  %195 = load i32***, i32**** %tp192, align 8
  %arrayidx193 = getelementptr inbounds i32**, i32*** %195, i64 %idxprom191
  %196 = load i32**, i32*** %arrayidx193, align 8
  %197 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm194 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %197, i32 0, i32 0
  %tp195 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm194, i32 0, i32 3
  store i32** %196, i32*** %tp195, align 8
  %198 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root196 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %198, i32 0, i32 1
  %199 = load %struct.gnode_s*, %struct.gnode_s** %root196, align 8
  %200 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %201 = bitcast %struct.lextree_node_t* %200 to i8*
  %call197 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %199, i8* %201)
  %202 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root198 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %202, i32 0, i32 1
  store %struct.gnode_s* %call197, %struct.gnode_s** %root198, align 8
  %203 = load i32, i32* %n_node, align 4
  %inc199 = add nsw i32 %203, 1
  store i32 %inc199, i32* %n_node, align 4
  br label %if.end.207

if.else.200:                                      ; preds = %for.end.183
  %204 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob201 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %204, i32 0, i32 3
  %205 = load i32, i32* %prob201, align 4
  %206 = load i32, i32* %prob, align 4
  %cmp202 = icmp slt i32 %205, %206
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %if.else.200
  %207 = load i32, i32* %prob, align 4
  %208 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob205 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %208, i32 0, i32 3
  store i32 %207, i32* %prob205, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.204, %if.else.200
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.185
  %209 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %210 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx208 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %210, i64 0
  store %struct.lextree_node_t* %209, %struct.lextree_node_t** %arrayidx208, align 8
  store i32 1, i32* %np, align 4
  br label %if.end.323

if.else.209:                                      ; preds = %if.else.154
  %211 = load i32, i32* %wid, align 4
  %idxprom210 = sext i32 %211 to i64
  %212 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word211 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %212, i32 0, i32 4
  %213 = load %struct.dictword_t*, %struct.dictword_t** %word211, align 8
  %arrayidx212 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %213, i64 %idxprom210
  %ciphone213 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx212, i32 0, i32 1
  %214 = load i8*, i8** %ciphone213, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %214, i64 0
  %215 = load i8, i8* %arrayidx214, align 1
  %conv215 = sext i8 %215 to i32
  store i32 %conv215, i32* %ci, align 4
  %216 = load i32, i32* %wid, align 4
  %idxprom216 = sext i32 %216 to i64
  %217 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word217 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %217, i32 0, i32 4
  %218 = load %struct.dictword_t*, %struct.dictword_t** %word217, align 8
  %arrayidx218 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %218, i64 %idxprom216
  %ciphone219 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx218, i32 0, i32 1
  %219 = load i8*, i8** %ciphone219, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %219, i64 1
  %220 = load i8, i8* %arrayidx220, align 1
  %conv221 = sext i8 %220 to i32
  store i32 %conv221, i32* %rc, align 4
  %221 = load i32, i32* %rc, align 4
  %idxprom222 = sext i32 %221 to i64
  %222 = load i32, i32* %ci, align 4
  %idxprom223 = sext i32 %222 to i64
  %223 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %ldiph_lc224 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %223, i32 0, i32 1
  %224 = load i32***, i32**** %ldiph_lc224, align 8
  %arrayidx225 = getelementptr inbounds i32**, i32*** %224, i64 %idxprom223
  %225 = load i32**, i32*** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32*, i32** %225, i64 %idxprom222
  %226 = load i32*, i32** %arrayidx226, align 8
  store i32* %226, i32** %ldiph_lc, align 8
  store i32 0, i32* %np, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.320, %if.else.209
  %227 = load i32, i32* %j, align 4
  %228 = load i32, i32* %n_lc, align 4
  %cmp228 = icmp slt i32 %227, %228
  br i1 %cmp228, label %for.body.230, label %for.end.322

for.body.230:                                     ; preds = %for.cond.227
  %229 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %229 to i64
  %230 = load i8*, i8** %lc.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %230, i64 %idxprom231
  %231 = load i8, i8* %arrayidx232, align 1
  %conv233 = sext i8 %231 to i32
  %idxprom234 = sext i32 %conv233 to i64
  %232 = load i32*, i32** %ldiph_lc, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %232, i64 %idxprom234
  %233 = load i32, i32* %arrayidx235, align 4
  store i32 %233, i32* %ssid, align 4
  %234 = load i32, i32* %ssid, align 4
  %idxprom236 = sext i32 %234 to i64
  %235 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %ssid2ln, align 8
  %arrayidx237 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %235, i64 %idxprom236
  %236 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx237, align 8
  store %struct.lextree_node_t* %236, %struct.lextree_node_t** %ln, align 8
  %237 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %tobool238 = icmp ne %struct.lextree_node_t* %237, null
  br i1 %tobool238, label %if.else.256, label %if.then.239

if.then.239:                                      ; preds = %for.body.230
  %238 = load i32, i32* %prob, align 4
  %239 = load i32, i32* %ssid, align 4
  %240 = load i32, i32* %n_st, align 4
  %241 = load i32, i32* %ci, align 4
  %call240 = call %struct.lextree_node_t* @lextree_node_alloc(i32 -1, i32 %238, i32 0, i32 %239, i32 %240, i32 %241)
  store %struct.lextree_node_t* %call240, %struct.lextree_node_t** %ln, align 8
  %242 = load i32, i32* %ci, align 4
  %idxprom241 = sext i32 %242 to i64
  %243 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %phone242 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %243, i32 0, i32 8
  %244 = load %struct.phone_t*, %struct.phone_t** %phone242, align 8
  %arrayidx243 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %244, i64 %idxprom241
  %tmat244 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx243, i32 0, i32 1
  %245 = load i32, i32* %tmat244, align 4
  %idxprom245 = sext i32 %245 to i64
  %246 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %tp246 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %246, i32 0, i32 0
  %247 = load i32***, i32**** %tp246, align 8
  %arrayidx247 = getelementptr inbounds i32**, i32*** %247, i64 %idxprom245
  %248 = load i32**, i32*** %arrayidx247, align 8
  %249 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm248 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %249, i32 0, i32 0
  %tp249 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm248, i32 0, i32 3
  store i32** %248, i32*** %tp249, align 8
  %250 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root250 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %250, i32 0, i32 1
  %251 = load %struct.gnode_s*, %struct.gnode_s** %root250, align 8
  %252 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %253 = bitcast %struct.lextree_node_t* %252 to i8*
  %call251 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %251, i8* %253)
  %254 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %root252 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %254, i32 0, i32 1
  store %struct.gnode_s* %call251, %struct.gnode_s** %root252, align 8
  %255 = load i32, i32* %n_node, align 4
  %inc253 = add nsw i32 %255, 1
  store i32 %inc253, i32* %n_node, align 4
  %256 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %257 = load i32, i32* %ssid, align 4
  %idxprom254 = sext i32 %257 to i64
  %258 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %ssid2ln, align 8
  %arrayidx255 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %258, i64 %idxprom254
  store %struct.lextree_node_t* %256, %struct.lextree_node_t** %arrayidx255, align 8
  br label %if.end.263

if.else.256:                                      ; preds = %for.body.230
  %259 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob257 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %259, i32 0, i32 3
  %260 = load i32, i32* %prob257, align 4
  %261 = load i32, i32* %prob, align 4
  %cmp258 = icmp slt i32 %260, %261
  br i1 %cmp258, label %if.then.260, label %if.end.262

if.then.260:                                      ; preds = %if.else.256
  %262 = load i32, i32* %prob, align 4
  %263 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob261 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %263, i32 0, i32 3
  store i32 %262, i32* %prob261, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.260, %if.else.256
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.239
  %264 = load i32, i32* %j, align 4
  %idxprom264 = sext i32 %264 to i64
  %265 = load i8*, i8** %lc.addr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %265, i64 %idxprom264
  %266 = load i8, i8* %arrayidx265, align 1
  %conv266 = sext i8 %266 to i32
  %shr267 = ashr i32 %conv266, 5
  %idxprom268 = sext i32 %shr267 to i64
  %267 = load i32, i32* %ssid, align 4
  %idxprom269 = sext i32 %267 to i64
  %268 = load i32**, i32*** %ssid_lc, align 8
  %arrayidx270 = getelementptr inbounds i32*, i32** %268, i64 %idxprom269
  %269 = load i32*, i32** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %269, i64 %idxprom268
  %270 = load i32, i32* %arrayidx271, align 4
  %271 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %271 to i64
  %272 = load i8*, i8** %lc.addr, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %272, i64 %idxprom272
  %273 = load i8, i8* %arrayidx273, align 1
  %conv274 = sext i8 %273 to i32
  %and = and i32 %conv274, 31
  %shl = shl i32 1, %and
  %and275 = and i32 %270, %shl
  %tobool276 = icmp ne i32 %and275, 0
  br i1 %tobool276, label %if.end.298, label %if.then.277

if.then.277:                                      ; preds = %if.end.263
  %274 = load i32, i32* %j, align 4
  %idxprom278 = sext i32 %274 to i64
  %275 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx279 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %275, i64 %idxprom278
  %root280 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx279, i32 0, i32 1
  %276 = load %struct.gnode_s*, %struct.gnode_s** %root280, align 8
  %277 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %278 = bitcast %struct.lextree_node_t* %277 to i8*
  %call281 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %276, i8* %278)
  %279 = load i32, i32* %j, align 4
  %idxprom282 = sext i32 %279 to i64
  %280 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx283 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %280, i64 %idxprom282
  %root284 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx283, i32 0, i32 1
  store %struct.gnode_s* %call281, %struct.gnode_s** %root284, align 8
  %281 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %281 to i64
  %282 = load i8*, i8** %lc.addr, align 8
  %arrayidx286 = getelementptr inbounds i8, i8* %282, i64 %idxprom285
  %283 = load i8, i8* %arrayidx286, align 1
  %conv287 = sext i8 %283 to i32
  %and288 = and i32 %conv287, 31
  %shl289 = shl i32 1, %and288
  %284 = load i32, i32* %j, align 4
  %idxprom290 = sext i32 %284 to i64
  %285 = load i8*, i8** %lc.addr, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %285, i64 %idxprom290
  %286 = load i8, i8* %arrayidx291, align 1
  %conv292 = sext i8 %286 to i32
  %shr293 = ashr i32 %conv292, 5
  %idxprom294 = sext i32 %shr293 to i64
  %287 = load i32, i32* %ssid, align 4
  %idxprom295 = sext i32 %287 to i64
  %288 = load i32**, i32*** %ssid_lc, align 8
  %arrayidx296 = getelementptr inbounds i32*, i32** %288, i64 %idxprom295
  %289 = load i32*, i32** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %289, i64 %idxprom294
  %290 = load i32, i32* %arrayidx297, align 4
  %or = or i32 %290, %shl289
  store i32 %or, i32* %arrayidx297, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.277, %if.end.263
  store i32 0, i32* %k, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.310, %if.end.298
  %291 = load i32, i32* %k, align 4
  %292 = load i32, i32* %np, align 4
  %cmp300 = icmp slt i32 %291, %292
  br i1 %cmp300, label %land.rhs.302, label %land.end.308

land.rhs.302:                                     ; preds = %for.cond.299
  %293 = load i32, i32* %k, align 4
  %idxprom303 = sext i32 %293 to i64
  %294 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx304 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %294, i64 %idxprom303
  %295 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx304, align 8
  %ssid305 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %295, i32 0, i32 4
  %296 = load i32, i32* %ssid305, align 4
  %297 = load i32, i32* %ssid, align 4
  %cmp306 = icmp ne i32 %296, %297
  br label %land.end.308

land.end.308:                                     ; preds = %land.rhs.302, %for.cond.299
  %298 = phi i1 [ false, %for.cond.299 ], [ %cmp306, %land.rhs.302 ]
  br i1 %298, label %for.body.309, label %for.end.312

for.body.309:                                     ; preds = %land.end.308
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.body.309
  %299 = load i32, i32* %k, align 4
  %inc311 = add nsw i32 %299, 1
  store i32 %inc311, i32* %k, align 4
  br label %for.cond.299

for.end.312:                                      ; preds = %land.end.308
  %300 = load i32, i32* %k, align 4
  %301 = load i32, i32* %np, align 4
  %cmp313 = icmp sge i32 %300, %301
  br i1 %cmp313, label %if.then.315, label %if.end.319

if.then.315:                                      ; preds = %for.end.312
  %302 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %303 = load i32, i32* %np, align 4
  %inc316 = add nsw i32 %303, 1
  store i32 %inc316, i32* %np, align 4
  %idxprom317 = sext i32 %303 to i64
  %304 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx318 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %304, i64 %idxprom317
  store %struct.lextree_node_t* %302, %struct.lextree_node_t** %arrayidx318, align 8
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.315, %for.end.312
  br label %for.inc.320

for.inc.320:                                      ; preds = %if.end.319
  %305 = load i32, i32* %j, align 4
  %inc321 = add nsw i32 %305, 1
  store i32 %inc321, i32* %j, align 4
  br label %for.cond.227

for.end.322:                                      ; preds = %for.cond.227
  br label %if.end.323

if.end.323:                                       ; preds = %for.end.322, %if.end.207
  store i32 1, i32* %p, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.440, %if.end.323
  %306 = load i32, i32* %p, align 4
  %307 = load i32, i32* %pronlen, align 4
  %sub = sub nsw i32 %307, 1
  %cmp325 = icmp slt i32 %306, %sub
  br i1 %cmp325, label %for.body.327, label %for.end.442

for.body.327:                                     ; preds = %for.cond.324
  %308 = load i32, i32* %p, align 4
  %idxprom328 = sext i32 %308 to i64
  %309 = load i32, i32* %wid, align 4
  %idxprom329 = sext i32 %309 to i64
  %310 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %internal330 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %310, i32 0, i32 0
  %311 = load i32**, i32*** %internal330, align 8
  %arrayidx331 = getelementptr inbounds i32*, i32** %311, i64 %idxprom329
  %312 = load i32*, i32** %arrayidx331, align 8
  %arrayidx332 = getelementptr inbounds i32, i32* %312, i64 %idxprom328
  %313 = load i32, i32* %arrayidx332, align 4
  store i32 %313, i32* %ssid, align 4
  %314 = load i32, i32* %p, align 4
  %idxprom333 = sext i32 %314 to i64
  %315 = load i32, i32* %wid, align 4
  %idxprom334 = sext i32 %315 to i64
  %316 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word335 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %316, i32 0, i32 4
  %317 = load %struct.dictword_t*, %struct.dictword_t** %word335, align 8
  %arrayidx336 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %317, i64 %idxprom334
  %ciphone337 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx336, i32 0, i32 1
  %318 = load i8*, i8** %ciphone337, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %318, i64 %idxprom333
  %319 = load i8, i8* %arrayidx338, align 1
  %conv339 = sext i8 %319 to i32
  store i32 %conv339, i32* %ci, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.365, %for.body.327
  %320 = load i32, i32* %j, align 4
  %321 = load i32, i32* %np, align 4
  %cmp341 = icmp slt i32 %320, %321
  br i1 %cmp341, label %for.body.343, label %for.end.367

for.body.343:                                     ; preds = %for.cond.340
  %322 = load i32, i32* %j, align 4
  %idxprom344 = sext i32 %322 to i64
  %323 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx345 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %323, i64 %idxprom344
  %324 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx345, align 8
  %children = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %324, i32 0, i32 1
  %325 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %325, %struct.gnode_s** %gn, align 8
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.359, %for.body.343
  %326 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool347 = icmp ne %struct.gnode_s* %326, null
  br i1 %tobool347, label %for.body.348, label %for.end.361

for.body.348:                                     ; preds = %for.cond.346
  %327 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data349 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %327, i32 0, i32 0
  %ptr350 = bitcast %union.anytype_s* %data349 to i8**
  %328 = load i8*, i8** %ptr350, align 8
  %329 = bitcast i8* %328 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %329, %struct.lextree_node_t** %ln, align 8
  %330 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid351 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %330, i32 0, i32 4
  %331 = load i32, i32* %ssid351, align 4
  %332 = load i32, i32* %ssid, align 4
  %cmp352 = icmp eq i32 %331, %332
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.358

land.lhs.true.354:                                ; preds = %for.body.348
  %333 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite355 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %333, i32 0, i32 7
  %334 = load i8, i8* %composite355, align 1
  %tobool356 = icmp ne i8 %334, 0
  br i1 %tobool356, label %if.end.358, label %if.then.357

if.then.357:                                      ; preds = %land.lhs.true.354
  br label %for.end.361

if.end.358:                                       ; preds = %land.lhs.true.354, %for.body.348
  br label %for.inc.359

for.inc.359:                                      ; preds = %if.end.358
  %335 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next360 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %335, i32 0, i32 1
  %336 = load %struct.gnode_s*, %struct.gnode_s** %next360, align 8
  store %struct.gnode_s* %336, %struct.gnode_s** %gn, align 8
  br label %for.cond.346

for.end.361:                                      ; preds = %if.then.357, %for.cond.346
  %337 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool362 = icmp ne %struct.gnode_s* %337, null
  br i1 %tobool362, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %for.end.361
  br label %for.end.367

if.end.364:                                       ; preds = %for.end.361
  br label %for.inc.365

for.inc.365:                                      ; preds = %if.end.364
  %338 = load i32, i32* %j, align 4
  %inc366 = add nsw i32 %338, 1
  store i32 %inc366, i32* %j, align 4
  br label %for.cond.340

for.end.367:                                      ; preds = %if.then.363, %for.cond.340
  %339 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool368 = icmp ne %struct.gnode_s* %339, null
  br i1 %tobool368, label %if.else.395, label %if.then.369

if.then.369:                                      ; preds = %for.end.367
  %340 = load i32, i32* %prob, align 4
  %341 = load i32, i32* %ssid, align 4
  %342 = load i32, i32* %n_st, align 4
  %343 = load i32, i32* %ci, align 4
  %call370 = call %struct.lextree_node_t* @lextree_node_alloc(i32 -1, i32 %340, i32 0, i32 %341, i32 %342, i32 %343)
  store %struct.lextree_node_t* %call370, %struct.lextree_node_t** %ln, align 8
  %344 = load i32, i32* %ci, align 4
  %idxprom371 = sext i32 %344 to i64
  %345 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %phone372 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %345, i32 0, i32 8
  %346 = load %struct.phone_t*, %struct.phone_t** %phone372, align 8
  %arrayidx373 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %346, i64 %idxprom371
  %tmat374 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx373, i32 0, i32 1
  %347 = load i32, i32* %tmat374, align 4
  %idxprom375 = sext i32 %347 to i64
  %348 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %tp376 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %348, i32 0, i32 0
  %349 = load i32***, i32**** %tp376, align 8
  %arrayidx377 = getelementptr inbounds i32**, i32*** %349, i64 %idxprom375
  %350 = load i32**, i32*** %arrayidx377, align 8
  %351 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm378 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %351, i32 0, i32 0
  %tp379 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm378, i32 0, i32 3
  store i32** %350, i32*** %tp379, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.391, %if.then.369
  %352 = load i32, i32* %j, align 4
  %353 = load i32, i32* %np, align 4
  %cmp381 = icmp slt i32 %352, %353
  br i1 %cmp381, label %for.body.383, label %for.end.393

for.body.383:                                     ; preds = %for.cond.380
  %354 = load i32, i32* %j, align 4
  %idxprom384 = sext i32 %354 to i64
  %355 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx385 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %355, i64 %idxprom384
  %356 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx385, align 8
  %children386 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %356, i32 0, i32 1
  %357 = load %struct.gnode_s*, %struct.gnode_s** %children386, align 8
  %358 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %359 = bitcast %struct.lextree_node_t* %358 to i8*
  %call387 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %357, i8* %359)
  %360 = load i32, i32* %j, align 4
  %idxprom388 = sext i32 %360 to i64
  %361 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx389 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %361, i64 %idxprom388
  %362 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx389, align 8
  %children390 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %362, i32 0, i32 1
  store %struct.gnode_s* %call387, %struct.gnode_s** %children390, align 8
  br label %for.inc.391

for.inc.391:                                      ; preds = %for.body.383
  %363 = load i32, i32* %j, align 4
  %inc392 = add nsw i32 %363, 1
  store i32 %inc392, i32* %j, align 4
  br label %for.cond.380

for.end.393:                                      ; preds = %for.cond.380
  %364 = load i32, i32* %n_node, align 4
  %inc394 = add nsw i32 %364, 1
  store i32 %inc394, i32* %n_node, align 4
  br label %if.end.438

if.else.395:                                      ; preds = %for.end.367
  %365 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob396 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %365, i32 0, i32 3
  %366 = load i32, i32* %prob396, align 4
  %367 = load i32, i32* %prob, align 4
  %cmp397 = icmp slt i32 %366, %367
  br i1 %cmp397, label %if.then.399, label %if.end.401

if.then.399:                                      ; preds = %if.else.395
  %368 = load i32, i32* %prob, align 4
  %369 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob400 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %369, i32 0, i32 3
  store i32 %368, i32* %prob400, align 4
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.399, %if.else.395
  %370 = load i32, i32* %j, align 4
  store i32 %370, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.413, %if.end.401
  %371 = load i32, i32* %j, align 4
  %372 = load i32, i32* %k, align 4
  %cmp403 = icmp slt i32 %371, %372
  br i1 %cmp403, label %for.body.405, label %for.end.415

for.body.405:                                     ; preds = %for.cond.402
  %373 = load i32, i32* %j, align 4
  %idxprom406 = sext i32 %373 to i64
  %374 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx407 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %374, i64 %idxprom406
  %375 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx407, align 8
  %children408 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %375, i32 0, i32 1
  %376 = load %struct.gnode_s*, %struct.gnode_s** %children408, align 8
  %377 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %378 = bitcast %struct.lextree_node_t* %377 to i8*
  %call409 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %376, i8* %378)
  %379 = load i32, i32* %j, align 4
  %idxprom410 = sext i32 %379 to i64
  %380 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx411 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %380, i64 %idxprom410
  %381 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx411, align 8
  %children412 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %381, i32 0, i32 1
  store %struct.gnode_s* %call409, %struct.gnode_s** %children412, align 8
  br label %for.inc.413

for.inc.413:                                      ; preds = %for.body.405
  %382 = load i32, i32* %j, align 4
  %inc414 = add nsw i32 %382, 1
  store i32 %inc414, i32* %j, align 4
  br label %for.cond.402

for.end.415:                                      ; preds = %for.cond.402
  %383 = load i32, i32* %k, align 4
  %add416 = add nsw i32 %383, 1
  store i32 %add416, i32* %j, align 4
  br label %for.cond.417

for.cond.417:                                     ; preds = %for.inc.435, %for.end.415
  %384 = load i32, i32* %j, align 4
  %385 = load i32, i32* %np, align 4
  %cmp418 = icmp slt i32 %384, %385
  br i1 %cmp418, label %for.body.420, label %for.end.437

for.body.420:                                     ; preds = %for.cond.417
  %386 = load i32, i32* %j, align 4
  %idxprom421 = sext i32 %386 to i64
  %387 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx422 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %387, i64 %idxprom421
  %388 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx422, align 8
  %children423 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %388, i32 0, i32 1
  %389 = load %struct.gnode_s*, %struct.gnode_s** %children423, align 8
  %390 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %391 = bitcast %struct.lextree_node_t* %390 to i8*
  %call424 = call i32 @glist_chkdup_ptr(%struct.gnode_s* %389, i8* %391)
  %tobool425 = icmp ne i32 %call424, 0
  br i1 %tobool425, label %if.end.434, label %if.then.426

if.then.426:                                      ; preds = %for.body.420
  %392 = load i32, i32* %j, align 4
  %idxprom427 = sext i32 %392 to i64
  %393 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx428 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %393, i64 %idxprom427
  %394 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx428, align 8
  %children429 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %394, i32 0, i32 1
  %395 = load %struct.gnode_s*, %struct.gnode_s** %children429, align 8
  %396 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %397 = bitcast %struct.lextree_node_t* %396 to i8*
  %call430 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %395, i8* %397)
  %398 = load i32, i32* %j, align 4
  %idxprom431 = sext i32 %398 to i64
  %399 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx432 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %399, i64 %idxprom431
  %400 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx432, align 8
  %children433 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %400, i32 0, i32 1
  store %struct.gnode_s* %call430, %struct.gnode_s** %children433, align 8
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.426, %for.body.420
  br label %for.inc.435

for.inc.435:                                      ; preds = %if.end.434
  %401 = load i32, i32* %j, align 4
  %inc436 = add nsw i32 %401, 1
  store i32 %inc436, i32* %j, align 4
  br label %for.cond.417

for.end.437:                                      ; preds = %for.cond.417
  br label %if.end.438

if.end.438:                                       ; preds = %for.end.437, %for.end.393
  %402 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %403 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx439 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %403, i64 0
  store %struct.lextree_node_t* %402, %struct.lextree_node_t** %arrayidx439, align 8
  store i32 1, i32* %np, align 4
  br label %for.inc.440

for.inc.440:                                      ; preds = %if.end.438
  %404 = load i32, i32* %p, align 4
  %inc441 = add nsw i32 %404, 1
  store i32 %inc441, i32* %p, align 4
  br label %for.cond.324

for.end.442:                                      ; preds = %for.cond.324
  %405 = load i32, i32* %p, align 4
  %idxprom443 = sext i32 %405 to i64
  %406 = load i32, i32* %wid, align 4
  %idxprom444 = sext i32 %406 to i64
  %407 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %internal445 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %407, i32 0, i32 0
  %408 = load i32**, i32*** %internal445, align 8
  %arrayidx446 = getelementptr inbounds i32*, i32** %408, i64 %idxprom444
  %409 = load i32*, i32** %arrayidx446, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %409, i64 %idxprom443
  %410 = load i32, i32* %arrayidx447, align 4
  store i32 %410, i32* %ssid, align 4
  %411 = load i32, i32* %p, align 4
  %idxprom448 = sext i32 %411 to i64
  %412 = load i32, i32* %wid, align 4
  %idxprom449 = sext i32 %412 to i64
  %413 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word450 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %413, i32 0, i32 4
  %414 = load %struct.dictword_t*, %struct.dictword_t** %word450, align 8
  %arrayidx451 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %414, i64 %idxprom449
  %ciphone452 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx451, i32 0, i32 1
  %415 = load i8*, i8** %ciphone452, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %415, i64 %idxprom448
  %416 = load i8, i8* %arrayidx453, align 1
  %conv454 = sext i8 %416 to i32
  store i32 %conv454, i32* %ci, align 4
  %417 = load i32, i32* %wid, align 4
  %418 = load i32, i32* %prob, align 4
  %419 = load i32, i32* %ssid, align 4
  %420 = load i32, i32* %n_st, align 4
  %421 = load i32, i32* %ci, align 4
  %call455 = call %struct.lextree_node_t* @lextree_node_alloc(i32 %417, i32 %418, i32 1, i32 %419, i32 %420, i32 %421)
  store %struct.lextree_node_t* %call455, %struct.lextree_node_t** %ln, align 8
  %422 = load i32, i32* %ci, align 4
  %idxprom456 = sext i32 %422 to i64
  %423 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %phone457 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %423, i32 0, i32 8
  %424 = load %struct.phone_t*, %struct.phone_t** %phone457, align 8
  %arrayidx458 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %424, i64 %idxprom456
  %tmat459 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx458, i32 0, i32 1
  %425 = load i32, i32* %tmat459, align 4
  %idxprom460 = sext i32 %425 to i64
  %426 = load %struct.tmat_t*, %struct.tmat_t** %tmat, align 8
  %tp461 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %426, i32 0, i32 0
  %427 = load i32***, i32**** %tp461, align 8
  %arrayidx462 = getelementptr inbounds i32**, i32*** %427, i64 %idxprom460
  %428 = load i32**, i32*** %arrayidx462, align 8
  %429 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm463 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %429, i32 0, i32 0
  %tp464 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm463, i32 0, i32 3
  store i32** %428, i32*** %tp464, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.465

for.cond.465:                                     ; preds = %for.inc.476, %for.end.442
  %430 = load i32, i32* %j, align 4
  %431 = load i32, i32* %np, align 4
  %cmp466 = icmp slt i32 %430, %431
  br i1 %cmp466, label %for.body.468, label %for.end.478

for.body.468:                                     ; preds = %for.cond.465
  %432 = load i32, i32* %j, align 4
  %idxprom469 = sext i32 %432 to i64
  %433 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx470 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %433, i64 %idxprom469
  %434 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx470, align 8
  %children471 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %434, i32 0, i32 1
  %435 = load %struct.gnode_s*, %struct.gnode_s** %children471, align 8
  %436 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %437 = bitcast %struct.lextree_node_t* %436 to i8*
  %call472 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %435, i8* %437)
  %438 = load i32, i32* %j, align 4
  %idxprom473 = sext i32 %438 to i64
  %439 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %arrayidx474 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %439, i64 %idxprom473
  %440 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx474, align 8
  %children475 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %440, i32 0, i32 1
  store %struct.gnode_s* %call472, %struct.gnode_s** %children475, align 8
  br label %for.inc.476

for.inc.476:                                      ; preds = %for.body.468
  %441 = load i32, i32* %j, align 4
  %inc477 = add nsw i32 %441, 1
  store i32 %inc477, i32* %j, align 4
  br label %for.cond.465

for.end.478:                                      ; preds = %for.cond.465
  %442 = load i32, i32* %n_node, align 4
  %inc479 = add nsw i32 %442, 1
  store i32 %inc479, i32* %n_node, align 4
  br label %if.end.480

if.end.480:                                       ; preds = %for.end.478, %if.end.153
  br label %for.inc.481

for.inc.481:                                      ; preds = %if.end.480
  %443 = load i32, i32* %i, align 4
  %inc482 = add nsw i32 %443, 1
  store i32 %inc482, i32* %i, align 4
  br label %for.cond.45

for.end.483:                                      ; preds = %for.cond.45
  %444 = load i32, i32* %n_node, align 4
  %445 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_node484 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %445, i32 0, i32 4
  store i32 %444, i32* %n_node484, align 4
  %446 = load i32, i32* %n_node, align 4
  %conv485 = sext i32 %446 to i64
  %call486 = call i8* @__ckd_calloc__(i64 %conv485, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 329)
  %447 = bitcast i8* %call486 to %struct.lextree_node_t**
  %448 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %448, i32 0, i32 5
  store %struct.lextree_node_t** %447, %struct.lextree_node_t*** %active, align 8
  %449 = load i32, i32* %n_node, align 4
  %conv487 = sext i32 %449 to i64
  %call488 = call i8* @__ckd_calloc__(i64 %conv487, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 330)
  %450 = bitcast i8* %call488 to %struct.lextree_node_t**
  %451 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %451, i32 0, i32 6
  store %struct.lextree_node_t** %450, %struct.lextree_node_t*** %next_active, align 8
  %452 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %452, i32 0, i32 7
  store i32 0, i32* %n_active, align 4
  %453 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %453, i32 0, i32 8
  store i32 0, i32* %n_next_active, align 4
  %454 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %ssid2ln, align 8
  %455 = bitcast %struct.lextree_node_t** %454 to i8*
  call void @ckd_free(i8* %455)
  store i32 0, i32* %i, align 4
  br label %for.cond.489

for.cond.489:                                     ; preds = %for.inc.495, %for.end.483
  %456 = load i32, i32* %i, align 4
  %457 = load i32, i32* %n_sseq, align 4
  %cmp490 = icmp slt i32 %456, %457
  br i1 %cmp490, label %for.body.492, label %for.end.497

for.body.492:                                     ; preds = %for.cond.489
  %458 = load i32, i32* %i, align 4
  %idxprom493 = sext i32 %458 to i64
  %459 = load i32**, i32*** %ssid_lc, align 8
  %arrayidx494 = getelementptr inbounds i32*, i32** %459, i64 %idxprom493
  %460 = load i32*, i32** %arrayidx494, align 8
  %461 = bitcast i32* %460 to i8*
  call void @ckd_free(i8* %461)
  br label %for.inc.495

for.inc.495:                                      ; preds = %for.body.492
  %462 = load i32, i32* %i, align 4
  %inc496 = add nsw i32 %462, 1
  store i32 %inc496, i32* %i, align 4
  br label %for.cond.489

for.end.497:                                      ; preds = %for.cond.489
  %463 = load i32**, i32*** %ssid_lc, align 8
  %464 = bitcast i32** %463 to i8*
  call void @ckd_free(i8* %464)
  %465 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %parent, align 8
  %466 = bitcast %struct.lextree_node_t** %465 to i8*
  call void @ckd_free(i8* %466)
  %467 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  ret %struct.lextree_t* %467
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.lextree_node_t* @lextree_node_alloc(i32 %wid, i32 %prob, i32 %comp, i32 %ssid, i32 %n_state, i32 %ci) #0 {
entry:
  %wid.addr = alloca i32, align 4
  %prob.addr = alloca i32, align 4
  %comp.addr = alloca i32, align 4
  %ssid.addr = alloca i32, align 4
  %n_state.addr = alloca i32, align 4
  %ci.addr = alloca i32, align 4
  %ln = alloca %struct.lextree_node_t*, align 8
  store i32 %wid, i32* %wid.addr, align 4
  store i32 %prob, i32* %prob.addr, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %ssid, i32* %ssid.addr, align 4
  store i32 %n_state, i32* %n_state.addr, align 4
  store i32 %ci, i32* %ci.addr, align 4
  %call = call i8* @__mymalloc__(i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 76)
  %0 = bitcast i8* %call to %struct.lextree_node_t*
  store %struct.lextree_node_t* %0, %struct.lextree_node_t** %ln, align 8
  %1 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %children = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %1, i32 0, i32 1
  store %struct.gnode_s* null, %struct.gnode_s** %children, align 8
  %2 = load i32, i32* %wid.addr, align 4
  %3 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid1 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %3, i32 0, i32 2
  store i32 %2, i32* %wid1, align 4
  %4 = load i32, i32* %prob.addr, align 4
  %5 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob2 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %5, i32 0, i32 3
  store i32 %4, i32* %prob2, align 4
  %6 = load i32, i32* %ssid.addr, align 4
  %7 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid3 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %7, i32 0, i32 4
  store i32 %6, i32* %ssid3, align 4
  %8 = load i32, i32* %ci.addr, align 4
  %conv = trunc i32 %8 to i8
  %9 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ci4 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %9, i32 0, i32 6
  store i8 %conv, i8* %ci4, align 1
  %10 = load i32, i32* %comp.addr, align 4
  %conv5 = trunc i32 %10 to i8
  %11 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %11, i32 0, i32 7
  store i8 %conv5, i8* %composite, align 1
  %12 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %12, i32 0, i32 8
  store i16 -1, i16* %frame, align 2
  %13 = load i32, i32* %n_state.addr, align 4
  %conv6 = sext i32 %13 to i64
  %call7 = call i8* @__ckd_calloc__(i64 %conv6, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 84)
  %14 = bitcast i8* %call7 to %struct.hmm_state_t*
  %15 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %15, i32 0, i32 0
  %state = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %hmm, i32 0, i32 0
  store %struct.hmm_state_t* %14, %struct.hmm_state_t** %state, align 8
  %16 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm8 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %16, i32 0, i32 0
  %17 = load i32, i32* %n_state.addr, align 4
  call void @hmm_clear(%struct.hmm_t* %hmm8, i32 %17)
  %18 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  ret %struct.lextree_node_t* %18
}

declare %struct.gnode_s* @glist_add_ptr(%struct.gnode_s*, i8*) #1

declare i32 @glist_chkdup_ptr(%struct.gnode_s*, i8*) #1

declare void @ckd_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @lextree_free(%struct.lextree_t* %lextree) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %gn2 = alloca %struct.gnode_s*, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %ln2 = alloca %struct.lextree_node_t*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  %0 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_lc = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %0, i32 0, i32 3
  %1 = load i32, i32* %n_lc, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_lc1 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %3, i32 0, i32 3
  %4 = load i32, i32* %n_lc1, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %lcroot = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %6, i32 0, i32 2
  %7 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %7, i64 %idxprom
  %root = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx, i32 0, i32 1
  %8 = load %struct.gnode_s*, %struct.gnode_s** %root, align 8
  call void @glist_free(%struct.gnode_s* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %lcroot3 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %10, i32 0, i32 2
  %11 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot3, align 8
  %12 = bitcast %struct.lextree_lcroot_t* %11 to i8*
  call void @ckd_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %root4 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %13, i32 0, i32 1
  %14 = load %struct.gnode_s*, %struct.gnode_s** %root4, align 8
  store %struct.gnode_s* %14, %struct.gnode_s** %gn, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.21, %if.end
  %15 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %15, null
  br i1 %tobool, label %for.body.6, label %for.end.23

for.body.6:                                       ; preds = %for.cond.5
  %16 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %16, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %17 = load i8*, i8** %ptr, align 8
  %18 = bitcast i8* %17 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %18, %struct.lextree_node_t** %ln, align 8
  %19 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %children = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %19, i32 0, i32 1
  %20 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %20, %struct.gnode_s** %gn2, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.body.6
  %21 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %tobool8 = icmp ne %struct.gnode_s* %21, null
  br i1 %tobool8, label %for.body.9, label %for.end.20

for.body.9:                                       ; preds = %for.cond.7
  %22 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %data10 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %22, i32 0, i32 0
  %ptr11 = bitcast %union.anytype_s* %data10 to i8**
  %23 = load i8*, i8** %ptr11, align 8
  %24 = bitcast i8* %23 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %24, %struct.lextree_node_t** %ln2, align 8
  %25 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %composite = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %25, i32 0, i32 7
  %26 = load i8, i8* %composite, align 1
  %conv = sext i8 %26 to i32
  %cmp12 = icmp sge i32 %conv, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body.9
  %27 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %composite15 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %27, i32 0, i32 7
  store i8 -1, i8* %composite15, align 1
  %28 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %ssid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %28, i32 0, i32 4
  store i32 1, i32* %ssid, align 4
  br label %if.end.18

if.else:                                          ; preds = %for.body.9
  %29 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %ssid16 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %29, i32 0, i32 4
  %30 = load i32, i32* %ssid16, align 4
  %inc17 = add nsw i32 %30, 1
  store i32 %inc17, i32* %ssid16, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.14
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %31 = load %struct.gnode_s*, %struct.gnode_s** %gn2, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %31, i32 0, i32 1
  %32 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %32, %struct.gnode_s** %gn2, align 8
  br label %for.cond.7

for.end.20:                                       ; preds = %for.cond.7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.20
  %33 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next22 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %33, i32 0, i32 1
  %34 = load %struct.gnode_s*, %struct.gnode_s** %next22, align 8
  store %struct.gnode_s* %34, %struct.gnode_s** %gn, align 8
  br label %for.cond.5

for.end.23:                                       ; preds = %for.cond.5
  store i32 0, i32* %k, align 4
  %35 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %root24 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %35, i32 0, i32 1
  %36 = load %struct.gnode_s*, %struct.gnode_s** %root24, align 8
  store %struct.gnode_s* %36, %struct.gnode_s** %gn, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.30, %for.end.23
  %37 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool26 = icmp ne %struct.gnode_s* %37, null
  br i1 %tobool26, label %for.body.27, label %for.end.32

for.body.27:                                      ; preds = %for.cond.25
  %38 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data28 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %38, i32 0, i32 0
  %ptr29 = bitcast %union.anytype_s* %data28 to i8**
  %39 = load i8*, i8** %ptr29, align 8
  %40 = bitcast i8* %39 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %40, %struct.lextree_node_t** %ln, align 8
  %41 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %call = call i32 @lextree_subtree_free(%struct.lextree_node_t* %41, i32 0)
  %42 = load i32, i32* %k, align 4
  %add = add nsw i32 %42, %call
  store i32 %add, i32* %k, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.27
  %43 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next31 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %43, i32 0, i32 1
  %44 = load %struct.gnode_s*, %struct.gnode_s** %next31, align 8
  store %struct.gnode_s* %44, %struct.gnode_s** %gn, align 8
  br label %for.cond.25

for.end.32:                                       ; preds = %for.cond.25
  %45 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %root33 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %45, i32 0, i32 1
  %46 = load %struct.gnode_s*, %struct.gnode_s** %root33, align 8
  call void @glist_free(%struct.gnode_s* %46)
  %47 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %47, i32 0, i32 5
  %48 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  %49 = bitcast %struct.lextree_node_t** %48 to i8*
  call void @ckd_free(i8* %49)
  %50 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %50, i32 0, i32 6
  %51 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %next_active, align 8
  %52 = bitcast %struct.lextree_node_t** %51 to i8*
  call void @ckd_free(i8* %52)
  %53 = load i32, i32* %k, align 4
  %54 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_node = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %54, i32 0, i32 4
  %55 = load i32, i32* %n_node, align 4
  %cmp34 = icmp ne i32 %53, %55
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.end.32
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %56 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_node37 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %56, i32 0, i32 4
  %57 = load i32, i32* %n_node37, align 4
  %58 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i32 %57, i32 %58)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.end.32
  %59 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %60 = bitcast %struct.lextree_t* %59 to i8*
  call void @ckd_free(i8* %60)
  ret void
}

declare void @glist_free(%struct.gnode_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lextree_subtree_free(%struct.lextree_node_t* %ln, i32 %level) #0 {
entry:
  %ln.addr = alloca %struct.lextree_node_t*, align 8
  %level.addr = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  %ln2 = alloca %struct.lextree_node_t*, align 8
  %k = alloca i32, align 4
  store %struct.lextree_node_t* %ln, %struct.lextree_node_t** %ln.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 0, i32* %k, align 4
  %0 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %children = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %0, i32 0, i32 1
  %1 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %1, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %4 = load i8*, i8** %ptr, align 8
  %5 = bitcast i8* %4 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %5, %struct.lextree_node_t** %ln2, align 8
  %6 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %7 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %7, 1
  %call = call i32 @lextree_subtree_free(%struct.lextree_node_t* %6, i32 %add)
  %8 = load i32, i32* %k, align 4
  %add1 = add nsw i32 %8, %call
  store i32 %add1, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %9, i32 0, i32 1
  %10 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %10, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %children2 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %11, i32 0, i32 1
  %12 = load %struct.gnode_s*, %struct.gnode_s** %children2, align 8
  call void @glist_free(%struct.gnode_s* %12)
  %13 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %children3 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %13, i32 0, i32 1
  store %struct.gnode_s* null, %struct.gnode_s** %children3, align 8
  %14 = load i32, i32* %level.addr, align 4
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %15 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %ssid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %15, i32 0, i32 4
  %16 = load i32, i32* %ssid, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %ssid, align 4
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %17 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %18 = bitcast %struct.lextree_node_t* %17 to i8*
  call void @__myfree__(i8* %18, i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 362)
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %20 = load i32, i32* %k, align 4
  ret i32 %20
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @lextree_ci_active(%struct.lextree_t* %lextree, i32* %ci_active) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %ci_active.addr = alloca i32*, align 8
  %list = alloca %struct.lextree_node_t**, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %i = alloca i32, align 4
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store i32* %ci_active, i32** %ci_active.addr, align 8
  %0 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %0, i32 0, i32 5
  %1 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  store %struct.lextree_node_t** %1, %struct.lextree_node_t*** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %3, i32 0, i32 7
  %4 = load i32, i32* %n_active, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %6, i64 %idxprom
  %7 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx, align 8
  store %struct.lextree_node_t* %7, %struct.lextree_node_t** %ln, align 8
  %8 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ci = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %8, i32 0, i32 6
  %9 = load i8, i8* %ci, align 1
  %conv = sext i8 %9 to i32
  %and = and i32 %conv, 31
  %shl = shl i32 1, %and
  %10 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ci1 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %10, i32 0, i32 6
  %11 = load i8, i8* %ci1, align 1
  %conv2 = sext i8 %11 to i32
  %shr = ashr i32 %conv2, 5
  %idxprom3 = sext i32 %shr to i64
  %12 = load i32*, i32** %ci_active.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  %13 = load i32, i32* %arrayidx4, align 4
  %or = or i32 %13, %shl
  store i32 %or, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @lextree_ssid_active(%struct.lextree_t* %lextree, i32* %ssid, i32* %comssid) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %ssid.addr = alloca i32*, align 8
  %comssid.addr = alloca i32*, align 8
  %list = alloca %struct.lextree_node_t**, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %i = alloca i32, align 4
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store i32* %ssid, i32** %ssid.addr, align 8
  store i32* %comssid, i32** %comssid.addr, align 8
  %0 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %0, i32 0, i32 5
  %1 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  store %struct.lextree_node_t** %1, %struct.lextree_node_t*** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %3, i32 0, i32 7
  %4 = load i32, i32* %n_active, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %6, i64 %idxprom
  %7 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx, align 8
  store %struct.lextree_node_t* %7, %struct.lextree_node_t** %ln, align 8
  %8 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %8, i32 0, i32 7
  %9 = load i8, i8* %composite, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid1 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %10, i32 0, i32 4
  %11 = load i32, i32* %ssid1, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load i32*, i32** %comssid.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 %idxprom2
  store i32 1, i32* %arrayidx3, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid4 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %13, i32 0, i32 4
  %14 = load i32, i32* %ssid4, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load i32*, i32** %ssid.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  store i32 1, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @lextree_utt_end(%struct.lextree_t* %l, %struct.kbcore_t* %kbc) #0 {
entry:
  %l.addr = alloca %struct.lextree_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %i = alloca i32, align 4
  store %struct.lextree_t* %l, %struct.lextree_t** %l.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %mdef1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 1
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  store %struct.mdef_t* %1, %struct.mdef_t** %mdef, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lextree_t*, %struct.lextree_t** %l.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %3, i32 0, i32 7
  %4 = load i32, i32* %n_active, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lextree_t*, %struct.lextree_t** %l.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %6, i32 0, i32 5
  %7 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %7, i64 %idxprom
  %8 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx, align 8
  store %struct.lextree_node_t* %8, %struct.lextree_node_t** %ln, align 8
  %9 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %9, i32 0, i32 8
  store i16 -1, i16* %frame, align 2
  %10 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %10, i32 0, i32 0
  %11 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %11, i32 0, i32 2
  %12 = load i32, i32* %n_emit_state, align 4
  call void @hmm_clear(%struct.hmm_t* %hmm, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.lextree_t*, %struct.lextree_t** %l.addr, align 8
  %n_active2 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %14, i32 0, i32 7
  store i32 0, i32* %n_active2, align 4
  %15 = load %struct.lextree_t*, %struct.lextree_t** %l.addr, align 8
  %n_next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %15, i32 0, i32 8
  store i32 0, i32* %n_next_active, align 4
  ret void
}

declare void @hmm_clear(%struct.hmm_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @lextree_dump(%struct.lextree_t* %lextree, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %i = alloca i32, align 4
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %root = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %0, i32 0, i32 1
  %1 = load %struct.gnode_s*, %struct.gnode_s** %root, align 8
  store %struct.gnode_s* %1, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %4 = load i8*, i8** %ptr, align 8
  %5 = bitcast i8* %4 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %5, %struct.lextree_node_t** %ln, align 8
  %6 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %7 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @lextree_subtree_print(%struct.lextree_node_t* %6, i32 0, %struct.dict_t* %7, %struct._IO_FILE* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %9, i32 0, i32 1
  %10 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %10, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_lc = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %11, i32 0, i32 3
  %12 = load i32, i32* %n_lc, align 4
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %if.then
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_lc2 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %14, i32 0, i32 3
  %15 = load i32, i32* %n_lc2, align 4
  %cmp3 = icmp slt i32 %13, %15
  br i1 %cmp3, label %for.body.4, label %for.end.18

for.body.4:                                       ; preds = %for.cond.1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %lcroot = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %18, i32 0, i32 2
  %19 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %19, i64 %idxprom
  %lc = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx, i32 0, i32 0
  %20 = load i8, i8* %lc, align 1
  %conv = sext i8 %20 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %conv)
  %21 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %21 to i64
  %22 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %lcroot6 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %22, i32 0, i32 2
  %23 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot6, align 8
  %arrayidx7 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %23, i64 %idxprom5
  %root8 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx7, i32 0, i32 1
  %24 = load %struct.gnode_s*, %struct.gnode_s** %root8, align 8
  store %struct.gnode_s* %24, %struct.gnode_s** %gn, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.body.4
  %25 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool10 = icmp ne %struct.gnode_s* %25, null
  br i1 %tobool10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %26 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data12 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %26, i32 0, i32 0
  %ptr13 = bitcast %union.anytype_s* %data12 to i8**
  %27 = load i8*, i8** %ptr13, align 8
  %28 = bitcast i8* %27 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %28, %struct.lextree_node_t** %ln, align 8
  %29 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %30 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @lextree_node_print(%struct.lextree_node_t* %29, %struct.dict_t* %30, %struct._IO_FILE* %31)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %32 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next15 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %32, i32 0, i32 1
  %33 = load %struct.gnode_s*, %struct.gnode_s** %next15, align 8
  store %struct.gnode_s* %33, %struct.gnode_s** %gn, align 8
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end.18:                                       ; preds = %for.cond.1
  br label %if.end

if.end:                                           ; preds = %for.end.18, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lextree_subtree_print(%struct.lextree_node_t* %ln, i32 %level, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #0 {
entry:
  %ln.addr = alloca %struct.lextree_node_t*, align 8
  %level.addr = alloca i32, align 4
  %dict.addr = alloca %struct.dict_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.lextree_node_t* %ln, %struct.lextree_node_t** %ln.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %level.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %5 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @lextree_node_print(%struct.lextree_node_t* %4, %struct.dict_t* %5, %struct._IO_FILE* %6)
  %7 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %children = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %7, i32 0, i32 1
  %8 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %8, %struct.gnode_s** %gn, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.3, %for.end
  %9 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %9, null
  br i1 %tobool, label %for.body.2, label %for.end.4

for.body.2:                                       ; preds = %for.cond.1
  %10 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %10, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %11 = load i8*, i8** %ptr, align 8
  %12 = bitcast i8* %11 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %12, %struct.lextree_node_t** %ln.addr, align 8
  %13 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %14 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %14, 1
  %15 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @lextree_subtree_print(%struct.lextree_node_t* %13, i32 %add, %struct.dict_t* %15, %struct._IO_FILE* %16)
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.body.2
  %17 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %17, i32 0, i32 1
  %18 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %18, %struct.gnode_s** %gn, align 8
  br label %for.cond.1

for.end.4:                                        ; preds = %for.cond.1
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @lextree_node_print(%struct.lextree_node_t* %ln, %struct.dict_t* %dict, %struct._IO_FILE* %fp) #0 {
entry:
  %ln.addr = alloca %struct.lextree_node_t*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct.lextree_node_t* %ln, %struct.lextree_node_t** %ln.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %wid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %1, i32 0, i32 2
  %2 = load i32, i32* %wid, align 4
  %3 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %prob = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %3, i32 0, i32 3
  %4 = load i32, i32* %prob, align 4
  %5 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %composite = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %5, i32 0, i32 7
  %6 = load i8, i8* %composite, align 1
  %conv = sext i8 %6 to i32
  %7 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %ssid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %7, i32 0, i32 4
  %8 = load i32, i32* %ssid, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %2, i32 %4, i32 %conv, i32 %8)
  %9 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %wid1 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %9, i32 0, i32 2
  %10 = load i32, i32* %wid1, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln.addr, align 8
  %wid3 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %12, i32 0, i32 2
  %13 = load i32, i32* %wid3, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %14, i32 0, i32 4
  %15 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %15, i64 %idxprom
  %word4 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 0
  %16 = load i8*, i8** %word4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @lextree_enter(%struct.lextree_t* %lextree, i8 signext %lc, i32 %cf, i32 %inscore, i32 %inhist, i32 %thresh) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %lc.addr = alloca i8, align 1
  %cf.addr = alloca i32, align 4
  %inscore.addr = alloca i32, align 4
  %inhist.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %root = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %nf = alloca i32, align 4
  %scr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %hmm = alloca %struct.hmm_t*, align 8
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store i8 %lc, i8* %lc.addr, align 1
  store i32 %cf, i32* %cf.addr, align 4
  store i32 %inscore, i32* %inscore.addr, align 4
  store i32 %inhist, i32* %inhist.addr, align 4
  store i32 %thresh, i32* %thresh.addr, align 4
  %0 = load i32, i32* %cf.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %nf, align 4
  %1 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_lc = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %1, i32 0, i32 3
  %2 = load i32, i32* %n_lc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %root1 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %3, i32 0, i32 1
  %4 = load %struct.gnode_s*, %struct.gnode_s** %root1, align 8
  store %struct.gnode_s* %4, %struct.gnode_s** %root, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_lc2 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %6, i32 0, i32 3
  %7 = load i32, i32* %n_lc2, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %lcroot = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %9, i32 0, i32 2
  %10 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %10, i64 %idxprom
  %lc4 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx, i32 0, i32 0
  %11 = load i8, i8* %lc4, align 1
  %conv = sext i8 %11 to i32
  %12 = load i8, i8* %lc.addr, align 1
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp ne i32 %conv, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %lcroot9 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %16, i32 0, i32 2
  %17 = load %struct.lextree_lcroot_t*, %struct.lextree_lcroot_t** %lcroot9, align 8
  %arrayidx10 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %17, i64 %idxprom8
  %root11 = getelementptr inbounds %struct.lextree_lcroot_t, %struct.lextree_lcroot_t* %arrayidx10, i32 0, i32 1
  %18 = load %struct.gnode_s*, %struct.gnode_s** %root11, align 8
  store %struct.gnode_s* %18, %struct.gnode_s** %root, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %19 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %19, i32 0, i32 8
  %20 = load i32, i32* %n_next_active, align 4
  store i32 %20, i32* %n, align 4
  %21 = load %struct.gnode_s*, %struct.gnode_s** %root, align 8
  store %struct.gnode_s* %21, %struct.gnode_s** %gn, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.35, %if.end
  %22 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %22, null
  br i1 %tobool, label %for.body.13, label %for.end.36

for.body.13:                                      ; preds = %for.cond.12
  %23 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %23, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %24 = load i8*, i8** %ptr, align 8
  %25 = bitcast i8* %24 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %25, %struct.lextree_node_t** %ln, align 8
  %26 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm14 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %26, i32 0, i32 0
  store %struct.hmm_t* %hmm14, %struct.hmm_t** %hmm, align 8
  %27 = load i32, i32* %inscore.addr, align 4
  %28 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %28, i32 0, i32 3
  %29 = load i32, i32* %prob, align 4
  %add15 = add nsw i32 %27, %29
  store i32 %add15, i32* %scr, align 4
  %30 = load i32, i32* %scr, align 4
  %31 = load i32, i32* %thresh.addr, align 4
  %cmp16 = icmp sge i32 %30, %31
  br i1 %cmp16, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body.13
  %32 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %in = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %32, i32 0, i32 1
  %score = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in, i32 0, i32 0
  %33 = load i32, i32* %score, align 4
  %34 = load i32, i32* %scr, align 4
  %cmp18 = icmp slt i32 %33, %34
  br i1 %cmp18, label %if.then.20, label %if.end.34

if.then.20:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %scr, align 4
  %36 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %in21 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %36, i32 0, i32 1
  %score22 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in21, i32 0, i32 0
  store i32 %35, i32* %score22, align 4
  %37 = load i32, i32* %inhist.addr, align 4
  %38 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %in23 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %38, i32 0, i32 1
  %history = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in23, i32 0, i32 1
  store i32 %37, i32* %history, align 4
  %39 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %39, i32 0, i32 8
  %40 = load i16, i16* %frame, align 2
  %conv24 = sext i16 %40 to i32
  %41 = load i32, i32* %nf, align 4
  %cmp25 = icmp ne i32 %conv24, %41
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.then.20
  %42 = load i32, i32* %nf, align 4
  %conv28 = trunc i32 %42 to i16
  %43 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame29 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %43, i32 0, i32 8
  store i16 %conv28, i16* %frame29, align 2
  %44 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %45 = load i32, i32* %n, align 4
  %inc30 = add nsw i32 %45, 1
  store i32 %inc30, i32* %n, align 4
  %idxprom31 = sext i32 %45 to i64
  %46 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %46, i32 0, i32 6
  %47 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %next_active, align 8
  %arrayidx32 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %47, i64 %idxprom31
  store %struct.lextree_node_t* %44, %struct.lextree_node_t** %arrayidx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %if.then.20
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true, %for.body.13
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %48 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %48, i32 0, i32 1
  %49 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %49, %struct.gnode_s** %gn, align 8
  br label %for.cond.12

for.end.36:                                       ; preds = %for.cond.12
  %50 = load i32, i32* %n, align 4
  %51 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_next_active37 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %51, i32 0, i32 8
  store i32 %50, i32* %n_next_active37, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @lextree_active_swap(%struct.lextree_t* %lextree) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %t = alloca %struct.lextree_node_t**, align 8
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  %0 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %0, i32 0, i32 5
  %1 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  store %struct.lextree_node_t** %1, %struct.lextree_node_t*** %t, align 8
  %2 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %2, i32 0, i32 6
  %3 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %next_active, align 8
  %4 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active1 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %4, i32 0, i32 5
  store %struct.lextree_node_t** %3, %struct.lextree_node_t*** %active1, align 8
  %5 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %t, align 8
  %6 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %next_active2 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %6, i32 0, i32 6
  store %struct.lextree_node_t** %5, %struct.lextree_node_t*** %next_active2, align 8
  %7 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %7, i32 0, i32 8
  %8 = load i32, i32* %n_next_active, align 4
  %9 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %9, i32 0, i32 7
  store i32 %8, i32* %n_active, align 4
  %10 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_next_active3 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %10, i32 0, i32 8
  store i32 0, i32* %n_next_active3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lextree_hmm_eval(%struct.lextree_t* %lextree, %struct.kbcore_t* %kbc, %struct.ascr_t* %ascr, i32 %frm, %struct._IO_FILE* %fp) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %ascr.addr = alloca %struct.ascr_t*, align 8
  %frm.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %best = alloca i32, align 4
  %wbest = alloca i32, align 4
  %n_st = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %list = alloca %struct.lextree_node_t**, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  %d2p = alloca %struct.dict2pid_t*, align 8
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store %struct.ascr_t* %ascr, %struct.ascr_t** %ascr.addr, align 8
  store i32 %frm, i32* %frm.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %mdef1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 1
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  store %struct.mdef_t* %1, %struct.mdef_t** %mdef, align 8
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict2pid = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 3
  %3 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  store %struct.dict2pid_t* %3, %struct.dict2pid_t** %d2p, align 8
  %4 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %4, i32 0, i32 2
  %5 = load i32, i32* %n_emit_state, align 4
  store i32 %5, i32* %n_st, align 4
  %6 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %6, i32 0, i32 5
  %7 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  store %struct.lextree_node_t** %7, %struct.lextree_node_t*** %list, align 8
  store i32 -2147483648, i32* %best, align 4
  store i32 -2147483648, i32* %wbest, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool, label %if.then, label %if.else.20

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %10, i32 0, i32 7
  %11 = load i32, i32* %n_active, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %13, i64 %idxprom
  %14 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx, align 8
  store %struct.lextree_node_t* %14, %struct.lextree_node_t** %ln, align 8
  %15 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %16 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %dict = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %16, i32 0, i32 2
  %17 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @lextree_node_print(%struct.lextree_node_t* %15, %struct.dict_t* %17, %struct._IO_FILE* %18)
  %19 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %19, i32 0, i32 7
  %20 = load i8, i8* %composite, align 1
  %tobool2 = icmp ne i8 %20, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %for.body
  %21 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %21, i32 0, i32 0
  %22 = load i32, i32* %n_st, align 4
  %23 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %23, i32 0, i32 4
  %24 = load i32, i32* %ssid, align 4
  %idxprom4 = sext i32 %24 to i64
  %25 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %25, i32 0, i32 9
  %26 = load i16**, i16*** %sseq, align 8
  %arrayidx5 = getelementptr inbounds i16*, i16** %26, i64 %idxprom4
  %27 = load i16*, i16** %arrayidx5, align 8
  %28 = load %struct.ascr_t*, %struct.ascr_t** %ascr.addr, align 8
  %sen = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %28, i32 0, i32 0
  %29 = load i32*, i32** %sen, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @hmm_dump_vit_eval(%struct.hmm_t* %hmm, i32 %22, i16* %27, i32* %29, %struct._IO_FILE* %30)
  store i32 %call, i32* %k, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %31 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm6 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %31, i32 0, i32 0
  %32 = load i32, i32* %n_st, align 4
  %33 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid7 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %33, i32 0, i32 4
  %34 = load i32, i32* %ssid7, align 4
  %idxprom8 = sext i32 %34 to i64
  %35 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %35, i32 0, i32 4
  %36 = load i16**, i16*** %comsseq, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %36, i64 %idxprom8
  %37 = load i16*, i16** %arrayidx9, align 8
  %38 = load %struct.ascr_t*, %struct.ascr_t** %ascr.addr, align 8
  %comsen = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %38, i32 0, i32 1
  %39 = load i32*, i32** %comsen, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @hmm_dump_vit_eval(%struct.hmm_t* %hmm6, i32 %32, i16* %37, i32* %39, %struct._IO_FILE* %40)
  store i32 %call10, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %41 = load i32, i32* %best, align 4
  %42 = load i32, i32* %k, align 4
  %cmp11 = icmp slt i32 %41, %42
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %43 = load i32, i32* %k, align 4
  store i32 %43, i32* %best, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %44 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %44, i32 0, i32 2
  %45 = load i32, i32* %wid, align 4
  %cmp14 = icmp sge i32 %45, 0
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %46 = load i32, i32* %wbest, align 4
  %47 = load i32, i32* %k, align 4
  %cmp16 = icmp slt i32 %46, %47
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %48 = load i32, i32* %k, align 4
  store i32 %48, i32* %wbest, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.105

if.else.20:                                       ; preds = %entry
  %50 = load i32, i32* %n_st, align 4
  %cmp21 = icmp eq i32 %50, 3
  br i1 %cmp21, label %if.then.22, label %if.else.61

if.then.22:                                       ; preds = %if.else.20
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.58, %if.then.22
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active24 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %52, i32 0, i32 7
  %53 = load i32, i32* %n_active24, align 4
  %cmp25 = icmp slt i32 %51, %53
  br i1 %cmp25, label %for.body.26, label %for.end.60

for.body.26:                                      ; preds = %for.cond.23
  %54 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %54 to i64
  %55 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx28 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %55, i64 %idxprom27
  %56 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx28, align 8
  store %struct.lextree_node_t* %56, %struct.lextree_node_t** %ln, align 8
  %57 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite29 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %57, i32 0, i32 7
  %58 = load i8, i8* %composite29, align 1
  %tobool30 = icmp ne i8 %58, 0
  br i1 %tobool30, label %if.else.39, label %if.then.31

if.then.31:                                       ; preds = %for.body.26
  %59 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm32 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %59, i32 0, i32 0
  %60 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid33 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %60, i32 0, i32 4
  %61 = load i32, i32* %ssid33, align 4
  %idxprom34 = sext i32 %61 to i64
  %62 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %sseq35 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %62, i32 0, i32 9
  %63 = load i16**, i16*** %sseq35, align 8
  %arrayidx36 = getelementptr inbounds i16*, i16** %63, i64 %idxprom34
  %64 = load i16*, i16** %arrayidx36, align 8
  %65 = load %struct.ascr_t*, %struct.ascr_t** %ascr.addr, align 8
  %sen37 = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %65, i32 0, i32 0
  %66 = load i32*, i32** %sen37, align 8
  %call38 = call i32 @hmm_vit_eval_3st(%struct.hmm_t* %hmm32, i16* %64, i32* %66)
  store i32 %call38, i32* %k, align 4
  br label %if.end.47

if.else.39:                                       ; preds = %for.body.26
  %67 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm40 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %67, i32 0, i32 0
  %68 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid41 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %68, i32 0, i32 4
  %69 = load i32, i32* %ssid41, align 4
  %idxprom42 = sext i32 %69 to i64
  %70 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %comsseq43 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %70, i32 0, i32 4
  %71 = load i16**, i16*** %comsseq43, align 8
  %arrayidx44 = getelementptr inbounds i16*, i16** %71, i64 %idxprom42
  %72 = load i16*, i16** %arrayidx44, align 8
  %73 = load %struct.ascr_t*, %struct.ascr_t** %ascr.addr, align 8
  %comsen45 = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %73, i32 0, i32 1
  %74 = load i32*, i32** %comsen45, align 8
  %call46 = call i32 @hmm_vit_eval_3st(%struct.hmm_t* %hmm40, i16* %72, i32* %74)
  store i32 %call46, i32* %k, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.39, %if.then.31
  %75 = load i32, i32* %best, align 4
  %76 = load i32, i32* %k, align 4
  %cmp48 = icmp slt i32 %75, %76
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  %77 = load i32, i32* %k, align 4
  store i32 %77, i32* %best, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.47
  %78 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid51 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %78, i32 0, i32 2
  %79 = load i32, i32* %wid51, align 4
  %cmp52 = icmp sge i32 %79, 0
  br i1 %cmp52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.50
  %80 = load i32, i32* %wbest, align 4
  %81 = load i32, i32* %k, align 4
  %cmp54 = icmp slt i32 %80, %81
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.53
  %82 = load i32, i32* %k, align 4
  store i32 %82, i32* %wbest, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.50
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %83 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %83, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.23

for.end.60:                                       ; preds = %for.cond.23
  br label %if.end.104

if.else.61:                                       ; preds = %if.else.20
  %84 = load i32, i32* %n_st, align 4
  %cmp62 = icmp eq i32 %84, 5
  br i1 %cmp62, label %if.then.63, label %if.else.102

if.then.63:                                       ; preds = %if.else.61
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.99, %if.then.63
  %85 = load i32, i32* %i, align 4
  %86 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active65 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %86, i32 0, i32 7
  %87 = load i32, i32* %n_active65, align 4
  %cmp66 = icmp slt i32 %85, %87
  br i1 %cmp66, label %for.body.67, label %for.end.101

for.body.67:                                      ; preds = %for.cond.64
  %88 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %88 to i64
  %89 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx69 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %89, i64 %idxprom68
  %90 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx69, align 8
  store %struct.lextree_node_t* %90, %struct.lextree_node_t** %ln, align 8
  %91 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %composite70 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %91, i32 0, i32 7
  %92 = load i8, i8* %composite70, align 1
  %tobool71 = icmp ne i8 %92, 0
  br i1 %tobool71, label %if.else.80, label %if.then.72

if.then.72:                                       ; preds = %for.body.67
  %93 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm73 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %93, i32 0, i32 0
  %94 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid74 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %94, i32 0, i32 4
  %95 = load i32, i32* %ssid74, align 4
  %idxprom75 = sext i32 %95 to i64
  %96 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %sseq76 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %96, i32 0, i32 9
  %97 = load i16**, i16*** %sseq76, align 8
  %arrayidx77 = getelementptr inbounds i16*, i16** %97, i64 %idxprom75
  %98 = load i16*, i16** %arrayidx77, align 8
  %99 = load %struct.ascr_t*, %struct.ascr_t** %ascr.addr, align 8
  %sen78 = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %99, i32 0, i32 0
  %100 = load i32*, i32** %sen78, align 8
  %call79 = call i32 @hmm_vit_eval_5st(%struct.hmm_t* %hmm73, i16* %98, i32* %100)
  store i32 %call79, i32* %k, align 4
  br label %if.end.88

if.else.80:                                       ; preds = %for.body.67
  %101 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm81 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %101, i32 0, i32 0
  %102 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %ssid82 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %102, i32 0, i32 4
  %103 = load i32, i32* %ssid82, align 4
  %idxprom83 = sext i32 %103 to i64
  %104 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %comsseq84 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %104, i32 0, i32 4
  %105 = load i16**, i16*** %comsseq84, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %105, i64 %idxprom83
  %106 = load i16*, i16** %arrayidx85, align 8
  %107 = load %struct.ascr_t*, %struct.ascr_t** %ascr.addr, align 8
  %comsen86 = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %107, i32 0, i32 1
  %108 = load i32*, i32** %comsen86, align 8
  %call87 = call i32 @hmm_vit_eval_5st(%struct.hmm_t* %hmm81, i16* %106, i32* %108)
  store i32 %call87, i32* %k, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.80, %if.then.72
  %109 = load i32, i32* %best, align 4
  %110 = load i32, i32* %k, align 4
  %cmp89 = icmp slt i32 %109, %110
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %111 = load i32, i32* %k, align 4
  store i32 %111, i32* %best, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  %112 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid92 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %112, i32 0, i32 2
  %113 = load i32, i32* %wid92, align 4
  %cmp93 = icmp sge i32 %113, 0
  br i1 %cmp93, label %if.then.94, label %if.end.98

if.then.94:                                       ; preds = %if.end.91
  %114 = load i32, i32* %wbest, align 4
  %115 = load i32, i32* %k, align 4
  %cmp95 = icmp slt i32 %114, %115
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.94
  %116 = load i32, i32* %k, align 4
  store i32 %116, i32* %wbest, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.94
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.91
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %117 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %117, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.64

for.end.101:                                      ; preds = %for.cond.64
  br label %if.end.103

if.else.102:                                      ; preds = %if.else.61
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 656, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %118 = load i32, i32* %n_st, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %118)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %for.end.101
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %for.end.60
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %for.end
  %119 = load i32, i32* %best, align 4
  %120 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %best106 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %120, i32 0, i32 9
  store i32 %119, i32* %best106, align 4
  %121 = load i32, i32* %wbest, align 4
  %122 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %wbest107 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %122, i32 0, i32 10
  store i32 %121, i32* %wbest107, align 4
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool108 = icmp ne %struct._IO_FILE* %123, null
  br i1 %tobool108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.end.105
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %125 = load i32, i32* %frm.addr, align 4
  %126 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active110 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %126, i32 0, i32 7
  %127 = load i32, i32* %n_active110, align 4
  %128 = load i32, i32* %best, align 4
  %129 = load i32, i32* %wbest, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 %125, i32 %127, i32 %128, i32 %129)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call112 = call i32 @fflush(%struct._IO_FILE* %130)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.105
  %131 = load i32, i32* %best, align 4
  ret i32 %131
}

declare i32 @hmm_dump_vit_eval(%struct.hmm_t*, i32, i16*, i32*, %struct._IO_FILE*) #1

declare i32 @hmm_vit_eval_3st(%struct.hmm_t*, i16*, i32*) #1

declare i32 @hmm_vit_eval_5st(%struct.hmm_t*, i16*, i32*) #1

declare void @_E__die_error(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @lextree_hmm_histbin(%struct.lextree_t* %lextree, i32 %bestscr, i32* %bin, i32 %nbin, i32 %bw) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %bestscr.addr = alloca i32, align 4
  %bin.addr = alloca i32*, align 8
  %nbin.addr = alloca i32, align 4
  %bw.addr = alloca i32, align 4
  %list = alloca %struct.lextree_node_t**, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %hmm = alloca %struct.hmm_t*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %binln = alloca %struct.gnode_s**, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store i32 %bestscr, i32* %bestscr.addr, align 4
  store i32* %bin, i32** %bin.addr, align 8
  store i32 %nbin, i32* %nbin.addr, align 4
  store i32 %bw, i32* %bw.addr, align 4
  %0 = load i32, i32* %nbin.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 680)
  %1 = bitcast i8* %call to %struct.gnode_s**
  store %struct.gnode_s** %1, %struct.gnode_s*** %binln, align 8
  %2 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %2, i32 0, i32 5
  %3 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  store %struct.lextree_node_t** %3, %struct.lextree_node_t*** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %5, i32 0, i32 7
  %6 = load i32, i32* %n_active, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %8, i64 %idxprom
  %9 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx, align 8
  store %struct.lextree_node_t* %9, %struct.lextree_node_t** %ln, align 8
  %10 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm2 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %10, i32 0, i32 0
  store %struct.hmm_t* %hmm2, %struct.hmm_t** %hmm, align 8
  %11 = load i32, i32* %bestscr.addr, align 4
  %12 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %bestscore = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %12, i32 0, i32 4
  %13 = load i32, i32* %bestscore, align 4
  %sub = sub nsw i32 %11, %13
  %14 = load i32, i32* %bw.addr, align 4
  %div = sdiv i32 %sub, %14
  store i32 %div, i32* %k, align 4
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %nbin.addr, align 4
  %cmp3 = icmp sge i32 %15, %16
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %nbin.addr, align 4
  %sub5 = sub nsw i32 %17, 1
  store i32 %sub5, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load i32*, i32** %bin.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 %idxprom6
  %20 = load i32, i32* %arrayidx7, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %arrayidx7, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct.gnode_s**, %struct.gnode_s*** %binln, align 8
  %arrayidx9 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %22, i64 %idxprom8
  %23 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx9, align 8
  %24 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %25 = bitcast %struct.lextree_node_t* %24 to i8*
  %call10 = call %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %23, i8* %25)
  %26 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct.gnode_s**, %struct.gnode_s*** %binln, align 8
  %arrayidx12 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %27, i64 %idxprom11
  store %struct.gnode_s* %call10, %struct.gnode_s** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %28, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.29, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %nbin.addr, align 4
  %cmp15 = icmp slt i32 %29, %30
  br i1 %cmp15, label %for.body.17, label %for.end.31

for.body.17:                                      ; preds = %for.cond.14
  %31 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load %struct.gnode_s**, %struct.gnode_s*** %binln, align 8
  %arrayidx19 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %32, i64 %idxprom18
  %33 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx19, align 8
  store %struct.gnode_s* %33, %struct.gnode_s** %gn, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.25, %for.body.17
  %34 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %34, null
  br i1 %tobool, label %for.body.21, label %for.end.26

for.body.21:                                      ; preds = %for.cond.20
  %35 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %35, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %36 = load i8*, i8** %ptr, align 8
  %37 = bitcast i8* %36 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %37, %struct.lextree_node_t** %ln, align 8
  %38 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %39 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %39, 1
  store i32 %inc22, i32* %k, align 4
  %idxprom23 = sext i32 %39 to i64
  %40 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx24 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %40, i64 %idxprom23
  store %struct.lextree_node_t* %38, %struct.lextree_node_t** %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.21
  %41 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %41, i32 0, i32 1
  %42 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %42, %struct.gnode_s** %gn, align 8
  br label %for.cond.20

for.end.26:                                       ; preds = %for.cond.20
  %43 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct.gnode_s**, %struct.gnode_s*** %binln, align 8
  %arrayidx28 = getelementptr inbounds %struct.gnode_s*, %struct.gnode_s** %44, i64 %idxprom27
  %45 = load %struct.gnode_s*, %struct.gnode_s** %arrayidx28, align 8
  call void @glist_free(%struct.gnode_s* %45)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.26
  %46 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %46, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  %47 = load %struct.gnode_s**, %struct.gnode_s*** %binln, align 8
  %48 = bitcast %struct.gnode_s** %47 to i8*
  call void @ckd_free(i8* %48)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lextree_hmm_propagate(%struct.lextree_t* %lextree, %struct.kbcore_t* %kbc, %struct.vithist_t* %vh, i32 %cf, i32 %th, i32 %pth, i32 %wth, i32* %phn_heur_list, i32 %heur_beam, i32 %heur_type) #0 {
entry:
  %lextree.addr = alloca %struct.lextree_t*, align 8
  %kbc.addr = alloca %struct.kbcore_t*, align 8
  %vh.addr = alloca %struct.vithist_t*, align 8
  %cf.addr = alloca i32, align 4
  %th.addr = alloca i32, align 4
  %pth.addr = alloca i32, align 4
  %wth.addr = alloca i32, align 4
  %phn_heur_list.addr = alloca i32*, align 8
  %heur_beam.addr = alloca i32, align 4
  %heur_type.addr = alloca i32, align 4
  %mdef = alloca %struct.mdef_t*, align 8
  %nf = alloca i32, align 4
  %newscore = alloca i32, align 4
  %newHeurScore = alloca i32, align 4
  %list = alloca %struct.lextree_node_t**, align 8
  %ln = alloca %struct.lextree_node_t*, align 8
  %ln2 = alloca %struct.lextree_node_t*, align 8
  %hmm = alloca %struct.hmm_t*, align 8
  %hmm2 = alloca %struct.hmm_t*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %hth = alloca i32, align 4
  store %struct.lextree_t* %lextree, %struct.lextree_t** %lextree.addr, align 8
  store %struct.kbcore_t* %kbc, %struct.kbcore_t** %kbc.addr, align 8
  store %struct.vithist_t* %vh, %struct.vithist_t** %vh.addr, align 8
  store i32 %cf, i32* %cf.addr, align 4
  store i32 %th, i32* %th.addr, align 4
  store i32 %pth, i32* %pth.addr, align 4
  store i32 %wth, i32* %wth.addr, align 4
  store i32* %phn_heur_list, i32** %phn_heur_list.addr, align 8
  store i32 %heur_beam, i32* %heur_beam.addr, align 4
  store i32 %heur_type, i32* %heur_type.addr, align 4
  %0 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %mdef1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %0, i32 0, i32 1
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  store %struct.mdef_t* %1, %struct.mdef_t** %mdef, align 8
  %2 = load i32, i32* %cf.addr, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %nf, align 4
  %3 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %3, i32 0, i32 5
  %4 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %active, align 8
  store %struct.lextree_node_t** %4, %struct.lextree_node_t*** %list, align 8
  %5 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %5, i32 0, i32 8
  %6 = load i32, i32* %n_next_active, align 4
  store i32 %6, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %8, i32 0, i32 7
  %9 = load i32, i32* %n_active, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %list, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %11, i64 %idxprom
  %12 = load %struct.lextree_node_t*, %struct.lextree_node_t** %arrayidx, align 8
  store %struct.lextree_node_t* %12, %struct.lextree_node_t** %ln, align 8
  %13 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %hmm3 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %13, i32 0, i32 0
  store %struct.hmm_t* %hmm3, %struct.hmm_t** %hmm, align 8
  %14 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %14, i32 0, i32 8
  %15 = load i16, i16* %frame, align 2
  %conv = sext i16 %15 to i32
  %16 = load i32, i32* %nf, align 4
  %cmp4 = icmp slt i32 %conv, %16
  br i1 %cmp4, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %17 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %bestscore = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %17, i32 0, i32 4
  %18 = load i32, i32* %bestscore, align 4
  %19 = load i32, i32* %th.addr, align 4
  %cmp6 = icmp sge i32 %18, %19
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %20 = load i32, i32* %nf, align 4
  %conv9 = trunc i32 %20 to i16
  %21 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame10 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %21, i32 0, i32 8
  store i16 %conv9, i16* %frame10, align 2
  %22 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %23 = load i32, i32* %n, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %n, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %24, i32 0, i32 6
  %25 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %next_active, align 8
  %arrayidx12 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %25, i64 %idxprom11
  store %struct.lextree_node_t* %22, %struct.lextree_node_t** %arrayidx12, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %frame13 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %26, i32 0, i32 8
  store i16 -1, i16* %frame13, align 2
  %27 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %28 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %28, i32 0, i32 2
  %29 = load i32, i32* %n_emit_state, align 4
  call void @hmm_clear(%struct.hmm_t* %27, i32 %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body
  %30 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %30, i32 0, i32 2
  %31 = load i32, i32* %wid, align 4
  %cmp15 = icmp slt i32 %31, 0
  br i1 %cmp15, label %if.then.17, label %if.else.98

if.then.17:                                       ; preds = %if.end.14
  %32 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %32, i32 0, i32 2
  %score = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out, i32 0, i32 0
  %33 = load i32, i32* %score, align 4
  %34 = load i32, i32* %pth.addr, align 4
  %cmp18 = icmp slt i32 %33, %34
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  br label %for.inc.122

if.end.21:                                        ; preds = %if.then.17
  %35 = load i32, i32* %heur_type.addr, align 4
  %cmp22 = icmp sgt i32 %35, 0
  br i1 %cmp22, label %if.then.24, label %if.end.44

if.then.24:                                       ; preds = %if.end.21
  %36 = load i32, i32* %cf.addr, align 4
  %37 = load i32, i32* @lextree_hmm_propagate.lastfrm, align 4
  %cmp25 = icmp ne i32 %36, %37
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  %38 = load i32, i32* %cf.addr, align 4
  store i32 %38, i32* @lextree_hmm_propagate.lastfrm, align 4
  store i32 -2147483648, i32* @lextree_hmm_propagate.maxNewHeurScore, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.24
  %39 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %children = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %39, i32 0, i32 1
  %40 = load %struct.gnode_s*, %struct.gnode_s** %children, align 8
  store %struct.gnode_s* %40, %struct.gnode_s** %gn, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.end.28
  %41 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %41, null
  br i1 %tobool, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.29
  %42 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %42, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %43 = load i8*, i8** %ptr, align 8
  %44 = bitcast i8* %43 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %44, %struct.lextree_node_t** %ln2, align 8
  %45 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out31 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %45, i32 0, i32 2
  %score32 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out31, i32 0, i32 0
  %46 = load i32, i32* %score32, align 4
  %47 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %prob = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %47, i32 0, i32 3
  %48 = load i32, i32* %prob, align 4
  %49 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob33 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %49, i32 0, i32 3
  %50 = load i32, i32* %prob33, align 4
  %sub = sub nsw i32 %48, %50
  %add34 = add nsw i32 %46, %sub
  %51 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %ci = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %51, i32 0, i32 6
  %52 = load i8, i8* %ci, align 1
  %conv35 = sext i8 %52 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %53 = load i32*, i32** %phn_heur_list.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %53, i64 %idxprom36
  %54 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %add34, %54
  store i32 %add38, i32* %newHeurScore, align 4
  %55 = load i32, i32* @lextree_hmm_propagate.maxNewHeurScore, align 4
  %56 = load i32, i32* %newHeurScore, align 4
  %cmp39 = icmp slt i32 %55, %56
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.30
  %57 = load i32, i32* %newHeurScore, align 4
  store i32 %57, i32* @lextree_hmm_propagate.maxNewHeurScore, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %58 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %58, i32 0, i32 1
  %59 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %59, %struct.gnode_s** %gn, align 8
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %60 = load i32, i32* @lextree_hmm_propagate.maxNewHeurScore, align 4
  %61 = load i32, i32* %heur_beam.addr, align 4
  %add43 = add nsw i32 %60, %61
  store i32 %add43, i32* %hth, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.end.21
  %62 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %children45 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %62, i32 0, i32 1
  %63 = load %struct.gnode_s*, %struct.gnode_s** %children45, align 8
  store %struct.gnode_s* %63, %struct.gnode_s** %gn, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.95, %if.end.44
  %64 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool47 = icmp ne %struct.gnode_s* %64, null
  br i1 %tobool47, label %for.body.48, label %for.end.97

for.body.48:                                      ; preds = %for.cond.46
  %65 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data49 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %65, i32 0, i32 0
  %ptr50 = bitcast %union.anytype_s* %data49 to i8**
  %66 = load i8*, i8** %ptr50, align 8
  %67 = bitcast i8* %66 to %struct.lextree_node_t*
  store %struct.lextree_node_t* %67, %struct.lextree_node_t** %ln2, align 8
  %68 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %hmm51 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %68, i32 0, i32 0
  store %struct.hmm_t* %hmm51, %struct.hmm_t** %hmm2, align 8
  %69 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out52 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %69, i32 0, i32 2
  %score53 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out52, i32 0, i32 0
  %70 = load i32, i32* %score53, align 4
  %71 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %prob54 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %71, i32 0, i32 3
  %72 = load i32, i32* %prob54, align 4
  %73 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob55 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %73, i32 0, i32 3
  %74 = load i32, i32* %prob55, align 4
  %sub56 = sub nsw i32 %72, %74
  %add57 = add nsw i32 %70, %sub56
  store i32 %add57, i32* %newscore, align 4
  %75 = load i32, i32* %newscore, align 4
  %76 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %ci58 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %76, i32 0, i32 6
  %77 = load i8, i8* %ci58, align 1
  %conv59 = sext i8 %77 to i32
  %idxprom60 = sext i32 %conv59 to i64
  %78 = load i32*, i32** %phn_heur_list.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %78, i64 %idxprom60
  %79 = load i32, i32* %arrayidx61, align 4
  %add62 = add nsw i32 %75, %79
  store i32 %add62, i32* %newHeurScore, align 4
  %80 = load i32, i32* %heur_type.addr, align 4
  %cmp63 = icmp eq i32 %80, 0
  br i1 %cmp63, label %land.lhs.true.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.48
  %81 = load i32, i32* %heur_type.addr, align 4
  %cmp65 = icmp sgt i32 %81, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %lor.lhs.false
  %82 = load i32, i32* %newHeurScore, align 4
  %83 = load i32, i32* %hth, align 4
  %cmp67 = icmp sge i32 %82, %83
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.94

land.lhs.true.69:                                 ; preds = %land.lhs.true, %for.body.48
  %84 = load i32, i32* %newscore, align 4
  %85 = load i32, i32* %th.addr, align 4
  %cmp70 = icmp sge i32 %84, %85
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.94

land.lhs.true.72:                                 ; preds = %land.lhs.true.69
  %86 = load %struct.hmm_t*, %struct.hmm_t** %hmm2, align 8
  %in = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %86, i32 0, i32 1
  %score73 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in, i32 0, i32 0
  %87 = load i32, i32* %score73, align 4
  %88 = load i32, i32* %newscore, align 4
  %cmp74 = icmp slt i32 %87, %88
  br i1 %cmp74, label %if.then.76, label %if.end.94

if.then.76:                                       ; preds = %land.lhs.true.72
  %89 = load i32, i32* %newscore, align 4
  %90 = load %struct.hmm_t*, %struct.hmm_t** %hmm2, align 8
  %in77 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %90, i32 0, i32 1
  %score78 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in77, i32 0, i32 0
  store i32 %89, i32* %score78, align 4
  %91 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out79 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %91, i32 0, i32 2
  %history = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out79, i32 0, i32 1
  %92 = load i32, i32* %history, align 4
  %93 = load %struct.hmm_t*, %struct.hmm_t** %hmm2, align 8
  %in80 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %93, i32 0, i32 1
  %history81 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in80, i32 0, i32 1
  store i32 %92, i32* %history81, align 4
  %94 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %frame82 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %94, i32 0, i32 8
  %95 = load i16, i16* %frame82, align 2
  %conv83 = sext i16 %95 to i32
  %96 = load i32, i32* %nf, align 4
  %cmp84 = icmp ne i32 %conv83, %96
  br i1 %cmp84, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.then.76
  %97 = load i32, i32* %nf, align 4
  %conv87 = trunc i32 %97 to i16
  %98 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %frame88 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %98, i32 0, i32 8
  store i16 %conv87, i16* %frame88, align 2
  %99 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln2, align 8
  %100 = load i32, i32* %n, align 4
  %inc89 = add nsw i32 %100, 1
  store i32 %inc89, i32* %n, align 4
  %idxprom90 = sext i32 %100 to i64
  %101 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %next_active91 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %101, i32 0, i32 6
  %102 = load %struct.lextree_node_t**, %struct.lextree_node_t*** %next_active91, align 8
  %arrayidx92 = getelementptr inbounds %struct.lextree_node_t*, %struct.lextree_node_t** %102, i64 %idxprom90
  store %struct.lextree_node_t* %99, %struct.lextree_node_t** %arrayidx92, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.86, %if.then.76
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.72, %land.lhs.true.69, %land.lhs.true, %lor.lhs.false
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %103 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next96 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %103, i32 0, i32 1
  %104 = load %struct.gnode_s*, %struct.gnode_s** %next96, align 8
  store %struct.gnode_s* %104, %struct.gnode_s** %gn, align 8
  br label %for.cond.46

for.end.97:                                       ; preds = %for.cond.46
  br label %if.end.121

if.else.98:                                       ; preds = %if.end.14
  %105 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out99 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %105, i32 0, i32 2
  %score100 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out99, i32 0, i32 0
  %106 = load i32, i32* %score100, align 4
  %107 = load i32, i32* %wth.addr, align 4
  %cmp101 = icmp slt i32 %106, %107
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else.98
  br label %for.inc.122

if.end.104:                                       ; preds = %if.else.98
  %108 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out105 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %108, i32 0, i32 2
  %history106 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out105, i32 0, i32 1
  %109 = load i32, i32* %history106, align 4
  %cmp107 = icmp eq i32 %109, -1
  br i1 %cmp107, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %if.end.104
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 805, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %110 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out110 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %110, i32 0, i32 2
  %score111 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out110, i32 0, i32 0
  %111 = load i32, i32* %score111, align 4
  %112 = load i32, i32* %i, align 4
  %113 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %type = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %113, i32 0, i32 0
  %114 = load i32, i32* %type, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i32 0, i32 0), i32 %111, i32 %112, i32 %114)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %if.end.104
  %115 = load %struct.vithist_t*, %struct.vithist_t** %vh.addr, align 8
  %116 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc.addr, align 8
  %117 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %wid113 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %117, i32 0, i32 2
  %118 = load i32, i32* %wid113, align 4
  %119 = load i32, i32* %cf.addr, align 4
  %120 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out114 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %120, i32 0, i32 2
  %score115 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out114, i32 0, i32 0
  %121 = load i32, i32* %score115, align 4
  %122 = load %struct.lextree_node_t*, %struct.lextree_node_t** %ln, align 8
  %prob116 = getelementptr inbounds %struct.lextree_node_t, %struct.lextree_node_t* %122, i32 0, i32 3
  %123 = load i32, i32* %prob116, align 4
  %sub117 = sub nsw i32 %121, %123
  %124 = load %struct.hmm_t*, %struct.hmm_t** %hmm, align 8
  %out118 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %124, i32 0, i32 2
  %history119 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out118, i32 0, i32 1
  %125 = load i32, i32* %history119, align 4
  %126 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %type120 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %126, i32 0, i32 0
  %127 = load i32, i32* %type120, align 4
  call void @vithist_rescore(%struct.vithist_t* %115, %struct.kbcore_t* %116, i32 %118, i32 %119, i32 %sub117, i32 %125, i32 %127)
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.112, %for.end.97
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121, %if.then.103, %if.then.20
  %128 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %128, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %129 = load i32, i32* %n, align 4
  %130 = load %struct.lextree_t*, %struct.lextree_t** %lextree.addr, align 8
  %n_next_active125 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %130, i32 0, i32 8
  store i32 %129, i32* %n_next_active125, align 4
  ret void
}

declare void @vithist_rescore(%struct.vithist_t*, %struct.kbcore_t*, i32, i32, i32, i32, i32) #1

declare i8* @__mymalloc__(i32, i8*, i32) #1

declare void @__myfree__(i8*, i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
