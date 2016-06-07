; ModuleID = 'spec_main_live_pretend.c'
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
%struct.partialhyp_t = type { i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"beams.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"spec_main_live_pretend.c\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can't find beams.dat\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%lg%lg%lg%lg\00", align 1
@beams = common global [1000 x [4 x double]] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"Not enough beams %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Processing %d beamsets\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\0AUSAGE: %s <ctlfile> <inrawdir> <argsfile>\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Unable to read %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Filesize claimed to be %d for %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Can't allocate %d bytes for file %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Can't allocate %d bytes for uttid %s\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%s/%s.raw\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Only read %d, expected %d in %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [50 x i8] c"%d samples in %s will be decoded in blocks of %d\0A\00", align 1
@kb = external global %struct.kb_t*, align 8
@.str.19 = private unnamed_addr constant [45 x i8] c"Beam= %d, PBeam= %d, WBeam= %d, SVQBeam= %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %samps = alloca [10000 x i16*], align 16
  %uttid = alloca [10000 x i8*], align 16
  %uttsize = alloca [10000 x i32], align 16
  %iutt = alloca i32, align 4
  %nutt = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buflen = alloca i32, align 4
  %endutt = alloca i32, align 4
  %blksize = alloca i32, align 4
  %nhypwds = alloca i32, align 4
  %nsamp = alloca i32, align 4
  %argsfile = alloca i8*, align 8
  %ctlfile = alloca i8*, align 8
  %indir = alloca i8*, align 8
  %filename = alloca [512 x i8], align 16
  %cepfile = alloca [516 x i8], align 16
  %filesize = alloca i32, align 4
  %parthyp = alloca %struct.partialhyp_t*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %sfp = alloca %struct._IO_FILE*, align 8
  %ib = alloca i32, align 4
  %nbeams = alloca i32, align 4
  %beamsfp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %beamsfp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ib, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %0 = load i32, i32* %ib, align 4
  %cmp1 = icmp slt i32 %0, 1000
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %beamsfp, align 8
  %2 = load i32, i32* %ib, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  %3 = load i32, i32* %ib, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx4, i32 0, i64 1
  %4 = load i32, i32* %ib, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx7, i32 0, i64 2
  %5 = load i32, i32* %ib, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx10, i32 0, i64 3
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), double* %arrayidx2, double* %arrayidx5, double* %arrayidx8, double* %arrayidx11)
  %cmp13 = icmp ne i32 %call12, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %ib, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ib, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %ib, align 4
  store i32 %8, i32* %nbeams, align 4
  %9 = load i32, i32* %nbeams, align 4
  %cmp14 = icmp slt i32 %9, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %10 = load i32, i32* %nbeams, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %10)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %while.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %beamsfp, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %11)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %12 = load i32, i32* %nbeams, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i32 %12)
  %13 = load i32, i32* %argc.addr, align 4
  %cmp18 = icmp ne i32 %13, 4
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  store i8* null, i8** %argsfile, align 8
  %14 = load i8*, i8** %argsfile, align 8
  call void @parse_args_file(i8* %14)
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx20, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i8* %16)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx22, align 8
  store i8* %18, i8** %ctlfile, align 8
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx23, align 8
  store i8* %20, i8** %indir, align 8
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %21, i64 3
  %22 = load i8*, i8** %arrayidx24, align 8
  store i8* %22, i8** %argsfile, align 8
  store i32 2000, i32* %blksize, align 4
  %23 = load i8*, i8** %ctlfile, align 8
  %call25 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %fp, align 8
  %cmp26 = icmp eq %struct._IO_FILE* %call25, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.21
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %24 = load i8*, i8** %ctlfile, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %24)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.21
  %25 = load i8*, i8** %argsfile, align 8
  call void @live_initialize_decoder(i8* %25)
  store i32 0, i32* %iutt, align 4
  br label %while.cond.29

while.cond.29:                                    ; preds = %if.end.99, %if.end.28
  %26 = load i32, i32* %iutt, align 4
  %cmp30 = icmp slt i32 %26, 10000
  br i1 %cmp30, label %land.rhs.31, label %land.end.34

land.rhs.31:                                      ; preds = %while.cond.29
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay, i32* %filesize)
  %cmp33 = icmp ne i32 %call32, -1
  br label %land.end.34

land.end.34:                                      ; preds = %land.rhs.31, %while.cond.29
  %28 = phi i1 [ false, %while.cond.29 ], [ %cmp33, %land.rhs.31 ]
  br i1 %28, label %while.body.35, label %while.end.105

while.body.35:                                    ; preds = %land.end.34
  %29 = load i32, i32* %filesize, align 4
  %cmp36 = icmp sle i32 %29, 0
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.35
  %30 = load i32, i32* %filesize, align 4
  %conv = sext i32 %30 to i64
  %rem = urem i64 %conv, 2
  %cmp37 = icmp ne i64 %rem, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %lor.lhs.false, %while.body.35
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %31 = load i32, i32* %filesize, align 4
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i32 %31, i8* %arraydecay40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %lor.lhs.false
  %32 = load i32, i32* %filesize, align 4
  %conv42 = sext i32 %32 to i64
  %div = udiv i64 %conv42, 2
  %conv43 = trunc i64 %div to i32
  %33 = load i32, i32* %iutt, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom44
  store i32 %conv43, i32* %arrayidx45, align 4
  %34 = load i32, i32* %iutt, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom46
  %35 = load i32, i32* %arrayidx47, align 4
  %conv48 = sext i32 %35 to i64
  %call49 = call noalias i8* @calloc(i64 %conv48, i64 2) #4
  %36 = bitcast i8* %call49 to i16*
  %37 = load i32, i32* %iutt, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [10000 x i16*], [10000 x i16*]* %samps, i32 0, i64 %idxprom50
  store i16* %36, i16** %arrayidx51, align 8
  %cmp52 = icmp eq i16* %36, null
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.41
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %38 = load i32, i32* %filesize, align 4
  %arraydecay55 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i32 %38, i8* %arraydecay55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.41
  %arraydecay57 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  %call58 = call i64 @strlen(i8* %arraydecay57) #5
  %add = add i64 1, %call58
  %call59 = call noalias i8* @malloc(i64 %add) #4
  %39 = load i32, i32* %iutt, align 4
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %uttid, i32 0, i64 %idxprom60
  store i8* %call59, i8** %arrayidx61, align 8
  %cmp62 = icmp eq i8* %call59, null
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end.56
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay65 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  %call66 = call i64 @strlen(i8* %arraydecay65) #5
  %add67 = add i64 1, %call66
  %arraydecay68 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i64 %add67, i8* %arraydecay68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %if.end.56
  %40 = load i32, i32* %iutt, align 4
  %idxprom70 = sext i32 %40 to i64
  %arrayidx71 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %uttid, i32 0, i64 %idxprom70
  %41 = load i8*, i8** %arrayidx71, align 8
  %arraydecay72 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  %call73 = call i8* @strcpy(i8* %41, i8* %arraydecay72) #4
  %arraydecay74 = getelementptr inbounds [516 x i8], [516 x i8]* %cepfile, i32 0, i32 0
  %42 = load i8*, i8** %indir, align 8
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  %call76 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* %42, i8* %arraydecay75) #4
  %arraydecay77 = getelementptr inbounds [516 x i8], [516 x i8]* %cepfile, i32 0, i32 0
  %call78 = call %struct._IO_FILE* @fopen(i8* %arraydecay77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call78, %struct._IO_FILE** %sfp, align 8
  %cmp79 = icmp eq %struct._IO_FILE* %call78, null
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.69
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay82 = getelementptr inbounds [516 x i8], [516 x i8]* %cepfile, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay82)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.69
  %43 = load i32, i32* %iutt, align 4
  %idxprom84 = sext i32 %43 to i64
  %arrayidx85 = getelementptr inbounds [10000 x i16*], [10000 x i16*]* %samps, i32 0, i64 %idxprom84
  %44 = load i16*, i16** %arrayidx85, align 8
  %45 = bitcast i16* %44 to i8*
  %46 = load i32, i32* %iutt, align 4
  %idxprom86 = sext i32 %46 to i64
  %arrayidx87 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom86
  %47 = load i32, i32* %arrayidx87, align 4
  %conv88 = sext i32 %47 to i64
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %sfp, align 8
  %call89 = call i64 @fread(i8* %45, i64 2, i64 %conv88, %struct._IO_FILE* %48)
  %conv90 = trunc i64 %call89 to i32
  store i32 %conv90, i32* %nsamp, align 4
  %49 = load i32, i32* %nsamp, align 4
  %50 = load i32, i32* %iutt, align 4
  %idxprom91 = sext i32 %50 to i64
  %arrayidx92 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom91
  %51 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp ne i32 %49, %51
  br i1 %cmp93, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.end.83
  call void @_E__pr_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %52 = load i32, i32* %nsamp, align 4
  %53 = load i32, i32* %iutt, align 4
  %idxprom96 = sext i32 %53 to i64
  %arrayidx97 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom96
  %54 = load i32, i32* %arrayidx97, align 4
  %arraydecay98 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i32 %52, i32 %54, i8* %arraydecay98)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %if.end.83
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = load i32, i32* %nsamp, align 4
  %arraydecay100 = getelementptr inbounds [516 x i8], [516 x i8]* %cepfile, i32 0, i32 0
  %57 = load i32, i32* %blksize, align 4
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i32 %56, i8* %arraydecay100, i32 %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call102 = call i32 @fflush(%struct._IO_FILE* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %sfp, align 8
  %call103 = call i32 @fclose(%struct._IO_FILE* %59)
  %60 = load i32, i32* %iutt, align 4
  %inc104 = add nsw i32 %60, 1
  store i32 %inc104, i32* %iutt, align 4
  br label %while.cond.29

while.end.105:                                    ; preds = %land.end.34
  %61 = load i32, i32* %iutt, align 4
  store i32 %61, i32* %nutt, align 4
  store i32 0, i32* %ib, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.168, %while.end.105
  %62 = load i32, i32* %ib, align 4
  %63 = load i32, i32* %nbeams, align 4
  %cmp106 = icmp slt i32 %62, %63
  br i1 %cmp106, label %for.body, label %for.end.170

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %ib, align 4
  %idxprom108 = sext i32 %64 to i64
  %arrayidx109 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx109, i32 0, i64 0
  %65 = load double, double* %arrayidx110, align 8
  %call111 = call i32 @logs3(double %65)
  %66 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam = getelementptr inbounds %struct.kb_t, %struct.kb_t* %66, i32 0, i32 22
  %67 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %hmm = getelementptr inbounds %struct.beam_t, %struct.beam_t* %67, i32 0, i32 1
  store i32 %call111, i32* %hmm, align 4
  %68 = load i32, i32* %ib, align 4
  %idxprom112 = sext i32 %68 to i64
  %arrayidx113 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx113, i32 0, i64 1
  %69 = load double, double* %arrayidx114, align 8
  %call115 = call i32 @logs3(double %69)
  %70 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam116 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %70, i32 0, i32 22
  %71 = load %struct.beam_t*, %struct.beam_t** %beam116, align 8
  %ptrans = getelementptr inbounds %struct.beam_t, %struct.beam_t* %71, i32 0, i32 2
  store i32 %call115, i32* %ptrans, align 4
  %72 = load i32, i32* %ib, align 4
  %idxprom117 = sext i32 %72 to i64
  %arrayidx118 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx118, i32 0, i64 2
  %73 = load double, double* %arrayidx119, align 8
  %call120 = call i32 @logs3(double %73)
  %74 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam121 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %74, i32 0, i32 22
  %75 = load %struct.beam_t*, %struct.beam_t** %beam121, align 8
  %word = getelementptr inbounds %struct.beam_t, %struct.beam_t* %75, i32 0, i32 3
  store i32 %call120, i32* %word, align 4
  %76 = load i32, i32* %ib, align 4
  %idxprom122 = sext i32 %76 to i64
  %arrayidx123 = getelementptr inbounds [1000 x [4 x double]], [1000 x [4 x double]]* @beams, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx123, i32 0, i64 3
  %77 = load double, double* %arrayidx124, align 8
  %call125 = call i32 @logs3(double %77)
  %78 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam126 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %78, i32 0, i32 22
  %79 = load %struct.beam_t*, %struct.beam_t** %beam126, align 8
  %subvq = getelementptr inbounds %struct.beam_t, %struct.beam_t* %79, i32 0, i32 0
  store i32 %call125, i32* %subvq, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i64 172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %80 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam127 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %80, i32 0, i32 22
  %81 = load %struct.beam_t*, %struct.beam_t** %beam127, align 8
  %hmm128 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %81, i32 0, i32 1
  %82 = load i32, i32* %hmm128, align 4
  %83 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam129 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %83, i32 0, i32 22
  %84 = load %struct.beam_t*, %struct.beam_t** %beam129, align 8
  %ptrans130 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %84, i32 0, i32 2
  %85 = load i32, i32* %ptrans130, align 4
  %86 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam131 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %86, i32 0, i32 22
  %87 = load %struct.beam_t*, %struct.beam_t** %beam131, align 8
  %word132 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %87, i32 0, i32 3
  %88 = load i32, i32* %word132, align 4
  %89 = load %struct.kb_t*, %struct.kb_t** @kb, align 8
  %beam133 = getelementptr inbounds %struct.kb_t, %struct.kb_t* %89, i32 0, i32 22
  %90 = load %struct.beam_t*, %struct.beam_t** %beam133, align 8
  %subvq134 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %90, i32 0, i32 0
  %91 = load i32, i32* %subvq134, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0), i32 %82, i32 %85, i32 %88, i32 %91)
  store i32 0, i32* %iutt, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.165, %for.body
  %92 = load i32, i32* %iutt, align 4
  %93 = load i32, i32* %nutt, align 4
  %cmp136 = icmp slt i32 %92, %93
  br i1 %cmp136, label %for.body.138, label %for.end.167

for.body.138:                                     ; preds = %for.cond.135
  %94 = load i32, i32* %iutt, align 4
  %idxprom139 = sext i32 %94 to i64
  %arrayidx140 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %uttid, i32 0, i64 %idxprom139
  %95 = load i8*, i8** %arrayidx140, align 8
  call void @live_utt_set_uttid(i8* %95)
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc, %for.body.138
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %iutt, align 4
  %idxprom142 = sext i32 %97 to i64
  %arrayidx143 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom142
  %98 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp slt i32 %96, %98
  br i1 %cmp144, label %for.body.146, label %for.end

for.body.146:                                     ; preds = %for.cond.141
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %blksize, align 4
  %add147 = add nsw i32 %99, %100
  %101 = load i32, i32* %iutt, align 4
  %idxprom148 = sext i32 %101 to i64
  %arrayidx149 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom148
  %102 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp slt i32 %add147, %102
  br i1 %cmp150, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.146
  %103 = load i32, i32* %blksize, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.146
  %104 = load i32, i32* %iutt, align 4
  %idxprom152 = sext i32 %104 to i64
  %arrayidx153 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom152
  %105 = load i32, i32* %arrayidx153, align 4
  %106 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %105, %106
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %103, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %buflen, align 4
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %blksize, align 4
  %add154 = add nsw i32 %107, %108
  %109 = load i32, i32* %iutt, align 4
  %idxprom155 = sext i32 %109 to i64
  %arrayidx156 = getelementptr inbounds [10000 x i32], [10000 x i32]* %uttsize, i32 0, i64 %idxprom155
  %110 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %110, 1
  %cmp158 = icmp sle i32 %add154, %sub157
  %cond160 = select i1 %cmp158, i32 0, i32 1
  store i32 %cond160, i32* %endutt, align 4
  %111 = load i32, i32* %iutt, align 4
  %idxprom161 = sext i32 %111 to i64
  %arrayidx162 = getelementptr inbounds [10000 x i16*], [10000 x i16*]* %samps, i32 0, i64 %idxprom161
  %112 = load i16*, i16** %arrayidx162, align 8
  %113 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %113 to i64
  %add.ptr = getelementptr inbounds i16, i16* %112, i64 %idx.ext
  %114 = load i32, i32* %buflen, align 4
  %115 = load i32, i32* %endutt, align 4
  %call163 = call i32 @live_utt_decode_block(i16* %add.ptr, i32 %114, i32 %115, %struct.partialhyp_t** %parthyp)
  store i32 %call163, i32* %nhypwds, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %116 = load i32, i32* %blksize, align 4
  %117 = load i32, i32* %i, align 4
  %add164 = add nsw i32 %117, %116
  store i32 %add164, i32* %i, align 4
  br label %for.cond.141

for.end:                                          ; preds = %for.cond.141
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.end
  %118 = load i32, i32* %iutt, align 4
  %inc166 = add nsw i32 %118, 1
  store i32 %inc166, i32* %iutt, align 4
  br label %for.cond.135

for.end.167:                                      ; preds = %for.cond.135
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %119 = load i32, i32* %ib, align 4
  %inc169 = add nsw i32 %119, 1
  store i32 %inc169, i32* %ib, align 4
  br label %for.cond

for.end.170:                                      ; preds = %for.cond
  call void (...) @live_utt_summary()
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare void @parse_args_file(i8*) #1

declare void @live_initialize_decoder(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @logs3(double) #1

declare void @live_utt_set_uttid(i8*) #1

declare i32 @live_utt_decode_block(i16*, i32, i32, %struct.partialhyp_t**) #1

declare void @live_utt_summary(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
