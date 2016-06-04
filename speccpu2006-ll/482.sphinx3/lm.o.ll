; ModuleID = 'lm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.lmclass_set_s = type { %struct.lmclass_s* }
%struct.wordprob_t = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"lm.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Warning, lm_delete is currently empty, no memory is deleted\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"lw = %e\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"wip = %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Reading LM control file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"-lminmemory\00", align 1
@LM_IN_MEMORY = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Unexpected EOF(%s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Number of LM class specified %d in file %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"LMname missing after LMFileName '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Too many LM classes specified for '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"LM class '%s' not found\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"No. of LM set allocated %d, no. of LM %d \0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"No LM file\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"uw = %e\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"LM read('%s', lw= %.2f, wip= %d, uw= %.2f)\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"%d tg frees, %d in mem; %d bg frees, %d in mem\0A\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"%9d tg(), %9d tgcache, %8d bo; %5d fills, %8d in mem (%.1f%%)\0A\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"%8d bg(), %8d bo; %5d fills, %8d in mem (%.1f%%)\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Bad argument (%d) to lm_ug_score\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"Bad w1 argument (%d) to lm_bglist\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Bad lw2 argument (%d) to lm_bg_score\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Bad lw1 argument (%d) to lm_tglist\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Bad lw2 argument (%d) to lm_tglist\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Bad lw1 argument (%d) to lm_tg_score\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Bad lw2 argument (%d) to lm_tg_score\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Bad lw3 argument (%d) to lm_tg_score\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"fread(%s) failed\0A\00", align 1
@darpa_hdr = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), align 8
@.str.36 = private unnamed_addr constant [50 x i8] c"Bad magic number: %d(%08x), not an LM dumpfile??\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Bad header\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Bad original filename size: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"log2(bg_seg_sz) outside range 1..15\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Bad #ug: %d (must be >0, <%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Bad #bigrams: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Bad #trigrams: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"%8d ug\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Read %8d bigrams [in memory]\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Read %8d trigrams [in memory]\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"%8d bigrams [on disk]\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"%8d trigrams [on disk]\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Bad bigram prob table size: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"%8d bigram prob entries\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"Bad trigram bowt table size: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"%8d trigram bowt entries\0A\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"%8d trigram prob entries\0A\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Bad trigram seg table size: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"%8d trigram segtable entries (%d segsize)\0A\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Bad wordstrings size: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"Bad #words: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"%8d word strings\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Darpa Trigram LM\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"fread failed\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"LM->inclass_ugscore size %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"Number of class used %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"fseek failed\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"fread(tg, %d at %d) failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @lm_get_classid(%struct.lm_s* %model, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %model.addr = alloca %struct.lm_s*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.lm_s* %model, %struct.lm_s** %model.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.lm_s*, %struct.lm_s** %model.addr, align 8
  %lmclass = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 40
  %1 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass, align 8
  %tobool = icmp ne %struct.lmclass_s** %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lm_s*, %struct.lm_s** %model.addr, align 8
  %n_lmclass = getelementptr inbounds %struct.lm_s, %struct.lm_s* %3, i32 0, i32 41
  %4 = load i32, i32* %n_lmclass, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lm_s*, %struct.lm_s** %model.addr, align 8
  %lmclass1 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 40
  %7 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass1, align 8
  %arrayidx = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %7, i64 %idxprom
  %8 = load %struct.lmclass_s*, %struct.lmclass_s** %arrayidx, align 8
  %name2 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %name2, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %9, i8* %10) #4
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 16777216
  store i32 %add, i32* %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @lm_delete(%struct.lm_s* %lm, %struct.lmset_s* %lmset) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %lmset.addr = alloca %struct.lmset_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store %struct.lmset_s* %lmset, %struct.lmset_s** %lmset.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0))
  ret i32 0
}

declare void @_E__pr_info_header(i8*, i64, i8*) #2

declare void @_E__pr_info(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @lm_set_param(%struct.lm_s* %lm, double %lw, double %wip) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw.addr = alloca double, align 8
  %wip.addr = alloca double, align 8
  %i = alloca i32, align 4
  %iwip = alloca i32, align 4
  %f = alloca double, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store double %lw, double* %lw.addr, align 8
  store double %wip, double* %wip.addr, align 8
  %0 = load double, double* %lw.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %1 = load double, double* %lw.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), double %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load double, double* %wip.addr, align 8
  %cmp1 = fcmp ole double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %3 = load double, double* %wip.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), double %3)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load double, double* %wip.addr, align 8
  %call = call i32 @logs3(double %4)
  store i32 %call, i32* %iwip, align 4
  %5 = load double, double* %lw.addr, align 8
  %6 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lw4 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 25
  %7 = load float, float* %lw4, align 4
  %conv = fpext float %7 to double
  %div = fdiv double %5, %conv
  store double %div, double* %f, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %9, i32 0, i32 0
  %10 = load i32, i32* %n_ug, align 4
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %12, i32 0, i32 9
  %13 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %13, i64 %idxprom
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %14 = load i32, i32* %l, align 4
  %15 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wip7 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %15, i32 0, i32 26
  %16 = load i32, i32* %wip7, align 4
  %sub = sub nsw i32 %14, %16
  %conv8 = sitofp i32 %sub to double
  %17 = load double, double* %f, align 8
  %mul = fmul double %conv8, %17
  %conv9 = fptosi double %mul to i32
  %18 = load i32, i32* %iwip, align 4
  %add = add nsw i32 %conv9, %18
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug11 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %20, i32 0, i32 9
  %21 = load %struct.ug_t*, %struct.ug_t** %ug11, align 8
  %arrayidx12 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %21, i64 %idxprom10
  %prob13 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx12, i32 0, i32 1
  %l14 = bitcast %union.lmlog_t* %prob13 to i32*
  store i32 %add, i32* %l14, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug16 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %23, i32 0, i32 9
  %24 = load %struct.ug_t*, %struct.ug_t** %ug16, align 8
  %arrayidx17 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %24, i64 %idxprom15
  %bowt = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx17, i32 0, i32 2
  %l18 = bitcast %union.lmlog_t* %bowt to i32*
  %25 = load i32, i32* %l18, align 4
  %conv19 = sitofp i32 %25 to double
  %26 = load double, double* %f, align 8
  %mul20 = fmul double %conv19, %26
  %conv21 = fptosi double %mul20 to i32
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug23 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %28, i32 0, i32 9
  %29 = load %struct.ug_t*, %struct.ug_t** %ug23, align 8
  %arrayidx24 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %29, i64 %idxprom22
  %bowt25 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx24, i32 0, i32 2
  %l26 = bitcast %union.lmlog_t* %bowt25 to i32*
  store i32 %conv21, i32* %l26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.44, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %32, i32 0, i32 18
  %33 = load i32, i32* %n_bgprob, align 4
  %cmp28 = icmp slt i32 %31, %33
  br i1 %cmp28, label %for.body.30, label %for.end.46

for.body.30:                                      ; preds = %for.cond.27
  %34 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %35, i32 0, i32 14
  %36 = load %union.lmlog_t*, %union.lmlog_t** %bgprob, align 8
  %arrayidx32 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %36, i64 %idxprom31
  %l33 = bitcast %union.lmlog_t* %arrayidx32 to i32*
  %37 = load i32, i32* %l33, align 4
  %38 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wip34 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %38, i32 0, i32 26
  %39 = load i32, i32* %wip34, align 4
  %sub35 = sub nsw i32 %37, %39
  %conv36 = sitofp i32 %sub35 to double
  %40 = load double, double* %f, align 8
  %mul37 = fmul double %conv36, %40
  %conv38 = fptosi double %mul37 to i32
  %41 = load i32, i32* %iwip, align 4
  %add39 = add nsw i32 %conv38, %41
  %42 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgprob41 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %43, i32 0, i32 14
  %44 = load %union.lmlog_t*, %union.lmlog_t** %bgprob41, align 8
  %arrayidx42 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %44, i64 %idxprom40
  %l43 = bitcast %union.lmlog_t* %arrayidx42 to i32*
  store i32 %add39, i32* %l43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.30
  %45 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %45, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.27

for.end.46:                                       ; preds = %for.cond.27
  %46 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %46, i32 0, i32 2
  %47 = load i32, i32* %n_tg, align 4
  %cmp47 = icmp sgt i32 %47, 0
  br i1 %cmp47, label %if.then.49, label %if.end.87

if.then.49:                                       ; preds = %for.end.46
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.67, %if.then.49
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %49, i32 0, i32 19
  %50 = load i32, i32* %n_tgprob, align 4
  %cmp51 = icmp slt i32 %48, %50
  br i1 %cmp51, label %for.body.53, label %for.end.69

for.body.53:                                      ; preds = %for.cond.50
  %51 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %52, i32 0, i32 15
  %53 = load %union.lmlog_t*, %union.lmlog_t** %tgprob, align 8
  %arrayidx55 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %53, i64 %idxprom54
  %l56 = bitcast %union.lmlog_t* %arrayidx55 to i32*
  %54 = load i32, i32* %l56, align 4
  %55 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wip57 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %55, i32 0, i32 26
  %56 = load i32, i32* %wip57, align 4
  %sub58 = sub nsw i32 %54, %56
  %conv59 = sitofp i32 %sub58 to double
  %57 = load double, double* %f, align 8
  %mul60 = fmul double %conv59, %57
  %conv61 = fptosi double %mul60 to i32
  %58 = load i32, i32* %iwip, align 4
  %add62 = add nsw i32 %conv61, %58
  %59 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %59 to i64
  %60 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgprob64 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %60, i32 0, i32 15
  %61 = load %union.lmlog_t*, %union.lmlog_t** %tgprob64, align 8
  %arrayidx65 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %61, i64 %idxprom63
  %l66 = bitcast %union.lmlog_t* %arrayidx65 to i32*
  store i32 %add62, i32* %l66, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.53
  %62 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %62, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.50

for.end.69:                                       ; preds = %for.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.84, %for.end.69
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %64, i32 0, i32 20
  %65 = load i32, i32* %n_tgbowt, align 4
  %cmp71 = icmp slt i32 %63, %65
  br i1 %cmp71, label %for.body.73, label %for.end.86

for.body.73:                                      ; preds = %for.cond.70
  %66 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %66 to i64
  %67 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %67, i32 0, i32 16
  %68 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt, align 8
  %arrayidx75 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %68, i64 %idxprom74
  %l76 = bitcast %union.lmlog_t* %arrayidx75 to i32*
  %69 = load i32, i32* %l76, align 4
  %conv77 = sitofp i32 %69 to double
  %70 = load double, double* %f, align 8
  %mul78 = fmul double %conv77, %70
  %conv79 = fptosi double %mul78 to i32
  %71 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %71 to i64
  %72 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgbowt81 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %72, i32 0, i32 16
  %73 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt81, align 8
  %arrayidx82 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %73, i64 %idxprom80
  %l83 = bitcast %union.lmlog_t* %arrayidx82 to i32*
  store i32 %conv79, i32* %l83, align 4
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.73
  %74 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %74, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.70

for.end.86:                                       ; preds = %for.cond.70
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %for.end.46
  %75 = load double, double* %lw.addr, align 8
  %conv88 = fptrunc double %75 to float
  %76 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lw89 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %76, i32 0, i32 25
  store float %conv88, float* %lw89, align 4
  %77 = load i32, i32* %iwip, align 4
  %78 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wip90 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %78, i32 0, i32 26
  store i32 %77, i32* %wip90, align 4
  ret void
}

declare void @_E__pr_header(i8*, i64, i8*) #2

declare void @_E__die_error(i8*, ...) #2

declare i32 @logs3(double) #2

; Function Attrs: nounwind uwtable
define %struct.lmset_s* @lm_read_ctl(i8* %ctlfile, %struct.dict_t* %dict, double %lw, double %wip, double %uw, i8* %lmdumpdir, i32* %n_lm, i32* %n_alloclm, i32 %dict_size) #0 {
entry:
  %ctlfile.addr = alloca i8*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %lw.addr = alloca double, align 8
  %wip.addr = alloca double, align 8
  %uw.addr = alloca double, align 8
  %lmdumpdir.addr = alloca i8*, align 8
  %n_lm.addr = alloca i32*, align 8
  %n_alloclm.addr = alloca i32*, align 8
  %dict_size.addr = alloca i32, align 4
  %ctlfp = alloca %struct._IO_FILE*, align 8
  %tmp = alloca %struct._IO_FILE*, align 8
  %lmfile = alloca [4096 x i8], align 16
  %lmname = alloca [4096 x i8], align 16
  %str = alloca [4096 x i8], align 16
  %lmclass_set = alloca %struct.lmclass_set_s*, align 8
  %lmclass = alloca %struct.lmclass_s**, align 8
  %cl = alloca %struct.lmclass_s*, align 8
  %n_lmclass = alloca i32, align 4
  %n_lmclass_used = alloca i32, align 4
  %i = alloca i32, align 4
  %lm = alloca %struct.lm_s*, align 8
  %lmset = alloca %struct.lmset_s*, align 8
  %w = alloca %struct.lmclass_word_s*, align 8
  %wid = alloca i32, align 4
  store i8* %ctlfile, i8** %ctlfile.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store double %lw, double* %lw.addr, align 8
  store double %wip, double* %wip.addr, align 8
  store double %uw, double* %uw.addr, align 8
  store i8* %lmdumpdir, i8** %lmdumpdir.addr, align 8
  store i32* %n_lm, i32** %n_lm.addr, align 8
  store i32* %n_alloclm, i32** %n_alloclm.addr, align 8
  store i32 %dict_size, i32* %dict_size.addr, align 4
  store %struct.lmset_s* null, %struct.lmset_s** %lmset, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %tmp, align 8
  %call = call %struct.lmclass_set_s* @lmclass_newset()
  store %struct.lmclass_set_s* %call, %struct.lmclass_set_s** %lmclass_set, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i8*, i8** %ctlfile.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* %0)
  %call12 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %1 = bitcast i8* %call12 to i32*
  %2 = load i32, i32* %1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @LM_IN_MEMORY, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @LM_IN_MEMORY, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %ctlfile.addr, align 8
  %call13 = call %struct._IO_FILE* @_myfopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 299)
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %ctlfp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call14, 1
  br i1 %cmp, label %if.then.15, label %if.else.39

if.then.15:                                       ; preds = %if.end
  %arraydecay16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call17 = call i32 @strcmp(i8* %arraydecay16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.38

if.then.19:                                       ; preds = %if.then.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay20)
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arraydecay23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call24 = call i32 @strcmp(i8* %arraydecay23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp25 = icmp ne i32 %call24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp25, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %lmclass_set, align 8
  %arraydecay26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call27 = call %struct.lmclass_set_s* @lmclass_loadfile(%struct.lmclass_set_s* %7, i8* %arraydecay26)
  store %struct.lmclass_set_s* %call27, %struct.lmclass_set_s** %lmclass_set, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %arraydecay28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call29 = call i32 @strcmp(i8* %arraydecay28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %while.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %8 = load i8*, i8** %ctlfile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* %8)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %while.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay33)
  %cmp35 = icmp ne i32 %call34, 1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.15
  br label %if.end.41

if.else.39:                                       ; preds = %if.end
  %arrayidx40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i64 0
  store i8 0, i8* %arrayidx40, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.end.38
  %10 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %lmclass_set, align 8
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %10, i32 0, i32 0
  %11 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass_list, align 8
  store %struct.lmclass_s* %11, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.end.41
  %12 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %cmp42 = icmp ne %struct.lmclass_s* %12, null
  br i1 %cmp42, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %13 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %wordlist = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %13, i32 0, i32 1
  %14 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %wordlist, align 8
  store %struct.lmclass_word_s* %14, %struct.lmclass_word_s** %w, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.body
  %15 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %cmp46 = icmp ne %struct.lmclass_word_s* %15, null
  br i1 %cmp46, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.45
  %16 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %17 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %word = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %word, align 8
  %call48 = call i32 @dict_wordid(%struct.dict_t* %16, i8* %18)
  store i32 %call48, i32* %wid, align 4
  %19 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %20 = load i32, i32* %wid, align 4
  call void @lmclass_set_dictwid(%struct.lmclass_word_s* %19, i32 %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body.47
  %21 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %next = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %21, i32 0, i32 3
  %22 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %next, align 8
  store %struct.lmclass_word_s* %22, %struct.lmclass_word_s** %w, align 8
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end
  %23 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %next50 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %23, i32 0, i32 2
  %24 = load %struct.lmclass_s*, %struct.lmclass_s** %next50, align 8
  store %struct.lmclass_s* %24, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %25 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %lmclass_set, align 8
  %call52 = call i32 @lmclass_get_nclass(%struct.lmclass_set_s* %25)
  store i32 %call52, i32* %n_lmclass, align 4
  %26 = load i32, i32* %n_lmclass, align 4
  %conv = sext i32 %26 to i64
  %call53 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 350)
  %27 = bitcast i8* %call53 to %struct.lmclass_s**
  store %struct.lmclass_s** %27, %struct.lmclass_s*** %lmclass, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %28 = load i32, i32* %n_lmclass, align 4
  %29 = load i8*, i8** %ctlfile.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), i32 %28, i8* %29)
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.166, %for.end.51
  %arrayidx55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i64 0
  %30 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %30 to i32
  %cmp57 = icmp ne i32 %conv56, 0
  br i1 %cmp57, label %while.body.59, label %while.end.175

while.body.59:                                    ; preds = %while.cond.54
  %arraydecay60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmfile, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call62 = call i8* @strcpy(i8* %arraydecay60, i8* %arraydecay61) #5
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmname, i32 0, i32 0
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay63)
  %cmp65 = icmp ne i32 %call64, 1
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %while.body.59
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmfile, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %while.body.59
  store i32 0, i32* %n_lmclass_used, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay70)
  %cmp72 = icmp eq i32 %call71, 1
  br i1 %cmp72, label %if.then.74, label %if.else.122

if.then.74:                                       ; preds = %if.end.69
  %arraydecay75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call76 = call i32 @strcmp(i8* %arraydecay75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.121

if.then.79:                                       ; preds = %if.then.74
  br label %while.cond.80

while.cond.80:                                    ; preds = %if.end.106, %if.then.79
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay81 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay81)
  %cmp83 = icmp eq i32 %call82, 1
  br i1 %cmp83, label %land.rhs.85, label %land.end.90

land.rhs.85:                                      ; preds = %while.cond.80
  %arraydecay86 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call87 = call i32 @strcmp(i8* %arraydecay86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp88 = icmp ne i32 %call87, 0
  br label %land.end.90

land.end.90:                                      ; preds = %land.rhs.85, %while.cond.80
  %34 = phi i1 [ false, %while.cond.80 ], [ %cmp88, %land.rhs.85 ]
  br i1 %34, label %while.body.91, label %while.end.107

while.body.91:                                    ; preds = %land.end.90
  %35 = load i32, i32* %n_lmclass_used, align 4
  %36 = load i32, i32* %n_lmclass, align 4
  %cmp92 = icmp sge i32 %35, %36
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %while.body.91
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 367, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay95 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmfile, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %while.body.91
  %37 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %lmclass_set, align 8
  %arraydecay97 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call98 = call %struct.lmclass_s* @lmclass_get_lmclass(%struct.lmclass_set_s* %37, i8* %arraydecay97)
  %38 = load i32, i32* %n_lmclass_used, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass, align 8
  %arrayidx99 = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %39, i64 %idxprom
  store %struct.lmclass_s* %call98, %struct.lmclass_s** %arrayidx99, align 8
  %40 = load i32, i32* %n_lmclass_used, align 4
  %idxprom100 = sext i32 %40 to i64
  %41 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass, align 8
  %arrayidx101 = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %41, i64 %idxprom100
  %42 = load %struct.lmclass_s*, %struct.lmclass_s** %arrayidx101, align 8
  %cmp102 = icmp ne %struct.lmclass_s* %42, null
  br i1 %cmp102, label %if.end.106, label %if.then.104

if.then.104:                                      ; preds = %if.end.96
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 374, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay105 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay105)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.96
  %43 = load i32, i32* %n_lmclass_used, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %n_lmclass_used, align 4
  br label %while.cond.80

while.end.107:                                    ; preds = %land.end.90
  %arraydecay108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call109 = call i32 @strcmp(i8* %arraydecay108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp110 = icmp ne i32 %call109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %while.end.107
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 378, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %44 = load i8*, i8** %ctlfile.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* %44)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %while.end.107
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %arraydecay114 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i32 0
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay114)
  %cmp116 = icmp ne i32 %call115, 1
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.113
  %arrayidx119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i64 0
  store i8 0, i8* %arrayidx119, align 1
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.113
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.74
  br label %if.end.124

if.else.122:                                      ; preds = %if.end.69
  %arrayidx123 = getelementptr inbounds [4096 x i8], [4096 x i8]* %str, i32 0, i64 0
  store i8 0, i8* %arrayidx123, align 1
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.end.121
  %46 = load i32, i32* %n_lmclass_used, align 4
  %cmp125 = icmp sgt i32 %46, 0
  br i1 %cmp125, label %if.then.127, label %if.else.142

if.then.127:                                      ; preds = %if.end.124
  %arraydecay128 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmfile, i32 0, i32 0
  %47 = load double, double* %lw.addr, align 8
  %48 = load double, double* %wip.addr, align 8
  %49 = load double, double* %uw.addr, align 8
  %50 = load i32, i32* %n_lmclass_used, align 4
  %51 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass, align 8
  %52 = load i32, i32* %dict_size.addr, align 4
  %call129 = call %struct.lm_s* @lm_read_dump(i8* %arraydecay128, double %47, double %48, double %49, i32 %50, %struct.lmclass_s** %51, i32 %52)
  store %struct.lm_s* %call129, %struct.lm_s** %lm, align 8
  %call130 = call i8* @__ckd_calloc__(i64 100003, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 399)
  %53 = bitcast i8* %call130 to %struct.lm_tgcache_entry_t*
  %54 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgcache = getelementptr inbounds %struct.lm_s, %struct.lm_s* %54, i32 0, i32 27
  store %struct.lm_tgcache_entry_t* %53, %struct.lm_tgcache_entry_t** %tgcache, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.139, %if.then.127
  %55 = load i32, i32* %i, align 4
  %cmp132 = icmp slt i32 %55, 100003
  br i1 %cmp132, label %for.body.134, label %for.end.141

for.body.134:                                     ; preds = %for.cond.131
  %56 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %56 to i64
  %57 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgcache136 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %57, i32 0, i32 27
  %58 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache136, align 8
  %arrayidx137 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %58, i64 %idxprom135
  %lwid = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx137, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid, i32 0, i64 0
  store i16 -1, i16* %arrayidx138, align 2
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.134
  %59 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %59, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.131

for.end.141:                                      ; preds = %for.cond.131
  br label %if.end.159

if.else.142:                                      ; preds = %if.end.124
  %arraydecay143 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmfile, i32 0, i32 0
  %60 = load double, double* %lw.addr, align 8
  %61 = load double, double* %wip.addr, align 8
  %62 = load double, double* %uw.addr, align 8
  %63 = load i32, i32* %dict_size.addr, align 4
  %call144 = call %struct.lm_s* @lm_read_dump(i8* %arraydecay143, double %60, double %61, double %62, i32 0, %struct.lmclass_s** null, i32 %63)
  store %struct.lm_s* %call144, %struct.lm_s** %lm, align 8
  %call145 = call i8* @__ckd_calloc__(i64 100003, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 410)
  %64 = bitcast i8* %call145 to %struct.lm_tgcache_entry_t*
  %65 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgcache146 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %65, i32 0, i32 27
  store %struct.lm_tgcache_entry_t* %64, %struct.lm_tgcache_entry_t** %tgcache146, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.156, %if.else.142
  %66 = load i32, i32* %i, align 4
  %cmp148 = icmp slt i32 %66, 100003
  br i1 %cmp148, label %for.body.150, label %for.end.158

for.body.150:                                     ; preds = %for.cond.147
  %67 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %67 to i64
  %68 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgcache152 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %68, i32 0, i32 27
  %69 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache152, align 8
  %arrayidx153 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %69, i64 %idxprom151
  %lwid154 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid154, i32 0, i64 0
  store i16 -1, i16* %arrayidx155, align 2
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.150
  %70 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %70, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.147

for.end.158:                                      ; preds = %for.cond.147
  br label %if.end.159

if.end.159:                                       ; preds = %for.end.158, %for.end.141
  %71 = load i32*, i32** %n_lm.addr, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %n_alloclm.addr, align 8
  %74 = load i32, i32* %73, align 4
  %cmp160 = icmp eq i32 %72, %74
  br i1 %cmp160, label %if.then.162, label %if.end.166

if.then.162:                                      ; preds = %if.end.159
  %75 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %76 = bitcast %struct.lmset_s* %75 to i8*
  %77 = load i32*, i32** %n_alloclm.addr, align 8
  %78 = load i32, i32* %77, align 4
  %add = add nsw i32 %78, 16
  %conv163 = sext i32 %add to i64
  %mul = mul i64 %conv163, 16
  %call164 = call i8* @__ckd_realloc__(i8* %76, i64 %mul, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 416)
  %79 = bitcast i8* %call164 to %struct.lmset_s*
  store %struct.lmset_s* %79, %struct.lmset_s** %lmset, align 8
  %80 = load i32*, i32** %n_alloclm.addr, align 8
  %81 = load i32, i32* %80, align 4
  %add165 = add nsw i32 %81, 16
  store i32 %add165, i32* %80, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.162, %if.end.159
  %arraydecay167 = getelementptr inbounds [4096 x i8], [4096 x i8]* %lmname, i32 0, i32 0
  %call168 = call i8* @__ckd_salloc__(i8* %arraydecay167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 419)
  %82 = load i32*, i32** %n_lm.addr, align 8
  %83 = load i32, i32* %82, align 4
  %idxprom169 = sext i32 %83 to i64
  %84 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx170 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %84, i64 %idxprom169
  %name = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx170, i32 0, i32 0
  store i8* %call168, i8** %name, align 8
  %85 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %86 = load i32*, i32** %n_lm.addr, align 8
  %87 = load i32, i32* %86, align 4
  %idxprom171 = sext i32 %87 to i64
  %88 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  %arrayidx172 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %88, i64 %idxprom171
  %lm173 = getelementptr inbounds %struct.lmset_s, %struct.lmset_s* %arrayidx172, i32 0, i32 1
  store %struct.lm_s* %85, %struct.lm_s** %lm173, align 8
  %89 = load i32*, i32** %n_lm.addr, align 8
  %90 = load i32, i32* %89, align 4
  %add174 = add nsw i32 %90, 1
  store i32 %add174, i32* %89, align 4
  br label %while.cond.54

while.end.175:                                    ; preds = %while.cond.54
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %91 = load i32*, i32** %n_alloclm.addr, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %n_lm.addr, align 8
  %94 = load i32, i32* %93, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i32 %92, i32 %94)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %ctlfp, align 8
  %call176 = call i32 @fclose(%struct._IO_FILE* %95)
  %96 = load %struct.lmset_s*, %struct.lmset_s** %lmset, align 8
  ret %struct.lmset_s* %96
}

declare %struct.lmclass_set_s* @lmclass_newset() #2

declare i8* @cmd_ln_access(i8*) #2

declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare %struct.lmclass_set_s* @lmclass_loadfile(%struct.lmclass_set_s*, i8*) #2

declare i32 @dict_wordid(%struct.dict_t*, i8*) #2

declare void @lmclass_set_dictwid(%struct.lmclass_word_s*, i32) #2

declare i32 @lmclass_get_nclass(%struct.lmclass_set_s*) #2

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare %struct.lmclass_s* @lmclass_get_lmclass(%struct.lmclass_set_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.lm_s* @lm_read_dump(i8* %file, double %lw, double %wip, double %uw, i32 %n_lmclass_used, %struct.lmclass_s** %lmclass, i32 %dict_size) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %lw.addr = alloca double, align 8
  %wip.addr = alloca double, align 8
  %uw.addr = alloca double, align 8
  %n_lmclass_used.addr = alloca i32, align 4
  %lmclass.addr = alloca %struct.lmclass_s**, align 8
  %dict_size.addr = alloca i32, align 4
  %lm = alloca %struct.lm_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %vn = alloca i32, align 4
  %str = alloca [1024 x i8], align 16
  %tmp_word_str = alloca i8*, align 8
  %startwid = alloca i16, align 2
  %endwid = alloca i16, align 2
  store i8* %file, i8** %file.addr, align 8
  store double %lw, double* %lw.addr, align 8
  store double %wip, double* %wip.addr, align 8
  store double %uw, double* %uw.addr, align 8
  store i32 %n_lmclass_used, i32* %n_lmclass_used.addr, align 4
  store %struct.lmclass_s** %lmclass, %struct.lmclass_s*** %lmclass.addr, align 8
  store i32 %dict_size, i32* %dict_size.addr, align 4
  %call = call i8* @__ckd_calloc__(i64 1, i64 248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 464)
  %0 = bitcast i8* %call to %struct.lm_s*
  store %struct.lm_s* %0, %struct.lm_s** %lm, align 8
  %1 = load i32, i32* %dict_size.addr, align 4
  %2 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %dict_size1 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %2, i32 0, i32 39
  store i32 %1, i32* %dict_size1, align 4
  %3 = load i8*, i8** %file.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  %4 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp = getelementptr inbounds %struct.lm_s, %struct.lm_s* %4, i32 0, i32 21
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 468, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0))
  %5 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast i32* %k to i8*
  %7 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp3 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %7, i32 0, i32 21
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp3, align 8
  %call4 = call i64 @fread(i8* %6, i64 4, i64 1, %struct._IO_FILE* %8)
  %cmp5 = icmp ne i64 %call4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %9 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %10 = load i32, i32* %k, align 4
  %conv = sext i32 %10 to i64
  %11 = load i8*, i8** @darpa_hdr, align 8
  %call8 = call i64 @strlen(i8* %11) #4
  %add = add i64 %call8, 1
  %cmp9 = icmp eq i64 %conv, %add
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %12 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap = getelementptr inbounds %struct.lm_s, %struct.lm_s* %12, i32 0, i32 22
  store i32 0, i32* %byteswap, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end.7
  %13 = load i32, i32* %k, align 4
  %shr = ashr i32 %13, 24
  %and = and i32 255, %shr
  %14 = load i32, i32* %k, align 4
  %shr12 = ashr i32 %14, 8
  %and13 = and i32 65280, %shr12
  %or = or i32 %and, %and13
  %15 = load i32, i32* %k, align 4
  %shl = shl i32 %15, 8
  %and14 = and i32 16711680, %shl
  %or15 = or i32 %or, %and14
  %16 = load i32, i32* %k, align 4
  %shl16 = shl i32 %16, 24
  %and17 = and i32 -16777216, %shl16
  %or18 = or i32 %or15, %and17
  store i32 %or18, i32* %k, align 4
  %17 = load i32, i32* %k, align 4
  %conv19 = sext i32 %17 to i64
  %18 = load i8*, i8** @darpa_hdr, align 8
  %call20 = call i64 @strlen(i8* %18) #4
  %add21 = add i64 %call20, 1
  %cmp22 = icmp eq i64 %conv19, %add21
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else
  %19 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap25 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %19, i32 0, i32 22
  store i32 1, i32* %byteswap25, align 4
  br label %if.end.38

if.else.26:                                       ; preds = %if.else
  %20 = load i32, i32* %k, align 4
  %shr27 = ashr i32 %20, 24
  %and28 = and i32 255, %shr27
  %21 = load i32, i32* %k, align 4
  %shr29 = ashr i32 %21, 8
  %and30 = and i32 65280, %shr29
  %or31 = or i32 %and28, %and30
  %22 = load i32, i32* %k, align 4
  %shl32 = shl i32 %22, 8
  %and33 = and i32 16711680, %shl32
  %or34 = or i32 %or31, %and33
  %23 = load i32, i32* %k, align 4
  %shl35 = shl i32 %23, 24
  %and36 = and i32 -16777216, %shl35
  %or37 = or i32 %or34, %and36
  store i32 %or37, i32* %k, align 4
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 481, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %24 = load i32, i32* %k, align 4
  %25 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i32 0, i32 0), i32 %24, i32 %25)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.11
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %26 = load i32, i32* %k, align 4
  %conv40 = sext i32 %26 to i64
  %27 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp41 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %27, i32 0, i32 21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp41, align 8
  %call42 = call i64 @fread(i8* %arraydecay, i64 1, i64 %conv40, %struct._IO_FILE* %28)
  %29 = load i32, i32* %k, align 4
  %conv43 = sext i32 %29 to i64
  %cmp44 = icmp ne i64 %call42, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.39
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 487, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %30 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %30)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.39
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %31 = load i8*, i8** @darpa_hdr, align 8
  %32 = load i32, i32* %k, align 4
  %conv49 = sext i32 %32 to i64
  %call50 = call i32 @strncmp(i8* %arraydecay48, i8* %31, i64 %conv49) #4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.47
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 489, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.47
  %33 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call55 = call i32 @lm_fread_int32(%struct.lm_s* %33)
  store i32 %call55, i32* %k, align 4
  %34 = load i32, i32* %k, align 4
  %cmp56 = icmp slt i32 %34, 1
  br i1 %cmp56, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %35 = load i32, i32* %k, align 4
  %cmp58 = icmp sgt i32 %35, 1024
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false, %if.end.54
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 494, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %36 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0), i32 %36)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %lor.lhs.false
  %arraydecay62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %37 = load i32, i32* %k, align 4
  %conv63 = sext i32 %37 to i64
  %38 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp64 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %38, i32 0, i32 21
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp64, align 8
  %call65 = call i64 @fread(i8* %arraydecay62, i64 1, i64 %conv63, %struct._IO_FILE* %39)
  %40 = load i32, i32* %k, align 4
  %conv66 = sext i32 %40 to i64
  %cmp67 = icmp ne i64 %call65, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.61
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %41 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %41)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.61
  %42 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call71 = call i32 @lm_fread_int32(%struct.lm_s* %42)
  store i32 %call71, i32* %vn, align 4
  %43 = load i32, i32* %vn, align 4
  %cmp72 = icmp sle i32 %43, 0
  br i1 %cmp72, label %if.then.74, label %if.else.105

if.then.74:                                       ; preds = %if.end.70
  %44 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call75 = call i32 @lm_fread_int32(%struct.lm_s* %44)
  store i32 %call75, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.89, %if.then.74
  %45 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call76 = call i32 @lm_fread_int32(%struct.lm_s* %45)
  store i32 %call76, i32* %k, align 4
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.cond
  br label %for.end

if.end.80:                                        ; preds = %for.cond
  %arraydecay81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %46 = load i32, i32* %k, align 4
  %conv82 = sext i32 %46 to i64
  %47 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp83 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %47, i32 0, i32 21
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp83, align 8
  %call84 = call i64 @fread(i8* %arraydecay81, i64 1, i64 %conv82, %struct._IO_FILE* %48)
  %49 = load i32, i32* %k, align 4
  %conv85 = sext i32 %49 to i64
  %cmp86 = icmp ne i64 %call84, %conv85
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.80
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 509, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %50 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %50)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.80
  br label %for.cond

for.end:                                          ; preds = %if.then.79
  %51 = load i32, i32* %vn, align 4
  %cmp90 = icmp sle i32 %51, -2
  br i1 %cmp90, label %if.then.92, label %if.else.101

if.then.92:                                       ; preds = %for.end
  %52 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call93 = call i32 @lm_fread_int32(%struct.lm_s* %52)
  store i32 %call93, i32* %k, align 4
  %53 = load i32, i32* %k, align 4
  %cmp94 = icmp slt i32 %53, 1
  br i1 %cmp94, label %if.then.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.then.92
  %54 = load i32, i32* %k, align 4
  %cmp97 = icmp sgt i32 %54, 15
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false.96, %if.then.92
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 516, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %55 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i32 %55)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %lor.lhs.false.96
  %56 = load i32, i32* %k, align 4
  %57 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %log_bg_seg_sz = getelementptr inbounds %struct.lm_s, %struct.lm_s* %57, i32 0, i32 7
  store i32 %56, i32* %log_bg_seg_sz, align 4
  br label %if.end.103

if.else.101:                                      ; preds = %for.end
  %58 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %log_bg_seg_sz102 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %58, i32 0, i32 7
  store i32 9, i32* %log_bg_seg_sz102, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.end.100
  %59 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call104 = call i32 @lm_fread_int32(%struct.lm_s* %59)
  %60 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %60, i32 0, i32 0
  store i32 %call104, i32* %n_ug, align 4
  br label %if.end.108

if.else.105:                                      ; preds = %if.end.70
  %61 = load i32, i32* %vn, align 4
  %62 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug106 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %62, i32 0, i32 0
  store i32 %61, i32* %n_ug106, align 4
  %63 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %log_bg_seg_sz107 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %63, i32 0, i32 7
  store i32 9, i32* %log_bg_seg_sz107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.end.103
  %64 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug109 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %64, i32 0, i32 0
  %65 = load i32, i32* %n_ug109, align 4
  %cmp110 = icmp sle i32 %65, 0
  br i1 %cmp110, label %if.then.116, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.end.108
  %66 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug113 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %66, i32 0, i32 0
  %67 = load i32, i32* %n_ug113, align 4
  %cmp114 = icmp uge i32 %67, 65534
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %lor.lhs.false.112, %if.end.108
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 529, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %68 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug117 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %68, i32 0, i32 0
  %69 = load i32, i32* %n_ug117, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0), i32 %69, i32 65534)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %lor.lhs.false.112
  %70 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %log_bg_seg_sz119 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %70, i32 0, i32 7
  %71 = load i32, i32* %log_bg_seg_sz119, align 4
  %shl120 = shl i32 1, %71
  %72 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bg_seg_sz = getelementptr inbounds %struct.lm_s, %struct.lm_s* %72, i32 0, i32 8
  store i32 %shl120, i32* %bg_seg_sz, align 4
  %73 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call121 = call i32 @lm_fread_int32(%struct.lm_s* %73)
  %74 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %74, i32 0, i32 1
  store i32 %call121, i32* %n_bg, align 4
  %75 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg122 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %75, i32 0, i32 1
  %76 = load i32, i32* %n_bg122, align 4
  %cmp123 = icmp slt i32 %76, 0
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.118
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %77 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg126 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %77, i32 0, i32 1
  %78 = load i32, i32* %n_bg126, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 %78)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.118
  %79 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call128 = call i32 @lm_fread_int32(%struct.lm_s* %79)
  %80 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %80, i32 0, i32 2
  store i32 %call128, i32* %n_tg, align 4
  %81 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg129 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %81, i32 0, i32 2
  %82 = load i32, i32* %n_tg129, align 4
  %cmp130 = icmp slt i32 %82, 0
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.127
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 541, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %83 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg133 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %83, i32 0, i32 2
  %84 = load i32, i32* %n_tg133, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i32 %84)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.127
  %85 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug135 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %85, i32 0, i32 0
  %86 = load i32, i32* %n_ug135, align 4
  %add136 = add nsw i32 %86, 1
  %conv137 = sext i32 %add136 to i64
  %call138 = call i8* @__ckd_calloc__(i64 %conv137, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 544)
  %87 = bitcast i8* %call138 to %struct.ug_t*
  %88 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %88, i32 0, i32 9
  store %struct.ug_t* %87, %struct.ug_t** %ug, align 8
  %89 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug139 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %89, i32 0, i32 9
  %90 = load %struct.ug_t*, %struct.ug_t** %ug139, align 8
  %91 = bitcast %struct.ug_t* %90 to i8*
  %92 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug140 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %92, i32 0, i32 0
  %93 = load i32, i32* %n_ug140, align 4
  %add141 = add nsw i32 %93, 1
  %conv142 = sext i32 %add141 to i64
  %94 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp143 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %94, i32 0, i32 21
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp143, align 8
  %call144 = call i64 @fread(i8* %91, i64 16, i64 %conv142, %struct._IO_FILE* %95)
  %96 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug145 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %96, i32 0, i32 0
  %97 = load i32, i32* %n_ug145, align 4
  %add146 = add nsw i32 %97, 1
  %conv147 = sext i32 %add146 to i64
  %cmp148 = icmp ne i64 %call144, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.134
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 546, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %98 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %98)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.end.134
  %99 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap152 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %99, i32 0, i32 22
  %100 = load i32, i32* %byteswap152, align 4
  %tobool = icmp ne i32 %100, 0
  br i1 %tobool, label %if.then.153, label %if.end.256

if.then.153:                                      ; preds = %if.end.151
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc, %if.then.153
  %101 = load i32, i32* %i, align 4
  %102 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug155 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %102, i32 0, i32 0
  %103 = load i32, i32* %n_ug155, align 4
  %cmp156 = icmp sle i32 %101, %103
  br i1 %cmp156, label %for.body, label %for.end.255

for.body:                                         ; preds = %for.cond.154
  %104 = load i32, i32* %i, align 4
  %idxprom = sext i32 %104 to i64
  %105 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug158 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %105, i32 0, i32 9
  %106 = load %struct.ug_t*, %struct.ug_t** %ug158, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %106, i64 %idxprom
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %107 = load i32, i32* %l, align 4
  %shr159 = ashr i32 %107, 24
  %and160 = and i32 255, %shr159
  %108 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %108 to i64
  %109 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug162 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %109, i32 0, i32 9
  %110 = load %struct.ug_t*, %struct.ug_t** %ug162, align 8
  %arrayidx163 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %110, i64 %idxprom161
  %prob164 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx163, i32 0, i32 1
  %l165 = bitcast %union.lmlog_t* %prob164 to i32*
  %111 = load i32, i32* %l165, align 4
  %shr166 = ashr i32 %111, 8
  %and167 = and i32 65280, %shr166
  %or168 = or i32 %and160, %and167
  %112 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %112 to i64
  %113 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug170 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %113, i32 0, i32 9
  %114 = load %struct.ug_t*, %struct.ug_t** %ug170, align 8
  %arrayidx171 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %114, i64 %idxprom169
  %prob172 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx171, i32 0, i32 1
  %l173 = bitcast %union.lmlog_t* %prob172 to i32*
  %115 = load i32, i32* %l173, align 4
  %shl174 = shl i32 %115, 8
  %and175 = and i32 16711680, %shl174
  %or176 = or i32 %or168, %and175
  %116 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %116 to i64
  %117 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug178 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %117, i32 0, i32 9
  %118 = load %struct.ug_t*, %struct.ug_t** %ug178, align 8
  %arrayidx179 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %118, i64 %idxprom177
  %prob180 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx179, i32 0, i32 1
  %l181 = bitcast %union.lmlog_t* %prob180 to i32*
  %119 = load i32, i32* %l181, align 4
  %shl182 = shl i32 %119, 24
  %and183 = and i32 -16777216, %shl182
  %or184 = or i32 %or176, %and183
  %120 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %120 to i64
  %121 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug186 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %121, i32 0, i32 9
  %122 = load %struct.ug_t*, %struct.ug_t** %ug186, align 8
  %arrayidx187 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %122, i64 %idxprom185
  %prob188 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx187, i32 0, i32 1
  %l189 = bitcast %union.lmlog_t* %prob188 to i32*
  store i32 %or184, i32* %l189, align 4
  %123 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %123 to i64
  %124 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug191 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %124, i32 0, i32 9
  %125 = load %struct.ug_t*, %struct.ug_t** %ug191, align 8
  %arrayidx192 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %125, i64 %idxprom190
  %bowt = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx192, i32 0, i32 2
  %l193 = bitcast %union.lmlog_t* %bowt to i32*
  %126 = load i32, i32* %l193, align 4
  %shr194 = ashr i32 %126, 24
  %and195 = and i32 255, %shr194
  %127 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %127 to i64
  %128 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug197 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %128, i32 0, i32 9
  %129 = load %struct.ug_t*, %struct.ug_t** %ug197, align 8
  %arrayidx198 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %129, i64 %idxprom196
  %bowt199 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx198, i32 0, i32 2
  %l200 = bitcast %union.lmlog_t* %bowt199 to i32*
  %130 = load i32, i32* %l200, align 4
  %shr201 = ashr i32 %130, 8
  %and202 = and i32 65280, %shr201
  %or203 = or i32 %and195, %and202
  %131 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %131 to i64
  %132 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug205 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %132, i32 0, i32 9
  %133 = load %struct.ug_t*, %struct.ug_t** %ug205, align 8
  %arrayidx206 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %133, i64 %idxprom204
  %bowt207 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx206, i32 0, i32 2
  %l208 = bitcast %union.lmlog_t* %bowt207 to i32*
  %134 = load i32, i32* %l208, align 4
  %shl209 = shl i32 %134, 8
  %and210 = and i32 16711680, %shl209
  %or211 = or i32 %or203, %and210
  %135 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %135 to i64
  %136 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug213 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %136, i32 0, i32 9
  %137 = load %struct.ug_t*, %struct.ug_t** %ug213, align 8
  %arrayidx214 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %137, i64 %idxprom212
  %bowt215 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx214, i32 0, i32 2
  %l216 = bitcast %union.lmlog_t* %bowt215 to i32*
  %138 = load i32, i32* %l216, align 4
  %shl217 = shl i32 %138, 24
  %and218 = and i32 -16777216, %shl217
  %or219 = or i32 %or211, %and218
  %139 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %139 to i64
  %140 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug221 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %140, i32 0, i32 9
  %141 = load %struct.ug_t*, %struct.ug_t** %ug221, align 8
  %arrayidx222 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %141, i64 %idxprom220
  %bowt223 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx222, i32 0, i32 2
  %l224 = bitcast %union.lmlog_t* %bowt223 to i32*
  store i32 %or219, i32* %l224, align 4
  %142 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %142 to i64
  %143 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug226 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %143, i32 0, i32 9
  %144 = load %struct.ug_t*, %struct.ug_t** %ug226, align 8
  %arrayidx227 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %144, i64 %idxprom225
  %firstbg = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx227, i32 0, i32 3
  %145 = load i32, i32* %firstbg, align 4
  %shr228 = ashr i32 %145, 24
  %and229 = and i32 255, %shr228
  %146 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %146 to i64
  %147 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug231 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %147, i32 0, i32 9
  %148 = load %struct.ug_t*, %struct.ug_t** %ug231, align 8
  %arrayidx232 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %148, i64 %idxprom230
  %firstbg233 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx232, i32 0, i32 3
  %149 = load i32, i32* %firstbg233, align 4
  %shr234 = ashr i32 %149, 8
  %and235 = and i32 65280, %shr234
  %or236 = or i32 %and229, %and235
  %150 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %150 to i64
  %151 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug238 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %151, i32 0, i32 9
  %152 = load %struct.ug_t*, %struct.ug_t** %ug238, align 8
  %arrayidx239 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %152, i64 %idxprom237
  %firstbg240 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx239, i32 0, i32 3
  %153 = load i32, i32* %firstbg240, align 4
  %shl241 = shl i32 %153, 8
  %and242 = and i32 16711680, %shl241
  %or243 = or i32 %or236, %and242
  %154 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %154 to i64
  %155 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug245 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %155, i32 0, i32 9
  %156 = load %struct.ug_t*, %struct.ug_t** %ug245, align 8
  %arrayidx246 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %156, i64 %idxprom244
  %firstbg247 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx246, i32 0, i32 3
  %157 = load i32, i32* %firstbg247, align 4
  %shl248 = shl i32 %157, 24
  %and249 = and i32 -16777216, %shl248
  %or250 = or i32 %or243, %and249
  %158 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %158 to i64
  %159 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug252 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %159, i32 0, i32 9
  %160 = load %struct.ug_t*, %struct.ug_t** %ug252, align 8
  %arrayidx253 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %160, i64 %idxprom251
  %firstbg254 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx253, i32 0, i32 3
  store i32 %or250, i32* %firstbg254, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %161 = load i32, i32* %i, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.154

for.end.255:                                      ; preds = %for.cond.154
  br label %if.end.256

if.end.256:                                       ; preds = %for.end.255, %if.end.151
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 553, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %162 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug257 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %162, i32 0, i32 0
  %163 = load i32, i32* %n_ug257, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 %163)
  %164 = load i32, i32* @LM_IN_MEMORY, align 4
  %tobool258 = icmp ne i32 %164, 0
  br i1 %tobool258, label %if.then.259, label %if.else.303

if.then.259:                                      ; preds = %if.end.256
  %165 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg260 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %165, i32 0, i32 1
  %166 = load i32, i32* %n_bg260, align 4
  %add261 = add nsw i32 %166, 1
  %conv262 = sext i32 %add261 to i64
  %call263 = call i8* @__ckd_calloc__(i64 %conv262, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 557)
  %167 = bitcast i8* %call263 to %struct.bg_t*
  %168 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %168, i32 0, i32 10
  store %struct.bg_t* %167, %struct.bg_t** %bg, align 8
  %169 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg264 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %169, i32 0, i32 2
  %170 = load i32, i32* %n_tg264, align 4
  %add265 = add nsw i32 %170, 1
  %conv266 = sext i32 %add265 to i64
  %call267 = call i8* @__ckd_calloc__(i64 %conv266, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 558)
  %171 = bitcast i8* %call267 to %struct.tg_t*
  %172 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %172, i32 0, i32 11
  store %struct.tg_t* %171, %struct.tg_t** %tg, align 8
  %173 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg268 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %173, i32 0, i32 1
  %174 = load i32, i32* %n_bg268, align 4
  %cmp269 = icmp sgt i32 %174, 0
  br i1 %cmp269, label %if.then.271, label %if.end.285

if.then.271:                                      ; preds = %if.then.259
  %175 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp272 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %175, i32 0, i32 21
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %fp272, align 8
  %call273 = call i64 @ftell(%struct._IO_FILE* %176)
  %conv274 = trunc i64 %call273 to i32
  %177 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgoff = getelementptr inbounds %struct.lm_s, %struct.lm_s* %177, i32 0, i32 23
  store i32 %conv274, i32* %bgoff, align 4
  %178 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bg275 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %178, i32 0, i32 10
  %179 = load %struct.bg_t*, %struct.bg_t** %bg275, align 8
  %180 = bitcast %struct.bg_t* %179 to i8*
  %181 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg276 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %181, i32 0, i32 1
  %182 = load i32, i32* %n_bg276, align 4
  %add277 = add nsw i32 %182, 1
  %conv278 = sext i32 %add277 to i64
  %183 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp279 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %183, i32 0, i32 21
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %fp279, align 8
  %call280 = call i64 @fread(i8* %180, i64 %conv278, i64 8, %struct._IO_FILE* %184)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 563, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %185 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg281 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %185, i32 0, i32 1
  %186 = load i32, i32* %n_bg281, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32 %186)
  %187 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug282 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %187, i32 0, i32 0
  %188 = load i32, i32* %n_ug282, align 4
  %conv283 = sext i32 %188 to i64
  %call284 = call i8* @__ckd_calloc__(i64 %conv283, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 565)
  %189 = bitcast i8* %call284 to %struct.membg_t*
  %190 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %190, i32 0, i32 12
  store %struct.membg_t* %189, %struct.membg_t** %membg, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.271, %if.then.259
  %191 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg286 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %191, i32 0, i32 2
  %192 = load i32, i32* %n_tg286, align 4
  %cmp287 = icmp sgt i32 %192, 0
  br i1 %cmp287, label %if.then.289, label %if.end.302

if.then.289:                                      ; preds = %if.end.285
  %193 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp290 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %193, i32 0, i32 21
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %fp290, align 8
  %call291 = call i64 @ftell(%struct._IO_FILE* %194)
  %conv292 = trunc i64 %call291 to i32
  %195 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgoff = getelementptr inbounds %struct.lm_s, %struct.lm_s* %195, i32 0, i32 24
  store i32 %conv292, i32* %tgoff, align 4
  %196 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg293 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %196, i32 0, i32 11
  %197 = load %struct.tg_t*, %struct.tg_t** %tg293, align 8
  %198 = bitcast %struct.tg_t* %197 to i8*
  %199 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg294 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %199, i32 0, i32 2
  %200 = load i32, i32* %n_tg294, align 4
  %conv295 = sext i32 %200 to i64
  %201 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp296 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %201, i32 0, i32 21
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %fp296, align 8
  %call297 = call i64 @fread(i8* %198, i64 %conv295, i64 4, %struct._IO_FILE* %202)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 571, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %203 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg298 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %203, i32 0, i32 2
  %204 = load i32, i32* %n_tg298, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0), i32 %204)
  %205 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug299 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %205, i32 0, i32 0
  %206 = load i32, i32* %n_ug299, align 4
  %conv300 = sext i32 %206 to i64
  %call301 = call i8* @__ckd_calloc__(i64 %conv300, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 573)
  %207 = bitcast i8* %call301 to %struct.tginfo_s**
  %208 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tginfo = getelementptr inbounds %struct.lm_s, %struct.lm_s* %208, i32 0, i32 13
  store %struct.tginfo_s** %207, %struct.tginfo_s*** %tginfo, align 8
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.289, %if.end.285
  br label %if.end.344

if.else.303:                                      ; preds = %if.end.256
  %209 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bg304 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %209, i32 0, i32 10
  store %struct.bg_t* null, %struct.bg_t** %bg304, align 8
  %210 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg305 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %210, i32 0, i32 11
  store %struct.tg_t* null, %struct.tg_t** %tg305, align 8
  %211 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg306 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %211, i32 0, i32 1
  %212 = load i32, i32* %n_bg306, align 4
  %cmp307 = icmp sgt i32 %212, 0
  br i1 %cmp307, label %if.then.309, label %if.end.324

if.then.309:                                      ; preds = %if.else.303
  %213 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp310 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %213, i32 0, i32 21
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %fp310, align 8
  %call311 = call i64 @ftell(%struct._IO_FILE* %214)
  %conv312 = trunc i64 %call311 to i32
  %215 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgoff313 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %215, i32 0, i32 23
  store i32 %conv312, i32* %bgoff313, align 4
  %216 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp314 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %216, i32 0, i32 21
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %fp314, align 8
  %218 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg315 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %218, i32 0, i32 1
  %219 = load i32, i32* %n_bg315, align 4
  %add316 = add nsw i32 %219, 1
  %conv317 = sext i32 %add316 to i64
  %mul = mul i64 %conv317, 8
  %call318 = call i32 @fseek(%struct._IO_FILE* %217, i64 %mul, i32 1)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 583, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %220 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg319 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %220, i32 0, i32 1
  %221 = load i32, i32* %n_bg319, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i32 %221)
  %222 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug320 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %222, i32 0, i32 0
  %223 = load i32, i32* %n_ug320, align 4
  %conv321 = sext i32 %223 to i64
  %call322 = call i8* @__ckd_calloc__(i64 %conv321, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 584)
  %224 = bitcast i8* %call322 to %struct.membg_t*
  %225 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %membg323 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %225, i32 0, i32 12
  store %struct.membg_t* %224, %struct.membg_t** %membg323, align 8
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.309, %if.else.303
  %226 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg325 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %226, i32 0, i32 2
  %227 = load i32, i32* %n_tg325, align 4
  %cmp326 = icmp sgt i32 %227, 0
  br i1 %cmp326, label %if.then.328, label %if.end.343

if.then.328:                                      ; preds = %if.end.324
  %228 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp329 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %228, i32 0, i32 21
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %fp329, align 8
  %call330 = call i64 @ftell(%struct._IO_FILE* %229)
  %conv331 = trunc i64 %call330 to i32
  %230 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgoff332 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %230, i32 0, i32 24
  store i32 %conv331, i32* %tgoff332, align 4
  %231 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp333 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %231, i32 0, i32 21
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %fp333, align 8
  %233 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg334 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %233, i32 0, i32 2
  %234 = load i32, i32* %n_tg334, align 4
  %conv335 = sext i32 %234 to i64
  %mul336 = mul i64 %conv335, 4
  %call337 = call i32 @fseek(%struct._IO_FILE* %232, i64 %mul336, i32 1)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %235 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg338 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %235, i32 0, i32 2
  %236 = load i32, i32* %n_tg338, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0), i32 %236)
  %237 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug339 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %237, i32 0, i32 0
  %238 = load i32, i32* %n_ug339, align 4
  %conv340 = sext i32 %238 to i64
  %call341 = call i8* @__ckd_calloc__(i64 %conv340, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 593)
  %239 = bitcast i8* %call341 to %struct.tginfo_s**
  %240 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tginfo342 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %240, i32 0, i32 13
  store %struct.tginfo_s** %239, %struct.tginfo_s*** %tginfo342, align 8
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.328, %if.end.324
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.end.302
  %241 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg345 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %241, i32 0, i32 1
  %242 = load i32, i32* %n_bg345, align 4
  %cmp346 = icmp sgt i32 %242, 0
  br i1 %cmp346, label %if.then.348, label %if.end.418

if.then.348:                                      ; preds = %if.end.344
  %243 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call349 = call i32 @lm_fread_int32(%struct.lm_s* %243)
  %244 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %244, i32 0, i32 18
  store i32 %call349, i32* %n_bgprob, align 4
  %245 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob350 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %245, i32 0, i32 18
  %246 = load i32, i32* %n_bgprob350, align 4
  %cmp351 = icmp sle i32 %246, 0
  br i1 %cmp351, label %if.then.357, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %if.then.348
  %247 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob354 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %247, i32 0, i32 18
  %248 = load i32, i32* %n_bgprob354, align 4
  %cmp355 = icmp sgt i32 %248, 65536
  br i1 %cmp355, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %lor.lhs.false.353, %if.then.348
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 601, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %249 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob358 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %249, i32 0, i32 18
  %250 = load i32, i32* %n_bgprob358, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i32 %250)
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %lor.lhs.false.353
  %251 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob360 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %251, i32 0, i32 18
  %252 = load i32, i32* %n_bgprob360, align 4
  %conv361 = sext i32 %252 to i64
  %call362 = call i8* @__ckd_calloc__(i64 %conv361, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 604)
  %253 = bitcast i8* %call362 to %union.lmlog_t*
  %254 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %254, i32 0, i32 14
  store %union.lmlog_t* %253, %union.lmlog_t** %bgprob, align 8
  %255 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob363 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %255, i32 0, i32 14
  %256 = load %union.lmlog_t*, %union.lmlog_t** %bgprob363, align 8
  %257 = bitcast %union.lmlog_t* %256 to i8*
  %258 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob364 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %258, i32 0, i32 18
  %259 = load i32, i32* %n_bgprob364, align 4
  %conv365 = sext i32 %259 to i64
  %260 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp366 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %260, i32 0, i32 21
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %fp366, align 8
  %call367 = call i64 @fread(i8* %257, i64 4, i64 %conv365, %struct._IO_FILE* %261)
  %262 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob368 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %262, i32 0, i32 18
  %263 = load i32, i32* %n_bgprob368, align 4
  %conv369 = sext i32 %263 to i64
  %cmp370 = icmp ne i64 %call367, %conv369
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %if.end.359
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 607, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %264 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %264)
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %if.end.359
  %265 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap374 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %265, i32 0, i32 22
  %266 = load i32, i32* %byteswap374, align 4
  %tobool375 = icmp ne i32 %266, 0
  br i1 %tobool375, label %if.then.376, label %if.end.416

if.then.376:                                      ; preds = %if.end.373
  store i32 0, i32* %i, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.413, %if.then.376
  %267 = load i32, i32* %i, align 4
  %268 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob378 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %268, i32 0, i32 18
  %269 = load i32, i32* %n_bgprob378, align 4
  %cmp379 = icmp slt i32 %267, %269
  br i1 %cmp379, label %for.body.381, label %for.end.415

for.body.381:                                     ; preds = %for.cond.377
  %270 = load i32, i32* %i, align 4
  %idxprom382 = sext i32 %270 to i64
  %271 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob383 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %271, i32 0, i32 14
  %272 = load %union.lmlog_t*, %union.lmlog_t** %bgprob383, align 8
  %arrayidx384 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %272, i64 %idxprom382
  %l385 = bitcast %union.lmlog_t* %arrayidx384 to i32*
  %273 = load i32, i32* %l385, align 4
  %shr386 = ashr i32 %273, 24
  %and387 = and i32 255, %shr386
  %274 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %274 to i64
  %275 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob389 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %275, i32 0, i32 14
  %276 = load %union.lmlog_t*, %union.lmlog_t** %bgprob389, align 8
  %arrayidx390 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %276, i64 %idxprom388
  %l391 = bitcast %union.lmlog_t* %arrayidx390 to i32*
  %277 = load i32, i32* %l391, align 4
  %shr392 = ashr i32 %277, 8
  %and393 = and i32 65280, %shr392
  %or394 = or i32 %and387, %and393
  %278 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %278 to i64
  %279 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob396 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %279, i32 0, i32 14
  %280 = load %union.lmlog_t*, %union.lmlog_t** %bgprob396, align 8
  %arrayidx397 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %280, i64 %idxprom395
  %l398 = bitcast %union.lmlog_t* %arrayidx397 to i32*
  %281 = load i32, i32* %l398, align 4
  %shl399 = shl i32 %281, 8
  %and400 = and i32 16711680, %shl399
  %or401 = or i32 %or394, %and400
  %282 = load i32, i32* %i, align 4
  %idxprom402 = sext i32 %282 to i64
  %283 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob403 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %283, i32 0, i32 14
  %284 = load %union.lmlog_t*, %union.lmlog_t** %bgprob403, align 8
  %arrayidx404 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %284, i64 %idxprom402
  %l405 = bitcast %union.lmlog_t* %arrayidx404 to i32*
  %285 = load i32, i32* %l405, align 4
  %shl406 = shl i32 %285, 24
  %and407 = and i32 -16777216, %shl406
  %or408 = or i32 %or401, %and407
  %286 = load i32, i32* %i, align 4
  %idxprom409 = sext i32 %286 to i64
  %287 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bgprob410 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %287, i32 0, i32 14
  %288 = load %union.lmlog_t*, %union.lmlog_t** %bgprob410, align 8
  %arrayidx411 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %288, i64 %idxprom409
  %l412 = bitcast %union.lmlog_t* %arrayidx411 to i32*
  store i32 %or408, i32* %l412, align 4
  br label %for.inc.413

for.inc.413:                                      ; preds = %for.body.381
  %289 = load i32, i32* %i, align 4
  %inc414 = add nsw i32 %289, 1
  store i32 %inc414, i32* %i, align 4
  br label %for.cond.377

for.end.415:                                      ; preds = %for.cond.377
  br label %if.end.416

if.end.416:                                       ; preds = %for.end.415, %if.end.373
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 613, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %290 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bgprob417 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %290, i32 0, i32 18
  %291 = load i32, i32* %n_bgprob417, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), i32 %291)
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.416, %if.end.344
  %292 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tg419 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %292, i32 0, i32 2
  %293 = load i32, i32* %n_tg419, align 4
  %cmp420 = icmp sgt i32 %293, 0
  br i1 %cmp420, label %if.then.422, label %if.end.619

if.then.422:                                      ; preds = %if.end.418
  %294 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call423 = call i32 @lm_fread_int32(%struct.lm_s* %294)
  %295 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %295, i32 0, i32 20
  store i32 %call423, i32* %n_tgbowt, align 4
  %296 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt424 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %296, i32 0, i32 20
  %297 = load i32, i32* %n_tgbowt424, align 4
  %cmp425 = icmp sle i32 %297, 0
  br i1 %cmp425, label %if.then.431, label %lor.lhs.false.427

lor.lhs.false.427:                                ; preds = %if.then.422
  %298 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt428 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %298, i32 0, i32 20
  %299 = load i32, i32* %n_tgbowt428, align 4
  %cmp429 = icmp sgt i32 %299, 65536
  br i1 %cmp429, label %if.then.431, label %if.end.433

if.then.431:                                      ; preds = %lor.lhs.false.427, %if.then.422
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 620, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %300 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt432 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %300, i32 0, i32 20
  %301 = load i32, i32* %n_tgbowt432, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i32 %301)
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.431, %lor.lhs.false.427
  %302 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt434 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %302, i32 0, i32 20
  %303 = load i32, i32* %n_tgbowt434, align 4
  %conv435 = sext i32 %303 to i64
  %call436 = call i8* @__ckd_calloc__(i64 %conv435, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 623)
  %304 = bitcast i8* %call436 to %union.lmlog_t*
  %305 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %305, i32 0, i32 16
  store %union.lmlog_t* %304, %union.lmlog_t** %tgbowt, align 8
  %306 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt437 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %306, i32 0, i32 16
  %307 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt437, align 8
  %308 = bitcast %union.lmlog_t* %307 to i8*
  %309 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt438 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %309, i32 0, i32 20
  %310 = load i32, i32* %n_tgbowt438, align 4
  %conv439 = sext i32 %310 to i64
  %311 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp440 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %311, i32 0, i32 21
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %fp440, align 8
  %call441 = call i64 @fread(i8* %308, i64 4, i64 %conv439, %struct._IO_FILE* %312)
  %313 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt442 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %313, i32 0, i32 20
  %314 = load i32, i32* %n_tgbowt442, align 4
  %conv443 = sext i32 %314 to i64
  %cmp444 = icmp ne i64 %call441, %conv443
  br i1 %cmp444, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.end.433
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 626, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %315 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %315)
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.446, %if.end.433
  %316 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap448 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %316, i32 0, i32 22
  %317 = load i32, i32* %byteswap448, align 4
  %tobool449 = icmp ne i32 %317, 0
  br i1 %tobool449, label %if.then.450, label %if.end.490

if.then.450:                                      ; preds = %if.end.447
  store i32 0, i32* %i, align 4
  br label %for.cond.451

for.cond.451:                                     ; preds = %for.inc.487, %if.then.450
  %318 = load i32, i32* %i, align 4
  %319 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt452 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %319, i32 0, i32 20
  %320 = load i32, i32* %n_tgbowt452, align 4
  %cmp453 = icmp slt i32 %318, %320
  br i1 %cmp453, label %for.body.455, label %for.end.489

for.body.455:                                     ; preds = %for.cond.451
  %321 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %321 to i64
  %322 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt457 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %322, i32 0, i32 16
  %323 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt457, align 8
  %arrayidx458 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %323, i64 %idxprom456
  %l459 = bitcast %union.lmlog_t* %arrayidx458 to i32*
  %324 = load i32, i32* %l459, align 4
  %shr460 = ashr i32 %324, 24
  %and461 = and i32 255, %shr460
  %325 = load i32, i32* %i, align 4
  %idxprom462 = sext i32 %325 to i64
  %326 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt463 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %326, i32 0, i32 16
  %327 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt463, align 8
  %arrayidx464 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %327, i64 %idxprom462
  %l465 = bitcast %union.lmlog_t* %arrayidx464 to i32*
  %328 = load i32, i32* %l465, align 4
  %shr466 = ashr i32 %328, 8
  %and467 = and i32 65280, %shr466
  %or468 = or i32 %and461, %and467
  %329 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %329 to i64
  %330 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt470 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %330, i32 0, i32 16
  %331 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt470, align 8
  %arrayidx471 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %331, i64 %idxprom469
  %l472 = bitcast %union.lmlog_t* %arrayidx471 to i32*
  %332 = load i32, i32* %l472, align 4
  %shl473 = shl i32 %332, 8
  %and474 = and i32 16711680, %shl473
  %or475 = or i32 %or468, %and474
  %333 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %333 to i64
  %334 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt477 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %334, i32 0, i32 16
  %335 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt477, align 8
  %arrayidx478 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %335, i64 %idxprom476
  %l479 = bitcast %union.lmlog_t* %arrayidx478 to i32*
  %336 = load i32, i32* %l479, align 4
  %shl480 = shl i32 %336, 24
  %and481 = and i32 -16777216, %shl480
  %or482 = or i32 %or475, %and481
  %337 = load i32, i32* %i, align 4
  %idxprom483 = sext i32 %337 to i64
  %338 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgbowt484 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %338, i32 0, i32 16
  %339 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt484, align 8
  %arrayidx485 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %339, i64 %idxprom483
  %l486 = bitcast %union.lmlog_t* %arrayidx485 to i32*
  store i32 %or482, i32* %l486, align 4
  br label %for.inc.487

for.inc.487:                                      ; preds = %for.body.455
  %340 = load i32, i32* %i, align 4
  %inc488 = add nsw i32 %340, 1
  store i32 %inc488, i32* %i, align 4
  br label %for.cond.451

for.end.489:                                      ; preds = %for.cond.451
  br label %if.end.490

if.end.490:                                       ; preds = %for.end.489, %if.end.447
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 631, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %341 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgbowt491 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %341, i32 0, i32 20
  %342 = load i32, i32* %n_tgbowt491, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i32 %342)
  %343 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call492 = call i32 @lm_fread_int32(%struct.lm_s* %343)
  %344 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %344, i32 0, i32 19
  store i32 %call492, i32* %n_tgprob, align 4
  %345 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob493 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %345, i32 0, i32 19
  %346 = load i32, i32* %n_tgprob493, align 4
  %cmp494 = icmp sle i32 %346, 0
  br i1 %cmp494, label %if.then.500, label %lor.lhs.false.496

lor.lhs.false.496:                                ; preds = %if.end.490
  %347 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob497 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %347, i32 0, i32 19
  %348 = load i32, i32* %n_tgprob497, align 4
  %cmp498 = icmp sgt i32 %348, 65536
  br i1 %cmp498, label %if.then.500, label %if.end.502

if.then.500:                                      ; preds = %lor.lhs.false.496, %if.end.490
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 636, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %349 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob501 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %349, i32 0, i32 19
  %350 = load i32, i32* %n_tgprob501, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i32 %350)
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.500, %lor.lhs.false.496
  %351 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob503 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %351, i32 0, i32 19
  %352 = load i32, i32* %n_tgprob503, align 4
  %conv504 = sext i32 %352 to i64
  %call505 = call i8* @__ckd_calloc__(i64 %conv504, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 639)
  %353 = bitcast i8* %call505 to %union.lmlog_t*
  %354 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %354, i32 0, i32 15
  store %union.lmlog_t* %353, %union.lmlog_t** %tgprob, align 8
  %355 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob506 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %355, i32 0, i32 15
  %356 = load %union.lmlog_t*, %union.lmlog_t** %tgprob506, align 8
  %357 = bitcast %union.lmlog_t* %356 to i8*
  %358 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob507 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %358, i32 0, i32 19
  %359 = load i32, i32* %n_tgprob507, align 4
  %conv508 = sext i32 %359 to i64
  %360 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp509 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %360, i32 0, i32 21
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %fp509, align 8
  %call510 = call i64 @fread(i8* %357, i64 4, i64 %conv508, %struct._IO_FILE* %361)
  %362 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob511 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %362, i32 0, i32 19
  %363 = load i32, i32* %n_tgprob511, align 4
  %conv512 = sext i32 %363 to i64
  %cmp513 = icmp ne i64 %call510, %conv512
  br i1 %cmp513, label %if.then.515, label %if.end.516

if.then.515:                                      ; preds = %if.end.502
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 642, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %364 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %364)
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.515, %if.end.502
  %365 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap517 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %365, i32 0, i32 22
  %366 = load i32, i32* %byteswap517, align 4
  %tobool518 = icmp ne i32 %366, 0
  br i1 %tobool518, label %if.then.519, label %if.end.559

if.then.519:                                      ; preds = %if.end.516
  store i32 0, i32* %i, align 4
  br label %for.cond.520

for.cond.520:                                     ; preds = %for.inc.556, %if.then.519
  %367 = load i32, i32* %i, align 4
  %368 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob521 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %368, i32 0, i32 19
  %369 = load i32, i32* %n_tgprob521, align 4
  %cmp522 = icmp slt i32 %367, %369
  br i1 %cmp522, label %for.body.524, label %for.end.558

for.body.524:                                     ; preds = %for.cond.520
  %370 = load i32, i32* %i, align 4
  %idxprom525 = sext i32 %370 to i64
  %371 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob526 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %371, i32 0, i32 15
  %372 = load %union.lmlog_t*, %union.lmlog_t** %tgprob526, align 8
  %arrayidx527 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %372, i64 %idxprom525
  %l528 = bitcast %union.lmlog_t* %arrayidx527 to i32*
  %373 = load i32, i32* %l528, align 4
  %shr529 = ashr i32 %373, 24
  %and530 = and i32 255, %shr529
  %374 = load i32, i32* %i, align 4
  %idxprom531 = sext i32 %374 to i64
  %375 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob532 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %375, i32 0, i32 15
  %376 = load %union.lmlog_t*, %union.lmlog_t** %tgprob532, align 8
  %arrayidx533 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %376, i64 %idxprom531
  %l534 = bitcast %union.lmlog_t* %arrayidx533 to i32*
  %377 = load i32, i32* %l534, align 4
  %shr535 = ashr i32 %377, 8
  %and536 = and i32 65280, %shr535
  %or537 = or i32 %and530, %and536
  %378 = load i32, i32* %i, align 4
  %idxprom538 = sext i32 %378 to i64
  %379 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob539 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %379, i32 0, i32 15
  %380 = load %union.lmlog_t*, %union.lmlog_t** %tgprob539, align 8
  %arrayidx540 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %380, i64 %idxprom538
  %l541 = bitcast %union.lmlog_t* %arrayidx540 to i32*
  %381 = load i32, i32* %l541, align 4
  %shl542 = shl i32 %381, 8
  %and543 = and i32 16711680, %shl542
  %or544 = or i32 %or537, %and543
  %382 = load i32, i32* %i, align 4
  %idxprom545 = sext i32 %382 to i64
  %383 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob546 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %383, i32 0, i32 15
  %384 = load %union.lmlog_t*, %union.lmlog_t** %tgprob546, align 8
  %arrayidx547 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %384, i64 %idxprom545
  %l548 = bitcast %union.lmlog_t* %arrayidx547 to i32*
  %385 = load i32, i32* %l548, align 4
  %shl549 = shl i32 %385, 24
  %and550 = and i32 -16777216, %shl549
  %or551 = or i32 %or544, %and550
  %386 = load i32, i32* %i, align 4
  %idxprom552 = sext i32 %386 to i64
  %387 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgprob553 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %387, i32 0, i32 15
  %388 = load %union.lmlog_t*, %union.lmlog_t** %tgprob553, align 8
  %arrayidx554 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %388, i64 %idxprom552
  %l555 = bitcast %union.lmlog_t* %arrayidx554 to i32*
  store i32 %or551, i32* %l555, align 4
  br label %for.inc.556

for.inc.556:                                      ; preds = %for.body.524
  %389 = load i32, i32* %i, align 4
  %inc557 = add nsw i32 %389, 1
  store i32 %inc557, i32* %i, align 4
  br label %for.cond.520

for.end.558:                                      ; preds = %for.cond.520
  br label %if.end.559

if.end.559:                                       ; preds = %for.end.558, %if.end.516
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 647, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %390 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_tgprob560 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %390, i32 0, i32 19
  %391 = load i32, i32* %n_tgprob560, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i32 %391)
  %392 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call561 = call i32 @lm_fread_int32(%struct.lm_s* %392)
  store i32 %call561, i32* %k, align 4
  %393 = load i32, i32* %k, align 4
  %394 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_bg562 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %394, i32 0, i32 1
  %395 = load i32, i32* %n_bg562, align 4
  %add563 = add nsw i32 %395, 1
  %396 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bg_seg_sz564 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %396, i32 0, i32 8
  %397 = load i32, i32* %bg_seg_sz564, align 4
  %div = sdiv i32 %add563, %397
  %add565 = add nsw i32 %div, 1
  %cmp566 = icmp ne i32 %393, %add565
  br i1 %cmp566, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.end.559
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 652, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %398 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0), i32 %398)
  br label %if.end.569

if.end.569:                                       ; preds = %if.then.568, %if.end.559
  %399 = load i32, i32* %k, align 4
  %conv570 = sext i32 %399 to i64
  %call571 = call i8* @__ckd_calloc__(i64 %conv570, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 655)
  %400 = bitcast i8* %call571 to i32*
  %401 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase = getelementptr inbounds %struct.lm_s, %struct.lm_s* %401, i32 0, i32 17
  store i32* %400, i32** %tg_segbase, align 8
  %402 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase572 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %402, i32 0, i32 17
  %403 = load i32*, i32** %tg_segbase572, align 8
  %404 = bitcast i32* %403 to i8*
  %405 = load i32, i32* %k, align 4
  %conv573 = sext i32 %405 to i64
  %406 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp574 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %406, i32 0, i32 21
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** %fp574, align 8
  %call575 = call i64 @fread(i8* %404, i64 4, i64 %conv573, %struct._IO_FILE* %407)
  %408 = load i32, i32* %k, align 4
  %conv576 = sext i32 %408 to i64
  %cmp577 = icmp ne i64 %call575, %conv576
  br i1 %cmp577, label %if.then.579, label %if.end.580

if.then.579:                                      ; preds = %if.end.569
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 657, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %409 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %409)
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.579, %if.end.569
  %410 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %byteswap581 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %410, i32 0, i32 22
  %411 = load i32, i32* %byteswap581, align 4
  %tobool582 = icmp ne i32 %411, 0
  br i1 %tobool582, label %if.then.583, label %if.end.617

if.then.583:                                      ; preds = %if.end.580
  store i32 0, i32* %i, align 4
  br label %for.cond.584

for.cond.584:                                     ; preds = %for.inc.614, %if.then.583
  %412 = load i32, i32* %i, align 4
  %413 = load i32, i32* %k, align 4
  %cmp585 = icmp slt i32 %412, %413
  br i1 %cmp585, label %for.body.587, label %for.end.616

for.body.587:                                     ; preds = %for.cond.584
  %414 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %414 to i64
  %415 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase589 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %415, i32 0, i32 17
  %416 = load i32*, i32** %tg_segbase589, align 8
  %arrayidx590 = getelementptr inbounds i32, i32* %416, i64 %idxprom588
  %417 = load i32, i32* %arrayidx590, align 4
  %shr591 = ashr i32 %417, 24
  %and592 = and i32 255, %shr591
  %418 = load i32, i32* %i, align 4
  %idxprom593 = sext i32 %418 to i64
  %419 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase594 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %419, i32 0, i32 17
  %420 = load i32*, i32** %tg_segbase594, align 8
  %arrayidx595 = getelementptr inbounds i32, i32* %420, i64 %idxprom593
  %421 = load i32, i32* %arrayidx595, align 4
  %shr596 = ashr i32 %421, 8
  %and597 = and i32 65280, %shr596
  %or598 = or i32 %and592, %and597
  %422 = load i32, i32* %i, align 4
  %idxprom599 = sext i32 %422 to i64
  %423 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase600 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %423, i32 0, i32 17
  %424 = load i32*, i32** %tg_segbase600, align 8
  %arrayidx601 = getelementptr inbounds i32, i32* %424, i64 %idxprom599
  %425 = load i32, i32* %arrayidx601, align 4
  %shl602 = shl i32 %425, 8
  %and603 = and i32 16711680, %shl602
  %or604 = or i32 %or598, %and603
  %426 = load i32, i32* %i, align 4
  %idxprom605 = sext i32 %426 to i64
  %427 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase606 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %427, i32 0, i32 17
  %428 = load i32*, i32** %tg_segbase606, align 8
  %arrayidx607 = getelementptr inbounds i32, i32* %428, i64 %idxprom605
  %429 = load i32, i32* %arrayidx607, align 4
  %shl608 = shl i32 %429, 24
  %and609 = and i32 -16777216, %shl608
  %or610 = or i32 %or604, %and609
  %430 = load i32, i32* %i, align 4
  %idxprom611 = sext i32 %430 to i64
  %431 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tg_segbase612 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %431, i32 0, i32 17
  %432 = load i32*, i32** %tg_segbase612, align 8
  %arrayidx613 = getelementptr inbounds i32, i32* %432, i64 %idxprom611
  store i32 %or610, i32* %arrayidx613, align 4
  br label %for.inc.614

for.inc.614:                                      ; preds = %for.body.587
  %433 = load i32, i32* %i, align 4
  %inc615 = add nsw i32 %433, 1
  store i32 %inc615, i32* %i, align 4
  br label %for.cond.584

for.end.616:                                      ; preds = %for.cond.584
  br label %if.end.617

if.end.617:                                       ; preds = %for.end.616, %if.end.580
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 662, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %434 = load i32, i32* %k, align 4
  %435 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %bg_seg_sz618 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %435, i32 0, i32 8
  %436 = load i32, i32* %bg_seg_sz618, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0), i32 %434, i32 %436)
  br label %if.end.619

if.end.619:                                       ; preds = %if.end.617, %if.end.418
  %437 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %call620 = call i32 @lm_fread_int32(%struct.lm_s* %437)
  store i32 %call620, i32* %k, align 4
  %438 = load i32, i32* %k, align 4
  %cmp621 = icmp sle i32 %438, 0
  br i1 %cmp621, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %if.end.619
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 668, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %439 = load i32, i32* %k, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i32 %439)
  br label %if.end.624

if.end.624:                                       ; preds = %if.then.623, %if.end.619
  %440 = load i32, i32* %k, align 4
  %conv625 = sext i32 %440 to i64
  %call626 = call i8* @__ckd_calloc__(i64 %conv625, i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 670)
  store i8* %call626, i8** %tmp_word_str, align 8
  %441 = load i8*, i8** %tmp_word_str, align 8
  %442 = load i32, i32* %k, align 4
  %conv627 = sext i32 %442 to i64
  %443 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %fp628 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %443, i32 0, i32 21
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** %fp628, align 8
  %call629 = call i64 @fread(i8* %441, i64 1, i64 %conv627, %struct._IO_FILE* %444)
  %445 = load i32, i32* %k, align 4
  %conv630 = sext i32 %445 to i64
  %cmp631 = icmp ne i64 %call629, %conv630
  br i1 %cmp631, label %if.then.633, label %if.end.634

if.then.633:                                      ; preds = %if.end.624
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 672, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %446 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i8* %446)
  br label %if.end.634

if.end.634:                                       ; preds = %if.then.633, %if.end.624
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.635

for.cond.635:                                     ; preds = %for.inc.647, %if.end.634
  %447 = load i32, i32* %i, align 4
  %448 = load i32, i32* %k, align 4
  %cmp636 = icmp slt i32 %447, %448
  br i1 %cmp636, label %for.body.638, label %for.end.649

for.body.638:                                     ; preds = %for.cond.635
  %449 = load i32, i32* %i, align 4
  %idxprom639 = sext i32 %449 to i64
  %450 = load i8*, i8** %tmp_word_str, align 8
  %arrayidx640 = getelementptr inbounds i8, i8* %450, i64 %idxprom639
  %451 = load i8, i8* %arrayidx640, align 1
  %conv641 = sext i8 %451 to i32
  %cmp642 = icmp eq i32 %conv641, 0
  br i1 %cmp642, label %if.then.644, label %if.end.646

if.then.644:                                      ; preds = %for.body.638
  %452 = load i32, i32* %j, align 4
  %inc645 = add nsw i32 %452, 1
  store i32 %inc645, i32* %j, align 4
  br label %if.end.646

if.end.646:                                       ; preds = %if.then.644, %for.body.638
  br label %for.inc.647

for.inc.647:                                      ; preds = %if.end.646
  %453 = load i32, i32* %i, align 4
  %inc648 = add nsw i32 %453, 1
  store i32 %inc648, i32* %i, align 4
  br label %for.cond.635

for.end.649:                                      ; preds = %for.cond.635
  %454 = load i32, i32* %j, align 4
  %455 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug650 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %455, i32 0, i32 0
  %456 = load i32, i32* %n_ug650, align 4
  %cmp651 = icmp ne i32 %454, %456
  br i1 %cmp651, label %if.then.653, label %if.end.654

if.then.653:                                      ; preds = %for.end.649
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 679, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %457 = load i32, i32* %j, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i32 %457)
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.653, %for.end.649
  store i16 -1, i16* %endwid, align 2
  store i16 -1, i16* %startwid, align 2
  %458 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug655 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %458, i32 0, i32 0
  %459 = load i32, i32* %n_ug655, align 4
  %conv656 = sext i32 %459 to i64
  %call657 = call i8* @__ckd_calloc__(i64 %conv656, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 683)
  %460 = bitcast i8* %call657 to i8**
  %461 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %wordstr = getelementptr inbounds %struct.lm_s, %struct.lm_s* %461, i32 0, i32 4
  store i8** %460, i8*** %wordstr, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.658

for.cond.658:                                     ; preds = %for.inc.691, %if.end.654
  %462 = load i32, i32* %i, align 4
  %463 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug659 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %463, i32 0, i32 0
  %464 = load i32, i32* %n_ug659, align 4
  %cmp660 = icmp slt i32 %462, %464
  br i1 %cmp660, label %for.body.662, label %for.end.693

for.body.662:                                     ; preds = %for.cond.658
  %465 = load i8*, i8** %tmp_word_str, align 8
  %466 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %466 to i64
  %add.ptr = getelementptr inbounds i8, i8* %465, i64 %idx.ext
  %call663 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #4
  %cmp664 = icmp eq i32 %call663, 0
  br i1 %cmp664, label %if.then.666, label %if.else.668

if.then.666:                                      ; preds = %for.body.662
  %467 = load i32, i32* %i, align 4
  %conv667 = trunc i32 %467 to i16
  store i16 %conv667, i16* %startwid, align 2
  br label %if.end.677

if.else.668:                                      ; preds = %for.body.662
  %468 = load i8*, i8** %tmp_word_str, align 8
  %469 = load i32, i32* %j, align 4
  %idx.ext669 = sext i32 %469 to i64
  %add.ptr670 = getelementptr inbounds i8, i8* %468, i64 %idx.ext669
  %call671 = call i32 @strcmp(i8* %add.ptr670, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0)) #4
  %cmp672 = icmp eq i32 %call671, 0
  br i1 %cmp672, label %if.then.674, label %if.end.676

if.then.674:                                      ; preds = %if.else.668
  %470 = load i32, i32* %i, align 4
  %conv675 = trunc i32 %470 to i16
  store i16 %conv675, i16* %endwid, align 2
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.674, %if.else.668
  br label %if.end.677

if.end.677:                                       ; preds = %if.end.676, %if.then.666
  %471 = load i8*, i8** %tmp_word_str, align 8
  %472 = load i32, i32* %j, align 4
  %idx.ext678 = sext i32 %472 to i64
  %add.ptr679 = getelementptr inbounds i8, i8* %471, i64 %idx.ext678
  %call680 = call i8* @__ckd_salloc__(i8* %add.ptr679, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 691)
  %473 = load i32, i32* %i, align 4
  %idxprom681 = sext i32 %473 to i64
  %474 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %wordstr682 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %474, i32 0, i32 4
  %475 = load i8**, i8*** %wordstr682, align 8
  %arrayidx683 = getelementptr inbounds i8*, i8** %475, i64 %idxprom681
  store i8* %call680, i8** %arrayidx683, align 8
  %476 = load i8*, i8** %tmp_word_str, align 8
  %477 = load i32, i32* %j, align 4
  %idx.ext684 = sext i32 %477 to i64
  %add.ptr685 = getelementptr inbounds i8, i8* %476, i64 %idx.ext684
  %call686 = call i64 @strlen(i8* %add.ptr685) #4
  %add687 = add i64 %call686, 1
  %478 = load i32, i32* %j, align 4
  %conv688 = sext i32 %478 to i64
  %add689 = add i64 %conv688, %add687
  %conv690 = trunc i64 %add689 to i32
  store i32 %conv690, i32* %j, align 4
  br label %for.inc.691

for.inc.691:                                      ; preds = %if.end.677
  %479 = load i32, i32* %i, align 4
  %inc692 = add nsw i32 %479, 1
  store i32 %inc692, i32* %i, align 4
  br label %for.cond.658

for.end.693:                                      ; preds = %for.cond.658
  %480 = load i8*, i8** %tmp_word_str, align 8
  call void @free(i8* %480) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 696, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %481 = load i32, i32* %i, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i32 %481)
  %482 = load i16, i16* %startwid, align 2
  %conv694 = zext i16 %482 to i32
  %cmp695 = icmp ne i32 %conv694, 65535
  br i1 %cmp695, label %if.then.697, label %if.end.702

if.then.697:                                      ; preds = %for.end.693
  %483 = load i16, i16* %startwid, align 2
  %idxprom698 = zext i16 %483 to i64
  %484 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug699 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %484, i32 0, i32 9
  %485 = load %struct.ug_t*, %struct.ug_t** %ug699, align 8
  %arrayidx700 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %485, i64 %idxprom698
  %prob701 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx700, i32 0, i32 1
  %f = bitcast %union.lmlog_t* %prob701 to float*
  store float -9.900000e+01, float* %f, align 4
  %486 = load i16, i16* %startwid, align 2
  %487 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %startlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %487, i32 0, i32 5
  store i16 %486, i16* %startlwid, align 2
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.697, %for.end.693
  %488 = load i16, i16* %endwid, align 2
  %conv703 = zext i16 %488 to i32
  %cmp704 = icmp ne i32 %conv703, 65535
  br i1 %cmp704, label %if.then.706, label %if.end.712

if.then.706:                                      ; preds = %if.end.702
  %489 = load i16, i16* %endwid, align 2
  %idxprom707 = zext i16 %489 to i64
  %490 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug708 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %490, i32 0, i32 9
  %491 = load %struct.ug_t*, %struct.ug_t** %ug708, align 8
  %arrayidx709 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %491, i64 %idxprom707
  %bowt710 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx709, i32 0, i32 2
  %f711 = bitcast %union.lmlog_t* %bowt710 to float*
  store float -9.900000e+01, float* %f711, align 4
  %492 = load i16, i16* %endwid, align 2
  %493 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %finishlwid = getelementptr inbounds %struct.lm_s, %struct.lm_s* %493, i32 0, i32 6
  store i16 %492, i16* %finishlwid, align 2
  br label %if.end.712

if.end.712:                                       ; preds = %if.then.706, %if.end.702
  %494 = load i32, i32* %n_lmclass_used.addr, align 4
  %cmp713 = icmp sgt i32 %494, 0
  br i1 %cmp713, label %if.then.715, label %if.end.717

if.then.715:                                      ; preds = %if.end.712
  %495 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %496 = load double, double* %lw.addr, align 8
  %497 = load double, double* %uw.addr, align 8
  %498 = load double, double* %wip.addr, align 8
  %499 = load i32, i32* %n_lmclass_used.addr, align 4
  %500 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass.addr, align 8
  %call716 = call i32 @lm_build_lmclass_info(%struct.lm_s* %495, double %496, double %497, double %498, i32 %499, %struct.lmclass_s** %500)
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.715, %if.end.712
  %501 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %502 = load double, double* %uw.addr, align 8
  call void @lm2logs3(%struct.lm_s* %501, double %502)
  %503 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %lw718 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %503, i32 0, i32 25
  store float 1.000000e+00, float* %lw718, align 4
  %504 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %wip719 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %504, i32 0, i32 26
  store i32 0, i32* %wip719, align 4
  %505 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %506 = load double, double* %lw.addr, align 8
  %507 = load double, double* %wip.addr, align 8
  call void @lm_set_param(%struct.lm_s* %505, double %506, double %507)
  %508 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  ret %struct.lm_s* %508
}

declare i8* @__ckd_realloc__(i8*, i64, i8*, i32) #2

declare i8* @__ckd_salloc__(i8*, i8*, i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct.lm_s* @lm_read(i8* %file, double %lw, double %wip, double %uw) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %lw.addr = alloca double, align 8
  %wip.addr = alloca double, align 8
  %uw.addr = alloca double, align 8
  %i = alloca i32, align 4
  %u = alloca i32, align 4
  %lm = alloca %struct.lm_s*, align 8
  store i8* %file, i8** %file.addr, align 8
  store double %lw, double* %lw.addr, align 8
  store double %wip, double* %wip.addr, align 8
  store double %uw, double* %uw.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 731, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %lw.addr, align 8
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 733, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %2 = load double, double* %lw.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), double %2)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load double, double* %wip.addr, align 8
  %cmp3 = fcmp ole double %3, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 735, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %4 = load double, double* %wip.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), double %4)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %5 = load double, double* %uw.addr, align 8
  %cmp6 = fcmp olt double %5, 0.000000e+00
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %6 = load double, double* %uw.addr, align 8
  %cmp7 = fcmp ogt double %6, 1.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.5
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 737, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %7 = load double, double* %uw.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), double %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 739, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %8 = load i8*, i8** %file.addr, align 8
  %9 = load double, double* %lw.addr, align 8
  %10 = load double, double* %wip.addr, align 8
  %call = call i32 @logs3(double %10)
  %11 = load double, double* %uw.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i8* %8, double %9, i32 %call, double %11)
  %call10 = call i8* @cmd_ln_access(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %12 = bitcast i8* %call10 to i32*
  %13 = load i32, i32* %12, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  store i32 1, i32* @LM_IN_MEMORY, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.9
  store i32 0, i32* @LM_IN_MEMORY, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load double, double* %lw.addr, align 8
  %16 = load double, double* %wip.addr, align 8
  %17 = load double, double* %uw.addr, align 8
  %call14 = call %struct.lm_s* @lm_read_dump(i8* %14, double %15, double %16, double %17, i32 0, %struct.lmclass_s** null, i32 0)
  store %struct.lm_s* %call14, %struct.lm_s** %lm, align 8
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %18 = load i32, i32* %u, align 4
  %19 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %19, i32 0, i32 0
  %20 = load i32, i32* %n_ug, align 4
  %cmp15 = icmp slt i32 %18, %20
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %u, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %22, i32 0, i32 9
  %23 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %23, i64 %idxprom
  %dictwid = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %dictwid, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %u, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call16 = call i8* @__ckd_calloc__(i64 100003, i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 752)
  %25 = bitcast i8* %call16 to %struct.lm_tgcache_entry_t*
  %26 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgcache = getelementptr inbounds %struct.lm_s, %struct.lm_s* %26, i32 0, i32 27
  store %struct.lm_tgcache_entry_t* %25, %struct.lm_tgcache_entry_t** %tgcache, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %for.end
  %27 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %27, 100003
  br i1 %cmp18, label %for.body.19, label %for.end.26

for.body.19:                                      ; preds = %for.cond.17
  %28 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  %tgcache21 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 27
  %30 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache21, align 8
  %arrayidx22 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %30, i64 %idxprom20
  %lwid = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx22, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid, i32 0, i64 0
  store i16 -1, i16* %arrayidx23, align 2
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.19
  %31 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %31, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  %32 = load %struct.lm_s*, %struct.lm_s** %lm, align 8
  ret %struct.lm_s* %32
}

; Function Attrs: nounwind uwtable
define void @lm_cache_reset(%struct.lm_s* %lm) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %i = alloca i32, align 4
  %n_bgfree = alloca i32, align 4
  %n_tgfree = alloca i32, align 4
  %tginfo = alloca %struct.tginfo_s*, align 8
  %next_tginfo = alloca %struct.tginfo_s*, align 8
  %prev_tginfo = alloca %struct.tginfo_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i32 0, i32* %n_tgfree, align 4
  store i32 0, i32* %n_bgfree, align 4
  %0 = load i32, i32* @LM_IN_MEMORY, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.80

if.end:                                           ; preds = %entry
  %1 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %1, i32 0, i32 1
  %2 = load i32, i32* %n_bg, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %3, i32 0, i32 10
  %4 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %tobool1 = icmp ne %struct.bg_t* %4, null
  br i1 %tobool1, label %if.end.33, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 0
  %7 = load i32, i32* %n_ug, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %9, i32 0, i32 12
  %10 = load %struct.membg_t*, %struct.membg_t** %membg, align 8
  %arrayidx = getelementptr inbounds %struct.membg_t, %struct.membg_t* %10, i64 %idxprom
  %bg4 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx, i32 0, i32 0
  %11 = load %struct.bg_t*, %struct.bg_t** %bg4, align 8
  %tobool5 = icmp ne %struct.bg_t* %11, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.27

land.lhs.true.6:                                  ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg8 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %13, i32 0, i32 12
  %14 = load %struct.membg_t*, %struct.membg_t** %membg8, align 8
  %arrayidx9 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %14, i64 %idxprom7
  %used = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx9, i32 0, i32 1
  %15 = load i32, i32* %used, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.end.27, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.6
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %idxprom12 = sext i32 %add to i64
  %17 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %17, i32 0, i32 9
  %18 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx13 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %18, i64 %idxprom12
  %firstbg = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx13, i32 0, i32 3
  %19 = load i32, i32* %firstbg, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug15 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %21, i32 0, i32 9
  %22 = load %struct.ug_t*, %struct.ug_t** %ug15, align 8
  %arrayidx16 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %22, i64 %idxprom14
  %firstbg17 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx16, i32 0, i32 3
  %23 = load i32, i32* %firstbg17, align 4
  %sub = sub nsw i32 %19, %23
  %24 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_inmem = getelementptr inbounds %struct.lm_s, %struct.lm_s* %24, i32 0, i32 29
  %25 = load i32, i32* %n_bg_inmem, align 4
  %sub18 = sub nsw i32 %25, %sub
  store i32 %sub18, i32* %n_bg_inmem, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg20 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %27, i32 0, i32 12
  %28 = load %struct.membg_t*, %struct.membg_t** %membg20, align 8
  %arrayidx21 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %28, i64 %idxprom19
  %bg22 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx21, i32 0, i32 0
  %29 = load %struct.bg_t*, %struct.bg_t** %bg22, align 8
  %30 = bitcast %struct.bg_t* %29 to i8*
  call void @free(i8* %30) #5
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg24 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %32, i32 0, i32 12
  %33 = load %struct.membg_t*, %struct.membg_t** %membg24, align 8
  %arrayidx25 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %33, i64 %idxprom23
  %bg26 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx25, i32 0, i32 0
  store %struct.bg_t* null, %struct.bg_t** %bg26, align 8
  %34 = load i32, i32* %n_bgfree, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %n_bgfree, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.11, %land.lhs.true.6, %for.body
  %35 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg29 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %36, i32 0, i32 12
  %37 = load %struct.membg_t*, %struct.membg_t** %membg29, align 8
  %arrayidx30 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %37, i64 %idxprom28
  %used31 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx30, i32 0, i32 1
  store i32 0, i32* %used31, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %38 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %land.lhs.true, %if.end
  %39 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %39, i32 0, i32 2
  %40 = load i32, i32* %n_tg, align 4
  %cmp34 = icmp sgt i32 %40, 0
  br i1 %cmp34, label %if.then.35, label %if.end.74

if.then.35:                                       ; preds = %if.end.33
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.71, %if.then.35
  %41 = load i32, i32* %i, align 4
  %42 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug37 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %42, i32 0, i32 0
  %43 = load i32, i32* %n_ug37, align 4
  %cmp38 = icmp slt i32 %41, %43
  br i1 %cmp38, label %for.body.39, label %for.end.73

for.body.39:                                      ; preds = %for.cond.36
  store %struct.tginfo_s* null, %struct.tginfo_s** %prev_tginfo, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo41 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %45, i32 0, i32 13
  %46 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo41, align 8
  %arrayidx42 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %46, i64 %idxprom40
  %47 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx42, align 8
  store %struct.tginfo_s* %47, %struct.tginfo_s** %tginfo, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.69, %for.body.39
  %48 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tobool44 = icmp ne %struct.tginfo_s* %48, null
  br i1 %tobool44, label %for.body.45, label %for.end.70

for.body.45:                                      ; preds = %for.cond.43
  %49 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %49, i32 0, i32 5
  %50 = load %struct.tginfo_s*, %struct.tginfo_s** %next, align 8
  store %struct.tginfo_s* %50, %struct.tginfo_s** %next_tginfo, align 8
  %51 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %used46 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %51, i32 0, i32 4
  %52 = load i32, i32* %used46, align 4
  %tobool47 = icmp ne i32 %52, 0
  br i1 %tobool47, label %if.else.66, label %if.then.48

if.then.48:                                       ; preds = %for.body.45
  %53 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %53, i32 0, i32 11
  %54 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %tobool49 = icmp ne %struct.tg_t* %54, null
  br i1 %tobool49, label %if.end.58, label %land.lhs.true.50

land.lhs.true.50:                                 ; preds = %if.then.48
  %55 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg51 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %55, i32 0, i32 2
  %56 = load %struct.tg_t*, %struct.tg_t** %tg51, align 8
  %tobool52 = icmp ne %struct.tg_t* %56, null
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %land.lhs.true.50
  %57 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %n_tg54 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %57, i32 0, i32 1
  %58 = load i32, i32* %n_tg54, align 4
  %59 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_inmem = getelementptr inbounds %struct.lm_s, %struct.lm_s* %59, i32 0, i32 33
  %60 = load i32, i32* %n_tg_inmem, align 4
  %sub55 = sub nsw i32 %60, %58
  store i32 %sub55, i32* %n_tg_inmem, align 4
  %61 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg56 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %61, i32 0, i32 2
  %62 = load %struct.tg_t*, %struct.tg_t** %tg56, align 8
  %63 = bitcast %struct.tg_t* %62 to i8*
  call void @free(i8* %63) #5
  %64 = load i32, i32* %n_tgfree, align 4
  %inc57 = add nsw i32 %64, 1
  store i32 %inc57, i32* %n_tgfree, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %land.lhs.true.50, %if.then.48
  %65 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %66 = bitcast %struct.tginfo_s* %65 to i8*
  call void @free(i8* %66) #5
  %67 = load %struct.tginfo_s*, %struct.tginfo_s** %prev_tginfo, align 8
  %tobool59 = icmp ne %struct.tginfo_s* %67, null
  br i1 %tobool59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %if.end.58
  %68 = load %struct.tginfo_s*, %struct.tginfo_s** %next_tginfo, align 8
  %69 = load %struct.tginfo_s*, %struct.tginfo_s** %prev_tginfo, align 8
  %next61 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %69, i32 0, i32 5
  store %struct.tginfo_s* %68, %struct.tginfo_s** %next61, align 8
  br label %if.end.65

if.else:                                          ; preds = %if.end.58
  %70 = load %struct.tginfo_s*, %struct.tginfo_s** %next_tginfo, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %71 to i64
  %72 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo63 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %72, i32 0, i32 13
  %73 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo63, align 8
  %arrayidx64 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %73, i64 %idxprom62
  store %struct.tginfo_s* %70, %struct.tginfo_s** %arrayidx64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.60
  br label %if.end.68

if.else.66:                                       ; preds = %for.body.45
  %74 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %used67 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %74, i32 0, i32 4
  store i32 0, i32* %used67, align 4
  %75 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  store %struct.tginfo_s* %75, %struct.tginfo_s** %prev_tginfo, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.end.65
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %76 = load %struct.tginfo_s*, %struct.tginfo_s** %next_tginfo, align 8
  store %struct.tginfo_s* %76, %struct.tginfo_s** %tginfo, align 8
  br label %for.cond.43

for.end.70:                                       ; preds = %for.cond.43
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %77 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %77, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.36

for.end.73:                                       ; preds = %for.cond.36
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %if.end.33
  %78 = load i32, i32* %n_tgfree, align 4
  %cmp75 = icmp sgt i32 %78, 0
  br i1 %cmp75, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.74
  %79 = load i32, i32* %n_bgfree, align 4
  %cmp76 = icmp sgt i32 %79, 0
  br i1 %cmp76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %lor.lhs.false, %if.end.74
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 815, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %80 = load i32, i32* %n_tgfree, align 4
  %81 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_inmem78 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %81, i32 0, i32 33
  %82 = load i32, i32* %n_tg_inmem78, align 4
  %83 = load i32, i32* %n_bgfree, align 4
  %84 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_inmem79 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %84, i32 0, i32 29
  %85 = load i32, i32* %n_bg_inmem79, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0), i32 %80, i32 %82, i32 %83, i32 %85)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then, %if.then.77, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @lm_cache_stats_dump(%struct.lm_s* %lm) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 823, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %0 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_score = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 34
  %1 = load i32, i32* %n_tg_score, align 4
  %2 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgcache_hit = getelementptr inbounds %struct.lm_s, %struct.lm_s* %2, i32 0, i32 36
  %3 = load i32, i32* %n_tgcache_hit, align 4
  %4 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_bo = getelementptr inbounds %struct.lm_s, %struct.lm_s* %4, i32 0, i32 35
  %5 = load i32, i32* %n_tg_bo, align 4
  %6 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_fill = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 32
  %7 = load i32, i32* %n_tg_fill, align 4
  %8 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_inmem = getelementptr inbounds %struct.lm_s, %struct.lm_s* %8, i32 0, i32 33
  %9 = load i32, i32* %n_tg_inmem, align 4
  %10 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_inmem1 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %10, i32 0, i32 33
  %11 = load i32, i32* %n_tg_inmem1, align 4
  %conv = sitofp i32 %11 to double
  %mul = fmul double %conv, 1.000000e+02
  %12 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %12, i32 0, i32 2
  %13 = load i32, i32* %n_tg, align 4
  %add = add nsw i32 %13, 1
  %conv2 = sitofp i32 %add to double
  %div = fdiv double %mul, %conv2
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7, i32 %9, double %div)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 826, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %14 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_score = getelementptr inbounds %struct.lm_s, %struct.lm_s* %14, i32 0, i32 30
  %15 = load i32, i32* %n_bg_score, align 4
  %16 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_bo = getelementptr inbounds %struct.lm_s, %struct.lm_s* %16, i32 0, i32 31
  %17 = load i32, i32* %n_bg_bo, align 4
  %18 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_fill = getelementptr inbounds %struct.lm_s, %struct.lm_s* %18, i32 0, i32 28
  %19 = load i32, i32* %n_bg_fill, align 4
  %20 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_inmem = getelementptr inbounds %struct.lm_s, %struct.lm_s* %20, i32 0, i32 29
  %21 = load i32, i32* %n_bg_inmem, align 4
  %22 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_inmem3 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %22, i32 0, i32 29
  %23 = load i32, i32* %n_bg_inmem3, align 4
  %conv4 = sitofp i32 %23 to double
  %mul5 = fmul double %conv4, 1.000000e+02
  %24 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %24, i32 0, i32 1
  %25 = load i32, i32* %n_bg, align 4
  %add6 = add nsw i32 %25, 1
  %conv7 = sitofp i32 %add6 to double
  %div8 = fdiv double %mul5, %conv7
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i32 0, i32 0), i32 %15, i32 %17, i32 %19, i32 %21, double %div8)
  %26 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgcache_hit9 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %26, i32 0, i32 36
  store i32 0, i32* %n_tgcache_hit9, align 4
  %27 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_fill10 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %27, i32 0, i32 32
  store i32 0, i32* %n_tg_fill10, align 4
  %28 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_score11 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %28, i32 0, i32 34
  store i32 0, i32* %n_tg_score11, align 4
  %29 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_bo12 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 35
  store i32 0, i32* %n_tg_bo12, align 4
  %30 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_fill13 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %30, i32 0, i32 28
  store i32 0, i32* %n_bg_fill13, align 4
  %31 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_score14 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %31, i32 0, i32 30
  store i32 0, i32* %n_bg_score14, align 4
  %32 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_bo15 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %32, i32 0, i32 31
  store i32 0, i32* %n_bg_bo15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lm_ug_score(%struct.lm_s* %lm, i16 zeroext %lwid, i32 %wid) #0 {
entry:
  %retval = alloca i32, align 4
  %lm.addr = alloca %struct.lm_s*, align 8
  %lwid.addr = alloca i16, align 2
  %wid.addr = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %lwid, i16* %lwid.addr, align 2
  store i32 %wid, i32* %wid.addr, align 4
  %0 = load i16, i16* %lwid.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %wid.addr, align 4
  %2 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %2, i32 0, i32 0
  %3 = load i32, i32* %n_ug, align 4
  %cmp2 = icmp sge i32 %1, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 843, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i16, i16* %lwid.addr, align 2
  %conv4 = zext i16 %4 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i32 %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %access_type = getelementptr inbounds %struct.lm_s, %struct.lm_s* %5, i32 0, i32 37
  store i32 1, i32* %access_type, align 4
  %6 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 42
  %7 = load i32*, i32** %inclass_ugscore, align 8
  %tobool = icmp ne i32* %7, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %8 = load i16, i16* %lwid.addr, align 2
  %idxprom = zext i16 %8 to i64
  %9 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %9, i32 0, i32 9
  %10 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %10, i64 %idxprom
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %11 = load i32, i32* %l, align 4
  %12 = load i32, i32* %wid.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore7 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %13, i32 0, i32 42
  %14 = load i32*, i32** %inclass_ugscore7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %15 = load i32, i32* %arrayidx8, align 4
  %add = add nsw i32 %11, %15
  store i32 %add, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %16 = load i16, i16* %lwid.addr, align 2
  %idxprom9 = zext i16 %16 to i64
  %17 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug10 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %17, i32 0, i32 9
  %18 = load %struct.ug_t*, %struct.ug_t** %ug10, align 8
  %arrayidx11 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %18, i64 %idxprom9
  %prob12 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx11, i32 0, i32 1
  %l13 = bitcast %union.lmlog_t* %prob12 to i32*
  %19 = load i32, i32* %l13, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @lm_uglist(%struct.lm_s* %lm, %struct.ug_t** %ugptr) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %ugptr.addr = alloca %struct.ug_t**, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store %struct.ug_t** %ugptr, %struct.ug_t*** %ugptr.addr, align 8
  %0 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 9
  %1 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %2 = load %struct.ug_t**, %struct.ug_t*** %ugptr.addr, align 8
  store %struct.ug_t* %1, %struct.ug_t** %2, align 8
  %3 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %3, i32 0, i32 0
  %4 = load i32, i32* %n_ug, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @lm_ug_wordprob(%struct.lm_s* %lm, %struct.dict_t* %dict, i32 %th, %struct.wordprob_t* %wp) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %th.addr = alloca i32, align 4
  %wp.addr = alloca %struct.wordprob_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %w = alloca i32, align 4
  %dictid = alloca i32, align 4
  %lmclass = alloca %struct.lmclass_s*, align 8
  %lm_cw = alloca %struct.lmclass_word_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store i32 %th, i32* %th.addr, align 4
  store %struct.wordprob_t* %wp, %struct.wordprob_t** %wp.addr, align 8
  %0 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 0
  %1 = load i32, i32* %n_ug, align 4
  store i32 %1, i32* %n, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %5, i32 0, i32 9
  %6 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %6, i64 %idxprom
  %dictwid = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %dictwid, align 4
  store i32 %7, i32* %w, align 4
  %8 = load i32, i32* %w, align 4
  %cmp1 = icmp sge i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.end.51

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %w, align 4
  %cmp2 = icmp slt i32 %9, 16777216
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug5 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 9
  %12 = load %struct.ug_t*, %struct.ug_t** %ug5, align 8
  %arrayidx6 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %12, i64 %idxprom4
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx6, i32 0, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %13 = load i32, i32* %l, align 4
  store i32 %13, i32* %p, align 4
  %14 = load i32, i32* %th.addr, align 4
  %cmp7 = icmp sge i32 %13, %14
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.3
  %15 = load i32, i32* %w, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %17, i64 %idxprom9
  %wid = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx10, i32 0, i32 0
  store i32 %15, i32* %wid, align 4
  %18 = load i32, i32* %p, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %20, i64 %idxprom11
  %prob13 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx12, i32 0, i32 1
  store i32 %18, i32* %prob13, align 4
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.3
  br label %if.end.50

if.else:                                          ; preds = %if.then
  %22 = load i32, i32* %w, align 4
  %sub = sub nsw i32 %22, 16777216
  %idxprom14 = sext i32 %sub to i64
  %23 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass15 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %23, i32 0, i32 40
  %24 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass15, align 8
  %arrayidx16 = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %24, i64 %idxprom14
  %25 = load %struct.lmclass_s*, %struct.lmclass_s** %arrayidx16, align 8
  store %struct.lmclass_s* %25, %struct.lmclass_s** %lmclass, align 8
  %26 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %wordlist = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %26, i32 0, i32 1
  %27 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %wordlist, align 8
  store %struct.lmclass_word_s* %27, %struct.lmclass_word_s** %lm_cw, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.else
  %28 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lm_cw, align 8
  %cmp17 = icmp ne %struct.lmclass_word_s* %28, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lm_cw, align 8
  %dictwid18 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %29, i32 0, i32 1
  %30 = load i32, i32* %dictwid18, align 4
  store i32 %30, i32* %dictid, align 4
  %31 = load i32, i32* %dictid, align 4
  %32 = load i32, i32* %dictid, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %33, i32 0, i32 4
  %34 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx20 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %34, i64 %idxprom19
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx20, i32 0, i32 4
  %35 = load i32, i32* %basewid, align 4
  %cmp21 = icmp ne i32 %31, %35
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %while.body
  %36 = load i32, i32* %dictid, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word24 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %37, i32 0, i32 4
  %38 = load %struct.dictword_t*, %struct.dictword_t** %word24, align 8
  %arrayidx25 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %38, i64 %idxprom23
  %basewid26 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx25, i32 0, i32 4
  %39 = load i32, i32* %basewid26, align 4
  store i32 %39, i32* %dictid, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %while.body
  %40 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug29 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %41, i32 0, i32 9
  %42 = load %struct.ug_t*, %struct.ug_t** %ug29, align 8
  %arrayidx30 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %42, i64 %idxprom28
  %prob31 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx30, i32 0, i32 1
  %l32 = bitcast %union.lmlog_t* %prob31 to i32*
  %43 = load i32, i32* %l32, align 4
  %44 = load i32, i32* %dictid, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore = getelementptr inbounds %struct.lm_s, %struct.lm_s* %45, i32 0, i32 42
  %46 = load i32*, i32** %inclass_ugscore, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %46, i64 %idxprom33
  %47 = load i32, i32* %arrayidx34, align 4
  %add = add nsw i32 %43, %47
  store i32 %add, i32* %p, align 4
  %48 = load i32, i32* %th.addr, align 4
  %cmp35 = icmp sge i32 %add, %48
  br i1 %cmp35, label %if.then.36, label %if.end.49

if.then.36:                                       ; preds = %if.end.27
  %49 = load i32, i32* %dictid, align 4
  %50 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %51, i64 %idxprom37
  %wid39 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx38, i32 0, i32 0
  store i32 %49, i32* %wid39, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug41 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %53, i32 0, i32 9
  %54 = load %struct.ug_t*, %struct.ug_t** %ug41, align 8
  %arrayidx42 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %54, i64 %idxprom40
  %prob43 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx42, i32 0, i32 1
  %l44 = bitcast %union.lmlog_t* %prob43 to i32*
  %55 = load i32, i32* %l44, align 4
  %56 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %56 to i64
  %57 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %57, i64 %idxprom45
  %prob47 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx46, i32 0, i32 1
  store i32 %55, i32* %prob47, align 4
  %58 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %58, 1
  store i32 %inc48, i32* %j, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.36, %if.end.27
  %59 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lm_cw, align 8
  %next = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %59, i32 0, i32 3
  %60 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %next, align 8
  store %struct.lmclass_word_s* %60, %struct.lmclass_word_s** %lm_cw, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.50

if.end.50:                                        ; preds = %while.end, %if.end
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %61 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %61, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %j, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @lm_bglist(%struct.lm_s* %lm, i16 zeroext %w1, %struct.bg_t** %bgptr, i32* %bowt) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %w1.addr = alloca i16, align 2
  %bgptr.addr = alloca %struct.bg_t**, align 8
  %bowt.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %w1, i16* %w1.addr, align 2
  store %struct.bg_t** %bgptr, %struct.bg_t*** %bgptr.addr, align 8
  store i32* %bowt, i32** %bowt.addr, align 8
  %0 = load i16, i16* %w1.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* %w1.addr, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %2, i32 0, i32 0
  %3 = load i32, i32* %n_ug, align 4
  %cmp3 = icmp sge i32 %conv2, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 972, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %4 = load i16, i16* %w1.addr, align 2
  %conv5 = zext i16 %4 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0), i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %5, i32 0, i32 1
  %6 = load i32, i32* %n_bg, align 4
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load i16, i16* %w1.addr, align 2
  %conv8 = zext i16 %7 to i32
  %add = add nsw i32 %conv8, 1
  %idxprom = sext i32 %add to i64
  %8 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %8, i32 0, i32 9
  %9 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %9, i64 %idxprom
  %firstbg = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 3
  %10 = load i32, i32* %firstbg, align 4
  %11 = load i16, i16* %w1.addr, align 2
  %idxprom9 = zext i16 %11 to i64
  %12 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug10 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %12, i32 0, i32 9
  %13 = load %struct.ug_t*, %struct.ug_t** %ug10, align 8
  %arrayidx11 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %13, i64 %idxprom9
  %firstbg12 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx11, i32 0, i32 3
  %14 = load i32, i32* %firstbg12, align 4
  %sub = sub nsw i32 %10, %14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %15 = load i32, i32* %n, align 4
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %cond.end
  %16 = load i16, i16* %w1.addr, align 2
  %idxprom16 = zext i16 %16 to i64
  %17 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %17, i32 0, i32 12
  %18 = load %struct.membg_t*, %struct.membg_t** %membg, align 8
  %arrayidx17 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %18, i64 %idxprom16
  %bg = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx17, i32 0, i32 0
  %19 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %tobool = icmp ne %struct.bg_t* %19, null
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  %20 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %21 = load i16, i16* %w1.addr, align 2
  call void @load_bg(%struct.lm_s* %20, i16 zeroext %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  %22 = load i16, i16* %w1.addr, align 2
  %idxprom20 = zext i16 %22 to i64
  %23 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg21 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %23, i32 0, i32 12
  %24 = load %struct.membg_t*, %struct.membg_t** %membg21, align 8
  %arrayidx22 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %24, i64 %idxprom20
  %used = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx22, i32 0, i32 1
  store i32 1, i32* %used, align 4
  %25 = load i16, i16* %w1.addr, align 2
  %idxprom23 = zext i16 %25 to i64
  %26 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg24 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %26, i32 0, i32 12
  %27 = load %struct.membg_t*, %struct.membg_t** %membg24, align 8
  %arrayidx25 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %27, i64 %idxprom23
  %bg26 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx25, i32 0, i32 0
  %28 = load %struct.bg_t*, %struct.bg_t** %bg26, align 8
  %29 = load %struct.bg_t**, %struct.bg_t*** %bgptr.addr, align 8
  store %struct.bg_t* %28, %struct.bg_t** %29, align 8
  %30 = load i16, i16* %w1.addr, align 2
  %idxprom27 = zext i16 %30 to i64
  %31 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug28 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %31, i32 0, i32 9
  %32 = load %struct.ug_t*, %struct.ug_t** %ug28, align 8
  %arrayidx29 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %32, i64 %idxprom27
  %bowt30 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx29, i32 0, i32 2
  %l = bitcast %union.lmlog_t* %bowt30 to i32*
  %33 = load i32, i32* %l, align 4
  %34 = load i32*, i32** %bowt.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end.31

if.else:                                          ; preds = %cond.end
  %35 = load %struct.bg_t**, %struct.bg_t*** %bgptr.addr, align 8
  store %struct.bg_t* null, %struct.bg_t** %35, align 8
  %36 = load i32*, i32** %bowt.addr, align 8
  store i32 0, i32* %36, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end.19
  %37 = load i32, i32* %n, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @load_bg(%struct.lm_s* %lm, i16 zeroext %lw1) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw1.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca i32, align 4
  %bg = alloca %struct.bg_t*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %lw1, i16* %lw1.addr, align 2
  %0 = load i16, i16* %lw1.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %1, i32 0, i32 9
  %2 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %2, i64 %idxprom
  %firstbg = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 3
  %3 = load i32, i32* %firstbg, align 4
  store i32 %3, i32* %b, align 4
  %4 = load i16, i16* %lw1.addr, align 2
  %conv = zext i16 %4 to i32
  %add = add nsw i32 %conv, 1
  %idxprom1 = sext i32 %add to i64
  %5 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug2 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %5, i32 0, i32 9
  %6 = load %struct.ug_t*, %struct.ug_t** %ug2, align 8
  %arrayidx3 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %6, i64 %idxprom1
  %firstbg4 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx3, i32 0, i32 3
  %7 = load i32, i32* %firstbg4, align 4
  %8 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %7, %8
  store i32 %sub, i32* %n, align 4
  %9 = load i32, i32* @LM_IN_MEMORY, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %b, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bg6 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 10
  %12 = load %struct.bg_t*, %struct.bg_t** %bg6, align 8
  %arrayidx7 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %12, i64 %idxprom5
  %13 = load i16, i16* %lw1.addr, align 2
  %idxprom8 = zext i16 %13 to i64
  %14 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %14, i32 0, i32 12
  %15 = load %struct.membg_t*, %struct.membg_t** %membg, align 8
  %arrayidx9 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %15, i64 %idxprom8
  %bg10 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx9, i32 0, i32 0
  store %struct.bg_t* %arrayidx7, %struct.bg_t** %bg10, align 8
  store %struct.bg_t* %arrayidx7, %struct.bg_t** %bg, align 8
  br label %if.end.98

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %n, align 4
  %add11 = add nsw i32 %16, 1
  %conv12 = sext i32 %add11 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv12, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 919)
  %17 = bitcast i8* %call to %struct.bg_t*
  %18 = load i16, i16* %lw1.addr, align 2
  %idxprom13 = zext i16 %18 to i64
  %19 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg14 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %19, i32 0, i32 12
  %20 = load %struct.membg_t*, %struct.membg_t** %membg14, align 8
  %arrayidx15 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %20, i64 %idxprom13
  %bg16 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx15, i32 0, i32 0
  store %struct.bg_t* %17, %struct.bg_t** %bg16, align 8
  store %struct.bg_t* %17, %struct.bg_t** %bg, align 8
  %21 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %fp = getelementptr inbounds %struct.lm_s, %struct.lm_s* %21, i32 0, i32 21
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %23 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgoff = getelementptr inbounds %struct.lm_s, %struct.lm_s* %23, i32 0, i32 23
  %24 = load i32, i32* %bgoff, align 4
  %conv17 = sext i32 %24 to i64
  %25 = load i32, i32* %b, align 4
  %conv18 = sext i32 %25 to i64
  %mul = mul i64 %conv18, 8
  %add19 = add i64 %conv17, %mul
  %call20 = call i32 @fseek(%struct._IO_FILE* %22, i64 %add19, i32 0)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 922, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0))
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else
  %26 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %27 = bitcast %struct.bg_t* %26 to i8*
  %28 = load i32, i32* %n, align 4
  %add23 = add nsw i32 %28, 1
  %conv24 = sext i32 %add23 to i64
  %29 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %fp25 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp25, align 8
  %call26 = call i64 @fread(i8* %27, i64 8, i64 %conv24, %struct._IO_FILE* %30)
  %31 = load i32, i32* %n, align 4
  %add27 = add nsw i32 %31, 1
  %conv28 = sext i32 %add27 to i64
  %cmp29 = icmp ne i64 %call26, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 926, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  %32 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %byteswap = getelementptr inbounds %struct.lm_s, %struct.lm_s* %32, i32 0, i32 22
  %33 = load i32, i32* %byteswap, align 4
  %tobool33 = icmp ne i32 %33, 0
  br i1 %tobool33, label %if.then.34, label %if.end.97

if.then.34:                                       ; preds = %if.end.32
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.34
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %n, align 4
  %cmp35 = icmp sle i32 %34, %35
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %36 to i64
  %37 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx38 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %37, i64 %idxprom37
  %wid = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx38, i32 0, i32 0
  %38 = load i16, i16* %wid, align 2
  %conv39 = zext i16 %38 to i32
  %shr = ashr i32 %conv39, 8
  %and = and i32 255, %shr
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx41 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %40, i64 %idxprom40
  %wid42 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx41, i32 0, i32 0
  %41 = load i16, i16* %wid42, align 2
  %conv43 = zext i16 %41 to i32
  %shl = shl i32 %conv43, 8
  %and44 = and i32 65280, %shl
  %or = or i32 %and, %and44
  %conv45 = trunc i32 %or to i16
  %42 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %42 to i64
  %43 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx47 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %43, i64 %idxprom46
  %wid48 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx47, i32 0, i32 0
  store i16 %conv45, i16* %wid48, align 2
  %44 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %44 to i64
  %45 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx50 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %45, i64 %idxprom49
  %probid = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx50, i32 0, i32 1
  %46 = load i16, i16* %probid, align 2
  %conv51 = zext i16 %46 to i32
  %shr52 = ashr i32 %conv51, 8
  %and53 = and i32 255, %shr52
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx55 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %48, i64 %idxprom54
  %probid56 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx55, i32 0, i32 1
  %49 = load i16, i16* %probid56, align 2
  %conv57 = zext i16 %49 to i32
  %shl58 = shl i32 %conv57, 8
  %and59 = and i32 65280, %shl58
  %or60 = or i32 %and53, %and59
  %conv61 = trunc i32 %or60 to i16
  %50 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %50 to i64
  %51 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx63 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %51, i64 %idxprom62
  %probid64 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx63, i32 0, i32 1
  store i16 %conv61, i16* %probid64, align 2
  %52 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %52 to i64
  %53 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx66 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %53, i64 %idxprom65
  %bowtid = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx66, i32 0, i32 2
  %54 = load i16, i16* %bowtid, align 2
  %conv67 = zext i16 %54 to i32
  %shr68 = ashr i32 %conv67, 8
  %and69 = and i32 255, %shr68
  %55 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %55 to i64
  %56 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx71 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %56, i64 %idxprom70
  %bowtid72 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx71, i32 0, i32 2
  %57 = load i16, i16* %bowtid72, align 2
  %conv73 = zext i16 %57 to i32
  %shl74 = shl i32 %conv73, 8
  %and75 = and i32 65280, %shl74
  %or76 = or i32 %and69, %and75
  %conv77 = trunc i32 %or76 to i16
  %58 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %58 to i64
  %59 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx79 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %59, i64 %idxprom78
  %bowtid80 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx79, i32 0, i32 2
  store i16 %conv77, i16* %bowtid80, align 2
  %60 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %60 to i64
  %61 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx82 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %61, i64 %idxprom81
  %firsttg = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx82, i32 0, i32 3
  %62 = load i16, i16* %firsttg, align 2
  %conv83 = zext i16 %62 to i32
  %shr84 = ashr i32 %conv83, 8
  %and85 = and i32 255, %shr84
  %63 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %63 to i64
  %64 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx87 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %64, i64 %idxprom86
  %firsttg88 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx87, i32 0, i32 3
  %65 = load i16, i16* %firsttg88, align 2
  %conv89 = zext i16 %65 to i32
  %shl90 = shl i32 %conv89, 8
  %and91 = and i32 65280, %shl90
  %or92 = or i32 %and85, %and91
  %conv93 = trunc i32 %or92 to i16
  %66 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %66 to i64
  %67 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx95 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %67, i64 %idxprom94
  %firsttg96 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx95, i32 0, i32 3
  store i16 %conv93, i16* %firsttg96, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.97

if.end.97:                                        ; preds = %for.end, %if.end.32
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then
  %69 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_fill = getelementptr inbounds %struct.lm_s, %struct.lm_s* %69, i32 0, i32 28
  %70 = load i32, i32* %n_bg_fill, align 4
  %inc99 = add nsw i32 %70, 1
  store i32 %inc99, i32* %n_bg_fill, align 4
  %71 = load i32, i32* %n, align 4
  %72 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_inmem = getelementptr inbounds %struct.lm_s, %struct.lm_s* %72, i32 0, i32 29
  %73 = load i32, i32* %n_bg_inmem, align 4
  %add100 = add nsw i32 %73, %71
  store i32 %add100, i32* %n_bg_inmem, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lm_bg_score(%struct.lm_s* %lm, i16 zeroext %lw1, i16 zeroext %lw2, i32 %w2) #0 {
entry:
  %retval = alloca i32, align 4
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw1.addr = alloca i16, align 2
  %lw2.addr = alloca i16, align 2
  %w2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %score = alloca i32, align 4
  %bg = alloca %struct.bg_t*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %lw1, i16* %lw1.addr, align 2
  store i16 %lw2, i16* %lw2.addr, align 2
  store i32 %w2, i32* %w2.addr, align 4
  store %struct.bg_t* null, %struct.bg_t** %bg, align 8
  %0 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 1
  %1 = load i32, i32* %n_bg, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i16, i16* %lw1.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp1 = icmp eq i32 %conv, 65535
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %4 = load i16, i16* %lw2.addr, align 2
  %5 = load i32, i32* %w2.addr, align 4
  %call = call i32 @lm_ug_score(%struct.lm_s* %3, i16 zeroext %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_score = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 30
  %7 = load i32, i32* %n_bg_score, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %n_bg_score, align 4
  %8 = load i16, i16* %lw2.addr, align 2
  %conv3 = zext i16 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 65535
  br i1 %cmp4, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end
  %9 = load i16, i16* %lw2.addr, align 2
  %conv7 = zext i16 %9 to i32
  %10 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %10, i32 0, i32 0
  %11 = load i32, i32* %n_ug, align 4
  %cmp8 = icmp sge i32 %conv7, %11
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false.6, %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1038, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %12 = load i16, i16* %lw2.addr, align 2
  %conv11 = zext i16 %12 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), i32 %conv11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %lor.lhs.false.6
  %13 = load i16, i16* %lw1.addr, align 2
  %conv13 = zext i16 %13 to i32
  %add = add nsw i32 %conv13, 1
  %idxprom = sext i32 %add to i64
  %14 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %14, i32 0, i32 9
  %15 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %15, i64 %idxprom
  %firstbg = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 3
  %16 = load i32, i32* %firstbg, align 4
  %17 = load i16, i16* %lw1.addr, align 2
  %idxprom14 = zext i16 %17 to i64
  %18 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug15 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %18, i32 0, i32 9
  %19 = load %struct.ug_t*, %struct.ug_t** %ug15, align 8
  %arrayidx16 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %19, i64 %idxprom14
  %firstbg17 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx16, i32 0, i32 3
  %20 = load i32, i32* %firstbg17, align 4
  %sub = sub nsw i32 %16, %20
  store i32 %sub, i32* %n, align 4
  %21 = load i32, i32* %n, align 4
  %cmp18 = icmp sgt i32 %21, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.12
  %22 = load i16, i16* %lw1.addr, align 2
  %idxprom21 = zext i16 %22 to i64
  %23 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %23, i32 0, i32 12
  %24 = load %struct.membg_t*, %struct.membg_t** %membg, align 8
  %arrayidx22 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %24, i64 %idxprom21
  %bg23 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx22, i32 0, i32 0
  %25 = load %struct.bg_t*, %struct.bg_t** %bg23, align 8
  %tobool = icmp ne %struct.bg_t* %25, null
  br i1 %tobool, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.20
  %26 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %27 = load i16, i16* %lw1.addr, align 2
  call void @load_bg(%struct.lm_s* %26, i16 zeroext %27)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.20
  %28 = load i16, i16* %lw1.addr, align 2
  %idxprom26 = zext i16 %28 to i64
  %29 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg27 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 12
  %30 = load %struct.membg_t*, %struct.membg_t** %membg27, align 8
  %arrayidx28 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %30, i64 %idxprom26
  %used = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx28, i32 0, i32 1
  store i32 1, i32* %used, align 4
  %31 = load i16, i16* %lw1.addr, align 2
  %idxprom29 = zext i16 %31 to i64
  %32 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg30 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %32, i32 0, i32 12
  %33 = load %struct.membg_t*, %struct.membg_t** %membg30, align 8
  %arrayidx31 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %33, i64 %idxprom29
  %bg32 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx31, i32 0, i32 0
  %34 = load %struct.bg_t*, %struct.bg_t** %bg32, align 8
  store %struct.bg_t* %34, %struct.bg_t** %bg, align 8
  %35 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %36 = load i32, i32* %n, align 4
  %37 = load i16, i16* %lw2.addr, align 2
  %call33 = call i32 @find_bg(%struct.bg_t* %35, i32 %36, i16 zeroext %37)
  store i32 %call33, i32* %i, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end.12
  store i32 -1, i32* %i, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end.25
  %38 = load i32, i32* %i, align 4
  %cmp35 = icmp sge i32 %38, 0
  br i1 %cmp35, label %if.then.37, label %if.else.49

if.then.37:                                       ; preds = %if.end.34
  %39 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %39 to i64
  %40 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx39 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %40, i64 %idxprom38
  %probid = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx39, i32 0, i32 1
  %41 = load i16, i16* %probid, align 2
  %idxprom40 = zext i16 %41 to i64
  %42 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %42, i32 0, i32 14
  %43 = load %union.lmlog_t*, %union.lmlog_t** %bgprob, align 8
  %arrayidx41 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %43, i64 %idxprom40
  %l = bitcast %union.lmlog_t* %arrayidx41 to i32*
  %44 = load i32, i32* %l, align 4
  store i32 %44, i32* %score, align 4
  %45 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore = getelementptr inbounds %struct.lm_s, %struct.lm_s* %45, i32 0, i32 42
  %46 = load i32*, i32** %inclass_ugscore, align 8
  %tobool42 = icmp ne i32* %46, null
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.then.37
  %47 = load i32, i32* %w2.addr, align 4
  %idxprom44 = sext i32 %47 to i64
  %48 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore45 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %48, i32 0, i32 42
  %49 = load i32*, i32** %inclass_ugscore45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %49, i64 %idxprom44
  %50 = load i32, i32* %arrayidx46, align 4
  %51 = load i32, i32* %score, align 4
  %add47 = add nsw i32 %51, %50
  store i32 %add47, i32* %score, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.then.37
  %52 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %access_type = getelementptr inbounds %struct.lm_s, %struct.lm_s* %52, i32 0, i32 37
  store i32 2, i32* %access_type, align 4
  br label %if.end.61

if.else.49:                                       ; preds = %if.end.34
  %53 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bg_bo = getelementptr inbounds %struct.lm_s, %struct.lm_s* %53, i32 0, i32 31
  %54 = load i32, i32* %n_bg_bo, align 4
  %inc50 = add nsw i32 %54, 1
  store i32 %inc50, i32* %n_bg_bo, align 4
  %55 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %access_type51 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %55, i32 0, i32 37
  store i32 1, i32* %access_type51, align 4
  %56 = load i16, i16* %lw1.addr, align 2
  %idxprom52 = zext i16 %56 to i64
  %57 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug53 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %57, i32 0, i32 9
  %58 = load %struct.ug_t*, %struct.ug_t** %ug53, align 8
  %arrayidx54 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %58, i64 %idxprom52
  %bowt = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx54, i32 0, i32 2
  %l55 = bitcast %union.lmlog_t* %bowt to i32*
  %59 = load i32, i32* %l55, align 4
  %60 = load i16, i16* %lw2.addr, align 2
  %idxprom56 = zext i16 %60 to i64
  %61 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug57 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %61, i32 0, i32 9
  %62 = load %struct.ug_t*, %struct.ug_t** %ug57, align 8
  %arrayidx58 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %62, i64 %idxprom56
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx58, i32 0, i32 1
  %l59 = bitcast %union.lmlog_t* %prob to i32*
  %63 = load i32, i32* %l59, align 4
  %add60 = add nsw i32 %59, %63
  store i32 %add60, i32* %score, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.49, %if.end.48
  %64 = load i32, i32* %score, align 4
  store i32 %64, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @find_bg(%struct.bg_t* %bg, i32 %n, i16 zeroext %w) #0 {
entry:
  %retval = alloca i32, align 4
  %bg.addr = alloca %struct.bg_t*, align 8
  %n.addr = alloca i32, align 4
  %w.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  store %struct.bg_t* %bg, %struct.bg_t** %bg.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i16 %w, i16* %w.addr, align 2
  store i32 0, i32* %b, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %e, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %1 = load i32, i32* %e, align 4
  %2 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sgt i32 %sub, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %b, align 4
  %4 = load i32, i32* %e, align 4
  %add = add nsw i32 %3, %4
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.bg_t*, %struct.bg_t** %bg.addr, align 8
  %arrayidx = getelementptr inbounds %struct.bg_t, %struct.bg_t* %6, i64 %idxprom
  %wid = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx, i32 0, i32 0
  %7 = load i16, i16* %wid, align 2
  %conv = zext i16 %7 to i32
  %8 = load i16, i16* %w.addr, align 2
  %conv1 = zext i16 %8 to i32
  %cmp2 = icmp slt i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %9, 1
  store i32 %add4, i32* %b, align 4
  br label %if.end.14

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.bg_t*, %struct.bg_t** %bg.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %11, i64 %idxprom5
  %wid7 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx6, i32 0, i32 0
  %12 = load i16, i16* %wid7, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load i16, i16* %w.addr, align 2
  %conv9 = zext i16 %13 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %e, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %b, align 4
  store i32 %16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %e, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.bg_t*, %struct.bg_t** %bg.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %20, i64 %idxprom17
  %wid19 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx18, i32 0, i32 0
  %21 = load i16, i16* %wid19, align 2
  %conv20 = zext i16 %21 to i32
  %22 = load i16, i16* %w.addr, align 2
  %conv21 = zext i16 %22 to i32
  %cmp22 = icmp ne i32 %conv20, %conv21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %e, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.13
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @lm_tglist(%struct.lm_s* %lm, i16 zeroext %lw1, i16 zeroext %lw2, %struct.tg_t** %tgptr, i32* %bowt) #0 {
entry:
  %retval = alloca i32, align 4
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw1.addr = alloca i16, align 2
  %lw2.addr = alloca i16, align 2
  %tgptr.addr = alloca %struct.tg_t**, align 8
  %bowt.addr = alloca i32*, align 8
  %tginfo = alloca %struct.tginfo_s*, align 8
  %prev_tginfo = alloca %struct.tginfo_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %lw1, i16* %lw1.addr, align 2
  store i16 %lw2, i16* %lw2.addr, align 2
  store %struct.tg_t** %tgptr, %struct.tg_t*** %tgptr.addr, align 8
  store i32* %bowt, i32** %bowt.addr, align 8
  %0 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 2
  %1 = load i32, i32* %n_tg, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tg_t**, %struct.tg_t*** %tgptr.addr, align 8
  store %struct.tg_t* null, %struct.tg_t** %2, align 8
  %3 = load i32*, i32** %bowt.addr, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i16, i16* %lw1.addr, align 2
  %conv = zext i16 %4 to i32
  %cmp1 = icmp eq i32 %conv, 65535
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i16, i16* %lw1.addr, align 2
  %conv3 = zext i16 %5 to i32
  %6 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %6, i32 0, i32 0
  %7 = load i32, i32* %n_ug, align 4
  %cmp4 = icmp sge i32 %conv3, %7
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %8 = load i16, i16* %lw1.addr, align 2
  %conv7 = zext i16 %8 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0), i32 %conv7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %lor.lhs.false
  %9 = load i16, i16* %lw2.addr, align 2
  %conv9 = zext i16 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 65535
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.8
  %10 = load i16, i16* %lw2.addr, align 2
  %conv13 = zext i16 %10 to i32
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug14 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 0
  %12 = load i32, i32* %n_ug14, align 4
  %cmp15 = icmp sge i32 %conv13, %12
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false.12, %if.end.8
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %13 = load i16, i16* %lw2.addr, align 2
  %conv18 = zext i16 %13 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i32 %conv18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %lor.lhs.false.12
  store %struct.tginfo_s* null, %struct.tginfo_s** %prev_tginfo, align 8
  %14 = load i16, i16* %lw2.addr, align 2
  %idxprom = zext i16 %14 to i64
  %15 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo20 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %15, i32 0, i32 13
  %16 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo20, align 8
  %arrayidx = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %16, i64 %idxprom
  %17 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx, align 8
  store %struct.tginfo_s* %17, %struct.tginfo_s** %tginfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %18 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tobool = icmp ne %struct.tginfo_s* %18, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %w1 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %19, i32 0, i32 0
  %20 = load i16, i16* %w1, align 2
  %conv21 = zext i16 %20 to i32
  %21 = load i16, i16* %lw1.addr, align 2
  %conv22 = zext i16 %21 to i32
  %cmp23 = icmp eq i32 %conv21, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  br label %for.end

if.end.26:                                        ; preds = %for.body
  %22 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  store %struct.tginfo_s* %22, %struct.tginfo_s** %prev_tginfo, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %23 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %23, i32 0, i32 5
  %24 = load %struct.tginfo_s*, %struct.tginfo_s** %next, align 8
  store %struct.tginfo_s* %24, %struct.tginfo_s** %tginfo, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %25 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tobool27 = icmp ne %struct.tginfo_s* %25, null
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %for.end
  %26 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %27 = load i16, i16* %lw1.addr, align 2
  %28 = load i16, i16* %lw2.addr, align 2
  call void @load_tg(%struct.lm_s* %26, i16 zeroext %27, i16 zeroext %28)
  %29 = load i16, i16* %lw2.addr, align 2
  %idxprom29 = zext i16 %29 to i64
  %30 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo30 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %30, i32 0, i32 13
  %31 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo30, align 8
  %arrayidx31 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %31, i64 %idxprom29
  %32 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx31, align 8
  store %struct.tginfo_s* %32, %struct.tginfo_s** %tginfo, align 8
  br label %if.end.44

if.else:                                          ; preds = %for.end
  %33 = load %struct.tginfo_s*, %struct.tginfo_s** %prev_tginfo, align 8
  %tobool32 = icmp ne %struct.tginfo_s* %33, null
  br i1 %tobool32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.else
  %34 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next34 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %34, i32 0, i32 5
  %35 = load %struct.tginfo_s*, %struct.tginfo_s** %next34, align 8
  %36 = load %struct.tginfo_s*, %struct.tginfo_s** %prev_tginfo, align 8
  %next35 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %36, i32 0, i32 5
  store %struct.tginfo_s* %35, %struct.tginfo_s** %next35, align 8
  %37 = load i16, i16* %lw2.addr, align 2
  %idxprom36 = zext i16 %37 to i64
  %38 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo37 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %38, i32 0, i32 13
  %39 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo37, align 8
  %arrayidx38 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %39, i64 %idxprom36
  %40 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx38, align 8
  %41 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next39 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %41, i32 0, i32 5
  store %struct.tginfo_s* %40, %struct.tginfo_s** %next39, align 8
  %42 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %43 = load i16, i16* %lw2.addr, align 2
  %idxprom40 = zext i16 %43 to i64
  %44 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo41 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %44, i32 0, i32 13
  %45 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo41, align 8
  %arrayidx42 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %45, i64 %idxprom40
  store %struct.tginfo_s* %42, %struct.tginfo_s** %arrayidx42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.33, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.28
  %46 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %used = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %46, i32 0, i32 4
  store i32 1, i32* %used, align 4
  %47 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %47, i32 0, i32 2
  %48 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %49 = load %struct.tg_t**, %struct.tg_t*** %tgptr.addr, align 8
  store %struct.tg_t* %48, %struct.tg_t** %49, align 8
  %50 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %bowt45 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %50, i32 0, i32 3
  %51 = load i32, i32* %bowt45, align 4
  %52 = load i32*, i32** %bowt.addr, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %n_tg46 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %53, i32 0, i32 1
  %54 = load i32, i32* %n_tg46, align 4
  store i32 %54, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @load_tg(%struct.lm_s* %lm, i16 zeroext %lw1, i16 zeroext %lw2) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw1.addr = alloca i16, align 2
  %lw2.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %bg = alloca %struct.bg_t*, align 8
  %tg = alloca %struct.tg_t*, align 8
  %tginfo = alloca %struct.tginfo_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %lw1, i16* %lw1.addr, align 2
  store i16 %lw2, i16* %lw2.addr, align 2
  store i32 -1, i32* %t, align 4
  %call = call i8* @__ckd_malloc__(i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1087)
  %0 = bitcast i8* %call to %struct.tginfo_s*
  store %struct.tginfo_s* %0, %struct.tginfo_s** %tginfo, align 8
  %1 = load i16, i16* %lw1.addr, align 2
  %2 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %w1 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %2, i32 0, i32 0
  store i16 %1, i16* %w1, align 2
  %3 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg1 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %3, i32 0, i32 2
  store %struct.tg_t* null, %struct.tg_t** %tg1, align 8
  %4 = load i16, i16* %lw2.addr, align 2
  %idxprom = zext i16 %4 to i64
  %5 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo2 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %5, i32 0, i32 13
  %6 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo2, align 8
  %arrayidx = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %6, i64 %idxprom
  %7 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx, align 8
  %8 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %8, i32 0, i32 5
  store %struct.tginfo_s* %7, %struct.tginfo_s** %next, align 8
  %9 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %10 = load i16, i16* %lw2.addr, align 2
  %idxprom3 = zext i16 %10 to i64
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo4 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 13
  %12 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo4, align 8
  %arrayidx5 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %12, i64 %idxprom3
  store %struct.tginfo_s* %9, %struct.tginfo_s** %arrayidx5, align 8
  %13 = load i16, i16* %lw1.addr, align 2
  %idxprom6 = zext i16 %13 to i64
  %14 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %14, i32 0, i32 9
  %15 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx7 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %15, i64 %idxprom6
  %firstbg = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx7, i32 0, i32 3
  %16 = load i32, i32* %firstbg, align 4
  store i32 %16, i32* %b, align 4
  %17 = load i16, i16* %lw1.addr, align 2
  %conv = zext i16 %17 to i32
  %add = add nsw i32 %conv, 1
  %idxprom8 = sext i32 %add to i64
  %18 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug9 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %18, i32 0, i32 9
  %19 = load %struct.ug_t*, %struct.ug_t** %ug9, align 8
  %arrayidx10 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %19, i64 %idxprom8
  %firstbg11 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx10, i32 0, i32 3
  %20 = load i32, i32* %firstbg11, align 4
  %21 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %20, %21
  store i32 %sub, i32* %n, align 4
  %22 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %23 = load i16, i16* %lw1.addr, align 2
  %idxprom13 = zext i16 %23 to i64
  %24 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %24, i32 0, i32 12
  %25 = load %struct.membg_t*, %struct.membg_t** %membg, align 8
  %arrayidx14 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %25, i64 %idxprom13
  %bg15 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx14, i32 0, i32 0
  %26 = load %struct.bg_t*, %struct.bg_t** %bg15, align 8
  %tobool = icmp ne %struct.bg_t* %26, null
  br i1 %tobool, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.then
  %27 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %28 = load i16, i16* %lw1.addr, align 2
  call void @load_bg(%struct.lm_s* %27, i16 zeroext %28)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  %29 = load i16, i16* %lw1.addr, align 2
  %idxprom17 = zext i16 %29 to i64
  %30 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg18 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %30, i32 0, i32 12
  %31 = load %struct.membg_t*, %struct.membg_t** %membg18, align 8
  %arrayidx19 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %31, i64 %idxprom17
  %used = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx19, i32 0, i32 1
  store i32 1, i32* %used, align 4
  %32 = load i16, i16* %lw1.addr, align 2
  %idxprom20 = zext i16 %32 to i64
  %33 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg21 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %33, i32 0, i32 12
  %34 = load %struct.membg_t*, %struct.membg_t** %membg21, align 8
  %arrayidx22 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %34, i64 %idxprom20
  %bg23 = getelementptr inbounds %struct.membg_t, %struct.membg_t* %arrayidx22, i32 0, i32 0
  %35 = load %struct.bg_t*, %struct.bg_t** %bg23, align 8
  store %struct.bg_t* %35, %struct.bg_t** %bg, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %entry
  %36 = load i32, i32* %n, align 4
  %cmp25 = icmp sgt i32 %36, 0
  br i1 %cmp25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.24
  %37 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %38 = load i32, i32* %n, align 4
  %39 = load i16, i16* %lw2.addr, align 2
  %call27 = call i32 @find_bg(%struct.bg_t* %37, i32 %38, i16 zeroext %39)
  store i32 %call27, i32* %i, align 4
  %cmp28 = icmp sge i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  %40 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx32 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %41, i64 %idxprom31
  %bowtid = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx32, i32 0, i32 2
  %42 = load i16, i16* %bowtid, align 2
  %idxprom33 = zext i16 %42 to i64
  %43 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %43, i32 0, i32 16
  %44 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt, align 8
  %arrayidx34 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %44, i64 %idxprom33
  %l = bitcast %union.lmlog_t* %arrayidx34 to i32*
  %45 = load i32, i32* %l, align 4
  %46 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %bowt = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %46, i32 0, i32 3
  store i32 %45, i32* %bowt, align 4
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %b, align 4
  %add35 = add nsw i32 %48, %47
  store i32 %add35, i32* %b, align 4
  %49 = load i32, i32* %b, align 4
  %50 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %log_bg_seg_sz = getelementptr inbounds %struct.lm_s, %struct.lm_s* %50, i32 0, i32 7
  %51 = load i32, i32* %log_bg_seg_sz, align 4
  %shr = ashr i32 %49, %51
  %idxprom36 = sext i32 %shr to i64
  %52 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tg_segbase = getelementptr inbounds %struct.lm_s, %struct.lm_s* %52, i32 0, i32 17
  %53 = load i32*, i32** %tg_segbase, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %53, i64 %idxprom36
  %54 = load i32, i32* %arrayidx37, align 4
  store i32 %54, i32* %t, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %55 to i64
  %56 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx39 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %56, i64 %idxprom38
  %firsttg = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx39, i32 0, i32 3
  %57 = load i16, i16* %firsttg, align 2
  %conv40 = zext i16 %57 to i32
  %58 = load i32, i32* %t, align 4
  %add41 = add nsw i32 %58, %conv40
  store i32 %add41, i32* %t, align 4
  %59 = load i32, i32* %b, align 4
  %add42 = add nsw i32 %59, 1
  %60 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %log_bg_seg_sz43 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %60, i32 0, i32 7
  %61 = load i32, i32* %log_bg_seg_sz43, align 4
  %shr44 = ashr i32 %add42, %61
  %idxprom45 = sext i32 %shr44 to i64
  %62 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tg_segbase46 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %62, i32 0, i32 17
  %63 = load i32*, i32** %tg_segbase46, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %63, i64 %idxprom45
  %64 = load i32, i32* %arrayidx47, align 4
  store i32 %64, i32* %n, align 4
  %65 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %65, 1
  %idxprom49 = sext i32 %add48 to i64
  %66 = load %struct.bg_t*, %struct.bg_t** %bg, align 8
  %arrayidx50 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %66, i64 %idxprom49
  %firsttg51 = getelementptr inbounds %struct.bg_t, %struct.bg_t* %arrayidx50, i32 0, i32 3
  %67 = load i16, i16* %firsttg51, align 2
  %conv52 = zext i16 %67 to i32
  %68 = load i32, i32* %n, align 4
  %add53 = add nsw i32 %68, %conv52
  store i32 %add53, i32* %n, align 4
  %69 = load i32, i32* %t, align 4
  %70 = load i32, i32* %n, align 4
  %sub54 = sub nsw i32 %70, %69
  store i32 %sub54, i32* %n, align 4
  %71 = load i32, i32* %n, align 4
  %72 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %n_tg = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %72, i32 0, i32 1
  store i32 %71, i32* %n_tg, align 4
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %if.end.24
  %73 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %bowt55 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %73, i32 0, i32 3
  store i32 0, i32* %bowt55, align 4
  %74 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %n_tg56 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %74, i32 0, i32 1
  store i32 0, i32* %n_tg56, align 4
  store i32 0, i32* %n, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.30
  %75 = load i32, i32* @LM_IN_MEMORY, align 4
  %tobool58 = icmp ne i32 %75, 0
  br i1 %tobool58, label %if.then.59, label %if.else.68

if.then.59:                                       ; preds = %if.end.57
  %76 = load i32, i32* %n, align 4
  %cmp60 = icmp sgt i32 %76, 0
  br i1 %cmp60, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.then.59
  %77 = load i32, i32* %t, align 4
  %idxprom63 = sext i32 %77 to i64
  %78 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tg64 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %78, i32 0, i32 11
  %79 = load %struct.tg_t*, %struct.tg_t** %tg64, align 8
  %arrayidx65 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %79, i64 %idxprom63
  %80 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg66 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %80, i32 0, i32 2
  store %struct.tg_t* %arrayidx65, %struct.tg_t** %tg66, align 8
  store %struct.tg_t* %arrayidx65, %struct.tg_t** %tg, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %if.then.59
  br label %if.end.127

if.else.68:                                       ; preds = %if.end.57
  %81 = load i32, i32* %n, align 4
  %cmp69 = icmp sgt i32 %81, 0
  br i1 %cmp69, label %if.then.71, label %if.end.126

if.then.71:                                       ; preds = %if.else.68
  %82 = load i32, i32* %n, align 4
  %conv72 = sext i32 %82 to i64
  %call73 = call i8* @__ckd_calloc__(i64 %conv72, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1140)
  %83 = bitcast i8* %call73 to %struct.tg_t*
  %84 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg74 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %84, i32 0, i32 2
  store %struct.tg_t* %83, %struct.tg_t** %tg74, align 8
  store %struct.tg_t* %83, %struct.tg_t** %tg, align 8
  %85 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %fp = getelementptr inbounds %struct.lm_s, %struct.lm_s* %85, i32 0, i32 21
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %87 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgoff = getelementptr inbounds %struct.lm_s, %struct.lm_s* %87, i32 0, i32 24
  %88 = load i32, i32* %tgoff, align 4
  %conv75 = sext i32 %88 to i64
  %89 = load i32, i32* %t, align 4
  %conv76 = sext i32 %89 to i64
  %mul = mul i64 %conv76, 4
  %add77 = add i64 %conv75, %mul
  %call78 = call i32 @fseek(%struct._IO_FILE* %86, i64 %add77, i32 0)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.71
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0))
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.then.71
  %90 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %91 = bitcast %struct.tg_t* %90 to i8*
  %92 = load i32, i32* %n, align 4
  %conv83 = sext i32 %92 to i64
  %93 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %fp84 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %93, i32 0, i32 21
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %fp84, align 8
  %call85 = call i64 @fread(i8* %91, i64 4, i64 %conv83, %struct._IO_FILE* %94)
  %95 = load i32, i32* %n, align 4
  %conv86 = sext i32 %95 to i64
  %cmp87 = icmp ne i64 %call85, %conv86
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.82
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %96 = load i32, i32* %n, align 4
  %97 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgoff90 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %97, i32 0, i32 24
  %98 = load i32, i32* %tgoff90, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0), i32 %96, i32 %98)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.82
  %99 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %byteswap = getelementptr inbounds %struct.lm_s, %struct.lm_s* %99, i32 0, i32 22
  %100 = load i32, i32* %byteswap, align 4
  %tobool92 = icmp ne i32 %100, 0
  br i1 %tobool92, label %if.then.93, label %if.end.125

if.then.93:                                       ; preds = %if.end.91
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.93
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %n, align 4
  %cmp94 = icmp slt i32 %101, %102
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %103 to i64
  %104 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx97 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %104, i64 %idxprom96
  %wid = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx97, i32 0, i32 0
  %105 = load i16, i16* %wid, align 2
  %conv98 = zext i16 %105 to i32
  %shr99 = ashr i32 %conv98, 8
  %and = and i32 255, %shr99
  %106 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %106 to i64
  %107 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx101 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %107, i64 %idxprom100
  %wid102 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx101, i32 0, i32 0
  %108 = load i16, i16* %wid102, align 2
  %conv103 = zext i16 %108 to i32
  %shl = shl i32 %conv103, 8
  %and104 = and i32 65280, %shl
  %or = or i32 %and, %and104
  %conv105 = trunc i32 %or to i16
  %109 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %109 to i64
  %110 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx107 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %110, i64 %idxprom106
  %wid108 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx107, i32 0, i32 0
  store i16 %conv105, i16* %wid108, align 2
  %111 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %111 to i64
  %112 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx110 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %112, i64 %idxprom109
  %probid = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx110, i32 0, i32 1
  %113 = load i16, i16* %probid, align 2
  %conv111 = zext i16 %113 to i32
  %shr112 = ashr i32 %conv111, 8
  %and113 = and i32 255, %shr112
  %114 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %114 to i64
  %115 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx115 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %115, i64 %idxprom114
  %probid116 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx115, i32 0, i32 1
  %116 = load i16, i16* %probid116, align 2
  %conv117 = zext i16 %116 to i32
  %shl118 = shl i32 %conv117, 8
  %and119 = and i32 65280, %shl118
  %or120 = or i32 %and113, %and119
  %conv121 = trunc i32 %or120 to i16
  %117 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %117 to i64
  %118 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx123 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %118, i64 %idxprom122
  %probid124 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx123, i32 0, i32 1
  store i16 %conv121, i16* %probid124, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %119 = load i32, i32* %i, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.125

if.end.125:                                       ; preds = %for.end, %if.end.91
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.else.68
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.67
  %120 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_fill = getelementptr inbounds %struct.lm_s, %struct.lm_s* %120, i32 0, i32 32
  %121 = load i32, i32* %n_tg_fill, align 4
  %inc128 = add nsw i32 %121, 1
  store i32 %inc128, i32* %n_tg_fill, align 4
  %122 = load i32, i32* %n, align 4
  %123 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_inmem = getelementptr inbounds %struct.lm_s, %struct.lm_s* %123, i32 0, i32 33
  %124 = load i32, i32* %n_tg_inmem, align 4
  %add129 = add nsw i32 %124, %122
  store i32 %add129, i32* %n_tg_inmem, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lm_tg_score(%struct.lm_s* %lm, i16 zeroext %lw1, i16 zeroext %lw2, i16 zeroext %lw3, i32 %w3) #0 {
entry:
  %retval = alloca i32, align 4
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw1.addr = alloca i16, align 2
  %lw2.addr = alloca i16, align 2
  %lw3.addr = alloca i16, align 2
  %w3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  %score = alloca i32, align 4
  %tg = alloca %struct.tg_t*, align 8
  %tginfo = alloca %struct.tginfo_s*, align 8
  %prev_tginfo = alloca %struct.tginfo_s*, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i16 %lw1, i16* %lw1.addr, align 2
  store i16 %lw2, i16* %lw2.addr, align 2
  store i16 %lw3, i16* %lw3.addr, align 2
  store i32 %w3, i32* %w3.addr, align 4
  %0 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %0, i32 0, i32 2
  %1 = load i32, i32* %n_tg, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i16, i16* %lw1.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp1 = icmp eq i32 %conv, 65535
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %4 = load i16, i16* %lw2.addr, align 2
  %5 = load i16, i16* %lw3.addr, align 2
  %6 = load i32, i32* %w3.addr, align 4
  %call = call i32 @lm_bg_score(%struct.lm_s* %3, i16 zeroext %4, i16 zeroext %5, i32 %6)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_score = getelementptr inbounds %struct.lm_s, %struct.lm_s* %7, i32 0, i32 34
  %8 = load i32, i32* %n_tg_score, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %n_tg_score, align 4
  %9 = load i16, i16* %lw1.addr, align 2
  %conv3 = zext i16 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 65535
  br i1 %cmp4, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.end
  %10 = load i16, i16* %lw1.addr, align 2
  %conv7 = zext i16 %10 to i32
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 0
  %12 = load i32, i32* %n_ug, align 4
  %cmp8 = icmp sge i32 %conv7, %12
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false.6, %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %13 = load i16, i16* %lw1.addr, align 2
  %conv11 = zext i16 %13 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), i32 %conv11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %lor.lhs.false.6
  %14 = load i16, i16* %lw2.addr, align 2
  %conv13 = zext i16 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 65535
  br i1 %cmp14, label %if.then.21, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end.12
  %15 = load i16, i16* %lw2.addr, align 2
  %conv17 = zext i16 %15 to i32
  %16 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug18 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %16, i32 0, i32 0
  %17 = load i32, i32* %n_ug18, align 4
  %cmp19 = icmp sge i32 %conv17, %17
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %lor.lhs.false.16, %if.end.12
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %18 = load i16, i16* %lw2.addr, align 2
  %conv22 = zext i16 %18 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i32 %conv22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %lor.lhs.false.16
  %19 = load i16, i16* %lw3.addr, align 2
  %conv24 = zext i16 %19 to i32
  %cmp25 = icmp eq i32 %conv24, 65535
  br i1 %cmp25, label %if.then.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.23
  %20 = load i16, i16* %lw3.addr, align 2
  %conv28 = zext i16 %20 to i32
  %21 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug29 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %21, i32 0, i32 0
  %22 = load i32, i32* %n_ug29, align 4
  %cmp30 = icmp sge i32 %conv28, %22
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %lor.lhs.false.27, %if.end.23
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 1245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %23 = load i16, i16* %lw3.addr, align 2
  %conv33 = zext i16 %23 to i32
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i32 %conv33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %lor.lhs.false.27
  %24 = load i16, i16* %lw1.addr, align 2
  %conv35 = zext i16 %24 to i32
  %and = and i32 %conv35, 1023
  %shl = shl i32 %and, 21
  %25 = load i16, i16* %lw2.addr, align 2
  %conv36 = zext i16 %25 to i32
  %and37 = and i32 %conv36, 1023
  %shl38 = shl i32 %and37, 11
  %add = add nsw i32 %shl, %shl38
  %26 = load i16, i16* %lw3.addr, align 2
  %conv39 = zext i16 %26 to i32
  %and40 = and i32 %conv39, 2047
  %add41 = add nsw i32 %add, %and40
  store i32 %add41, i32* %h, align 4
  %27 = load i32, i32* %h, align 4
  %rem = srem i32 %27, 100003
  store i32 %rem, i32* %h, align 4
  %28 = load i32, i32* %h, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 27
  %30 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache, align 8
  %arrayidx = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %30, i64 %idxprom
  %lwid = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid, i32 0, i64 0
  %31 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %31 to i32
  %32 = load i16, i16* %lw1.addr, align 2
  %conv44 = zext i16 %32 to i32
  %cmp45 = icmp eq i32 %conv43, %conv44
  br i1 %cmp45, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.end.34
  %33 = load i32, i32* %h, align 4
  %idxprom47 = sext i32 %33 to i64
  %34 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache48 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %34, i32 0, i32 27
  %35 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache48, align 8
  %arrayidx49 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %35, i64 %idxprom47
  %lwid50 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx49, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid50, i32 0, i64 1
  %36 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %36 to i32
  %37 = load i16, i16* %lw2.addr, align 2
  %conv53 = zext i16 %37 to i32
  %cmp54 = icmp eq i32 %conv52, %conv53
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.71

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %38 = load i32, i32* %h, align 4
  %idxprom57 = sext i32 %38 to i64
  %39 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache58 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %39, i32 0, i32 27
  %40 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache58, align 8
  %arrayidx59 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %40, i64 %idxprom57
  %lwid60 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid60, i32 0, i64 2
  %41 = load i16, i16* %arrayidx61, align 2
  %conv62 = zext i16 %41 to i32
  %42 = load i16, i16* %lw3.addr, align 2
  %conv63 = zext i16 %42 to i32
  %cmp64 = icmp eq i32 %conv62, %conv63
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %land.lhs.true.56
  %43 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgcache_hit = getelementptr inbounds %struct.lm_s, %struct.lm_s* %43, i32 0, i32 36
  %44 = load i32, i32* %n_tgcache_hit, align 4
  %inc67 = add nsw i32 %44, 1
  store i32 %inc67, i32* %n_tgcache_hit, align 4
  %45 = load i32, i32* %h, align 4
  %idxprom68 = sext i32 %45 to i64
  %46 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache69 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %46, i32 0, i32 27
  %47 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache69, align 8
  %arrayidx70 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %47, i64 %idxprom68
  %lscr = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx70, i32 0, i32 1
  %48 = load i32, i32* %lscr, align 4
  store i32 %48, i32* %retval
  br label %return

if.end.71:                                        ; preds = %land.lhs.true.56, %land.lhs.true, %if.end.34
  store %struct.tginfo_s* null, %struct.tginfo_s** %prev_tginfo, align 8
  %49 = load i16, i16* %lw2.addr, align 2
  %idxprom72 = zext i16 %49 to i64
  %50 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo73 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %50, i32 0, i32 13
  %51 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo73, align 8
  %arrayidx74 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %51, i64 %idxprom72
  %52 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx74, align 8
  store %struct.tginfo_s* %52, %struct.tginfo_s** %tginfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %53 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tobool = icmp ne %struct.tginfo_s* %53, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %w1 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %54, i32 0, i32 0
  %55 = load i16, i16* %w1, align 2
  %conv75 = zext i16 %55 to i32
  %56 = load i16, i16* %lw1.addr, align 2
  %conv76 = zext i16 %56 to i32
  %cmp77 = icmp eq i32 %conv75, %conv76
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body
  br label %for.end

if.end.80:                                        ; preds = %for.body
  %57 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  store %struct.tginfo_s* %57, %struct.tginfo_s** %prev_tginfo, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %58 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %58, i32 0, i32 5
  %59 = load %struct.tginfo_s*, %struct.tginfo_s** %next, align 8
  store %struct.tginfo_s* %59, %struct.tginfo_s** %tginfo, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.79, %for.cond
  %60 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tobool81 = icmp ne %struct.tginfo_s* %60, null
  br i1 %tobool81, label %if.else, label %if.then.82

if.then.82:                                       ; preds = %for.end
  %61 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %62 = load i16, i16* %lw1.addr, align 2
  %63 = load i16, i16* %lw2.addr, align 2
  call void @load_tg(%struct.lm_s* %61, i16 zeroext %62, i16 zeroext %63)
  %64 = load i16, i16* %lw2.addr, align 2
  %idxprom83 = zext i16 %64 to i64
  %65 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo84 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %65, i32 0, i32 13
  %66 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo84, align 8
  %arrayidx85 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %66, i64 %idxprom83
  %67 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx85, align 8
  store %struct.tginfo_s* %67, %struct.tginfo_s** %tginfo, align 8
  br label %if.end.98

if.else:                                          ; preds = %for.end
  %68 = load %struct.tginfo_s*, %struct.tginfo_s** %prev_tginfo, align 8
  %tobool86 = icmp ne %struct.tginfo_s* %68, null
  br i1 %tobool86, label %if.then.87, label %if.end.97

if.then.87:                                       ; preds = %if.else
  %69 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next88 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %69, i32 0, i32 5
  %70 = load %struct.tginfo_s*, %struct.tginfo_s** %next88, align 8
  %71 = load %struct.tginfo_s*, %struct.tginfo_s** %prev_tginfo, align 8
  %next89 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %71, i32 0, i32 5
  store %struct.tginfo_s* %70, %struct.tginfo_s** %next89, align 8
  %72 = load i16, i16* %lw2.addr, align 2
  %idxprom90 = zext i16 %72 to i64
  %73 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo91 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %73, i32 0, i32 13
  %74 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo91, align 8
  %arrayidx92 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %74, i64 %idxprom90
  %75 = load %struct.tginfo_s*, %struct.tginfo_s** %arrayidx92, align 8
  %76 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %next93 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %76, i32 0, i32 5
  store %struct.tginfo_s* %75, %struct.tginfo_s** %next93, align 8
  %77 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %78 = load i16, i16* %lw2.addr, align 2
  %idxprom94 = zext i16 %78 to i64
  %79 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo95 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %79, i32 0, i32 13
  %80 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo95, align 8
  %arrayidx96 = getelementptr inbounds %struct.tginfo_s*, %struct.tginfo_s** %80, i64 %idxprom94
  store %struct.tginfo_s* %77, %struct.tginfo_s** %arrayidx96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.87, %if.else
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.82
  %81 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %used = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %81, i32 0, i32 4
  store i32 1, i32* %used, align 4
  %82 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %n_tg99 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %82, i32 0, i32 1
  %83 = load i32, i32* %n_tg99, align 4
  store i32 %83, i32* %n, align 4
  %84 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %tg100 = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %84, i32 0, i32 2
  %85 = load %struct.tg_t*, %struct.tg_t** %tg100, align 8
  store %struct.tg_t* %85, %struct.tg_t** %tg, align 8
  %86 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %87 = load i32, i32* %n, align 4
  %88 = load i16, i16* %lw3.addr, align 2
  %call101 = call i32 @find_tg(%struct.tg_t* %86, i32 %87, i16 zeroext %88)
  store i32 %call101, i32* %i, align 4
  %cmp102 = icmp sge i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.116

if.then.104:                                      ; preds = %if.end.98
  %89 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %89 to i64
  %90 = load %struct.tg_t*, %struct.tg_t** %tg, align 8
  %arrayidx106 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %90, i64 %idxprom105
  %probid = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx106, i32 0, i32 1
  %91 = load i16, i16* %probid, align 2
  %idxprom107 = zext i16 %91 to i64
  %92 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %92, i32 0, i32 15
  %93 = load %union.lmlog_t*, %union.lmlog_t** %tgprob, align 8
  %arrayidx108 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %93, i64 %idxprom107
  %l = bitcast %union.lmlog_t* %arrayidx108 to i32*
  %94 = load i32, i32* %l, align 4
  store i32 %94, i32* %score, align 4
  %95 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore = getelementptr inbounds %struct.lm_s, %struct.lm_s* %95, i32 0, i32 42
  %96 = load i32*, i32** %inclass_ugscore, align 8
  %tobool109 = icmp ne i32* %96, null
  br i1 %tobool109, label %if.then.110, label %if.end.115

if.then.110:                                      ; preds = %if.then.104
  %97 = load i32, i32* %w3.addr, align 4
  %idxprom111 = sext i32 %97 to i64
  %98 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore112 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %98, i32 0, i32 42
  %99 = load i32*, i32** %inclass_ugscore112, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %99, i64 %idxprom111
  %100 = load i32, i32* %arrayidx113, align 4
  %101 = load i32, i32* %score, align 4
  %add114 = add nsw i32 %101, %100
  store i32 %add114, i32* %score, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.110, %if.then.104
  %102 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %access_type = getelementptr inbounds %struct.lm_s, %struct.lm_s* %102, i32 0, i32 37
  store i32 3, i32* %access_type, align 4
  br label %if.end.120

if.else.116:                                      ; preds = %if.end.98
  %103 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg_bo = getelementptr inbounds %struct.lm_s, %struct.lm_s* %103, i32 0, i32 35
  %104 = load i32, i32* %n_tg_bo, align 4
  %inc117 = add nsw i32 %104, 1
  store i32 %inc117, i32* %n_tg_bo, align 4
  %105 = load %struct.tginfo_s*, %struct.tginfo_s** %tginfo, align 8
  %bowt = getelementptr inbounds %struct.tginfo_s, %struct.tginfo_s* %105, i32 0, i32 3
  %106 = load i32, i32* %bowt, align 4
  %107 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %108 = load i16, i16* %lw2.addr, align 2
  %109 = load i16, i16* %lw3.addr, align 2
  %110 = load i32, i32* %w3.addr, align 4
  %call118 = call i32 @lm_bg_score(%struct.lm_s* %107, i16 zeroext %108, i16 zeroext %109, i32 %110)
  %add119 = add nsw i32 %106, %call118
  store i32 %add119, i32* %score, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.116, %if.end.115
  %111 = load i16, i16* %lw1.addr, align 2
  %112 = load i32, i32* %h, align 4
  %idxprom121 = sext i32 %112 to i64
  %113 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache122 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %113, i32 0, i32 27
  %114 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache122, align 8
  %arrayidx123 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %114, i64 %idxprom121
  %lwid124 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid124, i32 0, i64 0
  store i16 %111, i16* %arrayidx125, align 2
  %115 = load i16, i16* %lw2.addr, align 2
  %116 = load i32, i32* %h, align 4
  %idxprom126 = sext i32 %116 to i64
  %117 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache127 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %117, i32 0, i32 27
  %118 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache127, align 8
  %arrayidx128 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %118, i64 %idxprom126
  %lwid129 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid129, i32 0, i64 1
  store i16 %115, i16* %arrayidx130, align 2
  %119 = load i16, i16* %lw3.addr, align 2
  %120 = load i32, i32* %h, align 4
  %idxprom131 = sext i32 %120 to i64
  %121 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache132 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %121, i32 0, i32 27
  %122 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache132, align 8
  %arrayidx133 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %122, i64 %idxprom131
  %lwid134 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i16], [3 x i16]* %lwid134, i32 0, i64 2
  store i16 %119, i16* %arrayidx135, align 2
  %123 = load i32, i32* %score, align 4
  %124 = load i32, i32* %h, align 4
  %idxprom136 = sext i32 %124 to i64
  %125 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache137 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %125, i32 0, i32 27
  %126 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache137, align 8
  %arrayidx138 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %126, i64 %idxprom136
  %lscr139 = getelementptr inbounds %struct.lm_tgcache_entry_t, %struct.lm_tgcache_entry_t* %arrayidx138, i32 0, i32 1
  store i32 %123, i32* %lscr139, align 4
  %127 = load i32, i32* %score, align 4
  store i32 %127, i32* %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.then.66, %if.then
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal i32 @find_tg(%struct.tg_t* %tg, i32 %n, i16 zeroext %w) #0 {
entry:
  %retval = alloca i32, align 4
  %tg.addr = alloca %struct.tg_t*, align 8
  %n.addr = alloca i32, align 4
  %w.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  store %struct.tg_t* %tg, %struct.tg_t** %tg.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i16 %w, i16* %w.addr, align 2
  store i32 0, i32* %b, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %e, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %1 = load i32, i32* %e, align 4
  %2 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sgt i32 %sub, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %b, align 4
  %4 = load i32, i32* %e, align 4
  %add = add nsw i32 %3, %4
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.tg_t*, %struct.tg_t** %tg.addr, align 8
  %arrayidx = getelementptr inbounds %struct.tg_t, %struct.tg_t* %6, i64 %idxprom
  %wid = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx, i32 0, i32 0
  %7 = load i16, i16* %wid, align 2
  %conv = zext i16 %7 to i32
  %8 = load i16, i16* %w.addr, align 2
  %conv1 = zext i16 %8 to i32
  %cmp2 = icmp slt i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %9, 1
  store i32 %add4, i32* %b, align 4
  br label %if.end.14

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.tg_t*, %struct.tg_t** %tg.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %11, i64 %idxprom5
  %wid7 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx6, i32 0, i32 0
  %12 = load i16, i16* %wid7, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load i16, i16* %w.addr, align 2
  %conv9 = zext i16 %13 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %e, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %b, align 4
  store i32 %16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %e, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.tg_t*, %struct.tg_t** %tg.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %20, i64 %idxprom17
  %wid19 = getelementptr inbounds %struct.tg_t, %struct.tg_t* %arrayidx18, i32 0, i32 0
  %21 = load i16, i16* %wid19, align 2
  %conv20 = zext i16 %21 to i32
  %22 = load i16, i16* %w.addr, align 2
  %conv21 = zext i16 %22 to i32
  %cmp22 = icmp ne i32 %conv20, %conv21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %e, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %27 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.13
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define zeroext i16 @lm_wid(%struct.lm_s* %lm, i8* %word) #0 {
entry:
  %retval = alloca i16, align 2
  %lm.addr = alloca %struct.lm_s*, align 8
  %word.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ug, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr = getelementptr inbounds %struct.lm_s, %struct.lm_s* %4, i32 0, i32 4
  %5 = load i8**, i8*** %wordstr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i8*, i8** %word.addr, align 8
  %call = call i32 @strcmp(i8* %6, i8* %7) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %conv = trunc i32 %8 to i16
  store i16 %conv, i16* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i16, i16* %retval
  ret i16 %10
}

; Function Attrs: nounwind uwtable
define void @lm_free(%struct.lm_s* %lm) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %i = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ug, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr = getelementptr inbounds %struct.lm_s, %struct.lm_s* %4, i32 0, i32 4
  %5 = load i8**, i8*** %wordstr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  call void @ckd_free(i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %membg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %8, i32 0, i32 12
  %9 = load %struct.membg_t*, %struct.membg_t** %membg, align 8
  %10 = bitcast %struct.membg_t* %9 to i8*
  call void @ckd_free(i8* %10)
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr1 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 4
  %12 = load i8**, i8*** %wordstr1, align 8
  %13 = bitcast i8** %12 to i8*
  call void @ckd_free(i8* %13)
  %14 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgcache = getelementptr inbounds %struct.lm_s, %struct.lm_s* %14, i32 0, i32 27
  %15 = load %struct.lm_tgcache_entry_t*, %struct.lm_tgcache_entry_t** %tgcache, align 8
  %16 = bitcast %struct.lm_tgcache_entry_t* %15 to i8*
  call void @ckd_free(i8* %16)
  %17 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tg_segbase = getelementptr inbounds %struct.lm_s, %struct.lm_s* %17, i32 0, i32 17
  %18 = load i32*, i32** %tg_segbase, align 8
  %19 = bitcast i32* %18 to i8*
  call void @ckd_free(i8* %19)
  %20 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %20, i32 0, i32 15
  %21 = load %union.lmlog_t*, %union.lmlog_t** %tgprob, align 8
  %22 = bitcast %union.lmlog_t* %21 to i8*
  call void @ckd_free(i8* %22)
  %23 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %23, i32 0, i32 16
  %24 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt, align 8
  %25 = bitcast %union.lmlog_t* %24 to i8*
  call void @ckd_free(i8* %25)
  %26 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %26, i32 0, i32 14
  %27 = load %union.lmlog_t*, %union.lmlog_t** %bgprob, align 8
  %28 = bitcast %union.lmlog_t* %27 to i8*
  call void @ckd_free(i8* %28)
  %29 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tginfo = getelementptr inbounds %struct.lm_s, %struct.lm_s* %29, i32 0, i32 13
  %30 = load %struct.tginfo_s**, %struct.tginfo_s*** %tginfo, align 8
  %31 = bitcast %struct.tginfo_s** %30 to i8*
  call void @ckd_free(i8* %31)
  %32 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %32, i32 0, i32 9
  %33 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %34 = bitcast %struct.ug_t* %33 to i8*
  call void @ckd_free(i8* %34)
  %35 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %36 = bitcast %struct.lm_s* %35 to i8*
  call void @ckd_free(i8* %36)
  ret void
}

declare void @ckd_free(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @_E__fatal_sys_error(i8*, ...) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @lm_fread_int32(%struct.lm_s* %lm) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %val = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %fp = getelementptr inbounds %struct.lm_s, %struct.lm_s* %1, i32 0, i32 21
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %byteswap = getelementptr inbounds %struct.lm_s, %struct.lm_s* %3, i32 0, i32 22
  %4 = load i32, i32* %byteswap, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %5 = load i32, i32* %val, align 4
  %shr = ashr i32 %5, 24
  %and = and i32 255, %shr
  %6 = load i32, i32* %val, align 4
  %shr2 = ashr i32 %6, 8
  %and3 = and i32 65280, %shr2
  %or = or i32 %and, %and3
  %7 = load i32, i32* %val, align 4
  %shl = shl i32 %7, 8
  %and4 = and i32 16711680, %shl
  %or5 = or i32 %or, %and4
  %8 = load i32, i32* %val, align 4
  %shl6 = shl i32 %8, 24
  %and7 = and i32 -16777216, %shl6
  %or8 = or i32 %or5, %and7
  store i32 %or8, i32* %val, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.1, %if.end
  %9 = load i32, i32* %val, align 4
  ret i32 %9
}

declare i64 @ftell(%struct._IO_FILE*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @lm_build_lmclass_info(%struct.lm_s* %lm, double %lw, double %uw, double %wip, i32 %n_lmclass_used, %struct.lmclass_s** %lmclass) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw.addr = alloca double, align 8
  %uw.addr = alloca double, align 8
  %wip.addr = alloca double, align 8
  %n_lmclass_used.addr = alloca i32, align 4
  %lmclass.addr = alloca %struct.lmclass_s**, align 8
  %i = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store double %lw, double* %lw.addr, align 8
  store double %uw, double* %uw.addr, align 8
  store double %wip, double* %wip.addr, align 8
  store i32 %n_lmclass_used, i32* %n_lmclass_used.addr, align 4
  store %struct.lmclass_s** %lmclass, %struct.lmclass_s*** %lmclass.addr, align 8
  %0 = load i32, i32* %n_lmclass_used.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n_lmclass_used.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 436)
  %2 = bitcast i8* %call to %struct.lmclass_s**
  %3 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass1 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %3, i32 0, i32 40
  store %struct.lmclass_s** %2, %struct.lmclass_s*** %lmclass1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_lmclass_used.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass.addr, align 8
  %arrayidx = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %7, i64 %idxprom
  %8 = load %struct.lmclass_s*, %struct.lmclass_s** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass5 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %10, i32 0, i32 40
  %11 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass5, align 8
  %arrayidx6 = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %11, i64 %idxprom4
  store %struct.lmclass_s* %8, %struct.lmclass_s** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass7 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %13, i32 0, i32 40
  store %struct.lmclass_s** null, %struct.lmclass_s*** %lmclass7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %14 = load i32, i32* %n_lmclass_used.addr, align 4
  %15 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_lmclass = getelementptr inbounds %struct.lm_s, %struct.lm_s* %15, i32 0, i32 41
  store i32 %14, i32* %n_lmclass, align 4
  %16 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %dict_size = getelementptr inbounds %struct.lm_s, %struct.lm_s* %16, i32 0, i32 39
  %17 = load i32, i32* %dict_size, align 4
  %conv8 = sext i32 %17 to i64
  %call9 = call i8* @__ckd_calloc__(i64 %conv8, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 443)
  %18 = bitcast i8* %call9 to i32*
  %19 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore = getelementptr inbounds %struct.lm_s, %struct.lm_s* %19, i32 0, i32 42
  store i32* %18, i32** %inclass_ugscore, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 445, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %20 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %dict_size10 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %20, i32 0, i32 39
  %21 = load i32, i32* %dict_size10, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i32 0, i32 0), i32 %21)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 446, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %22 = load i32, i32* %n_lmclass_used.addr, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0), i32 %22)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @lm2logs3(%struct.lm_s* %lm, double %uw) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %uw.addr = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store double %uw, double* %uw.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ug, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %4, i32 0, i32 9
  %5 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx = getelementptr inbounds %struct.ug_t, %struct.ug_t* %5, i64 %idxprom
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx, i32 0, i32 1
  %f = bitcast %union.lmlog_t* %prob to float*
  %6 = load float, float* %f, align 4
  %conv = fpext float %6 to double
  %call = call i32 @log10_to_logs3(double %conv)
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug2 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %8, i32 0, i32 9
  %9 = load %struct.ug_t*, %struct.ug_t** %ug2, align 8
  %arrayidx3 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %9, i64 %idxprom1
  %prob4 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx3, i32 0, i32 1
  %l = bitcast %union.lmlog_t* %prob4 to i32*
  store i32 %call, i32* %l, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug6 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 9
  %12 = load %struct.ug_t*, %struct.ug_t** %ug6, align 8
  %arrayidx7 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %12, i64 %idxprom5
  %bowt = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx7, i32 0, i32 2
  %f8 = bitcast %union.lmlog_t* %bowt to float*
  %13 = load float, float* %f8, align 4
  %conv9 = fpext float %13 to double
  %call10 = call i32 @log10_to_logs3(double %conv9)
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug12 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %15, i32 0, i32 9
  %16 = load %struct.ug_t*, %struct.ug_t** %ug12, align 8
  %arrayidx13 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %16, i64 %idxprom11
  %bowt14 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx13, i32 0, i32 2
  %l15 = bitcast %union.lmlog_t* %bowt14 to i32*
  store i32 %call10, i32* %l15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %19 = load double, double* %uw.addr, align 8
  call void @lm_uw(%struct.lm_s* %18, double %19)
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.29, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %21, i32 0, i32 18
  %22 = load i32, i32* %n_bgprob, align 4
  %cmp17 = icmp slt i32 %20, %22
  br i1 %cmp17, label %for.body.19, label %for.end.31

for.body.19:                                      ; preds = %for.cond.16
  %23 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %24, i32 0, i32 14
  %25 = load %union.lmlog_t*, %union.lmlog_t** %bgprob, align 8
  %arrayidx21 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %25, i64 %idxprom20
  %f22 = bitcast %union.lmlog_t* %arrayidx21 to float*
  %26 = load float, float* %f22, align 4
  %conv23 = fpext float %26 to double
  %call24 = call i32 @log10_to_logs3(double %conv23)
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %bgprob26 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %28, i32 0, i32 14
  %29 = load %union.lmlog_t*, %union.lmlog_t** %bgprob26, align 8
  %arrayidx27 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %29, i64 %idxprom25
  %l28 = bitcast %union.lmlog_t* %arrayidx27 to i32*
  store i32 %call24, i32* %l28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.19
  %30 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.16

for.end.31:                                       ; preds = %for.cond.16
  %31 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tg = getelementptr inbounds %struct.lm_s, %struct.lm_s* %31, i32 0, i32 2
  %32 = load i32, i32* %n_tg, align 4
  %cmp32 = icmp sgt i32 %32, 0
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %if.then
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %34, i32 0, i32 19
  %35 = load i32, i32* %n_tgprob, align 4
  %cmp35 = icmp slt i32 %33, %35
  br i1 %cmp35, label %for.body.37, label %for.end.49

for.body.37:                                      ; preds = %for.cond.34
  %36 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %36 to i64
  %37 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgprob = getelementptr inbounds %struct.lm_s, %struct.lm_s* %37, i32 0, i32 15
  %38 = load %union.lmlog_t*, %union.lmlog_t** %tgprob, align 8
  %arrayidx39 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %38, i64 %idxprom38
  %f40 = bitcast %union.lmlog_t* %arrayidx39 to float*
  %39 = load float, float* %f40, align 4
  %conv41 = fpext float %39 to double
  %call42 = call i32 @log10_to_logs3(double %conv41)
  %40 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgprob44 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %41, i32 0, i32 15
  %42 = load %union.lmlog_t*, %union.lmlog_t** %tgprob44, align 8
  %arrayidx45 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %42, i64 %idxprom43
  %l46 = bitcast %union.lmlog_t* %arrayidx45 to i32*
  store i32 %call42, i32* %l46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.37
  %43 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %43, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.34

for.end.49:                                       ; preds = %for.cond.34
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.63, %for.end.49
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %45, i32 0, i32 20
  %46 = load i32, i32* %n_tgbowt, align 4
  %cmp51 = icmp slt i32 %44, %46
  br i1 %cmp51, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.50
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgbowt = getelementptr inbounds %struct.lm_s, %struct.lm_s* %48, i32 0, i32 16
  %49 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt, align 8
  %arrayidx55 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %49, i64 %idxprom54
  %f56 = bitcast %union.lmlog_t* %arrayidx55 to float*
  %50 = load float, float* %f56, align 4
  %conv57 = fpext float %50 to double
  %call58 = call i32 @log10_to_logs3(double %conv57)
  %51 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %51 to i64
  %52 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %tgbowt60 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %52, i32 0, i32 16
  %53 = load %union.lmlog_t*, %union.lmlog_t** %tgbowt60, align 8
  %arrayidx61 = getelementptr inbounds %union.lmlog_t, %union.lmlog_t* %53, i64 %idxprom59
  %l62 = bitcast %union.lmlog_t* %arrayidx61 to i32*
  store i32 %call58, i32* %l62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.53
  %54 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %54, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.50

for.end.65:                                       ; preds = %for.cond.50
  br label %if.end

if.end:                                           ; preds = %for.end.65, %for.end.31
  ret void
}

declare i32 @log10_to_logs3(double) #2

; Function Attrs: nounwind uwtable
define internal void @lm_uw(%struct.lm_s* %lm, double %uw) #0 {
entry:
  %lm.addr = alloca %struct.lm_s*, align 8
  %uw.addr = alloca double, align 8
  %i = alloca i32, align 4
  %loguw = alloca i32, align 4
  %loguw_ = alloca i32, align 4
  %loguniform = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store double %uw, double* %uw.addr, align 8
  %0 = load double, double* %uw.addr, align 8
  %call = call i32 @logs3(double %0)
  store i32 %call, i32* %loguw, align 4
  %1 = load double, double* %uw.addr, align 8
  %sub = fsub double 1.000000e+00, %1
  %call1 = call i32 @logs3(double %sub)
  store i32 %call1, i32* %loguw_, align 4
  %2 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %2, i32 0, i32 0
  %3 = load i32, i32* %n_ug, align 4
  %sub2 = sub nsw i32 %3, 1
  %conv = sitofp i32 %sub2 to double
  %div = fdiv double 1.000000e+00, %conv
  %call3 = call i32 @logs3(double %div)
  store i32 %call3, i32* %loguniform, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug4 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %5, i32 0, i32 0
  %6 = load i32, i32* %n_ug4, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr = getelementptr inbounds %struct.lm_s, %struct.lm_s* %8, i32 0, i32 4
  %9 = load i8**, i8*** %wordstr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call6 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0)) #4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %12, i32 0, i32 9
  %13 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx10 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %13, i64 %idxprom9
  %prob = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx10, i32 0, i32 1
  %l = bitcast %union.lmlog_t* %prob to i32*
  %14 = load i32, i32* %l, align 4
  %15 = load i32, i32* %loguw, align 4
  %add = add nsw i32 %14, %15
  store i32 %add, i32* %p1, align 4
  %16 = load i32, i32* %loguniform, align 4
  %17 = load i32, i32* %loguw_, align 4
  %add11 = add nsw i32 %16, %17
  store i32 %add11, i32* %p2, align 4
  %18 = load i32, i32* %p1, align 4
  %19 = load i32, i32* %p2, align 4
  %call12 = call i32 @logs3_add(i32 %18, i32 %19)
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug14 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %21, i32 0, i32 9
  %22 = load %struct.ug_t*, %struct.ug_t** %ug14, align 8
  %arrayidx15 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %22, i64 %idxprom13
  %prob16 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx15, i32 0, i32 1
  %l17 = bitcast %union.lmlog_t* %prob16 to i32*
  store i32 %call12, i32* %l17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @logs3_add(i32, i32) #2

declare i8* @__ckd_malloc__(i64, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
