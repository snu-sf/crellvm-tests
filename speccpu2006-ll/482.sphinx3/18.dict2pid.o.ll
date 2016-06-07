; ModuleID = 'dict2pid.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dict2pid_t = type { i32**, i32***, i32**, i16**, i16**, i32*, i32, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.dict_t = type { %struct.mdef_t*, %struct.hash_table_t*, i8**, i32, %struct.dictword_t*, %struct.hash_table_t*, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.dictword_t = type { i8*, i8*, i32, i32, i32, i32, i32* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"dict2pid.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Building PID tables for dictionary\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Pronunciation-length(%s)= %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%d composite states; %d composite sseq\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"# INTERNAL (wd comssid ssid ssid ... ssid comssid)\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%30s \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"# LDIPH_LC (b r l ssid)\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%6s %6s %6s %5d\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"# SINGLE_LC (b l comssid)\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%6s %6s %5d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"# SSEQ %d (senid senid ...)\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"# COMSSEQ %d (comstate comstate ...)\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"# COMSTATE %d (senid senid ...)\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"# END\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Panic: length(ssidlist)= %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"#Composite sseq limit(%d) reached; increase MAX_S3SENID\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dict2pid_t* @dict2pid_build(%struct.mdef_t* %mdef, %struct.dict_t* %dict) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %dict2pid = alloca %struct.dict2pid_t*, align 8
  %internal = alloca i32*, align 8
  %ldiph = alloca i32**, align 8
  %rdiph = alloca i32**, align 8
  %single = alloca i32*, align 8
  %pronlen = alloca i32, align 4
  %hs = alloca %struct.hash_table_t*, align 8
  %hp = alloca %struct.hash_table_t*, align 8
  %g = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %sen = alloca i16*, align 8
  %he = alloca %struct.hash_entry_s*, align 8
  %cslen = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %w = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  %call = call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 256)
  %0 = bitcast i8* %call to %struct.dict2pid_t*
  store %struct.dict2pid_t* %0, %struct.dict2pid_t** %dict2pid, align 8
  %1 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %1, i32 0, i32 7
  %2 = load i32, i32* %n_word, align 4
  %conv = sext i32 %2 to i64
  %call1 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 257)
  %3 = bitcast i8* %call1 to i32**
  %4 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %internal2 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %4, i32 0, i32 0
  store i32** %3, i32*** %internal2, align 8
  %5 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %5, i32 0, i32 0
  %6 = load i32, i32* %n_ciphone, align 4
  %7 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone3 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 0
  %8 = load i32, i32* %n_ciphone3, align 4
  %9 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone4 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 0
  %10 = load i32, i32* %n_ciphone4, align 4
  %call5 = call i8*** @__ckd_calloc_3d__(i32 %6, i32 %8, i32 %10, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 261)
  %11 = bitcast i8*** %call5 to i32***
  %12 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %ldiph_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %12, i32 0, i32 1
  store i32*** %11, i32**** %ldiph_lc, align 8
  %13 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone6 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %13, i32 0, i32 0
  %14 = load i32, i32* %n_ciphone6, align 4
  %15 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone7 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %15, i32 0, i32 0
  %16 = load i32, i32* %n_ciphone7, align 4
  %call8 = call i8** @__ckd_calloc_2d__(i32 %14, i32 %16, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 264)
  %17 = bitcast i8** %call8 to i32**
  %18 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %single_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %18, i32 0, i32 2
  store i32** %17, i32*** %single_lc, align 8
  %19 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %19, i32 0, i32 6
  store i32 0, i32* %n_comstate, align 4
  %20 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %20, i32 0, i32 7
  store i32 0, i32* %n_comsseq, align 4
  %21 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone9 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %21, i32 0, i32 0
  %22 = load i32, i32* %n_ciphone9, align 4
  %23 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone10 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %23, i32 0, i32 0
  %24 = load i32, i32* %n_ciphone10, align 4
  %mul = mul nsw i32 %22, %24
  %25 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %25, i32 0, i32 2
  %26 = load i32, i32* %n_emit_state, align 4
  %mul11 = mul nsw i32 %mul, %26
  %call12 = call %struct.hash_table_t* @hash_new(i32 %mul11, i32 0)
  store %struct.hash_table_t* %call12, %struct.hash_table_t** %hs, align 8
  %27 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone13 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %27, i32 0, i32 0
  %28 = load i32, i32* %n_ciphone13, align 4
  %29 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone14 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %29, i32 0, i32 0
  %30 = load i32, i32* %n_ciphone14, align 4
  %mul15 = mul nsw i32 %28, %30
  %call16 = call %struct.hash_table_t* @hash_new(i32 %mul15, i32 0)
  store %struct.hash_table_t* %call16, %struct.hash_table_t** %hp, align 8
  store i32 0, i32* %w, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %w, align 4
  %32 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %n_word17 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %32, i32 0, i32 7
  %33 = load i32, i32* %n_word17, align 4
  %cmp = icmp slt i32 %31, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %w, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %35, i32 0, i32 4
  %36 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %36, i64 %idxprom
  %pronlen19 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 2
  %37 = load i32, i32* %pronlen19, align 4
  store i32 %37, i32* %pronlen, align 4
  %38 = load i32, i32* %pronlen, align 4
  %cmp20 = icmp slt i32 %38, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %39 = load i32, i32* %w, align 4
  %idxprom22 = sext i32 %39 to i64
  %40 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word23 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %40, i32 0, i32 4
  %41 = load %struct.dictword_t*, %struct.dictword_t** %word23, align 8
  %arrayidx24 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %41, i64 %idxprom22
  %word25 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx24, i32 0, i32 0
  %42 = load i8*, i8** %word25, align 8
  %43 = load i32, i32* %pronlen, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* %42, i32 %43)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %44 = load i32, i32* %pronlen, align 4
  %45 = load i32, i32* %n, align 4
  %add = add nsw i32 %45, %44
  store i32 %add, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %w, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %n, align 4
  %conv26 = sext i32 %47 to i64
  %call27 = call i8* @__ckd_calloc__(i64 %conv26, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 278)
  %48 = bitcast i8* %call27 to i32*
  store i32* %48, i32** %internal, align 8
  %49 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone28 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %49, i32 0, i32 0
  %50 = load i32, i32* %n_ciphone28, align 4
  %51 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone29 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %51, i32 0, i32 0
  %52 = load i32, i32* %n_ciphone29, align 4
  %call30 = call i8** @__ckd_calloc_2d__(i32 %50, i32 %52, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 281)
  %53 = bitcast i8** %call30 to i32**
  store i32** %53, i32*** %ldiph, align 8
  %54 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone31 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %54, i32 0, i32 0
  %55 = load i32, i32* %n_ciphone31, align 4
  %56 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone32 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %56, i32 0, i32 0
  %57 = load i32, i32* %n_ciphone32, align 4
  %call33 = call i8** @__ckd_calloc_2d__(i32 %55, i32 %57, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 282)
  %58 = bitcast i8** %call33 to i32**
  store i32** %58, i32*** %rdiph, align 8
  %59 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone34 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %59, i32 0, i32 0
  %60 = load i32, i32* %n_ciphone34, align 4
  %conv35 = sext i32 %60 to i64
  %call36 = call i8* @__ckd_calloc__(i64 %conv35, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 283)
  %61 = bitcast i8* %call36 to i32*
  store i32* %61, i32** %single, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.80, %for.end
  %62 = load i32, i32* %b, align 4
  %63 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone38 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %63, i32 0, i32 0
  %64 = load i32, i32* %n_ciphone38, align 4
  %cmp39 = icmp slt i32 %62, %64
  br i1 %cmp39, label %for.body.41, label %for.end.82

for.body.41:                                      ; preds = %for.cond.37
  store i32 0, i32* %l, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.75, %for.body.41
  %65 = load i32, i32* %l, align 4
  %66 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone43 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %66, i32 0, i32 0
  %67 = load i32, i32* %n_ciphone43, align 4
  %cmp44 = icmp slt i32 %65, %67
  br i1 %cmp44, label %for.body.46, label %for.end.77

for.body.46:                                      ; preds = %for.cond.42
  store i32 0, i32* %r, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.59, %for.body.46
  %68 = load i32, i32* %r, align 4
  %69 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone48 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %69, i32 0, i32 0
  %70 = load i32, i32* %n_ciphone48, align 4
  %cmp49 = icmp slt i32 %68, %70
  br i1 %cmp49, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.47
  %71 = load i32, i32* %l, align 4
  %idxprom52 = sext i32 %71 to i64
  %72 = load i32, i32* %r, align 4
  %idxprom53 = sext i32 %72 to i64
  %73 = load i32, i32* %b, align 4
  %idxprom54 = sext i32 %73 to i64
  %74 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %ldiph_lc55 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %74, i32 0, i32 1
  %75 = load i32***, i32**** %ldiph_lc55, align 8
  %arrayidx56 = getelementptr inbounds i32**, i32*** %75, i64 %idxprom54
  %76 = load i32**, i32*** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %76, i64 %idxprom53
  %77 = load i32*, i32** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %77, i64 %idxprom52
  store i32 -1, i32* %arrayidx58, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.51
  %78 = load i32, i32* %r, align 4
  %inc60 = add nsw i32 %78, 1
  store i32 %inc60, i32* %r, align 4
  br label %for.cond.47

for.end.61:                                       ; preds = %for.cond.47
  %79 = load i32, i32* %l, align 4
  %idxprom62 = sext i32 %79 to i64
  %80 = load i32, i32* %b, align 4
  %idxprom63 = sext i32 %80 to i64
  %81 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %single_lc64 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %81, i32 0, i32 2
  %82 = load i32**, i32*** %single_lc64, align 8
  %arrayidx65 = getelementptr inbounds i32*, i32** %82, i64 %idxprom63
  %83 = load i32*, i32** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %83, i64 %idxprom62
  store i32 -1, i32* %arrayidx66, align 4
  %84 = load i32, i32* %l, align 4
  %idxprom67 = sext i32 %84 to i64
  %85 = load i32, i32* %b, align 4
  %idxprom68 = sext i32 %85 to i64
  %86 = load i32**, i32*** %ldiph, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %86, i64 %idxprom68
  %87 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %87, i64 %idxprom67
  store i32 -1, i32* %arrayidx70, align 4
  %88 = load i32, i32* %l, align 4
  %idxprom71 = sext i32 %88 to i64
  %89 = load i32, i32* %b, align 4
  %idxprom72 = sext i32 %89 to i64
  %90 = load i32**, i32*** %rdiph, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %90, i64 %idxprom72
  %91 = load i32*, i32** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %91, i64 %idxprom71
  store i32 -1, i32* %arrayidx74, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.61
  %92 = load i32, i32* %l, align 4
  %inc76 = add nsw i32 %92, 1
  store i32 %inc76, i32* %l, align 4
  br label %for.cond.42

for.end.77:                                       ; preds = %for.cond.42
  %93 = load i32, i32* %b, align 4
  %idxprom78 = sext i32 %93 to i64
  %94 = load i32*, i32** %single, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %94, i64 %idxprom78
  store i32 -1, i32* %arrayidx79, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.77
  %95 = load i32, i32* %b, align 4
  %inc81 = add nsw i32 %95, 1
  store i32 %inc81, i32* %b, align 4
  br label %for.cond.37

for.end.82:                                       ; preds = %for.cond.37
  store i32 0, i32* %w, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.234, %for.end.82
  %96 = load i32, i32* %w, align 4
  %97 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %n_word84 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %97, i32 0, i32 7
  %98 = load i32, i32* %n_word84, align 4
  %cmp85 = icmp slt i32 %96, %98
  br i1 %cmp85, label %for.body.87, label %for.end.236

for.body.87:                                      ; preds = %for.cond.83
  %99 = load i32*, i32** %internal, align 8
  %100 = load i32, i32* %w, align 4
  %idxprom88 = sext i32 %100 to i64
  %101 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %internal89 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %101, i32 0, i32 0
  %102 = load i32**, i32*** %internal89, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %102, i64 %idxprom88
  store i32* %99, i32** %arrayidx90, align 8
  %103 = load i32, i32* %w, align 4
  %idxprom91 = sext i32 %103 to i64
  %104 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word92 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %104, i32 0, i32 4
  %105 = load %struct.dictword_t*, %struct.dictword_t** %word92, align 8
  %arrayidx93 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %105, i64 %idxprom91
  %pronlen94 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx93, i32 0, i32 2
  %106 = load i32, i32* %pronlen94, align 4
  store i32 %106, i32* %pronlen, align 4
  %107 = load i32, i32* %pronlen, align 4
  %cmp95 = icmp sge i32 %107, 2
  br i1 %cmp95, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %for.body.87
  %108 = load i32, i32* %w, align 4
  %idxprom98 = sext i32 %108 to i64
  %109 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word99 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %109, i32 0, i32 4
  %110 = load %struct.dictword_t*, %struct.dictword_t** %word99, align 8
  %arrayidx100 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %110, i64 %idxprom98
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx100, i32 0, i32 1
  %111 = load i8*, i8** %ciphone, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %111, i64 0
  %112 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %112 to i32
  store i32 %conv102, i32* %b, align 4
  %113 = load i32, i32* %w, align 4
  %idxprom103 = sext i32 %113 to i64
  %114 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word104 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %114, i32 0, i32 4
  %115 = load %struct.dictword_t*, %struct.dictword_t** %word104, align 8
  %arrayidx105 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %115, i64 %idxprom103
  %ciphone106 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx105, i32 0, i32 1
  %116 = load i8*, i8** %ciphone106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %117 to i32
  store i32 %conv108, i32* %r, align 4
  %118 = load i32, i32* %r, align 4
  %idxprom109 = sext i32 %118 to i64
  %119 = load i32, i32* %b, align 4
  %idxprom110 = sext i32 %119 to i64
  %120 = load i32**, i32*** %ldiph, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %120, i64 %idxprom110
  %121 = load i32*, i32** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %121, i64 %idxprom109
  %122 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp slt i32 %122, 0
  br i1 %cmp113, label %if.then.115, label %if.end.143

if.then.115:                                      ; preds = %if.then.97
  %123 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %124 = load i32, i32* %b, align 4
  %125 = load i32, i32* %r, align 4
  %call116 = call %struct.gnode_s* @ldiph_comsseq(%struct.mdef_t* %123, i32 %124, i32 %125)
  store %struct.gnode_s* %call116, %struct.gnode_s** %g, align 8
  %126 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %127 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %128 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %129 = load %struct.hash_table_t*, %struct.hash_table_t** %hs, align 8
  %130 = load %struct.hash_table_t*, %struct.hash_table_t** %hp, align 8
  %call117 = call i32 @ssidlist2comsseq(%struct.gnode_s* %126, %struct.mdef_t* %127, %struct.dict2pid_t* %128, %struct.hash_table_t* %129, %struct.hash_table_t* %130)
  %131 = load i32, i32* %r, align 4
  %idxprom118 = sext i32 %131 to i64
  %132 = load i32, i32* %b, align 4
  %idxprom119 = sext i32 %132 to i64
  %133 = load i32**, i32*** %ldiph, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %133, i64 %idxprom119
  %134 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %134, i64 %idxprom118
  store i32 %call117, i32* %arrayidx121, align 4
  %135 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %135)
  store i32 0, i32* %l, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.140, %if.then.115
  %136 = load i32, i32* %l, align 4
  %137 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone123 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %137, i32 0, i32 0
  %138 = load i32, i32* %n_ciphone123, align 4
  %cmp124 = icmp slt i32 %136, %138
  br i1 %cmp124, label %for.body.126, label %for.end.142

for.body.126:                                     ; preds = %for.cond.122
  %139 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %140 = load i32, i32* %b, align 4
  %conv127 = trunc i32 %140 to i8
  %141 = load i32, i32* %l, align 4
  %conv128 = trunc i32 %141 to i8
  %142 = load i32, i32* %r, align 4
  %conv129 = trunc i32 %142 to i8
  %call130 = call i32 @mdef_phone_id_nearest(%struct.mdef_t* %139, i8 signext %conv127, i8 signext %conv128, i8 signext %conv129, i32 0)
  store i32 %call130, i32* %p, align 4
  %143 = load i32, i32* %p, align 4
  %idxprom131 = sext i32 %143 to i64
  %144 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %144, i32 0, i32 8
  %145 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx132 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %145, i64 %idxprom131
  %ssid = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx132, i32 0, i32 0
  %146 = load i32, i32* %ssid, align 4
  %147 = load i32, i32* %l, align 4
  %idxprom133 = sext i32 %147 to i64
  %148 = load i32, i32* %r, align 4
  %idxprom134 = sext i32 %148 to i64
  %149 = load i32, i32* %b, align 4
  %idxprom135 = sext i32 %149 to i64
  %150 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %ldiph_lc136 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %150, i32 0, i32 1
  %151 = load i32***, i32**** %ldiph_lc136, align 8
  %arrayidx137 = getelementptr inbounds i32**, i32*** %151, i64 %idxprom135
  %152 = load i32**, i32*** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %152, i64 %idxprom134
  %153 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %153, i64 %idxprom133
  store i32 %146, i32* %arrayidx139, align 4
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.126
  %154 = load i32, i32* %l, align 4
  %inc141 = add nsw i32 %154, 1
  store i32 %inc141, i32* %l, align 4
  br label %for.cond.122

for.end.142:                                      ; preds = %for.cond.122
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %if.then.97
  %155 = load i32, i32* %r, align 4
  %idxprom144 = sext i32 %155 to i64
  %156 = load i32, i32* %b, align 4
  %idxprom145 = sext i32 %156 to i64
  %157 = load i32**, i32*** %ldiph, align 8
  %arrayidx146 = getelementptr inbounds i32*, i32** %157, i64 %idxprom145
  %158 = load i32*, i32** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %158, i64 %idxprom144
  %159 = load i32, i32* %arrayidx147, align 4
  %160 = load i32*, i32** %internal, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %arrayidx148, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.171, %if.end.143
  %161 = load i32, i32* %i, align 4
  %162 = load i32, i32* %pronlen, align 4
  %sub = sub nsw i32 %162, 1
  %cmp150 = icmp slt i32 %161, %sub
  br i1 %cmp150, label %for.body.152, label %for.end.173

for.body.152:                                     ; preds = %for.cond.149
  %163 = load i32, i32* %b, align 4
  store i32 %163, i32* %l, align 4
  %164 = load i32, i32* %r, align 4
  store i32 %164, i32* %b, align 4
  %165 = load i32, i32* %i, align 4
  %add153 = add nsw i32 %165, 1
  %idxprom154 = sext i32 %add153 to i64
  %166 = load i32, i32* %w, align 4
  %idxprom155 = sext i32 %166 to i64
  %167 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word156 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %167, i32 0, i32 4
  %168 = load %struct.dictword_t*, %struct.dictword_t** %word156, align 8
  %arrayidx157 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %168, i64 %idxprom155
  %ciphone158 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx157, i32 0, i32 1
  %169 = load i8*, i8** %ciphone158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %169, i64 %idxprom154
  %170 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %170 to i32
  store i32 %conv160, i32* %r, align 4
  %171 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %172 = load i32, i32* %b, align 4
  %conv161 = trunc i32 %172 to i8
  %173 = load i32, i32* %l, align 4
  %conv162 = trunc i32 %173 to i8
  %174 = load i32, i32* %r, align 4
  %conv163 = trunc i32 %174 to i8
  %call164 = call i32 @mdef_phone_id_nearest(%struct.mdef_t* %171, i8 signext %conv161, i8 signext %conv162, i8 signext %conv163, i32 3)
  store i32 %call164, i32* %p, align 4
  %175 = load i32, i32* %p, align 4
  %idxprom165 = sext i32 %175 to i64
  %176 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone166 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %176, i32 0, i32 8
  %177 = load %struct.phone_t*, %struct.phone_t** %phone166, align 8
  %arrayidx167 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %177, i64 %idxprom165
  %ssid168 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx167, i32 0, i32 0
  %178 = load i32, i32* %ssid168, align 4
  %179 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %179 to i64
  %180 = load i32*, i32** %internal, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %180, i64 %idxprom169
  store i32 %178, i32* %arrayidx170, align 4
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.152
  %181 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %181, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.149

for.end.173:                                      ; preds = %for.cond.149
  %182 = load i32, i32* %b, align 4
  store i32 %182, i32* %l, align 4
  %183 = load i32, i32* %r, align 4
  store i32 %183, i32* %b, align 4
  %184 = load i32, i32* %l, align 4
  %idxprom174 = sext i32 %184 to i64
  %185 = load i32, i32* %b, align 4
  %idxprom175 = sext i32 %185 to i64
  %186 = load i32**, i32*** %rdiph, align 8
  %arrayidx176 = getelementptr inbounds i32*, i32** %186, i64 %idxprom175
  %187 = load i32*, i32** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %187, i64 %idxprom174
  %188 = load i32, i32* %arrayidx177, align 4
  %cmp178 = icmp slt i32 %188, 0
  br i1 %cmp178, label %if.then.180, label %if.end.187

if.then.180:                                      ; preds = %for.end.173
  %189 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %190 = load i32, i32* %b, align 4
  %191 = load i32, i32* %l, align 4
  %call181 = call %struct.gnode_s* @rdiph_comsseq(%struct.mdef_t* %189, i32 %190, i32 %191)
  store %struct.gnode_s* %call181, %struct.gnode_s** %g, align 8
  %192 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %193 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %194 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %195 = load %struct.hash_table_t*, %struct.hash_table_t** %hs, align 8
  %196 = load %struct.hash_table_t*, %struct.hash_table_t** %hp, align 8
  %call182 = call i32 @ssidlist2comsseq(%struct.gnode_s* %192, %struct.mdef_t* %193, %struct.dict2pid_t* %194, %struct.hash_table_t* %195, %struct.hash_table_t* %196)
  %197 = load i32, i32* %l, align 4
  %idxprom183 = sext i32 %197 to i64
  %198 = load i32, i32* %b, align 4
  %idxprom184 = sext i32 %198 to i64
  %199 = load i32**, i32*** %rdiph, align 8
  %arrayidx185 = getelementptr inbounds i32*, i32** %199, i64 %idxprom184
  %200 = load i32*, i32** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %200, i64 %idxprom183
  store i32 %call182, i32* %arrayidx186, align 4
  %201 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %201)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.180, %for.end.173
  %202 = load i32, i32* %l, align 4
  %idxprom188 = sext i32 %202 to i64
  %203 = load i32, i32* %b, align 4
  %idxprom189 = sext i32 %203 to i64
  %204 = load i32**, i32*** %rdiph, align 8
  %arrayidx190 = getelementptr inbounds i32*, i32** %204, i64 %idxprom189
  %205 = load i32*, i32** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %205, i64 %idxprom188
  %206 = load i32, i32* %arrayidx191, align 4
  %207 = load i32, i32* %pronlen, align 4
  %sub192 = sub nsw i32 %207, 1
  %idxprom193 = sext i32 %sub192 to i64
  %208 = load i32*, i32** %internal, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %208, i64 %idxprom193
  store i32 %206, i32* %arrayidx194, align 4
  br label %if.end.233

if.else:                                          ; preds = %for.body.87
  %209 = load i32, i32* %pronlen, align 4
  %cmp195 = icmp eq i32 %209, 1
  br i1 %cmp195, label %if.then.197, label %if.end.232

if.then.197:                                      ; preds = %if.else
  %210 = load i32, i32* %w, align 4
  %idxprom198 = sext i32 %210 to i64
  %211 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word199 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %211, i32 0, i32 4
  %212 = load %struct.dictword_t*, %struct.dictword_t** %word199, align 8
  %arrayidx200 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %212, i64 %idxprom198
  %ciphone201 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx200, i32 0, i32 1
  %213 = load i8*, i8** %ciphone201, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %213, i64 0
  %214 = load i8, i8* %arrayidx202, align 1
  %conv203 = sext i8 %214 to i32
  store i32 %conv203, i32* %b, align 4
  %215 = load i32, i32* %b, align 4
  %idxprom204 = sext i32 %215 to i64
  %216 = load i32*, i32** %single, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %216, i64 %idxprom204
  %217 = load i32, i32* %arrayidx205, align 4
  %cmp206 = icmp slt i32 %217, 0
  br i1 %cmp206, label %if.then.208, label %if.end.228

if.then.208:                                      ; preds = %if.then.197
  %218 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %219 = load i32, i32* %b, align 4
  %call209 = call %struct.gnode_s* @single_comsseq(%struct.mdef_t* %218, i32 %219)
  store %struct.gnode_s* %call209, %struct.gnode_s** %g, align 8
  %220 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %221 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %222 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %223 = load %struct.hash_table_t*, %struct.hash_table_t** %hs, align 8
  %224 = load %struct.hash_table_t*, %struct.hash_table_t** %hp, align 8
  %call210 = call i32 @ssidlist2comsseq(%struct.gnode_s* %220, %struct.mdef_t* %221, %struct.dict2pid_t* %222, %struct.hash_table_t* %223, %struct.hash_table_t* %224)
  %225 = load i32, i32* %b, align 4
  %idxprom211 = sext i32 %225 to i64
  %226 = load i32*, i32** %single, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %226, i64 %idxprom211
  store i32 %call210, i32* %arrayidx212, align 4
  %227 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %227)
  store i32 0, i32* %l, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.225, %if.then.208
  %228 = load i32, i32* %l, align 4
  %229 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone214 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %229, i32 0, i32 0
  %230 = load i32, i32* %n_ciphone214, align 4
  %cmp215 = icmp slt i32 %228, %230
  br i1 %cmp215, label %for.body.217, label %for.end.227

for.body.217:                                     ; preds = %for.cond.213
  %231 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %232 = load i32, i32* %b, align 4
  %233 = load i32, i32* %l, align 4
  %call218 = call %struct.gnode_s* @single_lc_comsseq(%struct.mdef_t* %231, i32 %232, i32 %233)
  store %struct.gnode_s* %call218, %struct.gnode_s** %g, align 8
  %234 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %235 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %236 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %237 = load %struct.hash_table_t*, %struct.hash_table_t** %hs, align 8
  %238 = load %struct.hash_table_t*, %struct.hash_table_t** %hp, align 8
  %call219 = call i32 @ssidlist2comsseq(%struct.gnode_s* %234, %struct.mdef_t* %235, %struct.dict2pid_t* %236, %struct.hash_table_t* %237, %struct.hash_table_t* %238)
  %239 = load i32, i32* %l, align 4
  %idxprom220 = sext i32 %239 to i64
  %240 = load i32, i32* %b, align 4
  %idxprom221 = sext i32 %240 to i64
  %241 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %single_lc222 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %241, i32 0, i32 2
  %242 = load i32**, i32*** %single_lc222, align 8
  %arrayidx223 = getelementptr inbounds i32*, i32** %242, i64 %idxprom221
  %243 = load i32*, i32** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %243, i64 %idxprom220
  store i32 %call219, i32* %arrayidx224, align 4
  %244 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %244)
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.217
  %245 = load i32, i32* %l, align 4
  %inc226 = add nsw i32 %245, 1
  store i32 %inc226, i32* %l, align 4
  br label %for.cond.213

for.end.227:                                      ; preds = %for.cond.213
  br label %if.end.228

if.end.228:                                       ; preds = %for.end.227, %if.then.197
  %246 = load i32, i32* %b, align 4
  %idxprom229 = sext i32 %246 to i64
  %247 = load i32*, i32** %single, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %247, i64 %idxprom229
  %248 = load i32, i32* %arrayidx230, align 4
  %249 = load i32*, i32** %internal, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 %248, i32* %arrayidx231, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.228, %if.else
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.end.187
  %250 = load i32, i32* %pronlen, align 4
  %251 = load i32*, i32** %internal, align 8
  %idx.ext = sext i32 %250 to i64
  %add.ptr = getelementptr inbounds i32, i32* %251, i64 %idx.ext
  store i32* %add.ptr, i32** %internal, align 8
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.233
  %252 = load i32, i32* %w, align 4
  %inc235 = add nsw i32 %252, 1
  store i32 %inc235, i32* %w, align 4
  br label %for.cond.83

for.end.236:                                      ; preds = %for.cond.83
  %253 = load i32**, i32*** %ldiph, align 8
  %254 = bitcast i32** %253 to i8**
  call void @ckd_free_2d(i8** %254)
  %255 = load i32**, i32*** %rdiph, align 8
  %256 = bitcast i32** %255 to i8**
  call void @ckd_free_2d(i8** %256)
  %257 = load i32*, i32** %single, align 8
  %258 = bitcast i32* %257 to i8*
  call void @ckd_free(i8* %258)
  %259 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate237 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %259, i32 0, i32 6
  %260 = load i32, i32* %n_comstate237, align 4
  %conv238 = sext i32 %260 to i64
  %call239 = call i8* @__ckd_calloc__(i64 %conv238, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 357)
  %261 = bitcast i8* %call239 to i32*
  store i32* %261, i32** %cslen, align 8
  %262 = load %struct.hash_table_t*, %struct.hash_table_t** %hs, align 8
  %call240 = call %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %262, i32* %n)
  store %struct.gnode_s* %call240, %struct.gnode_s** %g, align 8
  store i32 0, i32* %n, align 4
  %263 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  store %struct.gnode_s* %263, %struct.gnode_s** %gn, align 8
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.258, %for.end.236
  %264 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %264, null
  br i1 %tobool, label %for.body.242, label %for.end.259

for.body.242:                                     ; preds = %for.cond.241
  %265 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %265, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %266 = load i8*, i8** %ptr, align 8
  %267 = bitcast i8* %266 to %struct.hash_entry_s*
  store %struct.hash_entry_s* %267, %struct.hash_entry_s** %he, align 8
  %268 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %key = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %268, i32 0, i32 0
  %269 = load i8*, i8** %key, align 8
  %270 = bitcast i8* %269 to i16*
  store i16* %270, i16** %sen, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.250, %for.body.242
  %271 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %271 to i64
  %272 = load i16*, i16** %sen, align 8
  %arrayidx245 = getelementptr inbounds i16, i16* %272, i64 %idxprom244
  %273 = load i16, i16* %arrayidx245, align 2
  %conv246 = sext i16 %273 to i32
  %cmp247 = icmp sge i32 %conv246, 0
  br i1 %cmp247, label %for.body.249, label %for.end.252

for.body.249:                                     ; preds = %for.cond.243
  br label %for.inc.250

for.inc.250:                                      ; preds = %for.body.249
  %274 = load i32, i32* %i, align 4
  %inc251 = add nsw i32 %274, 1
  store i32 %inc251, i32* %i, align 4
  br label %for.cond.243

for.end.252:                                      ; preds = %for.cond.243
  %275 = load i32, i32* %i, align 4
  %add253 = add nsw i32 %275, 1
  %276 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %val = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %276, i32 0, i32 2
  %277 = load i32, i32* %val, align 4
  %idxprom254 = sext i32 %277 to i64
  %278 = load i32*, i32** %cslen, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %278, i64 %idxprom254
  store i32 %add253, i32* %arrayidx255, align 4
  %279 = load i32, i32* %i, align 4
  %add256 = add nsw i32 %279, 1
  %280 = load i32, i32* %n, align 4
  %add257 = add nsw i32 %280, %add256
  store i32 %add257, i32* %n, align 4
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.end.252
  %281 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %281, i32 0, i32 1
  %282 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %282, %struct.gnode_s** %gn, align 8
  br label %for.cond.241

for.end.259:                                      ; preds = %for.cond.241
  %283 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate260 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %283, i32 0, i32 6
  %284 = load i32, i32* %n_comstate260, align 4
  %conv261 = sext i32 %284 to i64
  %call262 = call i8* @__ckd_calloc__(i64 %conv261, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 370)
  %285 = bitcast i8* %call262 to i16**
  %286 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %286, i32 0, i32 3
  store i16** %285, i16*** %comstate, align 8
  %287 = load i32, i32* %n, align 4
  %conv263 = sext i32 %287 to i64
  %call264 = call i8* @__ckd_calloc__(i64 %conv263, i64 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 371)
  %288 = bitcast i8* %call264 to i16*
  store i16* %288, i16** %sen, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.277, %for.end.259
  %289 = load i32, i32* %i, align 4
  %290 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate266 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %290, i32 0, i32 6
  %291 = load i32, i32* %n_comstate266, align 4
  %cmp267 = icmp slt i32 %289, %291
  br i1 %cmp267, label %for.body.269, label %for.end.279

for.body.269:                                     ; preds = %for.cond.265
  %292 = load i16*, i16** %sen, align 8
  %293 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %293 to i64
  %294 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comstate271 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %294, i32 0, i32 3
  %295 = load i16**, i16*** %comstate271, align 8
  %arrayidx272 = getelementptr inbounds i16*, i16** %295, i64 %idxprom270
  store i16* %292, i16** %arrayidx272, align 8
  %296 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %296 to i64
  %297 = load i32*, i32** %cslen, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %297, i64 %idxprom273
  %298 = load i32, i32* %arrayidx274, align 4
  %299 = load i16*, i16** %sen, align 8
  %idx.ext275 = sext i32 %298 to i64
  %add.ptr276 = getelementptr inbounds i16, i16* %299, i64 %idx.ext275
  store i16* %add.ptr276, i16** %sen, align 8
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.269
  %300 = load i32, i32* %i, align 4
  %inc278 = add nsw i32 %300, 1
  store i32 %inc278, i32* %i, align 4
  br label %for.cond.265

for.end.279:                                      ; preds = %for.cond.265
  %301 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  store %struct.gnode_s* %301, %struct.gnode_s** %gn, align 8
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.303, %for.end.279
  %302 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool281 = icmp ne %struct.gnode_s* %302, null
  br i1 %tobool281, label %for.body.282, label %for.end.305

for.body.282:                                     ; preds = %for.cond.280
  %303 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data283 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %303, i32 0, i32 0
  %ptr284 = bitcast %union.anytype_s* %data283 to i8**
  %304 = load i8*, i8** %ptr284, align 8
  %305 = bitcast i8* %304 to %struct.hash_entry_s*
  store %struct.hash_entry_s* %305, %struct.hash_entry_s** %he, align 8
  %306 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %key285 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %306, i32 0, i32 0
  %307 = load i8*, i8** %key285, align 8
  %308 = bitcast i8* %307 to i16*
  store i16* %308, i16** %sen, align 8
  %309 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %val286 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %309, i32 0, i32 2
  %310 = load i32, i32* %val286, align 4
  store i32 %310, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.300, %for.body.282
  %311 = load i32, i32* %j, align 4
  %312 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %312 to i64
  %313 = load i32*, i32** %cslen, align 8
  %arrayidx289 = getelementptr inbounds i32, i32* %313, i64 %idxprom288
  %314 = load i32, i32* %arrayidx289, align 4
  %cmp290 = icmp slt i32 %311, %314
  br i1 %cmp290, label %for.body.292, label %for.end.302

for.body.292:                                     ; preds = %for.cond.287
  %315 = load i32, i32* %j, align 4
  %idxprom293 = sext i32 %315 to i64
  %316 = load i16*, i16** %sen, align 8
  %arrayidx294 = getelementptr inbounds i16, i16* %316, i64 %idxprom293
  %317 = load i16, i16* %arrayidx294, align 2
  %318 = load i32, i32* %j, align 4
  %idxprom295 = sext i32 %318 to i64
  %319 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %319 to i64
  %320 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comstate297 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %320, i32 0, i32 3
  %321 = load i16**, i16*** %comstate297, align 8
  %arrayidx298 = getelementptr inbounds i16*, i16** %321, i64 %idxprom296
  %322 = load i16*, i16** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i16, i16* %322, i64 %idxprom295
  store i16 %317, i16* %arrayidx299, align 2
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.292
  %323 = load i32, i32* %j, align 4
  %inc301 = add nsw i32 %323, 1
  store i32 %inc301, i32* %j, align 4
  br label %for.cond.287

for.end.302:                                      ; preds = %for.cond.287
  %324 = load i16*, i16** %sen, align 8
  %325 = bitcast i16* %324 to i8*
  call void @ckd_free(i8* %325)
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.end.302
  %326 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next304 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %326, i32 0, i32 1
  %327 = load %struct.gnode_s*, %struct.gnode_s** %next304, align 8
  store %struct.gnode_s* %327, %struct.gnode_s** %gn, align 8
  br label %for.cond.280

for.end.305:                                      ; preds = %for.cond.280
  %328 = load i32*, i32** %cslen, align 8
  %329 = bitcast i32* %328 to i8*
  call void @ckd_free(i8* %329)
  %330 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %330)
  %331 = load %struct.hash_table_t*, %struct.hash_table_t** %hs, align 8
  call void @hash_free(%struct.hash_table_t* %331)
  %332 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comsseq306 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %332, i32 0, i32 7
  %333 = load i32, i32* %n_comsseq306, align 4
  %conv307 = sext i32 %333 to i64
  %call308 = call i8* @__ckd_calloc__(i64 %conv307, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 394)
  %334 = bitcast i8* %call308 to i16**
  %335 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %335, i32 0, i32 4
  store i16** %334, i16*** %comsseq, align 8
  %336 = load %struct.hash_table_t*, %struct.hash_table_t** %hp, align 8
  %call309 = call %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %336, i32* %n)
  store %struct.gnode_s* %call309, %struct.gnode_s** %g, align 8
  %337 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  store %struct.gnode_s* %337, %struct.gnode_s** %gn, align 8
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.320, %for.end.305
  %338 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool311 = icmp ne %struct.gnode_s* %338, null
  br i1 %tobool311, label %for.body.312, label %for.end.322

for.body.312:                                     ; preds = %for.cond.310
  %339 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data313 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %339, i32 0, i32 0
  %ptr314 = bitcast %union.anytype_s* %data313 to i8**
  %340 = load i8*, i8** %ptr314, align 8
  %341 = bitcast i8* %340 to %struct.hash_entry_s*
  store %struct.hash_entry_s* %341, %struct.hash_entry_s** %he, align 8
  %342 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %val315 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %342, i32 0, i32 2
  %343 = load i32, i32* %val315, align 4
  store i32 %343, i32* %i, align 4
  %344 = load %struct.hash_entry_s*, %struct.hash_entry_s** %he, align 8
  %key316 = getelementptr inbounds %struct.hash_entry_s, %struct.hash_entry_s* %344, i32 0, i32 0
  %345 = load i8*, i8** %key316, align 8
  %346 = bitcast i8* %345 to i16*
  %347 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %347 to i64
  %348 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comsseq318 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %348, i32 0, i32 4
  %349 = load i16**, i16*** %comsseq318, align 8
  %arrayidx319 = getelementptr inbounds i16*, i16** %349, i64 %idxprom317
  store i16* %346, i16** %arrayidx319, align 8
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.body.312
  %350 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next321 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %350, i32 0, i32 1
  %351 = load %struct.gnode_s*, %struct.gnode_s** %next321, align 8
  store %struct.gnode_s* %351, %struct.gnode_s** %gn, align 8
  br label %for.cond.310

for.end.322:                                      ; preds = %for.cond.310
  %352 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  call void @glist_free(%struct.gnode_s* %352)
  %353 = load %struct.hash_table_t*, %struct.hash_table_t** %hp, align 8
  call void @hash_free(%struct.hash_table_t* %353)
  %354 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate323 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %354, i32 0, i32 6
  %355 = load i32, i32* %n_comstate323, align 4
  %conv324 = sext i32 %355 to i64
  %call325 = call i8* @__ckd_calloc__(i64 %conv324, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 408)
  %356 = bitcast i8* %call325 to i32*
  %357 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comwt = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %357, i32 0, i32 5
  store i32* %356, i32** %comwt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.326

for.cond.326:                                     ; preds = %for.inc.350, %for.end.322
  %358 = load i32, i32* %i, align 4
  %359 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate327 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %359, i32 0, i32 6
  %360 = load i32, i32* %n_comstate327, align 4
  %cmp328 = icmp slt i32 %358, %360
  br i1 %cmp328, label %for.body.330, label %for.end.352

for.body.330:                                     ; preds = %for.cond.326
  %361 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %361 to i64
  %362 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comstate332 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %362, i32 0, i32 3
  %363 = load i16**, i16*** %comstate332, align 8
  %arrayidx333 = getelementptr inbounds i16*, i16** %363, i64 %idxprom331
  %364 = load i16*, i16** %arrayidx333, align 8
  store i16* %364, i16** %sen, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.341, %for.body.330
  %365 = load i32, i32* %j, align 4
  %idxprom335 = sext i32 %365 to i64
  %366 = load i16*, i16** %sen, align 8
  %arrayidx336 = getelementptr inbounds i16, i16* %366, i64 %idxprom335
  %367 = load i16, i16* %arrayidx336, align 2
  %conv337 = sext i16 %367 to i32
  %cmp338 = icmp sge i32 %conv337, 0
  br i1 %cmp338, label %for.body.340, label %for.end.343

for.body.340:                                     ; preds = %for.cond.334
  br label %for.inc.341

for.inc.341:                                      ; preds = %for.body.340
  %368 = load i32, i32* %j, align 4
  %inc342 = add nsw i32 %368, 1
  store i32 %inc342, i32* %j, align 4
  br label %for.cond.334

for.end.343:                                      ; preds = %for.cond.334
  %369 = load i32, i32* %j, align 4
  %conv344 = sitofp i32 %369 to double
  %call345 = call i32 @logs3(double %conv344)
  %sub346 = sub nsw i32 0, %call345
  %370 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %370 to i64
  %371 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %comwt348 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %371, i32 0, i32 5
  %372 = load i32*, i32** %comwt348, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %372, i64 %idxprom347
  store i32 %sub346, i32* %arrayidx349, align 4
  br label %for.inc.350

for.inc.350:                                      ; preds = %for.end.343
  %373 = load i32, i32* %i, align 4
  %inc351 = add nsw i32 %373, 1
  store i32 %inc351, i32* %i, align 4
  br label %for.cond.326

for.end.352:                                      ; preds = %for.cond.326
  call void @_E__pr_info_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 422, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %374 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comstate353 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %374, i32 0, i32 6
  %375 = load i32, i32* %n_comstate353, align 4
  %376 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  %n_comsseq354 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %376, i32 0, i32 7
  %377 = load i32, i32* %n_comsseq354, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %375, i32 %377)
  %378 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid, align 8
  ret %struct.dict2pid_t* %378
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #1

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

declare %struct.hash_table_t* @hash_new(i32, i32) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.gnode_s* @ldiph_comsseq(%struct.mdef_t* %mdef, i32 %b, i32 %r) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %b.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i32, align 4
  %ssid = alloca i32, align 4
  %g = alloca %struct.gnode_s*, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store %struct.gnode_s* null, %struct.gnode_s** %g, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %l, align 4
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %4 = load i32, i32* %b.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32, i32* %l, align 4
  %conv1 = trunc i32 %5 to i8
  %6 = load i32, i32* %r.addr, align 4
  %conv2 = trunc i32 %6 to i8
  %call = call i32 @mdef_phone_id(%struct.mdef_t* %3, i8 signext %conv, i8 signext %conv1, i8 signext %conv2, i32 0)
  store i32 %call, i32* %p, align 4
  %7 = load i32, i32* %p, align 4
  %cmp3 = icmp sge i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %p, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 8
  %10 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %10, i64 %idxprom
  %ssid5 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %ssid5, align 4
  store i32 %11, i32* %ssid, align 4
  %12 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %13 = load i32, i32* %ssid, align 4
  %call6 = call i32 @glist_chkdup_int32(%struct.gnode_s* %12, i32 %13)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %14 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %15 = load i32, i32* %ssid, align 4
  %call8 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %14, i32 %15)
  store %struct.gnode_s* %call8, %struct.gnode_s** %g, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load i32, i32* %l, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %tobool10 = icmp ne %struct.gnode_s* %17, null
  br i1 %tobool10, label %if.end.17, label %if.then.11

if.then.11:                                       ; preds = %for.end
  %18 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %19 = load i32, i32* %b.addr, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone13 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %20, i32 0, i32 8
  %21 = load %struct.phone_t*, %struct.phone_t** %phone13, align 8
  %arrayidx14 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %21, i64 %idxprom12
  %ssid15 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx14, i32 0, i32 0
  %22 = load i32, i32* %ssid15, align 4
  %call16 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %18, i32 %22)
  store %struct.gnode_s* %call16, %struct.gnode_s** %g, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %for.end
  %23 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  ret %struct.gnode_s* %23
}

; Function Attrs: nounwind uwtable
define internal i32 @ssidlist2comsseq(%struct.gnode_s* %g, %struct.mdef_t* %mdef, %struct.dict2pid_t* %dict2pid, %struct.hash_table_t* %hs, %struct.hash_table_t* %hp) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %dict2pid.addr = alloca %struct.dict2pid_t*, align 8
  %hs.addr = alloca %struct.hash_table_t*, align 8
  %hp.addr = alloca %struct.hash_table_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %ssid = alloca i32, align 4
  %sen = alloca i16**, align 8
  %comsenid = alloca i16*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store %struct.dict2pid_t* %dict2pid, %struct.dict2pid_t** %dict2pid.addr, align 8
  store %struct.hash_table_t* %hs, %struct.hash_table_t** %hs.addr, align 8
  store %struct.hash_table_t* %hp, %struct.hash_table_t** %hp.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %call = call i32 @glist_count(%struct.gnode_s* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %3, i32 0, i32 2
  %4 = load i32, i32* %n_emit_state, align 4
  %conv = sext i32 %4 to i64
  %call1 = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 187)
  %5 = bitcast i8* %call1 to i16**
  store i16** %5, i16*** %sen, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %7, i32 0, i32 2
  %8 = load i32, i32* %n_emit_state2, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %n, align 4
  %add = add nsw i32 %9, 1
  %conv5 = sext i32 %add to i64
  %call6 = call i8* @__ckd_calloc__(i64 %conv5, i64 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 189)
  %10 = bitcast i8* %call6 to i16*
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i16**, i16*** %sen, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %12, i64 %idxprom
  store i16* %10, i16** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i16**, i16*** %sen, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %14, i64 %idxprom7
  %15 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %15, i64 0
  store i16 -1, i16* %arrayidx9, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state10 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %17, i32 0, i32 2
  %18 = load i32, i32* %n_emit_state10, align 4
  %conv11 = sext i32 %18 to i64
  %call12 = call i8* @__ckd_calloc__(i64 %conv11, i64 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 193)
  %19 = bitcast i8* %call12 to i16*
  store i16* %19, i16** %comsenid, align 8
  %20 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %20, %struct.gnode_s** %gn, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.66, %for.end
  %21 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %21, null
  br i1 %tobool, label %for.body.14, label %for.end.67

for.body.14:                                      ; preds = %for.cond.13
  %22 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %22, i32 0, i32 0
  %int32 = bitcast %union.anytype_s* %data to i32*
  %23 = load i32, i32* %int32, align 4
  store i32 %23, i32* %ssid, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.63, %for.body.14
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state16 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %25, i32 0, i32 2
  %26 = load i32, i32* %n_emit_state16, align 4
  %cmp17 = icmp slt i32 %24, %26
  br i1 %cmp17, label %for.body.19, label %for.end.65

for.body.19:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load i32, i32* %ssid, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %29, i32 0, i32 9
  %30 = load i16**, i16*** %sseq, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %30, i64 %idxprom21
  %31 = load i16*, i16** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %31, i64 %idxprom20
  %32 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %32 to i32
  store i32 %conv24, i32* %s, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.41, %for.body.19
  %33 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load i16**, i16*** %sen, align 8
  %arrayidx28 = getelementptr inbounds i16*, i16** %35, i64 %idxprom27
  %36 = load i16*, i16** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %36, i64 %idxprom26
  %37 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %37 to i32
  %cmp31 = icmp sge i32 %conv30, 0
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.25
  %38 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %39 to i64
  %40 = load i16**, i16*** %sen, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %40, i64 %idxprom34
  %41 = load i16*, i16** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %41, i64 %idxprom33
  %42 = load i16, i16* %arrayidx36, align 2
  %conv37 = sext i16 %42 to i32
  %43 = load i32, i32* %s, align 4
  %cmp38 = icmp ne i32 %conv37, %43
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.25
  %44 = phi i1 [ false, %for.cond.25 ], [ %cmp38, %land.rhs ]
  br i1 %44, label %for.body.40, label %for.end.43

for.body.40:                                      ; preds = %land.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.40
  %45 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond.25

for.end.43:                                       ; preds = %land.end
  %46 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %46 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %47 to i64
  %48 = load i16**, i16*** %sen, align 8
  %arrayidx46 = getelementptr inbounds i16*, i16** %48, i64 %idxprom45
  %49 = load i16*, i16** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %49, i64 %idxprom44
  %50 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %50 to i32
  %cmp49 = icmp slt i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.62

if.then.51:                                       ; preds = %for.end.43
  %51 = load i32, i32* %s, align 4
  %conv52 = trunc i32 %51 to i16
  %52 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load i16**, i16*** %sen, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %54, i64 %idxprom54
  %55 = load i16*, i16** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %55, i64 %idxprom53
  store i16 %conv52, i16* %arrayidx56, align 2
  %56 = load i32, i32* %j, align 4
  %add57 = add nsw i32 %56, 1
  %idxprom58 = sext i32 %add57 to i64
  %57 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load i16**, i16*** %sen, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %58, i64 %idxprom59
  %59 = load i16*, i16** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %59, i64 %idxprom58
  store i16 -1, i16* %arrayidx61, align 2
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.51, %for.end.43
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %60 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %60, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.15

for.end.65:                                       ; preds = %for.cond.15
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %61 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %61, i32 0, i32 1
  %62 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %62, %struct.gnode_s** %gn, align 8
  br label %for.cond.13

for.end.67:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.102, %for.end.67
  %63 = load i32, i32* %i, align 4
  %64 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state69 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %64, i32 0, i32 2
  %65 = load i32, i32* %n_emit_state69, align 4
  %cmp70 = icmp slt i32 %63, %65
  br i1 %cmp70, label %for.body.72, label %for.end.104

for.body.72:                                      ; preds = %for.cond.68
  store i32 0, i32* %j, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.82, %for.body.72
  %66 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %67 to i64
  %68 = load i16**, i16*** %sen, align 8
  %arrayidx76 = getelementptr inbounds i16*, i16** %68, i64 %idxprom75
  %69 = load i16*, i16** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %69, i64 %idxprom74
  %70 = load i16, i16* %arrayidx77, align 2
  %conv78 = sext i16 %70 to i32
  %cmp79 = icmp sge i32 %conv78, 0
  br i1 %cmp79, label %for.body.81, label %for.end.84

for.body.81:                                      ; preds = %for.cond.73
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.81
  %71 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %71, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.73

for.end.84:                                       ; preds = %for.cond.73
  %72 = load %struct.hash_table_t*, %struct.hash_table_t** %hs.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %73 to i64
  %74 = load i16**, i16*** %sen, align 8
  %arrayidx86 = getelementptr inbounds i16*, i16** %74, i64 %idxprom85
  %75 = load i16*, i16** %arrayidx86, align 8
  %76 = bitcast i16* %75 to i8*
  %77 = load i32, i32* %j, align 4
  %conv87 = sext i32 %77 to i64
  %mul = mul i64 %conv87, 2
  %conv88 = trunc i64 %mul to i32
  %78 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %78, i32 0, i32 6
  %79 = load i32, i32* %n_comstate, align 4
  %call89 = call i32 @hash_enter_bkey(%struct.hash_table_t* %72, i8* %76, i32 %conv88, i32 %79)
  store i32 %call89, i32* %j, align 4
  %80 = load i32, i32* %j, align 4
  %81 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comstate90 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %81, i32 0, i32 6
  %82 = load i32, i32* %n_comstate90, align 4
  %cmp91 = icmp eq i32 %80, %82
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %for.end.84
  %83 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comstate94 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %83, i32 0, i32 6
  %84 = load i32, i32* %n_comstate94, align 4
  %inc95 = add nsw i32 %84, 1
  store i32 %inc95, i32* %n_comstate94, align 4
  br label %if.end.98

if.else:                                          ; preds = %for.end.84
  %85 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %85 to i64
  %86 = load i16**, i16*** %sen, align 8
  %arrayidx97 = getelementptr inbounds i16*, i16** %86, i64 %idxprom96
  %87 = load i16*, i16** %arrayidx97, align 8
  %88 = bitcast i16* %87 to i8*
  call void @ckd_free(i8* %88)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.93
  %89 = load i32, i32* %j, align 4
  %conv99 = trunc i32 %89 to i16
  %90 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %90 to i64
  %91 = load i16*, i16** %comsenid, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %91, i64 %idxprom100
  store i16 %conv99, i16* %arrayidx101, align 2
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.98
  %92 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %92, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.68

for.end.104:                                      ; preds = %for.cond.68
  %93 = load i16**, i16*** %sen, align 8
  %94 = bitcast i16** %93 to i8*
  call void @ckd_free(i8* %94)
  %95 = load %struct.hash_table_t*, %struct.hash_table_t** %hp.addr, align 8
  %96 = load i16*, i16** %comsenid, align 8
  %97 = bitcast i16* %96 to i8*
  %98 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state105 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %98, i32 0, i32 2
  %99 = load i32, i32* %n_emit_state105, align 4
  %conv106 = sext i32 %99 to i64
  %mul107 = mul i64 %conv106, 2
  %conv108 = trunc i64 %mul107 to i32
  %100 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %100, i32 0, i32 7
  %101 = load i32, i32* %n_comsseq, align 4
  %call109 = call i32 @hash_enter_bkey(%struct.hash_table_t* %95, i8* %97, i32 %conv108, i32 %101)
  store i32 %call109, i32* %j, align 4
  %102 = load i32, i32* %j, align 4
  %103 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comsseq110 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %103, i32 0, i32 7
  %104 = load i32, i32* %n_comsseq110, align 4
  %cmp111 = icmp eq i32 %102, %104
  br i1 %cmp111, label %if.then.113, label %if.else.122

if.then.113:                                      ; preds = %for.end.104
  %105 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comsseq114 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %105, i32 0, i32 7
  %106 = load i32, i32* %n_comsseq114, align 4
  %inc115 = add nsw i32 %106, 1
  store i32 %inc115, i32* %n_comsseq114, align 4
  %107 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comsseq116 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %107, i32 0, i32 7
  %108 = load i32, i32* %n_comsseq116, align 4
  %cmp117 = icmp sge i32 %108, 32766
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.then.113
  call void @_E__pr_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %109 = load %struct.dict2pid_t*, %struct.dict2pid_t** %dict2pid.addr, align 8
  %n_comsseq120 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %109, i32 0, i32 7
  %110 = load i32, i32* %n_comsseq120, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i32 0, i32 0), i32 %110)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.then.113
  br label %if.end.123

if.else.122:                                      ; preds = %for.end.104
  %111 = load i16*, i16** %comsenid, align 8
  %112 = bitcast i16* %111 to i8*
  call void @ckd_free(i8* %112)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.122, %if.end.121
  %113 = load i32, i32* %j, align 4
  ret i32 %113
}

declare void @glist_free(%struct.gnode_s*) #1

declare i32 @mdef_phone_id_nearest(%struct.mdef_t*, i8 signext, i8 signext, i8 signext, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.gnode_s* @rdiph_comsseq(%struct.mdef_t* %mdef, i32 %b, i32 %l) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %b.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  %ssid = alloca i32, align 4
  %g = alloca %struct.gnode_s*, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store %struct.gnode_s* null, %struct.gnode_s** %g, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %4 = load i32, i32* %b.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32, i32* %l.addr, align 4
  %conv1 = trunc i32 %5 to i8
  %6 = load i32, i32* %r, align 4
  %conv2 = trunc i32 %6 to i8
  %call = call i32 @mdef_phone_id(%struct.mdef_t* %3, i8 signext %conv, i8 signext %conv1, i8 signext %conv2, i32 1)
  store i32 %call, i32* %p, align 4
  %7 = load i32, i32* %p, align 4
  %cmp3 = icmp sge i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %p, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 8
  %10 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %10, i64 %idxprom
  %ssid5 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %ssid5, align 4
  store i32 %11, i32* %ssid, align 4
  %12 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %13 = load i32, i32* %ssid, align 4
  %call6 = call i32 @glist_chkdup_int32(%struct.gnode_s* %12, i32 %13)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %14 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %15 = load i32, i32* %ssid, align 4
  %call8 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %14, i32 %15)
  store %struct.gnode_s* %call8, %struct.gnode_s** %g, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load i32, i32* %r, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %tobool10 = icmp ne %struct.gnode_s* %17, null
  br i1 %tobool10, label %if.end.17, label %if.then.11

if.then.11:                                       ; preds = %for.end
  %18 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %19 = load i32, i32* %b.addr, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone13 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %20, i32 0, i32 8
  %21 = load %struct.phone_t*, %struct.phone_t** %phone13, align 8
  %arrayidx14 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %21, i64 %idxprom12
  %ssid15 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx14, i32 0, i32 0
  %22 = load i32, i32* %ssid15, align 4
  %call16 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %18, i32 %22)
  store %struct.gnode_s* %call16, %struct.gnode_s** %g, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %for.end
  %23 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  ret %struct.gnode_s* %23
}

; Function Attrs: nounwind uwtable
define internal %struct.gnode_s* @single_comsseq(%struct.mdef_t* %mdef, i32 %b) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %b.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  %ssid = alloca i32, align 4
  %g = alloca %struct.gnode_s*, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store %struct.gnode_s* null, %struct.gnode_s** %g, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %l, align 4
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %r, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %r, align 4
  %4 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone2 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %4, i32 0, i32 0
  %5 = load i32, i32* %n_ciphone2, align 4
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %6 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %7 = load i32, i32* %b.addr, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i32, i32* %l, align 4
  %conv5 = trunc i32 %8 to i8
  %9 = load i32, i32* %r, align 4
  %conv6 = trunc i32 %9 to i8
  %call = call i32 @mdef_phone_id(%struct.mdef_t* %6, i8 signext %conv, i8 signext %conv5, i8 signext %conv6, i32 2)
  store i32 %call, i32* %p, align 4
  %10 = load i32, i32* %p, align 4
  %cmp7 = icmp sge i32 %10, 0
  br i1 %cmp7, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body.4
  %11 = load i32, i32* %p, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %12, i32 0, i32 8
  %13 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %13, i64 %idxprom
  %ssid9 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %ssid9, align 4
  store i32 %14, i32* %ssid, align 4
  %15 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %16 = load i32, i32* %ssid, align 4
  %call10 = call i32 @glist_chkdup_int32(%struct.gnode_s* %15, i32 %16)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %17 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %18 = load i32, i32* %ssid, align 4
  %call12 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %17, i32 %18)
  store %struct.gnode_s* %call12, %struct.gnode_s** %g, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %19 = load i32, i32* %r, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %20 = load i32, i32* %l, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, i32* %l, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %21 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %tobool17 = icmp ne %struct.gnode_s* %21, null
  br i1 %tobool17, label %if.end.24, label %if.then.18

if.then.18:                                       ; preds = %for.end.16
  %22 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %23 = load i32, i32* %b.addr, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone20 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %24, i32 0, i32 8
  %25 = load %struct.phone_t*, %struct.phone_t** %phone20, align 8
  %arrayidx21 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %25, i64 %idxprom19
  %ssid22 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx21, i32 0, i32 0
  %26 = load i32, i32* %ssid22, align 4
  %call23 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %22, i32 %26)
  store %struct.gnode_s* %call23, %struct.gnode_s** %g, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %for.end.16
  %27 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  ret %struct.gnode_s* %27
}

; Function Attrs: nounwind uwtable
define internal %struct.gnode_s* @single_lc_comsseq(%struct.mdef_t* %mdef, i32 %b, i32 %l) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %b.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  %ssid = alloca i32, align 4
  %g = alloca %struct.gnode_s*, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store %struct.gnode_s* null, %struct.gnode_s** %g, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_ciphone, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %4 = load i32, i32* %b.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i32, i32* %l.addr, align 4
  %conv1 = trunc i32 %5 to i8
  %6 = load i32, i32* %r, align 4
  %conv2 = trunc i32 %6 to i8
  %call = call i32 @mdef_phone_id(%struct.mdef_t* %3, i8 signext %conv, i8 signext %conv1, i8 signext %conv2, i32 2)
  store i32 %call, i32* %p, align 4
  %7 = load i32, i32* %p, align 4
  %cmp3 = icmp sge i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %p, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %9, i32 0, i32 8
  %10 = load %struct.phone_t*, %struct.phone_t** %phone, align 8
  %arrayidx = getelementptr inbounds %struct.phone_t, %struct.phone_t* %10, i64 %idxprom
  %ssid5 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %ssid5, align 4
  store i32 %11, i32* %ssid, align 4
  %12 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %13 = load i32, i32* %ssid, align 4
  %call6 = call i32 @glist_chkdup_int32(%struct.gnode_s* %12, i32 %13)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %14 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %15 = load i32, i32* %ssid, align 4
  %call8 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %14, i32 %15)
  store %struct.gnode_s* %call8, %struct.gnode_s** %g, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load i32, i32* %r, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %tobool10 = icmp ne %struct.gnode_s* %17, null
  br i1 %tobool10, label %if.end.17, label %if.then.11

if.then.11:                                       ; preds = %for.end
  %18 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  %19 = load i32, i32* %b.addr, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %phone13 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %20, i32 0, i32 8
  %21 = load %struct.phone_t*, %struct.phone_t** %phone13, align 8
  %arrayidx14 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %21, i64 %idxprom12
  %ssid15 = getelementptr inbounds %struct.phone_t, %struct.phone_t* %arrayidx14, i32 0, i32 0
  %22 = load i32, i32* %ssid15, align 4
  %call16 = call %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %18, i32 %22)
  store %struct.gnode_s* %call16, %struct.gnode_s** %g, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %for.end
  %23 = load %struct.gnode_s*, %struct.gnode_s** %g, align 8
  ret %struct.gnode_s* %23
}

declare void @ckd_free_2d(i8**) #1

declare void @ckd_free(i8*) #1

declare %struct.gnode_s* @hash_tolist(%struct.hash_table_t*, i32*) #1

declare void @hash_free(%struct.hash_table_t*) #1

declare i32 @logs3(double) #1

; Function Attrs: nounwind uwtable
define void @dict2pid_comsenscr(%struct.dict2pid_t* %d2p, i32* %senscr, i32* %comsenscr) #0 {
entry:
  %d2p.addr = alloca %struct.dict2pid_t*, align 8
  %senscr.addr = alloca i32*, align 8
  %comsenscr.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %best = alloca i32, align 4
  %comstate = alloca i16*, align 8
  %k = alloca i16, align 2
  store %struct.dict2pid_t* %d2p, %struct.dict2pid_t** %d2p.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  store i32* %comsenscr, i32** %comsenscr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %n_comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %1, i32 0, i32 6
  %2 = load i32, i32* %n_comstate, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comstate1 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %4, i32 0, i32 3
  %5 = load i16**, i16*** %comstate1, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %5, i64 %idxprom
  %6 = load i16*, i16** %arrayidx, align 8
  store i16* %6, i16** %comstate, align 8
  %7 = load i16*, i16** %comstate, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx2, align 2
  %idxprom3 = sext i16 %8 to i64
  %9 = load i32*, i32** %senscr.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %best, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i16*, i16** %comstate, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %12, i64 %idxprom6
  %13 = load i16, i16* %arrayidx7, align 2
  store i16 %13, i16* %k, align 2
  %14 = load i16, i16* %k, align 2
  %conv = sext i16 %14 to i32
  %cmp8 = icmp slt i32 %conv, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.5
  br label %for.end

if.end:                                           ; preds = %for.cond.5
  %15 = load i32, i32* %best, align 4
  %16 = load i16, i16* %k, align 2
  %idxprom10 = sext i16 %16 to i64
  %17 = load i32*, i32** %senscr.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %15, %18
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %19 = load i16, i16* %k, align 2
  %idxprom15 = sext i16 %19 to i64
  %20 = load i32*, i32** %senscr.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  store i32 %21, i32* %best, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %if.then
  %23 = load i32, i32* %best, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comwt = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %25, i32 0, i32 5
  %26 = load i32*, i32** %comwt, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  %27 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %23, %27
  %28 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load i32*, i32** %comsenscr.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %29, i64 %idxprom20
  store i32 %add, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %30, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @dict2pid_comsseq2sen_active(%struct.dict2pid_t* %d2p, %struct.mdef_t* %mdef, i32* %comssid, i32* %sen) #0 {
entry:
  %d2p.addr = alloca %struct.dict2pid_t*, align 8
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %comssid.addr = alloca i32*, align 8
  %sen.addr = alloca i32*, align 8
  %ss = alloca i32, align 4
  %cs = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %csp = alloca i16*, align 8
  %sp = alloca i16*, align 8
  store %struct.dict2pid_t* %d2p, %struct.dict2pid_t** %d2p.addr, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i32* %comssid, i32** %comssid.addr, align 8
  store i32* %sen, i32** %sen.addr, align 8
  store i32 0, i32* %ss, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %ss, align 4
  %1 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %1, i32 0, i32 7
  %2 = load i32, i32* %n_comsseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ss, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %comssid.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %ss, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %7, i32 0, i32 4
  %8 = load i16**, i16*** %comsseq, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %8, i64 %idxprom1
  %9 = load i16*, i16** %arrayidx2, align 8
  store i16* %9, i16** %csp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.21, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %11, i32 0, i32 2
  %12 = load i32, i32* %n_emit_state, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body.5, label %for.end.23

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i16*, i16** %csp, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %14, i64 %idxprom6
  %15 = load i16, i16* %arrayidx7, align 2
  %conv = sext i16 %15 to i32
  store i32 %conv, i32* %cs, align 4
  %16 = load i32, i32* %cs, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %17, i32 0, i32 3
  %18 = load i16**, i16*** %comstate, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %18, i64 %idxprom8
  %19 = load i16*, i16** %arrayidx9, align 8
  store i16* %19, i16** %sp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.5
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load i16*, i16** %sp, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %21, i64 %idxprom11
  %22 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %22 to i32
  %cmp14 = icmp sge i32 %conv13, 0
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.10
  %23 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load i16*, i16** %sp, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %24, i64 %idxprom17
  %25 = load i16, i16* %arrayidx18, align 2
  %idxprom19 = sext i16 %25 to i64
  %26 = load i32*, i32** %sen.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom19
  store i32 1, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %28, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.3

for.end.23:                                       ; preds = %for.cond.3
  br label %if.end

if.end:                                           ; preds = %for.end.23, %for.body
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %29 = load i32, i32* %ss, align 4
  %inc25 = add nsw i32 %29, 1
  store i32 %inc25, i32* %ss, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @dict2pid_dump(%struct._IO_FILE* %fp, %struct.dict2pid_t* %d2p, %struct.mdef_t* %mdef, %struct.dict_t* %dict) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %d2p.addr = alloca %struct.dict2pid_t*, align 8
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %dict.addr = alloca %struct.dict_t*, align 8
  %w = alloca i32, align 4
  %p = alloca i32, align 4
  %pronlen = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.dict2pid_t* %d2p, %struct.dict2pid_t** %d2p.addr, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store %struct.dict_t* %dict, %struct.dict_t** %dict.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i32, i32* %w, align 4
  %2 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %2, i32 0, i32 7
  %3 = load i32, i32* %n_word, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i32, i32* %w, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %6, i32 0, i32 4
  %7 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %7, i64 %idxprom
  %word1 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 0
  %8 = load i8*, i8** %word1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %8)
  %9 = load i32, i32* %w, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.dict_t*, %struct.dict_t** %dict.addr, align 8
  %word4 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %10, i32 0, i32 4
  %11 = load %struct.dictword_t*, %struct.dictword_t** %word4, align 8
  %arrayidx5 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %11, i64 %idxprom3
  %pronlen6 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx5, i32 0, i32 2
  %12 = load i32, i32* %pronlen6, align 4
  store i32 %12, i32* %pronlen, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %p, align 4
  %14 = load i32, i32* %pronlen, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i32, i32* %p, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i32, i32* %w, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %internal = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %18, i32 0, i32 0
  %19 = load i32**, i32*** %internal, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %19, i64 %idxprom11
  %20 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  %21 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %22 = load i32, i32* %p, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %24 = load i32, i32* %w, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %w, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %b, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.58, %for.end.18
  %27 = load i32, i32* %b, align 4
  %28 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %28, i32 0, i32 0
  %29 = load i32, i32* %n_ciphone, align 4
  %cmp22 = icmp slt i32 %27, %29
  br i1 %cmp22, label %for.body.23, label %for.end.60

for.body.23:                                      ; preds = %for.cond.21
  store i32 0, i32* %r, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.55, %for.body.23
  %30 = load i32, i32* %r, align 4
  %31 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone25 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %31, i32 0, i32 0
  %32 = load i32, i32* %n_ciphone25, align 4
  %cmp26 = icmp slt i32 %30, %32
  br i1 %cmp26, label %for.body.27, label %for.end.57

for.body.27:                                      ; preds = %for.cond.24
  store i32 0, i32* %l, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.52, %for.body.27
  %33 = load i32, i32* %l, align 4
  %34 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone29 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %34, i32 0, i32 0
  %35 = load i32, i32* %n_ciphone29, align 4
  %cmp30 = icmp slt i32 %33, %35
  br i1 %cmp30, label %for.body.31, label %for.end.54

for.body.31:                                      ; preds = %for.cond.28
  %36 = load i32, i32* %l, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load i32, i32* %r, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i32, i32* %b, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %ldiph_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %39, i32 0, i32 1
  %40 = load i32***, i32**** %ldiph_lc, align 8
  %arrayidx35 = getelementptr inbounds i32**, i32*** %40, i64 %idxprom34
  %41 = load i32**, i32*** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %41, i64 %idxprom33
  %42 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %42, i64 %idxprom32
  %43 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp sge i32 %43, 0
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.31
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %45 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %46 = load i32, i32* %b, align 4
  %conv = trunc i32 %46 to i8
  %call39 = call i8* @mdef_ciphone_str(%struct.mdef_t* %45, i8 signext %conv)
  %47 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %48 = load i32, i32* %r, align 4
  %conv40 = trunc i32 %48 to i8
  %call41 = call i8* @mdef_ciphone_str(%struct.mdef_t* %47, i8 signext %conv40)
  %49 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %50 = load i32, i32* %l, align 4
  %conv42 = trunc i32 %50 to i8
  %call43 = call i8* @mdef_ciphone_str(%struct.mdef_t* %49, i8 signext %conv42)
  %51 = load i32, i32* %l, align 4
  %idxprom44 = sext i32 %51 to i64
  %52 = load i32, i32* %r, align 4
  %idxprom45 = sext i32 %52 to i64
  %53 = load i32, i32* %b, align 4
  %idxprom46 = sext i32 %53 to i64
  %54 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %ldiph_lc47 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %54, i32 0, i32 1
  %55 = load i32***, i32**** %ldiph_lc47, align 8
  %arrayidx48 = getelementptr inbounds i32**, i32*** %55, i64 %idxprom46
  %56 = load i32**, i32*** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32*, i32** %56, i64 %idxprom45
  %57 = load i32*, i32** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %57, i64 %idxprom44
  %58 = load i32, i32* %arrayidx50, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* %call39, i8* %call41, i8* %call43, i32 %58)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.31
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end
  %59 = load i32, i32* %l, align 4
  %inc53 = add nsw i32 %59, 1
  store i32 %inc53, i32* %l, align 4
  br label %for.cond.28

for.end.54:                                       ; preds = %for.cond.28
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %60 = load i32, i32* %r, align 4
  %inc56 = add nsw i32 %60, 1
  store i32 %inc56, i32* %r, align 4
  br label %for.cond.24

for.end.57:                                       ; preds = %for.cond.24
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %61 = load i32, i32* %b, align 4
  %inc59 = add nsw i32 %61, 1
  store i32 %inc59, i32* %b, align 4
  br label %for.cond.21

for.end.60:                                       ; preds = %for.cond.21
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %b, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.94, %for.end.60
  %64 = load i32, i32* %b, align 4
  %65 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone64 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %65, i32 0, i32 0
  %66 = load i32, i32* %n_ciphone64, align 4
  %cmp65 = icmp slt i32 %64, %66
  br i1 %cmp65, label %for.body.67, label %for.end.96

for.body.67:                                      ; preds = %for.cond.63
  store i32 0, i32* %l, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.91, %for.body.67
  %67 = load i32, i32* %l, align 4
  %68 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_ciphone69 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %68, i32 0, i32 0
  %69 = load i32, i32* %n_ciphone69, align 4
  %cmp70 = icmp slt i32 %67, %69
  br i1 %cmp70, label %for.body.72, label %for.end.93

for.body.72:                                      ; preds = %for.cond.68
  %70 = load i32, i32* %l, align 4
  %idxprom73 = sext i32 %70 to i64
  %71 = load i32, i32* %b, align 4
  %idxprom74 = sext i32 %71 to i64
  %72 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %single_lc = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %72, i32 0, i32 2
  %73 = load i32**, i32*** %single_lc, align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %73, i64 %idxprom74
  %74 = load i32*, i32** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %74, i64 %idxprom73
  %75 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp sge i32 %75, 0
  br i1 %cmp77, label %if.then.79, label %if.end.90

if.then.79:                                       ; preds = %for.body.72
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %77 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %78 = load i32, i32* %b, align 4
  %conv80 = trunc i32 %78 to i8
  %call81 = call i8* @mdef_ciphone_str(%struct.mdef_t* %77, i8 signext %conv80)
  %79 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %80 = load i32, i32* %l, align 4
  %conv82 = trunc i32 %80 to i8
  %call83 = call i8* @mdef_ciphone_str(%struct.mdef_t* %79, i8 signext %conv82)
  %81 = load i32, i32* %l, align 4
  %idxprom84 = sext i32 %81 to i64
  %82 = load i32, i32* %b, align 4
  %idxprom85 = sext i32 %82 to i64
  %83 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %single_lc86 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %83, i32 0, i32 2
  %84 = load i32**, i32*** %single_lc86, align 8
  %arrayidx87 = getelementptr inbounds i32*, i32** %84, i64 %idxprom85
  %85 = load i32*, i32** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %85, i64 %idxprom84
  %86 = load i32, i32* %arrayidx88, align 4
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %call81, i8* %call83, i32 %86)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.79, %for.body.72
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %87 = load i32, i32* %l, align 4
  %inc92 = add nsw i32 %87, 1
  store i32 %inc92, i32* %l, align 4
  br label %for.cond.68

for.end.93:                                       ; preds = %for.cond.68
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %88 = load i32, i32* %b, align 4
  %inc95 = add nsw i32 %88, 1
  store i32 %inc95, i32* %b, align 4
  br label %for.cond.63

for.end.96:                                       ; preds = %for.cond.63
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %91 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %91, i32 0, i32 10
  %92 = load i32, i32* %n_sseq, align 4
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 %92)
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.119, %for.end.96
  %93 = load i32, i32* %i, align 4
  %94 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_sseq100 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %94, i32 0, i32 10
  %95 = load i32, i32* %n_sseq100, align 4
  %cmp101 = icmp slt i32 %93, %95
  br i1 %cmp101, label %for.body.103, label %for.end.121

for.body.103:                                     ; preds = %for.cond.99
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %97 = load i32, i32* %i, align 4
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %97)
  store i32 0, i32* %j, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.115, %for.body.103
  %98 = load i32, i32* %j, align 4
  %99 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %99, i32 0, i32 2
  %100 = load i32, i32* %n_emit_state, align 4
  %cmp106 = icmp slt i32 %98, %100
  br i1 %cmp106, label %for.body.108, label %for.end.117

for.body.108:                                     ; preds = %for.cond.105
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %102 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %102 to i64
  %103 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %103 to i64
  %104 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %sseq = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %104, i32 0, i32 9
  %105 = load i16**, i16*** %sseq, align 8
  %arrayidx111 = getelementptr inbounds i16*, i16** %105, i64 %idxprom110
  %106 = load i16*, i16** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %106, i64 %idxprom109
  %107 = load i16, i16* %arrayidx112, align 2
  %conv113 = sext i16 %107 to i32
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %conv113)
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.108
  %108 = load i32, i32* %j, align 4
  %inc116 = add nsw i32 %108, 1
  store i32 %inc116, i32* %j, align 4
  br label %for.cond.105

for.end.117:                                      ; preds = %for.cond.105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.end.117
  %110 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %110, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.99

for.end.121:                                      ; preds = %for.cond.99
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %113 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %n_comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %113, i32 0, i32 7
  %114 = load i32, i32* %n_comsseq, align 4
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i32 %114)
  store i32 0, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.145, %for.end.121
  %115 = load i32, i32* %i, align 4
  %116 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %n_comsseq125 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %116, i32 0, i32 7
  %117 = load i32, i32* %n_comsseq125, align 4
  %cmp126 = icmp slt i32 %115, %117
  br i1 %cmp126, label %for.body.128, label %for.end.147

for.body.128:                                     ; preds = %for.cond.124
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %119 = load i32, i32* %i, align 4
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %119)
  store i32 0, i32* %j, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.141, %for.body.128
  %120 = load i32, i32* %j, align 4
  %121 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %n_emit_state131 = getelementptr inbounds %struct.mdef_t, %struct.mdef_t* %121, i32 0, i32 2
  %122 = load i32, i32* %n_emit_state131, align 4
  %cmp132 = icmp slt i32 %120, %122
  br i1 %cmp132, label %for.body.134, label %for.end.143

for.body.134:                                     ; preds = %for.cond.130
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %124 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %124 to i64
  %125 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %125 to i64
  %126 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comsseq = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %126, i32 0, i32 4
  %127 = load i16**, i16*** %comsseq, align 8
  %arrayidx137 = getelementptr inbounds i16*, i16** %127, i64 %idxprom136
  %128 = load i16*, i16** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16, i16* %128, i64 %idxprom135
  %129 = load i16, i16* %arrayidx138, align 2
  %conv139 = sext i16 %129 to i32
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %conv139)
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.134
  %130 = load i32, i32* %j, align 4
  %inc142 = add nsw i32 %130, 1
  store i32 %inc142, i32* %j, align 4
  br label %for.cond.130

for.end.143:                                      ; preds = %for.cond.130
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.end.143
  %132 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %132, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.124

for.end.147:                                      ; preds = %for.cond.124
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %135 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %n_comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %135, i32 0, i32 6
  %136 = load i32, i32* %n_comstate, align 4
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i32 %136)
  store i32 0, i32* %i, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.176, %for.end.147
  %137 = load i32, i32* %i, align 4
  %138 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %n_comstate151 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %138, i32 0, i32 6
  %139 = load i32, i32* %n_comstate151, align 4
  %cmp152 = icmp slt i32 %137, %139
  br i1 %cmp152, label %for.body.154, label %for.end.178

for.body.154:                                     ; preds = %for.cond.150
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %141 = load i32, i32* %i, align 4
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %141)
  store i32 0, i32* %j, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.172, %for.body.154
  %142 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %142 to i64
  %143 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %143 to i64
  %144 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comstate = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %144, i32 0, i32 3
  %145 = load i16**, i16*** %comstate, align 8
  %arrayidx159 = getelementptr inbounds i16*, i16** %145, i64 %idxprom158
  %146 = load i16*, i16** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %146, i64 %idxprom157
  %147 = load i16, i16* %arrayidx160, align 2
  %conv161 = sext i16 %147 to i32
  %cmp162 = icmp sge i32 %conv161, 0
  br i1 %cmp162, label %for.body.164, label %for.end.174

for.body.164:                                     ; preds = %for.cond.156
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %149 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %149 to i64
  %150 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %150 to i64
  %151 = load %struct.dict2pid_t*, %struct.dict2pid_t** %d2p.addr, align 8
  %comstate167 = getelementptr inbounds %struct.dict2pid_t, %struct.dict2pid_t* %151, i32 0, i32 3
  %152 = load i16**, i16*** %comstate167, align 8
  %arrayidx168 = getelementptr inbounds i16*, i16** %152, i64 %idxprom166
  %153 = load i16*, i16** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i16, i16* %153, i64 %idxprom165
  %154 = load i16, i16* %arrayidx169, align 2
  %conv170 = sext i16 %154 to i32
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %conv170)
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.164
  %155 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %155, 1
  store i32 %inc173, i32* %j, align 4
  br label %for.cond.156

for.end.174:                                      ; preds = %for.cond.156
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.end.174
  %157 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %157, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.150

for.end.178:                                      ; preds = %for.cond.150
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call181 = call i32 @fflush(%struct._IO_FILE* %160)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @mdef_ciphone_str(%struct.mdef_t*, i8 signext) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @mdef_phone_id(%struct.mdef_t*, i8 signext, i8 signext, i8 signext, i32) #1

declare i32 @glist_chkdup_int32(%struct.gnode_s*, i32) #1

declare %struct.gnode_s* @glist_add_int32(%struct.gnode_s*, i32) #1

declare i32 @glist_count(%struct.gnode_s*) #1

declare i32 @hash_enter_bkey(%struct.hash_table_t*, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
