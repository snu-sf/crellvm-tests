; ModuleID = 'wid.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
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
%struct.wordprob_t = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wid.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s is both a word and an LM class name\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Filler dictionary word '%s' found in LM\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"LM word '%s' is an alternative pronunciation in dictionary\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"map[dictid] = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Multiple mappings of '%s' in LM\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%d LM words not in dictionary; ignored\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Error in mapping, please read the log to see why\0A\00", align 1

; Function Attrs: nounwind uwtable
define i16* @wid_dict_lm_map(%struct.dict_t* %dict, %struct.lm_s* %lm, i32 %lw) #0 {
entry:
  %dict.addr = alloca %struct.dict_t*, align 8
  %lm.addr = alloca %struct.lm_s*, align 8
  %lw.addr = alloca i32, align 4
  %u = alloca i32, align 4
  %n = alloca i32, align 4
  %w = alloca i32, align 4
  %dictid = alloca i32, align 4
  %classid = alloca i32, align 4
  %map = alloca i16*, align 8
  %maperr = alloca i32, align 4
  %lmclass_word = alloca %struct.lmclass_word_s*, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store %struct.lm_s* %lm, %struct.lm_s** %lm.addr, align 8
  store i32 %lw, i32* %lw.addr, align 4
  store i32 0, i32* %maperr, align 4
  %0 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 7
  %1 = load i32, i32* %n_word, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 76)
  %2 = bitcast i8* %call to i16*
  store i16* %2, i16** %map, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %n, align 4
  %4 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %n_word1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %4, i32 0, i32 7
  %5 = load i32, i32* %n_word1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %n, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %map, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  store i16 -1, i16* %arrayidx, align 2
  %8 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore = getelementptr inbounds %struct.lm_s, %struct.lm_s* %8, i32 0, i32 42
  %9 = load i32*, i32** %inclass_ugscore, align 8
  %tobool = icmp ne i32* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %n, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore4 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %11, i32 0, i32 42
  %12 = load i32*, i32** %inclass_ugscore4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  store i32 0, i32* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %n, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  store i32 0, i32* %u, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.153, %for.end
  %14 = load i32, i32* %u, align 4
  %15 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %n_ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %15, i32 0, i32 0
  %16 = load i32, i32* %n_ug, align 4
  %cmp7 = icmp slt i32 %14, %16
  br i1 %cmp7, label %for.body.9, label %for.end.155

for.body.9:                                       ; preds = %for.cond.6
  %17 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %18 = load i32, i32* %u, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr = getelementptr inbounds %struct.lm_s, %struct.lm_s* %19, i32 0, i32 4
  %20 = load i8**, i8*** %wordstr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %20, i64 %idxprom10
  %21 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @dict_wordid(%struct.dict_t* %17, i8* %21)
  store i32 %call12, i32* %w, align 4
  %22 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass = getelementptr inbounds %struct.lm_s, %struct.lm_s* %22, i32 0, i32 40
  %23 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass, align 8
  %tobool13 = icmp ne %struct.lmclass_s** %23, null
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %for.body.9
  %24 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %25 = load i32, i32* %u, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr16 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %26, i32 0, i32 4
  %27 = load i8**, i8*** %wordstr16, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %27, i64 %idxprom15
  %28 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i32 @lm_get_classid(%struct.lm_s* %24, i8* %28)
  store i32 %call18, i32* %classid, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %for.body.9
  %29 = load i32, i32* %w, align 4
  %30 = load i32, i32* %u, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug = getelementptr inbounds %struct.lm_s, %struct.lm_s* %31, i32 0, i32 9
  %32 = load %struct.ug_t*, %struct.ug_t** %ug, align 8
  %arrayidx21 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %32, i64 %idxprom20
  %dictwid = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx21, i32 0, i32 0
  store i32 %29, i32* %dictwid, align 4
  %33 = load i32, i32* %w, align 4
  %cmp22 = icmp sge i32 %33, 0
  br i1 %cmp22, label %if.then.24, label %if.else.70

if.then.24:                                       ; preds = %if.end.19
  %34 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass25 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %34, i32 0, i32 40
  %35 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass25, align 8
  %tobool26 = icmp ne %struct.lmclass_s** %35, null
  br i1 %tobool26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.24
  %36 = load i32, i32* %classid, align 4
  %cmp27 = icmp sge i32 %36, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %37 = load i32, i32* %u, align 4
  %idxprom30 = sext i32 %37 to i64
  %38 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr31 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %38, i32 0, i32 4
  %39 = load i8**, i8*** %wordstr31, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %39, i64 %idxprom30
  %40 = load i8*, i8** %arrayidx32, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* %40)
  store i32 1, i32* %maperr, align 4
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true, %if.then.24
  %41 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %42 = load i32, i32* %w, align 4
  %call33 = call i32 @dict_filler_word(%struct.dict_t* %41, i32 %42)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %43 = load i32, i32* %u, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr37 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %44, i32 0, i32 4
  %45 = load i8**, i8*** %wordstr37, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %45, i64 %idxprom36
  %46 = load i8*, i8** %arrayidx38, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* %46)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.else
  %47 = load i32, i32* %w, align 4
  %48 = load i32, i32* %w, align 4
  %idxprom40 = sext i32 %48 to i64
  %49 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %49, i32 0, i32 4
  %50 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx41 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %50, i64 %idxprom40
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx41, i32 0, i32 4
  %51 = load i32, i32* %basewid, align 4
  %cmp42 = icmp ne i32 %47, %51
  br i1 %cmp42, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %if.end.39
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %52 = load i32, i32* %u, align 4
  %idxprom45 = sext i32 %52 to i64
  %53 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr46 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %53, i32 0, i32 4
  %54 = load i8**, i8*** %wordstr46, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %54, i64 %idxprom45
  %55 = load i8*, i8** %arrayidx47, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i32 0, i32 0), i8* %55)
  %56 = load i32, i32* %w, align 4
  %idxprom48 = sext i32 %56 to i64
  %57 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word49 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %57, i32 0, i32 4
  %58 = load %struct.dictword_t*, %struct.dictword_t** %word49, align 8
  %arrayidx50 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %58, i64 %idxprom48
  %basewid51 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx50, i32 0, i32 4
  %59 = load i32, i32* %basewid51, align 4
  store i32 %59, i32* %w, align 4
  %60 = load i32, i32* %w, align 4
  %61 = load i32, i32* %u, align 4
  %idxprom52 = sext i32 %61 to i64
  %62 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug53 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %62, i32 0, i32 9
  %63 = load %struct.ug_t*, %struct.ug_t** %ug53, align 8
  %arrayidx54 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %63, i64 %idxprom52
  %dictwid55 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx54, i32 0, i32 0
  store i32 %60, i32* %dictwid55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.44, %if.end.39
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.64, %if.end.56
  %64 = load i32, i32* %w, align 4
  %cmp58 = icmp sge i32 %64, 0
  br i1 %cmp58, label %for.body.60, label %for.end.68

for.body.60:                                      ; preds = %for.cond.57
  %65 = load i32, i32* %u, align 4
  %conv61 = trunc i32 %65 to i16
  %66 = load i32, i32* %w, align 4
  %idxprom62 = sext i32 %66 to i64
  %67 = load i16*, i16** %map, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %67, i64 %idxprom62
  store i16 %conv61, i16* %arrayidx63, align 2
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.60
  %68 = load i32, i32* %w, align 4
  %idxprom65 = sext i32 %68 to i64
  %69 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word66 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %69, i32 0, i32 4
  %70 = load %struct.dictword_t*, %struct.dictword_t** %word66, align 8
  %arrayidx67 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %70, i64 %idxprom65
  %alt = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx67, i32 0, i32 3
  %71 = load i32, i32* %alt, align 4
  store i32 %71, i32* %w, align 4
  br label %for.cond.57

for.end.68:                                       ; preds = %for.cond.57
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %if.then.29
  br label %if.end.152

if.else.70:                                       ; preds = %if.end.19
  %72 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass71 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %72, i32 0, i32 40
  %73 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass71, align 8
  %tobool72 = icmp ne %struct.lmclass_s** %73, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.149

land.lhs.true.73:                                 ; preds = %if.else.70
  %74 = load i32, i32* %classid, align 4
  %cmp74 = icmp sge i32 %74, 0
  br i1 %cmp74, label %if.then.76, label %if.else.149

if.then.76:                                       ; preds = %land.lhs.true.73
  %75 = load i32, i32* %classid, align 4
  %76 = load i32, i32* %u, align 4
  %idxprom77 = sext i32 %76 to i64
  %77 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %ug78 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %77, i32 0, i32 9
  %78 = load %struct.ug_t*, %struct.ug_t** %ug78, align 8
  %arrayidx79 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %78, i64 %idxprom77
  %dictwid80 = getelementptr inbounds %struct.ug_t, %struct.ug_t* %arrayidx79, i32 0, i32 0
  store i32 %75, i32* %dictwid80, align 4
  %79 = load i32, i32* %classid, align 4
  %sub = sub nsw i32 %79, 16777216
  %idxprom81 = sext i32 %sub to i64
  %80 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %lmclass82 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %80, i32 0, i32 40
  %81 = load %struct.lmclass_s**, %struct.lmclass_s*** %lmclass82, align 8
  %arrayidx83 = getelementptr inbounds %struct.lmclass_s*, %struct.lmclass_s** %81, i64 %idxprom81
  %82 = load %struct.lmclass_s*, %struct.lmclass_s** %arrayidx83, align 8
  %wordlist = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %82, i32 0, i32 1
  %83 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %wordlist, align 8
  store %struct.lmclass_word_s* %83, %struct.lmclass_word_s** %lmclass_word, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.148, %if.then.76
  %84 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %cmp84 = icmp ne %struct.lmclass_word_s* %84, null
  br i1 %cmp84, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %dictwid86 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %85, i32 0, i32 1
  %86 = load i32, i32* %dictwid86, align 4
  store i32 %86, i32* %dictid, align 4
  %87 = load i32, i32* %dictid, align 4
  %cmp87 = icmp sge i32 %87, 0
  br i1 %cmp87, label %if.then.89, label %if.else.146

if.then.89:                                       ; preds = %while.body
  %88 = load i32, i32* %dictid, align 4
  %idxprom90 = sext i32 %88 to i64
  %89 = load i16*, i16** %map, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %89, i64 %idxprom90
  %90 = load i16, i16* %arrayidx91, align 2
  %conv92 = zext i16 %90 to i32
  %cmp93 = icmp sge i32 %conv92, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.106

land.lhs.true.95:                                 ; preds = %if.then.89
  %91 = load i32, i32* %dictid, align 4
  %idxprom96 = sext i32 %91 to i64
  %92 = load i16*, i16** %map, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %92, i64 %idxprom96
  %93 = load i16, i16* %arrayidx97, align 2
  %conv98 = zext i16 %93 to i32
  %cmp99 = icmp ne i32 %conv98, 65535
  br i1 %cmp99, label %if.then.101, label %if.else.106

if.then.101:                                      ; preds = %land.lhs.true.95
  call void @_E__pr_info_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %94 = load i32, i32* %dictid, align 4
  %idxprom102 = sext i32 %94 to i64
  %95 = load i16*, i16** %map, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %95, i64 %idxprom102
  %96 = load i16, i16* %arrayidx103, align 2
  %conv104 = zext i16 %96 to i32
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %conv104)
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %97 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %word105 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %97, i32 0, i32 0
  %98 = load i8*, i8** %word105, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %98)
  store i32 1, i32* %maperr, align 4
  br label %if.end.145

if.else.106:                                      ; preds = %land.lhs.true.95, %if.then.89
  %99 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %100 = load i32, i32* %dictid, align 4
  %call107 = call i32 @dict_filler_word(%struct.dict_t* %99, i32 %100)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.else.106
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %101 = load i32, i32* %dictid, align 4
  %idxprom110 = sext i32 %101 to i64
  %102 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr111 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %102, i32 0, i32 4
  %103 = load i8**, i8*** %wordstr111, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %103, i64 %idxprom110
  %104 = load i8*, i8** %arrayidx112, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* %104)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.else.106
  %105 = load i32, i32* %dictid, align 4
  %106 = load i32, i32* %dictid, align 4
  %idxprom114 = sext i32 %106 to i64
  %107 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word115 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %107, i32 0, i32 4
  %108 = load %struct.dictword_t*, %struct.dictword_t** %word115, align 8
  %arrayidx116 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %108, i64 %idxprom114
  %basewid117 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx116, i32 0, i32 4
  %109 = load i32, i32* %basewid117, align 4
  %cmp118 = icmp ne i32 %105, %109
  br i1 %cmp118, label %if.then.120, label %if.end.128

if.then.120:                                      ; preds = %if.end.113
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %110 = load i32, i32* %dictid, align 4
  %idxprom121 = sext i32 %110 to i64
  %111 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %wordstr122 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %111, i32 0, i32 4
  %112 = load i8**, i8*** %wordstr122, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %112, i64 %idxprom121
  %113 = load i8*, i8** %arrayidx123, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i32 0, i32 0), i8* %113)
  %114 = load i32, i32* %dictid, align 4
  %idxprom124 = sext i32 %114 to i64
  %115 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word125 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %115, i32 0, i32 4
  %116 = load %struct.dictword_t*, %struct.dictword_t** %word125, align 8
  %arrayidx126 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %116, i64 %idxprom124
  %basewid127 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx126, i32 0, i32 4
  %117 = load i32, i32* %basewid127, align 4
  store i32 %117, i32* %dictid, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.120, %if.end.113
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.139, %if.end.128
  %118 = load i32, i32* %dictid, align 4
  %cmp130 = icmp sge i32 %118, 0
  br i1 %cmp130, label %for.body.132, label %for.end.144

for.body.132:                                     ; preds = %for.cond.129
  %119 = load i32, i32* %u, align 4
  %conv133 = trunc i32 %119 to i16
  %120 = load i32, i32* %dictid, align 4
  %idxprom134 = sext i32 %120 to i64
  %121 = load i16*, i16** %map, align 8
  %arrayidx135 = getelementptr inbounds i16, i16* %121, i64 %idxprom134
  store i16 %conv133, i16* %arrayidx135, align 2
  %122 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %LOGprob = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %122, i32 0, i32 2
  %123 = load i32, i32* %LOGprob, align 4
  %124 = load i32, i32* %lw.addr, align 4
  %mul = mul nsw i32 %123, %124
  %125 = load i32, i32* %dictid, align 4
  %idxprom136 = sext i32 %125 to i64
  %126 = load %struct.lm_s*, %struct.lm_s** %lm.addr, align 8
  %inclass_ugscore137 = getelementptr inbounds %struct.lm_s, %struct.lm_s* %126, i32 0, i32 42
  %127 = load i32*, i32** %inclass_ugscore137, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %127, i64 %idxprom136
  store i32 %mul, i32* %arrayidx138, align 4
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.132
  %128 = load i32, i32* %dictid, align 4
  %idxprom140 = sext i32 %128 to i64
  %129 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word141 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %129, i32 0, i32 4
  %130 = load %struct.dictword_t*, %struct.dictword_t** %word141, align 8
  %arrayidx142 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %130, i64 %idxprom140
  %alt143 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx142, i32 0, i32 3
  %131 = load i32, i32* %alt143, align 4
  store i32 %131, i32* %dictid, align 4
  br label %for.cond.129

for.end.144:                                      ; preds = %for.cond.129
  br label %if.end.145

if.end.145:                                       ; preds = %for.end.144, %if.then.101
  br label %if.end.148

if.else.146:                                      ; preds = %while.body
  %132 = load i32, i32* %n, align 4
  %inc147 = add nsw i32 %132, 1
  store i32 %inc147, i32* %n, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.146, %if.end.145
  %133 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %next = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %133, i32 0, i32 3
  %134 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %next, align 8
  store %struct.lmclass_word_s* %134, %struct.lmclass_word_s** %lmclass_word, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.151

if.else.149:                                      ; preds = %land.lhs.true.73, %if.else.70
  %135 = load i32, i32* %n, align 4
  %inc150 = add nsw i32 %135, 1
  store i32 %inc150, i32* %n, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %while.end
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.69
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %136 = load i32, i32* %u, align 4
  %inc154 = add nsw i32 %136, 1
  store i32 %inc154, i32* %u, align 4
  br label %for.cond.6

for.end.155:                                      ; preds = %for.cond.6
  %137 = load i32, i32* %n, align 4
  %cmp156 = icmp sgt i32 %137, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %for.end.155
  call void @_E__pr_info_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %138 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 %138)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %for.end.155
  %139 = load i32, i32* %maperr, align 4
  %tobool160 = icmp ne i32 %139, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.159
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end.159
  %140 = load i16*, i16** %map, align 8
  ret i16* %140
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i32 @dict_wordid(%struct.dict_t*, i8*) #1

declare i32 @lm_get_classid(%struct.lm_s*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

declare i32 @dict_filler_word(%struct.dict_t*, i32) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @wid_wordprob2alt(%struct.dict_t* %dict, %struct.wordprob_t* %wp, i32 %n) #0 {
entry:
  %dict.addr = alloca %struct.dict_t*, align 8
  %wp.addr = alloca %struct.wordprob_t*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %w = alloca i32, align 4
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  store %struct.wordprob_t* %wp, %struct.wordprob_t** %wp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %4, i64 %idxprom
  %wid = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %wid, align 4
  store i32 %5, i32* %w, align 4
  %6 = load i32, i32* %w, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %7, i32 0, i32 4
  %8 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx2 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %8, i64 %idxprom1
  %alt = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx2, i32 0, i32 3
  %9 = load i32, i32* %alt, align 4
  store i32 %9, i32* %w, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %w, align 4
  %cmp4 = icmp sge i32 %10, 0
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %w, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %13, i64 %idxprom6
  %wid8 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx7, i32 0, i32 0
  store i32 %11, i32* %wid8, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %15, i64 %idxprom9
  %prob = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx10, i32 0, i32 1
  %16 = load i32, i32* %prob, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.wordprob_t*, %struct.wordprob_t** %wp.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %18, i64 %idxprom11
  %prob13 = getelementptr inbounds %struct.wordprob_t, %struct.wordprob_t* %arrayidx12, i32 0, i32 1
  store i32 %16, i32* %prob13, align 4
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %20 = load i32, i32* %w, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word15 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %21, i32 0, i32 4
  %22 = load %struct.dictword_t*, %struct.dictword_t** %word15, align 8
  %arrayidx16 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %22, i64 %idxprom14
  %alt17 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx16, i32 0, i32 3
  %23 = load i32, i32* %alt17, align 4
  store i32 %23, i32* %w, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %25 = load i32, i32* %j, align 4
  ret i32 %25
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
