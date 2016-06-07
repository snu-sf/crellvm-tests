; ModuleID = 'approx_cont_mgau.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_s = type { i32, i32, i32, i32, i32, i32, float**, i32***, %struct._IO_FILE*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.subvq_t = type { %struct.arraysize_t, i32, i32, i32**, %struct.vector_gautbl_t*, i32***, float*, i32**, i32*, i32* }
%struct.arraysize_t = type { i32, i32 }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }
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

@most_recent_best_cid = global i32 -1, align 4
@.str = private unnamed_addr constant [19 x i8] c"approx_cont_mgau.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Re-normalizing the previous score\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @approx_isskip(i32 %frame, i32 %ds_ratio, i32 %cond_ds, i32 %isSameBestIdx, i32* %skip_count) #0 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca i32, align 4
  %ds_ratio.addr = alloca i32, align 4
  %cond_ds.addr = alloca i32, align 4
  %isSameBestIdx.addr = alloca i32, align 4
  %skip_count.addr = alloca i32*, align 8
  store i32 %frame, i32* %frame.addr, align 4
  store i32 %ds_ratio, i32* %ds_ratio.addr, align 4
  store i32 %cond_ds, i32* %cond_ds.addr, align 4
  store i32 %isSameBestIdx, i32* %isSameBestIdx.addr, align 4
  store i32* %skip_count, i32** %skip_count.addr, align 8
  %0 = load i32, i32* %cond_ds.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %isSameBestIdx.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else.4

if.then.1:                                        ; preds = %if.then
  %2 = load i32*, i32** %skip_count.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %ds_ratio.addr, align 4
  %sub = sub nsw i32 %4, 1
  %cmp2 = icmp slt i32 %3, %sub
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %5 = load i32*, i32** %skip_count.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr, i32** %skip_count.addr, align 8
  %6 = load i32, i32* %5, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.1
  %7 = load i32*, i32** %skip_count.addr, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %frame.addr, align 4
  %9 = load i32, i32* %ds_ratio.addr, align 4
  %rem = srem i32 %8, %9
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.else.4, %if.else, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @approx_mgau_eval(%struct.gs_s* %gs, %struct.subvq_t* %svq, %struct.mgau_model_t* %g, %struct.kb_t* %kb, i32 %s, i32* %senscr, float* %feat, i32 %best_cid, i32 %svq_beam) #0 {
entry:
  %gs.addr = alloca %struct.gs_s*, align 8
  %svq.addr = alloca %struct.subvq_t*, align 8
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %s.addr = alloca i32, align 4
  %senscr.addr = alloca i32*, align 8
  %feat.addr = alloca float*, align 8
  %best_cid.addr = alloca i32, align 4
  %svq_beam.addr = alloca i32, align 4
  %ng = alloca i32, align 4
  %mgau_sl = alloca i32*, align 8
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  store %struct.subvq_t* %svq, %struct.subvq_t** %svq.addr, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32* %senscr, i32** %senscr.addr, align 8
  store float* %feat, float** %feat.addr, align 8
  store i32 %best_cid, i32* %best_cid.addr, align 4
  store i32 %svq_beam, i32* %svq_beam.addr, align 4
  store i32 0, i32* %ng, align 4
  %0 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %tobool = icmp ne %struct.gs_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %gs4gs = getelementptr inbounds %struct.kb_t, %struct.kb_t* %1, i32 0, i32 25
  %2 = load i32, i32* %gs4gs, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %4 = load i32, i32* %s.addr, align 4
  %5 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %6, i32 0, i32 3
  %7 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %7, i64 %idxprom
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %n_comp, align 4
  %9 = load float*, float** %feat.addr, align 8
  %10 = load i32, i32* %best_cid.addr, align 4
  %call = call i32 @gs_mgau_shortlist(%struct.gs_s* %3, i32 %4, i32 %8, float* %9, i32 %10)
  store i32 %call, i32* %ng, align 4
  %11 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %mgau_sl2 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %11, i32 0, i32 9
  %12 = load i32*, i32** %mgau_sl2, align 8
  store i32* %12, i32** %mgau_sl, align 8
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %tobool3 = icmp ne %struct.subvq_t* %13, null
  br i1 %tobool3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %if.else
  %14 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %15 = load i32, i32* %s.addr, align 4
  %16 = load i32, i32* %s.addr, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau6 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %17, i32 0, i32 3
  %18 = load %struct.mgau_t*, %struct.mgau_t** %mgau6, align 8
  %arrayidx7 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %18, i64 %idxprom5
  %n_comp8 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx7, i32 0, i32 0
  %19 = load i32, i32* %n_comp8, align 4
  %20 = load i32, i32* %svq_beam.addr, align 4
  %call9 = call i32 @subvq_mgau_shortlist(%struct.subvq_t* %14, i32 %15, i32 %19, i32 %20)
  store i32 %call9, i32* %ng, align 4
  %21 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %mgau_sl10 = getelementptr inbounds %struct.subvq_t, %struct.subvq_t* %21, i32 0, i32 9
  %22 = load i32*, i32** %mgau_sl10, align 8
  store i32* %22, i32** %mgau_sl, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else
  %23 = load i32, i32* %s.addr, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau13 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %24, i32 0, i32 3
  %25 = load %struct.mgau_t*, %struct.mgau_t** %mgau13, align 8
  %arrayidx14 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %25, i64 %idxprom12
  %n_comp15 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx14, i32 0, i32 0
  %26 = load i32, i32* %n_comp15, align 4
  store i32 %26, i32* %ng, align 4
  store i32* null, i32** %mgau_sl, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %27 = load i32, i32* %ng, align 4
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.16
  store i32* null, i32** %mgau_sl, align 8
  %28 = load i32, i32* %s.addr, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau19 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %29, i32 0, i32 3
  %30 = load %struct.mgau_t*, %struct.mgau_t** %mgau19, align 8
  %arrayidx20 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %30, i64 %idxprom18
  %n_comp21 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx20, i32 0, i32 0
  %31 = load i32, i32* %n_comp21, align 4
  store i32 %31, i32* %ng, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.16
  %32 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %tobool23 = icmp ne %struct.subvq_t* %32, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.34

land.lhs.true.24:                                 ; preds = %if.end.22
  %33 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %svq4svq = getelementptr inbounds %struct.kb_t, %struct.kb_t* %33, i32 0, i32 26
  %34 = load i32, i32* %svq4svq, align 4
  %tobool25 = icmp ne i32 %34, 0
  br i1 %tobool25, label %if.then.26, label %if.else.34

if.then.26:                                       ; preds = %land.lhs.true.24
  %35 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %36 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %37 = load i32, i32* %s.addr, align 4
  %38 = load i32, i32* %s.addr, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau28 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %39, i32 0, i32 3
  %40 = load %struct.mgau_t*, %struct.mgau_t** %mgau28, align 8
  %arrayidx29 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %40, i64 %idxprom27
  %n_comp30 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx29, i32 0, i32 0
  %41 = load i32, i32* %n_comp30, align 4
  %42 = load i32*, i32** %mgau_sl, align 8
  %call31 = call i32 @subvq_mgau_eval(%struct.mgau_model_t* %35, %struct.subvq_t* %36, i32 %37, i32 %41, i32* %42)
  %43 = load i32, i32* %s.addr, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load i32*, i32** %senscr.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %44, i64 %idxprom32
  store i32 %call31, i32* %arrayidx33, align 4
  br label %if.end.38

if.else.34:                                       ; preds = %land.lhs.true.24, %if.end.22
  %45 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %46 = load i32, i32* %s.addr, align 4
  %47 = load i32*, i32** %mgau_sl, align 8
  %48 = load float*, float** %feat.addr, align 8
  %call35 = call i32 @mgau_eval(%struct.mgau_model_t* %45, i32 %46, i32* %47, float* %48)
  %49 = load i32, i32* %s.addr, align 4
  %idxprom36 = sext i32 %49 to i64
  %50 = load i32*, i32** %senscr.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %50, i64 %idxprom36
  store i32 %call35, i32* %arrayidx37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34, %if.then.26
  %51 = load i32, i32* %s.addr, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load i32*, i32** %senscr.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %52, i64 %idxprom39
  %53 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp slt i32 %53, -939424096
  br i1 %cmp41, label %if.then.42, label %if.end.68

if.then.42:                                       ; preds = %if.end.38
  %54 = load i32*, i32** %mgau_sl, align 8
  %cmp43 = icmp eq i32* %54, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.42
  br label %if.end.67

if.else.45:                                       ; preds = %if.then.42
  store i32* null, i32** %mgau_sl, align 8
  %55 = load i32, i32* %s.addr, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau47 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %56, i32 0, i32 3
  %57 = load %struct.mgau_t*, %struct.mgau_t** %mgau47, align 8
  %arrayidx48 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %57, i64 %idxprom46
  %n_comp49 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx48, i32 0, i32 0
  %58 = load i32, i32* %n_comp49, align 4
  %59 = load i32, i32* %ng, align 4
  %add = add nsw i32 %59, %58
  store i32 %add, i32* %ng, align 4
  %60 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %tobool50 = icmp ne %struct.subvq_t* %60, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.62

land.lhs.true.51:                                 ; preds = %if.else.45
  %61 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %svq4svq52 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %61, i32 0, i32 26
  %62 = load i32, i32* %svq4svq52, align 4
  %tobool53 = icmp ne i32 %62, 0
  br i1 %tobool53, label %if.then.54, label %if.else.62

if.then.54:                                       ; preds = %land.lhs.true.51
  %63 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %64 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %65 = load i32, i32* %s.addr, align 4
  %66 = load i32, i32* %s.addr, align 4
  %idxprom55 = sext i32 %66 to i64
  %67 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau56 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %67, i32 0, i32 3
  %68 = load %struct.mgau_t*, %struct.mgau_t** %mgau56, align 8
  %arrayidx57 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %68, i64 %idxprom55
  %n_comp58 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx57, i32 0, i32 0
  %69 = load i32, i32* %n_comp58, align 4
  %call59 = call i32 @subvq_mgau_eval(%struct.mgau_model_t* %63, %struct.subvq_t* %64, i32 %65, i32 %69, i32* null)
  %70 = load i32, i32* %s.addr, align 4
  %idxprom60 = sext i32 %70 to i64
  %71 = load i32*, i32** %senscr.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %71, i64 %idxprom60
  store i32 %call59, i32* %arrayidx61, align 4
  br label %if.end.66

if.else.62:                                       ; preds = %land.lhs.true.51, %if.else.45
  %72 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %73 = load i32, i32* %s.addr, align 4
  %74 = load float*, float** %feat.addr, align 8
  %call63 = call i32 @mgau_eval(%struct.mgau_model_t* %72, i32 %73, i32* null, float* %74)
  %75 = load i32, i32* %s.addr, align 4
  %idxprom64 = sext i32 %75 to i64
  %76 = load i32*, i32** %senscr.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %76, i64 %idxprom64
  store i32 %call63, i32* %arrayidx65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.62, %if.then.54
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.44
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.38
  %77 = load i32, i32* %ng, align 4
  ret i32 %77
}

declare i32 @gs_mgau_shortlist(%struct.gs_s*, i32, i32, float*, i32) #1

declare i32 @subvq_mgau_shortlist(%struct.subvq_t*, i32, i32, i32) #1

declare i32 @subvq_mgau_eval(%struct.mgau_model_t*, %struct.subvq_t*, i32, i32, i32*) #1

declare i32 @mgau_eval(%struct.mgau_model_t*, i32, i32*, float*) #1

; Function Attrs: nounwind uwtable
define void @approx_cont_mgau_ci_eval(%struct.mgau_model_t* %g, float* %feat, i32* %ci_senscr, %struct.kb_t* %kb) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %feat.addr = alloca float*, align 8
  %ci_senscr.addr = alloca i32*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %s = alloca i32, align 4
  %mdef = alloca %struct.mdef_t*, align 8
  %cd2cisen = alloca i16*, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store float* %feat, float** %feat.addr, align 8
  store i32* %ci_senscr, i32** %ci_senscr.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 0
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mdef1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %1, i32 0, i32 1
  %2 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  store %struct.mdef_t* %2, %struct.mdef_t** %mdef, align 8
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %cd2cisen2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %3, i32 0, i32 11
  %4 = load i16*, i16** %cd2cisen2, align 8
  store i16* %4, i16** %cd2cisen, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %s, align 4
  %6 = load i32, i32* %s, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %cd2cisen, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %8 to i32
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %10 = load i32, i32* %s, align 4
  %11 = load float*, float** %feat.addr, align 8
  %call = call i32 @mgau_eval(%struct.mgau_model_t* %9, i32 %10, i32* null, float* %11)
  %12 = load i32, i32* %s, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32*, i32** %ci_senscr.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom4
  store i32 %call, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %s, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @approx_cont_mgau_frame_eval(%struct.mgau_model_t* %g, %struct.gs_s* %gs, %struct.subvq_t* %svq, i32 %svq_beam, float* %feat, i32* %sen_active, i32* %senscr, i32* %cache_ci_senscr, %struct.kb_t* %kb, i32 %frame) #0 {
entry:
  %g.addr = alloca %struct.mgau_model_t*, align 8
  %gs.addr = alloca %struct.gs_s*, align 8
  %svq.addr = alloca %struct.subvq_t*, align 8
  %svq_beam.addr = alloca i32, align 4
  %feat.addr = alloca float*, align 8
  %sen_active.addr = alloca i32*, align 8
  %senscr.addr = alloca i32*, align 8
  %cache_ci_senscr.addr = alloca i32*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %frame.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %best = alloca i32, align 4
  %ns = alloca i32, align 4
  %ng = alloca i32, align 4
  %best_cid = alloca i32, align 4
  %is_skip = alloca i32, align 4
  %is_compute = alloca i32, align 4
  %pbest = alloca i32, align 4
  %is_ciphone = alloca i32, align 4
  %mdef = alloca %struct.mdef_t*, align 8
  %cd2cisen = alloca i16*, align 8
  store %struct.mgau_model_t* %g, %struct.mgau_model_t** %g.addr, align 8
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  store %struct.subvq_t* %svq, %struct.subvq_t** %svq.addr, align 8
  store i32 %svq_beam, i32* %svq_beam.addr, align 4
  store float* %feat, float** %feat.addr, align 8
  store i32* %sen_active, i32** %sen_active.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  store i32* %cache_ci_senscr, i32** %cache_ci_senscr.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 %frame, i32* %frame.addr, align 4
  store i32 -2147483648, i32* %best, align 4
  store i32 -2147483648, i32* %pbest, align 4
  store i32 0, i32* %ns, align 4
  store i32 0, i32* %ng, align 4
  store i32 -1, i32* %best_cid, align 4
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_ovrhd = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 42
  call void @ptmr_start(%struct.ptmr_t* %tm_ovrhd)
  %1 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %tobool = icmp ne %struct.gs_s* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %3 = load float*, float** %feat.addr, align 8
  %call = call i32 @gc_compute_closest_cw(%struct.gs_s* %2, float* %3)
  store i32 %call, i32* %best_cid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %tobool1 = icmp ne %struct.subvq_t* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %6 = load float*, float** %feat.addr, align 8
  call void @subvq_gautbl_eval_logs3(%struct.subvq_t* %5, float* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_ovrhd4 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %7, i32 0, i32 42
  call void @ptmr_stop(%struct.ptmr_t* %tm_ovrhd4)
  %8 = load i32, i32* %frame.addr, align 4
  %9 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ds_ratio = getelementptr inbounds %struct.kb_t, %struct.kb_t* %9, i32 0, i32 23
  %10 = load i32, i32* %ds_ratio, align 4
  %11 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cond_ds = getelementptr inbounds %struct.kb_t, %struct.kb_t* %11, i32 0, i32 24
  %12 = load i32, i32* %cond_ds, align 4
  %13 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bstcid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %13, i32 0, i32 13
  %14 = load i32, i32* %rec_bstcid, align 4
  %15 = load i32, i32* %best_cid, align 4
  %cmp = icmp eq i32 %14, %15
  %conv = zext i1 %cmp to i32
  %16 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %skip_count = getelementptr inbounds %struct.kb_t, %struct.kb_t* %16, i32 0, i32 18
  %call5 = call i32 @approx_isskip(i32 %8, i32 %10, i32 %12, i32 %conv, i32* %skip_count)
  store i32 %call5, i32* %is_skip, align 4
  %17 = load i32, i32* %best_cid, align 4
  %18 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bstcid6 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %18, i32 0, i32 13
  store i32 %17, i32* %rec_bstcid6, align 4
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 0
  %20 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mdef7 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %20, i32 0, i32 1
  %21 = load %struct.mdef_t*, %struct.mdef_t** %mdef7, align 8
  store %struct.mdef_t* %21, %struct.mdef_t** %mdef, align 8
  %22 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %cd2cisen8 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %22, i32 0, i32 11
  %23 = load i16*, i16** %cd2cisen8, align 8
  store i16* %23, i16** %cd2cisen, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %if.end.3
  %24 = load i32, i32* %s, align 4
  %25 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %25, i32 0, i32 0
  %26 = load i32, i32* %n_mgau, align 4
  %cmp9 = icmp slt i32 %24, %26
  br i1 %cmp9, label %for.body, label %for.end.138

for.body:                                         ; preds = %for.cond
  %27 = load i32*, i32** %sen_active.addr, align 8
  %tobool11 = icmp ne i32* %27, null
  br i1 %tobool11, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.body
  %28 = load i32, i32* %s, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** %sen_active.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4
  %tobool12 = icmp ne i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %31 = phi i1 [ true, %for.body ], [ %tobool12, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, i32* %is_compute, align 4
  %32 = load i32, i32* %s, align 4
  %33 = load i32, i32* %s, align 4
  %idxprom13 = sext i32 %33 to i64
  %34 = load i16*, i16** %cd2cisen, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %34, i64 %idxprom13
  %35 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %35 to i32
  %cmp16 = icmp eq i32 %32, %conv15
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %is_ciphone, align 4
  %36 = load i32, i32* %is_skip, align 4
  %tobool18 = icmp ne i32 %36, 0
  br i1 %tobool18, label %if.else.80, label %if.then.19

if.then.19:                                       ; preds = %lor.end
  %37 = load i32, i32* %is_ciphone, align 4
  %tobool20 = icmp ne i32 %37, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.19
  %38 = load i32, i32* %s, align 4
  %idxprom22 = sext i32 %38 to i64
  %39 = load i32*, i32** %cache_ci_senscr.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %39, i64 %idxprom22
  %40 = load i32, i32* %arrayidx23, align 4
  %41 = load i32, i32* %s, align 4
  %idxprom24 = sext i32 %41 to i64
  %42 = load i32*, i32** %senscr.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %42, i64 %idxprom24
  store i32 %40, i32* %arrayidx25, align 4
  %43 = load i32, i32* %pbest, align 4
  %44 = load i32, i32* %s, align 4
  %idxprom26 = sext i32 %44 to i64
  %45 = load i32*, i32** %senscr.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %45, i64 %idxprom26
  %46 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp slt i32 %43, %46
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.21
  %47 = load i32, i32* %s, align 4
  %idxprom31 = sext i32 %47 to i64
  %48 = load i32*, i32** %senscr.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %48, i64 %idxprom31
  %49 = load i32, i32* %arrayidx32, align 4
  store i32 %49, i32* %pbest, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.21
  %50 = load i32, i32* %best, align 4
  %51 = load i32, i32* %s, align 4
  %idxprom34 = sext i32 %51 to i64
  %52 = load i32*, i32** %senscr.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %52, i64 %idxprom34
  %53 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp slt i32 %50, %53
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.33
  %54 = load i32, i32* %s, align 4
  %idxprom39 = sext i32 %54 to i64
  %55 = load i32*, i32** %senscr.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %55, i64 %idxprom39
  %56 = load i32, i32* %arrayidx40, align 4
  store i32 %56, i32* %best, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.33
  %57 = load i32, i32* %s, align 4
  %idxprom42 = sext i32 %57 to i64
  %58 = load i32*, i32** %sen_active.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %58, i64 %idxprom42
  store i32 1, i32* %arrayidx43, align 4
  %59 = load i32, i32* %s, align 4
  %idxprom44 = sext i32 %59 to i64
  %60 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %mgau = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %60, i32 0, i32 3
  %61 = load %struct.mgau_t*, %struct.mgau_t** %mgau, align 8
  %arrayidx45 = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %61, i64 %idxprom44
  %n_comp = getelementptr inbounds %struct.mgau_t, %struct.mgau_t* %arrayidx45, i32 0, i32 0
  %62 = load i32, i32* %n_comp, align 4
  %63 = load i32, i32* %ng, align 4
  %add = add nsw i32 %63, %62
  store i32 %add, i32* %ng, align 4
  %64 = load i32, i32* %ns, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %ns, align 4
  br label %if.end.75

if.else:                                          ; preds = %if.then.19
  %65 = load i32, i32* %is_compute, align 4
  %tobool46 = icmp ne i32 %65, 0
  br i1 %tobool46, label %if.then.47, label %if.end.74

if.then.47:                                       ; preds = %if.else
  %66 = load i32, i32* %pbest, align 4
  %67 = load i32, i32* %s, align 4
  %idxprom48 = sext i32 %67 to i64
  %68 = load i16*, i16** %cd2cisen, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %68, i64 %idxprom48
  %69 = load i16, i16* %arrayidx49, align 2
  %idxprom50 = sext i16 %69 to i64
  %70 = load i32*, i32** %senscr.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %70, i64 %idxprom50
  %71 = load i32, i32* %arrayidx51, align 4
  %sub = sub nsw i32 %66, %71
  %72 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ci_pbeam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %72, i32 0, i32 27
  %73 = load i32, i32* %ci_pbeam, align 4
  %cmp52 = icmp slt i32 %sub, %73
  br i1 %cmp52, label %if.then.54, label %if.else.58

if.then.54:                                       ; preds = %if.then.47
  %74 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %75 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %76 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %77 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %78 = load i32, i32* %s, align 4
  %79 = load i32*, i32** %senscr.addr, align 8
  %80 = load float*, float** %feat.addr, align 8
  %81 = load i32, i32* %best_cid, align 4
  %82 = load i32, i32* %svq_beam.addr, align 4
  %call55 = call i32 @approx_mgau_eval(%struct.gs_s* %74, %struct.subvq_t* %75, %struct.mgau_model_t* %76, %struct.kb_t* %77, i32 %78, i32* %79, float* %80, i32 %81, i32 %82)
  %83 = load i32, i32* %ng, align 4
  %add56 = add nsw i32 %83, %call55
  store i32 %add56, i32* %ng, align 4
  %84 = load i32, i32* %ns, align 4
  %inc57 = add nsw i32 %84, 1
  store i32 %inc57, i32* %ns, align 4
  br label %if.end.65

if.else.58:                                       ; preds = %if.then.47
  %85 = load i32, i32* %s, align 4
  %idxprom59 = sext i32 %85 to i64
  %86 = load i16*, i16** %cd2cisen, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %86, i64 %idxprom59
  %87 = load i16, i16* %arrayidx60, align 2
  %idxprom61 = sext i16 %87 to i64
  %88 = load i32*, i32** %senscr.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %88, i64 %idxprom61
  %89 = load i32, i32* %arrayidx62, align 4
  %90 = load i32, i32* %s, align 4
  %idxprom63 = sext i32 %90 to i64
  %91 = load i32*, i32** %senscr.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %91, i64 %idxprom63
  store i32 %89, i32* %arrayidx64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.58, %if.then.54
  %92 = load i32, i32* %best, align 4
  %93 = load i32, i32* %s, align 4
  %idxprom66 = sext i32 %93 to i64
  %94 = load i32*, i32** %senscr.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %94, i64 %idxprom66
  %95 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp slt i32 %92, %95
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end.65
  %96 = load i32, i32* %s, align 4
  %idxprom71 = sext i32 %96 to i64
  %97 = load i32*, i32** %senscr.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %97, i64 %idxprom71
  %98 = load i32, i32* %arrayidx72, align 4
  store i32 %98, i32* %best, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end.65
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.41
  %99 = load i32, i32* %s, align 4
  %idxprom76 = sext i32 %99 to i64
  %100 = load i32*, i32** %sen_active.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %100, i64 %idxprom76
  %101 = load i32, i32* %arrayidx77, align 4
  %102 = load i32, i32* %s, align 4
  %idxprom78 = sext i32 %102 to i64
  %103 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_sen_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %103, i32 0, i32 12
  %104 = load i32*, i32** %rec_sen_active, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %104, i64 %idxprom78
  store i32 %101, i32* %arrayidx79, align 4
  br label %if.end.135

if.else.80:                                       ; preds = %lor.end
  %105 = load i32, i32* %is_compute, align 4
  %tobool81 = icmp ne i32 %105, 0
  br i1 %tobool81, label %if.then.82, label %if.end.134

if.then.82:                                       ; preds = %if.else.80
  %106 = load i32, i32* %s, align 4
  %idxprom83 = sext i32 %106 to i64
  %107 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_sen_active84 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %107, i32 0, i32 12
  %108 = load i32*, i32** %rec_sen_active84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %108, i64 %idxprom83
  %109 = load i32, i32* %arrayidx85, align 4
  %tobool86 = icmp ne i32 %109, 0
  br i1 %tobool86, label %if.then.87, label %if.else.92

if.then.87:                                       ; preds = %if.then.82
  %110 = load i32, i32* %s, align 4
  %idxprom88 = sext i32 %110 to i64
  %111 = load i32*, i32** %senscr.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %111, i64 %idxprom88
  %112 = load i32, i32* %arrayidx89, align 4
  %113 = load i32, i32* %s, align 4
  %idxprom90 = sext i32 %113 to i64
  %114 = load i32*, i32** %senscr.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %114, i64 %idxprom90
  store i32 %112, i32* %arrayidx91, align 4
  br label %if.end.133

if.else.92:                                       ; preds = %if.then.82
  %115 = load i32, i32* %s, align 4
  %idxprom93 = sext i32 %115 to i64
  %116 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_sen_active94 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %116, i32 0, i32 12
  %117 = load i32*, i32** %rec_sen_active94, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %117, i64 %idxprom93
  store i32 1, i32* %arrayidx95, align 4
  %118 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %119 = load %struct.subvq_t*, %struct.subvq_t** %svq.addr, align 8
  %120 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %121 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %122 = load i32, i32* %s, align 4
  %123 = load i32*, i32** %senscr.addr, align 8
  %124 = load float*, float** %feat.addr, align 8
  %125 = load i32, i32* %best_cid, align 4
  %126 = load i32, i32* %svq_beam.addr, align 4
  %call96 = call i32 @approx_mgau_eval(%struct.gs_s* %118, %struct.subvq_t* %119, %struct.mgau_model_t* %120, %struct.kb_t* %121, i32 %122, i32* %123, float* %124, i32 %125, i32 %126)
  %127 = load i32, i32* %ng, align 4
  %add97 = add nsw i32 %127, %call96
  store i32 %add97, i32* %ng, align 4
  %128 = load i32, i32* %ns, align 4
  %inc98 = add nsw i32 %128, 1
  store i32 %inc98, i32* %ns, align 4
  %129 = load i32, i32* %s, align 4
  %idxprom99 = sext i32 %129 to i64
  %130 = load i32*, i32** %senscr.addr, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %130, i64 %idxprom99
  %131 = load i32, i32* %arrayidx100, align 4
  %132 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bst_senscr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %132, i32 0, i32 14
  %133 = load i32, i32* %rec_bst_senscr, align 4
  %cmp101 = icmp sgt i32 %131, %133
  br i1 %cmp101, label %if.then.103, label %if.end.128

if.then.103:                                      ; preds = %if.else.92
  call void @_E__pr_info_header(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i64 328, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %t, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %if.then.103
  %134 = load i32, i32* %t, align 4
  %135 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau105 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %135, i32 0, i32 0
  %136 = load i32, i32* %n_mgau105, align 4
  %cmp106 = icmp slt i32 %134, %136
  br i1 %cmp106, label %for.body.108, label %for.end

for.body.108:                                     ; preds = %for.cond.104
  %137 = load i32, i32* %t, align 4
  %idxprom109 = sext i32 %137 to i64
  %138 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_sen_active110 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %138, i32 0, i32 12
  %139 = load i32*, i32** %rec_sen_active110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %139, i64 %idxprom109
  %140 = load i32, i32* %arrayidx111, align 4
  %tobool112 = icmp ne i32 %140, 0
  br i1 %tobool112, label %land.lhs.true, label %if.end.123

land.lhs.true:                                    ; preds = %for.body.108
  %141 = load i32, i32* %t, align 4
  %142 = load i32, i32* %s, align 4
  %cmp113 = icmp ne i32 %141, %142
  br i1 %cmp113, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %land.lhs.true
  %143 = load i32, i32* %s, align 4
  %idxprom116 = sext i32 %143 to i64
  %144 = load i32*, i32** %senscr.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %144, i64 %idxprom116
  %145 = load i32, i32* %arrayidx117, align 4
  %146 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bst_senscr118 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %146, i32 0, i32 14
  %147 = load i32, i32* %rec_bst_senscr118, align 4
  %sub119 = sub nsw i32 %145, %147
  %148 = load i32, i32* %t, align 4
  %idxprom120 = sext i32 %148 to i64
  %149 = load i32*, i32** %senscr.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %149, i64 %idxprom120
  %150 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %150, %sub119
  store i32 %sub122, i32* %arrayidx121, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.115, %land.lhs.true, %for.body.108
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %151 = load i32, i32* %t, align 4
  %inc124 = add nsw i32 %151, 1
  store i32 %inc124, i32* %t, align 4
  br label %for.cond.104

for.end:                                          ; preds = %for.cond.104
  %152 = load i32, i32* %s, align 4
  %idxprom125 = sext i32 %152 to i64
  %153 = load i32*, i32** %senscr.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %153, i64 %idxprom125
  %154 = load i32, i32* %arrayidx126, align 4
  %155 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bst_senscr127 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %155, i32 0, i32 14
  store i32 %154, i32* %rec_bst_senscr127, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %for.end, %if.else.92
  %156 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %rec_bst_senscr129 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %156, i32 0, i32 14
  %157 = load i32, i32* %rec_bst_senscr129, align 4
  %158 = load i32, i32* %s, align 4
  %idxprom130 = sext i32 %158 to i64
  %159 = load i32*, i32** %senscr.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %159, i64 %idxprom130
  %160 = load i32, i32* %arrayidx131, align 4
  %sub132 = sub nsw i32 %160, %157
  store i32 %sub132, i32* %arrayidx131, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.128, %if.then.87
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.else.80
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.75
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %161 = load i32, i32* %s, align 4
  %inc137 = add nsw i32 %161, 1
  store i32 %inc137, i32* %s, align 4
  br label %for.cond

for.end.138:                                      ; preds = %for.cond
  %162 = load i32, i32* %is_skip, align 4
  %tobool139 = icmp ne i32 %162, 0
  br i1 %tobool139, label %if.else.157, label %if.then.140

if.then.140:                                      ; preds = %for.end.138
  store i32 0, i32* %s, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.154, %if.then.140
  %163 = load i32, i32* %s, align 4
  %164 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %n_mgau142 = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %164, i32 0, i32 0
  %165 = load i32, i32* %n_mgau142, align 4
  %cmp143 = icmp slt i32 %163, %165
  br i1 %cmp143, label %for.body.145, label %for.end.156

for.body.145:                                     ; preds = %for.cond.141
  %166 = load i32, i32* %s, align 4
  %idxprom146 = sext i32 %166 to i64
  %167 = load i32*, i32** %sen_active.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %167, i64 %idxprom146
  %168 = load i32, i32* %arrayidx147, align 4
  %tobool148 = icmp ne i32 %168, 0
  br i1 %tobool148, label %if.then.149, label %if.end.153

if.then.149:                                      ; preds = %for.body.145
  %169 = load i32, i32* %best, align 4
  %170 = load i32, i32* %s, align 4
  %idxprom150 = sext i32 %170 to i64
  %171 = load i32*, i32** %senscr.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %171, i64 %idxprom150
  %172 = load i32, i32* %arrayidx151, align 4
  %sub152 = sub nsw i32 %172, %169
  store i32 %sub152, i32* %arrayidx151, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.149, %for.body.145
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %173 = load i32, i32* %s, align 4
  %inc155 = add nsw i32 %173, 1
  store i32 %inc155, i32* %s, align 4
  br label %for.cond.141

for.end.156:                                      ; preds = %for.cond.141
  br label %if.end.158

if.else.157:                                      ; preds = %for.end.138
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.157, %for.end.156
  %174 = load i32, i32* %ns, align 4
  %175 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %frm_sen_eval = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %175, i32 0, i32 5
  store i32 %174, i32* %frm_sen_eval, align 4
  %176 = load i32, i32* %ng, align 4
  %177 = load %struct.mgau_model_t*, %struct.mgau_model_t** %g.addr, align 8
  %frm_gau_eval = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %177, i32 0, i32 6
  store i32 %176, i32* %frm_gau_eval, align 4
  %178 = load i32, i32* %best, align 4
  ret i32 %178
}

declare void @ptmr_start(%struct.ptmr_t*) #1

declare i32 @gc_compute_closest_cw(%struct.gs_s*, float*) #1

declare void @subvq_gautbl_eval_logs3(%struct.subvq_t*, float*) #1

declare void @ptmr_stop(%struct.ptmr_t*) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
