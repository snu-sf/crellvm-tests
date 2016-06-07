; ModuleID = 'utt.c'
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
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }

@tot_considered = global i64 0, align 8
@confp_open = global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s%s S 0 T %d A %d L %d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" %d %d %d %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"-bptbldir\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s/%s.bpt\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"utt.c\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"fopen(%s,w) failed; using stdout\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\0ABacktrace(%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%6s %5s %5s %11s %8s %4s\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LatID\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"SFrm\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"EFrm\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"AScr\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"LScr\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"%6d %5d %5d %11d %8d %4d %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"       %5d %5d %11d %8d (Total)\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"\0AFWDVIT: \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"'%s' (%s)\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"FWDXCT: \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"considered.out\00", align 1
@confp = common global %struct._IO_FILE* null, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"fopen considered.out failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"%22d considered for utterance %s\0A\00", align 1
@considered = external global i64, align 8
@.str.31 = private unnamed_addr constant [11 x i8] c"-outlatdir\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"-latext\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Writing lattice file: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"fopen_comp (%s,w) failed\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"# getcwd: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"-logbase\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"# -logbase %e\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"# -dict %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"-dict\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"-fdict\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"# -fdict %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"# -lm %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"# -mdef %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"-mdef\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"# -mean %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"-mean\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"# -var %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"-var\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"# -mixw %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"-mixw\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"# -tmat %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"-tmat\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Frames %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"-outlatoldfmt\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"%s: No recognition\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [131 x i8] c"%4d frm;  %4d sen, %5d gau/fr, Sen %4.2f CPU %4.2f Clk [Ovrhd %4.2f CPU %4.2f Clk];  %5d hmm, %3d wd/fr, %4.2f CPU %4.2f Clk (%s)\0A\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"HMMHist[0..%d](%s):\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" %d(%d)\00", align 1
@utt_word_trans.bs = internal global i32* null, align 8
@utt_word_trans.bv = internal global i32* null, align 8
@utt_word_trans.epl = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [5 x i8] c"-epl\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"-pheurtype\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"Fr %d Lextree %d #HMM %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [63 x i8] c"***ERROR*** Fr %d, best HMM score > 0 (%d); int32 wraparound?\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @matchseg_write(%struct._IO_FILE* %fp, %struct.kb_t* %kb, %struct.gnode_s* %hyp, i8* %hdr) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %hyp.addr = alloca %struct.gnode_s*, align 8
  %hdr.addr = alloca i8*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %h = alloca %struct.hyp_t*, align 8
  %ascr = alloca i32, align 4
  %lscr = alloca i32, align 4
  %dict = alloca %struct.dict_t*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store %struct.gnode_s* %hyp, %struct.gnode_s** %hyp.addr, align 8
  store i8* %hdr, i8** %hdr.addr, align 8
  store i32 0, i32* %ascr, align 4
  store i32 0, i32* %lscr, align 4
  %0 = load %struct.gnode_s*, %struct.gnode_s** %hyp.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %3 = load i8*, i8** %ptr, align 8
  %4 = bitcast i8* %3 to %struct.hyp_t*
  store %struct.hyp_t* %4, %struct.hyp_t** %h, align 8
  %5 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ascr1 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %5, i32 0, i32 4
  %6 = load i32, i32* %ascr1, align 4
  %7 = load i32, i32* %ascr, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %ascr, align 4
  %8 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %lscr2 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %8, i32 0, i32 5
  %9 = load i32, i32* %lscr2, align 4
  %10 = load i32, i32* %lscr, align 4
  %add3 = add nsw i32 %10, %9
  store i32 %add3, i32* %lscr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %11, i32 0, i32 1
  %12 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %12, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %13, i32 0, i32 0
  %14 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict4 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %14, i32 0, i32 2
  %15 = load %struct.dict_t*, %struct.dict_t** %dict4, align 8
  store %struct.dict_t* %15, %struct.dict_t** %dict, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %17 = load i8*, i8** %hdr.addr, align 8
  %tobool5 = icmp ne i8* %17, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %18 = load i8*, i8** %hdr.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 33
  %20 = load i8*, i8** %uttid, align 8
  %21 = load i32, i32* %ascr, align 4
  %22 = load i32, i32* %lscr, align 4
  %add6 = add nsw i32 %21, %22
  %23 = load i32, i32* %ascr, align 4
  %24 = load i32, i32* %lscr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* %cond, i8* %20, i32 %add6, i32 %23, i32 %24)
  %25 = load %struct.gnode_s*, %struct.gnode_s** %hyp.addr, align 8
  store %struct.gnode_s* %25, %struct.gnode_s** %gn, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.18, %cond.end
  %26 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool8 = icmp ne %struct.gnode_s* %26, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.7
  %27 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next9 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %27, i32 0, i32 1
  %28 = load %struct.gnode_s*, %struct.gnode_s** %next9, align 8
  %tobool10 = icmp ne %struct.gnode_s* %28, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.7
  %29 = phi i1 [ false, %for.cond.7 ], [ %tobool10, %land.rhs ]
  br i1 %29, label %for.body.11, label %for.end.20

for.body.11:                                      ; preds = %land.end
  %30 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data12 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %30, i32 0, i32 0
  %ptr13 = bitcast %union.anytype_s* %data12 to i8**
  %31 = load i8*, i8** %ptr13, align 8
  %32 = bitcast i8* %31 to %struct.hyp_t*
  store %struct.hyp_t* %32, %struct.hyp_t** %h, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %34 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %sf = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %34, i32 0, i32 2
  %35 = load i32, i32* %sf, align 4
  %36 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ascr14 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %36, i32 0, i32 4
  %37 = load i32, i32* %ascr14, align 4
  %38 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %lscr15 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %38, i32 0, i32 5
  %39 = load i32, i32* %lscr15, align 4
  %40 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %40, i32 0, i32 0
  %41 = load i32, i32* %id, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %42, i32 0, i32 4
  %43 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %43, i64 %idxprom
  %word16 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 0
  %44 = load i8*, i8** %word16, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %35, i32 %37, i32 %39, i8* %44)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.11
  %45 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next19 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %45, i32 0, i32 1
  %46 = load %struct.gnode_s*, %struct.gnode_s** %next19, align 8
  store %struct.gnode_s* %46, %struct.gnode_s** %gn, align 8
  br label %for.cond.7

for.end.20:                                       ; preds = %land.end
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %48 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %48, i32 0, i32 8
  %49 = load i32, i32* %nfr, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* %50)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @match_write(%struct._IO_FILE* %fp, %struct.kb_t* %kb, %struct.gnode_s* %hyp, i8* %hdr) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %hyp.addr = alloca %struct.gnode_s*, align 8
  %hdr.addr = alloca i8*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %h = alloca %struct.hyp_t*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %counter = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store %struct.gnode_s* %hyp, %struct.gnode_s** %hyp.addr, align 8
  store i8* %hdr, i8** %hdr.addr, align 8
  store i32 0, i32* %counter, align 4
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 0
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %1, i32 0, i32 2
  %2 = load %struct.dict_t*, %struct.dict_t** %dict1, align 8
  store %struct.dict_t* %2, %struct.dict_t** %dict, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %hyp.addr, align 8
  store %struct.gnode_s* %3, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  %tobool2 = icmp ne %struct.gnode_s* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %8, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %9 = load i8*, i8** %ptr, align 8
  %10 = bitcast i8* %9 to %struct.hyp_t*
  store %struct.hyp_t* %10, %struct.hyp_t** %h, align 8
  %11 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %12 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %12, i32 0, i32 0
  %13 = load i32, i32* %id, align 4
  %call = call i32 @dict_filler_word(%struct.dict_t* %11, i32 %13)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id4 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %14, i32 0, i32 0
  %15 = load i32, i32* %id4, align 4
  %16 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %16, i32 0, i32 12
  %17 = load i32, i32* %finishwid, align 4
  %cmp = icmp ne i32 %15, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id5 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %19, i32 0, i32 0
  %20 = load i32, i32* %id5, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %21, i32 0, i32 4
  %22 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %22, i64 %idxprom
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 4
  %23 = load i32, i32* %basewid, align 4
  %idxprom6 = sext i32 %23 to i64
  %24 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word7 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %24, i32 0, i32 4
  %25 = load %struct.dictword_t*, %struct.dictword_t** %word7, align 8
  %arrayidx8 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %25, i64 %idxprom6
  %word9 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx8, i32 0, i32 0
  %26 = load i8*, i8** %word9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %27 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %counter, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next11 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %28, i32 0, i32 1
  %29 = load %struct.gnode_s*, %struct.gnode_s** %next11, align 8
  store %struct.gnode_s* %29, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %30 = load i32, i32* %counter, align 4
  %cmp12 = icmp eq i32 %30, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %for.end
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %for.end
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %33 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %33, i32 0, i32 33
  %34 = load i8*, i8** %uttid, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 @fflush(%struct._IO_FILE* %35)
  ret void
}

declare i32 @dict_filler_word(%struct.dict_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @utt_begin(%struct.kb_t* %kb) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %kbc = alloca %struct.kbcore_t*, align 8
  %n = alloca i32, align 4
  %pred = alloca i32, align 4
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 0
  %1 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  store %struct.kbcore_t* %1, %struct.kbcore_t** %kbc, align 8
  %2 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %2, i32 0, i32 6
  %3 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %4 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %call = call i32 @vithist_utt_begin(%struct.vithist_t* %3, %struct.kbcore_t* %4)
  store i32 %call, i32* %pred, align 4
  %5 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %5, i32 0, i32 2
  %6 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree, align 8
  %arrayidx = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %6, i64 0
  %7 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx, align 8
  %n_next_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %7, i32 0, i32 8
  %8 = load i32, i32* %n_next_active, align 4
  store i32 %8, i32* %n, align 4
  %9 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree1 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %9, i32 0, i32 2
  %10 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree1, align 8
  %arrayidx2 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %10, i64 0
  %11 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx2, align 8
  %12 = load %struct.kbcore_t*, %struct.kbcore_t** %kbc, align 8
  %mdef = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %12, i32 0, i32 1
  %13 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %sil = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %13, i32 0, i32 14
  %14 = load i8, i8* %sil, align 1
  %15 = load i32, i32* %pred, align 4
  %16 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %16, i32 0, i32 22
  %17 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %hmm = getelementptr inbounds %struct.beam_t, %struct.beam_t* %17, i32 0, i32 1
  %18 = load i32, i32* %hmm, align 4
  call void @lextree_enter(%struct.lextree_t* %11, i8 signext %14, i32 -1, i32 0, i32 %15, i32 %18)
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 4
  %20 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %arrayidx3 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %20, i64 0
  %21 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx3, align 8
  %n_next_active4 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %21, i32 0, i32 8
  %22 = load i32, i32* %n_next_active4, align 4
  store i32 %22, i32* %n, align 4
  %23 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree5 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %23, i32 0, i32 4
  %24 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree5, align 8
  %arrayidx6 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %24, i64 0
  %25 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx6, align 8
  %26 = load i32, i32* %pred, align 4
  %27 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam7 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %27, i32 0, i32 22
  %28 = load %struct.beam_t*, %struct.beam_t** %beam7, align 8
  %hmm8 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %28, i32 0, i32 1
  %29 = load i32, i32* %hmm8, align 4
  call void @lextree_enter(%struct.lextree_t* %25, i8 signext -1, i32 -1, i32 0, i32 %26, i32 %29)
  %30 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextrans = getelementptr inbounds %struct.kb_t, %struct.kb_t* %30, i32 0, i32 5
  store i32 1, i32* %n_lextrans, align 4
  %31 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  call void @kb_lextree_active_swap(%struct.kb_t* %31)
  ret void
}

declare i32 @vithist_utt_begin(%struct.vithist_t*, %struct.kbcore_t*) #1

declare void @lextree_enter(%struct.lextree_t*, i8 signext, i32, i32, i32, i32) #1

declare void @kb_lextree_active_swap(%struct.kb_t*) #1

; Function Attrs: nounwind uwtable
define void @utt_end(%struct.kb_t* %kb) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %id = alloca i32, align 4
  %ascr = alloca i32, align 4
  %lscr = alloca i32, align 4
  %hyp = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %h = alloca %struct.hyp_t*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %latfp = alloca %struct._IO_FILE*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %i = alloca i32, align 4
  %hyp_strptr = alloca i8*, align 8
  %file = alloca [8192 x i8], align 16
  %str = alloca [16384 x i8], align 16
  %ispipe = alloca i32, align 4
  %logbase = alloca double, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp, align 8
  %1 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %1, i32 0, i32 0
  %2 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %2, i32 0, i32 2
  %3 = load %struct.dict_t*, %struct.dict_t** %dict1, align 8
  store %struct.dict_t* %3, %struct.dict_t** %dict, align 8
  %4 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  call void @kb_freehyps(%struct.kb_t* %4)
  %5 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %5, i32 0, i32 6
  %6 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %7 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore2 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %7, i32 0, i32 0
  %8 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore2, align 8
  %call = call i32 @vithist_utt_end(%struct.vithist_t* %6, %struct.kbcore_t* %8)
  store i32 %call, i32* %id, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.173

if.then:                                          ; preds = %entry
  %call3 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %file, i32 0, i32 0
  %call5 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %9 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid = getelementptr inbounds %struct.kb_t, %struct.kb_t* %9, i32 0, i32 33
  %10 = load i8*, i8** %uttid, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %call5, i8* %10) #4
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %file, i32 0, i32 0
  %call8 = call %struct._IO_FILE* @fopen(i8* %arraydecay7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %latfp, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.4
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %arraydecay11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %file, i32 0, i32 0
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay11)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %latfp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.4
  %12 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist12 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %12, i32 0, i32 6
  %13 = load %struct.vithist_t*, %struct.vithist_t** %vithist12, align 8
  %14 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore13 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %14, i32 0, i32 0
  %15 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore13, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  call void @vithist_dump(%struct.vithist_t* %13, i32 -1, %struct.kbcore_t* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp14 = icmp ne %struct._IO_FILE* %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %20 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist19 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %20, i32 0, i32 6
  %21 = load %struct.vithist_t*, %struct.vithist_t** %vithist19, align 8
  %22 = load i32, i32* %id, align 4
  %call20 = call %struct.gnode_s* @vithist_backtrace(%struct.vithist_t* %21, i32 %22)
  store %struct.gnode_s* %call20, %struct.gnode_s** %hyp, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %24 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid21 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %24, i32 0, i32 33
  %25 = load i8*, i8** %uttid21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %ascr, align 4
  store i32 0, i32* %lscr, align 4
  %27 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  store %struct.gnode_s* %27, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %28 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool24 = icmp ne %struct.gnode_s* %28, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %29, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %30 = load i8*, i8** %ptr, align 8
  %31 = bitcast i8* %30 to %struct.hyp_t*
  store %struct.hyp_t* %31, %struct.hyp_t** %h, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %33 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %vhid = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %33, i32 0, i32 1
  %34 = load i32, i32* %vhid, align 4
  %35 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %sf = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %35, i32 0, i32 2
  %36 = load i32, i32* %sf, align 4
  %37 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ef = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %37, i32 0, i32 3
  %38 = load i32, i32* %ef, align 4
  %39 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ascr25 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %39, i32 0, i32 4
  %40 = load i32, i32* %ascr25, align 4
  %41 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %lscr26 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %41, i32 0, i32 5
  %42 = load i32, i32* %lscr26, align 4
  %43 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %type = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %43, i32 0, i32 6
  %44 = load i32, i32* %type, align 4
  %45 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id27 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %45, i32 0, i32 0
  %46 = load i32, i32* %id27, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %47, i32 0, i32 4
  %48 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %48, i64 %idxprom
  %word28 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 0
  %49 = load i8*, i8** %word28, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i8* %49)
  %50 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %ascr30 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %50, i32 0, i32 4
  %51 = load i32, i32* %ascr30, align 4
  %52 = load i32, i32* %ascr, align 4
  %add = add nsw i32 %52, %51
  store i32 %add, i32* %ascr, align 4
  %53 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %lscr31 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %53, i32 0, i32 5
  %54 = load i32, i32* %lscr31, align 4
  %55 = load i32, i32* %lscr, align 4
  %add32 = add nsw i32 %55, %54
  store i32 %add32, i32* %lscr, align 4
  %56 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_seglen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %56, i32 0, i32 51
  %57 = load i32, i32* %hyp_seglen, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %hyp_seglen, align 4
  %58 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %59 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id33 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %59, i32 0, i32 0
  %60 = load i32, i32* %id33, align 4
  %call34 = call i32 @dict_filler_word(%struct.dict_t* %58, i32 %60)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.51, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %61 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id36 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %61, i32 0, i32 0
  %62 = load i32, i32* %id36, align 4
  %63 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %63, i32 0, i32 12
  %64 = load i32, i32* %finishwid, align 4
  %cmp37 = icmp ne i32 %62, %64
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %land.lhs.true
  %65 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id39 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %65, i32 0, i32 0
  %66 = load i32, i32* %id39, align 4
  %idxprom40 = sext i32 %66 to i64
  %67 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word41 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %67, i32 0, i32 4
  %68 = load %struct.dictword_t*, %struct.dictword_t** %word41, align 8
  %arrayidx42 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %68, i64 %idxprom40
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx42, i32 0, i32 4
  %69 = load i32, i32* %basewid, align 4
  %idxprom43 = sext i32 %69 to i64
  %70 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word44 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %70, i32 0, i32 4
  %71 = load %struct.dictword_t*, %struct.dictword_t** %word44, align 8
  %arrayidx45 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %71, i64 %idxprom43
  %word46 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx45, i32 0, i32 0
  %72 = load i8*, i8** %word46, align 8
  %call47 = call i64 @strlen(i8* %72) #5
  %add48 = add i64 %call47, 1
  %73 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_strlen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %73, i32 0, i32 53
  %74 = load i32, i32* %hyp_strlen, align 4
  %conv = sext i32 %74 to i64
  %add49 = add i64 %conv, %add48
  %conv50 = trunc i64 %add49 to i32
  store i32 %conv50, i32* %hyp_strlen, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.38, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %75 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %75, i32 0, i32 1
  %76 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %76, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %78 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %78, i32 0, i32 8
  %79 = load i32, i32* %nfr, align 4
  %80 = load i32, i32* %ascr, align 4
  %81 = load i32, i32* %lscr, align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 %79, i32 %80, i32 %81)
  %82 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_seglen53 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %82, i32 0, i32 51
  %83 = load i32, i32* %hyp_seglen53, align 4
  %conv54 = sext i32 %83 to i64
  %call55 = call i8* @__ckd_calloc__(i64 %conv54, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 234)
  %84 = bitcast i8* %call55 to %struct.hyp_t**
  %85 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_segs = getelementptr inbounds %struct.kb_t, %struct.kb_t* %85, i32 0, i32 50
  store %struct.hyp_t** %84, %struct.hyp_t*** %hyp_segs, align 8
  %86 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_strlen56 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %86, i32 0, i32 53
  %87 = load i32, i32* %hyp_strlen56, align 4
  %add57 = add nsw i32 %87, 1
  %conv58 = sext i32 %add57 to i64
  %call59 = call i8* @__ckd_calloc__(i64 %conv58, i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 235)
  %88 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_str = getelementptr inbounds %struct.kb_t, %struct.kb_t* %88, i32 0, i32 52
  store i8* %call59, i8** %hyp_str, align 8
  %89 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_str60 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %89, i32 0, i32 52
  %90 = load i8*, i8** %hyp_str60, align 8
  store i8* %90, i8** %hyp_strptr, align 8
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  %92 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  store %struct.gnode_s* %92, %struct.gnode_s** %gn, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.93, %for.end
  %93 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool63 = icmp ne %struct.gnode_s* %93, null
  br i1 %tobool63, label %for.body.64, label %for.end.95

for.body.64:                                      ; preds = %for.cond.62
  %94 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data65 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %94, i32 0, i32 0
  %ptr66 = bitcast %union.anytype_s* %data65 to i8**
  %95 = load i8*, i8** %ptr66, align 8
  %96 = bitcast i8* %95 to %struct.hyp_t*
  store %struct.hyp_t* %96, %struct.hyp_t** %h, align 8
  %97 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %98 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %98, 1
  store i32 %inc67, i32* %i, align 4
  %idxprom68 = sext i32 %98 to i64
  %99 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_segs69 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %99, i32 0, i32 50
  %100 = load %struct.hyp_t**, %struct.hyp_t*** %hyp_segs69, align 8
  %arrayidx70 = getelementptr inbounds %struct.hyp_t*, %struct.hyp_t** %100, i64 %idxprom68
  store %struct.hyp_t* %97, %struct.hyp_t** %arrayidx70, align 8
  %101 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %102 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id71 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %102, i32 0, i32 0
  %103 = load i32, i32* %id71, align 4
  %call72 = call i32 @dict_filler_word(%struct.dict_t* %101, i32 %103)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.92, label %land.lhs.true.74

land.lhs.true.74:                                 ; preds = %for.body.64
  %104 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id75 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %104, i32 0, i32 0
  %105 = load i32, i32* %id75, align 4
  %106 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %finishwid76 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %106, i32 0, i32 12
  %107 = load i32, i32* %finishwid76, align 4
  %cmp77 = icmp ne i32 %105, %107
  br i1 %cmp77, label %if.then.79, label %if.end.92

if.then.79:                                       ; preds = %land.lhs.true.74
  %108 = load i8*, i8** %hyp_strptr, align 8
  %109 = load %struct.hyp_t*, %struct.hyp_t** %h, align 8
  %id80 = getelementptr inbounds %struct.hyp_t, %struct.hyp_t* %109, i32 0, i32 0
  %110 = load i32, i32* %id80, align 4
  %idxprom81 = sext i32 %110 to i64
  %111 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word82 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %111, i32 0, i32 4
  %112 = load %struct.dictword_t*, %struct.dictword_t** %word82, align 8
  %arrayidx83 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %112, i64 %idxprom81
  %basewid84 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx83, i32 0, i32 4
  %113 = load i32, i32* %basewid84, align 4
  %idxprom85 = sext i32 %113 to i64
  %114 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word86 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %114, i32 0, i32 4
  %115 = load %struct.dictword_t*, %struct.dictword_t** %word86, align 8
  %arrayidx87 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %115, i64 %idxprom85
  %word88 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx87, i32 0, i32 0
  %116 = load i8*, i8** %word88, align 8
  %call89 = call i8* @strcat(i8* %108, i8* %116) #4
  %117 = load i8*, i8** %hyp_strptr, align 8
  %call90 = call i64 @strlen(i8* %117) #5
  %118 = load i8*, i8** %hyp_strptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %118, i64 %call90
  store i8* %add.ptr, i8** %hyp_strptr, align 8
  %119 = load i8*, i8** %hyp_strptr, align 8
  %call91 = call i8* @strcat(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #4
  %120 = load i8*, i8** %hyp_strptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr, i8** %hyp_strptr, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.79, %land.lhs.true.74, %for.body.64
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %121 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next94 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %121, i32 0, i32 1
  %122 = load %struct.gnode_s*, %struct.gnode_s** %next94, align 8
  store %struct.gnode_s* %122, %struct.gnode_s** %gn, align 8
  br label %for.cond.62

for.end.95:                                       ; preds = %for.cond.62
  %123 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_strlen96 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %123, i32 0, i32 53
  %124 = load i32, i32* %hyp_strlen96, align 4
  %idxprom97 = sext i32 %124 to i64
  %125 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_str98 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %125, i32 0, i32 52
  %126 = load i8*, i8** %hyp_str98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %126, i64 %idxprom97
  store i8 0, i8* %arrayidx99, align 1
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %128 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hyp_str100 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %128, i32 0, i32 52
  %129 = load i8*, i8** %hyp_str100, align 8
  %130 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid101 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %130, i32 0, i32 33
  %131 = load i8*, i8** %uttid101, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %129, i8* %131)
  %132 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchsegfp = getelementptr inbounds %struct.kb_t, %struct.kb_t* %132, i32 0, i32 49
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %matchsegfp, align 8
  %tobool103 = icmp ne %struct._IO_FILE* %133, null
  br i1 %tobool103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %for.end.95
  %134 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchsegfp105 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %134, i32 0, i32 49
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %matchsegfp105, align 8
  %136 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %137 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  call void @matchseg_write(%struct._IO_FILE* %135, %struct.kb_t* %136, %struct.gnode_s* %137, i8* null)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %for.end.95
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %139 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %140 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  call void @matchseg_write(%struct._IO_FILE* %138, %struct.kb_t* %139, %struct.gnode_s* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  %142 = load i32, i32* @confp_open, align 4
  %tobool108 = icmp ne i32 %142, 0
  br i1 %tobool108, label %if.end.115, label %if.then.109

if.then.109:                                      ; preds = %if.end.106
  %call110 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call110, %struct._IO_FILE** @confp, align 8
  %cmp111 = icmp eq %struct._IO_FILE* %call110, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.109
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.then.109
  store i32 1, i32* @confp_open, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.106
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @confp, align 8
  %144 = load i64, i64* @considered, align 8
  %145 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid116 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %145, i32 0, i32 33
  %146 = load i8*, i8** %uttid116, align 8
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i64 %144, i8* %146)
  %147 = load i64, i64* @considered, align 8
  %148 = load i64, i64* @tot_considered, align 8
  %add118 = add nsw i64 %148, %147
  store i64 %add118, i64* @tot_considered, align 8
  store i64 0, i64* @considered, align 8
  %149 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchfp = getelementptr inbounds %struct.kb_t, %struct.kb_t* %149, i32 0, i32 48
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %matchfp, align 8
  %tobool119 = icmp ne %struct._IO_FILE* %150, null
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.115
  %151 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %matchfp121 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %151, i32 0, i32 48
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %matchfp121, align 8
  %153 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %154 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  call void @match_write(%struct._IO_FILE* %152, %struct.kb_t* %153, %struct.gnode_s* %154, i8* null)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.115
  %call123 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0))
  %tobool124 = icmp ne i8* %call123, null
  br i1 %tobool124, label %if.then.125, label %if.end.172

if.then.125:                                      ; preds = %if.end.122
  %arraydecay126 = getelementptr inbounds [16384 x i8], [16384 x i8]* %str, i32 0, i32 0
  %call127 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0))
  %155 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid128 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %155, i32 0, i32 33
  %156 = load i8*, i8** %uttid128, align 8
  %call129 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  %call130 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* %call127, i8* %156, i8* %call129) #4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %arraydecay131 = getelementptr inbounds [16384 x i8], [16384 x i8]* %str, i32 0, i32 0
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay131)
  %arraydecay132 = getelementptr inbounds [16384 x i8], [16384 x i8]* %str, i32 0, i32 0
  %call133 = call %struct._IO_FILE* @fopen_comp(i8* %arraydecay132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32* %ispipe)
  store %struct._IO_FILE* %call133, %struct._IO_FILE** %latfp, align 8
  %cmp134 = icmp eq %struct._IO_FILE* %call133, null
  br i1 %cmp134, label %if.then.136, label %if.else

if.then.136:                                      ; preds = %if.then.125
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %arraydecay137 = getelementptr inbounds [16384 x i8], [16384 x i8]* %str, i32 0, i32 0
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay137)
  br label %if.end.171

if.else:                                          ; preds = %if.then.125
  %arraydecay138 = getelementptr inbounds [16384 x i8], [16384 x i8]* %str, i32 0, i32 0
  %call139 = call i8* @getcwd(i8* %arraydecay138, i64 16384) #4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %arraydecay140 = getelementptr inbounds [16384 x i8], [16384 x i8]* %str, i32 0, i32 0
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay140)
  %call142 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0))
  %158 = bitcast i8* %call142 to float*
  %159 = load float, float* %158, align 4
  %conv143 = fpext float %159 to double
  store double %conv143, double* %logbase, align 8
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %161 = load double, double* %logbase, align 8
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), double %161)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call145 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0))
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* %call145)
  %call147 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0))
  %tobool148 = icmp ne i8* %call147, null
  br i1 %tobool148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.else
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call150 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0))
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* %call150)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.else
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call153 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0))
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* %call153)
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call155 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* %call155)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call157 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0))
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* %call157)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call159 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* %call159)
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call161 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0))
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* %call161)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call163 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* %call163)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0))
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %172 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr166 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %172, i32 0, i32 8
  %173 = load i32, i32* %nfr166, align 4
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 %173)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0))
  %175 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist169 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %175, i32 0, i32 6
  %176 = load %struct.vithist_t*, %struct.vithist_t** %vithist169, align 8
  %177 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  %178 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %call170 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0))
  %179 = bitcast i8* %call170 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  call void @vithist_dag_write(%struct.vithist_t* %176, %struct.gnode_s* %177, %struct.dict_t* %178, i32 %180, %struct._IO_FILE* %181)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %latfp, align 8
  %183 = load i32, i32* %ispipe, align 4
  call void @fclose_comp(%struct._IO_FILE* %182, i32 %183)
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.152, %if.then.136
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.122
  %184 = load %struct.gnode_s*, %struct.gnode_s** %hyp, align 8
  call void @glist_free(%struct.gnode_s* %184)
  br label %if.end.175

if.else.173:                                      ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %185 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid174 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %185, i32 0, i32 33
  %186 = load i8*, i8** %uttid174, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i8* %186)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.173, %if.end.172
  call void @_E__pr_info_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %187 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr176 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %187, i32 0, i32 8
  %188 = load i32, i32* %nfr176, align 4
  %189 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_sen_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %189, i32 0, i32 35
  %190 = load i32, i32* %utt_sen_eval, align 4
  %191 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr177 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %191, i32 0, i32 8
  %192 = load i32, i32* %nfr177, align 4
  %shr = ashr i32 %192, 1
  %add178 = add nsw i32 %190, %shr
  %193 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr179 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %193, i32 0, i32 8
  %194 = load i32, i32* %nfr179, align 4
  %div = sdiv i32 %add178, %194
  %195 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_gau_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %195, i32 0, i32 36
  %196 = load i32, i32* %utt_gau_eval, align 4
  %197 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr180 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %197, i32 0, i32 8
  %198 = load i32, i32* %nfr180, align 4
  %shr181 = ashr i32 %198, 1
  %add182 = add nsw i32 %196, %shr181
  %199 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr183 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %199, i32 0, i32 8
  %200 = load i32, i32* %nfr183, align 4
  %div184 = sdiv i32 %add182, %200
  %201 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_hmm_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %201, i32 0, i32 34
  %202 = load i32, i32* %utt_hmm_eval, align 4
  %203 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr185 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %203, i32 0, i32 8
  %204 = load i32, i32* %nfr185, align 4
  %shr186 = ashr i32 %204, 1
  %add187 = add nsw i32 %202, %shr186
  %205 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr188 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %205, i32 0, i32 8
  %206 = load i32, i32* %nfr188, align 4
  %div189 = sdiv i32 %add187, %206
  %207 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist190 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %207, i32 0, i32 6
  %208 = load %struct.vithist_t*, %struct.vithist_t** %vithist190, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %208, i32 0, i32 2
  %209 = load i32, i32* %n_entry, align 4
  %210 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr191 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %210, i32 0, i32 8
  %211 = load i32, i32* %nfr191, align 4
  %shr192 = ashr i32 %211, 1
  %add193 = add nsw i32 %209, %shr192
  %212 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr194 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %212, i32 0, i32 8
  %213 = load i32, i32* %nfr194, align 4
  %div195 = sdiv i32 %add193, %213
  %214 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid196 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %214, i32 0, i32 33
  %215 = load i8*, i8** %uttid196, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.60, i32 0, i32 0), i32 %188, i32 %div, i32 %div184, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 %div189, i32 %div195, double 0.000000e+00, double 0.000000e+00, i8* %215)
  %216 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t, %struct.kb_t* %216, i32 0, i32 38
  %217 = load i32, i32* %hmm_hist_bins, align 4
  %sub = sub nsw i32 %217, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.205, %if.end.175
  %218 = load i32, i32* %j, align 4
  %cmp198 = icmp sge i32 %218, 0
  br i1 %cmp198, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.197
  %219 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %219 to i64
  %220 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %220, i32 0, i32 37
  %221 = load i32*, i32** %hmm_hist, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %221, i64 %idxprom200
  %222 = load i32, i32* %arrayidx201, align 4
  %cmp202 = icmp eq i32 %222, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.197
  %223 = phi i1 [ false, %for.cond.197 ], [ %cmp202, %land.rhs ]
  br i1 %223, label %for.body.204, label %for.end.206

for.body.204:                                     ; preds = %land.end
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.204
  %224 = load i32, i32* %j, align 4
  %dec = add nsw i32 %224, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.197

for.end.206:                                      ; preds = %land.end
  call void @_E__pr_info_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 375, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %225 = load i32, i32* %j, align 4
  %226 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %uttid207 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %226, i32 0, i32 33
  %227 = load i8*, i8** %uttid207, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0), i32 %225, i8* %227)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.222, %for.end.206
  %228 = load i32, i32* %i, align 4
  %229 = load i32, i32* %j, align 4
  %cmp209 = icmp sle i32 %228, %229
  br i1 %cmp209, label %for.body.211, label %for.end.224

for.body.211:                                     ; preds = %for.cond.208
  %230 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %230 to i64
  %231 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist213 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %231, i32 0, i32 37
  %232 = load i32*, i32** %hmm_hist213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %232, i64 %idxprom212
  %233 = load i32, i32* %arrayidx214, align 4
  %234 = load i32, i32* %k, align 4
  %add215 = add nsw i32 %234, %233
  store i32 %add215, i32* %k, align 4
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %236 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %236 to i64
  %237 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist217 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %237, i32 0, i32 37
  %238 = load i32*, i32** %hmm_hist217, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %238, i64 %idxprom216
  %239 = load i32, i32* %arrayidx218, align 4
  %240 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %240, 100
  %241 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr219 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %241, i32 0, i32 8
  %242 = load i32, i32* %nfr219, align 4
  %div220 = sdiv i32 %mul, %242
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 %239, i32 %div220)
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.211
  %243 = load i32, i32* %i, align 4
  %inc223 = add nsw i32 %243, 1
  store i32 %inc223, i32* %i, align 4
  br label %for.cond.208

for.end.224:                                      ; preds = %for.cond.208
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  %245 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_sen_eval226 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %245, i32 0, i32 35
  %246 = load i32, i32* %utt_sen_eval226, align 4
  %conv227 = sitofp i32 %246 to double
  %247 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_sen_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %247, i32 0, i32 44
  %248 = load double, double* %tot_sen_eval, align 8
  %add228 = fadd double %248, %conv227
  store double %add228, double* %tot_sen_eval, align 8
  %249 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_gau_eval229 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %249, i32 0, i32 36
  %250 = load i32, i32* %utt_gau_eval229, align 4
  %conv230 = sitofp i32 %250 to double
  %251 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_gau_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %251, i32 0, i32 45
  %252 = load double, double* %tot_gau_eval, align 8
  %add231 = fadd double %252, %conv230
  store double %add231, double* %tot_gau_eval, align 8
  %253 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_hmm_eval232 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %253, i32 0, i32 34
  %254 = load i32, i32* %utt_hmm_eval232, align 4
  %conv233 = sitofp i32 %254 to double
  %255 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_hmm_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %255, i32 0, i32 46
  %256 = load double, double* %tot_hmm_eval, align 8
  %add234 = fadd double %256, %conv233
  store double %add234, double* %tot_hmm_eval, align 8
  %257 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist235 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %257, i32 0, i32 6
  %258 = load %struct.vithist_t*, %struct.vithist_t** %vithist235, align 8
  %n_entry236 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %258, i32 0, i32 2
  %259 = load i32, i32* %n_entry236, align 4
  %conv237 = sitofp i32 %259 to double
  %260 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tot_wd_exit = getelementptr inbounds %struct.kb_t, %struct.kb_t* %260, i32 0, i32 47
  %261 = load double, double* %tot_wd_exit, align 8
  %add238 = fadd double %261, %conv237
  store double %add238, double* %tot_wd_exit, align 8
  %262 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_sen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %262, i32 0, i32 40
  call void @ptmr_reset(%struct.ptmr_t* %tm_sen)
  %263 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_srch = getelementptr inbounds %struct.kb_t, %struct.kb_t* %263, i32 0, i32 41
  call void @ptmr_reset(%struct.ptmr_t* %tm_srch)
  %264 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_ovrhd = getelementptr inbounds %struct.kb_t, %struct.kb_t* %264, i32 0, i32 42
  call void @ptmr_reset(%struct.ptmr_t* %tm_ovrhd)
  store i32 0, i32* %i, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.249, %for.end.224
  %265 = load i32, i32* %i, align 4
  %266 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %266, i32 0, i32 1
  %267 = load i32, i32* %n_lextree, align 4
  %cmp240 = icmp slt i32 %265, %267
  br i1 %cmp240, label %for.body.242, label %for.end.251

for.body.242:                                     ; preds = %for.cond.239
  %268 = load i32, i32* %i, align 4
  %idxprom243 = sext i32 %268 to i64
  %269 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %269, i32 0, i32 2
  %270 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree, align 8
  %arrayidx244 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %270, i64 %idxprom243
  %271 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx244, align 8
  %272 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore245 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %272, i32 0, i32 0
  %273 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore245, align 8
  call void @lextree_utt_end(%struct.lextree_t* %271, %struct.kbcore_t* %273)
  %274 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %274 to i64
  %275 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %275, i32 0, i32 4
  %276 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %arrayidx247 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %276, i64 %idxprom246
  %277 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx247, align 8
  %278 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore248 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %278, i32 0, i32 0
  %279 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore248, align 8
  call void @lextree_utt_end(%struct.lextree_t* %277, %struct.kbcore_t* %279)
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.body.242
  %280 = load i32, i32* %i, align 4
  %inc250 = add nsw i32 %280, 1
  store i32 %inc250, i32* %i, align 4
  br label %for.cond.239

for.end.251:                                      ; preds = %for.cond.239
  %281 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist252 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %281, i32 0, i32 6
  %282 = load %struct.vithist_t*, %struct.vithist_t** %vithist252, align 8
  call void @vithist_utt_reset(%struct.vithist_t* %282)
  %283 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore253 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %283, i32 0, i32 0
  %284 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore253, align 8
  %lm = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %284, i32 0, i32 4
  %285 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  call void @lm_cache_stats_dump(%struct.lm_s* %285)
  %286 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore254 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %286, i32 0, i32 0
  %287 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore254, align 8
  %lm255 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %287, i32 0, i32 4
  %288 = load %struct.lm_s*, %struct.lm_s** %lm255, align 8
  call void @lm_cache_reset(%struct.lm_s* %288)
  ret void
}

declare void @kb_freehyps(%struct.kb_t*) #1

declare i32 @vithist_utt_end(%struct.vithist_t*, %struct.kbcore_t*) #1

declare i8* @cmd_ln_access(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

declare void @vithist_dump(%struct.vithist_t*, i32, %struct.kbcore_t*, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare %struct.gnode_s* @vithist_backtrace(%struct.vithist_t*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare void @_E__die_error(i8*, ...) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare %struct._IO_FILE* @fopen_comp(i8*, i8*, i32*) #1

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #2

declare void @vithist_dag_write(%struct.vithist_t*, %struct.gnode_s*, %struct.dict_t*, i32, %struct._IO_FILE*) #1

declare void @fclose_comp(%struct._IO_FILE*, i32) #1

declare void @glist_free(%struct.gnode_s*) #1

declare void @ptmr_reset(%struct.ptmr_t*) #1

declare void @lextree_utt_end(%struct.lextree_t*, %struct.kbcore_t*) #1

declare void @vithist_utt_reset(%struct.vithist_t*) #1

declare void @lm_cache_stats_dump(%struct.lm_s*) #1

declare void @lm_cache_reset(%struct.lm_s*) #1

; Function Attrs: nounwind uwtable
define void @utt_word_trans(%struct.kb_t* %kb, i32 %cf) #0 {
entry:
  %kb.addr = alloca %struct.kb_t*, align 8
  %cf.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %th = alloca i32, align 4
  %vh = alloca %struct.vithist_t*, align 8
  %ve = alloca %struct.vithist_entry_t*, align 8
  %vhid = alloca i32, align 4
  %le = alloca i32, align 4
  %n_ci = alloca i32, align 4
  %score = alloca i32, align 4
  %maxpscore = alloca i32, align 4
  %wid = alloca i32, align 4
  %p = alloca i32, align 4
  %dict = alloca %struct.dict_t*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 %cf, i32* %cf.addr, align 4
  store i32 -2147483648, i32* %maxpscore, align 4
  %0 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %0, i32 0, i32 6
  %1 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  store %struct.vithist_t* %1, %struct.vithist_t** %vh, align 8
  %2 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %bestscore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %2, i32 0, i32 19
  %3 = load i32, i32* %bestscore, align 4
  %4 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %4, i32 0, i32 22
  %5 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %hmm = getelementptr inbounds %struct.beam_t, %struct.beam_t* %5, i32 0, i32 1
  %6 = load i32, i32* %hmm, align 4
  %add = add nsw i32 %3, %6
  store i32 %add, i32* %th, align 4
  %7 = load i32, i32* %cf.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %bestvh = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %8, i32 0, i32 7
  %9 = load i32*, i32** %bestvh, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %11, i32 0, i32 0
  %12 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict1 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %12, i32 0, i32 2
  %13 = load %struct.dict_t*, %struct.dict_t** %dict1, align 8
  store %struct.dict_t* %13, %struct.dict_t** %dict, align 8
  %14 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore2 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %14, i32 0, i32 0
  %15 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore2, align 8
  %mdef3 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %15, i32 0, i32 1
  %16 = load %struct.mdef_t*, %struct.mdef_t** %mdef3, align 8
  store %struct.mdef_t* %16, %struct.mdef_t** %mdef, align 8
  %17 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %17, i32 0, i32 0
  %18 = load i32, i32* %n_ciphone, align 4
  store i32 %18, i32* %n_ci, align 4
  %19 = load i32*, i32** @utt_word_trans.bs, align 8
  %tobool = icmp ne i32* %19, null
  br i1 %tobool, label %if.end.8, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %20 = load i32, i32* %n_ci, align 4
  %conv = sext i32 %20 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 439)
  %21 = bitcast i8* %call to i32*
  store i32* %21, i32** @utt_word_trans.bs, align 8
  %22 = load i32, i32* %n_ci, align 4
  %conv5 = sext i32 %22 to i64
  %call6 = call i8* @__ckd_calloc__(i64 %conv5, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 440)
  %23 = bitcast i8* %call6 to i32*
  store i32* %23, i32** @utt_word_trans.bv, align 8
  %call7 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0))
  %24 = bitcast i8* %call7 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @utt_word_trans.epl, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i32, i32* %p, align 4
  %27 = load i32, i32* %n_ci, align 4
  %cmp9 = icmp slt i32 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %p, align 4
  %idxprom11 = sext i32 %28 to i64
  %29 = load i32*, i32** @utt_word_trans.bs, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %29, i64 %idxprom11
  store i32 -2147483648, i32* %arrayidx12, align 4
  %30 = load i32, i32* %p, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = load i32*, i32** @utt_word_trans.bv, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %31, i64 %idxprom13
  store i32 -1, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %p, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %cf.addr, align 4
  %idxprom15 = sext i32 %33 to i64
  %34 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %frame_start = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %34, i32 0, i32 1
  %35 = load i32*, i32** %frame_start, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %35, i64 %idxprom15
  %36 = load i32, i32* %arrayidx16, align 4
  store i32 %36, i32* %vhid, align 4
  %37 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %n_entry = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %37, i32 0, i32 2
  %38 = load i32, i32* %n_entry, align 4
  %sub = sub nsw i32 %38, 1
  store i32 %sub, i32* %le, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.57, %for.end
  %39 = load i32, i32* %vhid, align 4
  %40 = load i32, i32* %le, align 4
  %cmp18 = icmp sle i32 %39, %40
  br i1 %cmp18, label %for.body.20, label %for.end.59

for.body.20:                                      ; preds = %for.cond.17
  %41 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %42 = load i32, i32* %vhid, align 4
  %call21 = call %struct.vithist_entry_t* @vithist_id2entry(%struct.vithist_t* %41, i32 %42)
  store %struct.vithist_entry_t* %call21, %struct.vithist_entry_t** %ve, align 8
  %43 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %valid = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %43, i32 0, i32 8
  %44 = load i32, i32* %valid, align 4
  %tobool22 = icmp ne i32 %44, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.body.20
  br label %for.inc.57

if.end.24:                                        ; preds = %for.body.20
  %45 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %wid25 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %45, i32 0, i32 0
  %46 = load i32, i32* %wid25, align 4
  store i32 %46, i32* %wid, align 4
  %47 = load i32, i32* %wid, align 4
  %idxprom26 = sext i32 %47 to i64
  %48 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %48, i32 0, i32 4
  %49 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx27 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %49, i64 %idxprom26
  %pronlen = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx27, i32 0, i32 2
  %50 = load i32, i32* %pronlen, align 4
  %sub28 = sub nsw i32 %50, 1
  %idxprom29 = sext i32 %sub28 to i64
  %51 = load i32, i32* %wid, align 4
  %idxprom30 = sext i32 %51 to i64
  %52 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %word31 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %52, i32 0, i32 4
  %53 = load %struct.dictword_t*, %struct.dictword_t** %word31, align 8
  %arrayidx32 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %53, i64 %idxprom30
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx32, i32 0, i32 1
  %54 = load i8*, i8** %ciphone, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %54, i64 %idxprom29
  %55 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %55 to i32
  store i32 %conv34, i32* %p, align 4
  %56 = load i32, i32* %p, align 4
  %idxprom35 = sext i32 %56 to i64
  %57 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %ciphone36 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %57, i32 0, i32 7
  %58 = load %struct.ciphone_t*, %struct.ciphone_t** %ciphone36, align 8
  %arrayidx37 = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %58, i64 %idxprom35
  %filler = getelementptr inbounds %struct.ciphone_t, %struct.ciphone_t* %arrayidx37, i32 0, i32 1
  %59 = load i32, i32* %filler, align 4
  %tobool38 = icmp ne i32 %59, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.24
  %60 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %sil = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %60, i32 0, i32 14
  %61 = load i8, i8* %sil, align 1
  %conv40 = sext i8 %61 to i32
  store i32 %conv40, i32* %p, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.24
  %62 = load %struct.vithist_entry_t*, %struct.vithist_entry_t** %ve, align 8
  %score42 = getelementptr inbounds %struct.vithist_entry_t, %struct.vithist_entry_t* %62, i32 0, i32 5
  %63 = load i32, i32* %score42, align 4
  store i32 %63, i32* %score, align 4
  %64 = load i32, i32* %score, align 4
  %65 = load i32, i32* %p, align 4
  %idxprom43 = sext i32 %65 to i64
  %66 = load i32*, i32** @utt_word_trans.bs, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %66, i64 %idxprom43
  %67 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp sgt i32 %64, %67
  br i1 %cmp45, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.41
  %68 = load i32, i32* %score, align 4
  %69 = load i32, i32* %p, align 4
  %idxprom48 = sext i32 %69 to i64
  %70 = load i32*, i32** @utt_word_trans.bs, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %70, i64 %idxprom48
  store i32 %68, i32* %arrayidx49, align 4
  %71 = load i32, i32* %vhid, align 4
  %72 = load i32, i32* %p, align 4
  %idxprom50 = sext i32 %72 to i64
  %73 = load i32*, i32** @utt_word_trans.bv, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %73, i64 %idxprom50
  store i32 %71, i32* %arrayidx51, align 4
  %74 = load i32, i32* %maxpscore, align 4
  %75 = load i32, i32* %score, align 4
  %cmp52 = icmp slt i32 %74, %75
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.47
  %76 = load i32, i32* %score, align 4
  store i32 %76, i32* %maxpscore, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.41
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56, %if.then.23
  %77 = load i32, i32* %vhid, align 4
  %inc58 = add nsw i32 %77, 1
  store i32 %inc58, i32* %vhid, align 4
  br label %for.cond.17

for.end.59:                                       ; preds = %for.cond.17
  %78 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextrans = getelementptr inbounds %struct.kb_t, %struct.kb_t* %78, i32 0, i32 5
  %79 = load i32, i32* %n_lextrans, align 4
  %inc60 = add nsw i32 %79, 1
  store i32 %inc60, i32* %n_lextrans, align 4
  store i32 %79, i32* %k, align 4
  %80 = load i32, i32* %k, align 4
  %81 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %81, i32 0, i32 1
  %82 = load i32, i32* %n_lextree, align 4
  %83 = load i32, i32* @utt_word_trans.epl, align 4
  %mul = mul nsw i32 %82, %83
  %rem = srem i32 %80, %mul
  %84 = load i32, i32* @utt_word_trans.epl, align 4
  %div = sdiv i32 %rem, %84
  store i32 %div, i32* %k, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.89, %for.end.59
  %85 = load i32, i32* %p, align 4
  %86 = load i32, i32* %n_ci, align 4
  %cmp62 = icmp slt i32 %85, %86
  br i1 %cmp62, label %for.body.64, label %for.end.91

for.body.64:                                      ; preds = %for.cond.61
  %87 = load i32, i32* %p, align 4
  %idxprom65 = sext i32 %87 to i64
  %88 = load i32*, i32** @utt_word_trans.bv, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %88, i64 %idxprom65
  %89 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp sge i32 %89, 0
  br i1 %cmp67, label %if.then.69, label %if.end.88

if.then.69:                                       ; preds = %for.body.64
  %90 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %wend_beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %90, i32 0, i32 32
  %91 = load i32, i32* %wend_beam, align 4
  %cmp70 = icmp eq i32 %91, 0
  br i1 %cmp70, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.69
  %92 = load i32, i32* %p, align 4
  %idxprom72 = sext i32 %92 to i64
  %93 = load i32*, i32** @utt_word_trans.bs, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %93, i64 %idxprom72
  %94 = load i32, i32* %arrayidx73, align 4
  %95 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %wend_beam74 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %95, i32 0, i32 32
  %96 = load i32, i32* %wend_beam74, align 4
  %sub75 = sub nsw i32 0, %96
  %97 = load i32, i32* %maxpscore, align 4
  %add76 = add nsw i32 %sub75, %97
  %cmp77 = icmp sgt i32 %94, %add76
  br i1 %cmp77, label %if.then.79, label %if.end.87

if.then.79:                                       ; preds = %lor.lhs.false, %if.then.69
  %98 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %98 to i64
  %99 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %99, i32 0, i32 2
  %100 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree, align 8
  %arrayidx81 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %100, i64 %idxprom80
  %101 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx81, align 8
  %102 = load i32, i32* %p, align 4
  %conv82 = trunc i32 %102 to i8
  %103 = load i32, i32* %cf.addr, align 4
  %104 = load i32, i32* %p, align 4
  %idxprom83 = sext i32 %104 to i64
  %105 = load i32*, i32** @utt_word_trans.bs, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %105, i64 %idxprom83
  %106 = load i32, i32* %arrayidx84, align 4
  %107 = load i32, i32* %p, align 4
  %idxprom85 = sext i32 %107 to i64
  %108 = load i32*, i32** @utt_word_trans.bv, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %108, i64 %idxprom85
  %109 = load i32, i32* %arrayidx86, align 4
  %110 = load i32, i32* %th, align 4
  call void @lextree_enter(%struct.lextree_t* %101, i8 signext %conv82, i32 %103, i32 %106, i32 %109, i32 %110)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.79, %lor.lhs.false
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.body.64
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %111 = load i32, i32* %p, align 4
  %inc90 = add nsw i32 %111, 1
  store i32 %inc90, i32* %p, align 4
  br label %for.cond.61

for.end.91:                                       ; preds = %for.cond.61
  %112 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %112 to i64
  %113 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %113, i32 0, i32 4
  %114 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %arrayidx93 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %114, i64 %idxprom92
  %115 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx93, align 8
  %116 = load i32, i32* %cf.addr, align 4
  %117 = load i32, i32* %cf.addr, align 4
  %idxprom94 = sext i32 %117 to i64
  %118 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %bestscore95 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %118, i32 0, i32 6
  %119 = load i32*, i32** %bestscore95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %119, i64 %idxprom94
  %120 = load i32, i32* %arrayidx96, align 4
  %121 = load i32, i32* %cf.addr, align 4
  %idxprom97 = sext i32 %121 to i64
  %122 = load %struct.vithist_t*, %struct.vithist_t** %vh, align 8
  %bestvh98 = getelementptr inbounds %struct.vithist_t, %struct.vithist_t* %122, i32 0, i32 7
  %123 = load i32*, i32** %bestvh98, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %123, i64 %idxprom97
  %124 = load i32, i32* %arrayidx99, align 4
  %125 = load i32, i32* %th, align 4
  call void @lextree_enter(%struct.lextree_t* %115, i8 signext -1, i32 %116, i32 %120, i32 %124, i32 %125)
  br label %return

return:                                           ; preds = %for.end.91, %if.then
  ret void
}

declare %struct.vithist_entry_t* @vithist_id2entry(%struct.vithist_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @computePhnHeur(%struct.mdef_t* %md, %struct.kb_t* %kb, i32 %heutype) #0 {
entry:
  %md.addr = alloca %struct.mdef_t*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %heutype.addr = alloca i32, align 4
  %nState = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %curPhn = alloca i32, align 4
  %curFrmPhnVar = alloca i32, align 4
  store %struct.mdef_t* %md, %struct.mdef_t** %md.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 %heutype, i32* %heutype.addr, align 4
  %0 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %0, i32 0, i32 2
  %1 = load i32, i32* %n_emit_state, align 4
  store i32 %1, i32* %nState, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %cd2cisen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %4, i32 0, i32 11
  %5 = load i16*, i16** %cd2cisen, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp eq i32 %2, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %8, i32 0, i32 12
  %9 = load i8*, i8** %sen2cimap, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom2
  %10 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %10 to i32
  store i32 %conv4, i32* %curPhn, align 4
  %11 = load i32, i32* %curPhn, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %12, i32 0, i32 17
  %13 = load i32*, i32** %phn_heur_list, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %heutype.addr, align 4
  %cmp7 = icmp eq i32 %15, 1
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %16 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start = getelementptr inbounds %struct.kb_t, %struct.kb_t* %16, i32 0, i32 29
  %17 = load i32, i32* %pl_window_start, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.54, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 30
  %20 = load i32, i32* %pl_window_effective, align 4
  %cmp10 = icmp slt i32 %18, %20
  br i1 %cmp10, label %for.body.12, label %for.end.56

for.body.12:                                      ; preds = %for.cond.9
  store i32 0, i32* %curPhn, align 4
  store i32 -2147483648, i32* %curFrmPhnVar, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.51, %for.body.12
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %cd2cisen15 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %23, i32 0, i32 11
  %24 = load i16*, i16** %cd2cisen15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %24, i64 %idxprom14
  %25 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %25 to i32
  %cmp18 = icmp eq i32 %21, %conv17
  br i1 %cmp18, label %for.body.20, label %for.end.53

for.body.20:                                      ; preds = %for.cond.13
  %26 = load i32, i32* %curFrmPhnVar, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %29, i32 0, i32 15
  %30 = load i32**, i32*** %cache_ci_senscr, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %30, i64 %idxprom22
  %31 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %31, i64 %idxprom21
  %32 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp slt i32 %26, %32
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.body.20
  %33 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr30 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %35, i32 0, i32 15
  %36 = load i32**, i32*** %cache_ci_senscr30, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %36, i64 %idxprom29
  %37 = load i32*, i32** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  %38 = load i32, i32* %arrayidx32, align 4
  store i32 %38, i32* %curFrmPhnVar, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %for.body.20
  %39 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %39 to i64
  %40 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap34 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %40, i32 0, i32 12
  %41 = load i8*, i8** %sen2cimap34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %41, i64 %idxprom33
  %42 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %42 to i32
  store i32 %conv36, i32* %curPhn, align 4
  %43 = load i32, i32* %curPhn, align 4
  %44 = load i32, i32* %j, align 4
  %add = add nsw i32 %44, 1
  %idxprom37 = sext i32 %add to i64
  %45 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap38 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %45, i32 0, i32 12
  %46 = load i8*, i8** %sen2cimap38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %46, i64 %idxprom37
  %47 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %47 to i32
  %cmp41 = icmp ne i32 %43, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.end
  %48 = load i32, i32* %curPhn, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list45 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %49, i32 0, i32 17
  %50 = load i32*, i32** %phn_heur_list45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %50, i64 %idxprom44
  %51 = load i32, i32* %arrayidx46, align 4
  %52 = load i32, i32* %curFrmPhnVar, align 4
  %call = call i32 @NO_UFLOW_ADD(i32 %51, i32 %52)
  %53 = load i32, i32* %curPhn, align 4
  %idxprom47 = sext i32 %53 to i64
  %54 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list48 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %54, i32 0, i32 17
  %55 = load i32*, i32** %phn_heur_list48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 %idxprom47
  store i32 %call, i32* %arrayidx49, align 4
  store i32 -2147483648, i32* %curFrmPhnVar, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %if.end
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %56 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %56, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.13

for.end.53:                                       ; preds = %for.cond.13
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %57 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %57, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.9

for.end.56:                                       ; preds = %for.cond.9
  br label %if.end.192

if.else:                                          ; preds = %for.end
  %58 = load i32, i32* %heutype.addr, align 4
  %cmp57 = icmp eq i32 %58, 2
  br i1 %cmp57, label %if.then.59, label %if.else.106

if.then.59:                                       ; preds = %if.else
  %59 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start60 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %59, i32 0, i32 29
  %60 = load i32, i32* %pl_window_start60, align 4
  store i32 %60, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.103, %if.then.59
  %61 = load i32, i32* %i, align 4
  %62 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective62 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %62, i32 0, i32 30
  %63 = load i32, i32* %pl_window_effective62, align 4
  %cmp63 = icmp slt i32 %61, %63
  br i1 %cmp63, label %for.body.65, label %for.end.105

for.body.65:                                      ; preds = %for.cond.61
  store i32 0, i32* %curPhn, align 4
  store i32 -2147483648, i32* %curFrmPhnVar, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.100, %for.body.65
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %65 to i64
  %66 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %cd2cisen68 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %66, i32 0, i32 11
  %67 = load i16*, i16** %cd2cisen68, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %67, i64 %idxprom67
  %68 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %68 to i32
  %cmp71 = icmp eq i32 %64, %conv70
  br i1 %cmp71, label %for.body.73, label %for.end.102

for.body.73:                                      ; preds = %for.cond.66
  %69 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %70 to i64
  %71 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr76 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %71, i32 0, i32 15
  %72 = load i32**, i32*** %cache_ci_senscr76, align 8
  %arrayidx77 = getelementptr inbounds i32*, i32** %72, i64 %idxprom75
  %73 = load i32*, i32** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %73, i64 %idxprom74
  %74 = load i32, i32* %arrayidx78, align 4
  %75 = load i32, i32* %curFrmPhnVar, align 4
  %call79 = call i32 @NO_UFLOW_ADD(i32 %74, i32 %75)
  store i32 %call79, i32* %curFrmPhnVar, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %76 to i64
  %77 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap81 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %77, i32 0, i32 12
  %78 = load i8*, i8** %sen2cimap81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %78, i64 %idxprom80
  %79 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %79 to i32
  store i32 %conv83, i32* %curPhn, align 4
  %80 = load i32, i32* %curPhn, align 4
  %81 = load i32, i32* %j, align 4
  %add84 = add nsw i32 %81, 1
  %idxprom85 = sext i32 %add84 to i64
  %82 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap86 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %82, i32 0, i32 12
  %83 = load i8*, i8** %sen2cimap86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %83, i64 %idxprom85
  %84 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %84 to i32
  %cmp89 = icmp ne i32 %80, %conv88
  br i1 %cmp89, label %if.then.91, label %if.end.99

if.then.91:                                       ; preds = %for.body.73
  %85 = load i32, i32* %nState, align 4
  %86 = load i32, i32* %curFrmPhnVar, align 4
  %div = sdiv i32 %86, %85
  store i32 %div, i32* %curFrmPhnVar, align 4
  %87 = load i32, i32* %curPhn, align 4
  %idxprom92 = sext i32 %87 to i64
  %88 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list93 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %88, i32 0, i32 17
  %89 = load i32*, i32** %phn_heur_list93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %89, i64 %idxprom92
  %90 = load i32, i32* %arrayidx94, align 4
  %91 = load i32, i32* %curFrmPhnVar, align 4
  %call95 = call i32 @NO_UFLOW_ADD(i32 %90, i32 %91)
  %92 = load i32, i32* %curPhn, align 4
  %idxprom96 = sext i32 %92 to i64
  %93 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list97 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %93, i32 0, i32 17
  %94 = load i32*, i32** %phn_heur_list97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %94, i64 %idxprom96
  store i32 %call95, i32* %arrayidx98, align 4
  store i32 -2147483648, i32* %curFrmPhnVar, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.91, %for.body.73
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %95 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %95, 1
  store i32 %inc101, i32* %j, align 4
  br label %for.cond.66

for.end.102:                                      ; preds = %for.cond.66
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %96 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %96, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.61

for.end.105:                                      ; preds = %for.cond.61
  br label %if.end.191

if.else.106:                                      ; preds = %if.else
  %97 = load i32, i32* %heutype.addr, align 4
  %cmp107 = icmp eq i32 %97, 3
  br i1 %cmp107, label %if.then.109, label %if.end.190

if.then.109:                                      ; preds = %if.else.106
  %98 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start110 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %98, i32 0, i32 29
  %99 = load i32, i32* %pl_window_start110, align 4
  store i32 %99, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.187, %if.then.109
  %100 = load i32, i32* %i, align 4
  %101 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective112 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %101, i32 0, i32 30
  %102 = load i32, i32* %pl_window_effective112, align 4
  %cmp113 = icmp slt i32 %100, %102
  br i1 %cmp113, label %for.body.115, label %for.end.189

for.body.115:                                     ; preds = %for.cond.111
  store i32 0, i32* %curPhn, align 4
  store i32 -2147483648, i32* %curFrmPhnVar, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.184, %for.body.115
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %j, align 4
  %idxprom117 = sext i32 %104 to i64
  %105 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %cd2cisen118 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %105, i32 0, i32 11
  %106 = load i16*, i16** %cd2cisen118, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %106, i64 %idxprom117
  %107 = load i16, i16* %arrayidx119, align 2
  %conv120 = sext i16 %107 to i32
  %cmp121 = icmp eq i32 %103, %conv120
  br i1 %cmp121, label %for.body.123, label %for.end.186

for.body.123:                                     ; preds = %for.cond.116
  %108 = load i32, i32* %curPhn, align 4
  %cmp124 = icmp eq i32 %108, 0
  br i1 %cmp124, label %if.then.132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.123
  %109 = load i32, i32* %curPhn, align 4
  %110 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %110, 1
  %idxprom126 = sext i32 %sub to i64
  %111 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap127 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %111, i32 0, i32 12
  %112 = load i8*, i8** %sen2cimap127, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %112, i64 %idxprom126
  %113 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %113 to i32
  %cmp130 = icmp ne i32 %109, %conv129
  br i1 %cmp130, label %if.then.132, label %if.end.145

if.then.132:                                      ; preds = %lor.lhs.false, %for.body.123
  %114 = load i32, i32* %curPhn, align 4
  %idxprom133 = sext i32 %114 to i64
  %115 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list134 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %115, i32 0, i32 17
  %116 = load i32*, i32** %phn_heur_list134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %116, i64 %idxprom133
  %117 = load i32, i32* %arrayidx135, align 4
  %118 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %119 to i64
  %120 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr138 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %120, i32 0, i32 15
  %121 = load i32**, i32*** %cache_ci_senscr138, align 8
  %arrayidx139 = getelementptr inbounds i32*, i32** %121, i64 %idxprom137
  %122 = load i32*, i32** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %122, i64 %idxprom136
  %123 = load i32, i32* %arrayidx140, align 4
  %call141 = call i32 @NO_UFLOW_ADD(i32 %117, i32 %123)
  %124 = load i32, i32* %curPhn, align 4
  %idxprom142 = sext i32 %124 to i64
  %125 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list143 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %125, i32 0, i32 17
  %126 = load i32*, i32** %phn_heur_list143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %126, i64 %idxprom142
  store i32 %call141, i32* %arrayidx144, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.132, %lor.lhs.false
  %127 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %127 to i64
  %128 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap147 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %128, i32 0, i32 12
  %129 = load i8*, i8** %sen2cimap147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %129, i64 %idxprom146
  %130 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %130 to i32
  store i32 %conv149, i32* %curPhn, align 4
  %131 = load i32, i32* %curFrmPhnVar, align 4
  %132 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %132 to i64
  %133 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %133 to i64
  %134 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr152 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %134, i32 0, i32 15
  %135 = load i32**, i32*** %cache_ci_senscr152, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %135, i64 %idxprom151
  %136 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %136, i64 %idxprom150
  %137 = load i32, i32* %arrayidx154, align 4
  %cmp155 = icmp slt i32 %131, %137
  br i1 %cmp155, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %if.end.145
  %138 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %138 to i64
  %139 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %139 to i64
  %140 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr160 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %140, i32 0, i32 15
  %141 = load i32**, i32*** %cache_ci_senscr160, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %141, i64 %idxprom159
  %142 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %142, i64 %idxprom158
  %143 = load i32, i32* %arrayidx162, align 4
  store i32 %143, i32* %curFrmPhnVar, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.157, %if.end.145
  %144 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %144 to i64
  %145 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap165 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %145, i32 0, i32 12
  %146 = load i8*, i8** %sen2cimap165, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %146, i64 %idxprom164
  %147 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %147 to i32
  %148 = load i32, i32* %j, align 4
  %add168 = add nsw i32 %148, 1
  %idxprom169 = sext i32 %add168 to i64
  %149 = load %struct.mdef_t*, %struct.mdef_t** %md.addr, align 8
  %sen2cimap170 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %149, i32 0, i32 12
  %150 = load i8*, i8** %sen2cimap170, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %150, i64 %idxprom169
  %151 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %151 to i32
  %cmp173 = icmp ne i32 %conv167, %conv172
  br i1 %cmp173, label %if.then.175, label %if.end.183

if.then.175:                                      ; preds = %if.end.163
  %152 = load i32, i32* %curPhn, align 4
  %idxprom176 = sext i32 %152 to i64
  %153 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list177 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %153, i32 0, i32 17
  %154 = load i32*, i32** %phn_heur_list177, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %154, i64 %idxprom176
  %155 = load i32, i32* %arrayidx178, align 4
  %156 = load i32, i32* %curFrmPhnVar, align 4
  %call179 = call i32 @NO_UFLOW_ADD(i32 %155, i32 %156)
  %157 = load i32, i32* %curPhn, align 4
  %idxprom180 = sext i32 %157 to i64
  %158 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list181 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %158, i32 0, i32 17
  %159 = load i32*, i32** %phn_heur_list181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %159, i64 %idxprom180
  store i32 %call179, i32* %arrayidx182, align 4
  store i32 -2147483648, i32* %curFrmPhnVar, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.175, %if.end.163
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %160 = load i32, i32* %j, align 4
  %inc185 = add nsw i32 %160, 1
  store i32 %inc185, i32* %j, align 4
  br label %for.cond.116

for.end.186:                                      ; preds = %for.cond.116
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.end.186
  %161 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %161, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond.111

for.end.189:                                      ; preds = %for.cond.111
  br label %if.end.190

if.end.190:                                       ; preds = %for.end.189, %if.else.106
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %for.end.105
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %for.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @NO_UFLOW_ADD(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.2, label %cond.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %b.addr, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %5 = load i32, i32* %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -2147483648, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @utt_decode_block(float*** %block_feat, i32 %block_nfeatvec, i32* %curfrm, %struct.kb_t* %kb, i32 %maxwpf, i32 %maxhistpf, i32 %maxhmmpf, i32 %ptranskip, %struct._IO_FILE* %hmmdumpfp) #0 {
entry:
  %block_feat.addr = alloca float***, align 8
  %block_nfeatvec.addr = alloca i32, align 4
  %curfrm.addr = alloca i32*, align 8
  %kb.addr = alloca %struct.kb_t*, align 8
  %maxwpf.addr = alloca i32, align 4
  %maxhistpf.addr = alloca i32, align 4
  %maxhmmpf.addr = alloca i32, align 4
  %ptranskip.addr = alloca i32, align 4
  %hmmdumpfp.addr = alloca %struct._IO_FILE*, align 8
  %kbcore = alloca %struct.kbcore_t*, align 8
  %mdef = alloca %struct.mdef_t*, align 8
  %dict = alloca %struct.dict_t*, align 8
  %d2p = alloca %struct.dict2pid_t*, align 8
  %mgau = alloca %struct.mgau_model_t*, align 8
  %svq = alloca %struct.subvq_t*, align 8
  %gs = alloca %struct.gs_s*, align 8
  %lextree = alloca %struct.lextree_t*, align 8
  %besthmmscr = alloca i32, align 4
  %bestwordscr = alloca i32, align 4
  %th = alloca i32, align 4
  %pth = alloca i32, align 4
  %wth = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %n_hmm_eval = alloca i32, align 4
  %frmno = alloca i32, align 4
  %frm_nhmm = alloca i32, align 4
  %hb = alloca i32, align 4
  %pb = alloca i32, align 4
  %wb = alloca i32, align 4
  %f = alloca i32, align 4
  %pheurtype = alloca i32, align 4
  %bin = alloca i32*, align 8
  %nbin = alloca i32, align 4
  %bw = alloca i32, align 4
  store float*** %block_feat, float**** %block_feat.addr, align 8
  store i32 %block_nfeatvec, i32* %block_nfeatvec.addr, align 4
  store i32* %curfrm, i32** %curfrm.addr, align 8
  store %struct.kb_t* %kb, %struct.kb_t** %kb.addr, align 8
  store i32 %maxwpf, i32* %maxwpf.addr, align 4
  store i32 %maxhistpf, i32* %maxhistpf.addr, align 4
  store i32 %maxhmmpf, i32* %maxhmmpf.addr, align 4
  store i32 %ptranskip, i32* %ptranskip.addr, align 4
  store %struct._IO_FILE* %hmmdumpfp, %struct._IO_FILE** %hmmdumpfp.addr, align 8
  %call = call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0))
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %pheurtype, align 4
  %2 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %kbcore1 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %2, i32 0, i32 0
  %3 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore1, align 8
  store %struct.kbcore_t* %3, %struct.kbcore_t** %kbcore, align 8
  %4 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mdef2 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %4, i32 0, i32 1
  %5 = load %struct.mdef_t*, %struct.mdef_t** %mdef2, align 8
  store %struct.mdef_t* %5, %struct.mdef_t** %mdef, align 8
  %6 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict3 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %6, i32 0, i32 2
  %7 = load %struct.dict_t*, %struct.dict_t** %dict3, align 8
  store %struct.dict_t* %7, %struct.dict_t** %dict, align 8
  %8 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict2pid = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %8, i32 0, i32 3
  %9 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  store %struct.dict2pid_t* %9, %struct.dict2pid_t** %d2p, align 8
  %10 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %mgau4 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %10, i32 0, i32 8
  %11 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau4, align 8
  store %struct.mgau_model_t* %11, %struct.mgau_model_t** %mgau, align 8
  %12 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %svq5 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %12, i32 0, i32 9
  %13 = load %struct.subvq_t*, %struct.subvq_t** %svq5, align 8
  store %struct.subvq_t* %13, %struct.subvq_t** %svq, align 8
  %14 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %gs6 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %14, i32 0, i32 10
  %15 = load %struct.gs_s*, %struct.gs_s** %gs6, align 8
  store %struct.gs_s* %15, %struct.gs_s** %gs, align 8
  %16 = load i32*, i32** %curfrm.addr, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %frmno, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_bins = getelementptr inbounds %struct.kb_t, %struct.kb_t* %19, i32 0, i32 38
  %20 = load i32, i32* %hmm_hist_bins, align 4
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %22, i32 0, i32 37
  %23 = load i32*, i32** %hmm_hist, align 8
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n_hmm_eval, align 4
  %25 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_sen = getelementptr inbounds %struct.kb_t, %struct.kb_t* %25, i32 0, i32 40
  call void @ptmr_start(%struct.ptmr_t* %tm_sen)
  %26 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window = getelementptr inbounds %struct.kb_t, %struct.kb_t* %26, i32 0, i32 28
  %27 = load i32, i32* %pl_window, align 4
  %28 = load i32, i32* %block_nfeatvec.addr, align 4
  %cmp7 = icmp sgt i32 %27, %28
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %29 = load i32, i32* %block_nfeatvec.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window8 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %30, i32 0, i32 28
  %31 = load i32, i32* %pl_window8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %31, %cond.false ]
  %32 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective = getelementptr inbounds %struct.kb_t, %struct.kb_t* %32, i32 0, i32 30
  store i32 %cond, i32* %pl_window_effective, align 4
  %33 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start = getelementptr inbounds %struct.kb_t, %struct.kb_t* %33, i32 0, i32 29
  store i32 0, i32* %pl_window_start, align 4
  store i32 0, i32* %f, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.47, %cond.end
  %34 = load i32, i32* %f, align 4
  %35 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective10 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %35, i32 0, i32 30
  %36 = load i32, i32* %pl_window_effective10, align 4
  %cmp11 = icmp slt i32 %34, %36
  br i1 %cmp11, label %for.body.12, label %for.end.49

for.body.12:                                      ; preds = %for.cond.9
  %37 = load i32, i32* %f, align 4
  %idxprom13 = sext i32 %37 to i64
  %38 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %38, i32 0, i32 16
  %39 = load i32*, i32** %cache_best_list, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %39, i64 %idxprom13
  store i32 -2147483648, i32* %arrayidx14, align 4
  %40 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  %41 = load i32, i32* %f, align 4
  %idxprom15 = sext i32 %41 to i64
  %42 = load float***, float**** %block_feat.addr, align 8
  %arrayidx16 = getelementptr inbounds float**, float*** %42, i64 %idxprom15
  %43 = load float**, float*** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds float*, float** %43, i64 0
  %44 = load float*, float** %arrayidx17, align 8
  %45 = load i32, i32* %f, align 4
  %idxprom18 = sext i32 %45 to i64
  %46 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %46, i32 0, i32 15
  %47 = load i32**, i32*** %cache_ci_senscr, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %47, i64 %idxprom18
  %48 = load i32*, i32** %arrayidx19, align 8
  %49 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  call void @approx_cont_mgau_ci_eval(%struct.mgau_model_t* %40, float* %44, i32* %48, %struct.kb_t* %49)
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.44, %for.body.12
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %51 to i64
  %52 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %cd2cisen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %52, i32 0, i32 11
  %53 = load i16*, i16** %cd2cisen, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %53, i64 %idxprom21
  %54 = load i16, i16* %arrayidx22, align 2
  %conv = sext i16 %54 to i32
  %cmp23 = icmp eq i32 %50, %conv
  br i1 %cmp23, label %for.body.25, label %for.end.46

for.body.25:                                      ; preds = %for.cond.20
  %55 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %55 to i64
  %56 = load i32, i32* %f, align 4
  %idxprom27 = sext i32 %56 to i64
  %57 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr28 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %57, i32 0, i32 15
  %58 = load i32**, i32*** %cache_ci_senscr28, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %58, i64 %idxprom27
  %59 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %59, i64 %idxprom26
  %60 = load i32, i32* %arrayidx30, align 4
  %61 = load i32, i32* %f, align 4
  %idxprom31 = sext i32 %61 to i64
  %62 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list32 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %62, i32 0, i32 16
  %63 = load i32*, i32** %cache_best_list32, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %63, i64 %idxprom31
  %64 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp sgt i32 %60, %64
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.25
  %65 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %65 to i64
  %66 = load i32, i32* %f, align 4
  %idxprom37 = sext i32 %66 to i64
  %67 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr38 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %67, i32 0, i32 15
  %68 = load i32**, i32*** %cache_ci_senscr38, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %68, i64 %idxprom37
  %69 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %69, i64 %idxprom36
  %70 = load i32, i32* %arrayidx40, align 4
  %71 = load i32, i32* %f, align 4
  %idxprom41 = sext i32 %71 to i64
  %72 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list42 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %72, i32 0, i32 16
  %73 = load i32*, i32** %cache_best_list42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %73, i64 %idxprom41
  store i32 %70, i32* %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.25
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end
  %74 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %74, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.20

for.end.46:                                       ; preds = %for.cond.20
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %75 = load i32, i32* %f, align 4
  %inc48 = add nsw i32 %75, 1
  store i32 %inc48, i32* %f, align 4
  br label %for.cond.9

for.end.49:                                       ; preds = %for.cond.9
  %76 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_sen50 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %76, i32 0, i32 40
  call void @ptmr_stop(%struct.ptmr_t* %tm_sen50)
  store i32 0, i32* %t, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.407, %for.end.49
  %77 = load i32, i32* %t, align 4
  %78 = load i32, i32* %block_nfeatvec.addr, align 4
  %cmp52 = icmp slt i32 %77, %78
  br i1 %cmp52, label %for.body.54, label %for.end.410

for.body.54:                                      ; preds = %for.cond.51
  %79 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_sen55 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %79, i32 0, i32 40
  call void @ptmr_start(%struct.ptmr_t* %tm_sen55)
  %80 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %80, i32 0, i32 11
  %81 = load i32*, i32** %sen_active, align 8
  %tobool = icmp ne i32* %81, null
  br i1 %tobool, label %if.then.56, label %if.end.88

if.then.56:                                       ; preds = %for.body.54
  %82 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ssid_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %82, i32 0, i32 9
  %83 = load i32*, i32** %ssid_active, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %85, i32 0, i32 10
  %86 = load i32, i32* %n_sseq, align 4
  %conv57 = sext i32 %86 to i64
  %mul = mul i64 %conv57, 4
  call void @llvm.memset.p0i8.i64(i8* %84, i8 0, i64 %mul, i32 4, i1 false)
  %87 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %comssid_active = getelementptr inbounds %struct.kb_t, %struct.kb_t* %87, i32 0, i32 10
  %88 = load i32*, i32** %comssid_active, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %90, i32 0, i32 7
  %91 = load i32, i32* %n_comsseq, align 4
  %conv58 = sext i32 %91 to i64
  %mul59 = mul i64 %conv58, 4
  call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 %mul59, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.78, %if.then.56
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %93, i32 0, i32 1
  %94 = load i32, i32* %n_lextree, align 4
  %shl = shl i32 %94, 1
  %cmp61 = icmp slt i32 %92, %shl
  br i1 %cmp61, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.60
  %95 = load i32, i32* %i, align 4
  %96 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree64 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %96, i32 0, i32 1
  %97 = load i32, i32* %n_lextree64, align 4
  %cmp65 = icmp slt i32 %95, %97
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %for.body.63
  %98 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %98 to i64
  %99 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %99, i32 0, i32 2
  %100 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree, align 8
  %arrayidx69 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %100, i64 %idxprom68
  %101 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx69, align 8
  br label %cond.end.74

cond.false.70:                                    ; preds = %for.body.63
  %102 = load i32, i32* %i, align 4
  %103 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree71 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %103, i32 0, i32 1
  %104 = load i32, i32* %n_lextree71, align 4
  %sub = sub nsw i32 %102, %104
  %idxprom72 = sext i32 %sub to i64
  %105 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree = getelementptr inbounds %struct.kb_t, %struct.kb_t* %105, i32 0, i32 4
  %106 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree, align 8
  %arrayidx73 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %106, i64 %idxprom72
  %107 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx73, align 8
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.70, %cond.true.67
  %cond75 = phi %struct.lextree_t* [ %101, %cond.true.67 ], [ %107, %cond.false.70 ]
  store %struct.lextree_t* %cond75, %struct.lextree_t** %lextree, align 8
  %108 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %109 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ssid_active76 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %109, i32 0, i32 9
  %110 = load i32*, i32** %ssid_active76, align 8
  %111 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %comssid_active77 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %111, i32 0, i32 10
  %112 = load i32*, i32** %comssid_active77, align 8
  call void @lextree_ssid_active(%struct.lextree_t* %108, i32* %110, i32* %112)
  br label %for.inc.78

for.inc.78:                                       ; preds = %cond.end.74
  %113 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %113, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.60

for.end.80:                                       ; preds = %for.cond.60
  %114 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active81 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %114, i32 0, i32 11
  %115 = load i32*, i32** %sen_active81, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %n_sen = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %117, i32 0, i32 4
  %118 = load i32, i32* %n_sen, align 4
  %conv82 = sext i32 %118 to i64
  %mul83 = mul i64 %conv82, 4
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 %mul83, i32 4, i1 false)
  %119 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %120 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ssid_active84 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %120, i32 0, i32 9
  %121 = load i32*, i32** %ssid_active84, align 8
  %122 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active85 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %122, i32 0, i32 11
  %123 = load i32*, i32** %sen_active85, align 8
  call void @mdef_sseq2sen_active(%struct.mdef_t* %119, i32* %121, i32* %123)
  %124 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p, align 8
  %125 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %126 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %comssid_active86 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %126, i32 0, i32 10
  %127 = load i32*, i32** %comssid_active86, align 8
  %128 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active87 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %128, i32 0, i32 11
  %129 = load i32*, i32** %sen_active87, align 8
  call void @dict2pid_comsseq2sen_active(%struct.dict2pid_t* %124, %struct.mdef_t* %125, i32* %127, i32* %129)
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.80, %for.body.54
  %130 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  %131 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %132 = load %struct.subvq_t*, %struct.subvq_t** %svq, align 8
  %133 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %133, i32 0, i32 22
  %134 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %subvq = getelementptr inbounds %struct.beam_t, %struct.beam_t* %134, i32 0, i32 0
  %135 = load i32, i32* %subvq, align 4
  %136 = load i32, i32* %t, align 4
  %idxprom89 = sext i32 %136 to i64
  %137 = load float***, float**** %block_feat.addr, align 8
  %arrayidx90 = getelementptr inbounds float**, float*** %137, i64 %idxprom89
  %138 = load float**, float*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds float*, float** %138, i64 0
  %139 = load float*, float** %arrayidx91, align 8
  %140 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %sen_active92 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %140, i32 0, i32 11
  %141 = load i32*, i32** %sen_active92, align 8
  %142 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ascr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %142, i32 0, i32 21
  %143 = load %struct.ascr_t*, %struct.ascr_t** %ascr, align 8
  %sen = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %143, i32 0, i32 0
  %144 = load i32*, i32** %sen, align 8
  %145 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start93 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %145, i32 0, i32 29
  %146 = load i32, i32* %pl_window_start93, align 4
  %idxprom94 = sext i32 %146 to i64
  %147 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr95 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %147, i32 0, i32 15
  %148 = load i32**, i32*** %cache_ci_senscr95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %148, i64 %idxprom94
  %149 = load i32*, i32** %arrayidx96, align 8
  %150 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %151 = load i32, i32* %t, align 4
  %call97 = call i32 @approx_cont_mgau_frame_eval(%struct.mgau_model_t* %130, %struct.gs_s* %131, %struct.subvq_t* %132, i32 %135, float* %139, i32* %141, i32* %144, i32* %149, %struct.kb_t* %150, i32 %151)
  %152 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  %frm_sen_eval = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %152, i32 0, i32 5
  %153 = load i32, i32* %frm_sen_eval, align 4
  %154 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_sen_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %154, i32 0, i32 35
  %155 = load i32, i32* %utt_sen_eval, align 4
  %add = add nsw i32 %155, %153
  store i32 %add, i32* %utt_sen_eval, align 4
  %156 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  %frm_gau_eval = getelementptr inbounds %struct.mgau_model_t, %struct.mgau_model_t* %156, i32 0, i32 6
  %157 = load i32, i32* %frm_gau_eval, align 4
  %158 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_gau_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %158, i32 0, i32 36
  %159 = load i32, i32* %utt_gau_eval, align 4
  %add98 = add nsw i32 %159, %157
  store i32 %add98, i32* %utt_gau_eval, align 4
  %160 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %dict2pid99 = getelementptr inbounds %struct.kbcore_t, %struct.kbcore_t* %160, i32 0, i32 3
  %161 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid99, align 8
  %162 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ascr100 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %162, i32 0, i32 21
  %163 = load %struct.ascr_t*, %struct.ascr_t** %ascr100, align 8
  %sen101 = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %163, i32 0, i32 0
  %164 = load i32*, i32** %sen101, align 8
  %165 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ascr102 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %165, i32 0, i32 21
  %166 = load %struct.ascr_t*, %struct.ascr_t** %ascr102, align 8
  %comsen = getelementptr inbounds %struct.ascr_t, %struct.ascr_t* %166, i32 0, i32 1
  %167 = load i32*, i32** %comsen, align 8
  call void @dict2pid_comsenscr(%struct.dict2pid_t* %161, i32* %164, i32* %167)
  %168 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_sen103 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %168, i32 0, i32 40
  call void @ptmr_stop(%struct.ptmr_t* %tm_sen103)
  %169 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_srch = getelementptr inbounds %struct.kb_t, %struct.kb_t* %169, i32 0, i32 41
  call void @ptmr_start(%struct.ptmr_t* %tm_srch)
  %170 = load i32, i32* %pheurtype, align 4
  %cmp104 = icmp ne i32 %170, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.88
  %171 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %172 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %173 = load i32, i32* %pheurtype, align 4
  call void @computePhnHeur(%struct.mdef_t* %171, %struct.kb_t* %172, i32 %173)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.88
  store i32 -2147483648, i32* %besthmmscr, align 4
  store i32 -2147483648, i32* %bestwordscr, align 4
  store i32 0, i32* %frm_nhmm, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.150, %if.end.107
  %174 = load i32, i32* %i, align 4
  %175 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree109 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %175, i32 0, i32 1
  %176 = load i32, i32* %n_lextree109, align 4
  %shl110 = shl i32 %176, 1
  %cmp111 = icmp slt i32 %174, %shl110
  br i1 %cmp111, label %for.body.113, label %for.end.152

for.body.113:                                     ; preds = %for.cond.108
  %177 = load i32, i32* %i, align 4
  %178 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree114 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %178, i32 0, i32 1
  %179 = load i32, i32* %n_lextree114, align 4
  %cmp115 = icmp slt i32 %177, %179
  br i1 %cmp115, label %cond.true.117, label %cond.false.121

cond.true.117:                                    ; preds = %for.body.113
  %180 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %180 to i64
  %181 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree119 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %181, i32 0, i32 2
  %182 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree119, align 8
  %arrayidx120 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %182, i64 %idxprom118
  %183 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx120, align 8
  br label %cond.end.127

cond.false.121:                                   ; preds = %for.body.113
  %184 = load i32, i32* %i, align 4
  %185 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree122 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %185, i32 0, i32 1
  %186 = load i32, i32* %n_lextree122, align 4
  %sub123 = sub nsw i32 %184, %186
  %idxprom124 = sext i32 %sub123 to i64
  %187 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree125 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %187, i32 0, i32 4
  %188 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree125, align 8
  %arrayidx126 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %188, i64 %idxprom124
  %189 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx126, align 8
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.121, %cond.true.117
  %cond128 = phi %struct.lextree_t* [ %183, %cond.true.117 ], [ %189, %cond.false.121 ]
  store %struct.lextree_t* %cond128, %struct.lextree_t** %lextree, align 8
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %hmmdumpfp.addr, align 8
  %cmp129 = icmp ne %struct._IO_FILE* %190, null
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %cond.end.127
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %hmmdumpfp.addr, align 8
  %192 = load i32, i32* %frmno, align 4
  %193 = load i32, i32* %i, align 4
  %194 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_active = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %194, i32 0, i32 7
  %195 = load i32, i32* %n_active, align 4
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i32 %192, i32 %193, i32 %195)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %cond.end.127
  %196 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %197 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %198 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ascr134 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %198, i32 0, i32 21
  %199 = load %struct.ascr_t*, %struct.ascr_t** %ascr134, align 8
  %200 = load i32, i32* %frmno, align 4
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %hmmdumpfp.addr, align 8
  %call135 = call i32 @lextree_hmm_eval(%struct.lextree_t* %196, %struct.kbcore_t* %197, %struct.ascr_t* %199, i32 %200, %struct._IO_FILE* %201)
  %202 = load i32, i32* %besthmmscr, align 4
  %203 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %best = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %203, i32 0, i32 9
  %204 = load i32, i32* %best, align 4
  %cmp136 = icmp slt i32 %202, %204
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.133
  %205 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %best139 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %205, i32 0, i32 9
  %206 = load i32, i32* %best139, align 4
  store i32 %206, i32* %besthmmscr, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.133
  %207 = load i32, i32* %bestwordscr, align 4
  %208 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %wbest = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %208, i32 0, i32 10
  %209 = load i32, i32* %wbest, align 4
  %cmp141 = icmp slt i32 %207, %209
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.140
  %210 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %wbest144 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %210, i32 0, i32 10
  %211 = load i32, i32* %wbest144, align 4
  store i32 %211, i32* %bestwordscr, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.140
  %212 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_active146 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %212, i32 0, i32 7
  %213 = load i32, i32* %n_active146, align 4
  %214 = load i32, i32* %n_hmm_eval, align 4
  %add147 = add nsw i32 %214, %213
  store i32 %add147, i32* %n_hmm_eval, align 4
  %215 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %n_active148 = getelementptr inbounds %struct.lextree_t, %struct.lextree_t* %215, i32 0, i32 7
  %216 = load i32, i32* %n_active148, align 4
  %217 = load i32, i32* %frm_nhmm, align 4
  %add149 = add nsw i32 %217, %216
  store i32 %add149, i32* %frm_nhmm, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.145
  %218 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %218, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.108

for.end.152:                                      ; preds = %for.cond.108
  %219 = load i32, i32* %besthmmscr, align 4
  %cmp153 = icmp sgt i32 %219, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %for.end.152
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 1041, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %220 = load i32, i32* %frmno, align 4
  %221 = load i32, i32* %besthmmscr, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.66, i32 0, i32 0), i32 %220, i32 %221)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %for.end.152
  %222 = load i32, i32* %frm_nhmm, align 4
  %223 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist_binsize = getelementptr inbounds %struct.kb_t, %struct.kb_t* %223, i32 0, i32 39
  %224 = load i32, i32* %hmm_hist_binsize, align 4
  %div = sdiv i32 %222, %224
  %idxprom157 = sext i32 %div to i64
  %225 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %hmm_hist158 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %225, i32 0, i32 37
  %226 = load i32*, i32** %hmm_hist158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %226, i64 %idxprom157
  %227 = load i32, i32* %arrayidx159, align 4
  %inc160 = add nsw i32 %227, 1
  store i32 %inc160, i32* %arrayidx159, align 4
  %228 = load i32, i32* %frm_nhmm, align 4
  %229 = load i32, i32* %maxhmmpf.addr, align 4
  %230 = load i32, i32* %maxhmmpf.addr, align 4
  %shr = ashr i32 %230, 1
  %add161 = add nsw i32 %229, %shr
  %cmp162 = icmp sgt i32 %228, %add161
  br i1 %cmp162, label %if.then.164, label %if.else

if.then.164:                                      ; preds = %if.end.156
  store i32 1000, i32* %nbin, align 4
  %231 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam165 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %231, i32 0, i32 22
  %232 = load %struct.beam_t*, %struct.beam_t** %beam165, align 8
  %hmm = getelementptr inbounds %struct.beam_t, %struct.beam_t* %232, i32 0, i32 1
  %233 = load i32, i32* %hmm, align 4
  %sub166 = sub nsw i32 0, %233
  %234 = load i32, i32* %nbin, align 4
  %div167 = sdiv i32 %sub166, %234
  store i32 %div167, i32* %bw, align 4
  %235 = load i32, i32* %nbin, align 4
  %conv168 = sext i32 %235 to i64
  %call169 = call i8* @__ckd_calloc__(i64 %conv168, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 1056)
  %236 = bitcast i8* %call169 to i32*
  store i32* %236, i32** %bin, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.191, %if.then.164
  %237 = load i32, i32* %i, align 4
  %238 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree171 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %238, i32 0, i32 1
  %239 = load i32, i32* %n_lextree171, align 4
  %shl172 = shl i32 %239, 1
  %cmp173 = icmp slt i32 %237, %shl172
  br i1 %cmp173, label %for.body.175, label %for.end.193

for.body.175:                                     ; preds = %for.cond.170
  %240 = load i32, i32* %i, align 4
  %241 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree176 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %241, i32 0, i32 1
  %242 = load i32, i32* %n_lextree176, align 4
  %cmp177 = icmp slt i32 %240, %242
  br i1 %cmp177, label %cond.true.179, label %cond.false.183

cond.true.179:                                    ; preds = %for.body.175
  %243 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %243 to i64
  %244 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree181 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %244, i32 0, i32 2
  %245 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree181, align 8
  %arrayidx182 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %245, i64 %idxprom180
  %246 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx182, align 8
  br label %cond.end.189

cond.false.183:                                   ; preds = %for.body.175
  %247 = load i32, i32* %i, align 4
  %248 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree184 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %248, i32 0, i32 1
  %249 = load i32, i32* %n_lextree184, align 4
  %sub185 = sub nsw i32 %247, %249
  %idxprom186 = sext i32 %sub185 to i64
  %250 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree187 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %250, i32 0, i32 4
  %251 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree187, align 8
  %arrayidx188 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %251, i64 %idxprom186
  %252 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx188, align 8
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.183, %cond.true.179
  %cond190 = phi %struct.lextree_t* [ %246, %cond.true.179 ], [ %252, %cond.false.183 ]
  store %struct.lextree_t* %cond190, %struct.lextree_t** %lextree, align 8
  %253 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %254 = load i32, i32* %besthmmscr, align 4
  %255 = load i32*, i32** %bin, align 8
  %256 = load i32, i32* %nbin, align 4
  %257 = load i32, i32* %bw, align 4
  call void @lextree_hmm_histbin(%struct.lextree_t* %253, i32 %254, i32* %255, i32 %256, i32 %257)
  br label %for.inc.191

for.inc.191:                                      ; preds = %cond.end.189
  %258 = load i32, i32* %i, align 4
  %inc192 = add nsw i32 %258, 1
  store i32 %inc192, i32* %i, align 4
  br label %for.cond.170

for.end.193:                                      ; preds = %for.cond.170
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.200, %for.end.193
  %259 = load i32, i32* %i, align 4
  %260 = load i32, i32* %nbin, align 4
  %cmp195 = icmp slt i32 %259, %260
  br i1 %cmp195, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.194
  %261 = load i32, i32* %j, align 4
  %262 = load i32, i32* %maxhmmpf.addr, align 4
  %cmp197 = icmp slt i32 %261, %262
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.194
  %263 = phi i1 [ false, %for.cond.194 ], [ %cmp197, %land.rhs ]
  br i1 %263, label %for.body.199, label %for.end.205

for.body.199:                                     ; preds = %land.end
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.199
  %264 = load i32, i32* %i, align 4
  %inc201 = add nsw i32 %264, 1
  store i32 %inc201, i32* %i, align 4
  %265 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %265 to i64
  %266 = load i32*, i32** %bin, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %266, i64 %idxprom202
  %267 = load i32, i32* %arrayidx203, align 4
  %268 = load i32, i32* %j, align 4
  %add204 = add nsw i32 %268, %267
  store i32 %add204, i32* %j, align 4
  br label %for.cond.194

for.end.205:                                      ; preds = %land.end
  %269 = load i32*, i32** %bin, align 8
  %270 = bitcast i32* %269 to i8*
  call void @ckd_free(i8* %270)
  %271 = load i32, i32* %i, align 4
  %272 = load i32, i32* %bw, align 4
  %mul206 = mul nsw i32 %271, %272
  %sub207 = sub nsw i32 0, %mul206
  store i32 %sub207, i32* %hb, align 4
  %273 = load i32, i32* %hb, align 4
  %274 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam208 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %274, i32 0, i32 22
  %275 = load %struct.beam_t*, %struct.beam_t** %beam208, align 8
  %ptrans = getelementptr inbounds %struct.beam_t, %struct.beam_t* %275, i32 0, i32 2
  %276 = load i32, i32* %ptrans, align 4
  %cmp209 = icmp sgt i32 %273, %276
  br i1 %cmp209, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %for.end.205
  %277 = load i32, i32* %hb, align 4
  br label %cond.end.215

cond.false.212:                                   ; preds = %for.end.205
  %278 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam213 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %278, i32 0, i32 22
  %279 = load %struct.beam_t*, %struct.beam_t** %beam213, align 8
  %ptrans214 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %279, i32 0, i32 2
  %280 = load i32, i32* %ptrans214, align 4
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.212, %cond.true.211
  %cond216 = phi i32 [ %277, %cond.true.211 ], [ %280, %cond.false.212 ]
  store i32 %cond216, i32* %pb, align 4
  %281 = load i32, i32* %hb, align 4
  %282 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam217 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %282, i32 0, i32 22
  %283 = load %struct.beam_t*, %struct.beam_t** %beam217, align 8
  %word = getelementptr inbounds %struct.beam_t, %struct.beam_t* %283, i32 0, i32 3
  %284 = load i32, i32* %word, align 4
  %cmp218 = icmp sgt i32 %281, %284
  br i1 %cmp218, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %cond.end.215
  %285 = load i32, i32* %hb, align 4
  br label %cond.end.224

cond.false.221:                                   ; preds = %cond.end.215
  %286 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam222 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %286, i32 0, i32 22
  %287 = load %struct.beam_t*, %struct.beam_t** %beam222, align 8
  %word223 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %287, i32 0, i32 3
  %288 = load i32, i32* %word223, align 4
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.221, %cond.true.220
  %cond225 = phi i32 [ %285, %cond.true.220 ], [ %288, %cond.false.221 ]
  store i32 %cond225, i32* %wb, align 4
  br label %if.end.232

if.else:                                          ; preds = %if.end.156
  %289 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam226 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %289, i32 0, i32 22
  %290 = load %struct.beam_t*, %struct.beam_t** %beam226, align 8
  %hmm227 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %290, i32 0, i32 1
  %291 = load i32, i32* %hmm227, align 4
  store i32 %291, i32* %hb, align 4
  %292 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam228 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %292, i32 0, i32 22
  %293 = load %struct.beam_t*, %struct.beam_t** %beam228, align 8
  %ptrans229 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %293, i32 0, i32 2
  %294 = load i32, i32* %ptrans229, align 4
  store i32 %294, i32* %pb, align 4
  %295 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %beam230 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %295, i32 0, i32 22
  %296 = load %struct.beam_t*, %struct.beam_t** %beam230, align 8
  %word231 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %296, i32 0, i32 3
  %297 = load i32, i32* %word231, align 4
  store i32 %297, i32* %wb, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.else, %cond.end.224
  %298 = load i32, i32* %besthmmscr, align 4
  %299 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %bestscore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %299, i32 0, i32 19
  store i32 %298, i32* %bestscore, align 4
  %300 = load i32, i32* %bestwordscr, align 4
  %301 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %bestwordscore = getelementptr inbounds %struct.kb_t, %struct.kb_t* %301, i32 0, i32 20
  store i32 %300, i32* %bestwordscore, align 4
  %302 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %bestscore233 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %302, i32 0, i32 19
  %303 = load i32, i32* %bestscore233, align 4
  %304 = load i32, i32* %hb, align 4
  %add234 = add nsw i32 %303, %304
  store i32 %add234, i32* %th, align 4
  %305 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %bestscore235 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %305, i32 0, i32 19
  %306 = load i32, i32* %bestscore235, align 4
  %307 = load i32, i32* %pb, align 4
  %add236 = add nsw i32 %306, %307
  store i32 %add236, i32* %pth, align 4
  %308 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %bestwordscore237 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %308, i32 0, i32 20
  %309 = load i32, i32* %bestwordscore237, align 4
  %310 = load i32, i32* %wb, align 4
  %add238 = add nsw i32 %309, %310
  store i32 %add238, i32* %wth, align 4
  %311 = load i32, i32* %ptranskip.addr, align 4
  %cmp239 = icmp eq i32 %311, 0
  br i1 %cmp239, label %if.then.241, label %if.else.266

if.then.241:                                      ; preds = %if.end.232
  store i32 0, i32* %i, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.263, %if.then.241
  %312 = load i32, i32* %i, align 4
  %313 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree243 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %313, i32 0, i32 1
  %314 = load i32, i32* %n_lextree243, align 4
  %shl244 = shl i32 %314, 1
  %cmp245 = icmp slt i32 %312, %shl244
  br i1 %cmp245, label %for.body.247, label %for.end.265

for.body.247:                                     ; preds = %for.cond.242
  %315 = load i32, i32* %i, align 4
  %316 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree248 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %316, i32 0, i32 1
  %317 = load i32, i32* %n_lextree248, align 4
  %cmp249 = icmp slt i32 %315, %317
  br i1 %cmp249, label %cond.true.251, label %cond.false.255

cond.true.251:                                    ; preds = %for.body.247
  %318 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %318 to i64
  %319 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree253 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %319, i32 0, i32 2
  %320 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree253, align 8
  %arrayidx254 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %320, i64 %idxprom252
  %321 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx254, align 8
  br label %cond.end.261

cond.false.255:                                   ; preds = %for.body.247
  %322 = load i32, i32* %i, align 4
  %323 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree256 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %323, i32 0, i32 1
  %324 = load i32, i32* %n_lextree256, align 4
  %sub257 = sub nsw i32 %322, %324
  %idxprom258 = sext i32 %sub257 to i64
  %325 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree259 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %325, i32 0, i32 4
  %326 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree259, align 8
  %arrayidx260 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %326, i64 %idxprom258
  %327 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx260, align 8
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.255, %cond.true.251
  %cond262 = phi %struct.lextree_t* [ %321, %cond.true.251 ], [ %327, %cond.false.255 ]
  store %struct.lextree_t* %cond262, %struct.lextree_t** %lextree, align 8
  %328 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %329 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %330 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist = getelementptr inbounds %struct.kb_t, %struct.kb_t* %330, i32 0, i32 6
  %331 = load %struct.vithist_t*, %struct.vithist_t** %vithist, align 8
  %332 = load i32, i32* %frmno, align 4
  %333 = load i32, i32* %th, align 4
  %334 = load i32, i32* %pth, align 4
  %335 = load i32, i32* %wth, align 4
  %336 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list = getelementptr inbounds %struct.kb_t, %struct.kb_t* %336, i32 0, i32 17
  %337 = load i32*, i32** %phn_heur_list, align 8
  %338 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %338, i32 0, i32 31
  %339 = load i32, i32* %pl_beam, align 4
  %340 = load i32, i32* %pheurtype, align 4
  call void @lextree_hmm_propagate(%struct.lextree_t* %328, %struct.kbcore_t* %329, %struct.vithist_t* %331, i32 %332, i32 %333, i32 %334, i32 %335, i32* %337, i32 %339, i32 %340)
  br label %for.inc.263

for.inc.263:                                      ; preds = %cond.end.261
  %341 = load i32, i32* %i, align 4
  %inc264 = add nsw i32 %341, 1
  store i32 %inc264, i32* %i, align 4
  br label %for.cond.242

for.end.265:                                      ; preds = %for.cond.242
  br label %if.end.302

if.else.266:                                      ; preds = %if.end.232
  store i32 0, i32* %i, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.299, %if.else.266
  %342 = load i32, i32* %i, align 4
  %343 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree268 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %343, i32 0, i32 1
  %344 = load i32, i32* %n_lextree268, align 4
  %shl269 = shl i32 %344, 1
  %cmp270 = icmp slt i32 %342, %shl269
  br i1 %cmp270, label %for.body.272, label %for.end.301

for.body.272:                                     ; preds = %for.cond.267
  %345 = load i32, i32* %i, align 4
  %346 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree273 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %346, i32 0, i32 1
  %347 = load i32, i32* %n_lextree273, align 4
  %cmp274 = icmp slt i32 %345, %347
  br i1 %cmp274, label %cond.true.276, label %cond.false.280

cond.true.276:                                    ; preds = %for.body.272
  %348 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %348 to i64
  %349 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %ugtree278 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %349, i32 0, i32 2
  %350 = load %struct.lextree_t**, %struct.lextree_t*** %ugtree278, align 8
  %arrayidx279 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %350, i64 %idxprom277
  %351 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx279, align 8
  br label %cond.end.286

cond.false.280:                                   ; preds = %for.body.272
  %352 = load i32, i32* %i, align 4
  %353 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %n_lextree281 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %353, i32 0, i32 1
  %354 = load i32, i32* %n_lextree281, align 4
  %sub282 = sub nsw i32 %352, %354
  %idxprom283 = sext i32 %sub282 to i64
  %355 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %fillertree284 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %355, i32 0, i32 4
  %356 = load %struct.lextree_t**, %struct.lextree_t*** %fillertree284, align 8
  %arrayidx285 = getelementptr inbounds %struct.lextree_t*, %struct.lextree_t** %356, i64 %idxprom283
  %357 = load %struct.lextree_t*, %struct.lextree_t** %arrayidx285, align 8
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.false.280, %cond.true.276
  %cond287 = phi %struct.lextree_t* [ %351, %cond.true.276 ], [ %357, %cond.false.280 ]
  store %struct.lextree_t* %cond287, %struct.lextree_t** %lextree, align 8
  %358 = load i32, i32* %frmno, align 4
  %359 = load i32, i32* %ptranskip.addr, align 4
  %rem = srem i32 %358, %359
  %cmp288 = icmp ne i32 %rem, 0
  br i1 %cmp288, label %if.then.290, label %if.else.294

if.then.290:                                      ; preds = %cond.end.286
  %360 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %361 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %362 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist291 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %362, i32 0, i32 6
  %363 = load %struct.vithist_t*, %struct.vithist_t** %vithist291, align 8
  %364 = load i32, i32* %frmno, align 4
  %365 = load i32, i32* %th, align 4
  %366 = load i32, i32* %pth, align 4
  %367 = load i32, i32* %wth, align 4
  %368 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list292 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %368, i32 0, i32 17
  %369 = load i32*, i32** %phn_heur_list292, align 8
  %370 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_beam293 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %370, i32 0, i32 31
  %371 = load i32, i32* %pl_beam293, align 4
  %372 = load i32, i32* %pheurtype, align 4
  call void @lextree_hmm_propagate(%struct.lextree_t* %360, %struct.kbcore_t* %361, %struct.vithist_t* %363, i32 %364, i32 %365, i32 %366, i32 %367, i32* %369, i32 %371, i32 %372)
  br label %if.end.298

if.else.294:                                      ; preds = %cond.end.286
  %373 = load %struct.lextree_t*, %struct.lextree_t** %lextree, align 8
  %374 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  %375 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist295 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %375, i32 0, i32 6
  %376 = load %struct.vithist_t*, %struct.vithist_t** %vithist295, align 8
  %377 = load i32, i32* %frmno, align 4
  %378 = load i32, i32* %th, align 4
  %379 = load i32, i32* %wth, align 4
  %380 = load i32, i32* %wth, align 4
  %381 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %phn_heur_list296 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %381, i32 0, i32 17
  %382 = load i32*, i32** %phn_heur_list296, align 8
  %383 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_beam297 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %383, i32 0, i32 31
  %384 = load i32, i32* %pl_beam297, align 4
  %385 = load i32, i32* %pheurtype, align 4
  call void @lextree_hmm_propagate(%struct.lextree_t* %373, %struct.kbcore_t* %374, %struct.vithist_t* %376, i32 %377, i32 %378, i32 %379, i32 %380, i32* %382, i32 %384, i32 %385)
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.294, %if.then.290
  br label %for.inc.299

for.inc.299:                                      ; preds = %if.end.298
  %386 = load i32, i32* %i, align 4
  %inc300 = add nsw i32 %386, 1
  store i32 %inc300, i32* %i, align 4
  br label %for.cond.267

for.end.301:                                      ; preds = %for.cond.267
  br label %if.end.302

if.end.302:                                       ; preds = %for.end.301, %for.end.265
  %387 = load i32, i32* %t, align 4
  %388 = load i32, i32* %block_nfeatvec.addr, align 4
  %389 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective303 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %389, i32 0, i32 30
  %390 = load i32, i32* %pl_window_effective303, align 4
  %sub304 = sub nsw i32 %388, %390
  %cmp305 = icmp slt i32 %387, %sub304
  br i1 %cmp305, label %if.then.307, label %if.else.400

if.then.307:                                      ; preds = %if.end.302
  store i32 0, i32* %i, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.343, %if.then.307
  %391 = load i32, i32* %i, align 4
  %392 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective309 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %392, i32 0, i32 30
  %393 = load i32, i32* %pl_window_effective309, align 4
  %sub310 = sub nsw i32 %393, 1
  %cmp311 = icmp slt i32 %391, %sub310
  br i1 %cmp311, label %for.body.313, label %for.end.345

for.body.313:                                     ; preds = %for.cond.308
  %394 = load i32, i32* %i, align 4
  %add314 = add nsw i32 %394, 1
  %idxprom315 = sext i32 %add314 to i64
  %395 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list316 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %395, i32 0, i32 16
  %396 = load i32*, i32** %cache_best_list316, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %396, i64 %idxprom315
  %397 = load i32, i32* %arrayidx317, align 4
  %398 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %398 to i64
  %399 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list319 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %399, i32 0, i32 16
  %400 = load i32*, i32** %cache_best_list319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %400, i64 %idxprom318
  store i32 %397, i32* %arrayidx320, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.340, %for.body.313
  %401 = load i32, i32* %j, align 4
  %402 = load i32, i32* %j, align 4
  %idxprom322 = sext i32 %402 to i64
  %403 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %cd2cisen323 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %403, i32 0, i32 11
  %404 = load i16*, i16** %cd2cisen323, align 8
  %arrayidx324 = getelementptr inbounds i16, i16* %404, i64 %idxprom322
  %405 = load i16, i16* %arrayidx324, align 2
  %conv325 = sext i16 %405 to i32
  %cmp326 = icmp eq i32 %401, %conv325
  br i1 %cmp326, label %for.body.328, label %for.end.342

for.body.328:                                     ; preds = %for.cond.321
  %406 = load i32, i32* %j, align 4
  %idxprom329 = sext i32 %406 to i64
  %407 = load i32, i32* %i, align 4
  %add330 = add nsw i32 %407, 1
  %idxprom331 = sext i32 %add330 to i64
  %408 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr332 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %408, i32 0, i32 15
  %409 = load i32**, i32*** %cache_ci_senscr332, align 8
  %arrayidx333 = getelementptr inbounds i32*, i32** %409, i64 %idxprom331
  %410 = load i32*, i32** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %410, i64 %idxprom329
  %411 = load i32, i32* %arrayidx334, align 4
  %412 = load i32, i32* %j, align 4
  %idxprom335 = sext i32 %412 to i64
  %413 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %413 to i64
  %414 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr337 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %414, i32 0, i32 15
  %415 = load i32**, i32*** %cache_ci_senscr337, align 8
  %arrayidx338 = getelementptr inbounds i32*, i32** %415, i64 %idxprom336
  %416 = load i32*, i32** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %416, i64 %idxprom335
  store i32 %411, i32* %arrayidx339, align 4
  br label %for.inc.340

for.inc.340:                                      ; preds = %for.body.328
  %417 = load i32, i32* %j, align 4
  %inc341 = add nsw i32 %417, 1
  store i32 %inc341, i32* %j, align 4
  br label %for.cond.321

for.end.342:                                      ; preds = %for.cond.321
  br label %for.inc.343

for.inc.343:                                      ; preds = %for.end.342
  %418 = load i32, i32* %i, align 4
  %inc344 = add nsw i32 %418, 1
  store i32 %inc344, i32* %i, align 4
  br label %for.cond.308

for.end.345:                                      ; preds = %for.cond.308
  %419 = load %struct.mgau_model_t*, %struct.mgau_model_t** %mgau, align 8
  %420 = load i32, i32* %t, align 4
  %421 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective346 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %421, i32 0, i32 30
  %422 = load i32, i32* %pl_window_effective346, align 4
  %add347 = add nsw i32 %420, %422
  %idxprom348 = sext i32 %add347 to i64
  %423 = load float***, float**** %block_feat.addr, align 8
  %arrayidx349 = getelementptr inbounds float**, float*** %423, i64 %idxprom348
  %424 = load float**, float*** %arrayidx349, align 8
  %arrayidx350 = getelementptr inbounds float*, float** %424, i64 0
  %425 = load float*, float** %arrayidx350, align 8
  %426 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective351 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %426, i32 0, i32 30
  %427 = load i32, i32* %pl_window_effective351, align 4
  %sub352 = sub nsw i32 %427, 1
  %idxprom353 = sext i32 %sub352 to i64
  %428 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr354 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %428, i32 0, i32 15
  %429 = load i32**, i32*** %cache_ci_senscr354, align 8
  %arrayidx355 = getelementptr inbounds i32*, i32** %429, i64 %idxprom353
  %430 = load i32*, i32** %arrayidx355, align 8
  %431 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  call void @approx_cont_mgau_ci_eval(%struct.mgau_model_t* %419, float* %425, i32* %430, %struct.kb_t* %431)
  %432 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective356 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %432, i32 0, i32 30
  %433 = load i32, i32* %pl_window_effective356, align 4
  %sub357 = sub nsw i32 %433, 1
  %idxprom358 = sext i32 %sub357 to i64
  %434 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list359 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %434, i32 0, i32 16
  %435 = load i32*, i32** %cache_best_list359, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %435, i64 %idxprom358
  store i32 -2147483648, i32* %arrayidx360, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.397, %for.end.345
  %436 = load i32, i32* %i, align 4
  %437 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %437 to i64
  %438 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %cd2cisen363 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %438, i32 0, i32 11
  %439 = load i16*, i16** %cd2cisen363, align 8
  %arrayidx364 = getelementptr inbounds i16, i16* %439, i64 %idxprom362
  %440 = load i16, i16* %arrayidx364, align 2
  %conv365 = sext i16 %440 to i32
  %cmp366 = icmp eq i32 %436, %conv365
  br i1 %cmp366, label %for.body.368, label %for.end.399

for.body.368:                                     ; preds = %for.cond.361
  %441 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %441 to i64
  %442 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective370 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %442, i32 0, i32 30
  %443 = load i32, i32* %pl_window_effective370, align 4
  %sub371 = sub nsw i32 %443, 1
  %idxprom372 = sext i32 %sub371 to i64
  %444 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr373 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %444, i32 0, i32 15
  %445 = load i32**, i32*** %cache_ci_senscr373, align 8
  %arrayidx374 = getelementptr inbounds i32*, i32** %445, i64 %idxprom372
  %446 = load i32*, i32** %arrayidx374, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %446, i64 %idxprom369
  %447 = load i32, i32* %arrayidx375, align 4
  %448 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective376 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %448, i32 0, i32 30
  %449 = load i32, i32* %pl_window_effective376, align 4
  %sub377 = sub nsw i32 %449, 1
  %idxprom378 = sext i32 %sub377 to i64
  %450 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list379 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %450, i32 0, i32 16
  %451 = load i32*, i32** %cache_best_list379, align 8
  %arrayidx380 = getelementptr inbounds i32, i32* %451, i64 %idxprom378
  %452 = load i32, i32* %arrayidx380, align 4
  %cmp381 = icmp sgt i32 %447, %452
  br i1 %cmp381, label %if.then.383, label %if.end.396

if.then.383:                                      ; preds = %for.body.368
  %453 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %453 to i64
  %454 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective385 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %454, i32 0, i32 30
  %455 = load i32, i32* %pl_window_effective385, align 4
  %sub386 = sub nsw i32 %455, 1
  %idxprom387 = sext i32 %sub386 to i64
  %456 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_ci_senscr388 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %456, i32 0, i32 15
  %457 = load i32**, i32*** %cache_ci_senscr388, align 8
  %arrayidx389 = getelementptr inbounds i32*, i32** %457, i64 %idxprom387
  %458 = load i32*, i32** %arrayidx389, align 8
  %arrayidx390 = getelementptr inbounds i32, i32* %458, i64 %idxprom384
  %459 = load i32, i32* %arrayidx390, align 4
  %460 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_effective391 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %460, i32 0, i32 30
  %461 = load i32, i32* %pl_window_effective391, align 4
  %sub392 = sub nsw i32 %461, 1
  %idxprom393 = sext i32 %sub392 to i64
  %462 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %cache_best_list394 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %462, i32 0, i32 16
  %463 = load i32*, i32** %cache_best_list394, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %463, i64 %idxprom393
  store i32 %459, i32* %arrayidx395, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.383, %for.body.368
  br label %for.inc.397

for.inc.397:                                      ; preds = %if.end.396
  %464 = load i32, i32* %i, align 4
  %inc398 = add nsw i32 %464, 1
  store i32 %inc398, i32* %i, align 4
  br label %for.cond.361

for.end.399:                                      ; preds = %for.cond.361
  br label %if.end.403

if.else.400:                                      ; preds = %if.end.302
  %465 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %pl_window_start401 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %465, i32 0, i32 29
  %466 = load i32, i32* %pl_window_start401, align 4
  %inc402 = add nsw i32 %466, 1
  store i32 %inc402, i32* %pl_window_start401, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.else.400, %for.end.399
  %467 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist404 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %467, i32 0, i32 6
  %468 = load %struct.vithist_t*, %struct.vithist_t** %vithist404, align 8
  %469 = load %struct.dict_t*, %struct.dict_t** %dict, align 8
  %470 = load i32, i32* %frmno, align 4
  %471 = load i32, i32* %maxwpf.addr, align 4
  %472 = load i32, i32* %maxhistpf.addr, align 4
  %473 = load i32, i32* %wb, align 4
  call void @vithist_prune(%struct.vithist_t* %468, %struct.dict_t* %469, i32 %470, i32 %471, i32 %472, i32 %473)
  %474 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %475 = load i32, i32* %frmno, align 4
  call void @utt_word_trans(%struct.kb_t* %474, i32 %475)
  %476 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %vithist405 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %476, i32 0, i32 6
  %477 = load %struct.vithist_t*, %struct.vithist_t** %vithist405, align 8
  %478 = load i32, i32* %frmno, align 4
  %479 = load %struct.kbcore_t*, %struct.kbcore_t** %kbcore, align 8
  call void @vithist_frame_windup(%struct.vithist_t* %477, i32 %478, %struct._IO_FILE* null, %struct.kbcore_t* %479)
  %480 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  call void @kb_lextree_active_swap(%struct.kb_t* %480)
  %481 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %tm_srch406 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %481, i32 0, i32 41
  call void @ptmr_stop(%struct.ptmr_t* %tm_srch406)
  br label %for.inc.407

for.inc.407:                                      ; preds = %if.end.403
  %482 = load i32, i32* %t, align 4
  %inc408 = add nsw i32 %482, 1
  store i32 %inc408, i32* %t, align 4
  %483 = load i32, i32* %frmno, align 4
  %inc409 = add nsw i32 %483, 1
  store i32 %inc409, i32* %frmno, align 4
  br label %for.cond.51

for.end.410:                                      ; preds = %for.cond.51
  %484 = load i32, i32* %n_hmm_eval, align 4
  %485 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %utt_hmm_eval = getelementptr inbounds %struct.kb_t, %struct.kb_t* %485, i32 0, i32 34
  %486 = load i32, i32* %utt_hmm_eval, align 4
  %add411 = add nsw i32 %486, %484
  store i32 %add411, i32* %utt_hmm_eval, align 4
  %487 = load i32, i32* %block_nfeatvec.addr, align 4
  %488 = load %struct.kb_t*, %struct.kb_t** %kb.addr, align 8
  %nfr = getelementptr inbounds %struct.kb_t, %struct.kb_t* %488, i32 0, i32 8
  %489 = load i32, i32* %nfr, align 4
  %add412 = add nsw i32 %489, %487
  store i32 %add412, i32* %nfr, align 4
  %490 = load i32, i32* %frmno, align 4
  %491 = load i32*, i32** %curfrm.addr, align 8
  store i32 %490, i32* %491, align 4
  ret void
}

declare void @ptmr_start(%struct.ptmr_t*) #1

declare void @approx_cont_mgau_ci_eval(%struct.mgau_model_t*, float*, i32*, %struct.kb_t*) #1

declare void @ptmr_stop(%struct.ptmr_t*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @lextree_ssid_active(%struct.lextree_t*, i32*, i32*) #1

declare void @mdef_sseq2sen_active(%struct.mdef_t*, i32*, i32*) #1

declare void @dict2pid_comsseq2sen_active(%struct.dict2pid_t*, %struct.mdef_t*, i32*, i32*) #1

declare i32 @approx_cont_mgau_frame_eval(%struct.mgau_model_t*, %struct.gs_s*, %struct.subvq_t*, i32, float*, i32*, i32*, i32*, %struct.kb_t*, i32) #1

declare void @dict2pid_comsenscr(%struct.dict2pid_t*, i32*, i32*) #1

declare i32 @lextree_hmm_eval(%struct.lextree_t*, %struct.kbcore_t*, %struct.ascr_t*, i32, %struct._IO_FILE*) #1

declare void @lextree_hmm_histbin(%struct.lextree_t*, i32, i32*, i32, i32) #1

declare void @ckd_free(i8*) #1

declare void @lextree_hmm_propagate(%struct.lextree_t*, %struct.kbcore_t*, %struct.vithist_t*, i32, i32, i32, i32, i32*, i32, i32) #1

declare void @vithist_prune(%struct.vithist_t*, %struct.dict_t*, i32, i32, i32, i32) #1

declare void @vithist_frame_windup(%struct.vithist_t*, i32, %struct._IO_FILE*, %struct.kbcore_t*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
