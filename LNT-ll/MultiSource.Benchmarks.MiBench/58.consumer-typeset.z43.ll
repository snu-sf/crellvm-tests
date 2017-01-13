; ModuleID = './MultiSource.Benchmarks.MiBench/58.consumer-typeset.z43.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, [1 x %union.rec*] }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.0 = type { i8, i8, i32 }

@names_tab = internal global %struct.anon* null, align 8
@lang_count = internal global i32 0, align 4
@lang_tabsize = internal global i32 0, align 4
@hyph_tab = internal global %union.rec** null, align 8
@canonical_tab = internal global %union.rec** null, align 8
@LanguageSentenceEnds = common global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"LanguageDefine: names!\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"LanguageDefine: names is empty!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"LanguageDefine: type(y) != WORD!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"hyphenation file name expected here\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@lang_ends = internal global [64 x %union.rec*] zeroinitializer, align 16
@xx_tmp = external global %union.rec*, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"expected word ending pattern here\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"empty word ending pattern\00", align 1
@InitializeAll = external global i32, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"LanguageWordEndsSentence: wd!\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s ignored (illegal left parameter)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s ignored (unknown language %s)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"LanguageString: unknown number\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"LanguageHyph: unknown number\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging language table\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"language name %s used twice (first at%s)\00", align 1

; Function Attrs: nounwind uwtable
define void @LanguageInit() #0 {
entry:
  %i = alloca i32, align 4
  %call = call %struct.anon* @ltab_new(i32 100)
  store %struct.anon* %call, %struct.anon** @names_tab, align 8
  store i32 0, i32* @lang_count, align 4
  store i32 100, i32* @lang_tabsize, align 4
  %call1 = call noalias i8* @malloc(i64 800) #4
  %0 = bitcast i8* %call1 to %union.rec**
  store %union.rec** %0, %union.rec*** @hyph_tab, align 8
  %call2 = call noalias i8* @malloc(i64 800) #4
  %1 = bitcast i8* %call2 to %union.rec**
  store %union.rec** %1, %union.rec*** @canonical_tab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @LanguageSentenceEnds, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ltab_new(i32 %newsize) #0 {
entry:
  %newsize.addr = alloca i32, align 4
  %S = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 8, %mul
  %call = call noalias i8* @malloc(i64 %add) #4
  %1 = bitcast i8* %call to %struct.anon*
  store %struct.anon* %1, %struct.anon** %S, align 8
  %2 = load %struct.anon*, %struct.anon** %S, align 8
  %cmp = icmp eq %struct.anon* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %newsize.addr, align 4
  %5 = load %struct.anon*, %struct.anon** %S, align 8
  %langtab_size = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  store i32 %4, i32* %langtab_size, align 4
  %6 = load %struct.anon*, %struct.anon** %S, align 8
  %langtab_count = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  store i32 0, i32* %langtab_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %newsize.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.anon*, %struct.anon** %S, align 8
  %langtab_item = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item, i32 0, i64 %idxprom
  store %union.rec* null, %union.rec** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.anon*, %struct.anon** %S, align 8
  ret %struct.anon* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @LanguageDefine(%union.rec* %names, %union.rec* %inside) #0 {
entry:
  %names.addr = alloca %union.rec*, align 8
  %inside.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %hyph_file = alloca %union.rec*, align 8
  %junk = alloca i32, align 4
  %ch = alloca i8, align 1
  %len = alloca i32, align 4
  store %union.rec* %names, %union.rec** %names.addr, align 8
  store %union.rec* %inside, %union.rec** %inside.addr, align 8
  %0 = load %union.rec*, %union.rec** %names.addr, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** %names.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 17
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** %names.addr, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  %6 = load %union.rec*, %union.rec** %names.addr, align 8
  %cmp4 = icmp ne %union.rec* %5, %6
  br i1 %cmp4, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %8 = load i32, i32* @lang_count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @lang_count, align 4
  %9 = load i32, i32* @lang_tabsize, align 4
  %cmp9 = icmp sge i32 %inc, %9
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.8
  %10 = load i32, i32* @lang_tabsize, align 4
  %mul = mul nsw i32 %10, 2
  store i32 %mul, i32* @lang_tabsize, align 4
  %11 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %12 = bitcast %union.rec** %11 to i8*
  %13 = load i32, i32* @lang_tabsize, align 4
  %conv12 = sext i32 %13 to i64
  %mul13 = mul i64 %conv12, 8
  %call14 = call i8* @realloc(i8* %12, i64 %mul13) #4
  %14 = bitcast i8* %call14 to %union.rec**
  store %union.rec** %14, %union.rec*** @hyph_tab, align 8
  %15 = load %union.rec**, %union.rec*** @canonical_tab, align 8
  %16 = bitcast %union.rec** %15 to i8*
  %17 = load i32, i32* @lang_tabsize, align 4
  %conv15 = sext i32 %17 to i64
  %mul16 = mul i64 %conv15, 8
  %call17 = call i8* @realloc(i8* %16, i64 %mul16) #4
  %18 = bitcast i8* %call17 to %union.rec**
  store %union.rec** %18, %union.rec*** @canonical_tab, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %if.end.8
  %19 = load %union.rec*, %union.rec** %names.addr, align 8
  %os119 = bitcast %union.rec* %19 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 0
  %osucc22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc22, align 8
  store %union.rec* %20, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.18
  %21 = load %union.rec*, %union.rec** %link, align 8
  %22 = load %union.rec*, %union.rec** %names.addr, align 8
  %cmp23 = icmp ne %union.rec* %21, %22
  br i1 %cmp23, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %23 = load %union.rec*, %union.rec** %link, align 8
  %os125 = bitcast %union.rec* %23 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os129 = bitcast %union.rec* %25 to %struct.word_type*
  %ou130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os1131 = bitcast %union.FIRST_UNION* %ou130 to %struct.anon.0*
  %otype32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1131, i32 0, i32 0
  %26 = load i8, i8* %otype32, align 1
  %conv33 = zext i8 %26 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.28
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %27 = load %union.rec*, %union.rec** %y, align 8
  %os137 = bitcast %union.rec* %27 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %opred40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred40, align 8
  store %union.rec* %28, %union.rec** %y, align 8
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os141 = bitcast %union.rec* %29 to %struct.word_type*
  %ou142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 1
  %os1143 = bitcast %union.FIRST_UNION* %ou142 to %struct.anon.0*
  %otype44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1143, i32 0, i32 0
  %30 = load i8, i8* %otype44, align 1
  %conv45 = zext i8 %30 to i32
  %cmp46 = icmp eq i32 %conv45, 11
  br i1 %cmp46, label %if.end.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os148 = bitcast %union.rec* %31 to %struct.word_type*
  %ou149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 1
  %os1150 = bitcast %union.FIRST_UNION* %ou149 to %struct.anon.0*
  %otype51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1150, i32 0, i32 0
  %32 = load i8, i8* %otype51, align 1
  %conv52 = zext i8 %32 to i32
  %cmp53 = icmp eq i32 %conv52, 12
  br i1 %cmp53, label %if.end.57, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call56 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %lor.lhs.false, %for.end
  %34 = load i32, i32* @lang_count, align 4
  %35 = load %union.rec*, %union.rec** %y, align 8
  %os158 = bitcast %union.rec* %35 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %36 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %36, align 4
  %bf.value = and i32 %34, 63
  %bf.shl = shl i32 %bf.value, 23
  %bf.clear = and i32 %bf.load, -528482305
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %36, align 4
  %37 = load %union.rec*, %union.rec** %y, align 8
  call void @ltab_insert(%union.rec* %37, %struct.anon** @names_tab)
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.57
  %38 = load %union.rec*, %union.rec** %link, align 8
  %os160 = bitcast %union.rec* %38 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %osucc63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %osucc63, align 8
  store %union.rec* %39, %union.rec** %link, align 8
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %40 = load %union.rec*, %union.rec** %names.addr, align 8
  %os165 = bitcast %union.rec* %40 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 0
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %osucc68, align 8
  %os169 = bitcast %union.rec* %41 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred72, align 8
  store %union.rec* %42, %union.rec** %y, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.82, %for.end.64
  %43 = load %union.rec*, %union.rec** %y, align 8
  %os174 = bitcast %union.rec* %43 to %struct.word_type*
  %ou175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 1
  %os1176 = bitcast %union.FIRST_UNION* %ou175 to %struct.anon.0*
  %otype77 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1176, i32 0, i32 0
  %44 = load i8, i8* %otype77, align 1
  %conv78 = zext i8 %44 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br i1 %cmp79, label %for.body.81, label %for.end.87

for.body.81:                                      ; preds = %for.cond.73
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.81
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os183 = bitcast %union.rec* %45 to %struct.word_type*
  %olist84 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist84, i32 0, i64 1
  %opred86 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx85, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred86, align 8
  store %union.rec* %46, %union.rec** %y, align 8
  br label %for.cond.73

for.end.87:                                       ; preds = %for.cond.73
  %47 = load %union.rec*, %union.rec** %y, align 8
  %48 = load i32, i32* @lang_count, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %union.rec**, %union.rec*** @canonical_tab, align 8
  %arrayidx88 = getelementptr inbounds %union.rec*, %union.rec** %49, i64 %idxprom
  store %union.rec* %47, %union.rec** %arrayidx88, align 8
  %50 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os189 = bitcast %union.rec* %50 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon.0*
  %otype92 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1191, i32 0, i32 0
  %51 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %51 to i32
  %cmp94 = icmp ne i32 %conv93, 17
  br i1 %cmp94, label %if.then.96, label %if.end.292

if.then.96:                                       ; preds = %for.end.87
  %52 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv97 = zext i8 %52 to i32
  store i32 %conv97, i32* @zz_size, align 4
  %conv98 = sext i32 %conv97 to i64
  %cmp99 = icmp uge i64 %conv98, 265
  br i1 %cmp99, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %if.then.96
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call102 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %53)
  br label %if.end.119

if.else:                                          ; preds = %if.then.96
  %54 = load i32, i32* @zz_size, align 4
  %idxprom103 = sext i32 %54 to i64
  %arrayidx104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom103
  %55 = load %union.rec*, %union.rec** %arrayidx104, align 8
  %cmp105 = icmp eq %union.rec* %55, null
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %if.else
  %56 = load i32, i32* @zz_size, align 4
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call108 = call %union.rec* @GetMemory(i32 %56, %struct.FILE_POS* %57)
  store %union.rec* %call108, %union.rec** @zz_hold, align 8
  br label %if.end.118

if.else.109:                                      ; preds = %if.else
  %58 = load i32, i32* @zz_size, align 4
  %idxprom110 = sext i32 %58 to i64
  %arrayidx111 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom110
  %59 = load %union.rec*, %union.rec** %arrayidx111, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %60 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 0
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred115, align 8
  %62 = load i32, i32* @zz_size, align 4
  %idxprom116 = sext i32 %62 to i64
  %arrayidx117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom116
  store %union.rec* %61, %union.rec** %arrayidx117, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.109, %if.then.107
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.101
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 1
  %os11122 = bitcast %union.FIRST_UNION* %ou1121 to %struct.anon.0*
  %otype123 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11122, i32 0, i32 0
  store i8 17, i8* %otype123, align 1
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1124 = bitcast %union.rec* %65 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc127, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %66 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred131, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %67 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %osucc135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc135, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %68 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred139, align 8
  store %union.rec* %64, %union.rec** %y, align 8
  %69 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1140 = bitcast %union.rec* %69 to %struct.word_type*
  %ou1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1141 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %70 = load i16, i16* %ofile_num, align 2
  %71 = load %union.rec*, %union.rec** %y, align 8
  %os1142 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 1
  %ofpos144 = bitcast %union.FIRST_UNION* %ou1143 to %struct.FILE_POS*
  %ofile_num145 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos144, i32 0, i32 2
  store i16 %70, i16* %ofile_num145, align 2
  %72 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1146 = bitcast %union.rec* %72 to %struct.word_type*
  %ou1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 1
  %ofpos148 = bitcast %union.FIRST_UNION* %ou1147 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos148, i32 0, i32 3
  %bf.load149 = load i32, i32* %oline_num, align 4
  %bf.clear150 = and i32 %bf.load149, 1048575
  %73 = load %union.rec*, %union.rec** %y, align 8
  %os1151 = bitcast %union.rec* %73 to %struct.word_type*
  %ou1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 1
  %ofpos153 = bitcast %union.FIRST_UNION* %ou1152 to %struct.FILE_POS*
  %oline_num154 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos153, i32 0, i32 3
  %bf.load155 = load i32, i32* %oline_num154, align 4
  %bf.value156 = and i32 %bf.clear150, 1048575
  %bf.clear157 = and i32 %bf.load155, -1048576
  %bf.set158 = or i32 %bf.clear157, %bf.value156
  store i32 %bf.set158, i32* %oline_num154, align 4
  %74 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1159 = bitcast %union.rec* %74 to %struct.word_type*
  %ou1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 1
  %ofpos161 = bitcast %union.FIRST_UNION* %ou1160 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos161, i32 0, i32 3
  %bf.load162 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load162, 20
  %75 = load %union.rec*, %union.rec** %y, align 8
  %os1163 = bitcast %union.rec* %75 to %struct.word_type*
  %ou1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 1
  %ofpos165 = bitcast %union.FIRST_UNION* %ou1164 to %struct.FILE_POS*
  %ocol_num166 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos165, i32 0, i32 3
  %bf.load167 = load i32, i32* %ocol_num166, align 4
  %bf.value168 = and i32 %bf.lshr, 4095
  %bf.shl169 = shl i32 %bf.value168, 20
  %bf.clear170 = and i32 %bf.load167, 1048575
  %bf.set171 = or i32 %bf.clear170, %bf.shl169
  store i32 %bf.set171, i32* %ocol_num166, align 4
  %76 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv172 = zext i8 %76 to i32
  store i32 %conv172, i32* @zz_size, align 4
  %conv173 = sext i32 %conv172 to i64
  %cmp174 = icmp uge i64 %conv173, 265
  br i1 %cmp174, label %if.then.176, label %if.else.178

if.then.176:                                      ; preds = %if.end.119
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %77)
  br label %if.end.195

if.else.178:                                      ; preds = %if.end.119
  %78 = load i32, i32* @zz_size, align 4
  %idxprom179 = sext i32 %78 to i64
  %arrayidx180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom179
  %79 = load %union.rec*, %union.rec** %arrayidx180, align 8
  %cmp181 = icmp eq %union.rec* %79, null
  br i1 %cmp181, label %if.then.183, label %if.else.185

if.then.183:                                      ; preds = %if.else.178
  %80 = load i32, i32* @zz_size, align 4
  %81 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call184 = call %union.rec* @GetMemory(i32 %80, %struct.FILE_POS* %81)
  store %union.rec* %call184, %union.rec** @zz_hold, align 8
  br label %if.end.194

if.else.185:                                      ; preds = %if.else.178
  %82 = load i32, i32* @zz_size, align 4
  %idxprom186 = sext i32 %82 to i64
  %arrayidx187 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom186
  %83 = load %union.rec*, %union.rec** %arrayidx187, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %84 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 0
  %opred191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %opred191, align 8
  %86 = load i32, i32* @zz_size, align 4
  %idxprom192 = sext i32 %86 to i64
  %arrayidx193 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom192
  store %union.rec* %85, %union.rec** %arrayidx193, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.185, %if.then.183
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.176
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1196 = bitcast %union.rec* %87 to %struct.word_type*
  %ou1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 1
  %os11198 = bitcast %union.FIRST_UNION* %ou1197 to %struct.anon.0*
  %otype199 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11198, i32 0, i32 0
  store i8 0, i8* %otype199, align 1
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %89 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 1
  %osucc203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc203, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1204 = bitcast %union.rec* %90 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 1
  %opred207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred207, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1208 = bitcast %union.rec* %91 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 0
  %osucc211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc211, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1212 = bitcast %union.rec* %92 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %opred215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred215, align 8
  store %union.rec* %88, %union.rec** @xx_link, align 8
  %93 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %93, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp216 = icmp eq %union.rec* %95, null
  br i1 %cmp216, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.195
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.250

cond.false:                                       ; preds = %if.end.195
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp218 = icmp eq %union.rec* %97, null
  br i1 %cmp218, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %cond.false
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.221:                                   ; preds = %cond.false
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1222 = bitcast %union.rec* %99 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 0
  %opred225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred225, align 8
  store %union.rec* %100, %union.rec** @zz_tmp, align 8
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1226 = bitcast %union.rec* %101 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 0
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred229, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1230 = bitcast %union.rec* %103 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 0
  %opred233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 0
  store %union.rec* %102, %union.rec** %opred233, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1234 = bitcast %union.rec* %105 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 0
  %opred237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %opred237, align 8
  %os1238 = bitcast %union.rec* %106 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %osucc241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc241, align 8
  %107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1242 = bitcast %union.rec* %108 to %struct.word_type*
  %olist243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist243, i32 0, i64 0
  %opred245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx244, i32 0, i32 0
  store %union.rec* %107, %union.rec** %opred245, align 8
  %109 = load %union.rec*, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1246 = bitcast %union.rec* %110 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 0
  %osucc249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc249, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.221, %cond.true.220
  %cond = phi %union.rec* [ %98, %cond.true.220 ], [ %109, %cond.false.221 ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end, %cond.true
  %cond251 = phi %union.rec* [ %96, %cond.true ], [ %cond, %cond.end ]
  %111 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %111, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** %inside.addr, align 8
  store %union.rec* %112, %union.rec** @zz_hold, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp252 = icmp eq %union.rec* %113, null
  br i1 %cmp252, label %cond.true.254, label %cond.false.255

cond.true.254:                                    ; preds = %cond.end.250
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.290

cond.false.255:                                   ; preds = %cond.end.250
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp256 = icmp eq %union.rec* %115, null
  br i1 %cmp256, label %cond.true.258, label %cond.false.259

cond.true.258:                                    ; preds = %cond.false.255
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.288

cond.false.259:                                   ; preds = %cond.false.255
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1260 = bitcast %union.rec* %117 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 1
  %opred263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred263, align 8
  store %union.rec* %118, %union.rec** @zz_tmp, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1264 = bitcast %union.rec* %119 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 1
  %opred267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred267, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1268 = bitcast %union.rec* %121 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 1
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  store %union.rec* %120, %union.rec** %opred271, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1272 = bitcast %union.rec* %123 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 1
  %opred275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %opred275, align 8
  %os1276 = bitcast %union.rec* %124 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 1
  %osucc279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 1
  store %union.rec* %122, %union.rec** %osucc279, align 8
  %125 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1280 = bitcast %union.rec* %126 to %struct.word_type*
  %olist281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist281, i32 0, i64 1
  %opred283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx282, i32 0, i32 0
  store %union.rec* %125, %union.rec** %opred283, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %128 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1284 = bitcast %union.rec* %128 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 1
  %osucc287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 1
  store %union.rec* %127, %union.rec** %osucc287, align 8
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.259, %cond.true.258
  %cond289 = phi %union.rec* [ %116, %cond.true.258 ], [ %127, %cond.false.259 ]
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.end.288, %cond.true.254
  %cond291 = phi %union.rec* [ %114, %cond.true.254 ], [ %cond289, %cond.end.288 ]
  %129 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %129, %union.rec** %inside.addr, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %cond.end.290, %for.end.87
  %130 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1293 = bitcast %union.rec* %130 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 0
  %osucc296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 1
  %131 = load %union.rec*, %union.rec** %osucc296, align 8
  %os1297 = bitcast %union.rec* %131 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 1
  %opred300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 0
  %132 = load %union.rec*, %union.rec** %opred300, align 8
  store %union.rec* %132, %union.rec** %hyph_file, align 8
  br label %for.cond.301

for.cond.301:                                     ; preds = %for.inc.310, %if.end.292
  %133 = load %union.rec*, %union.rec** %hyph_file, align 8
  %os1302 = bitcast %union.rec* %133 to %struct.word_type*
  %ou1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1302, i32 0, i32 1
  %os11304 = bitcast %union.FIRST_UNION* %ou1303 to %struct.anon.0*
  %otype305 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11304, i32 0, i32 0
  %134 = load i8, i8* %otype305, align 1
  %conv306 = zext i8 %134 to i32
  %cmp307 = icmp eq i32 %conv306, 0
  br i1 %cmp307, label %for.body.309, label %for.end.315

for.body.309:                                     ; preds = %for.cond.301
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.body.309
  %135 = load %union.rec*, %union.rec** %hyph_file, align 8
  %os1311 = bitcast %union.rec* %135 to %struct.word_type*
  %olist312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 0
  %arrayidx313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist312, i32 0, i64 1
  %opred314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx313, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred314, align 8
  store %union.rec* %136, %union.rec** %hyph_file, align 8
  br label %for.cond.301

for.end.315:                                      ; preds = %for.cond.301
  %137 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1316 = bitcast %union.rec* %137 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 0
  %osucc319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 1
  %138 = load %union.rec*, %union.rec** %osucc319, align 8
  store %union.rec* %138, %union.rec** @xx_link, align 8
  %139 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %139, %union.rec** @zz_hold, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %140 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 1
  %osucc323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 1
  %141 = load %union.rec*, %union.rec** %osucc323, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp324 = icmp eq %union.rec* %141, %142
  br i1 %cmp324, label %cond.true.326, label %cond.false.327

cond.true.326:                                    ; preds = %for.end.315
  br label %cond.end.356

cond.false.327:                                   ; preds = %for.end.315
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %143 to %struct.word_type*
  %olist329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist329, i32 0, i64 1
  %osucc331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx330, i32 0, i32 1
  %144 = load %union.rec*, %union.rec** %osucc331, align 8
  store %union.rec* %144, %union.rec** @zz_res, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %145 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %opred335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %opred335, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1336 = bitcast %union.rec* %147 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %146, %union.rec** %opred339, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %149 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 1
  %opred343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %opred343, align 8
  %os1344 = bitcast %union.rec* %150 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 1
  %osucc347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc347, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1348 = bitcast %union.rec* %152 to %struct.word_type*
  %olist349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist349, i32 0, i64 1
  %osucc351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx350, i32 0, i32 1
  store %union.rec* %151, %union.rec** %osucc351, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1352 = bitcast %union.rec* %153 to %struct.word_type*
  %olist353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist353, i32 0, i64 1
  %opred355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx354, i32 0, i32 0
  store %union.rec* %151, %union.rec** %opred355, align 8
  %154 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.327, %cond.true.326
  %cond357 = phi %union.rec* [ null, %cond.true.326 ], [ %154, %cond.false.327 ]
  %155 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %155, %union.rec** @zz_hold, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1358 = bitcast %union.rec* %156 to %struct.word_type*
  %olist359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1358, i32 0, i32 0
  %arrayidx360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist359, i32 0, i64 0
  %osucc361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx360, i32 0, i32 1
  %157 = load %union.rec*, %union.rec** %osucc361, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp362 = icmp eq %union.rec* %157, %158
  br i1 %cmp362, label %cond.true.364, label %cond.false.365

cond.true.364:                                    ; preds = %cond.end.356
  br label %cond.end.394

cond.false.365:                                   ; preds = %cond.end.356
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1366 = bitcast %union.rec* %159 to %struct.word_type*
  %olist367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist367, i32 0, i64 0
  %osucc369 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx368, i32 0, i32 1
  %160 = load %union.rec*, %union.rec** %osucc369, align 8
  store %union.rec* %160, %union.rec** @zz_res, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1370 = bitcast %union.rec* %161 to %struct.word_type*
  %olist371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist371, i32 0, i64 0
  %opred373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx372, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred373, align 8
  %163 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1374 = bitcast %union.rec* %163 to %struct.word_type*
  %olist375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist375, i32 0, i64 0
  %opred377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx376, i32 0, i32 0
  store %union.rec* %162, %union.rec** %opred377, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1378 = bitcast %union.rec* %165 to %struct.word_type*
  %olist379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist379, i32 0, i64 0
  %opred381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx380, i32 0, i32 0
  %166 = load %union.rec*, %union.rec** %opred381, align 8
  %os1382 = bitcast %union.rec* %166 to %struct.word_type*
  %olist383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist383, i32 0, i64 0
  %osucc385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx384, i32 0, i32 1
  store %union.rec* %164, %union.rec** %osucc385, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1386 = bitcast %union.rec* %168 to %struct.word_type*
  %olist387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist387, i32 0, i64 0
  %osucc389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx388, i32 0, i32 1
  store %union.rec* %167, %union.rec** %osucc389, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1390 = bitcast %union.rec* %169 to %struct.word_type*
  %olist391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1390, i32 0, i32 0
  %arrayidx392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist391, i32 0, i64 0
  %opred393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx392, i32 0, i32 0
  store %union.rec* %167, %union.rec** %opred393, align 8
  %170 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.365, %cond.true.364
  %cond395 = phi %union.rec* [ null, %cond.true.364 ], [ %170, %cond.false.365 ]
  %171 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1396 = bitcast %union.rec* %173 to %struct.word_type*
  %ou1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 1
  %os11398 = bitcast %union.FIRST_UNION* %ou1397 to %struct.anon.0*
  %otype399 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11398, i32 0, i32 0
  %174 = load i8, i8* %otype399, align 1
  %conv400 = zext i8 %174 to i32
  %cmp401 = icmp eq i32 %conv400, 11
  br i1 %cmp401, label %cond.true.411, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %cond.end.394
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1404 = bitcast %union.rec* %175 to %struct.word_type*
  %ou1405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1404, i32 0, i32 1
  %os11406 = bitcast %union.FIRST_UNION* %ou1405 to %struct.anon.0*
  %otype407 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11406, i32 0, i32 0
  %176 = load i8, i8* %otype407, align 1
  %conv408 = zext i8 %176 to i32
  %cmp409 = icmp eq i32 %conv408, 12
  br i1 %cmp409, label %cond.true.411, label %cond.false.416

cond.true.411:                                    ; preds = %lor.lhs.false.403, %cond.end.394
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1412 = bitcast %union.rec* %177 to %struct.word_type*
  %ou1413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 1
  %os11414 = bitcast %union.FIRST_UNION* %ou1413 to %struct.anon.0*
  %orec_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11414, i32 0, i32 1
  %178 = load i8, i8* %orec_size, align 1
  %conv415 = zext i8 %178 to i32
  br label %cond.end.424

cond.false.416:                                   ; preds = %lor.lhs.false.403
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1417 = bitcast %union.rec* %179 to %struct.word_type*
  %ou1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1417, i32 0, i32 1
  %os11419 = bitcast %union.FIRST_UNION* %ou1418 to %struct.anon.0*
  %otype420 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11419, i32 0, i32 0
  %180 = load i8, i8* %otype420, align 1
  %idxprom421 = zext i8 %180 to i64
  %arrayidx422 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom421
  %181 = load i8, i8* %arrayidx422, align 1
  %conv423 = zext i8 %181 to i32
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.416, %cond.true.411
  %cond425 = phi i32 [ %conv415, %cond.true.411 ], [ %conv423, %cond.false.416 ]
  store i32 %cond425, i32* @zz_size, align 4
  %182 = load i32, i32* @zz_size, align 4
  %idxprom426 = sext i32 %182 to i64
  %arrayidx427 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom426
  %183 = load %union.rec*, %union.rec** %arrayidx427, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1428 = bitcast %union.rec* %184 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 0
  %opred431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 0
  store %union.rec* %183, %union.rec** %opred431, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = load i32, i32* @zz_size, align 4
  %idxprom432 = sext i32 %186 to i64
  %arrayidx433 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom432
  store %union.rec* %185, %union.rec** %arrayidx433, align 8
  %187 = load %union.rec*, %union.rec** %hyph_file, align 8
  %os1434 = bitcast %union.rec* %187 to %struct.word_type*
  %ou1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1434, i32 0, i32 1
  %os11436 = bitcast %union.FIRST_UNION* %ou1435 to %struct.anon.0*
  %otype437 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11436, i32 0, i32 0
  %188 = load i8, i8* %otype437, align 1
  %conv438 = zext i8 %188 to i32
  %cmp439 = icmp eq i32 %conv438, 11
  br i1 %cmp439, label %if.end.454, label %lor.lhs.false.441

lor.lhs.false.441:                                ; preds = %cond.end.424
  %189 = load %union.rec*, %union.rec** %hyph_file, align 8
  %os1442 = bitcast %union.rec* %189 to %struct.word_type*
  %ou1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 1
  %os11444 = bitcast %union.FIRST_UNION* %ou1443 to %struct.anon.0*
  %otype445 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11444, i32 0, i32 0
  %190 = load i8, i8* %otype445, align 1
  %conv446 = zext i8 %190 to i32
  %cmp447 = icmp eq i32 %conv446, 12
  br i1 %cmp447, label %if.end.454, label %if.then.449

if.then.449:                                      ; preds = %lor.lhs.false.441
  %191 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1450 = bitcast %union.rec* %191 to %struct.word_type*
  %ou1451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1450, i32 0, i32 1
  %ofpos452 = bitcast %union.FIRST_UNION* %ou1451 to %struct.FILE_POS*
  %call453 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos452)
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.449, %lor.lhs.false.441, %cond.end.424
  %192 = load %union.rec*, %union.rec** %hyph_file, align 8
  %os1455 = bitcast %union.rec* %192 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call456 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp457 = icmp eq i32 %call456, 0
  br i1 %cmp457, label %if.then.466, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %if.end.454
  %193 = load %union.rec*, %union.rec** %hyph_file, align 8
  %os1460 = bitcast %union.rec* %193 to %struct.word_type*
  %ostring461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 4
  %arraydecay462 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring461, i32 0, i32 0
  %call463 = call i32 @strcmp(i8* %arraydecay462, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp464 = icmp eq i32 %call463, 0
  br i1 %cmp464, label %if.then.466, label %if.else.508

if.then.466:                                      ; preds = %lor.lhs.false.459, %if.end.454
  %194 = load %union.rec*, %union.rec** %hyph_file, align 8
  store %union.rec* %194, %union.rec** @zz_hold, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %195, %union.rec** @zz_hold, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1467 = bitcast %union.rec* %196 to %struct.word_type*
  %ou1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 1
  %os11469 = bitcast %union.FIRST_UNION* %ou1468 to %struct.anon.0*
  %otype470 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11469, i32 0, i32 0
  %197 = load i8, i8* %otype470, align 1
  %conv471 = zext i8 %197 to i32
  %cmp472 = icmp eq i32 %conv471, 11
  br i1 %cmp472, label %cond.true.482, label %lor.lhs.false.474

lor.lhs.false.474:                                ; preds = %if.then.466
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1475 = bitcast %union.rec* %198 to %struct.word_type*
  %ou1476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 1
  %os11477 = bitcast %union.FIRST_UNION* %ou1476 to %struct.anon.0*
  %otype478 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11477, i32 0, i32 0
  %199 = load i8, i8* %otype478, align 1
  %conv479 = zext i8 %199 to i32
  %cmp480 = icmp eq i32 %conv479, 12
  br i1 %cmp480, label %cond.true.482, label %cond.false.488

cond.true.482:                                    ; preds = %lor.lhs.false.474, %if.then.466
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1483 = bitcast %union.rec* %200 to %struct.word_type*
  %ou1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 1
  %os11485 = bitcast %union.FIRST_UNION* %ou1484 to %struct.anon.0*
  %orec_size486 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11485, i32 0, i32 1
  %201 = load i8, i8* %orec_size486, align 1
  %conv487 = zext i8 %201 to i32
  br label %cond.end.496

cond.false.488:                                   ; preds = %lor.lhs.false.474
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1489 = bitcast %union.rec* %202 to %struct.word_type*
  %ou1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1489, i32 0, i32 1
  %os11491 = bitcast %union.FIRST_UNION* %ou1490 to %struct.anon.0*
  %otype492 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11491, i32 0, i32 0
  %203 = load i8, i8* %otype492, align 1
  %idxprom493 = zext i8 %203 to i64
  %arrayidx494 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom493
  %204 = load i8, i8* %arrayidx494, align 1
  %conv495 = zext i8 %204 to i32
  br label %cond.end.496

cond.end.496:                                     ; preds = %cond.false.488, %cond.true.482
  %cond497 = phi i32 [ %conv487, %cond.true.482 ], [ %conv495, %cond.false.488 ]
  store i32 %cond497, i32* @zz_size, align 4
  %205 = load i32, i32* @zz_size, align 4
  %idxprom498 = sext i32 %205 to i64
  %arrayidx499 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom498
  %206 = load %union.rec*, %union.rec** %arrayidx499, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1500 = bitcast %union.rec* %207 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 0
  %opred503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 0
  store %union.rec* %206, %union.rec** %opred503, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = load i32, i32* @zz_size, align 4
  %idxprom504 = sext i32 %209 to i64
  %arrayidx505 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom504
  store %union.rec* %208, %union.rec** %arrayidx505, align 8
  %210 = load i32, i32* @lang_count, align 4
  %idxprom506 = sext i32 %210 to i64
  %211 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %arrayidx507 = getelementptr inbounds %union.rec*, %union.rec** %211, i64 %idxprom506
  store %union.rec* null, %union.rec** %arrayidx507, align 8
  br label %if.end.511

if.else.508:                                      ; preds = %lor.lhs.false.459
  %212 = load %union.rec*, %union.rec** %hyph_file, align 8
  %213 = load i32, i32* @lang_count, align 4
  %idxprom509 = sext i32 %213 to i64
  %214 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %arrayidx510 = getelementptr inbounds %union.rec*, %union.rec** %214, i64 %idxprom509
  store %union.rec* %212, %union.rec** %arrayidx510, align 8
  br label %if.end.511

if.end.511:                                       ; preds = %if.else.508, %cond.end.496
  %215 = load %union.rec*, %union.rec** %inside.addr, align 8
  %216 = load i32, i32* @lang_count, align 4
  %idxprom512 = sext i32 %216 to i64
  %arrayidx513 = getelementptr inbounds [64 x %union.rec*], [64 x %union.rec*]* @lang_ends, i32 0, i64 %idxprom512
  store %union.rec* %215, %union.rec** %arrayidx513, align 8
  %217 = load %union.rec*, %union.rec** %inside.addr, align 8
  %os1514 = bitcast %union.rec* %217 to %struct.word_type*
  %olist515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1514, i32 0, i32 0
  %arrayidx516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist515, i32 0, i64 0
  %osucc517 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx516, i32 0, i32 1
  %218 = load %union.rec*, %union.rec** %osucc517, align 8
  store %union.rec* %218, %union.rec** %link, align 8
  br label %for.cond.518

for.cond.518:                                     ; preds = %for.inc.722, %if.end.511
  %219 = load %union.rec*, %union.rec** %link, align 8
  %220 = load %union.rec*, %union.rec** %inside.addr, align 8
  %cmp519 = icmp ne %union.rec* %219, %220
  br i1 %cmp519, label %for.body.521, label %for.end.727

for.body.521:                                     ; preds = %for.cond.518
  %221 = load %union.rec*, %union.rec** %link, align 8
  %os1522 = bitcast %union.rec* %221 to %struct.word_type*
  %olist523 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1522, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist523, i32 0, i64 1
  %opred525 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx524, i32 0, i32 0
  %222 = load %union.rec*, %union.rec** %opred525, align 8
  store %union.rec* %222, %union.rec** %y, align 8
  br label %for.cond.526

for.cond.526:                                     ; preds = %for.inc.535, %for.body.521
  %223 = load %union.rec*, %union.rec** %y, align 8
  %os1527 = bitcast %union.rec* %223 to %struct.word_type*
  %ou1528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 1
  %os11529 = bitcast %union.FIRST_UNION* %ou1528 to %struct.anon.0*
  %otype530 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11529, i32 0, i32 0
  %224 = load i8, i8* %otype530, align 1
  %conv531 = zext i8 %224 to i32
  %cmp532 = icmp eq i32 %conv531, 0
  br i1 %cmp532, label %for.body.534, label %for.end.540

for.body.534:                                     ; preds = %for.cond.526
  br label %for.inc.535

for.inc.535:                                      ; preds = %for.body.534
  %225 = load %union.rec*, %union.rec** %y, align 8
  %os1536 = bitcast %union.rec* %225 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 1
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %226 = load %union.rec*, %union.rec** %opred539, align 8
  store %union.rec* %226, %union.rec** %y, align 8
  br label %for.cond.526

for.end.540:                                      ; preds = %for.cond.526
  %227 = load %union.rec*, %union.rec** %y, align 8
  %os1541 = bitcast %union.rec* %227 to %struct.word_type*
  %ou1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1541, i32 0, i32 1
  %os11543 = bitcast %union.FIRST_UNION* %ou1542 to %struct.anon.0*
  %otype544 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11543, i32 0, i32 0
  %228 = load i8, i8* %otype544, align 1
  %conv545 = zext i8 %228 to i32
  %cmp546 = icmp eq i32 %conv545, 1
  br i1 %cmp546, label %if.then.548, label %if.end.681

if.then.548:                                      ; preds = %for.end.540
  %229 = load %union.rec*, %union.rec** %link, align 8
  %os1549 = bitcast %union.rec* %229 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %opred552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %opred552, align 8
  store %union.rec* %230, %union.rec** %link, align 8
  %231 = load %union.rec*, %union.rec** %link, align 8
  %os1553 = bitcast %union.rec* %231 to %struct.word_type*
  %olist554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1553, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist554, i32 0, i64 0
  %osucc556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx555, i32 0, i32 1
  %232 = load %union.rec*, %union.rec** %osucc556, align 8
  store %union.rec* %232, %union.rec** @xx_link, align 8
  %233 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %233, %union.rec** @zz_hold, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1557 = bitcast %union.rec* %234 to %struct.word_type*
  %olist558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 0
  %arrayidx559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist558, i32 0, i64 1
  %osucc560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx559, i32 0, i32 1
  %235 = load %union.rec*, %union.rec** %osucc560, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp561 = icmp eq %union.rec* %235, %236
  br i1 %cmp561, label %cond.true.563, label %cond.false.564

cond.true.563:                                    ; preds = %if.then.548
  br label %cond.end.593

cond.false.564:                                   ; preds = %if.then.548
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %237 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 1
  %osucc568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 1
  %238 = load %union.rec*, %union.rec** %osucc568, align 8
  store %union.rec* %238, %union.rec** @zz_res, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1569 = bitcast %union.rec* %239 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 1
  %opred572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 0
  %240 = load %union.rec*, %union.rec** %opred572, align 8
  %241 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1573 = bitcast %union.rec* %241 to %struct.word_type*
  %olist574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist574, i32 0, i64 1
  %opred576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx575, i32 0, i32 0
  store %union.rec* %240, %union.rec** %opred576, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1577 = bitcast %union.rec* %243 to %struct.word_type*
  %olist578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist578, i32 0, i64 1
  %opred580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx579, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %opred580, align 8
  %os1581 = bitcast %union.rec* %244 to %struct.word_type*
  %olist582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist582, i32 0, i64 1
  %osucc584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx583, i32 0, i32 1
  store %union.rec* %242, %union.rec** %osucc584, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1585 = bitcast %union.rec* %246 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 1
  %osucc588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 1
  store %union.rec* %245, %union.rec** %osucc588, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1589 = bitcast %union.rec* %247 to %struct.word_type*
  %olist590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 0
  %arrayidx591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist590, i32 0, i64 1
  %opred592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx591, i32 0, i32 0
  store %union.rec* %245, %union.rec** %opred592, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.593

cond.end.593:                                     ; preds = %cond.false.564, %cond.true.563
  %cond594 = phi %union.rec* [ null, %cond.true.563 ], [ %248, %cond.false.564 ]
  store %union.rec* %cond594, %union.rec** @xx_tmp, align 8
  %249 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %249, %union.rec** @zz_hold, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1595 = bitcast %union.rec* %250 to %struct.word_type*
  %olist596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1595, i32 0, i32 0
  %arrayidx597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist596, i32 0, i64 0
  %osucc598 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx597, i32 0, i32 1
  %251 = load %union.rec*, %union.rec** %osucc598, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp599 = icmp eq %union.rec* %251, %252
  br i1 %cmp599, label %cond.true.601, label %cond.false.602

cond.true.601:                                    ; preds = %cond.end.593
  br label %cond.end.631

cond.false.602:                                   ; preds = %cond.end.593
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1603 = bitcast %union.rec* %253 to %struct.word_type*
  %olist604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1603, i32 0, i32 0
  %arrayidx605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist604, i32 0, i64 0
  %osucc606 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx605, i32 0, i32 1
  %254 = load %union.rec*, %union.rec** %osucc606, align 8
  store %union.rec* %254, %union.rec** @zz_res, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1607 = bitcast %union.rec* %255 to %struct.word_type*
  %olist608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1607, i32 0, i32 0
  %arrayidx609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist608, i32 0, i64 0
  %opred610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx609, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %opred610, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1611 = bitcast %union.rec* %257 to %struct.word_type*
  %olist612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 0
  %arrayidx613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist612, i32 0, i64 0
  %opred614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx613, i32 0, i32 0
  store %union.rec* %256, %union.rec** %opred614, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1615 = bitcast %union.rec* %259 to %struct.word_type*
  %olist616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1615, i32 0, i32 0
  %arrayidx617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist616, i32 0, i64 0
  %opred618 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx617, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred618, align 8
  %os1619 = bitcast %union.rec* %260 to %struct.word_type*
  %olist620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1619, i32 0, i32 0
  %arrayidx621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist620, i32 0, i64 0
  %osucc622 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx621, i32 0, i32 1
  store %union.rec* %258, %union.rec** %osucc622, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1623 = bitcast %union.rec* %262 to %struct.word_type*
  %olist624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1623, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist624, i32 0, i64 0
  %osucc626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx625, i32 0, i32 1
  store %union.rec* %261, %union.rec** %osucc626, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1627 = bitcast %union.rec* %263 to %struct.word_type*
  %olist628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1627, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist628, i32 0, i64 0
  %opred630 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx629, i32 0, i32 0
  store %union.rec* %261, %union.rec** %opred630, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.631

cond.end.631:                                     ; preds = %cond.false.602, %cond.true.601
  %cond632 = phi %union.rec* [ null, %cond.true.601 ], [ %264, %cond.false.602 ]
  %265 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %265, %union.rec** @zz_hold, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1633 = bitcast %union.rec* %267 to %struct.word_type*
  %ou1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1633, i32 0, i32 1
  %os11635 = bitcast %union.FIRST_UNION* %ou1634 to %struct.anon.0*
  %otype636 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11635, i32 0, i32 0
  %268 = load i8, i8* %otype636, align 1
  %conv637 = zext i8 %268 to i32
  %cmp638 = icmp eq i32 %conv637, 11
  br i1 %cmp638, label %cond.true.648, label %lor.lhs.false.640

lor.lhs.false.640:                                ; preds = %cond.end.631
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1641 = bitcast %union.rec* %269 to %struct.word_type*
  %ou1642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 1
  %os11643 = bitcast %union.FIRST_UNION* %ou1642 to %struct.anon.0*
  %otype644 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11643, i32 0, i32 0
  %270 = load i8, i8* %otype644, align 1
  %conv645 = zext i8 %270 to i32
  %cmp646 = icmp eq i32 %conv645, 12
  br i1 %cmp646, label %cond.true.648, label %cond.false.654

cond.true.648:                                    ; preds = %lor.lhs.false.640, %cond.end.631
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1649 = bitcast %union.rec* %271 to %struct.word_type*
  %ou1650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 1
  %os11651 = bitcast %union.FIRST_UNION* %ou1650 to %struct.anon.0*
  %orec_size652 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11651, i32 0, i32 1
  %272 = load i8, i8* %orec_size652, align 1
  %conv653 = zext i8 %272 to i32
  br label %cond.end.662

cond.false.654:                                   ; preds = %lor.lhs.false.640
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1655 = bitcast %union.rec* %273 to %struct.word_type*
  %ou1656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 1
  %os11657 = bitcast %union.FIRST_UNION* %ou1656 to %struct.anon.0*
  %otype658 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11657, i32 0, i32 0
  %274 = load i8, i8* %otype658, align 1
  %idxprom659 = zext i8 %274 to i64
  %arrayidx660 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom659
  %275 = load i8, i8* %arrayidx660, align 1
  %conv661 = zext i8 %275 to i32
  br label %cond.end.662

cond.end.662:                                     ; preds = %cond.false.654, %cond.true.648
  %cond663 = phi i32 [ %conv653, %cond.true.648 ], [ %conv661, %cond.false.654 ]
  store i32 %cond663, i32* @zz_size, align 4
  %276 = load i32, i32* @zz_size, align 4
  %idxprom664 = sext i32 %276 to i64
  %arrayidx665 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom664
  %277 = load %union.rec*, %union.rec** %arrayidx665, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1666 = bitcast %union.rec* %278 to %struct.word_type*
  %olist667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1666, i32 0, i32 0
  %arrayidx668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist667, i32 0, i64 0
  %opred669 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx668, i32 0, i32 0
  store %union.rec* %277, %union.rec** %opred669, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = load i32, i32* @zz_size, align 4
  %idxprom670 = sext i32 %280 to i64
  %arrayidx671 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom670
  store %union.rec* %279, %union.rec** %arrayidx671, align 8
  %281 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1672 = bitcast %union.rec* %281 to %struct.word_type*
  %olist673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 0
  %arrayidx674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist673, i32 0, i64 1
  %osucc675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx674, i32 0, i32 1
  %282 = load %union.rec*, %union.rec** %osucc675, align 8
  %283 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp676 = icmp eq %union.rec* %282, %283
  br i1 %cmp676, label %if.then.678, label %if.end.680

if.then.678:                                      ; preds = %cond.end.662
  %284 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call679 = call i32 @DisposeObject(%union.rec* %284)
  br label %if.end.680

if.end.680:                                       ; preds = %if.then.678, %cond.end.662
  br label %for.inc.722

if.end.681:                                       ; preds = %for.end.540
  %285 = load %union.rec*, %union.rec** %y, align 8
  %os1682 = bitcast %union.rec* %285 to %struct.word_type*
  %ou1683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1682, i32 0, i32 1
  %os11684 = bitcast %union.FIRST_UNION* %ou1683 to %struct.anon.0*
  %otype685 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11684, i32 0, i32 0
  %286 = load i8, i8* %otype685, align 1
  %conv686 = zext i8 %286 to i32
  %cmp687 = icmp eq i32 %conv686, 11
  br i1 %cmp687, label %if.end.702, label %lor.lhs.false.689

lor.lhs.false.689:                                ; preds = %if.end.681
  %287 = load %union.rec*, %union.rec** %y, align 8
  %os1690 = bitcast %union.rec* %287 to %struct.word_type*
  %ou1691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1690, i32 0, i32 1
  %os11692 = bitcast %union.FIRST_UNION* %ou1691 to %struct.anon.0*
  %otype693 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11692, i32 0, i32 0
  %288 = load i8, i8* %otype693, align 1
  %conv694 = zext i8 %288 to i32
  %cmp695 = icmp eq i32 %conv694, 12
  br i1 %cmp695, label %if.end.702, label %if.then.697

if.then.697:                                      ; preds = %lor.lhs.false.689
  %289 = load %union.rec*, %union.rec** %y, align 8
  %os1698 = bitcast %union.rec* %289 to %struct.word_type*
  %ou1699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1698, i32 0, i32 1
  %ofpos700 = bitcast %union.FIRST_UNION* %ou1699 to %struct.FILE_POS*
  %call701 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos700)
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.697, %lor.lhs.false.689, %if.end.681
  %290 = load %union.rec*, %union.rec** %y, align 8
  %os1703 = bitcast %union.rec* %290 to %struct.word_type*
  %ostring704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 4
  %arraydecay705 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring704, i32 0, i32 0
  %call706 = call i64 @strlen(i8* %arraydecay705) #5
  %conv707 = trunc i64 %call706 to i32
  store i32 %conv707, i32* %len, align 4
  %291 = load i32, i32* %len, align 4
  %cmp708 = icmp eq i32 %291, 0
  br i1 %cmp708, label %if.then.710, label %if.end.715

if.then.710:                                      ; preds = %if.end.702
  %292 = load %union.rec*, %union.rec** %y, align 8
  %os1711 = bitcast %union.rec* %292 to %struct.word_type*
  %ou1712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1711, i32 0, i32 1
  %ofpos713 = bitcast %union.FIRST_UNION* %ou1712 to %struct.FILE_POS*
  %call714 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos713)
  br label %if.end.715

if.end.715:                                       ; preds = %if.then.710, %if.end.702
  %293 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %293, 1
  %idxprom716 = sext i32 %sub to i64
  %294 = load %union.rec*, %union.rec** %y, align 8
  %os1717 = bitcast %union.rec* %294 to %struct.word_type*
  %ostring718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 4
  %arrayidx719 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring718, i32 0, i64 %idxprom716
  %295 = load i8, i8* %arrayidx719, align 1
  store i8 %295, i8* %ch, align 1
  %296 = load i8, i8* %ch, align 1
  %idxprom720 = zext i8 %296 to i64
  %arrayidx721 = getelementptr inbounds [256 x i32], [256 x i32]* @LanguageSentenceEnds, i32 0, i64 %idxprom720
  store i32 1, i32* %arrayidx721, align 4
  br label %for.inc.722

for.inc.722:                                      ; preds = %if.end.715, %if.end.680
  %297 = load %union.rec*, %union.rec** %link, align 8
  %os1723 = bitcast %union.rec* %297 to %struct.word_type*
  %olist724 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1723, i32 0, i32 0
  %arrayidx725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist724, i32 0, i64 0
  %osucc726 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx725, i32 0, i32 1
  %298 = load %union.rec*, %union.rec** %osucc726, align 8
  store %union.rec* %298, %union.rec** %link, align 8
  br label %for.cond.518

for.end.727:                                      ; preds = %for.cond.518
  %299 = load i32, i32* @InitializeAll, align 4
  %tobool = icmp ne i32 %299, 0
  br i1 %tobool, label %if.then.728, label %if.end.736

if.then.728:                                      ; preds = %for.end.727
  %300 = load i32, i32* @lang_count, align 4
  %idxprom729 = sext i32 %300 to i64
  %301 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %arrayidx730 = getelementptr inbounds %union.rec*, %union.rec** %301, i64 %idxprom729
  %302 = load %union.rec*, %union.rec** %arrayidx730, align 8
  %cmp731 = icmp ne %union.rec* %302, null
  br i1 %cmp731, label %if.then.733, label %if.end.735

if.then.733:                                      ; preds = %if.then.728
  %303 = load i32, i32* @lang_count, align 4
  %call734 = call i32 @ReadHyphTable(i32 %303)
  store i32 %call734, i32* %junk, align 4
  br label %if.end.735

if.end.735:                                       ; preds = %if.then.733, %if.then.728
  br label %if.end.736

if.end.736:                                       ; preds = %if.end.735, %for.end.727
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @ltab_insert(%union.rec* %x, %struct.anon** %S) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %S.addr = alloca %struct.anon**, align 8
  %pos = alloca i32, align 4
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.anon** %S, %struct.anon*** %S.addr, align 8
  %0 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %1 = load %struct.anon*, %struct.anon** %0, align 8
  %langtab_count = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %2 = load i32, i32* %langtab_count, align 4
  %3 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %4 = load %struct.anon*, %struct.anon** %3, align 8
  %langtab_size = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %5 = load i32, i32* %langtab_size, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %7 = load %struct.anon*, %struct.anon** %6, align 8
  %8 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %9 = load %struct.anon*, %struct.anon** %8, align 8
  %langtab_size1 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %10 = load i32, i32* %langtab_size1, align 4
  %mul = mul nsw i32 2, %10
  %call = call %struct.anon* @ltab_rehash(%struct.anon* %7, i32 %mul)
  %11 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  store %struct.anon* %call, %struct.anon** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %12 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr2, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv3 = zext i8 %18 to i32
  %19 = load i32, i32* %pos, align 4
  %add = add nsw i32 %19, %conv3
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %pos, align 4
  %21 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %22 = load %struct.anon*, %struct.anon** %21, align 8
  %langtab_size4 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %23 = load i32, i32* %langtab_size4, align 4
  %rem = srem i32 %20, %23
  store i32 %rem, i32* %pos, align 4
  %24 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %26 = load %struct.anon*, %struct.anon** %25, align 8
  %langtab_item = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item, i32 0, i64 %idxprom
  %27 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp5 = icmp eq %union.rec* %27, null
  br i1 %cmp5, label %if.then.7, label %if.end.48

if.then.7:                                        ; preds = %while.end
  %28 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv8 = zext i8 %28 to i32
  store i32 %conv8, i32* @zz_size, align 4
  %conv9 = sext i32 %conv8 to i64
  %cmp10 = icmp uge i64 %conv9, 265
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.7
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %29)
  br label %if.end.28

if.else:                                          ; preds = %if.then.7
  %30 = load i32, i32* @zz_size, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom14
  %31 = load %union.rec*, %union.rec** %arrayidx15, align 8
  %cmp16 = icmp eq %union.rec* %31, null
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %32 = load i32, i32* @zz_size, align 4
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call %union.rec* @GetMemory(i32 %32, %struct.FILE_POS* %33)
  store %union.rec* %call19, %union.rec** @zz_hold, align 8
  br label %if.end.27

if.else.20:                                       ; preds = %if.else
  %34 = load i32, i32* @zz_size, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom21
  %35 = load %union.rec*, %union.rec** %arrayidx22, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %36 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred, align 8
  %38 = load i32, i32* @zz_size, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom25
  store %union.rec* %37, %union.rec** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.12
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %39 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %41 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %42 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred36, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %43 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc40, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %44 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred44, align 8
  %45 = load i32, i32* %pos, align 4
  %idxprom45 = sext i32 %45 to i64
  %46 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %47 = load %struct.anon*, %struct.anon** %46, align 8
  %langtab_item46 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item46, i32 0, i64 %idxprom45
  store %union.rec* %40, %union.rec** %arrayidx47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.28, %while.end
  %48 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %50 = load %struct.anon*, %struct.anon** %49, align 8
  %langtab_item50 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item50, i32 0, i64 %idxprom49
  %51 = load %union.rec*, %union.rec** %arrayidx51, align 8
  store %union.rec* %51, %union.rec** %z, align 8
  %52 = load %union.rec*, %union.rec** %z, align 8
  %os152 = bitcast %union.rec* %52 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 0
  %osucc55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 1
  %53 = load %union.rec*, %union.rec** %osucc55, align 8
  store %union.rec* %53, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %if.end.48
  %54 = load %union.rec*, %union.rec** %link, align 8
  %55 = load %union.rec*, %union.rec** %z, align 8
  %cmp56 = icmp ne %union.rec* %54, %55
  br i1 %cmp56, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %56 = load %union.rec*, %union.rec** %link, align 8
  %os158 = bitcast %union.rec* %56 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %57, %union.rec** %y, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc, %for.body
  %58 = load %union.rec*, %union.rec** %y, align 8
  %os163 = bitcast %union.rec* %58 to %struct.word_type*
  %ou164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 1
  %os1165 = bitcast %union.FIRST_UNION* %ou164 to %struct.anon.0*
  %otype66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1165, i32 0, i32 0
  %59 = load i8, i8* %otype66, align 1
  %conv67 = zext i8 %59 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %for.body.70, label %for.end

for.body.70:                                      ; preds = %for.cond.62
  br label %for.inc

for.inc:                                          ; preds = %for.body.70
  %60 = load %union.rec*, %union.rec** %y, align 8
  %os171 = bitcast %union.rec* %60 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 1
  %opred74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred74, align 8
  store %union.rec* %61, %union.rec** %y, align 8
  br label %for.cond.62

for.end:                                          ; preds = %for.cond.62
  %62 = load %union.rec*, %union.rec** %x.addr, align 8
  %os175 = bitcast %union.rec* %62 to %struct.word_type*
  %ostring76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 4
  %arraydecay77 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring76, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %y, align 8
  %os178 = bitcast %union.rec* %63 to %struct.word_type*
  %ostring79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 4
  %arraydecay80 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring79, i32 0, i32 0
  %call81 = call i32 @strcmp(i8* %arraydecay77, i8* %arraydecay80) #5
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.95

if.then.84:                                       ; preds = %for.end
  %64 = load %union.rec*, %union.rec** %x.addr, align 8
  %os185 = bitcast %union.rec* %64 to %struct.word_type*
  %ou186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou186 to %struct.FILE_POS*
  %65 = load %union.rec*, %union.rec** %x.addr, align 8
  %os187 = bitcast %union.rec* %65 to %struct.word_type*
  %ostring88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 4
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring88, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os190 = bitcast %union.rec* %66 to %struct.word_type*
  %ou191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 1
  %ofpos92 = bitcast %union.FIRST_UNION* %ou191 to %struct.FILE_POS*
  %call93 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos92)
  %call94 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay89, i8* %call93)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.84, %for.end
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %67 = load %union.rec*, %union.rec** %link, align 8
  %os197 = bitcast %union.rec* %67 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc100, align 8
  store %union.rec* %68, %union.rec** %link, align 8
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  %69 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv102 = zext i8 %69 to i32
  store i32 %conv102, i32* @zz_size, align 4
  %conv103 = sext i32 %conv102 to i64
  %cmp104 = icmp uge i64 %conv103, 265
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %for.end.101
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call107 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %70)
  br label %if.end.125

if.else.108:                                      ; preds = %for.end.101
  %71 = load i32, i32* @zz_size, align 4
  %idxprom109 = sext i32 %71 to i64
  %arrayidx110 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom109
  %72 = load %union.rec*, %union.rec** %arrayidx110, align 8
  %cmp111 = icmp eq %union.rec* %72, null
  br i1 %cmp111, label %if.then.113, label %if.else.115

if.then.113:                                      ; preds = %if.else.108
  %73 = load i32, i32* @zz_size, align 4
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call114 = call %union.rec* @GetMemory(i32 %73, %struct.FILE_POS* %74)
  store %union.rec* %call114, %union.rec** @zz_hold, align 8
  br label %if.end.124

if.else.115:                                      ; preds = %if.else.108
  %75 = load i32, i32* @zz_size, align 4
  %idxprom116 = sext i32 %75 to i64
  %arrayidx117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom116
  %76 = load %union.rec*, %union.rec** %arrayidx117, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %77 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred121, align 8
  %79 = load i32, i32* @zz_size, align 4
  %idxprom122 = sext i32 %79 to i64
  %arrayidx123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom122
  store %union.rec* %78, %union.rec** %arrayidx123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.115, %if.then.113
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.106
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1126 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 1
  %os11128 = bitcast %union.FIRST_UNION* %ou1127 to %struct.anon.0*
  %otype129 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11128, i32 0, i32 0
  store i8 0, i8* %otype129, align 1
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1130 = bitcast %union.rec* %82 to %struct.word_type*
  %olist131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist131, i32 0, i64 1
  %osucc133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx132, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc133, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1134 = bitcast %union.rec* %83 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 1
  %opred137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred137, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1138 = bitcast %union.rec* %84 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 0
  %osucc141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc141, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1142 = bitcast %union.rec* %85 to %struct.word_type*
  %olist143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist143, i32 0, i64 0
  %opred145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx144, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred145, align 8
  store %union.rec* %81, %union.rec** @xx_link, align 8
  %86 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %86, %union.rec** @zz_res, align 8
  %87 = load i32, i32* %pos, align 4
  %idxprom146 = sext i32 %87 to i64
  %88 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %89 = load %struct.anon*, %struct.anon** %88, align 8
  %langtab_item147 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 2
  %arrayidx148 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item147, i32 0, i64 %idxprom146
  %90 = load %union.rec*, %union.rec** %arrayidx148, align 8
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp149 = icmp eq %union.rec* %91, null
  br i1 %cmp149, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.125
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.183

cond.false:                                       ; preds = %if.end.125
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp151 = icmp eq %union.rec* %93, null
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %cond.false
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.154:                                   ; preds = %cond.false
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %95 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 0
  %opred158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred158, align 8
  store %union.rec* %96, %union.rec** @zz_tmp, align 8
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1159 = bitcast %union.rec* %97 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 0
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred162, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1163 = bitcast %union.rec* %99 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 0
  %opred166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 0
  store %union.rec* %98, %union.rec** %opred166, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1167 = bitcast %union.rec* %101 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred170, align 8
  %os1171 = bitcast %union.rec* %102 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %osucc174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc174, align 8
  %103 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1175 = bitcast %union.rec* %104 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  store %union.rec* %103, %union.rec** %opred178, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %106 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1179 = bitcast %union.rec* %106 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 0
  %osucc182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 1
  store %union.rec* %105, %union.rec** %osucc182, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.154, %cond.true.153
  %cond = phi %union.rec* [ %94, %cond.true.153 ], [ %105, %cond.false.154 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end, %cond.true
  %cond184 = phi %union.rec* [ %92, %cond.true ], [ %cond, %cond.end ]
  %107 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %107, %union.rec** @zz_res, align 8
  %108 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %108, %union.rec** @zz_hold, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp185 = icmp eq %union.rec* %109, null
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.end.183
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.223

cond.false.188:                                   ; preds = %cond.end.183
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp189 = icmp eq %union.rec* %111, null
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.false.188
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.221

cond.false.192:                                   ; preds = %cond.false.188
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %113 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 1
  %opred196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred196, align 8
  store %union.rec* %114, %union.rec** @zz_tmp, align 8
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1197 = bitcast %union.rec* %115 to %struct.word_type*
  %olist198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist198, i32 0, i64 1
  %opred200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx199, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %opred200, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1201 = bitcast %union.rec* %117 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  store %union.rec* %116, %union.rec** %opred204, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1205 = bitcast %union.rec* %119 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 1
  %opred208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred208, align 8
  %os1209 = bitcast %union.rec* %120 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 1
  %osucc212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 1
  store %union.rec* %118, %union.rec** %osucc212, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1213 = bitcast %union.rec* %122 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 1
  %opred216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 0
  store %union.rec* %121, %union.rec** %opred216, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %124 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1217 = bitcast %union.rec* %124 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 1
  %osucc220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 1
  store %union.rec* %123, %union.rec** %osucc220, align 8
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.192, %cond.true.191
  %cond222 = phi %union.rec* [ %112, %cond.true.191 ], [ %123, %cond.false.192 ]
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.end.221, %cond.true.187
  %cond224 = phi %union.rec* [ %110, %cond.true.187 ], [ %cond222, %cond.end.221 ]
  ret void
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @DisposeObject(%union.rec*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @ReadHyphTable(i32) #2

; Function Attrs: nounwind uwtable
define i32 @LanguageWordEndsSentence(%union.rec* %wd, i32 %lc_prec) #0 {
entry:
  %retval = alloca i32, align 4
  %wd.addr = alloca %union.rec*, align 8
  %lc_prec.addr = alloca i32, align 4
  %x = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  store %union.rec* %wd, %union.rec** %wd.addr, align 8
  store i32 %lc_prec, i32* %lc_prec.addr, align 4
  %0 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon.0*
  %otype5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os19 = bitcast %union.rec* %5 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %6 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.clear = and i32 %bf.lshr, 63
  %idxprom = zext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [64 x %union.rec*], [64 x %union.rec*]* @lang_ends, i32 0, i64 %idxprom
  %7 = load %union.rec*, %union.rec** %arrayidx, align 8
  store %union.rec* %7, %union.rec** %x, align 8
  %8 = load %union.rec*, %union.rec** %x, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %9, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %if.end
  %10 = load %union.rec*, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** %x, align 8
  %cmp12 = icmp ne %union.rec* %10, %11
  br i1 %cmp12, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %link, align 8
  %os115 = bitcast %union.rec* %12 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os119 = bitcast %union.rec* %14 to %struct.word_type*
  %ou120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 1
  %os1121 = bitcast %union.FIRST_UNION* %ou120 to %struct.anon.0*
  %otype22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1121, i32 0, i32 0
  %15 = load i8, i8* %otype22, align 1
  %conv23 = zext i8 %15 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.18
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os127 = bitcast %union.rec* %16 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 1
  %opred30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred30, align 8
  store %union.rec* %17, %union.rec** %y, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %18 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os131 = bitcast %union.rec* %18 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 4
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring33, i32 0, i32 0
  %call35 = call i32 @StringEndsWith(i8* %arraydecay, i8* %arraydecay34)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.36, label %if.end.68

if.then.36:                                       ; preds = %for.end
  %20 = load i32, i32* %lc_prec.addr, align 4
  %tobool37 = icmp ne i32 %20, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.then.36
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.36
  %21 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os140 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 4
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring41, i32 0, i32 0
  %call43 = call i64 @strlen(i8* %arraydecay42) #5
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os144 = bitcast %union.rec* %22 to %struct.word_type*
  %ostring45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 4
  %arraydecay46 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring45, i32 0, i32 0
  %call47 = call i64 @strlen(i8* %arraydecay46) #5
  %sub = sub i64 %call43, %call47
  %sub48 = sub i64 %sub, 1
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, i32* %pos, align 4
  %23 = load i32, i32* %pos, align 4
  %cmp50 = icmp sge i32 %23, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.end.39
  %24 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %24 to i64
  %25 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os153 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 4
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring54, i32 0, i64 %idxprom52
  %26 = load i8, i8* %arrayidx55, align 1
  %27 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os156 = bitcast %union.rec* %27 to %struct.word_type*
  %ou257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 2
  %os2258 = bitcast %union.SECOND_UNION* %ou257 to %struct.anon.2*
  %28 = bitcast %struct.anon.2* %os2258 to i32*
  %bf.load59 = load i32, i32* %28, align 4
  %bf.clear60 = and i32 %bf.load59, 4095
  %29 = load %union.rec*, %union.rec** %wd.addr, align 8
  %os161 = bitcast %union.rec* %29 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou162 to %struct.FILE_POS*
  %call63 = call i32 @FontMapping(i32 %bf.clear60, %struct.FILE_POS* %ofpos)
  %call64 = call i32 @MapIsLowerCase(i8 zeroext %26, i32 %call63)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %land.lhs.true, %if.end.39
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.end
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %30 = load %union.rec*, %union.rec** %link, align 8
  %os170 = bitcast %union.rec* %30 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %osucc73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc73, align 8
  store %union.rec* %31, %union.rec** %link, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.74, %if.then.66, %if.then.38
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @StringEndsWith(i8*, i8*) #2

declare i32 @MapIsLowerCase(i8 zeroext, i32) #2

declare i32 @FontMapping(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind uwtable
define void @LanguageChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %lname = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon.0*
  %otype5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %4 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou110 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.34

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os111 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call12 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  br label %if.end.34

if.end.16:                                        ; preds = %if.end
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 4
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring18, i32 0, i32 0
  %7 = load %struct.anon*, %struct.anon** @names_tab, align 8
  %call20 = call %union.rec* @ltab_retrieve(i8* %arraydecay19, %struct.anon* %7)
  store %union.rec* %call20, %union.rec** %lname, align 8
  %8 = load %union.rec*, %union.rec** %lname, align 8
  %cmp21 = icmp eq %union.rec* %8, null
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.16
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os124 = bitcast %union.rec* %9 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %ofpos26 = bitcast %union.FIRST_UNION* %ou125 to %struct.FILE_POS*
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %10 to %struct.word_type*
  %ostring28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 4
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring28, i32 0, i32 0
  %call30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay29)
  br label %if.end.34

if.else:                                          ; preds = %if.end.16
  %11 = load %union.rec*, %union.rec** %lname, align 8
  %os131 = bitcast %union.rec* %11 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %12 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %12, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.clear = and i32 %bf.lshr, 63
  %13 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %13, i32 0, i32 4
  %bf.load32 = load i32, i32* %olanguage, align 4
  %bf.value = and i32 %bf.clear, 63
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear33 = and i32 %bf.load32, -1056964609
  %bf.set = or i32 %bf.clear33, %bf.shl
  store i32 %bf.set, i32* %olanguage, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then, %if.then.15, %if.else, %if.then.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @ltab_retrieve(i8* %str, %struct.anon* %S) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %str.addr = alloca i8*, align 8
  %S.addr = alloca %struct.anon*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.anon* %S, %struct.anon** %S.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = zext i8 %6 to i32
  %7 = load i32, i32* %pos, align 4
  %add = add nsw i32 %7, %conv2
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %langtab_size = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %10 = load i32, i32* %langtab_size, align 4
  %rem = srem i32 %8, %10
  store i32 %rem, i32* %pos, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %langtab_item = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item, i32 0, i64 %idxprom
  %13 = load %union.rec*, %union.rec** %arrayidx, align 8
  store %union.rec* %13, %union.rec** %x, align 8
  %14 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp eq %union.rec* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %15 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %15 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %16, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %17 = load %union.rec*, %union.rec** %link, align 8
  %18 = load %union.rec*, %union.rec** %x, align 8
  %cmp5 = icmp ne %union.rec* %17, %18
  br i1 %cmp5, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %19 = load %union.rec*, %union.rec** %link, align 8
  %os17 = bitcast %union.rec* %19 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %21 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %22 = load i8, i8* %otype, align 1
  %conv12 = zext i8 %22 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.10
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os116 = bitcast %union.rec* %23 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os120 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %25, i8* %arraydecay) #5
  %cmp21 = icmp eq i32 %call, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  %27 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %27, %union.rec** %retval
  br label %return

if.end.24:                                        ; preds = %for.end
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %28 = load %union.rec*, %union.rec** %link, align 8
  %os126 = bitcast %union.rec* %28 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %osucc29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %osucc29, align 8
  store %union.rec* %29, %union.rec** %link, align 8
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %for.end.30, %if.then.23, %if.then
  %30 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %30
}

; Function Attrs: nounwind uwtable
define i8* @LanguageString(i32 %lnum) #0 {
entry:
  %lnum.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  store i32 %lnum, i32* %lnum.addr, align 4
  %0 = load i32, i32* %lnum.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %lnum.addr, align 4
  %2 = load i32, i32* @lang_count, align 4
  %cmp1 = icmp ule i32 %1, %2
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load i32, i32* %lnum.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %union.rec**, %union.rec*** @canonical_tab, align 8
  %arrayidx = getelementptr inbounds %union.rec*, %union.rec** %5, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  %os1 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %res, align 8
  %7 = load i8*, i8** %res, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define %union.rec* @LanguageHyph(i32 %lnum) #0 {
entry:
  %lnum.addr = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i32 %lnum, i32* %lnum.addr, align 4
  %0 = load i32, i32* %lnum.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %lnum.addr, align 4
  %2 = load i32, i32* @lang_count, align 4
  %cmp1 = icmp ule i32 %1, %2
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load i32, i32* %lnum.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %arrayidx = getelementptr inbounds %union.rec*, %union.rec** %5, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  store %union.rec* %6, %union.rec** %res, align 8
  %7 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ltab_rehash(%struct.anon* %S, i32 %newsize) #0 {
entry:
  %S.addr = alloca %struct.anon*, align 8
  %newsize.addr = alloca i32, align 4
  %NewS = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store %struct.anon* %S, %struct.anon** %S.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %call = call %struct.anon* @ltab_new(i32 %0)
  store %struct.anon* %call, %struct.anon** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %langtab_size = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0
  %3 = load i32, i32* %langtab_size, align 4
  %cmp = icmp sle i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %langtab_item = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item, i32 0, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp1 = icmp ne %union.rec* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %langtab_item3 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %langtab_item3, i32 0, i64 %idxprom2
  %9 = load %union.rec*, %union.rec** %arrayidx4, align 8
  call void @ltab_insert(%union.rec* %9, %struct.anon** %NewS)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %12 = bitcast %struct.anon* %11 to i8*
  call void @free(i8* %12) #4
  %13 = load %struct.anon*, %struct.anon** %NewS, align 8
  ret %struct.anon* %13
}

declare i8* @EchoFilePos(%struct.FILE_POS*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
