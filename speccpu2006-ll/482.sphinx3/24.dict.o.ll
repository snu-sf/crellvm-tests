; ModuleID = 'dict.c'
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"dict.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Dictionary full; add(%s) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Missing base word for: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No dictionary file\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"fopen(%s,r) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"#Words in dictionaries (%d) exceeds limit (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Reading main dictionary: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%d words read\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Reading filler dictionary: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"<sil>\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Building compound words (separator = '%c')\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"%d compound words\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"str2words(%s) failed; Increase maxwd from %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Line %d: No pronunciation for word %s; ignored\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Line %d: Bad ciphone: %s; word %s ignored\0A\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"Line %d: dict_add_word (%s) failed (duplicate?); ignored\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"Too many CIphones in dictionary; increase MAX_S3CIPID\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"hash_enter(local-phonetable, %s) failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"Bad compound word %s: leading or trailing separator\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"Compound special/filler word (%s) not allowed\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Bad compound word %s: successive separators\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Component word %s of %s not in dictionary\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @dict_ciphone_str(%struct.dict_t* %d, i32 %wid, i32 %pos) #0 {
entry:
  %retval = alloca i8*, align 8
  %d.addr = alloca %struct.dict_t*, align 8
  %wid.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32 %wid, i32* %wid.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %mdef = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 0
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %tobool = icmp ne %struct.mdef_t* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %mdef1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %2, i32 0, i32 0
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %wid.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %6, i32 0, i32 4
  %7 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %7, i64 %idxprom2
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 1
  %8 = load i8*, i8** %ciphone, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx3, align 1
  %call = call i8* @mdef_ciphone_str(%struct.mdef_t* %3, i8 signext %9)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i32, i32* %wid.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word6 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %12, i32 0, i32 4
  %13 = load %struct.dictword_t*, %struct.dictword_t** %word6, align 8
  %arrayidx7 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %13, i64 %idxprom5
  %ciphone8 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx7, i32 0, i32 1
  %14 = load i8*, i8** %ciphone8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %idxprom4
  %15 = load i8, i8* %arrayidx9, align 1
  %conv = sext i8 %15 to i32
  %idxprom10 = sext i32 %conv to i64
  %16 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str = getelementptr inbounds %struct.dict_t, %struct.dict_t* %16, i32 0, i32 2
  %17 = load i8**, i8*** %ciphone_str, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %17, i64 %idxprom10
  %18 = load i8*, i8** %arrayidx11, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare i8* @mdef_ciphone_str(%struct.mdef_t*, i8 signext) #1

; Function Attrs: nounwind uwtable
define i32 @dict_add_word(%struct.dict_t* %d, i8* %word, i8* %p, i32 %np) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.dict_t*, align 8
  %word.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %np.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %len = alloca i32, align 4
  %wordp = alloca %struct.dictword_t*, align 8
  %newwid = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %np, i32* %np.addr, align 4
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 7
  %1 = load i32, i32* %n_word, align 4
  %2 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %max_words = getelementptr inbounds %struct.dict_t, %struct.dict_t* %2, i32 0, i32 6
  %3 = load i32, i32* %max_words, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %4 = load i8*, i8** %word.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* %4)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %5, i32 0, i32 4
  %6 = load %struct.dictword_t*, %struct.dictword_t** %word1, align 8
  %7 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word2 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %7, i32 0, i32 7
  %8 = load i32, i32* %n_word2, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %6, i64 %idx.ext
  store %struct.dictword_t* %add.ptr, %struct.dictword_t** %wordp, align 8
  %9 = load i8*, i8** %word.addr, align 8
  %call = call i8* @__ckd_salloc__(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 117)
  %10 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word3 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %10, i32 0, i32 0
  store i8* %call, i8** %word3, align 8
  %11 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %11, i32 0, i32 5
  %12 = load %struct.hash_table_t*, %struct.hash_table_t** %ht, align 8
  %13 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word4 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %13, i32 0, i32 0
  %14 = load i8*, i8** %word4, align 8
  %15 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word5 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %15, i32 0, i32 7
  %16 = load i32, i32* %n_word5, align 4
  %call6 = call i32 @hash_enter(%struct.hash_table_t* %12, i8* %14, i32 %16)
  %17 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word7 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %17, i32 0, i32 7
  %18 = load i32, i32* %n_word7, align 4
  %cmp8 = icmp ne i32 %call6, %18
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %19 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word10 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %19, i32 0, i32 0
  %20 = load i8*, i8** %word10, align 8
  call void @ckd_free(i8* %20)
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %21 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.11
  %22 = load i32, i32* %np.addr, align 4
  %cmp12 = icmp sgt i32 %22, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %np.addr, align 4
  %conv = sext i32 %23 to i64
  %mul = mul i64 %conv, 1
  %call14 = call i8* @__ckd_malloc__(i64 %mul, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 127)
  %24 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %24, i32 0, i32 1
  store i8* %call14, i8** %ciphone, align 8
  %25 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %ciphone15 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %25, i32 0, i32 1
  %26 = load i8*, i8** %ciphone15, align 8
  %27 = load i8*, i8** %p.addr, align 8
  %28 = load i32, i32* %np.addr, align 4
  %conv16 = sext i32 %28 to i64
  %mul17 = mul i64 %conv16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %mul17, i32 1, i1 false)
  %29 = load i32, i32* %np.addr, align 4
  %30 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %pronlen = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %30, i32 0, i32 2
  store i32 %29, i32* %pronlen, align 4
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %if.end.11
  %31 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %ciphone18 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %31, i32 0, i32 1
  store i8* null, i8** %ciphone18, align 8
  %32 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %pronlen19 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %32, i32 0, i32 2
  store i32 0, i32* %pronlen19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.13
  %33 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %alt = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %33, i32 0, i32 3
  store i32 -1, i32* %alt, align 4
  %34 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word21 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %34, i32 0, i32 7
  %35 = load i32, i32* %n_word21, align 4
  %36 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %36, i32 0, i32 4
  store i32 %35, i32* %basewid, align 4
  %37 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %n_comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %37, i32 0, i32 5
  store i32 0, i32* %n_comp, align 4
  %38 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %38, i32 0, i32 6
  store i32* null, i32** %comp, align 8
  %39 = load i8*, i8** %word.addr, align 8
  %call22 = call i32 @dict_word2basestr(i8* %39)
  store i32 %call22, i32* %len, align 4
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.46

if.then.25:                                       ; preds = %if.end.20
  %40 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ht26 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %40, i32 0, i32 5
  %41 = load %struct.hash_table_t*, %struct.hash_table_t** %ht26, align 8
  %42 = load i8*, i8** %word.addr, align 8
  %call27 = call i32 @hash_lookup(%struct.hash_table_t* %41, i8* %42, i32* %w)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.25
  %43 = load i32, i32* %len, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load i8*, i8** %word.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 %idxprom
  store i8 40, i8* %arrayidx, align 1
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %45 = load i8*, i8** %word.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %45)
  br label %if.end.34

if.else.31:                                       ; preds = %if.then.25
  %46 = load i32, i32* %len, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load i8*, i8** %word.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %47, i64 %idxprom32
  store i8 40, i8* %arrayidx33, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %48 = load i32, i32* %w, align 4
  %49 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %basewid35 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %49, i32 0, i32 4
  store i32 %48, i32* %basewid35, align 4
  %50 = load i32, i32* %w, align 4
  %idxprom36 = sext i32 %50 to i64
  %51 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word37 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %51, i32 0, i32 4
  %52 = load %struct.dictword_t*, %struct.dictword_t** %word37, align 8
  %arrayidx38 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %52, i64 %idxprom36
  %alt39 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx38, i32 0, i32 3
  %53 = load i32, i32* %alt39, align 4
  %54 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %alt40 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %54, i32 0, i32 3
  store i32 %53, i32* %alt40, align 4
  %55 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word41 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %55, i32 0, i32 7
  %56 = load i32, i32* %n_word41, align 4
  %57 = load i32, i32* %w, align 4
  %idxprom42 = sext i32 %57 to i64
  %58 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word43 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %58, i32 0, i32 4
  %59 = load %struct.dictword_t*, %struct.dictword_t** %word43, align 8
  %arrayidx44 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %59, i64 %idxprom42
  %alt45 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx44, i32 0, i32 3
  store i32 %56, i32* %alt45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.34, %if.end.20
  %60 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word47 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %60, i32 0, i32 7
  %61 = load i32, i32* %n_word47, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %n_word47, align 4
  store i32 %61, i32* %newwid, align 4
  %62 = load i32, i32* %newwid, align 4
  store i32 %62, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.9, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

declare i32 @hash_enter(%struct.hash_table_t*, i8*, i32) #1

declare void @ckd_free(i8*) #1

declare i8* @__ckd_malloc__(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @dict_word2basestr(i8* %word) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load i8*, i8** %word.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 41
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %len, align 4
  %sub3 = sub nsw i32 %4, 2
  store i32 %sub3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i8*, i8** %word.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 %idxprom6
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp ne i32 %conv8, 40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %cmp11 = icmp sgt i32 %11, 0
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load i8*, i8** %word.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %idxprom14
  store i8 0, i8* %arrayidx15, align 1
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @hash_lookup(%struct.hash_table_t*, i8*, i32*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.dict_t* @dict_init(%struct.mdef_t* %mdef, i8* %dictfile, i8* %fillerfile, i8 signext %comp_sep) #0 {
entry:
  %mdef.addr = alloca %struct.mdef_t*, align 8
  %dictfile.addr = alloca i8*, align 8
  %fillerfile.addr = alloca i8*, align 8
  %comp_sep.addr = alloca i8, align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %fp2 = alloca %struct._IO_FILE*, align 8
  %n = alloca i32, align 4
  %line = alloca [1024 x i8], align 16
  %d = alloca %struct.dict_t*, align 8
  store %struct.mdef_t* %mdef, %struct.mdef_t** %mdef.addr, align 8
  store i8* %dictfile, i8** %dictfile.addr, align 8
  store i8* %fillerfile, i8** %fillerfile.addr, align 8
  store i8 %comp_sep, i8* %comp_sep.addr, align 1
  %0 = load i8*, i8** %dictfile.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 302, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %dictfile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 310, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i8*, i8** %dictfile.addr, align 8
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* %2)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end.2
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %3)
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv, 35
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %6)
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp2, align 8
  %7 = load i8*, i8** %fillerfile.addr, align 8
  %tobool9 = icmp ne i8* %7, null
  br i1 %tobool9, label %if.then.10, label %if.end.30

if.then.10:                                       ; preds = %while.end
  %8 = load i8*, i8** %fillerfile.addr, align 8
  %call11 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call11, %struct._IO_FILE** %fp2, align 8
  %cmp12 = icmp eq %struct._IO_FILE* %call11, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 321, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %9 = load i8*, i8** %fillerfile.addr, align 8
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* %9)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end.28, %if.end.15
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call18 = call i8* @fgets(i8* %arraydecay17, i32 1024, %struct._IO_FILE* %10)
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %while.body.21, label %while.end.29

while.body.21:                                    ; preds = %while.cond.16
  %arrayidx22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  %11 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %11 to i32
  %cmp24 = icmp ne i32 %conv23, 35
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %while.body.21
  %12 = load i32, i32* %n, align 4
  %inc27 = add nsw i32 %12, 1
  store i32 %inc27, i32* %n, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %while.body.21
  br label %while.cond.16

while.end.29:                                     ; preds = %while.cond.16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  call void @rewind(%struct._IO_FILE* %13)
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.29, %while.end
  %call31 = call i8* @__ckd_calloc__(i64 1, i64 88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 334)
  %14 = bitcast i8* %call31 to %struct.dict_t*
  store %struct.dict_t* %14, %struct.dict_t** %d, align 8
  %15 = load i32, i32* %n, align 4
  %add = add nsw i32 %15, 1024
  %cmp32 = icmp slt i32 %add, 2147483646
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  %16 = load i32, i32* %n, align 4
  %add34 = add nsw i32 %16, 1024
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add34, %cond.true ], [ 2147483646, %cond.false ]
  %17 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %max_words = getelementptr inbounds %struct.dict_t, %struct.dict_t* %17, i32 0, i32 6
  store i32 %cond, i32* %max_words, align 4
  %18 = load i32, i32* %n, align 4
  %cmp35 = icmp sge i32 %18, 2147483646
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %cond.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 337, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %19 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %19, i32 2147483646)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %cond.end
  %20 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %max_words39 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %20, i32 0, i32 6
  %21 = load i32, i32* %max_words39, align 4
  %conv40 = sext i32 %21 to i64
  %call41 = call i8* @__ckd_calloc__(i64 %conv40, i64 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 339)
  %22 = bitcast i8* %call41 to %struct.dictword_t*
  %23 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %23, i32 0, i32 4
  store %struct.dictword_t* %22, %struct.dictword_t** %word, align 8
  %24 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %24, i32 0, i32 7
  store i32 0, i32* %n_word, align 4
  %25 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %26 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %mdef42 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %26, i32 0, i32 0
  store %struct.mdef_t* %25, %struct.mdef_t** %mdef42, align 8
  %27 = load %struct.mdef_t*, %struct.mdef_t** %mdef.addr, align 8
  %tobool43 = icmp ne %struct.mdef_t* %27, null
  br i1 %tobool43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.38
  %28 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %pht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %28, i32 0, i32 1
  store %struct.hash_table_t* null, %struct.hash_table_t** %pht, align 8
  %29 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %ciphone_str = getelementptr inbounds %struct.dict_t, %struct.dict_t* %29, i32 0, i32 2
  store i8** null, i8*** %ciphone_str, align 8
  br label %if.end.49

if.else:                                          ; preds = %if.end.38
  %call45 = call %struct.hash_table_t* @hash_new(i32 128, i32 1)
  %30 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %pht46 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %30, i32 0, i32 1
  store %struct.hash_table_t* %call45, %struct.hash_table_t** %pht46, align 8
  %call47 = call i8* @__ckd_calloc__(i64 128, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 347)
  %31 = bitcast i8* %call47 to i8**
  %32 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %ciphone_str48 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %32, i32 0, i32 2
  store i8** %31, i8*** %ciphone_str48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.44
  %33 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %n_ciphone = getelementptr inbounds %struct.dict_t, %struct.dict_t* %33, i32 0, i32 3
  store i32 0, i32* %n_ciphone, align 4
  %34 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %max_words50 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %34, i32 0, i32 6
  %35 = load i32, i32* %max_words50, align 4
  %call51 = call %struct.hash_table_t* @hash_new(i32 %35, i32 1)
  %36 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %ht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %36, i32 0, i32 5
  store %struct.hash_table_t* %call51, %struct.hash_table_t** %ht, align 8
  %37 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %comp_head = getelementptr inbounds %struct.dict_t, %struct.dict_t* %37, i32 0, i32 10
  store i32* null, i32** %comp_head, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 358, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %38 = load i8*, i8** %dictfile.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %40 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %call52 = call i32 @dict_read(%struct._IO_FILE* %39, %struct.dict_t* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call53 = call i32 @fclose(%struct._IO_FILE* %41)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %42 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %n_word54 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %42, i32 0, i32 7
  %43 = load i32, i32* %n_word54, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %43)
  %44 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %n_word55 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %44, i32 0, i32 7
  %45 = load i32, i32* %n_word55, align 4
  %46 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %filler_start = getelementptr inbounds %struct.dict_t, %struct.dict_t* %46, i32 0, i32 8
  store i32 %45, i32* %filler_start, align 4
  %47 = load i8*, i8** %fillerfile.addr, align 8
  %tobool56 = icmp ne i8* %47, null
  br i1 %tobool56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %if.end.49
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 366, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %48 = load i8*, i8** %fillerfile.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i8* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %50 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %call58 = call i32 @dict_read(%struct._IO_FILE* %49, %struct.dict_t* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call59 = call i32 @fclose(%struct._IO_FILE* %51)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 369, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %52 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %n_word60 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %52, i32 0, i32 7
  %53 = load i32, i32* %n_word60, align 4
  %54 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %filler_start61 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %54, i32 0, i32 8
  %55 = load i32, i32* %filler_start61, align 4
  %sub = sub nsw i32 %53, %55
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %sub)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %if.end.49
  %56 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %n_word63 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %56, i32 0, i32 7
  %57 = load i32, i32* %n_word63, align 4
  %sub64 = sub nsw i32 %57, 1
  %58 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %filler_end = getelementptr inbounds %struct.dict_t, %struct.dict_t* %58, i32 0, i32 9
  store i32 %sub64, i32* %filler_end, align 4
  %59 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %call65 = call i32 @dict_wordid(%struct.dict_t* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %60 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %startwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %60, i32 0, i32 11
  store i32 %call65, i32* %startwid, align 4
  %61 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %call66 = call i32 @dict_wordid(%struct.dict_t* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  %62 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %62, i32 0, i32 12
  store i32 %call66, i32* %finishwid, align 4
  %63 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %call67 = call i32 @dict_wordid(%struct.dict_t* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %64 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %silwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %64, i32 0, i32 13
  store i32 %call67, i32* %silwid, align 4
  %65 = load i8, i8* %comp_sep.addr, align 1
  %tobool68 = icmp ne i8 %65, 0
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.62
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 388, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %66 = load i8, i8* %comp_sep.addr, align 1
  %conv70 = sext i8 %66 to i32
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i32 %conv70)
  %67 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  %68 = load i8, i8* %comp_sep.addr, align 1
  %call71 = call i32 @dict_build_comp(%struct.dict_t* %67, i8 signext %68)
  store i32 %call71, i32* %n, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 390, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %69 = load i32, i32* %n, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 %69)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.end.62
  %70 = load %struct.dict_t*, %struct.dict_t** %d, align 8
  ret %struct.dict_t* %70
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__fatal_sys_error(i8*, ...) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare %struct.hash_table_t* @hash_new(i32, i32) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @dict_read(%struct._IO_FILE* %fp, %struct.dict_t* %d) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %d.addr = alloca %struct.dict_t*, align 8
  %line = alloca [16384 x i8], align 16
  %wptr = alloca i8**, align 8
  %p = alloca [4096 x i8], align 16
  %lineno = alloca i32, align 4
  %nwd = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  %maxwd = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32 4092, i32* %maxwd, align 4
  %0 = load i32, i32* %maxwd, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 169)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %wptr, align 8
  store i32 0, i32* %lineno, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %if.then.19, %if.then.15, %if.then, %entry
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 16384, %struct._IO_FILE* %2)
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %lineno, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %lineno, align 4
  %arrayidx = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 35
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %arraydecay6 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %5 = load i8**, i8*** %wptr, align 8
  %6 = load i32, i32* %maxwd, align 4
  %call7 = call i32 @str2words(i8* %arraydecay6, i8** %5, i32 %6)
  store i32 %call7, i32* %nwd, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay11 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %7 = load i32, i32* %maxwd, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay11, i32 %7)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %8 = load i32, i32* %nwd, align 4
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %while.cond

if.end.16:                                        ; preds = %if.end.12
  %9 = load i32, i32* %nwd, align 4
  %cmp17 = icmp eq i32 %9, 1
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %10 = load i32, i32* %lineno, align 4
  %11 = load i8**, i8*** %wptr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx20, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0), i32 %10, i8* %12)
  br label %while.cond

if.end.21:                                        ; preds = %if.end.16
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nwd, align 4
  %cmp22 = icmp slt i32 %13, %14
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %wptr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx24, align 8
  %call25 = call signext i8 @dict_ciphone_id(%struct.dict_t* %15, i8* %18)
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p, i32 0, i64 %idxprom26
  store i8 %call25, i8* %arrayidx27, align 1
  %20 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %20, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p, i32 0, i64 %idxprom29
  %21 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %21 to i32
  %cmp32 = icmp slt i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %22 = load i32, i32* %lineno, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %23 to i64
  %24 = load i8**, i8*** %wptr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %24, i64 %idxprom35
  %25 = load i8*, i8** %arrayidx36, align 8
  %26 = load i8**, i8*** %wptr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx37, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i32 %22, i8* %25, i8* %27)
  br label %for.end

if.end.38:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %28 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %nwd, align 4
  %cmp40 = icmp eq i32 %29, %30
  br i1 %cmp40, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %for.end
  %31 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %32 = load i8**, i8*** %wptr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %32, i64 0
  %33 = load i8*, i8** %arrayidx43, align 8
  %arraydecay44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %p, i32 0, i32 0
  %34 = load i32, i32* %nwd, align 4
  %sub45 = sub nsw i32 %34, 1
  %call46 = call i32 @dict_add_word(%struct.dict_t* %31, i8* %33, i8* %arraydecay44, i32 %sub45)
  store i32 %call46, i32* %w, align 4
  %35 = load i32, i32* %w, align 4
  %cmp47 = icmp slt i32 %35, 0
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.42
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %36 = load i32, i32* %lineno, align 4
  %37 = load i8**, i8*** %wptr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx50, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i32 0, i32 0), i32 %36, i8* %38)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.42
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i8**, i8*** %wptr, align 8
  %40 = bitcast i8** %39 to i8*
  call void @ckd_free(i8* %40)
  ret i32 0
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @dict_wordid(%struct.dict_t* %d, i8* %word) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.dict_t*, align 8
  %word.addr = alloca i8*, align 8
  %w = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 5
  %1 = load %struct.hash_table_t*, %struct.hash_table_t** %ht, align 8
  %2 = load i8*, i8** %word.addr, align 8
  %call = call i32 @hash_lookup(%struct.hash_table_t* %1, i8* %2, i32* %w)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_build_comp(%struct.dict_t* %d, i8 signext %sep) #0 {
entry:
  %d.addr = alloca %struct.dict_t*, align 8
  %sep.addr = alloca i8, align 1
  %wd = alloca [4096 x i8], align 16
  %w = alloca i32, align 4
  %cwid = alloca i32, align 4
  %wordp = alloca %struct.dictword_t*, align 8
  %nc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i8 %sep, i8* %sep.addr, align 1
  store i32 0, i32* %nc, align 4
  store i32 0, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %0 = load i32, i32* %w, align 4
  %1 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %1, i32 0, i32 7
  %2 = load i32, i32* %n_word, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %3, i32 0, i32 4
  %4 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %5 = load i32, i32* %w, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %6, i32 0, i32 4
  %7 = load %struct.dictword_t*, %struct.dictword_t** %word1, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %7, i64 %idxprom
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 4
  %8 = load i32, i32* %basewid, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %4, i64 %idx.ext
  store %struct.dictword_t* %add.ptr, %struct.dictword_t** %wordp, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %9 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word2 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %word2, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %10) #2
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %call4 = call i64 @strlen(i8* %arraydecay3) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %l, align 4
  %arrayidx5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i64 0
  %11 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %11 to i32
  %12 = load i8, i8* %sep.addr, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %15 = load i8, i8* %sep.addr, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv12, %conv13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word16 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %16, i32 0, i32 0
  %17 = load i8*, i8** %word16, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i32 0, i32 0), i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i32 1, i32* %n, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %l, align 4
  %sub18 = sub nsw i32 %19, 1
  %cmp19 = icmp slt i32 %18, %sub18
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.17
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i64 %idxprom22
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %21 to i32
  %22 = load i8, i8* %sep.addr, align 1
  %conv25 = sext i8 %22 to i32
  %cmp26 = icmp eq i32 %conv24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.21
  %23 = load i32, i32* %n, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.body.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %24 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %25 = load i32, i32* %n, align 4
  %cmp31 = icmp eq i32 %25, 1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.end
  br label %for.inc.91

if.end.34:                                        ; preds = %for.end
  %26 = load i32, i32* %nc, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, i32* %nc, align 4
  %27 = load i32, i32* %w, align 4
  %28 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %startwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %28, i32 0, i32 11
  %29 = load i32, i32* %startwid, align 4
  %cmp36 = icmp eq i32 %27, %29
  br i1 %cmp36, label %if.then.43, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.34
  %30 = load i32, i32* %w, align 4
  %31 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %31, i32 0, i32 12
  %32 = load i32, i32* %finishwid, align 4
  %cmp39 = icmp eq i32 %30, %32
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.38
  %33 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %34 = load i32, i32* %w, align 4
  %call42 = call i32 @dict_filler_word(%struct.dict_t* %33, i32 %34)
  %tobool = icmp ne i32 %call42, 0
  br i1 %tobool, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.38, %if.end.34
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %35 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word44 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %35, i32 0, i32 0
  %36 = load i8*, i8** %word44, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0), i8* %36)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %lor.lhs.false.41
  %37 = load i32, i32* %n, align 4
  %38 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %n_comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %38, i32 0, i32 5
  store i32 %37, i32* %n_comp, align 4
  %39 = load i32, i32* %n, align 4
  %conv46 = sext i32 %39 to i64
  %call47 = call i8* @__ckd_calloc__(i64 %conv46, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 269)
  %40 = bitcast i8* %call47 to i32*
  %41 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %41, i32 0, i32 6
  store i32* %40, i32** %comp, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.88, %if.end.45
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %l, align 4
  %cmp49 = icmp slt i32 %42, %43
  br i1 %cmp49, label %for.body.51, label %for.end.90

for.body.51:                                      ; preds = %for.cond.48
  %44 = load i32, i32* %i, align 4
  store i32 %44, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.62, %for.body.51
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %l, align 4
  %cmp53 = icmp slt i32 %45, %46
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.52
  %47 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i64 %idxprom55
  %48 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %48 to i32
  %49 = load i8, i8* %sep.addr, align 1
  %conv58 = sext i8 %49 to i32
  %cmp59 = icmp ne i32 %conv57, %conv58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.52
  %50 = phi i1 [ false, %for.cond.52 ], [ %cmp59, %land.rhs ]
  br i1 %50, label %for.body.61, label %for.end.64

for.body.61:                                      ; preds = %land.end
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.61
  %51 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.52

for.end.64:                                       ; preds = %land.end
  %52 = load i32, i32* %j, align 4
  %53 = load i32, i32* %i, align 4
  %cmp65 = icmp eq i32 %52, %53
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %for.end.64
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 276, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %54 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word68 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %54, i32 0, i32 0
  %55 = load i8*, i8** %word68, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0), i8* %55)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %for.end.64
  %56 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %56 to i64
  %arrayidx71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i64 %idxprom70
  store i8 0, i8* %arrayidx71, align 1
  %57 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %arraydecay72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %58 = load i32, i32* %j, align 4
  %idx.ext73 = sext i32 %58 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %arraydecay72, i64 %idx.ext73
  %call75 = call i32 @dict_wordid(%struct.dict_t* %57, i8* %add.ptr74)
  store i32 %call75, i32* %cwid, align 4
  %59 = load i32, i32* %cwid, align 4
  %cmp76 = icmp slt i32 %59, 0
  br i1 %cmp76, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.end.69
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 281, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %wd, i32 0, i32 0
  %60 = load i32, i32* %j, align 4
  %idx.ext80 = sext i32 %60 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %arraydecay79, i64 %idx.ext80
  %61 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %word82 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %61, i32 0, i32 0
  %62 = load i8*, i8** %word82, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0), i8* %add.ptr81, i8* %62)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %if.end.69
  %63 = load i32, i32* %cwid, align 4
  %64 = load i32, i32* %n, align 4
  %idxprom84 = sext i32 %64 to i64
  %65 = load %struct.dictword_t*, %struct.dictword_t** %wordp, align 8
  %comp85 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %65, i32 0, i32 6
  %66 = load i32*, i32** %comp85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %66, i64 %idxprom84
  store i32 %63, i32* %arrayidx86, align 4
  %67 = load i32, i32* %n, align 4
  %inc87 = add nsw i32 %67, 1
  store i32 %inc87, i32* %n, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.83
  %68 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %68, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.48

for.end.90:                                       ; preds = %for.cond.48
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90, %if.then.33
  %69 = load i32, i32* %w, align 4
  %inc92 = add nsw i32 %69, 1
  store i32 %inc92, i32* %w, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %70 = load i32, i32* %nc, align 4
  %cmp94 = icmp sgt i32 %70, 0
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %for.end.93
  %71 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %call97 = call i32* @dict_comp_head(%struct.dict_t* %71)
  %72 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %comp_head = getelementptr inbounds %struct.dict_t, %struct.dict_t* %72, i32 0, i32 10
  store i32* %call97, i32** %comp_head, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.end.93
  %73 = load i32, i32* %nc, align 4
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i32 @_dict_basewid(%struct.dict_t* %d, i32 %w) #0 {
entry:
  %d.addr = alloca %struct.dict_t*, align 8
  %w.addr = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %1, i32 0, i32 4
  %2 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %2, i64 %idxprom
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 4
  %3 = load i32, i32* %basewid, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i8* @_dict_wordstr(%struct.dict_t* %d, i32 %wid) #0 {
entry:
  %d.addr = alloca %struct.dict_t*, align 8
  %wid.addr = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32 %wid, i32* %wid.addr, align 4
  %0 = load i32, i32* %wid.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %1, i32 0, i32 4
  %2 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %2, i64 %idxprom
  %word1 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %word1, align 8
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i32 @_dict_nextalt(%struct.dict_t* %d, i32 %wid) #0 {
entry:
  %d.addr = alloca %struct.dict_t*, align 8
  %wid.addr = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32 %wid, i32* %wid.addr, align 4
  %0 = load i32, i32* %wid.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %1, i32 0, i32 4
  %2 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %2, i64 %idxprom
  %alt = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 3
  %3 = load i32, i32* %alt, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @dict_filler_word(%struct.dict_t* %d, i32 %w) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.dict_t*, align 8
  %w.addr = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %1, i32 0, i32 4
  %2 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %2, i64 %idxprom
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx, i32 0, i32 4
  %3 = load i32, i32* %basewid, align 4
  store i32 %3, i32* %w.addr, align 4
  %4 = load i32, i32* %w.addr, align 4
  %5 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %startwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %5, i32 0, i32 11
  %6 = load i32, i32* %startwid, align 4
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %w.addr, align 4
  %8 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %finishwid = getelementptr inbounds %struct.dict_t, %struct.dict_t* %8, i32 0, i32 12
  %9 = load i32, i32* %finishwid, align 4
  %cmp1 = icmp eq i32 %7, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %w.addr, align 4
  %11 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %filler_start = getelementptr inbounds %struct.dict_t, %struct.dict_t* %11, i32 0, i32 8
  %12 = load i32, i32* %filler_start, align 4
  %cmp2 = icmp sge i32 %10, %12
  br i1 %cmp2, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %w.addr, align 4
  %14 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %filler_end = getelementptr inbounds %struct.dict_t, %struct.dict_t* %14, i32 0, i32 9
  %15 = load i32, i32* %filler_end, align 4
  %cmp3 = icmp sle i32 %13, %15
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @dict_wids2compwid(%struct.dict_t* %d, i32* %wid, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.dict_t*, align 8
  %wid.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i32* %wid, i32** %wid.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %comp_head = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 10
  %1 = load i32*, i32** %comp_head, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %wid.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %comp_head1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %4, i32 0, i32 10
  %5 = load i32*, i32** %comp_head1, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %7 = load i32, i32* %w, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %w, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %9, i32 0, i32 4
  %10 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx4 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %10, i64 %idxprom3
  %n_comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx4, i32 0, i32 5
  %11 = load i32, i32* %n_comp, align 4
  %12 = load i32, i32* %len.addr, align 4
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %len.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.7
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32, i32* %w, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word11 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %17, i32 0, i32 4
  %18 = load %struct.dictword_t*, %struct.dictword_t** %word11, align 8
  %arrayidx12 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %18, i64 %idxprom10
  %comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx12, i32 0, i32 6
  %19 = load i32*, i32** %comp, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom9
  %20 = load i32, i32* %arrayidx13, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32*, i32** %wid.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %20, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.7
  %24 = phi i1 [ false, %for.cond.7 ], [ %cmp16, %land.rhs ]
  br i1 %24, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.7

for.end:                                          ; preds = %land.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %len.addr, align 4
  %cmp18 = icmp eq i32 %26, %27
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %for.end
  %28 = load i32, i32* %w, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word21 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %29, i32 0, i32 4
  %30 = load %struct.dictword_t*, %struct.dictword_t** %word21, align 8
  %arrayidx22 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %30, i64 %idxprom20
  %basewid = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx22, i32 0, i32 4
  %31 = load i32, i32* %basewid, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %for.body
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %32 = load i32, i32* %w, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %comp_head27 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %33, i32 0, i32 10
  %34 = load i32*, i32** %comp_head27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %34, i64 %idxprom26
  %35 = load i32, i32* %arrayidx28, align 4
  store i32 %35, i32* %w, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.29, %if.then.19, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @dict_free(%struct.dict_t* %d) #0 {
entry:
  %d.addr = alloca %struct.dict_t*, align 8
  %i = alloca i32, align 4
  %word = alloca %struct.dictword_t*, align 8
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %tobool = icmp ne %struct.dict_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %2, i32 0, i32 7
  %3 = load i32, i32* %n_word, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %5, i32 0, i32 4
  %6 = load %struct.dictword_t*, %struct.dictword_t** %word1, align 8
  %arrayidx = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %6, i64 %idxprom
  store %struct.dictword_t* %arrayidx, %struct.dictword_t** %word, align 8
  %7 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %word2 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %7, i32 0, i32 0
  %8 = load i8*, i8** %word2, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %9 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %word5 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %9, i32 0, i32 0
  %10 = load i8*, i8** %word5, align 8
  call void @ckd_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  %11 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %ciphone = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %11, i32 0, i32 1
  %12 = load i8*, i8** %ciphone, align 8
  %tobool6 = icmp ne i8* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %ciphone8 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %13, i32 0, i32 1
  %14 = load i8*, i8** %ciphone8, align 8
  call void @ckd_free(i8* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %15 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %15, i32 0, i32 6
  %16 = load i32*, i32** %comp, align 8
  %tobool10 = icmp ne i32* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %comp12 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %17, i32 0, i32 6
  %18 = load i32*, i32** %comp12, align 8
  %19 = bitcast i32* %18 to i8*
  call void @ckd_free(i8* %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word14 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %21, i32 0, i32 4
  %22 = load %struct.dictword_t*, %struct.dictword_t** %word14, align 8
  %tobool15 = icmp ne %struct.dictword_t* %22, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %23 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word17 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %23, i32 0, i32 4
  %24 = load %struct.dictword_t*, %struct.dictword_t** %word17, align 8
  %25 = bitcast %struct.dictword_t* %24 to i8*
  call void @ckd_free(i8* %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %if.end.18
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.dict_t, %struct.dict_t* %27, i32 0, i32 3
  %28 = load i32, i32* %n_ciphone, align 4
  %cmp20 = icmp slt i32 %26, %28
  br i1 %cmp20, label %for.body.21, label %for.end.32

for.body.21:                                      ; preds = %for.cond.19
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str = getelementptr inbounds %struct.dict_t, %struct.dict_t* %30, i32 0, i32 2
  %31 = load i8**, i8*** %ciphone_str, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %31, i64 %idxprom22
  %32 = load i8*, i8** %arrayidx23, align 8
  %tobool24 = icmp ne i8* %32, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %for.body.21
  %33 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str27 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %34, i32 0, i32 2
  %35 = load i8**, i8*** %ciphone_str27, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %35, i64 %idxprom26
  %36 = load i8*, i8** %arrayidx28, align 8
  call void @ckd_free(i8* %36)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %for.body.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %37 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.19

for.end.32:                                       ; preds = %for.cond.19
  %38 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %comp_head = getelementptr inbounds %struct.dict_t, %struct.dict_t* %38, i32 0, i32 10
  %39 = load i32*, i32** %comp_head, align 8
  %tobool33 = icmp ne i32* %39, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %for.end.32
  %40 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %comp_head35 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %40, i32 0, i32 10
  %41 = load i32*, i32** %comp_head35, align 8
  %42 = bitcast i32* %41 to i8*
  call void @ckd_free(i8* %42)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.end.32
  %43 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str37 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %43, i32 0, i32 2
  %44 = load i8**, i8*** %ciphone_str37, align 8
  %tobool38 = icmp ne i8** %44, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %45 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str40 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %45, i32 0, i32 2
  %46 = load i8**, i8*** %ciphone_str40, align 8
  %47 = bitcast i8** %46 to i8*
  call void @ckd_free(i8* %47)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %48 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %pht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %48, i32 0, i32 1
  %49 = load %struct.hash_table_t*, %struct.hash_table_t** %pht, align 8
  %tobool42 = icmp ne %struct.hash_table_t* %49, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %50 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %pht44 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %50, i32 0, i32 1
  %51 = load %struct.hash_table_t*, %struct.hash_table_t** %pht44, align 8
  call void @hash_free(%struct.hash_table_t* %51)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  %52 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %52, i32 0, i32 5
  %53 = load %struct.hash_table_t*, %struct.hash_table_t** %ht, align 8
  %tobool46 = icmp ne %struct.hash_table_t* %53, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.45
  %54 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ht48 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %54, i32 0, i32 5
  %55 = load %struct.hash_table_t*, %struct.hash_table_t** %ht48, align 8
  call void @hash_free(%struct.hash_table_t* %55)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.45
  %56 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %57 = bitcast %struct.dict_t* %56 to i8*
  call void @ckd_free(i8* %57)
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %entry
  ret void
}

declare void @hash_free(%struct.hash_table_t*) #1

declare i32 @str2words(i8*, i8**, i32) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @dict_ciphone_id(%struct.dict_t* %d, i8* %str) #0 {
entry:
  %retval = alloca i8, align 1
  %d.addr = alloca %struct.dict_t*, align 8
  %str.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %mdef = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 0
  %1 = load %struct.mdef_t*, %struct.mdef_t** %mdef, align 8
  %tobool = icmp ne %struct.mdef_t* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %mdef1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %2, i32 0, i32 0
  %3 = load %struct.mdef_t*, %struct.mdef_t** %mdef1, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %call = call signext i8 @mdef_ciphone_id(%struct.mdef_t* %3, i8* %4)
  store i8 %call, i8* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %pht = getelementptr inbounds %struct.dict_t, %struct.dict_t* %5, i32 0, i32 1
  %6 = load %struct.hash_table_t*, %struct.hash_table_t** %pht, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %call2 = call i32 @hash_lookup(%struct.hash_table_t* %6, i8* %7, i32* %id)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.else
  %8 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_ciphone = getelementptr inbounds %struct.dict_t, %struct.dict_t* %8, i32 0, i32 3
  %9 = load i32, i32* %n_ciphone, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n_ciphone, align 4
  store i32 %9, i32* %id, align 4
  %10 = load i32, i32* %id, align 4
  %cmp4 = icmp sge i32 %10, 127
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %11 = load i8*, i8** %str.addr, align 8
  %call6 = call i8* @__ckd_salloc__(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 82)
  %12 = load i32, i32* %id, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str = getelementptr inbounds %struct.dict_t, %struct.dict_t* %13, i32 0, i32 2
  %14 = load i8**, i8*** %ciphone_str, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  store i8* %call6, i8** %arrayidx, align 8
  %15 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %pht7 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %15, i32 0, i32 1
  %16 = load %struct.hash_table_t*, %struct.hash_table_t** %pht7, align 8
  %17 = load i32, i32* %id, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %ciphone_str9 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %18, i32 0, i32 2
  %19 = load i8**, i8*** %ciphone_str9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 %idxprom8
  %20 = load i8*, i8** %arrayidx10, align 8
  %21 = load i32, i32* %id, align 4
  %call11 = call i32 @hash_enter(%struct.hash_table_t* %16, i8* %20, i32 %21)
  %22 = load i32, i32* %id, align 4
  %cmp12 = icmp ne i32 %call11, %22
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %23 = load i8*, i8** %str.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i8* %23)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.else
  %24 = load i32, i32* %id, align 4
  %conv = trunc i32 %24 to i8
  store i8 %conv, i8* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %25 = load i8, i8* %retval
  ret i8 %25
}

declare signext i8 @mdef_ciphone_id(%struct.mdef_t*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32* @dict_comp_head(%struct.dict_t* %d) #0 {
entry:
  %d.addr = alloca %struct.dict_t*, align 8
  %w = alloca i32, align 4
  %comp_head = alloca i32*, align 8
  store %struct.dict_t* %d, %struct.dict_t** %d.addr, align 8
  %0 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %0, i32 0, i32 7
  %1 = load i32, i32* %n_word, align 4
  %conv = sext i32 %1 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 217)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %comp_head, align 8
  store i32 0, i32* %w, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %w, align 4
  %4 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word1 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %4, i32 0, i32 7
  %5 = load i32, i32* %n_word1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %w, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %comp_head, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %w, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %w, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %w, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.27, %for.end
  %9 = load i32, i32* %w, align 4
  %10 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %n_word4 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %10, i32 0, i32 7
  %11 = load i32, i32* %n_word4, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %for.body.7, label %for.end.29

for.body.7:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %w, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word = getelementptr inbounds %struct.dict_t, %struct.dict_t* %13, i32 0, i32 4
  %14 = load %struct.dictword_t*, %struct.dictword_t** %word, align 8
  %arrayidx9 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %14, i64 %idxprom8
  %n_comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx9, i32 0, i32 5
  %15 = load i32, i32* %n_comp, align 4
  %cmp10 = icmp sgt i32 %15, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %16 = load i32, i32* %w, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word13 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %17, i32 0, i32 4
  %18 = load %struct.dictword_t*, %struct.dictword_t** %word13, align 8
  %arrayidx14 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %18, i64 %idxprom12
  %comp = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx14, i32 0, i32 6
  %19 = load i32*, i32** %comp, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load i32*, i32** %comp_head, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %21, i64 %idxprom16
  %22 = load i32, i32* %arrayidx17, align 4
  %23 = load i32, i32* %w, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32*, i32** %comp_head, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  store i32 %22, i32* %arrayidx19, align 4
  %25 = load i32, i32* %w, align 4
  %26 = load i32, i32* %w, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.dict_t*, %struct.dict_t** %d.addr, align 8
  %word21 = getelementptr inbounds %struct.dict_t, %struct.dict_t* %27, i32 0, i32 4
  %28 = load %struct.dictword_t*, %struct.dictword_t** %word21, align 8
  %arrayidx22 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %28, i64 %idxprom20
  %comp23 = getelementptr inbounds %struct.dictword_t, %struct.dictword_t* %arrayidx22, i32 0, i32 6
  %29 = load i32*, i32** %comp23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %30 to i64
  %31 = load i32*, i32** %comp_head, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 %idxprom25
  store i32 %25, i32* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %32 = load i32, i32* %w, align 4
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %w, align 4
  br label %for.cond.3

for.end.29:                                       ; preds = %for.cond.3
  %33 = load i32*, i32** %comp_head, align 8
  ret i32* %33
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
