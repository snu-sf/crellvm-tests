; ModuleID = './MultiSource.Benchmarks.MiBench/41.consumer-typeset.z10.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.anon.14 = type { i32, i32, [1 x %struct.crossref_rec*] }
%struct.crossref_rec = type { %struct.crossref_rec*, %union.rec*, i16, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.cr_type = type { [2 x %struct.LIST], i8, i8, i16, %union.rec*, i32, i32, i32, i32, %union.rec*, %union.rec*, i16 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.anon.8 = type { i8, i16, i32, i32 }

@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@RootCross = internal global %union.rec* null, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"automatically generated tag %s&%d is too long\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xx_tmp = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CrossExpand: x!\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"CrossExpand: #args!\00", align 1
@nbt = internal global [2 x %union.rec*] zeroinitializer, align 16
@nft = internal global [2 x %union.rec*] zeroinitializer, align 16
@ntarget = internal global %union.rec* null, align 8
@nenclose = internal global %union.rec* null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"ClosureExpand: type(y) != CLOSURE!\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foll_or_prec\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"value of right parameter of %s is not a simple word\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"value of right parameter of %s is an empty word\00", align 1
@MomentSym = external global %union.rec*, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"symbol %s used in cross reference has no %s parameter\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"CrossExpand: db!\00", align 1
@OldCrossDb = external global %union.rec*, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"CrossExpand/CROSS_FOLL: cs == nilobj!\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"CrossExpand/CROSS_FOLL: type(cs)!\00", align 1
@crossref_tab = internal global %struct.anon.14* null, align 8
@.str.20 = private unnamed_addr constant [46 x i8] c"automatically generated tag %s_%d is too long\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@AllowCrossDb = external global i32, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"CrossExpand ctype\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"unresolved cross reference %s%s%s\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"CrossExpand: type(res) != CLOSURE!\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"CrossExpand: actual(res) != sym!\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"CrossSequence: type(x)!\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"CrossSequence: type(tmp)!\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"CrossSequence: cs!\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"CrossSequence/GALL_FOLL: type(val)!\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"%s parameter is not a word\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"@Key\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"badkey\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"%s parameter is an empty word\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"no %s galley target precedes this %s%s%s\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"no %s galley target follows or precedes this %s%s%s\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"CrossSequence: gall_tag!\00", align 1
@NewCrossDb = external global %union.rec*, align 8
@.str.38 = private unnamed_addr constant [28 x i8] c"CrossSequence: GALL_TARG y!\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"CrossSequence: cs_type!\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"no %s precedes this %s%s%s\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"tag of %s is not a simple word\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"CrossSeq: Up(tag)!\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"CrossSequence: target_val!\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"CrossSequence: Down(PAR)!\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"CrossSeq: non-WORD or empty tag!\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"CrossSequence:\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"CrossClose: type(cs)!\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"CrossClose: GALL_TARG y!\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"no %s follows this %s%s%s\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"and more undefined %s%s%s\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"no %s follows or precedes this %s%s%s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"no %s precedes or follows this %s%s%s\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"CrossClose: unknown cs_type!\00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c"automatically generated tag is too long (contains %s)\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"%d.%d.%s.%d\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging crossref table\00", align 1

; Function Attrs: nounwind uwtable
define void @CrossInit(%union.rec* %sym) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 140), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %3 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %3, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i32, i32* @zz_size, align 4
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %4, %struct.FILE_POS* %5)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %7 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %9, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 -116, i8* %otype, align 1
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %13 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %14 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred21, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc25, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred29, align 8
  store %union.rec* %12, %union.rec** %cs, align 8
  %17 = load %union.rec*, %union.rec** %cs, align 8
  %os7 = bitcast %union.rec* %17 to %struct.cr_type*
  %otarget_state = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 2
  store i8 0, i8* %otarget_state, align 1
  %18 = load %union.rec*, %union.rec** %cs, align 8
  %os730 = bitcast %union.rec* %18 to %struct.cr_type*
  %otarget_seq = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os730, i32 0, i32 5
  store i32 0, i32* %otarget_seq, align 4
  %19 = load %union.rec*, %union.rec** %cs, align 8
  %os731 = bitcast %union.rec* %19 to %struct.cr_type*
  %ogall_seq = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os731, i32 0, i32 8
  store i32 0, i32* %ogall_seq, align 4
  %20 = load %union.rec*, %union.rec** %cs, align 8
  %os732 = bitcast %union.rec* %20 to %struct.cr_type*
  %ogall_tag = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os732, i32 0, i32 10
  store %union.rec* null, %union.rec** %ogall_tag, align 8
  %21 = load %union.rec*, %union.rec** %cs, align 8
  %os733 = bitcast %union.rec* %21 to %struct.cr_type*
  %ogall_tfile = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os733, i32 0, i32 11
  store i16 0, i16* %ogall_tfile, align 2
  %22 = load %union.rec*, %union.rec** %sym.addr, align 8
  %23 = load %union.rec*, %union.rec** %cs, align 8
  %os734 = bitcast %union.rec* %23 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os734, i32 0, i32 9
  store %union.rec* %22, %union.rec** %osymb, align 8
  %24 = load %union.rec*, %union.rec** %cs, align 8
  %25 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %25 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  store %union.rec* %24, %union.rec** %ocross_sym, align 8
  %26 = load %union.rec*, %union.rec** @RootCross, align 8
  %cmp35 = icmp eq %union.rec* %26, null
  br i1 %cmp35, label %if.then.37, label %if.end.82

if.then.37:                                       ; preds = %if.end.13
  %27 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 141), align 1
  %conv38 = zext i8 %27 to i32
  store i32 %conv38, i32* @zz_size, align 4
  %conv39 = sext i32 %conv38 to i64
  %cmp40 = icmp uge i64 %conv39, 265
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.37
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %28)
  br label %if.end.61

if.else.44:                                       ; preds = %if.then.37
  %29 = load i32, i32* @zz_size, align 4
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom45
  %30 = load %union.rec*, %union.rec** %arrayidx46, align 8
  %cmp47 = icmp eq %union.rec* %30, null
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.44
  %31 = load i32, i32* @zz_size, align 4
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call50 = call %union.rec* @GetMemory(i32 %31, %struct.FILE_POS* %32)
  store %union.rec* %call50, %union.rec** @zz_hold, align 8
  br label %if.end.60

if.else.51:                                       ; preds = %if.else.44
  %33 = load i32, i32* @zz_size, align 4
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom52
  %34 = load %union.rec*, %union.rec** %arrayidx53, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %35 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 0
  %opred57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred57, align 8
  %37 = load i32, i32* @zz_size, align 4
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom58
  store %union.rec* %36, %union.rec** %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.51, %if.then.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.42
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %38 to %struct.word_type*
  %ou163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 1
  %os1164 = bitcast %union.FIRST_UNION* %ou163 to %struct.anon*
  %otype65 = getelementptr inbounds %struct.anon, %struct.anon* %os1164, i32 0, i32 0
  store i8 -115, i8* %otype65, align 1
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os166 = bitcast %union.rec* %40 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 1
  %osucc69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc69, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %41 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 1
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred73, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %42 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %osucc77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc77, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %43 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %opred81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred81, align 8
  store %union.rec* %39, %union.rec** @RootCross, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.61, %if.end.13
  %44 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv83 = zext i8 %44 to i32
  store i32 %conv83, i32* @zz_size, align 4
  %conv84 = sext i32 %conv83 to i64
  %cmp85 = icmp uge i64 %conv84, 265
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.end.82
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call88 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %45)
  br label %if.end.106

if.else.89:                                       ; preds = %if.end.82
  %46 = load i32, i32* @zz_size, align 4
  %idxprom90 = sext i32 %46 to i64
  %arrayidx91 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom90
  %47 = load %union.rec*, %union.rec** %arrayidx91, align 8
  %cmp92 = icmp eq %union.rec* %47, null
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.else.89
  %48 = load i32, i32* @zz_size, align 4
  %49 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call95 = call %union.rec* @GetMemory(i32 %48, %struct.FILE_POS* %49)
  store %union.rec* %call95, %union.rec** @zz_hold, align 8
  br label %if.end.105

if.else.96:                                       ; preds = %if.else.89
  %50 = load i32, i32* @zz_size, align 4
  %idxprom97 = sext i32 %50 to i64
  %arrayidx98 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom97
  %51 = load %union.rec*, %union.rec** %arrayidx98, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os199 = bitcast %union.rec* %52 to %struct.word_type*
  %olist100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist100, i32 0, i64 0
  %opred102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx101, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred102, align 8
  %54 = load i32, i32* @zz_size, align 4
  %idxprom103 = sext i32 %54 to i64
  %arrayidx104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom103
  store %union.rec* %53, %union.rec** %arrayidx104, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.96, %if.then.94
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.87
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1107 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 1
  %os11109 = bitcast %union.FIRST_UNION* %ou1108 to %struct.anon*
  %otype110 = getelementptr inbounds %struct.anon, %struct.anon* %os11109, i32 0, i32 0
  store i8 0, i8* %otype110, align 1
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %57 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 1
  %osucc114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc114, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %58 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 1
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred118, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %59 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %osucc122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc122, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1123 = bitcast %union.rec* %60 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 0
  %opred126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred126, align 8
  store %union.rec* %56, %union.rec** @xx_link, align 8
  %61 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %61, %union.rec** @zz_res, align 8
  %62 = load %union.rec*, %union.rec** @RootCross, align 8
  store %union.rec* %62, %union.rec** @zz_hold, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp127 = icmp eq %union.rec* %63, null
  br i1 %cmp127, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.106
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.161

cond.false:                                       ; preds = %if.end.106
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp129 = icmp eq %union.rec* %65, null
  br i1 %cmp129, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %cond.false
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.132:                                   ; preds = %cond.false
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1133 = bitcast %union.rec* %67 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 0
  %opred136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %opred136, align 8
  store %union.rec* %68, %union.rec** @zz_tmp, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1137 = bitcast %union.rec* %69 to %struct.word_type*
  %olist138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist138, i32 0, i64 0
  %opred140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx139, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %opred140, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1141 = bitcast %union.rec* %71 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 0
  %opred144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred144, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1145 = bitcast %union.rec* %73 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 0
  %opred148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 0
  %74 = load %union.rec*, %union.rec** %opred148, align 8
  %os1149 = bitcast %union.rec* %74 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 0
  %osucc152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc152, align 8
  %75 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1153 = bitcast %union.rec* %76 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 0
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  store %union.rec* %75, %union.rec** %opred156, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %78 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1157 = bitcast %union.rec* %78 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 0
  %osucc160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 1
  store %union.rec* %77, %union.rec** %osucc160, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.132, %cond.true.131
  %cond = phi %union.rec* [ %66, %cond.true.131 ], [ %77, %cond.false.132 ]
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.end, %cond.true
  %cond162 = phi %union.rec* [ %64, %cond.true ], [ %cond, %cond.end ]
  %79 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %79, %union.rec** @zz_res, align 8
  %80 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp163 = icmp eq %union.rec* %81, null
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.end.161
  %82 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.201

cond.false.166:                                   ; preds = %cond.end.161
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp167 = icmp eq %union.rec* %83, null
  br i1 %cmp167, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.false.166
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.199

cond.false.170:                                   ; preds = %cond.false.166
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1171 = bitcast %union.rec* %85 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 1
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred174, align 8
  store %union.rec* %86, %union.rec** @zz_tmp, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1175 = bitcast %union.rec* %87 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 1
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred178, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1179 = bitcast %union.rec* %89 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 1
  %opred182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred182, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1183 = bitcast %union.rec* %91 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 1
  %opred186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %opred186, align 8
  %os1187 = bitcast %union.rec* %92 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 1
  %osucc190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 1
  store %union.rec* %90, %union.rec** %osucc190, align 8
  %93 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1191 = bitcast %union.rec* %94 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 1
  %opred194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 0
  store %union.rec* %93, %union.rec** %opred194, align 8
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %96 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1195 = bitcast %union.rec* %96 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 1
  %osucc198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 1
  store %union.rec* %95, %union.rec** %osucc198, align 8
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.170, %cond.true.169
  %cond200 = phi %union.rec* [ %84, %cond.true.169 ], [ %95, %cond.false.170 ]
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.end.199, %cond.true.165
  %cond202 = phi %union.rec* [ %82, %cond.true.165 ], [ %cond200, %cond.end.199 ]
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @CrossMake(%union.rec* %sym, %union.rec* %val, i32 %ctype) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  %val.addr = alloca %union.rec*, align 8
  %ctype.addr = alloca i32, align 4
  %v1 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store %union.rec* %val, %union.rec** %val.addr, align 8
  store i32 %ctype, i32* %ctype.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 6), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %3 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %3, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i32, i32* @zz_size, align 4
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %4, %struct.FILE_POS* %5)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %7 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %9, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 6, i8* %otype, align 1
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %13 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %14 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred21, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc25, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred29, align 8
  store %union.rec* %12, %union.rec** %res, align 8
  %17 = load i32, i32* %ctype.addr, align 4
  %conv30 = trunc i32 %17 to i8
  %18 = load %union.rec*, %union.rec** %res, align 8
  %os131 = bitcast %union.rec* %18 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %ocross_type = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 1
  store i8 %conv30, i8* %ocross_type, align 1
  %19 = load %union.rec*, %union.rec** %res, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %ou233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 2
  %os2334 = bitcast %union.SECOND_UNION* %ou233 to %struct.anon.2*
  %othreaded = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2334, i32 0, i32 2
  %bf.load = load i16, i16* %othreaded, align 2
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, i16* %othreaded, align 2
  %20 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv35 = zext i8 %20 to i32
  store i32 %conv35, i32* @zz_size, align 4
  %conv36 = sext i32 %conv35 to i64
  %cmp37 = icmp uge i64 %conv36, 265
  br i1 %cmp37, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.end.13
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call40 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %21)
  br label %if.end.58

if.else.41:                                       ; preds = %if.end.13
  %22 = load i32, i32* @zz_size, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom42
  %23 = load %union.rec*, %union.rec** %arrayidx43, align 8
  %cmp44 = icmp eq %union.rec* %23, null
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.else.41
  %24 = load i32, i32* @zz_size, align 4
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call47 = call %union.rec* @GetMemory(i32 %24, %struct.FILE_POS* %25)
  store %union.rec* %call47, %union.rec** @zz_hold, align 8
  br label %if.end.57

if.else.48:                                       ; preds = %if.else.41
  %26 = load i32, i32* @zz_size, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom49
  %27 = load %union.rec*, %union.rec** %arrayidx50, align 8
  store %union.rec* %27, %union.rec** @zz_hold, align 8
  store %union.rec* %27, %union.rec** @zz_hold, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os151 = bitcast %union.rec* %28 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 0
  %opred54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %opred54, align 8
  %30 = load i32, i32* @zz_size, align 4
  %idxprom55 = sext i32 %30 to i64
  %arrayidx56 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom55
  store %union.rec* %29, %union.rec** %arrayidx56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.48, %if.then.46
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.39
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os159 = bitcast %union.rec* %31 to %struct.word_type*
  %ou160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 1
  %os1161 = bitcast %union.FIRST_UNION* %ou160 to %struct.anon*
  %otype62 = getelementptr inbounds %struct.anon, %struct.anon* %os1161, i32 0, i32 0
  store i8 2, i8* %otype62, align 1
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os163 = bitcast %union.rec* %33 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 1
  %osucc66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 1
  store %union.rec* %32, %union.rec** %osucc66, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os167 = bitcast %union.rec* %34 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 1
  %opred70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 0
  store %union.rec* %32, %union.rec** %opred70, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os171 = bitcast %union.rec* %35 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 0
  %osucc74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 1
  store %union.rec* %32, %union.rec** %osucc74, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os175 = bitcast %union.rec* %36 to %struct.word_type*
  %olist76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist76, i32 0, i64 0
  %opred78 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx77, i32 0, i32 0
  store %union.rec* %32, %union.rec** %opred78, align 8
  store %union.rec* %32, %union.rec** %v1, align 8
  %37 = load %union.rec*, %union.rec** %sym.addr, align 8
  %38 = load %union.rec*, %union.rec** %v1, align 8
  %os2 = bitcast %union.rec* %38 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  store %union.rec* %37, %union.rec** %oactual, align 8
  %39 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv79 = zext i8 %39 to i32
  store i32 %conv79, i32* @zz_size, align 4
  %conv80 = sext i32 %conv79 to i64
  %cmp81 = icmp uge i64 %conv80, 265
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.end.58
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call84 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %40)
  br label %if.end.102

if.else.85:                                       ; preds = %if.end.58
  %41 = load i32, i32* @zz_size, align 4
  %idxprom86 = sext i32 %41 to i64
  %arrayidx87 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom86
  %42 = load %union.rec*, %union.rec** %arrayidx87, align 8
  %cmp88 = icmp eq %union.rec* %42, null
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.85
  %43 = load i32, i32* @zz_size, align 4
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call91 = call %union.rec* @GetMemory(i32 %43, %struct.FILE_POS* %44)
  store %union.rec* %call91, %union.rec** @zz_hold, align 8
  br label %if.end.101

if.else.92:                                       ; preds = %if.else.85
  %45 = load i32, i32* @zz_size, align 4
  %idxprom93 = sext i32 %45 to i64
  %arrayidx94 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom93
  %46 = load %union.rec*, %union.rec** %arrayidx94, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %47 to %struct.word_type*
  %olist96 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist96, i32 0, i64 0
  %opred98 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx97, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred98, align 8
  %49 = load i32, i32* @zz_size, align 4
  %idxprom99 = sext i32 %49 to i64
  %arrayidx100 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom99
  store %union.rec* %48, %union.rec** %arrayidx100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.92, %if.then.90
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.83
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 1
  %os11105 = bitcast %union.FIRST_UNION* %ou1104 to %struct.anon*
  %otype106 = getelementptr inbounds %struct.anon, %struct.anon* %os11105, i32 0, i32 0
  store i8 0, i8* %otype106, align 1
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1107 = bitcast %union.rec* %52 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 1
  %osucc110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc110, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %53 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 1
  %opred114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred114, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %54 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %osucc118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc118, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %55 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred122, align 8
  store %union.rec* %51, %union.rec** @xx_link, align 8
  %56 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %56, %union.rec** @zz_res, align 8
  %57 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %57, %union.rec** @zz_hold, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp123 = icmp eq %union.rec* %58, null
  br i1 %cmp123, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.102
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.157

cond.false:                                       ; preds = %if.end.102
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp125 = icmp eq %union.rec* %60, null
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.false
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.128:                                   ; preds = %cond.false
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1129 = bitcast %union.rec* %62 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 0
  %opred132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred132, align 8
  store %union.rec* %63, %union.rec** @zz_tmp, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1133 = bitcast %union.rec* %64 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 0
  %opred136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred136, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1137 = bitcast %union.rec* %66 to %struct.word_type*
  %olist138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist138, i32 0, i64 0
  %opred140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx139, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred140, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1141 = bitcast %union.rec* %68 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 0
  %opred144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred144, align 8
  %os1145 = bitcast %union.rec* %69 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 0
  %osucc148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc148, align 8
  %70 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1149 = bitcast %union.rec* %71 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 0
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred152, align 8
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %73 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1153 = bitcast %union.rec* %73 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 0
  %osucc156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc156, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.128, %cond.true.127
  %cond = phi %union.rec* [ %61, %cond.true.127 ], [ %72, %cond.false.128 ]
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.end, %cond.true
  %cond158 = phi %union.rec* [ %59, %cond.true ], [ %cond, %cond.end ]
  %74 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %74, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** %v1, align 8
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp159 = icmp eq %union.rec* %76, null
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %cond.end.157
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.197

cond.false.162:                                   ; preds = %cond.end.157
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp163 = icmp eq %union.rec* %78, null
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false.162
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.195

cond.false.166:                                   ; preds = %cond.false.162
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %80 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 1
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred170, align 8
  store %union.rec* %81, %union.rec** @zz_tmp, align 8
  %82 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1171 = bitcast %union.rec* %82 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 1
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred174, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %84 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 1
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred178, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %86 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1179 = bitcast %union.rec* %86 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 1
  %opred182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred182, align 8
  %os1183 = bitcast %union.rec* %87 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 1
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc186, align 8
  %88 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1187 = bitcast %union.rec* %89 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 1
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred190, align 8
  %90 = load %union.rec*, %union.rec** @zz_res, align 8
  %91 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1191 = bitcast %union.rec* %91 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 1
  %osucc194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 1
  store %union.rec* %90, %union.rec** %osucc194, align 8
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.166, %cond.true.165
  %cond196 = phi %union.rec* [ %79, %cond.true.165 ], [ %90, %cond.false.166 ]
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.end.195, %cond.true.161
  %cond198 = phi %union.rec* [ %77, %cond.true.161 ], [ %cond196, %cond.end.195 ]
  %92 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv199 = zext i8 %92 to i32
  store i32 %conv199, i32* @zz_size, align 4
  %conv200 = sext i32 %conv199 to i64
  %cmp201 = icmp uge i64 %conv200, 265
  br i1 %cmp201, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %cond.end.197
  %93 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call204 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %93)
  br label %if.end.222

if.else.205:                                      ; preds = %cond.end.197
  %94 = load i32, i32* @zz_size, align 4
  %idxprom206 = sext i32 %94 to i64
  %arrayidx207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom206
  %95 = load %union.rec*, %union.rec** %arrayidx207, align 8
  %cmp208 = icmp eq %union.rec* %95, null
  br i1 %cmp208, label %if.then.210, label %if.else.212

if.then.210:                                      ; preds = %if.else.205
  %96 = load i32, i32* @zz_size, align 4
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call211 = call %union.rec* @GetMemory(i32 %96, %struct.FILE_POS* %97)
  store %union.rec* %call211, %union.rec** @zz_hold, align 8
  br label %if.end.221

if.else.212:                                      ; preds = %if.else.205
  %98 = load i32, i32* @zz_size, align 4
  %idxprom213 = sext i32 %98 to i64
  %arrayidx214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom213
  %99 = load %union.rec*, %union.rec** %arrayidx214, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1215 = bitcast %union.rec* %100 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 0
  %opred218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %opred218, align 8
  %102 = load i32, i32* @zz_size, align 4
  %idxprom219 = sext i32 %102 to i64
  %arrayidx220 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom219
  store %union.rec* %101, %union.rec** %arrayidx220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.212, %if.then.210
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.203
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1223 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 1
  %os11225 = bitcast %union.FIRST_UNION* %ou1224 to %struct.anon*
  %otype226 = getelementptr inbounds %struct.anon, %struct.anon* %os11225, i32 0, i32 0
  store i8 0, i8* %otype226, align 1
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1227 = bitcast %union.rec* %105 to %struct.word_type*
  %olist228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1227, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist228, i32 0, i64 1
  %osucc230 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx229, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc230, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1231 = bitcast %union.rec* %106 to %struct.word_type*
  %olist232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist232, i32 0, i64 1
  %opred234 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx233, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred234, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1235 = bitcast %union.rec* %107 to %struct.word_type*
  %olist236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1235, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist236, i32 0, i64 0
  %osucc238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx237, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc238, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1239 = bitcast %union.rec* %108 to %struct.word_type*
  %olist240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist240, i32 0, i64 0
  %opred242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx241, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred242, align 8
  store %union.rec* %104, %union.rec** @xx_link, align 8
  %109 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %109, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %110, %union.rec** @zz_hold, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp243 = icmp eq %union.rec* %111, null
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %if.end.222
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.281

cond.false.246:                                   ; preds = %if.end.222
  %113 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp247 = icmp eq %union.rec* %113, null
  br i1 %cmp247, label %cond.true.249, label %cond.false.250

cond.true.249:                                    ; preds = %cond.false.246
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.279

cond.false.250:                                   ; preds = %cond.false.246
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1251 = bitcast %union.rec* %115 to %struct.word_type*
  %olist252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist252, i32 0, i64 0
  %opred254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx253, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %opred254, align 8
  store %union.rec* %116, %union.rec** @zz_tmp, align 8
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1255 = bitcast %union.rec* %117 to %struct.word_type*
  %olist256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist256, i32 0, i64 0
  %opred258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx257, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred258, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1259 = bitcast %union.rec* %119 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 0
  %opred262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 0
  store %union.rec* %118, %union.rec** %opred262, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %121 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1263 = bitcast %union.rec* %121 to %struct.word_type*
  %olist264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist264, i32 0, i64 0
  %opred266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx265, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred266, align 8
  %os1267 = bitcast %union.rec* %122 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 0
  %osucc270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 1
  store %union.rec* %120, %union.rec** %osucc270, align 8
  %123 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1271 = bitcast %union.rec* %124 to %struct.word_type*
  %olist272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist272, i32 0, i64 0
  %opred274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx273, i32 0, i32 0
  store %union.rec* %123, %union.rec** %opred274, align 8
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  %126 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1275 = bitcast %union.rec* %126 to %struct.word_type*
  %olist276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist276, i32 0, i64 0
  %osucc278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx277, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc278, align 8
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.250, %cond.true.249
  %cond280 = phi %union.rec* [ %114, %cond.true.249 ], [ %125, %cond.false.250 ]
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.end.279, %cond.true.245
  %cond282 = phi %union.rec* [ %112, %cond.true.245 ], [ %cond280, %cond.end.279 ]
  %127 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %127, %union.rec** @zz_res, align 8
  %128 = load %union.rec*, %union.rec** %val.addr, align 8
  store %union.rec* %128, %union.rec** @zz_hold, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp283 = icmp eq %union.rec* %129, null
  br i1 %cmp283, label %cond.true.285, label %cond.false.286

cond.true.285:                                    ; preds = %cond.end.281
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.321

cond.false.286:                                   ; preds = %cond.end.281
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp287 = icmp eq %union.rec* %131, null
  br i1 %cmp287, label %cond.true.289, label %cond.false.290

cond.true.289:                                    ; preds = %cond.false.286
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.319

cond.false.290:                                   ; preds = %cond.false.286
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1291 = bitcast %union.rec* %133 to %struct.word_type*
  %olist292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1291, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist292, i32 0, i64 1
  %opred294 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx293, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %opred294, align 8
  store %union.rec* %134, %union.rec** @zz_tmp, align 8
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1295 = bitcast %union.rec* %135 to %struct.word_type*
  %olist296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist296, i32 0, i64 1
  %opred298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx297, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred298, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1299 = bitcast %union.rec* %137 to %struct.word_type*
  %olist300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist300, i32 0, i64 1
  %opred302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx301, i32 0, i32 0
  store %union.rec* %136, %union.rec** %opred302, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1303 = bitcast %union.rec* %139 to %struct.word_type*
  %olist304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist304, i32 0, i64 1
  %opred306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx305, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %opred306, align 8
  %os1307 = bitcast %union.rec* %140 to %struct.word_type*
  %olist308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1307, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist308, i32 0, i64 1
  %osucc310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx309, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc310, align 8
  %141 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1311 = bitcast %union.rec* %142 to %struct.word_type*
  %olist312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 0
  %arrayidx313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist312, i32 0, i64 1
  %opred314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx313, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred314, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1315 = bitcast %union.rec* %144 to %struct.word_type*
  %olist316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1315, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist316, i32 0, i64 1
  %osucc318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx317, i32 0, i32 1
  store %union.rec* %143, %union.rec** %osucc318, align 8
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.290, %cond.true.289
  %cond320 = phi %union.rec* [ %132, %cond.true.289 ], [ %143, %cond.false.290 ]
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.end.319, %cond.true.285
  %cond322 = phi %union.rec* [ %130, %cond.true.285 ], [ %cond320, %cond.end.319 ]
  %145 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %145
}

; Function Attrs: nounwind uwtable
define %union.rec* @GallTargEval(%union.rec* %sym, %struct.FILE_POS* %dfpos) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  %dfpos.addr = alloca %struct.FILE_POS*, align 8
  %cs = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %str = alloca i8*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store %struct.FILE_POS* %dfpos, %struct.FILE_POS** %dfpos.addr, align 8
  %0 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %0 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %1 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp = icmp eq %union.rec* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.rec*, %union.rec** %sym.addr, align 8
  call void @CrossInit(%union.rec* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os61 = bitcast %union.rec* %3 to %struct.symbol_type*
  %ocross_sym2 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61, i32 0, i32 8
  %4 = load %union.rec*, %union.rec** %ocross_sym2, align 8
  store %union.rec* %4, %union.rec** %cs, align 8
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** %dfpos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5, i32 0, i32 2
  %6 = load i16, i16* %ofile_num, align 2
  %conv = zext i16 %6 to i32
  %7 = load %union.rec*, %union.rec** %cs, align 8
  %os7 = bitcast %union.rec* %7 to %struct.cr_type*
  %ogall_tfile = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 11
  %8 = load i16, i16* %ogall_tfile, align 2
  %conv3 = zext i16 %8 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** %dfpos.addr, align 8
  %ofile_num7 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %9, i32 0, i32 2
  %10 = load i16, i16* %ofile_num7, align 2
  %11 = load %union.rec*, %union.rec** %cs, align 8
  %os78 = bitcast %union.rec* %11 to %struct.cr_type*
  %ogall_tfile9 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os78, i32 0, i32 11
  store i16 %10, i16* %ogall_tfile9, align 2
  %12 = load %union.rec*, %union.rec** %cs, align 8
  %os710 = bitcast %union.rec* %12 to %struct.cr_type*
  %ogall_seq = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os710, i32 0, i32 8
  store i32 0, i32* %ogall_seq, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.end
  %13 = load %union.rec*, %union.rec** %cs, align 8
  %os712 = bitcast %union.rec* %13 to %struct.cr_type*
  %ogall_tfile13 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os712, i32 0, i32 11
  %14 = load i16, i16* %ogall_tfile13, align 2
  %call = call i8* @FileName(i16 zeroext %14)
  store i8* %call, i8** %str, align 8
  %15 = load %union.rec*, %union.rec** %cs, align 8
  %os714 = bitcast %union.rec* %15 to %struct.cr_type*
  %ogall_seq15 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os714, i32 0, i32 8
  %16 = load i32, i32* %ogall_seq15, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ogall_seq15, align 4
  %17 = load i8*, i8** %str, align 8
  %call16 = call i64 @strlen(i8* %17) #4
  %add = add i64 %call16, 6
  %cmp17 = icmp uge i64 %add, 512
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.11
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** %dfpos.addr, align 8
  %19 = load i8*, i8** %str, align 8
  %20 = load %union.rec*, %union.rec** %cs, align 8
  %os720 = bitcast %union.rec* %20 to %struct.cr_type*
  %ogall_seq21 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os720, i32 0, i32 8
  %21 = load i32, i32* %ogall_seq21, align 4
  %call22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.FILE_POS* %18, i8* %19, i32 %21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.11
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %22 = load i8*, i8** %str, align 8
  %call24 = call i8* @strcpy(i8* %arraydecay, i8* %22) #5
  %arraydecay25 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call26 = call i8* @strcat(i8* %arraydecay25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #5
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %cs, align 8
  %os728 = bitcast %union.rec* %23 to %struct.cr_type*
  %ogall_seq29 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os728, i32 0, i32 8
  %24 = load i32, i32* %ogall_seq29, align 4
  %call30 = call i8* @StringInt(i32 %24)
  %call31 = call i8* @strcat(i8* %arraydecay27, i8* %call30) #5
  %25 = load %union.rec*, %union.rec** %sym.addr, align 8
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** %dfpos.addr, align 8
  %call33 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay32, %struct.FILE_POS* %26)
  %call34 = call %union.rec* @CrossMake(%union.rec* %25, %union.rec* %call33, i32 132)
  store %union.rec* %call34, %union.rec** %res, align 8
  %27 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %27
}

declare i8* @FileName(i16 zeroext) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @StringInt(i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @CrossAddTag(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %ppar = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.183, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.188

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %par, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %par, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os116 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os116, i32 0, i32 0
  %7 = load i8, i8* %otype, align 1
  %conv = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %8 = load %union.rec*, %union.rec** %par, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %par, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %par, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os1116 = bitcast %union.FIRST_UNION* %ou115 to %struct.anon*
  %otype17 = getelementptr inbounds %struct.anon, %struct.anon* %os1116, i32 0, i32 0
  %11 = load i8, i8* %otype17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 10
  br i1 %cmp19, label %land.lhs.true, label %if.end.182

land.lhs.true:                                    ; preds = %for.end
  %12 = load %union.rec*, %union.rec** %par, align 8
  %os2 = bitcast %union.rec* %12 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %13 = load %union.rec*, %union.rec** %oactual, align 8
  %os121 = bitcast %union.rec* %13 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ois_tag = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %14 = bitcast [3 x i8]* %ois_tag to i24*
  %bf.load = load i24, i24* %14, align 1
  %bf.clear = and i24 %bf.load, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.182

if.then:                                          ; preds = %land.lhs.true
  %15 = load %union.rec*, %union.rec** %par, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc25, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred29, align 8
  store %union.rec* %17, %union.rec** %y, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.39, %if.then
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os131 = bitcast %union.rec* %18 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %19 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %19 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.30
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.38
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os140 = bitcast %union.rec* %20 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %opred43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %opred43, align 8
  store %union.rec* %21, %union.rec** %y, align 8
  br label %for.cond.30

for.end.44:                                       ; preds = %for.cond.30
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os145 = bitcast %union.rec* %22 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %os1147 = bitcast %union.FIRST_UNION* %ou146 to %struct.anon*
  %otype48 = getelementptr inbounds %struct.anon, %struct.anon* %os1147, i32 0, i32 0
  %23 = load i8, i8* %otype48, align 1
  %conv49 = zext i8 %23 to i32
  %cmp50 = icmp eq i32 %conv49, 11
  br i1 %cmp50, label %land.lhs.true.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.44
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os152 = bitcast %union.rec* %24 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %os1154 = bitcast %union.FIRST_UNION* %ou153 to %struct.anon*
  %otype55 = getelementptr inbounds %struct.anon, %struct.anon* %os1154, i32 0, i32 0
  %25 = load i8, i8* %otype55, align 1
  %conv56 = zext i8 %25 to i32
  %cmp57 = icmp eq i32 %conv56, 12
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.181

land.lhs.true.59:                                 ; preds = %lor.lhs.false, %for.end.44
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os160 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp61 = icmp eq i32 %call, 0
  br i1 %cmp61, label %if.then.63, label %if.end.181

if.then.63:                                       ; preds = %land.lhs.true.59
  %27 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %27, %union.rec** @xx_link, align 8
  %28 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %29 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 1
  %osucc67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc67, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp68 = icmp eq %union.rec* %30, %31
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.63
  br label %cond.end

cond.false:                                       ; preds = %if.then.63
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %32 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 1
  %osucc73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %osucc73, align 8
  store %union.rec* %33, %union.rec** @zz_res, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %34 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 1
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred77, align 8
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %os178 = bitcast %union.rec* %36 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 1
  %opred81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 0
  store %union.rec* %35, %union.rec** %opred81, align 8
  %37 = load %union.rec*, %union.rec** @zz_res, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %38 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 1
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred85, align 8
  %os186 = bitcast %union.rec* %39 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 1
  %osucc89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 1
  store %union.rec* %37, %union.rec** %osucc89, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %41 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 1
  %osucc93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc93, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %42 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 1
  %opred97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred97, align 8
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %43, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %44 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %44, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %45 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 0
  %osucc101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 1
  %46 = load %union.rec*, %union.rec** %osucc101, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp102 = icmp eq %union.rec* %46, %47
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end
  br label %cond.end.134

cond.false.105:                                   ; preds = %cond.end
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %48 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %osucc109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 1
  %49 = load %union.rec*, %union.rec** %osucc109, align 8
  store %union.rec* %49, %union.rec** @zz_res, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %50 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred113, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1114 = bitcast %union.rec* %52 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 0
  %opred117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred117, align 8
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %54 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %opred121, align 8
  %os1122 = bitcast %union.rec* %55 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 0
  %osucc125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 1
  store %union.rec* %53, %union.rec** %osucc125, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1126 = bitcast %union.rec* %57 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 0
  %osucc129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc129, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1130 = bitcast %union.rec* %58 to %struct.word_type*
  %olist131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist131, i32 0, i64 0
  %opred133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx132, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred133, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.105, %cond.true.104
  %cond135 = phi %union.rec* [ null, %cond.true.104 ], [ %59, %cond.false.105 ]
  %60 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %61, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 1
  %os11138 = bitcast %union.FIRST_UNION* %ou1137 to %struct.anon*
  %otype139 = getelementptr inbounds %struct.anon, %struct.anon* %os11138, i32 0, i32 0
  %63 = load i8, i8* %otype139, align 1
  %conv140 = zext i8 %63 to i32
  %cmp141 = icmp eq i32 %conv140, 11
  br i1 %cmp141, label %cond.true.151, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %cond.end.134
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1144 = bitcast %union.rec* %64 to %struct.word_type*
  %ou1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 1
  %os11146 = bitcast %union.FIRST_UNION* %ou1145 to %struct.anon*
  %otype147 = getelementptr inbounds %struct.anon, %struct.anon* %os11146, i32 0, i32 0
  %65 = load i8, i8* %otype147, align 1
  %conv148 = zext i8 %65 to i32
  %cmp149 = icmp eq i32 %conv148, 12
  br i1 %cmp149, label %cond.true.151, label %cond.false.156

cond.true.151:                                    ; preds = %lor.lhs.false.143, %cond.end.134
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1152 = bitcast %union.rec* %66 to %struct.word_type*
  %ou1153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 1
  %os11154 = bitcast %union.FIRST_UNION* %ou1153 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11154, i32 0, i32 1
  %67 = load i8, i8* %orec_size, align 1
  %conv155 = zext i8 %67 to i32
  br label %cond.end.163

cond.false.156:                                   ; preds = %lor.lhs.false.143
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 1
  %os11159 = bitcast %union.FIRST_UNION* %ou1158 to %struct.anon*
  %otype160 = getelementptr inbounds %struct.anon, %struct.anon* %os11159, i32 0, i32 0
  %69 = load i8, i8* %otype160, align 1
  %idxprom = zext i8 %69 to i64
  %arrayidx161 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %70 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %70 to i32
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.156, %cond.true.151
  %cond164 = phi i32 [ %conv155, %cond.true.151 ], [ %conv162, %cond.false.156 ]
  store i32 %cond164, i32* @zz_size, align 4
  %71 = load i32, i32* @zz_size, align 4
  %idxprom165 = sext i32 %71 to i64
  %arrayidx166 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom165
  %72 = load %union.rec*, %union.rec** %arrayidx166, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %73 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred170, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %75 = load i32, i32* @zz_size, align 4
  %idxprom171 = sext i32 %75 to i64
  %arrayidx172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom171
  store %union.rec* %74, %union.rec** %arrayidx172, align 8
  %76 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1173 = bitcast %union.rec* %76 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  %77 = load %union.rec*, %union.rec** %osucc176, align 8
  %78 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp177 = icmp eq %union.rec* %77, %78
  br i1 %cmp177, label %if.then.179, label %if.end

if.then.179:                                      ; preds = %cond.end.163
  %79 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call180 = call i32 @DisposeObject(%union.rec* %79)
  br label %if.end

if.end:                                           ; preds = %if.then.179, %cond.end.163
  %80 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %80, %union.rec** %link, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.end, %land.lhs.true.59, %lor.lhs.false
  br label %for.end.188

if.end.182:                                       ; preds = %land.lhs.true, %for.end
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %81 = load %union.rec*, %union.rec** %link, align 8
  %os1184 = bitcast %union.rec* %81 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 0
  %osucc187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 1
  %82 = load %union.rec*, %union.rec** %osucc187, align 8
  store %union.rec* %82, %union.rec** %link, align 8
  br label %for.cond

for.end.188:                                      ; preds = %if.end.181, %for.cond
  %83 = load %union.rec*, %union.rec** %link, align 8
  %84 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp189 = icmp eq %union.rec* %83, %84
  br i1 %cmp189, label %if.then.191, label %if.end.664

if.then.191:                                      ; preds = %for.end.188
  store %union.rec* null, %union.rec** %ppar, align 8
  %85 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2192 = bitcast %union.rec* %85 to %struct.closure_type*
  %oactual193 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2192, i32 0, i32 5
  %86 = load %union.rec*, %union.rec** %oactual193, align 8
  %os1194 = bitcast %union.rec* %86 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 0
  %osucc197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 1
  %87 = load %union.rec*, %union.rec** %osucc197, align 8
  store %union.rec* %87, %union.rec** %link, align 8
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.249, %if.then.191
  %88 = load %union.rec*, %union.rec** %link, align 8
  %89 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2199 = bitcast %union.rec* %89 to %struct.closure_type*
  %oactual200 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2199, i32 0, i32 5
  %90 = load %union.rec*, %union.rec** %oactual200, align 8
  %cmp201 = icmp ne %union.rec* %88, %90
  br i1 %cmp201, label %for.body.203, label %for.end.254

for.body.203:                                     ; preds = %for.cond.198
  %91 = load %union.rec*, %union.rec** %link, align 8
  %os1204 = bitcast %union.rec* %91 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 1
  %opred207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %opred207, align 8
  store %union.rec* %92, %union.rec** %y, align 8
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.217, %for.body.203
  %93 = load %union.rec*, %union.rec** %y, align 8
  %os1209 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 1
  %os11211 = bitcast %union.FIRST_UNION* %ou1210 to %struct.anon*
  %otype212 = getelementptr inbounds %struct.anon, %struct.anon* %os11211, i32 0, i32 0
  %94 = load i8, i8* %otype212, align 1
  %conv213 = zext i8 %94 to i32
  %cmp214 = icmp eq i32 %conv213, 0
  br i1 %cmp214, label %for.body.216, label %for.end.222

for.body.216:                                     ; preds = %for.cond.208
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.216
  %95 = load %union.rec*, %union.rec** %y, align 8
  %os1218 = bitcast %union.rec* %95 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred221, align 8
  store %union.rec* %96, %union.rec** %y, align 8
  br label %for.cond.208

for.end.222:                                      ; preds = %for.cond.208
  %97 = load %union.rec*, %union.rec** %y, align 8
  %os1223 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 1
  %os11225 = bitcast %union.FIRST_UNION* %ou1224 to %struct.anon*
  %otype226 = getelementptr inbounds %struct.anon, %struct.anon* %os11225, i32 0, i32 0
  %98 = load i8, i8* %otype226, align 1
  %conv227 = zext i8 %98 to i32
  %cmp228 = icmp sge i32 %conv227, 144
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.248

land.lhs.true.230:                                ; preds = %for.end.222
  %99 = load %union.rec*, %union.rec** %y, align 8
  %os1231 = bitcast %union.rec* %99 to %struct.word_type*
  %ou1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 1
  %os11233 = bitcast %union.FIRST_UNION* %ou1232 to %struct.anon*
  %otype234 = getelementptr inbounds %struct.anon, %struct.anon* %os11233, i32 0, i32 0
  %100 = load i8, i8* %otype234, align 1
  %conv235 = zext i8 %100 to i32
  %cmp236 = icmp sle i32 %conv235, 146
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.248

land.lhs.true.238:                                ; preds = %land.lhs.true.230
  %101 = load %union.rec*, %union.rec** %y, align 8
  %os1239 = bitcast %union.rec* %101 to %struct.word_type*
  %ou2240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 2
  %os26241 = bitcast %union.SECOND_UNION* %ou2240 to %struct.anon.5*
  %ois_tag242 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26241, i32 0, i32 1
  %102 = bitcast [3 x i8]* %ois_tag242 to i24*
  %bf.load243 = load i24, i24* %102, align 1
  %bf.clear244 = and i24 %bf.load243, 1
  %bf.cast245 = zext i24 %bf.clear244 to i32
  %tobool246 = icmp ne i32 %bf.cast245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %land.lhs.true.238
  %103 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %103, %union.rec** %ppar, align 8
  br label %for.end.254

if.end.248:                                       ; preds = %land.lhs.true.238, %land.lhs.true.230, %for.end.222
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.248
  %104 = load %union.rec*, %union.rec** %link, align 8
  %os1250 = bitcast %union.rec* %104 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 0
  %osucc253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 1
  %105 = load %union.rec*, %union.rec** %osucc253, align 8
  store %union.rec* %105, %union.rec** %link, align 8
  br label %for.cond.198

for.end.254:                                      ; preds = %if.then.247, %for.cond.198
  %106 = load %union.rec*, %union.rec** %ppar, align 8
  %cmp255 = icmp ne %union.rec* %106, null
  br i1 %cmp255, label %if.then.257, label %if.end.663

if.then.257:                                      ; preds = %for.end.254
  %107 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv258 = zext i8 %107 to i32
  store i32 %conv258, i32* @zz_size, align 4
  %conv259 = sext i32 %conv258 to i64
  %cmp260 = icmp uge i64 %conv259, 265
  br i1 %cmp260, label %if.then.262, label %if.else

if.then.262:                                      ; preds = %if.then.257
  %108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call263 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %108)
  br label %if.end.280

if.else:                                          ; preds = %if.then.257
  %109 = load i32, i32* @zz_size, align 4
  %idxprom264 = sext i32 %109 to i64
  %arrayidx265 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom264
  %110 = load %union.rec*, %union.rec** %arrayidx265, align 8
  %cmp266 = icmp eq %union.rec* %110, null
  br i1 %cmp266, label %if.then.268, label %if.else.270

if.then.268:                                      ; preds = %if.else
  %111 = load i32, i32* @zz_size, align 4
  %112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call269 = call %union.rec* @GetMemory(i32 %111, %struct.FILE_POS* %112)
  store %union.rec* %call269, %union.rec** @zz_hold, align 8
  br label %if.end.279

if.else.270:                                      ; preds = %if.else
  %113 = load i32, i32* @zz_size, align 4
  %idxprom271 = sext i32 %113 to i64
  %arrayidx272 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom271
  %114 = load %union.rec*, %union.rec** %arrayidx272, align 8
  store %union.rec* %114, %union.rec** @zz_hold, align 8
  store %union.rec* %114, %union.rec** @zz_hold, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1273 = bitcast %union.rec* %115 to %struct.word_type*
  %olist274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist274, i32 0, i64 0
  %opred276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx275, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %opred276, align 8
  %117 = load i32, i32* @zz_size, align 4
  %idxprom277 = sext i32 %117 to i64
  %arrayidx278 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom277
  store %union.rec* %116, %union.rec** %arrayidx278, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.270, %if.then.268
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.262
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %os11283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.anon*
  %otype284 = getelementptr inbounds %struct.anon, %struct.anon* %os11283, i32 0, i32 0
  store i8 10, i8* %otype284, align 1
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1285 = bitcast %union.rec* %120 to %struct.word_type*
  %olist286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist286, i32 0, i64 1
  %osucc288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx287, i32 0, i32 1
  store %union.rec* %119, %union.rec** %osucc288, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %121 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 1
  %opred292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 0
  store %union.rec* %119, %union.rec** %opred292, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1293 = bitcast %union.rec* %122 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 0
  %osucc296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 1
  store %union.rec* %119, %union.rec** %osucc296, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %123 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 0
  %opred300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 0
  store %union.rec* %119, %union.rec** %opred300, align 8
  store %union.rec* %119, %union.rec** %par, align 8
  %124 = load %union.rec*, %union.rec** %ppar, align 8
  %125 = load %union.rec*, %union.rec** %par, align 8
  %os2301 = bitcast %union.rec* %125 to %struct.closure_type*
  %oactual302 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2301, i32 0, i32 5
  store %union.rec* %124, %union.rec** %oactual302, align 8
  %126 = load %union.rec*, %union.rec** %x.addr, align 8
  %call303 = call %union.rec* @CrossGenTag(%union.rec* %126)
  store %union.rec* %call303, %union.rec** %y, align 8
  %127 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv304 = zext i8 %127 to i32
  store i32 %conv304, i32* @zz_size, align 4
  %conv305 = sext i32 %conv304 to i64
  %cmp306 = icmp uge i64 %conv305, 265
  br i1 %cmp306, label %if.then.308, label %if.else.310

if.then.308:                                      ; preds = %if.end.280
  %128 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call309 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %128)
  br label %if.end.327

if.else.310:                                      ; preds = %if.end.280
  %129 = load i32, i32* @zz_size, align 4
  %idxprom311 = sext i32 %129 to i64
  %arrayidx312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom311
  %130 = load %union.rec*, %union.rec** %arrayidx312, align 8
  %cmp313 = icmp eq %union.rec* %130, null
  br i1 %cmp313, label %if.then.315, label %if.else.317

if.then.315:                                      ; preds = %if.else.310
  %131 = load i32, i32* @zz_size, align 4
  %132 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call316 = call %union.rec* @GetMemory(i32 %131, %struct.FILE_POS* %132)
  store %union.rec* %call316, %union.rec** @zz_hold, align 8
  br label %if.end.326

if.else.317:                                      ; preds = %if.else.310
  %133 = load i32, i32* @zz_size, align 4
  %idxprom318 = sext i32 %133 to i64
  %arrayidx319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom318
  %134 = load %union.rec*, %union.rec** %arrayidx319, align 8
  store %union.rec* %134, %union.rec** @zz_hold, align 8
  store %union.rec* %134, %union.rec** @zz_hold, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %135 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 0
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred323, align 8
  %137 = load i32, i32* @zz_size, align 4
  %idxprom324 = sext i32 %137 to i64
  %arrayidx325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom324
  store %union.rec* %136, %union.rec** %arrayidx325, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.317, %if.then.315
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.308
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %138 to %struct.word_type*
  %ou1329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 1
  %os11330 = bitcast %union.FIRST_UNION* %ou1329 to %struct.anon*
  %otype331 = getelementptr inbounds %struct.anon, %struct.anon* %os11330, i32 0, i32 0
  store i8 0, i8* %otype331, align 1
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %140 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  store %union.rec* %139, %union.rec** %osucc335, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %141 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %139, %union.rec** %opred339, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %142 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 0
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  store %union.rec* %139, %union.rec** %osucc343, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %143 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 0
  %opred347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 0
  store %union.rec* %139, %union.rec** %opred347, align 8
  store %union.rec* %139, %union.rec** @xx_link, align 8
  %144 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %144, %union.rec** @zz_res, align 8
  %145 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %145, %union.rec** @zz_hold, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp348 = icmp eq %union.rec* %146, null
  br i1 %cmp348, label %cond.true.350, label %cond.false.351

cond.true.350:                                    ; preds = %if.end.327
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.386

cond.false.351:                                   ; preds = %if.end.327
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp352 = icmp eq %union.rec* %148, null
  br i1 %cmp352, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %cond.false.351
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.384

cond.false.355:                                   ; preds = %cond.false.351
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1356 = bitcast %union.rec* %150 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 0
  %opred359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %opred359, align 8
  store %union.rec* %151, %union.rec** @zz_tmp, align 8
  %152 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1360 = bitcast %union.rec* %152 to %struct.word_type*
  %olist361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1360, i32 0, i32 0
  %arrayidx362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist361, i32 0, i64 0
  %opred363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx362, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %opred363, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1364 = bitcast %union.rec* %154 to %struct.word_type*
  %olist365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist365, i32 0, i64 0
  %opred367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx366, i32 0, i32 0
  store %union.rec* %153, %union.rec** %opred367, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %156 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1368 = bitcast %union.rec* %156 to %struct.word_type*
  %olist369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1368, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist369, i32 0, i64 0
  %opred371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx370, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred371, align 8
  %os1372 = bitcast %union.rec* %157 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 0
  %osucc375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 1
  store %union.rec* %155, %union.rec** %osucc375, align 8
  %158 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1376 = bitcast %union.rec* %159 to %struct.word_type*
  %olist377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist377, i32 0, i64 0
  %opred379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx378, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred379, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1380 = bitcast %union.rec* %161 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 0
  %osucc383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 1
  store %union.rec* %160, %union.rec** %osucc383, align 8
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.355, %cond.true.354
  %cond385 = phi %union.rec* [ %149, %cond.true.354 ], [ %160, %cond.false.355 ]
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.end.384, %cond.true.350
  %cond387 = phi %union.rec* [ %147, %cond.true.350 ], [ %cond385, %cond.end.384 ]
  %162 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %162, %union.rec** @zz_res, align 8
  %163 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp388 = icmp eq %union.rec* %164, null
  br i1 %cmp388, label %cond.true.390, label %cond.false.391

cond.true.390:                                    ; preds = %cond.end.386
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.426

cond.false.391:                                   ; preds = %cond.end.386
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp392 = icmp eq %union.rec* %166, null
  br i1 %cmp392, label %cond.true.394, label %cond.false.395

cond.true.394:                                    ; preds = %cond.false.391
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.424

cond.false.395:                                   ; preds = %cond.false.391
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1396 = bitcast %union.rec* %168 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 1
  %opred399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred399, align 8
  store %union.rec* %169, %union.rec** @zz_tmp, align 8
  %170 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1400 = bitcast %union.rec* %170 to %struct.word_type*
  %olist401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist401, i32 0, i64 1
  %opred403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx402, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %opred403, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1404 = bitcast %union.rec* %172 to %struct.word_type*
  %olist405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1404, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist405, i32 0, i64 1
  %opred407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx406, i32 0, i32 0
  store %union.rec* %171, %union.rec** %opred407, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1408 = bitcast %union.rec* %174 to %struct.word_type*
  %olist409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist409, i32 0, i64 1
  %opred411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx410, i32 0, i32 0
  %175 = load %union.rec*, %union.rec** %opred411, align 8
  %os1412 = bitcast %union.rec* %175 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 1
  %osucc415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 1
  store %union.rec* %173, %union.rec** %osucc415, align 8
  %176 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1416 = bitcast %union.rec* %177 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 1
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  store %union.rec* %176, %union.rec** %opred419, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %179 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1420 = bitcast %union.rec* %179 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 1
  %osucc423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 1
  store %union.rec* %178, %union.rec** %osucc423, align 8
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.395, %cond.true.394
  %cond425 = phi %union.rec* [ %167, %cond.true.394 ], [ %178, %cond.false.395 ]
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.end.424, %cond.true.390
  %cond427 = phi %union.rec* [ %165, %cond.true.390 ], [ %cond425, %cond.end.424 ]
  %180 = load %union.rec*, %union.rec** %ppar, align 8
  %os1428 = bitcast %union.rec* %180 to %struct.word_type*
  %ou1429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 1
  %os11430 = bitcast %union.FIRST_UNION* %ou1429 to %struct.anon*
  %otype431 = getelementptr inbounds %struct.anon, %struct.anon* %os11430, i32 0, i32 0
  %181 = load i8, i8* %otype431, align 1
  %conv432 = zext i8 %181 to i32
  switch i32 %conv432, label %sw.epilog [
    i32 144, label %sw.bb
    i32 145, label %sw.bb.437
    i32 146, label %sw.bb.496
  ]

sw.bb:                                            ; preds = %cond.end.426
  %182 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1433 = bitcast %union.rec* %182 to %struct.word_type*
  %olist434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1433, i32 0, i32 0
  %arrayidx435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist434, i32 0, i64 0
  %osucc436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx435, i32 0, i32 1
  %183 = load %union.rec*, %union.rec** %osucc436, align 8
  store %union.rec* %183, %union.rec** %link, align 8
  br label %sw.epilog

sw.bb.437:                                        ; preds = %cond.end.426
  %184 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1438 = bitcast %union.rec* %184 to %struct.word_type*
  %olist439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1438, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist439, i32 0, i64 0
  %osucc441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx440, i32 0, i32 1
  %185 = load %union.rec*, %union.rec** %osucc441, align 8
  store %union.rec* %185, %union.rec** %link, align 8
  %186 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1442 = bitcast %union.rec* %186 to %struct.word_type*
  %olist443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 0
  %arrayidx444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist443, i32 0, i64 0
  %osucc445 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx444, i32 0, i32 1
  %187 = load %union.rec*, %union.rec** %osucc445, align 8
  %188 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp446 = icmp ne %union.rec* %187, %188
  br i1 %cmp446, label %if.then.448, label %if.end.495

if.then.448:                                      ; preds = %sw.bb.437
  %189 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1449 = bitcast %union.rec* %189 to %struct.word_type*
  %olist450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist450, i32 0, i64 0
  %osucc452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx451, i32 0, i32 1
  %190 = load %union.rec*, %union.rec** %osucc452, align 8
  %os1453 = bitcast %union.rec* %190 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 1
  %opred456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 0
  %191 = load %union.rec*, %union.rec** %opred456, align 8
  store %union.rec* %191, %union.rec** %y, align 8
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.466, %if.then.448
  %192 = load %union.rec*, %union.rec** %y, align 8
  %os1458 = bitcast %union.rec* %192 to %struct.word_type*
  %ou1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1458, i32 0, i32 1
  %os11460 = bitcast %union.FIRST_UNION* %ou1459 to %struct.anon*
  %otype461 = getelementptr inbounds %struct.anon, %struct.anon* %os11460, i32 0, i32 0
  %193 = load i8, i8* %otype461, align 1
  %conv462 = zext i8 %193 to i32
  %cmp463 = icmp eq i32 %conv462, 0
  br i1 %cmp463, label %for.body.465, label %for.end.471

for.body.465:                                     ; preds = %for.cond.457
  br label %for.inc.466

for.inc.466:                                      ; preds = %for.body.465
  %194 = load %union.rec*, %union.rec** %y, align 8
  %os1467 = bitcast %union.rec* %194 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 1
  %opred470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %opred470, align 8
  store %union.rec* %195, %union.rec** %y, align 8
  br label %for.cond.457

for.end.471:                                      ; preds = %for.cond.457
  %196 = load %union.rec*, %union.rec** %y, align 8
  %os1472 = bitcast %union.rec* %196 to %struct.word_type*
  %ou1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1472, i32 0, i32 1
  %os11474 = bitcast %union.FIRST_UNION* %ou1473 to %struct.anon*
  %otype475 = getelementptr inbounds %struct.anon, %struct.anon* %os11474, i32 0, i32 0
  %197 = load i8, i8* %otype475, align 1
  %conv476 = zext i8 %197 to i32
  %cmp477 = icmp eq i32 %conv476, 10
  br i1 %cmp477, label %land.lhs.true.479, label %if.end.494

land.lhs.true.479:                                ; preds = %for.end.471
  %198 = load %union.rec*, %union.rec** %y, align 8
  %os2480 = bitcast %union.rec* %198 to %struct.closure_type*
  %oactual481 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2480, i32 0, i32 5
  %199 = load %union.rec*, %union.rec** %oactual481, align 8
  %os1482 = bitcast %union.rec* %199 to %struct.word_type*
  %ou1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1482, i32 0, i32 1
  %os11484 = bitcast %union.FIRST_UNION* %ou1483 to %struct.anon*
  %otype485 = getelementptr inbounds %struct.anon, %struct.anon* %os11484, i32 0, i32 0
  %200 = load i8, i8* %otype485, align 1
  %conv486 = zext i8 %200 to i32
  %cmp487 = icmp eq i32 %conv486, 144
  br i1 %cmp487, label %if.then.489, label %if.end.494

if.then.489:                                      ; preds = %land.lhs.true.479
  %201 = load %union.rec*, %union.rec** %link, align 8
  %os1490 = bitcast %union.rec* %201 to %struct.word_type*
  %olist491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1490, i32 0, i32 0
  %arrayidx492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist491, i32 0, i64 0
  %osucc493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx492, i32 0, i32 1
  %202 = load %union.rec*, %union.rec** %osucc493, align 8
  store %union.rec* %202, %union.rec** %link, align 8
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.489, %land.lhs.true.479, %for.end.471
  br label %if.end.495

if.end.495:                                       ; preds = %if.end.494, %sw.bb.437
  br label %sw.epilog

sw.bb.496:                                        ; preds = %cond.end.426
  %203 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1497 = bitcast %union.rec* %203 to %struct.word_type*
  %olist498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1497, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist498, i32 0, i64 0
  %osucc500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx499, i32 0, i32 1
  %204 = load %union.rec*, %union.rec** %osucc500, align 8
  store %union.rec* %204, %union.rec** %link, align 8
  br label %for.cond.501

for.cond.501:                                     ; preds = %for.inc.533, %sw.bb.496
  %205 = load %union.rec*, %union.rec** %link, align 8
  %206 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp502 = icmp ne %union.rec* %205, %206
  br i1 %cmp502, label %for.body.504, label %for.end.538

for.body.504:                                     ; preds = %for.cond.501
  %207 = load %union.rec*, %union.rec** %link, align 8
  %os1505 = bitcast %union.rec* %207 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 1
  %opred508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 0
  %208 = load %union.rec*, %union.rec** %opred508, align 8
  store %union.rec* %208, %union.rec** %y, align 8
  br label %for.cond.509

for.cond.509:                                     ; preds = %for.inc.518, %for.body.504
  %209 = load %union.rec*, %union.rec** %y, align 8
  %os1510 = bitcast %union.rec* %209 to %struct.word_type*
  %ou1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1510, i32 0, i32 1
  %os11512 = bitcast %union.FIRST_UNION* %ou1511 to %struct.anon*
  %otype513 = getelementptr inbounds %struct.anon, %struct.anon* %os11512, i32 0, i32 0
  %210 = load i8, i8* %otype513, align 1
  %conv514 = zext i8 %210 to i32
  %cmp515 = icmp eq i32 %conv514, 0
  br i1 %cmp515, label %for.body.517, label %for.end.523

for.body.517:                                     ; preds = %for.cond.509
  br label %for.inc.518

for.inc.518:                                      ; preds = %for.body.517
  %211 = load %union.rec*, %union.rec** %y, align 8
  %os1519 = bitcast %union.rec* %211 to %struct.word_type*
  %olist520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1519, i32 0, i32 0
  %arrayidx521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist520, i32 0, i64 1
  %opred522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx521, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %opred522, align 8
  store %union.rec* %212, %union.rec** %y, align 8
  br label %for.cond.509

for.end.523:                                      ; preds = %for.cond.509
  %213 = load %union.rec*, %union.rec** %y, align 8
  %os1524 = bitcast %union.rec* %213 to %struct.word_type*
  %ou1525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 1
  %os11526 = bitcast %union.FIRST_UNION* %ou1525 to %struct.anon*
  %otype527 = getelementptr inbounds %struct.anon, %struct.anon* %os11526, i32 0, i32 0
  %214 = load i8, i8* %otype527, align 1
  %conv528 = zext i8 %214 to i32
  %cmp529 = icmp ne i32 %conv528, 10
  br i1 %cmp529, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %for.end.523
  br label %for.end.538

if.end.532:                                       ; preds = %for.end.523
  br label %for.inc.533

for.inc.533:                                      ; preds = %if.end.532
  %215 = load %union.rec*, %union.rec** %link, align 8
  %os1534 = bitcast %union.rec* %215 to %struct.word_type*
  %olist535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1534, i32 0, i32 0
  %arrayidx536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist535, i32 0, i64 0
  %osucc537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx536, i32 0, i32 1
  %216 = load %union.rec*, %union.rec** %osucc537, align 8
  store %union.rec* %216, %union.rec** %link, align 8
  br label %for.cond.501

for.end.538:                                      ; preds = %if.then.531, %for.cond.501
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.426, %for.end.538, %if.end.495, %sw.bb
  %217 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv539 = zext i8 %217 to i32
  store i32 %conv539, i32* @zz_size, align 4
  %conv540 = sext i32 %conv539 to i64
  %cmp541 = icmp uge i64 %conv540, 265
  br i1 %cmp541, label %if.then.543, label %if.else.545

if.then.543:                                      ; preds = %sw.epilog
  %218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call544 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %218)
  br label %if.end.562

if.else.545:                                      ; preds = %sw.epilog
  %219 = load i32, i32* @zz_size, align 4
  %idxprom546 = sext i32 %219 to i64
  %arrayidx547 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom546
  %220 = load %union.rec*, %union.rec** %arrayidx547, align 8
  %cmp548 = icmp eq %union.rec* %220, null
  br i1 %cmp548, label %if.then.550, label %if.else.552

if.then.550:                                      ; preds = %if.else.545
  %221 = load i32, i32* @zz_size, align 4
  %222 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call551 = call %union.rec* @GetMemory(i32 %221, %struct.FILE_POS* %222)
  store %union.rec* %call551, %union.rec** @zz_hold, align 8
  br label %if.end.561

if.else.552:                                      ; preds = %if.else.545
  %223 = load i32, i32* @zz_size, align 4
  %idxprom553 = sext i32 %223 to i64
  %arrayidx554 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom553
  %224 = load %union.rec*, %union.rec** %arrayidx554, align 8
  store %union.rec* %224, %union.rec** @zz_hold, align 8
  store %union.rec* %224, %union.rec** @zz_hold, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1555 = bitcast %union.rec* %225 to %struct.word_type*
  %olist556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist556, i32 0, i64 0
  %opred558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx557, i32 0, i32 0
  %226 = load %union.rec*, %union.rec** %opred558, align 8
  %227 = load i32, i32* @zz_size, align 4
  %idxprom559 = sext i32 %227 to i64
  %arrayidx560 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom559
  store %union.rec* %226, %union.rec** %arrayidx560, align 8
  br label %if.end.561

if.end.561:                                       ; preds = %if.else.552, %if.then.550
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.then.543
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1563 = bitcast %union.rec* %228 to %struct.word_type*
  %ou1564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1563, i32 0, i32 1
  %os11565 = bitcast %union.FIRST_UNION* %ou1564 to %struct.anon*
  %otype566 = getelementptr inbounds %struct.anon, %struct.anon* %os11565, i32 0, i32 0
  store i8 0, i8* %otype566, align 1
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1567 = bitcast %union.rec* %230 to %struct.word_type*
  %olist568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1567, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist568, i32 0, i64 1
  %osucc570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx569, i32 0, i32 1
  store %union.rec* %229, %union.rec** %osucc570, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1571 = bitcast %union.rec* %231 to %struct.word_type*
  %olist572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist572, i32 0, i64 1
  %opred574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx573, i32 0, i32 0
  store %union.rec* %229, %union.rec** %opred574, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1575 = bitcast %union.rec* %232 to %struct.word_type*
  %olist576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist576, i32 0, i64 0
  %osucc578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx577, i32 0, i32 1
  store %union.rec* %229, %union.rec** %osucc578, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1579 = bitcast %union.rec* %233 to %struct.word_type*
  %olist580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1579, i32 0, i32 0
  %arrayidx581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist580, i32 0, i64 0
  %opred582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx581, i32 0, i32 0
  store %union.rec* %229, %union.rec** %opred582, align 8
  store %union.rec* %229, %union.rec** @xx_link, align 8
  %234 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %234, %union.rec** @zz_res, align 8
  %235 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %235, %union.rec** @zz_hold, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp583 = icmp eq %union.rec* %236, null
  br i1 %cmp583, label %cond.true.585, label %cond.false.586

cond.true.585:                                    ; preds = %if.end.562
  %237 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.621

cond.false.586:                                   ; preds = %if.end.562
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp587 = icmp eq %union.rec* %238, null
  br i1 %cmp587, label %cond.true.589, label %cond.false.590

cond.true.589:                                    ; preds = %cond.false.586
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.619

cond.false.590:                                   ; preds = %cond.false.586
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1591 = bitcast %union.rec* %240 to %struct.word_type*
  %olist592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist592, i32 0, i64 0
  %opred594 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx593, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %opred594, align 8
  store %union.rec* %241, %union.rec** @zz_tmp, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1595 = bitcast %union.rec* %242 to %struct.word_type*
  %olist596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1595, i32 0, i32 0
  %arrayidx597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist596, i32 0, i64 0
  %opred598 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx597, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %opred598, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1599 = bitcast %union.rec* %244 to %struct.word_type*
  %olist600 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1599, i32 0, i32 0
  %arrayidx601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist600, i32 0, i64 0
  %opred602 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx601, i32 0, i32 0
  store %union.rec* %243, %union.rec** %opred602, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1603 = bitcast %union.rec* %246 to %struct.word_type*
  %olist604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1603, i32 0, i32 0
  %arrayidx605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist604, i32 0, i64 0
  %opred606 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx605, i32 0, i32 0
  %247 = load %union.rec*, %union.rec** %opred606, align 8
  %os1607 = bitcast %union.rec* %247 to %struct.word_type*
  %olist608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1607, i32 0, i32 0
  %arrayidx609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist608, i32 0, i64 0
  %osucc610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx609, i32 0, i32 1
  store %union.rec* %245, %union.rec** %osucc610, align 8
  %248 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %249 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1611 = bitcast %union.rec* %249 to %struct.word_type*
  %olist612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 0
  %arrayidx613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist612, i32 0, i64 0
  %opred614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx613, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred614, align 8
  %250 = load %union.rec*, %union.rec** @zz_res, align 8
  %251 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1615 = bitcast %union.rec* %251 to %struct.word_type*
  %olist616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1615, i32 0, i32 0
  %arrayidx617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist616, i32 0, i64 0
  %osucc618 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx617, i32 0, i32 1
  store %union.rec* %250, %union.rec** %osucc618, align 8
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.590, %cond.true.589
  %cond620 = phi %union.rec* [ %239, %cond.true.589 ], [ %250, %cond.false.590 ]
  br label %cond.end.621

cond.end.621:                                     ; preds = %cond.end.619, %cond.true.585
  %cond622 = phi %union.rec* [ %237, %cond.true.585 ], [ %cond620, %cond.end.619 ]
  %252 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %252, %union.rec** @zz_res, align 8
  %253 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %253, %union.rec** @zz_hold, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp623 = icmp eq %union.rec* %254, null
  br i1 %cmp623, label %cond.true.625, label %cond.false.626

cond.true.625:                                    ; preds = %cond.end.621
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.661

cond.false.626:                                   ; preds = %cond.end.621
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp627 = icmp eq %union.rec* %256, null
  br i1 %cmp627, label %cond.true.629, label %cond.false.630

cond.true.629:                                    ; preds = %cond.false.626
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.659

cond.false.630:                                   ; preds = %cond.false.626
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1631 = bitcast %union.rec* %258 to %struct.word_type*
  %olist632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1631, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist632, i32 0, i64 1
  %opred634 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx633, i32 0, i32 0
  %259 = load %union.rec*, %union.rec** %opred634, align 8
  store %union.rec* %259, %union.rec** @zz_tmp, align 8
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1635 = bitcast %union.rec* %260 to %struct.word_type*
  %olist636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist636, i32 0, i64 1
  %opred638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx637, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %opred638, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1639 = bitcast %union.rec* %262 to %struct.word_type*
  %olist640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist640, i32 0, i64 1
  %opred642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx641, i32 0, i32 0
  store %union.rec* %261, %union.rec** %opred642, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1643 = bitcast %union.rec* %264 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 1
  %opred646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %opred646, align 8
  %os1647 = bitcast %union.rec* %265 to %struct.word_type*
  %olist648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1647, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist648, i32 0, i64 1
  %osucc650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx649, i32 0, i32 1
  store %union.rec* %263, %union.rec** %osucc650, align 8
  %266 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1651 = bitcast %union.rec* %267 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 1
  %opred654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 0
  store %union.rec* %266, %union.rec** %opred654, align 8
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  %269 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1655 = bitcast %union.rec* %269 to %struct.word_type*
  %olist656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist656, i32 0, i64 1
  %osucc658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx657, i32 0, i32 1
  store %union.rec* %268, %union.rec** %osucc658, align 8
  br label %cond.end.659

cond.end.659:                                     ; preds = %cond.false.630, %cond.true.629
  %cond660 = phi %union.rec* [ %257, %cond.true.629 ], [ %268, %cond.false.630 ]
  br label %cond.end.661

cond.end.661:                                     ; preds = %cond.end.659, %cond.true.625
  %cond662 = phi %union.rec* [ %255, %cond.true.625 ], [ %cond660, %cond.end.659 ]
  br label %if.end.663

if.end.663:                                       ; preds = %cond.end.661, %for.end.254
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %for.end.188
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @CrossGenTag(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %file_name = alloca i8*, align 8
  %sym = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %fnum = alloca i16, align 2
  %seq = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %0 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %1 = load %union.rec*, %union.rec** %oactual, align 8
  store %union.rec* %1, %union.rec** %sym, align 8
  %2 = load %union.rec*, %union.rec** %sym, align 8
  %os6 = bitcast %union.rec* %2 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %3 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp = icmp eq %union.rec* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %6 = load i16, i16* %ofile_num, align 2
  store i16 %6, i16* %fnum, align 2
  %7 = load i16, i16* %fnum, align 2
  %call = call i8* @FileName(i16 zeroext %7)
  store i8* %call, i8** %file_name, align 8
  %8 = load %union.rec*, %union.rec** %sym, align 8
  %9 = load i16, i16* %fnum, align 2
  %call1 = call i32 @crtab_getnext(%union.rec* %8, i16 zeroext %9, %struct.anon.14** @crossref_tab)
  store i32 %call1, i32* %seq, align 4
  %10 = load i8*, i8** %file_name, align 8
  %call2 = call i64 @strlen(i8* %10) #4
  %add = add i64 %call2, 20
  %cmp3 = icmp uge i64 %add, 512
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %11 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15 = bitcast %union.rec* %11 to %struct.word_type*
  %ou16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %ofpos7 = bitcast %union.FIRST_UNION* %ou16 to %struct.FILE_POS*
  %12 = load i8*, i8** %file_name, align 8
  %call8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos7, i8* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %sym, align 8
  %os110 = bitcast %union.rec* %13 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %ofpos12 = bitcast %union.FIRST_UNION* %ou111 to %struct.FILE_POS*
  %ofile_num13 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos12, i32 0, i32 2
  %14 = load i16, i16* %ofile_num13, align 2
  %conv = zext i16 %14 to i32
  %15 = load %union.rec*, %union.rec** %sym, align 8
  %os114 = bitcast %union.rec* %15 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %ofpos16 = bitcast %union.FIRST_UNION* %ou115 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos16, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %16 = load i8*, i8** %file_name, align 8
  %17 = load i32, i32* %seq, align 4
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %conv, i32 %bf.clear, i8* %16, i32 %17) #5
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os119 = bitcast %union.rec* %18 to %struct.word_type*
  %ou120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 1
  %ofpos21 = bitcast %union.FIRST_UNION* %ou120 to %struct.FILE_POS*
  %call22 = call %union.rec* @MakeWord(i32 12, i8* %arraydecay18, %struct.FILE_POS* %ofpos21)
  store %union.rec* %call22, %union.rec** %res, align 8
  %19 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %19
}

; Function Attrs: nounwind uwtable
define %union.rec* @CrossExpand(%union.rec* %x, %union.rec* %env, %struct.STYLE* %style, %union.rec** %crs, %union.rec** %res_env) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %style.addr = alloca %struct.STYLE*, align 8
  %crs.addr = alloca %union.rec**, align 8
  %res_env.addr = alloca %union.rec**, align 8
  %sym = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %db = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %ctype = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %seq = alloca [512 x i8], align 16
  %str = alloca i8*, align 8
  %fnum = alloca i16, align 2
  %dfnum = alloca i16, align 2
  %tagerror = alloca i32, align 4
  %cont = alloca i64, align 8
  %dfpos = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %new_seq = alloca i32, align 4
  %envt = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec** %crs, %union.rec*** %crs.addr, align 8
  store %union.rec** %res_env, %union.rec*** %res_env.addr, align 8
  store i32 0, i32* %tagerror, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 6
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os115 = bitcast %union.rec* %2 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %3 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %3 to i32
  %cmp20 = icmp eq i32 %conv19, 7
  br i1 %cmp20, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os122 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  %os123 = bitcast %union.rec* %6 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 0
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %osucc26, align 8
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %8 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %cmp30 = icmp eq %union.rec* %7, %9
  br i1 %cmp30, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %if.end
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call33 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end
  %11 = load %union.rec*, %union.rec** %x.addr, align 8
  %os135 = bitcast %union.rec* %11 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 0
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred38, align 8
  %os139 = bitcast %union.rec* %12 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 1
  %opred42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred42, align 8
  store %union.rec* %13, %union.rec** %tag, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %14 = load %union.rec*, %union.rec** %tag, align 8
  %os143 = bitcast %union.rec* %14 to %struct.word_type*
  %ou144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 1
  %os1145 = bitcast %union.FIRST_UNION* %ou144 to %struct.anon*
  %otype46 = getelementptr inbounds %struct.anon, %struct.anon* %os1145, i32 0, i32 0
  %15 = load i8, i8* %otype46, align 1
  %conv47 = zext i8 %15 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %union.rec*, %union.rec** %tag, align 8
  %os150 = bitcast %union.rec* %16 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 1
  %opred53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred53, align 8
  store %union.rec* %17, %union.rec** %tag, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %union.rec*, %union.rec** %tag, align 8
  %19 = load %union.rec*, %union.rec** %env.addr, align 8
  %20 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %21 = load %union.rec**, %union.rec*** %crs.addr, align 8
  %call54 = call %union.rec* @Manifest(%union.rec* %18, %union.rec* %19, %struct.STYLE* %20, %union.rec** getelementptr inbounds ([2 x %union.rec*], [2 x %union.rec*]* @nbt, i32 0, i32 0), %union.rec** getelementptr inbounds ([2 x %union.rec*], [2 x %union.rec*]* @nft, i32 0, i32 0), %union.rec** @ntarget, %union.rec** %21, i32 0, i32 0, %union.rec** @nenclose, i32 0)
  store %union.rec* %call54, %union.rec** %tag, align 8
  %22 = load %union.rec*, %union.rec** %tag, align 8
  %call55 = call %union.rec* @ReplaceWithTidy(%union.rec* %22, i32 1)
  store %union.rec* %call55, %union.rec** %tag, align 8
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os156 = bitcast %union.rec* %23 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 0
  %osucc59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc59, align 8
  %os160 = bitcast %union.rec* %24 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 1
  %opred63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %opred63, align 8
  store %union.rec* %25, %union.rec** %y, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.73, %for.end
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os165 = bitcast %union.rec* %26 to %struct.word_type*
  %ou166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 1
  %os1167 = bitcast %union.FIRST_UNION* %ou166 to %struct.anon*
  %otype68 = getelementptr inbounds %struct.anon, %struct.anon* %os1167, i32 0, i32 0
  %27 = load i8, i8* %otype68, align 1
  %conv69 = zext i8 %27 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %for.body.72, label %for.end.78

for.body.72:                                      ; preds = %for.cond.64
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.72
  %28 = load %union.rec*, %union.rec** %y, align 8
  %os174 = bitcast %union.rec* %28 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 1
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %opred77, align 8
  store %union.rec* %29, %union.rec** %y, align 8
  br label %for.cond.64

for.end.78:                                       ; preds = %for.cond.64
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os179 = bitcast %union.rec* %30 to %struct.word_type*
  %ou180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 1
  %os1181 = bitcast %union.FIRST_UNION* %ou180 to %struct.anon*
  %otype82 = getelementptr inbounds %struct.anon, %struct.anon* %os1181, i32 0, i32 0
  %31 = load i8, i8* %otype82, align 1
  %conv83 = zext i8 %31 to i32
  %cmp84 = icmp eq i32 %conv83, 2
  br i1 %cmp84, label %if.end.88, label %if.then.86

if.then.86:                                       ; preds = %for.end.78
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call87 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %for.end.78
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %33 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %34 = load %union.rec*, %union.rec** %oactual, align 8
  store %union.rec* %34, %union.rec** %sym, align 8
  %35 = load %union.rec*, %union.rec** %tag, align 8
  %os189 = bitcast %union.rec* %35 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon*
  %otype92 = getelementptr inbounds %struct.anon, %struct.anon* %os1191, i32 0, i32 0
  %36 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %36 to i32
  %cmp94 = icmp eq i32 %conv93, 11
  br i1 %cmp94, label %cond.false, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.end.88
  %37 = load %union.rec*, %union.rec** %tag, align 8
  %os197 = bitcast %union.rec* %37 to %struct.word_type*
  %ou198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 1
  %os1199 = bitcast %union.FIRST_UNION* %ou198 to %struct.anon*
  %otype100 = getelementptr inbounds %struct.anon, %struct.anon* %os1199, i32 0, i32 0
  %38 = load i8, i8* %otype100, align 1
  %conv101 = zext i8 %38 to i32
  %cmp102 = icmp eq i32 %conv101, 12
  br i1 %cmp102, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false.96
  br label %cond.end.137

cond.false:                                       ; preds = %lor.lhs.false.96, %if.end.88
  %39 = load %union.rec*, %union.rec** %tag, align 8
  %os1104 = bitcast %union.rec* %39 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call105 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.false
  br label %cond.end.135

cond.false.109:                                   ; preds = %cond.false
  %40 = load %union.rec*, %union.rec** %tag, align 8
  %os1110 = bitcast %union.rec* %40 to %struct.word_type*
  %ostring111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 4
  %arraydecay112 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring111, i32 0, i32 0
  %call113 = call i32 @strcmp(i8* %arraydecay112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #4
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.109
  br label %cond.end.133

cond.false.117:                                   ; preds = %cond.false.109
  %41 = load %union.rec*, %union.rec** %tag, align 8
  %os1118 = bitcast %union.rec* %41 to %struct.word_type*
  %ostring119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 4
  %arraydecay120 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring119, i32 0, i32 0
  %call121 = call i32 @strcmp(i8* %arraydecay120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)) #4
  %cmp122 = icmp eq i32 %call121, 0
  br i1 %cmp122, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.false.117
  br label %cond.end

cond.false.125:                                   ; preds = %cond.false.117
  %42 = load %union.rec*, %union.rec** %tag, align 8
  %os1126 = bitcast %union.rec* %42 to %struct.word_type*
  %ostring127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 4
  %arraydecay128 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring127, i32 0, i32 0
  %call129 = call i32 @strcmp(i8* %arraydecay128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp130 = icmp eq i32 %call129, 0
  %cond = select i1 %cmp130, i32 127, i32 126
  br label %cond.end

cond.end:                                         ; preds = %cond.false.125, %cond.true.124
  %cond132 = phi i32 [ 128, %cond.true.124 ], [ %cond, %cond.false.125 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end, %cond.true.116
  %cond134 = phi i32 [ 134, %cond.true.116 ], [ %cond132, %cond.end ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.true.108
  %cond136 = phi i32 [ 2, %cond.true.108 ], [ %cond134, %cond.end.133 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %cond.true
  %cond138 = phi i32 [ 1, %cond.true ], [ %cond136, %cond.end.135 ]
  store i32 %cond138, i32* %ctype, align 4
  store %union.rec* null, %union.rec** %res, align 8
  %43 = load i32, i32* %ctype, align 4
  switch i32 %43, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.142
    i32 126, label %sw.bb.147
    i32 134, label %sw.bb.252
    i32 127, label %sw.bb.252
    i32 128, label %sw.bb.252
  ]

sw.bb:                                            ; preds = %cond.end.137
  %44 = load %union.rec*, %union.rec** %tag, align 8
  %os1139 = bitcast %union.rec* %44 to %struct.word_type*
  %ou1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1140 to %struct.FILE_POS*
  %call141 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.bb.142:                                        ; preds = %cond.end.137
  %45 = load %union.rec*, %union.rec** %tag, align 8
  %os1143 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %ofpos145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.FILE_POS*
  %call146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.bb.147:                                        ; preds = %cond.end.137
  %46 = load %union.rec*, %union.rec** %sym, align 8
  %os6 = bitcast %union.rec* %46 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %47 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp148 = icmp eq %union.rec* %47, null
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %sw.bb.147
  %48 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %48)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %sw.bb.147
  %49 = load %union.rec*, %union.rec** %sym, align 8
  %os6152 = bitcast %union.rec* %49 to %struct.symbol_type*
  %ocross_sym153 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6152, i32 0, i32 8
  %50 = load %union.rec*, %union.rec** %ocross_sym153, align 8
  store %union.rec* %50, %union.rec** %cs, align 8
  %51 = load %union.rec*, %union.rec** %sym, align 8
  %52 = load %union.rec*, %union.rec** @MomentSym, align 8
  %cmp154 = icmp eq %union.rec* %51, %52
  br i1 %cmp154, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.151
  %53 = load %union.rec*, %union.rec** %tag, align 8
  %os1156 = bitcast %union.rec* %53 to %struct.word_type*
  %ostring157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 4
  %arraydecay158 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring157, i32 0, i32 0
  %call159 = call i32 @strcmp(i8* %arraydecay158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #4
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then.162, label %if.else

if.then.162:                                      ; preds = %land.lhs.true
  %call163 = call %union.rec* @StartMoment()
  store %union.rec* %call163, %union.rec** %res, align 8
  br label %if.end.251

if.else:                                          ; preds = %land.lhs.true, %if.end.151
  %54 = load %union.rec*, %union.rec** %sym, align 8
  %os1164 = bitcast %union.rec* %54 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ohas_tag = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %55 = bitcast [3 x i8]* %ohas_tag to i24*
  %bf.load = load i24, i24* %55, align 1
  %bf.lshr = lshr i24 %bf.load, 1
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.171, label %if.then.165

if.then.165:                                      ; preds = %if.else
  %56 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1166 = bitcast %union.rec* %56 to %struct.word_type*
  %ou1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 1
  %ofpos168 = bitcast %union.FIRST_UNION* %ou1167 to %struct.FILE_POS*
  %57 = load %union.rec*, %union.rec** %sym, align 8
  %call169 = call i8* @SymName(%union.rec* %57)
  %call170 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos168, i8* %call169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %tagerror, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.165, %if.else
  %58 = load %union.rec*, %union.rec** %cs, align 8
  %os1172 = bitcast %union.rec* %58 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 1
  %osucc175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %osucc175, align 8
  %os1176 = bitcast %union.rec* %59 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 1
  %osucc179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 1
  %60 = load %union.rec*, %union.rec** %osucc179, align 8
  store %union.rec* %60, %union.rec** %link, align 8
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.245, %if.end.171
  %61 = load %union.rec*, %union.rec** %link, align 8
  %62 = load %union.rec*, %union.rec** %cs, align 8
  %cmp181 = icmp ne %union.rec* %61, %62
  br i1 %cmp181, label %for.body.183, label %for.end.250

for.body.183:                                     ; preds = %for.cond.180
  %63 = load %union.rec*, %union.rec** %link, align 8
  %os1184 = bitcast %union.rec* %63 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 0
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred187, align 8
  store %union.rec* %64, %union.rec** %db, align 8
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.197, %for.body.183
  %65 = load %union.rec*, %union.rec** %db, align 8
  %os1189 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 1
  %os11191 = bitcast %union.FIRST_UNION* %ou1190 to %struct.anon*
  %otype192 = getelementptr inbounds %struct.anon, %struct.anon* %os11191, i32 0, i32 0
  %66 = load i8, i8* %otype192, align 1
  %conv193 = zext i8 %66 to i32
  %cmp194 = icmp eq i32 %conv193, 0
  br i1 %cmp194, label %for.body.196, label %for.end.202

for.body.196:                                     ; preds = %for.cond.188
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.body.196
  %67 = load %union.rec*, %union.rec** %db, align 8
  %os1198 = bitcast %union.rec* %67 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 0
  %opred201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %opred201, align 8
  store %union.rec* %68, %union.rec** %db, align 8
  br label %for.cond.188

for.end.202:                                      ; preds = %for.cond.188
  %69 = load %union.rec*, %union.rec** %db, align 8
  %os1203 = bitcast %union.rec* %69 to %struct.word_type*
  %ou1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 1
  %os11205 = bitcast %union.FIRST_UNION* %ou1204 to %struct.anon*
  %otype206 = getelementptr inbounds %struct.anon, %struct.anon* %os11205, i32 0, i32 0
  %70 = load i8, i8* %otype206, align 1
  %conv207 = zext i8 %70 to i32
  %cmp208 = icmp eq i32 %conv207, 11
  br i1 %cmp208, label %if.end.220, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %for.end.202
  %71 = load %union.rec*, %union.rec** %db, align 8
  %os1211 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 1
  %os11213 = bitcast %union.FIRST_UNION* %ou1212 to %struct.anon*
  %otype214 = getelementptr inbounds %struct.anon, %struct.anon* %os11213, i32 0, i32 0
  %72 = load i8, i8* %otype214, align 1
  %conv215 = zext i8 %72 to i32
  %cmp216 = icmp eq i32 %conv215, 12
  br i1 %cmp216, label %if.end.220, label %if.then.218

if.then.218:                                      ; preds = %lor.lhs.false.210
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %lor.lhs.false.210, %for.end.202
  %74 = load %union.rec*, %union.rec** %db, align 8
  %75 = load %union.rec*, %union.rec** %sym, align 8
  %76 = load %union.rec*, %union.rec** %tag, align 8
  %os1221 = bitcast %union.rec* %76 to %struct.word_type*
  %ostring222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 4
  %arraydecay223 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring222, i32 0, i32 0
  %arraydecay224 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %call225 = call i32 @DbRetrieve(%union.rec* %74, i32 0, %union.rec* %75, i8* %arraydecay223, i8* %arraydecay224, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.244

if.then.227:                                      ; preds = %if.end.220
  call void @SwitchScope(%union.rec* null)
  store i32 0, i32* %count, align 4
  %77 = load %union.rec*, %union.rec** %db, align 8
  %78 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %cmp228 = icmp ne %union.rec* %77, %78
  br i1 %cmp228, label %if.then.230, label %if.else.231

if.then.230:                                      ; preds = %if.then.227
  %79 = load %union.rec*, %union.rec** %env.addr, align 8
  call void @SetScope(%union.rec* %79, i32* %count, i32 0)
  br label %if.end.232

if.else.231:                                      ; preds = %if.then.227
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.231, %if.then.230
  %80 = load i16, i16* %dfnum, align 2
  %81 = load i64, i64* %dfpos, align 8
  %82 = load i32, i32* %dlnum, align 4
  %call233 = call %union.rec* @ReadFromFile(i16 zeroext %80, i64 %81, i32 %82)
  store %union.rec* %call233, %union.rec** %res, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.238, %if.end.232
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %count, align 4
  %cmp235 = icmp sle i32 %83, %84
  br i1 %cmp235, label %for.body.237, label %for.end.239

for.body.237:                                     ; preds = %for.cond.234
  call void @PopScope()
  br label %for.inc.238

for.inc.238:                                      ; preds = %for.body.237
  %85 = load i32, i32* %i, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.234

for.end.239:                                      ; preds = %for.cond.234
  call void @UnSwitchScope(%union.rec* null)
  %86 = load %union.rec*, %union.rec** %db, align 8
  %87 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %cmp240 = icmp ne %union.rec* %86, %87
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %for.end.239
  %88 = load %union.rec*, %union.rec** %env.addr, align 8
  %89 = load %union.rec*, %union.rec** %res, align 8
  call void @AttachEnv(%union.rec* %88, %union.rec* %89)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %for.end.239
  br label %for.end.250

if.end.244:                                       ; preds = %if.end.220
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %90 = load %union.rec*, %union.rec** %link, align 8
  %os1246 = bitcast %union.rec* %90 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 1
  %osucc249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 1
  %91 = load %union.rec*, %union.rec** %osucc249, align 8
  store %union.rec* %91, %union.rec** %link, align 8
  br label %for.cond.180

for.end.250:                                      ; preds = %if.end.243, %for.cond.180
  br label %if.end.251

if.end.251:                                       ; preds = %for.end.250, %if.then.162
  br label %sw.epilog

sw.bb.252:                                        ; preds = %cond.end.137, %cond.end.137, %cond.end.137
  %92 = load %union.rec*, %union.rec** %sym, align 8
  %os1253 = bitcast %union.rec* %92 to %struct.word_type*
  %ou2254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 2
  %os26255 = bitcast %union.SECOND_UNION* %ou2254 to %struct.anon.5*
  %ohas_tag256 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26255, i32 0, i32 1
  %93 = bitcast [3 x i8]* %ohas_tag256 to i24*
  %bf.load257 = load i24, i24* %93, align 1
  %bf.lshr258 = lshr i24 %bf.load257, 1
  %bf.clear259 = and i24 %bf.lshr258, 1
  %bf.cast260 = zext i24 %bf.clear259 to i32
  %tobool261 = icmp ne i32 %bf.cast260, 0
  br i1 %tobool261, label %if.then.262, label %if.else.667

if.then.262:                                      ; preds = %sw.bb.252
  %94 = load %union.rec*, %union.rec** %sym, align 8
  %os6264 = bitcast %union.rec* %94 to %struct.symbol_type*
  %ocross_sym265 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6264, i32 0, i32 8
  %95 = load %union.rec*, %union.rec** %ocross_sym265, align 8
  %cmp266 = icmp eq %union.rec* %95, null
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.then.262
  %96 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %96)
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %if.then.262
  %97 = load %union.rec*, %union.rec** %sym, align 8
  %os6270 = bitcast %union.rec* %97 to %struct.symbol_type*
  %ocross_sym271 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6270, i32 0, i32 8
  %98 = load %union.rec*, %union.rec** %ocross_sym271, align 8
  store %union.rec* %98, %union.rec** %cs, align 8
  %99 = load %union.rec*, %union.rec** %cs, align 8
  %cmp272 = icmp ne %union.rec* %99, null
  br i1 %cmp272, label %if.end.276, label %if.then.274

if.then.274:                                      ; preds = %if.end.269
  %100 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call275 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %if.end.269
  %101 = load %union.rec*, %union.rec** %cs, align 8
  %os1277 = bitcast %union.rec* %101 to %struct.word_type*
  %ou1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 1
  %os11279 = bitcast %union.FIRST_UNION* %ou1278 to %struct.anon*
  %otype280 = getelementptr inbounds %struct.anon, %struct.anon* %os11279, i32 0, i32 0
  %102 = load i8, i8* %otype280, align 1
  %conv281 = zext i8 %102 to i32
  %cmp282 = icmp eq i32 %conv281, 140
  br i1 %cmp282, label %if.end.286, label %if.then.284

if.then.284:                                      ; preds = %if.end.276
  %103 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call285 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %if.end.276
  %104 = load %union.rec*, %union.rec** %tag, align 8
  %os1287 = bitcast %union.rec* %104 to %struct.word_type*
  %ou1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 1
  %ofpos289 = bitcast %union.FIRST_UNION* %ou1288 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos289, i32 0, i32 2
  %105 = load i16, i16* %ofile_num, align 2
  store i16 %105, i16* %fnum, align 2
  %106 = load %union.rec*, %union.rec** %sym, align 8
  %107 = load i16, i16* %fnum, align 2
  %call290 = call i32 @crtab_getnext(%union.rec* %106, i16 zeroext %107, %struct.anon.14** @crossref_tab)
  store i32 %call290, i32* %new_seq, align 4
  %108 = load i16, i16* %fnum, align 2
  %call291 = call i8* @FileName(i16 zeroext %108)
  store i8* %call291, i8** %str, align 8
  %109 = load i8*, i8** %str, align 8
  %call292 = call i64 @strlen(i8* %109) #4
  %add = add i64 %call292, 5
  %cmp293 = icmp uge i64 %add, 512
  br i1 %cmp293, label %if.then.295, label %if.end.300

if.then.295:                                      ; preds = %if.end.286
  %110 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1296 = bitcast %union.rec* %110 to %struct.word_type*
  %ou1297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 1
  %ofpos298 = bitcast %union.FIRST_UNION* %ou1297 to %struct.FILE_POS*
  %111 = load i8*, i8** %str, align 8
  %112 = load i32, i32* %new_seq, align 4
  %call299 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos298, i8* %111, i32 %112)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.295, %if.end.286
  %arraydecay301 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %113 = load i8*, i8** %str, align 8
  %call302 = call i8* @strcpy(i8* %arraydecay301, i8* %113) #5
  %arraydecay303 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call304 = call i8* @strcat(i8* %arraydecay303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #5
  %arraydecay305 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %114 = load i32, i32* %new_seq, align 4
  %call306 = call i8* @StringInt(i32 %114)
  %call307 = call i8* @strcat(i8* %arraydecay305, i8* %call306) #5
  %115 = load %union.rec*, %union.rec** %sym, align 8
  %arraydecay308 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %tag, align 8
  %os1309 = bitcast %union.rec* %116 to %struct.word_type*
  %ou1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 1
  %ofpos311 = bitcast %union.FIRST_UNION* %ou1310 to %struct.FILE_POS*
  %call312 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay308, %struct.FILE_POS* %ofpos311)
  %117 = load i32, i32* %ctype, align 4
  %call313 = call %union.rec* @CrossMake(%union.rec* %115, %union.rec* %call312, i32 %117)
  store %union.rec* %call313, %union.rec** %tmp, align 8
  %118 = load i32, i32* %ctype, align 4
  %idxprom = sext i32 %118 to i64
  %arrayidx314 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %119 = load i8, i8* %arrayidx314, align 1
  %conv315 = zext i8 %119 to i32
  store i32 %conv315, i32* @zz_size, align 4
  %conv316 = sext i32 %conv315 to i64
  %cmp317 = icmp uge i64 %conv316, 265
  br i1 %cmp317, label %if.then.319, label %if.else.321

if.then.319:                                      ; preds = %if.end.300
  %120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call320 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %120)
  br label %if.end.338

if.else.321:                                      ; preds = %if.end.300
  %121 = load i32, i32* @zz_size, align 4
  %idxprom322 = sext i32 %121 to i64
  %arrayidx323 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom322
  %122 = load %union.rec*, %union.rec** %arrayidx323, align 8
  %cmp324 = icmp eq %union.rec* %122, null
  br i1 %cmp324, label %if.then.326, label %if.else.328

if.then.326:                                      ; preds = %if.else.321
  %123 = load i32, i32* @zz_size, align 4
  %124 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call327 = call %union.rec* @GetMemory(i32 %123, %struct.FILE_POS* %124)
  store %union.rec* %call327, %union.rec** @zz_hold, align 8
  br label %if.end.337

if.else.328:                                      ; preds = %if.else.321
  %125 = load i32, i32* @zz_size, align 4
  %idxprom329 = sext i32 %125 to i64
  %arrayidx330 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom329
  %126 = load %union.rec*, %union.rec** %arrayidx330, align 8
  store %union.rec* %126, %union.rec** @zz_hold, align 8
  store %union.rec* %126, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1331 = bitcast %union.rec* %127 to %struct.word_type*
  %olist332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist332, i32 0, i64 0
  %opred334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx333, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %opred334, align 8
  %129 = load i32, i32* @zz_size, align 4
  %idxprom335 = sext i32 %129 to i64
  %arrayidx336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom335
  store %union.rec* %128, %union.rec** %arrayidx336, align 8
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.328, %if.then.326
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.then.319
  %130 = load i32, i32* %ctype, align 4
  %conv339 = trunc i32 %130 to i8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %131 to %struct.word_type*
  %ou1341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 1
  %os11342 = bitcast %union.FIRST_UNION* %ou1341 to %struct.anon*
  %otype343 = getelementptr inbounds %struct.anon, %struct.anon* %os11342, i32 0, i32 0
  store i8 %conv339, i8* %otype343, align 1
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %133 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 1
  %osucc347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 1
  store %union.rec* %132, %union.rec** %osucc347, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1348 = bitcast %union.rec* %134 to %struct.word_type*
  %olist349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist349, i32 0, i64 1
  %opred351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx350, i32 0, i32 0
  store %union.rec* %132, %union.rec** %opred351, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1352 = bitcast %union.rec* %135 to %struct.word_type*
  %olist353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist353, i32 0, i64 0
  %osucc355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx354, i32 0, i32 1
  store %union.rec* %132, %union.rec** %osucc355, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1356 = bitcast %union.rec* %136 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 0
  %opred359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 0
  store %union.rec* %132, %union.rec** %opred359, align 8
  store %union.rec* %132, %union.rec** %index, align 8
  %137 = load %union.rec*, %union.rec** %tmp, align 8
  %138 = load %union.rec*, %union.rec** %index, align 8
  %os2360 = bitcast %union.rec* %138 to %struct.closure_type*
  %oactual361 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2360, i32 0, i32 5
  store %union.rec* %137, %union.rec** %oactual361, align 8
  %139 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv362 = zext i8 %139 to i32
  store i32 %conv362, i32* @zz_size, align 4
  %conv363 = sext i32 %conv362 to i64
  %cmp364 = icmp uge i64 %conv363, 265
  br i1 %cmp364, label %if.then.366, label %if.else.368

if.then.366:                                      ; preds = %if.end.338
  %140 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call367 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %140)
  br label %if.end.385

if.else.368:                                      ; preds = %if.end.338
  %141 = load i32, i32* @zz_size, align 4
  %idxprom369 = sext i32 %141 to i64
  %arrayidx370 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom369
  %142 = load %union.rec*, %union.rec** %arrayidx370, align 8
  %cmp371 = icmp eq %union.rec* %142, null
  br i1 %cmp371, label %if.then.373, label %if.else.375

if.then.373:                                      ; preds = %if.else.368
  %143 = load i32, i32* @zz_size, align 4
  %144 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call374 = call %union.rec* @GetMemory(i32 %143, %struct.FILE_POS* %144)
  store %union.rec* %call374, %union.rec** @zz_hold, align 8
  br label %if.end.384

if.else.375:                                      ; preds = %if.else.368
  %145 = load i32, i32* @zz_size, align 4
  %idxprom376 = sext i32 %145 to i64
  %arrayidx377 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom376
  %146 = load %union.rec*, %union.rec** %arrayidx377, align 8
  store %union.rec* %146, %union.rec** @zz_hold, align 8
  store %union.rec* %146, %union.rec** @zz_hold, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1378 = bitcast %union.rec* %147 to %struct.word_type*
  %olist379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist379, i32 0, i64 0
  %opred381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx380, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %opred381, align 8
  %149 = load i32, i32* @zz_size, align 4
  %idxprom382 = sext i32 %149 to i64
  %arrayidx383 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom382
  store %union.rec* %148, %union.rec** %arrayidx383, align 8
  br label %if.end.384

if.end.384:                                       ; preds = %if.else.375, %if.then.373
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.366
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1386 = bitcast %union.rec* %150 to %struct.word_type*
  %ou1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 1
  %os11388 = bitcast %union.FIRST_UNION* %ou1387 to %struct.anon*
  %otype389 = getelementptr inbounds %struct.anon, %struct.anon* %os11388, i32 0, i32 0
  store i8 0, i8* %otype389, align 1
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1390 = bitcast %union.rec* %152 to %struct.word_type*
  %olist391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1390, i32 0, i32 0
  %arrayidx392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist391, i32 0, i64 1
  %osucc393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx392, i32 0, i32 1
  store %union.rec* %151, %union.rec** %osucc393, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1394 = bitcast %union.rec* %153 to %struct.word_type*
  %olist395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist395, i32 0, i64 1
  %opred397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx396, i32 0, i32 0
  store %union.rec* %151, %union.rec** %opred397, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1398 = bitcast %union.rec* %154 to %struct.word_type*
  %olist399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1398, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist399, i32 0, i64 0
  %osucc401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx400, i32 0, i32 1
  store %union.rec* %151, %union.rec** %osucc401, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1402 = bitcast %union.rec* %155 to %struct.word_type*
  %olist403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist403, i32 0, i64 0
  %opred405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx404, i32 0, i32 0
  store %union.rec* %151, %union.rec** %opred405, align 8
  store %union.rec* %151, %union.rec** @xx_link, align 8
  %156 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %156, %union.rec** @zz_res, align 8
  %157 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %157, %union.rec** @zz_hold, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp406 = icmp eq %union.rec* %158, null
  br i1 %cmp406, label %cond.true.408, label %cond.false.409

cond.true.408:                                    ; preds = %if.end.385
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.444

cond.false.409:                                   ; preds = %if.end.385
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp410 = icmp eq %union.rec* %160, null
  br i1 %cmp410, label %cond.true.412, label %cond.false.413

cond.true.412:                                    ; preds = %cond.false.409
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.442

cond.false.413:                                   ; preds = %cond.false.409
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1414 = bitcast %union.rec* %162 to %struct.word_type*
  %olist415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1414, i32 0, i32 0
  %arrayidx416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist415, i32 0, i64 0
  %opred417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx416, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %opred417, align 8
  store %union.rec* %163, %union.rec** @zz_tmp, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1418 = bitcast %union.rec* %164 to %struct.word_type*
  %olist419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1418, i32 0, i32 0
  %arrayidx420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist419, i32 0, i64 0
  %opred421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx420, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %opred421, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1422 = bitcast %union.rec* %166 to %struct.word_type*
  %olist423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 0
  %arrayidx424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist423, i32 0, i64 0
  %opred425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx424, i32 0, i32 0
  store %union.rec* %165, %union.rec** %opred425, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1426 = bitcast %union.rec* %168 to %struct.word_type*
  %olist427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1426, i32 0, i32 0
  %arrayidx428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist427, i32 0, i64 0
  %opred429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx428, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred429, align 8
  %os1430 = bitcast %union.rec* %169 to %struct.word_type*
  %olist431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1430, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist431, i32 0, i64 0
  %osucc433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx432, i32 0, i32 1
  store %union.rec* %167, %union.rec** %osucc433, align 8
  %170 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1434 = bitcast %union.rec* %171 to %struct.word_type*
  %olist435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1434, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist435, i32 0, i64 0
  %opred437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx436, i32 0, i32 0
  store %union.rec* %170, %union.rec** %opred437, align 8
  %172 = load %union.rec*, %union.rec** @zz_res, align 8
  %173 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1438 = bitcast %union.rec* %173 to %struct.word_type*
  %olist439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1438, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist439, i32 0, i64 0
  %osucc441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx440, i32 0, i32 1
  store %union.rec* %172, %union.rec** %osucc441, align 8
  br label %cond.end.442

cond.end.442:                                     ; preds = %cond.false.413, %cond.true.412
  %cond443 = phi %union.rec* [ %161, %cond.true.412 ], [ %172, %cond.false.413 ]
  br label %cond.end.444

cond.end.444:                                     ; preds = %cond.end.442, %cond.true.408
  %cond445 = phi %union.rec* [ %159, %cond.true.408 ], [ %cond443, %cond.end.442 ]
  %174 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %174, %union.rec** @zz_res, align 8
  %175 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %175, %union.rec** @zz_hold, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp446 = icmp eq %union.rec* %176, null
  br i1 %cmp446, label %cond.true.448, label %cond.false.449

cond.true.448:                                    ; preds = %cond.end.444
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.484

cond.false.449:                                   ; preds = %cond.end.444
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp450 = icmp eq %union.rec* %178, null
  br i1 %cmp450, label %cond.true.452, label %cond.false.453

cond.true.452:                                    ; preds = %cond.false.449
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.482

cond.false.453:                                   ; preds = %cond.false.449
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1454 = bitcast %union.rec* %180 to %struct.word_type*
  %olist455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1454, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist455, i32 0, i64 1
  %opred457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx456, i32 0, i32 0
  %181 = load %union.rec*, %union.rec** %opred457, align 8
  store %union.rec* %181, %union.rec** @zz_tmp, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1458 = bitcast %union.rec* %182 to %struct.word_type*
  %olist459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1458, i32 0, i32 0
  %arrayidx460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist459, i32 0, i64 1
  %opred461 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx460, i32 0, i32 0
  %183 = load %union.rec*, %union.rec** %opred461, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1462 = bitcast %union.rec* %184 to %struct.word_type*
  %olist463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1462, i32 0, i32 0
  %arrayidx464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist463, i32 0, i64 1
  %opred465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx464, i32 0, i32 0
  store %union.rec* %183, %union.rec** %opred465, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1466 = bitcast %union.rec* %186 to %struct.word_type*
  %olist467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist467, i32 0, i64 1
  %opred469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx468, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %opred469, align 8
  %os1470 = bitcast %union.rec* %187 to %struct.word_type*
  %olist471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1470, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist471, i32 0, i64 1
  %osucc473 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx472, i32 0, i32 1
  store %union.rec* %185, %union.rec** %osucc473, align 8
  %188 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %189 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1474 = bitcast %union.rec* %189 to %struct.word_type*
  %olist475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1474, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist475, i32 0, i64 1
  %opred477 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx476, i32 0, i32 0
  store %union.rec* %188, %union.rec** %opred477, align 8
  %190 = load %union.rec*, %union.rec** @zz_res, align 8
  %191 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1478 = bitcast %union.rec* %191 to %struct.word_type*
  %olist479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1478, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist479, i32 0, i64 1
  %osucc481 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx480, i32 0, i32 1
  store %union.rec* %190, %union.rec** %osucc481, align 8
  br label %cond.end.482

cond.end.482:                                     ; preds = %cond.false.453, %cond.true.452
  %cond483 = phi %union.rec* [ %179, %cond.true.452 ], [ %190, %cond.false.453 ]
  br label %cond.end.484

cond.end.484:                                     ; preds = %cond.end.482, %cond.true.448
  %cond485 = phi %union.rec* [ %177, %cond.true.448 ], [ %cond483, %cond.end.482 ]
  %192 = load %union.rec**, %union.rec*** %crs.addr, align 8
  %193 = load %union.rec*, %union.rec** %192, align 8
  %cmp486 = icmp eq %union.rec* %193, null
  br i1 %cmp486, label %if.then.488, label %if.end.533

if.then.488:                                      ; preds = %cond.end.484
  %194 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 148), align 1
  %conv489 = zext i8 %194 to i32
  store i32 %conv489, i32* @zz_size, align 4
  %conv490 = sext i32 %conv489 to i64
  %cmp491 = icmp uge i64 %conv490, 265
  br i1 %cmp491, label %if.then.493, label %if.else.495

if.then.493:                                      ; preds = %if.then.488
  %195 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call494 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %195)
  br label %if.end.512

if.else.495:                                      ; preds = %if.then.488
  %196 = load i32, i32* @zz_size, align 4
  %idxprom496 = sext i32 %196 to i64
  %arrayidx497 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom496
  %197 = load %union.rec*, %union.rec** %arrayidx497, align 8
  %cmp498 = icmp eq %union.rec* %197, null
  br i1 %cmp498, label %if.then.500, label %if.else.502

if.then.500:                                      ; preds = %if.else.495
  %198 = load i32, i32* @zz_size, align 4
  %199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call501 = call %union.rec* @GetMemory(i32 %198, %struct.FILE_POS* %199)
  store %union.rec* %call501, %union.rec** @zz_hold, align 8
  br label %if.end.511

if.else.502:                                      ; preds = %if.else.495
  %200 = load i32, i32* @zz_size, align 4
  %idxprom503 = sext i32 %200 to i64
  %arrayidx504 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom503
  %201 = load %union.rec*, %union.rec** %arrayidx504, align 8
  store %union.rec* %201, %union.rec** @zz_hold, align 8
  store %union.rec* %201, %union.rec** @zz_hold, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1505 = bitcast %union.rec* %202 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 0
  %opred508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %opred508, align 8
  %204 = load i32, i32* @zz_size, align 4
  %idxprom509 = sext i32 %204 to i64
  %arrayidx510 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom509
  store %union.rec* %203, %union.rec** %arrayidx510, align 8
  br label %if.end.511

if.end.511:                                       ; preds = %if.else.502, %if.then.500
  br label %if.end.512

if.end.512:                                       ; preds = %if.end.511, %if.then.493
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1513 = bitcast %union.rec* %205 to %struct.word_type*
  %ou1514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 1
  %os11515 = bitcast %union.FIRST_UNION* %ou1514 to %struct.anon*
  %otype516 = getelementptr inbounds %struct.anon, %struct.anon* %os11515, i32 0, i32 0
  store i8 -108, i8* %otype516, align 1
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1517 = bitcast %union.rec* %207 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 1
  %osucc520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 1
  store %union.rec* %206, %union.rec** %osucc520, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1521 = bitcast %union.rec* %208 to %struct.word_type*
  %olist522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1521, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist522, i32 0, i64 1
  %opred524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx523, i32 0, i32 0
  store %union.rec* %206, %union.rec** %opred524, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1525 = bitcast %union.rec* %209 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 0
  %osucc528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 1
  store %union.rec* %206, %union.rec** %osucc528, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1529 = bitcast %union.rec* %210 to %struct.word_type*
  %olist530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1529, i32 0, i32 0
  %arrayidx531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist530, i32 0, i64 0
  %opred532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx531, i32 0, i32 0
  store %union.rec* %206, %union.rec** %opred532, align 8
  %211 = load %union.rec**, %union.rec*** %crs.addr, align 8
  store %union.rec* %206, %union.rec** %211, align 8
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.512, %cond.end.484
  %212 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv534 = zext i8 %212 to i32
  store i32 %conv534, i32* @zz_size, align 4
  %conv535 = sext i32 %conv534 to i64
  %cmp536 = icmp uge i64 %conv535, 265
  br i1 %cmp536, label %if.then.538, label %if.else.540

if.then.538:                                      ; preds = %if.end.533
  %213 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call539 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %213)
  br label %if.end.557

if.else.540:                                      ; preds = %if.end.533
  %214 = load i32, i32* @zz_size, align 4
  %idxprom541 = sext i32 %214 to i64
  %arrayidx542 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom541
  %215 = load %union.rec*, %union.rec** %arrayidx542, align 8
  %cmp543 = icmp eq %union.rec* %215, null
  br i1 %cmp543, label %if.then.545, label %if.else.547

if.then.545:                                      ; preds = %if.else.540
  %216 = load i32, i32* @zz_size, align 4
  %217 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call546 = call %union.rec* @GetMemory(i32 %216, %struct.FILE_POS* %217)
  store %union.rec* %call546, %union.rec** @zz_hold, align 8
  br label %if.end.556

if.else.547:                                      ; preds = %if.else.540
  %218 = load i32, i32* @zz_size, align 4
  %idxprom548 = sext i32 %218 to i64
  %arrayidx549 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom548
  %219 = load %union.rec*, %union.rec** %arrayidx549, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1550 = bitcast %union.rec* %220 to %struct.word_type*
  %olist551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1550, i32 0, i32 0
  %arrayidx552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist551, i32 0, i64 0
  %opred553 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx552, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %opred553, align 8
  %222 = load i32, i32* @zz_size, align 4
  %idxprom554 = sext i32 %222 to i64
  %arrayidx555 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom554
  store %union.rec* %221, %union.rec** %arrayidx555, align 8
  br label %if.end.556

if.end.556:                                       ; preds = %if.else.547, %if.then.545
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %if.then.538
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1558 = bitcast %union.rec* %223 to %struct.word_type*
  %ou1559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1558, i32 0, i32 1
  %os11560 = bitcast %union.FIRST_UNION* %ou1559 to %struct.anon*
  %otype561 = getelementptr inbounds %struct.anon, %struct.anon* %os11560, i32 0, i32 0
  store i8 0, i8* %otype561, align 1
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1562 = bitcast %union.rec* %225 to %struct.word_type*
  %olist563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1562, i32 0, i32 0
  %arrayidx564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist563, i32 0, i64 1
  %osucc565 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx564, i32 0, i32 1
  store %union.rec* %224, %union.rec** %osucc565, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1566 = bitcast %union.rec* %226 to %struct.word_type*
  %olist567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1566, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist567, i32 0, i64 1
  %opred569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx568, i32 0, i32 0
  store %union.rec* %224, %union.rec** %opred569, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1570 = bitcast %union.rec* %227 to %struct.word_type*
  %olist571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1570, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist571, i32 0, i64 0
  %osucc573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx572, i32 0, i32 1
  store %union.rec* %224, %union.rec** %osucc573, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1574 = bitcast %union.rec* %228 to %struct.word_type*
  %olist575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1574, i32 0, i32 0
  %arrayidx576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist575, i32 0, i64 0
  %opred577 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx576, i32 0, i32 0
  store %union.rec* %224, %union.rec** %opred577, align 8
  store %union.rec* %224, %union.rec** @xx_link, align 8
  %229 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %229, %union.rec** @zz_res, align 8
  %230 = load %union.rec**, %union.rec*** %crs.addr, align 8
  %231 = load %union.rec*, %union.rec** %230, align 8
  store %union.rec* %231, %union.rec** @zz_hold, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp578 = icmp eq %union.rec* %232, null
  br i1 %cmp578, label %cond.true.580, label %cond.false.581

cond.true.580:                                    ; preds = %if.end.557
  %233 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.616

cond.false.581:                                   ; preds = %if.end.557
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp582 = icmp eq %union.rec* %234, null
  br i1 %cmp582, label %cond.true.584, label %cond.false.585

cond.true.584:                                    ; preds = %cond.false.581
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.614

cond.false.585:                                   ; preds = %cond.false.581
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1586 = bitcast %union.rec* %236 to %struct.word_type*
  %olist587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1586, i32 0, i32 0
  %arrayidx588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist587, i32 0, i64 0
  %opred589 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx588, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %opred589, align 8
  store %union.rec* %237, %union.rec** @zz_tmp, align 8
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1590 = bitcast %union.rec* %238 to %struct.word_type*
  %olist591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1590, i32 0, i32 0
  %arrayidx592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist591, i32 0, i64 0
  %opred593 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx592, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %opred593, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1594 = bitcast %union.rec* %240 to %struct.word_type*
  %olist595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1594, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist595, i32 0, i64 0
  %opred597 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx596, i32 0, i32 0
  store %union.rec* %239, %union.rec** %opred597, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1598 = bitcast %union.rec* %242 to %struct.word_type*
  %olist599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 0
  %arrayidx600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist599, i32 0, i64 0
  %opred601 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx600, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %opred601, align 8
  %os1602 = bitcast %union.rec* %243 to %struct.word_type*
  %olist603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 0
  %arrayidx604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist603, i32 0, i64 0
  %osucc605 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx604, i32 0, i32 1
  store %union.rec* %241, %union.rec** %osucc605, align 8
  %244 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %245 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1606 = bitcast %union.rec* %245 to %struct.word_type*
  %olist607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist607, i32 0, i64 0
  %opred609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx608, i32 0, i32 0
  store %union.rec* %244, %union.rec** %opred609, align 8
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  %247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1610 = bitcast %union.rec* %247 to %struct.word_type*
  %olist611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1610, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist611, i32 0, i64 0
  %osucc613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx612, i32 0, i32 1
  store %union.rec* %246, %union.rec** %osucc613, align 8
  br label %cond.end.614

cond.end.614:                                     ; preds = %cond.false.585, %cond.true.584
  %cond615 = phi %union.rec* [ %235, %cond.true.584 ], [ %246, %cond.false.585 ]
  br label %cond.end.616

cond.end.616:                                     ; preds = %cond.end.614, %cond.true.580
  %cond617 = phi %union.rec* [ %233, %cond.true.580 ], [ %cond615, %cond.end.614 ]
  %248 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %248, %union.rec** @zz_res, align 8
  %249 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %249, %union.rec** @zz_hold, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp618 = icmp eq %union.rec* %250, null
  br i1 %cmp618, label %cond.true.620, label %cond.false.621

cond.true.620:                                    ; preds = %cond.end.616
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.656

cond.false.621:                                   ; preds = %cond.end.616
  %252 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp622 = icmp eq %union.rec* %252, null
  br i1 %cmp622, label %cond.true.624, label %cond.false.625

cond.true.624:                                    ; preds = %cond.false.621
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.654

cond.false.625:                                   ; preds = %cond.false.621
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1626 = bitcast %union.rec* %254 to %struct.word_type*
  %olist627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1626, i32 0, i32 0
  %arrayidx628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist627, i32 0, i64 1
  %opred629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx628, i32 0, i32 0
  %255 = load %union.rec*, %union.rec** %opred629, align 8
  store %union.rec* %255, %union.rec** @zz_tmp, align 8
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1630 = bitcast %union.rec* %256 to %struct.word_type*
  %olist631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1630, i32 0, i32 0
  %arrayidx632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist631, i32 0, i64 1
  %opred633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx632, i32 0, i32 0
  %257 = load %union.rec*, %union.rec** %opred633, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1634 = bitcast %union.rec* %258 to %struct.word_type*
  %olist635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1634, i32 0, i32 0
  %arrayidx636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist635, i32 0, i64 1
  %opred637 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx636, i32 0, i32 0
  store %union.rec* %257, %union.rec** %opred637, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1638 = bitcast %union.rec* %260 to %struct.word_type*
  %olist639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1638, i32 0, i32 0
  %arrayidx640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist639, i32 0, i64 1
  %opred641 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx640, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %opred641, align 8
  %os1642 = bitcast %union.rec* %261 to %struct.word_type*
  %olist643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1642, i32 0, i32 0
  %arrayidx644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist643, i32 0, i64 1
  %osucc645 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx644, i32 0, i32 1
  store %union.rec* %259, %union.rec** %osucc645, align 8
  %262 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1646 = bitcast %union.rec* %263 to %struct.word_type*
  %olist647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 0
  %arrayidx648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist647, i32 0, i64 1
  %opred649 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx648, i32 0, i32 0
  store %union.rec* %262, %union.rec** %opred649, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %265 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1650 = bitcast %union.rec* %265 to %struct.word_type*
  %olist651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist651, i32 0, i64 1
  %osucc653 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx652, i32 0, i32 1
  store %union.rec* %264, %union.rec** %osucc653, align 8
  br label %cond.end.654

cond.end.654:                                     ; preds = %cond.false.625, %cond.true.624
  %cond655 = phi %union.rec* [ %253, %cond.true.624 ], [ %264, %cond.false.625 ]
  br label %cond.end.656

cond.end.656:                                     ; preds = %cond.end.654, %cond.true.620
  %cond657 = phi %union.rec* [ %251, %cond.true.620 ], [ %cond655, %cond.end.654 ]
  %266 = load i32, i32* @AllowCrossDb, align 4
  %tobool658 = icmp ne i32 %266, 0
  br i1 %tobool658, label %land.lhs.true.659, label %if.end.666

land.lhs.true.659:                                ; preds = %cond.end.656
  %267 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %268 = load %union.rec*, %union.rec** %sym, align 8
  %arraydecay660 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay661 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %call662 = call i32 @DbRetrieve(%union.rec* %267, i32 0, %union.rec* %268, i8* %arraydecay660, i8* %arraydecay661, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %tobool663 = icmp ne i32 %call662, 0
  br i1 %tobool663, label %if.then.664, label %if.end.666

if.then.664:                                      ; preds = %land.lhs.true.659
  call void @SwitchScope(%union.rec* null)
  %269 = load i16, i16* %dfnum, align 2
  %270 = load i64, i64* %dfpos, align 8
  %271 = load i32, i32* %dlnum, align 4
  %call665 = call %union.rec* @ReadFromFile(i16 zeroext %269, i64 %270, i32 %271)
  store %union.rec* %call665, %union.rec** %res, align 8
  call void @UnSwitchScope(%union.rec* null)
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.664, %land.lhs.true.659, %cond.end.656
  br label %if.end.673

if.else.667:                                      ; preds = %sw.bb.252
  %272 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1668 = bitcast %union.rec* %272 to %struct.word_type*
  %ou1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 1
  %ofpos670 = bitcast %union.FIRST_UNION* %ou1669 to %struct.FILE_POS*
  %273 = load %union.rec*, %union.rec** %sym, align 8
  %call671 = call i8* @SymName(%union.rec* %273)
  %call672 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos670, i8* %call671, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %tagerror, align 4
  br label %if.end.673

if.end.673:                                       ; preds = %if.else.667, %if.end.666
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.137
  %274 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call674 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %274, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.673, %if.end.251, %sw.bb.142, %sw.bb
  %275 = load %union.rec*, %union.rec** %res, align 8
  %cmp675 = icmp eq %union.rec* %275, null
  br i1 %cmp675, label %if.then.677, label %if.end.963

if.then.677:                                      ; preds = %sw.epilog
  %276 = load i32, i32* %ctype, align 4
  %cmp679 = icmp sgt i32 %276, 1
  br i1 %cmp679, label %land.lhs.true.681, label %if.end.692

land.lhs.true.681:                                ; preds = %if.then.677
  %277 = load i32, i32* %tagerror, align 4
  %tobool682 = icmp ne i32 %277, 0
  br i1 %tobool682, label %if.end.692, label %if.then.683

if.then.683:                                      ; preds = %land.lhs.true.681
  %278 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1684 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 1
  %ofpos686 = bitcast %union.FIRST_UNION* %ou1685 to %struct.FILE_POS*
  %279 = load %union.rec*, %union.rec** %sym, align 8
  %call687 = call i8* @SymName(%union.rec* %279)
  %280 = load %union.rec*, %union.rec** %tag, align 8
  %os1688 = bitcast %union.rec* %280 to %struct.word_type*
  %ostring689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1688, i32 0, i32 4
  %arraydecay690 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring689, i32 0, i32 0
  %call691 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos686, i8* %call687, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay690)
  br label %if.end.692

if.end.692:                                       ; preds = %if.then.683, %land.lhs.true.681, %if.then.677
  %281 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv693 = zext i8 %281 to i32
  store i32 %conv693, i32* @zz_size, align 4
  %conv694 = sext i32 %conv693 to i64
  %cmp695 = icmp uge i64 %conv694, 265
  br i1 %cmp695, label %if.then.697, label %if.else.699

if.then.697:                                      ; preds = %if.end.692
  %282 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call698 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %282)
  br label %if.end.716

if.else.699:                                      ; preds = %if.end.692
  %283 = load i32, i32* @zz_size, align 4
  %idxprom700 = sext i32 %283 to i64
  %arrayidx701 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom700
  %284 = load %union.rec*, %union.rec** %arrayidx701, align 8
  %cmp702 = icmp eq %union.rec* %284, null
  br i1 %cmp702, label %if.then.704, label %if.else.706

if.then.704:                                      ; preds = %if.else.699
  %285 = load i32, i32* @zz_size, align 4
  %286 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call705 = call %union.rec* @GetMemory(i32 %285, %struct.FILE_POS* %286)
  store %union.rec* %call705, %union.rec** @zz_hold, align 8
  br label %if.end.715

if.else.706:                                      ; preds = %if.else.699
  %287 = load i32, i32* @zz_size, align 4
  %idxprom707 = sext i32 %287 to i64
  %arrayidx708 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom707
  %288 = load %union.rec*, %union.rec** %arrayidx708, align 8
  store %union.rec* %288, %union.rec** @zz_hold, align 8
  store %union.rec* %288, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1709 = bitcast %union.rec* %289 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 0
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred712, align 8
  %291 = load i32, i32* @zz_size, align 4
  %idxprom713 = sext i32 %291 to i64
  %arrayidx714 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom713
  store %union.rec* %290, %union.rec** %arrayidx714, align 8
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.706, %if.then.704
  br label %if.end.716

if.end.716:                                       ; preds = %if.end.715, %if.then.697
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1717 = bitcast %union.rec* %292 to %struct.word_type*
  %ou1718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 1
  %os11719 = bitcast %union.FIRST_UNION* %ou1718 to %struct.anon*
  %otype720 = getelementptr inbounds %struct.anon, %struct.anon* %os11719, i32 0, i32 0
  store i8 2, i8* %otype720, align 1
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1721 = bitcast %union.rec* %294 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 1
  %osucc724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 1
  store %union.rec* %293, %union.rec** %osucc724, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1725 = bitcast %union.rec* %295 to %struct.word_type*
  %olist726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 0
  %arrayidx727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist726, i32 0, i64 1
  %opred728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx727, i32 0, i32 0
  store %union.rec* %293, %union.rec** %opred728, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1729 = bitcast %union.rec* %296 to %struct.word_type*
  %olist730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist730, i32 0, i64 0
  %osucc732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx731, i32 0, i32 1
  store %union.rec* %293, %union.rec** %osucc732, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %297 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 0
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  store %union.rec* %293, %union.rec** %opred736, align 8
  store %union.rec* %293, %union.rec** %res, align 8
  %298 = load %union.rec*, %union.rec** %sym, align 8
  %299 = load %union.rec*, %union.rec** %res, align 8
  %os2737 = bitcast %union.rec* %299 to %struct.closure_type*
  %oactual738 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2737, i32 0, i32 5
  store %union.rec* %298, %union.rec** %oactual738, align 8
  %300 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %300, %union.rec** %y, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.767, %if.end.716
  %301 = load %union.rec*, %union.rec** %y, align 8
  %os2739 = bitcast %union.rec* %301 to %struct.closure_type*
  %oactual740 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2739, i32 0, i32 5
  %302 = load %union.rec*, %union.rec** %oactual740, align 8
  %os6741 = bitcast %union.rec* %302 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6741, i32 0, i32 3
  %303 = load %union.rec*, %union.rec** %oenclosing, align 8
  %304 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp742 = icmp ne %union.rec* %303, %304
  br i1 %cmp742, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %305 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv744 = zext i8 %305 to i32
  store i32 %conv744, i32* @zz_size, align 4
  %conv745 = sext i32 %conv744 to i64
  %cmp746 = icmp uge i64 %conv745, 265
  br i1 %cmp746, label %if.then.748, label %if.else.750

if.then.748:                                      ; preds = %while.body
  %306 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call749 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %306)
  br label %if.end.767

if.else.750:                                      ; preds = %while.body
  %307 = load i32, i32* @zz_size, align 4
  %idxprom751 = sext i32 %307 to i64
  %arrayidx752 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom751
  %308 = load %union.rec*, %union.rec** %arrayidx752, align 8
  %cmp753 = icmp eq %union.rec* %308, null
  br i1 %cmp753, label %if.then.755, label %if.else.757

if.then.755:                                      ; preds = %if.else.750
  %309 = load i32, i32* @zz_size, align 4
  %310 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call756 = call %union.rec* @GetMemory(i32 %309, %struct.FILE_POS* %310)
  store %union.rec* %call756, %union.rec** @zz_hold, align 8
  br label %if.end.766

if.else.757:                                      ; preds = %if.else.750
  %311 = load i32, i32* @zz_size, align 4
  %idxprom758 = sext i32 %311 to i64
  %arrayidx759 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom758
  %312 = load %union.rec*, %union.rec** %arrayidx759, align 8
  store %union.rec* %312, %union.rec** @zz_hold, align 8
  store %union.rec* %312, %union.rec** @zz_hold, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1760 = bitcast %union.rec* %313 to %struct.word_type*
  %olist761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1760, i32 0, i32 0
  %arrayidx762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist761, i32 0, i64 0
  %opred763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx762, i32 0, i32 0
  %314 = load %union.rec*, %union.rec** %opred763, align 8
  %315 = load i32, i32* @zz_size, align 4
  %idxprom764 = sext i32 %315 to i64
  %arrayidx765 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom764
  store %union.rec* %314, %union.rec** %arrayidx765, align 8
  br label %if.end.766

if.end.766:                                       ; preds = %if.else.757, %if.then.755
  br label %if.end.767

if.end.767:                                       ; preds = %if.end.766, %if.then.748
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1768 = bitcast %union.rec* %316 to %struct.word_type*
  %ou1769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1768, i32 0, i32 1
  %os11770 = bitcast %union.FIRST_UNION* %ou1769 to %struct.anon*
  %otype771 = getelementptr inbounds %struct.anon, %struct.anon* %os11770, i32 0, i32 0
  store i8 2, i8* %otype771, align 1
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1772 = bitcast %union.rec* %318 to %struct.word_type*
  %olist773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1772, i32 0, i32 0
  %arrayidx774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist773, i32 0, i64 1
  %osucc775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx774, i32 0, i32 1
  store %union.rec* %317, %union.rec** %osucc775, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1776 = bitcast %union.rec* %319 to %struct.word_type*
  %olist777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 0
  %arrayidx778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist777, i32 0, i64 1
  %opred779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx778, i32 0, i32 0
  store %union.rec* %317, %union.rec** %opred779, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1780 = bitcast %union.rec* %320 to %struct.word_type*
  %olist781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1780, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist781, i32 0, i64 0
  %osucc783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx782, i32 0, i32 1
  store %union.rec* %317, %union.rec** %osucc783, align 8
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1784 = bitcast %union.rec* %321 to %struct.word_type*
  %olist785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 0
  %arrayidx786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist785, i32 0, i64 0
  %opred787 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx786, i32 0, i32 0
  store %union.rec* %317, %union.rec** %opred787, align 8
  store %union.rec* %317, %union.rec** %tmp, align 8
  %322 = load %union.rec*, %union.rec** %y, align 8
  %os2788 = bitcast %union.rec* %322 to %struct.closure_type*
  %oactual789 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2788, i32 0, i32 5
  %323 = load %union.rec*, %union.rec** %oactual789, align 8
  %os6790 = bitcast %union.rec* %323 to %struct.symbol_type*
  %oenclosing791 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6790, i32 0, i32 3
  %324 = load %union.rec*, %union.rec** %oenclosing791, align 8
  %325 = load %union.rec*, %union.rec** %tmp, align 8
  %os2792 = bitcast %union.rec* %325 to %struct.closure_type*
  %oactual793 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2792, i32 0, i32 5
  store %union.rec* %324, %union.rec** %oactual793, align 8
  %326 = load %union.rec*, %union.rec** %tmp, align 8
  %call794 = call %union.rec* @SetEnv(%union.rec* %326, %union.rec* null)
  store %union.rec* %call794, %union.rec** %envt, align 8
  %327 = load %union.rec*, %union.rec** %envt, align 8
  %328 = load %union.rec*, %union.rec** %y, align 8
  call void @AttachEnv(%union.rec* %327, %union.rec* %328)
  %329 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %329, %union.rec** %y, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %330 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %conv795 = zext i8 %330 to i32
  store i32 %conv795, i32* @zz_size, align 4
  %conv796 = sext i32 %conv795 to i64
  %cmp797 = icmp uge i64 %conv796, 265
  br i1 %cmp797, label %if.then.799, label %if.else.801

if.then.799:                                      ; preds = %while.end
  %331 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call800 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %331)
  br label %if.end.818

if.else.801:                                      ; preds = %while.end
  %332 = load i32, i32* @zz_size, align 4
  %idxprom802 = sext i32 %332 to i64
  %arrayidx803 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom802
  %333 = load %union.rec*, %union.rec** %arrayidx803, align 8
  %cmp804 = icmp eq %union.rec* %333, null
  br i1 %cmp804, label %if.then.806, label %if.else.808

if.then.806:                                      ; preds = %if.else.801
  %334 = load i32, i32* @zz_size, align 4
  %335 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call807 = call %union.rec* @GetMemory(i32 %334, %struct.FILE_POS* %335)
  store %union.rec* %call807, %union.rec** @zz_hold, align 8
  br label %if.end.817

if.else.808:                                      ; preds = %if.else.801
  %336 = load i32, i32* @zz_size, align 4
  %idxprom809 = sext i32 %336 to i64
  %arrayidx810 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom809
  %337 = load %union.rec*, %union.rec** %arrayidx810, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1811 = bitcast %union.rec* %338 to %struct.word_type*
  %olist812 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1811, i32 0, i32 0
  %arrayidx813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist812, i32 0, i64 0
  %opred814 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx813, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %opred814, align 8
  %340 = load i32, i32* @zz_size, align 4
  %idxprom815 = sext i32 %340 to i64
  %arrayidx816 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom815
  store %union.rec* %339, %union.rec** %arrayidx816, align 8
  br label %if.end.817

if.end.817:                                       ; preds = %if.else.808, %if.then.806
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.then.799
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1819 = bitcast %union.rec* %341 to %struct.word_type*
  %ou1820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1819, i32 0, i32 1
  %os11821 = bitcast %union.FIRST_UNION* %ou1820 to %struct.anon*
  %otype822 = getelementptr inbounds %struct.anon, %struct.anon* %os11821, i32 0, i32 0
  store i8 82, i8* %otype822, align 1
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1823 = bitcast %union.rec* %343 to %struct.word_type*
  %olist824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 0
  %arrayidx825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist824, i32 0, i64 1
  %osucc826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx825, i32 0, i32 1
  store %union.rec* %342, %union.rec** %osucc826, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1827 = bitcast %union.rec* %344 to %struct.word_type*
  %olist828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1827, i32 0, i32 0
  %arrayidx829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist828, i32 0, i64 1
  %opred830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx829, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred830, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1831 = bitcast %union.rec* %345 to %struct.word_type*
  %olist832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1831, i32 0, i32 0
  %arrayidx833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist832, i32 0, i64 0
  %osucc834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx833, i32 0, i32 1
  store %union.rec* %342, %union.rec** %osucc834, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1835 = bitcast %union.rec* %346 to %struct.word_type*
  %olist836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 0
  %arrayidx837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist836, i32 0, i64 0
  %opred838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx837, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred838, align 8
  store %union.rec* %342, %union.rec** %envt, align 8
  %347 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv839 = zext i8 %347 to i32
  store i32 %conv839, i32* @zz_size, align 4
  %conv840 = sext i32 %conv839 to i64
  %cmp841 = icmp uge i64 %conv840, 265
  br i1 %cmp841, label %if.then.843, label %if.else.845

if.then.843:                                      ; preds = %if.end.818
  %348 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call844 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %348)
  br label %if.end.862

if.else.845:                                      ; preds = %if.end.818
  %349 = load i32, i32* @zz_size, align 4
  %idxprom846 = sext i32 %349 to i64
  %arrayidx847 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom846
  %350 = load %union.rec*, %union.rec** %arrayidx847, align 8
  %cmp848 = icmp eq %union.rec* %350, null
  br i1 %cmp848, label %if.then.850, label %if.else.852

if.then.850:                                      ; preds = %if.else.845
  %351 = load i32, i32* @zz_size, align 4
  %352 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call851 = call %union.rec* @GetMemory(i32 %351, %struct.FILE_POS* %352)
  store %union.rec* %call851, %union.rec** @zz_hold, align 8
  br label %if.end.861

if.else.852:                                      ; preds = %if.else.845
  %353 = load i32, i32* @zz_size, align 4
  %idxprom853 = sext i32 %353 to i64
  %arrayidx854 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom853
  %354 = load %union.rec*, %union.rec** %arrayidx854, align 8
  store %union.rec* %354, %union.rec** @zz_hold, align 8
  store %union.rec* %354, %union.rec** @zz_hold, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1855 = bitcast %union.rec* %355 to %struct.word_type*
  %olist856 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1855, i32 0, i32 0
  %arrayidx857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist856, i32 0, i64 0
  %opred858 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx857, i32 0, i32 0
  %356 = load %union.rec*, %union.rec** %opred858, align 8
  %357 = load i32, i32* @zz_size, align 4
  %idxprom859 = sext i32 %357 to i64
  %arrayidx860 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom859
  store %union.rec* %356, %union.rec** %arrayidx860, align 8
  br label %if.end.861

if.end.861:                                       ; preds = %if.else.852, %if.then.850
  br label %if.end.862

if.end.862:                                       ; preds = %if.end.861, %if.then.843
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1863 = bitcast %union.rec* %358 to %struct.word_type*
  %ou1864 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1863, i32 0, i32 1
  %os11865 = bitcast %union.FIRST_UNION* %ou1864 to %struct.anon*
  %otype866 = getelementptr inbounds %struct.anon, %struct.anon* %os11865, i32 0, i32 0
  store i8 0, i8* %otype866, align 1
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1867 = bitcast %union.rec* %360 to %struct.word_type*
  %olist868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1867, i32 0, i32 0
  %arrayidx869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist868, i32 0, i64 1
  %osucc870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx869, i32 0, i32 1
  store %union.rec* %359, %union.rec** %osucc870, align 8
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1871 = bitcast %union.rec* %361 to %struct.word_type*
  %olist872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1871, i32 0, i32 0
  %arrayidx873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist872, i32 0, i64 1
  %opred874 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx873, i32 0, i32 0
  store %union.rec* %359, %union.rec** %opred874, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1875 = bitcast %union.rec* %362 to %struct.word_type*
  %olist876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1875, i32 0, i32 0
  %arrayidx877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist876, i32 0, i64 0
  %osucc878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx877, i32 0, i32 1
  store %union.rec* %359, %union.rec** %osucc878, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1879 = bitcast %union.rec* %363 to %struct.word_type*
  %olist880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1879, i32 0, i32 0
  %arrayidx881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist880, i32 0, i64 0
  %opred882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx881, i32 0, i32 0
  store %union.rec* %359, %union.rec** %opred882, align 8
  store %union.rec* %359, %union.rec** @xx_link, align 8
  %364 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %364, %union.rec** @zz_res, align 8
  %365 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %365, %union.rec** @zz_hold, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp883 = icmp eq %union.rec* %366, null
  br i1 %cmp883, label %cond.true.885, label %cond.false.886

cond.true.885:                                    ; preds = %if.end.862
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.921

cond.false.886:                                   ; preds = %if.end.862
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp887 = icmp eq %union.rec* %368, null
  br i1 %cmp887, label %cond.true.889, label %cond.false.890

cond.true.889:                                    ; preds = %cond.false.886
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.919

cond.false.890:                                   ; preds = %cond.false.886
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1891 = bitcast %union.rec* %370 to %struct.word_type*
  %olist892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1891, i32 0, i32 0
  %arrayidx893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist892, i32 0, i64 0
  %opred894 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx893, i32 0, i32 0
  %371 = load %union.rec*, %union.rec** %opred894, align 8
  store %union.rec* %371, %union.rec** @zz_tmp, align 8
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1895 = bitcast %union.rec* %372 to %struct.word_type*
  %olist896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1895, i32 0, i32 0
  %arrayidx897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist896, i32 0, i64 0
  %opred898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx897, i32 0, i32 0
  %373 = load %union.rec*, %union.rec** %opred898, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1899 = bitcast %union.rec* %374 to %struct.word_type*
  %olist900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1899, i32 0, i32 0
  %arrayidx901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist900, i32 0, i64 0
  %opred902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx901, i32 0, i32 0
  store %union.rec* %373, %union.rec** %opred902, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %376 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1903 = bitcast %union.rec* %376 to %struct.word_type*
  %olist904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1903, i32 0, i32 0
  %arrayidx905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist904, i32 0, i64 0
  %opred906 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx905, i32 0, i32 0
  %377 = load %union.rec*, %union.rec** %opred906, align 8
  %os1907 = bitcast %union.rec* %377 to %struct.word_type*
  %olist908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1907, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist908, i32 0, i64 0
  %osucc910 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx909, i32 0, i32 1
  store %union.rec* %375, %union.rec** %osucc910, align 8
  %378 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1911 = bitcast %union.rec* %379 to %struct.word_type*
  %olist912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1911, i32 0, i32 0
  %arrayidx913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist912, i32 0, i64 0
  %opred914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx913, i32 0, i32 0
  store %union.rec* %378, %union.rec** %opred914, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %381 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1915 = bitcast %union.rec* %381 to %struct.word_type*
  %olist916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1915, i32 0, i32 0
  %arrayidx917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist916, i32 0, i64 0
  %osucc918 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx917, i32 0, i32 1
  store %union.rec* %380, %union.rec** %osucc918, align 8
  br label %cond.end.919

cond.end.919:                                     ; preds = %cond.false.890, %cond.true.889
  %cond920 = phi %union.rec* [ %369, %cond.true.889 ], [ %380, %cond.false.890 ]
  br label %cond.end.921

cond.end.921:                                     ; preds = %cond.end.919, %cond.true.885
  %cond922 = phi %union.rec* [ %367, %cond.true.885 ], [ %cond920, %cond.end.919 ]
  %382 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %382, %union.rec** @zz_res, align 8
  %383 = load %union.rec*, %union.rec** %envt, align 8
  store %union.rec* %383, %union.rec** @zz_hold, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp923 = icmp eq %union.rec* %384, null
  br i1 %cmp923, label %cond.true.925, label %cond.false.926

cond.true.925:                                    ; preds = %cond.end.921
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.961

cond.false.926:                                   ; preds = %cond.end.921
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp927 = icmp eq %union.rec* %386, null
  br i1 %cmp927, label %cond.true.929, label %cond.false.930

cond.true.929:                                    ; preds = %cond.false.926
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.959

cond.false.930:                                   ; preds = %cond.false.926
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1931 = bitcast %union.rec* %388 to %struct.word_type*
  %olist932 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1931, i32 0, i32 0
  %arrayidx933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist932, i32 0, i64 1
  %opred934 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx933, i32 0, i32 0
  %389 = load %union.rec*, %union.rec** %opred934, align 8
  store %union.rec* %389, %union.rec** @zz_tmp, align 8
  %390 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1935 = bitcast %union.rec* %390 to %struct.word_type*
  %olist936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1935, i32 0, i32 0
  %arrayidx937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist936, i32 0, i64 1
  %opred938 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx937, i32 0, i32 0
  %391 = load %union.rec*, %union.rec** %opred938, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1939 = bitcast %union.rec* %392 to %struct.word_type*
  %olist940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 0
  %arrayidx941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist940, i32 0, i64 1
  %opred942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx941, i32 0, i32 0
  store %union.rec* %391, %union.rec** %opred942, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %394 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1943 = bitcast %union.rec* %394 to %struct.word_type*
  %olist944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1943, i32 0, i32 0
  %arrayidx945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist944, i32 0, i64 1
  %opred946 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx945, i32 0, i32 0
  %395 = load %union.rec*, %union.rec** %opred946, align 8
  %os1947 = bitcast %union.rec* %395 to %struct.word_type*
  %olist948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1947, i32 0, i32 0
  %arrayidx949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist948, i32 0, i64 1
  %osucc950 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx949, i32 0, i32 1
  store %union.rec* %393, %union.rec** %osucc950, align 8
  %396 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %397 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1951 = bitcast %union.rec* %397 to %struct.word_type*
  %olist952 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1951, i32 0, i32 0
  %arrayidx953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist952, i32 0, i64 1
  %opred954 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx953, i32 0, i32 0
  store %union.rec* %396, %union.rec** %opred954, align 8
  %398 = load %union.rec*, %union.rec** @zz_res, align 8
  %399 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1955 = bitcast %union.rec* %399 to %struct.word_type*
  %olist956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1955, i32 0, i32 0
  %arrayidx957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist956, i32 0, i64 1
  %osucc958 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx957, i32 0, i32 1
  store %union.rec* %398, %union.rec** %osucc958, align 8
  br label %cond.end.959

cond.end.959:                                     ; preds = %cond.false.930, %cond.true.929
  %cond960 = phi %union.rec* [ %387, %cond.true.929 ], [ %398, %cond.false.930 ]
  br label %cond.end.961

cond.end.961:                                     ; preds = %cond.end.959, %cond.true.925
  %cond962 = phi %union.rec* [ %385, %cond.true.925 ], [ %cond960, %cond.end.959 ]
  br label %if.end.963

if.end.963:                                       ; preds = %cond.end.961, %sw.epilog
  %400 = load %union.rec*, %union.rec** %res, align 8
  %call964 = call %union.rec* @DetachEnv(%union.rec* %400)
  %401 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  store %union.rec* %call964, %union.rec** %401, align 8
  %402 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %402, %union.rec** @zz_hold, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1965 = bitcast %union.rec* %403 to %struct.word_type*
  %olist966 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1965, i32 0, i32 0
  %arrayidx967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist966, i32 0, i64 1
  %osucc968 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx967, i32 0, i32 1
  %404 = load %union.rec*, %union.rec** %osucc968, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp969 = icmp eq %union.rec* %404, %405
  br i1 %cmp969, label %cond.true.971, label %cond.false.972

cond.true.971:                                    ; preds = %if.end.963
  br label %cond.end.1001

cond.false.972:                                   ; preds = %if.end.963
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1973 = bitcast %union.rec* %406 to %struct.word_type*
  %olist974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1973, i32 0, i32 0
  %arrayidx975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist974, i32 0, i64 1
  %osucc976 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx975, i32 0, i32 1
  %407 = load %union.rec*, %union.rec** %osucc976, align 8
  store %union.rec* %407, %union.rec** @zz_res, align 8
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1977 = bitcast %union.rec* %408 to %struct.word_type*
  %olist978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1977, i32 0, i32 0
  %arrayidx979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist978, i32 0, i64 1
  %opred980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx979, i32 0, i32 0
  %409 = load %union.rec*, %union.rec** %opred980, align 8
  %410 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1981 = bitcast %union.rec* %410 to %struct.word_type*
  %olist982 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1981, i32 0, i32 0
  %arrayidx983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist982, i32 0, i64 1
  %opred984 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx983, i32 0, i32 0
  store %union.rec* %409, %union.rec** %opred984, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1985 = bitcast %union.rec* %412 to %struct.word_type*
  %olist986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1985, i32 0, i32 0
  %arrayidx987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist986, i32 0, i64 1
  %opred988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx987, i32 0, i32 0
  %413 = load %union.rec*, %union.rec** %opred988, align 8
  %os1989 = bitcast %union.rec* %413 to %struct.word_type*
  %olist990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1989, i32 0, i32 0
  %arrayidx991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist990, i32 0, i64 1
  %osucc992 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx991, i32 0, i32 1
  store %union.rec* %411, %union.rec** %osucc992, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1993 = bitcast %union.rec* %415 to %struct.word_type*
  %olist994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1993, i32 0, i32 0
  %arrayidx995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist994, i32 0, i64 1
  %osucc996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx995, i32 0, i32 1
  store %union.rec* %414, %union.rec** %osucc996, align 8
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1997 = bitcast %union.rec* %416 to %struct.word_type*
  %olist998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1997, i32 0, i32 0
  %arrayidx999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist998, i32 0, i64 1
  %opred1000 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx999, i32 0, i32 0
  store %union.rec* %414, %union.rec** %opred1000, align 8
  %417 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1001

cond.end.1001:                                    ; preds = %cond.false.972, %cond.true.971
  %cond1002 = phi %union.rec* [ null, %cond.true.971 ], [ %417, %cond.false.972 ]
  store %union.rec* %cond1002, %union.rec** @xx_tmp, align 8
  %418 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %418, %union.rec** @zz_res, align 8
  %419 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %419, %union.rec** @zz_hold, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1003 = icmp eq %union.rec* %420, null
  br i1 %cmp1003, label %cond.true.1005, label %cond.false.1006

cond.true.1005:                                   ; preds = %cond.end.1001
  %421 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1041

cond.false.1006:                                  ; preds = %cond.end.1001
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1007 = icmp eq %union.rec* %422, null
  br i1 %cmp1007, label %cond.true.1009, label %cond.false.1010

cond.true.1009:                                   ; preds = %cond.false.1006
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1039

cond.false.1010:                                  ; preds = %cond.false.1006
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11011 = bitcast %union.rec* %424 to %struct.word_type*
  %olist1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11011, i32 0, i32 0
  %arrayidx1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1012, i32 0, i64 1
  %opred1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1013, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %opred1014, align 8
  store %union.rec* %425, %union.rec** @zz_tmp, align 8
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11015 = bitcast %union.rec* %426 to %struct.word_type*
  %olist1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11015, i32 0, i32 0
  %arrayidx1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1016, i32 0, i64 1
  %opred1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1017, i32 0, i32 0
  %427 = load %union.rec*, %union.rec** %opred1018, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11019 = bitcast %union.rec* %428 to %struct.word_type*
  %olist1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11019, i32 0, i32 0
  %arrayidx1021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1020, i32 0, i64 1
  %opred1022 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1021, i32 0, i32 0
  store %union.rec* %427, %union.rec** %opred1022, align 8
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11023 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11023, i32 0, i32 0
  %arrayidx1025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1024, i32 0, i64 1
  %opred1026 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1025, i32 0, i32 0
  %431 = load %union.rec*, %union.rec** %opred1026, align 8
  %os11027 = bitcast %union.rec* %431 to %struct.word_type*
  %olist1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11027, i32 0, i32 0
  %arrayidx1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1028, i32 0, i64 1
  %osucc1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1029, i32 0, i32 1
  store %union.rec* %429, %union.rec** %osucc1030, align 8
  %432 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11031 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11031, i32 0, i32 0
  %arrayidx1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1032, i32 0, i64 1
  %opred1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1033, i32 0, i32 0
  store %union.rec* %432, %union.rec** %opred1034, align 8
  %434 = load %union.rec*, %union.rec** @zz_res, align 8
  %435 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11035 = bitcast %union.rec* %435 to %struct.word_type*
  %olist1036 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11035, i32 0, i32 0
  %arrayidx1037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1036, i32 0, i64 1
  %osucc1038 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1037, i32 0, i32 1
  store %union.rec* %434, %union.rec** %osucc1038, align 8
  br label %cond.end.1039

cond.end.1039:                                    ; preds = %cond.false.1010, %cond.true.1009
  %cond1040 = phi %union.rec* [ %423, %cond.true.1009 ], [ %434, %cond.false.1010 ]
  br label %cond.end.1041

cond.end.1041:                                    ; preds = %cond.end.1039, %cond.true.1005
  %cond1042 = phi %union.rec* [ %421, %cond.true.1005 ], [ %cond1040, %cond.end.1039 ]
  %436 = load %union.rec*, %union.rec** %x.addr, align 8
  %call1043 = call i32 @DisposeObject(%union.rec* %436)
  %437 = load %union.rec*, %union.rec** %res, align 8
  %os11044 = bitcast %union.rec* %437 to %struct.word_type*
  %ou11045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11044, i32 0, i32 1
  %os111046 = bitcast %union.FIRST_UNION* %ou11045 to %struct.anon*
  %otype1047 = getelementptr inbounds %struct.anon, %struct.anon* %os111046, i32 0, i32 0
  %438 = load i8, i8* %otype1047, align 1
  %conv1048 = zext i8 %438 to i32
  %cmp1049 = icmp eq i32 %conv1048, 2
  br i1 %cmp1049, label %if.end.1053, label %if.then.1051

if.then.1051:                                     ; preds = %cond.end.1041
  %439 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1052 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %439, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.then.1051, %cond.end.1041
  %440 = load %union.rec*, %union.rec** %res, align 8
  %os21054 = bitcast %union.rec* %440 to %struct.closure_type*
  %oactual1055 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21054, i32 0, i32 5
  %441 = load %union.rec*, %union.rec** %oactual1055, align 8
  %442 = load %union.rec*, %union.rec** %sym, align 8
  %cmp1056 = icmp eq %union.rec* %441, %442
  br i1 %cmp1056, label %if.end.1060, label %if.then.1058

if.then.1058:                                     ; preds = %if.end.1053
  %443 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1059 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %443, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.then.1058, %if.end.1053
  %444 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %444
}

declare %union.rec* @Manifest(%union.rec*, %union.rec*, %struct.STYLE*, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32, i32, %union.rec**, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare %union.rec* @StartMoment() #1

declare i8* @SymName(%union.rec*) #1

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare void @SwitchScope(%union.rec*) #1

declare void @SetScope(%union.rec*, i32*, i32) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @PopScope() #1

declare void @UnSwitchScope(%union.rec*) #1

declare void @AttachEnv(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define internal i32 @crtab_getnext(%union.rec* %sym, i16 zeroext %fnum, %struct.anon.14** %S) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %union.rec*, align 8
  %fnum.addr = alloca i16, align 2
  %S.addr = alloca %struct.anon.14**, align 8
  %x = alloca %struct.crossref_rec*, align 8
  %t = alloca %union.rec*, align 8
  %pos = alloca i64, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store %struct.anon.14** %S, %struct.anon.14*** %S.addr, align 8
  %0 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %1 = load %struct.anon.14*, %struct.anon.14** %0, align 8
  %cmp = icmp eq %struct.anon.14* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.anon.14* @crtab_new(i32 100)
  %2 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  store %struct.anon.14* %call, %struct.anon.14** %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %sym.addr, align 8
  %4 = ptrtoint %union.rec* %3 to i64
  %5 = load i16, i16* %fnum.addr, align 2
  %conv = zext i16 %5 to i64
  %add = add i64 %4, %conv
  %6 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %7 = load %struct.anon.14*, %struct.anon.14** %6, align 8
  %tab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %7, i32 0, i32 0
  %8 = load i32, i32* %tab_size, align 4
  %conv1 = sext i32 %8 to i64
  %rem = urem i64 %add, %conv1
  store i64 %rem, i64* %pos, align 8
  %9 = load i64, i64* %pos, align 8
  %10 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %11 = load %struct.anon.14*, %struct.anon.14** %10, align 8
  %tab_chains = getelementptr inbounds %struct.anon.14, %struct.anon.14* %11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains, i32 0, i64 %9
  %12 = load %struct.crossref_rec*, %struct.crossref_rec** %arrayidx, align 8
  store %struct.crossref_rec* %12, %struct.crossref_rec** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %cmp2 = icmp ne %struct.crossref_rec* %13, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_sym = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %14, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %crtab_sym, align 8
  %16 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp4 = icmp eq %union.rec* %15, %16
  br i1 %cmp4, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_fnum = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %17, i32 0, i32 2
  %18 = load i16, i16* %crtab_fnum, align 2
  %conv6 = zext i16 %18 to i32
  %19 = load i16, i16* %fnum.addr, align 2
  %conv7 = zext i16 %19 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  %20 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_value = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %20, i32 0, i32 3
  %21 = load i32, i32* %crtab_value, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %crtab_value, align 4
  store i32 %inc, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_next = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %22, i32 0, i32 0
  %23 = load %struct.crossref_rec*, %struct.crossref_rec** %crtab_next, align 8
  store %struct.crossref_rec* %23, %struct.crossref_rec** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %25 = load %struct.anon.14*, %struct.anon.14** %24, align 8
  %tab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %25, i32 0, i32 1
  %26 = load i32, i32* %tab_count, align 4
  %27 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %28 = load %struct.anon.14*, %struct.anon.14** %27, align 8
  %tab_size12 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %28, i32 0, i32 0
  %29 = load i32, i32* %tab_size12, align 4
  %cmp13 = icmp eq i32 %26, %29
  br i1 %cmp13, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %for.end
  %30 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %31 = load %struct.anon.14*, %struct.anon.14** %30, align 8
  %32 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %33 = load %struct.anon.14*, %struct.anon.14** %32, align 8
  %tab_size16 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %33, i32 0, i32 0
  %34 = load i32, i32* %tab_size16, align 4
  %mul = mul nsw i32 2, %34
  %call17 = call %struct.anon.14* @crtab_rehash(%struct.anon.14* %31, i32 %mul)
  %35 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  store %struct.anon.14* %call17, %struct.anon.14** %35, align 8
  %36 = load %union.rec*, %union.rec** %sym.addr, align 8
  %37 = ptrtoint %union.rec* %36 to i64
  %38 = load i16, i16* %fnum.addr, align 2
  %conv18 = zext i16 %38 to i64
  %add19 = add i64 %37, %conv18
  %39 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %40 = load %struct.anon.14*, %struct.anon.14** %39, align 8
  %tab_size20 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %40, i32 0, i32 0
  %41 = load i32, i32* %tab_size20, align 4
  %conv21 = sext i32 %41 to i64
  %rem22 = urem i64 %add19, %conv21
  store i64 %rem22, i64* %pos, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.15, %for.end
  store i32 24, i32* @zz_size, align 4
  br i1 false, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.23
  %42 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %42)
  br label %if.end.38

if.else:                                          ; preds = %if.end.23
  %43 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx26 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %44 = load %union.rec*, %union.rec** %arrayidx26, align 8
  %cmp27 = icmp eq %union.rec* %44, null
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else
  %45 = load i32, i32* @zz_size, align 4
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call30 = call %union.rec* @GetMemory(i32 %45, %struct.FILE_POS* %46)
  store %union.rec* %call30, %union.rec** %t, align 8
  br label %if.end.37

if.else.31:                                       ; preds = %if.else
  %47 = load i32, i32* @zz_size, align 4
  %idxprom32 = sext i32 %47 to i64
  %arrayidx33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom32
  %48 = load %union.rec*, %union.rec** %arrayidx33, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  store %union.rec* %48, %union.rec** %t, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %49 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %opred, align 8
  %51 = load i32, i32* @zz_size, align 4
  %idxprom35 = sext i32 %51 to i64
  %arrayidx36 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom35
  store %union.rec* %50, %union.rec** %arrayidx36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.31, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.24
  %52 = load %union.rec*, %union.rec** %t, align 8
  %53 = bitcast %union.rec* %52 to %struct.crossref_rec*
  store %struct.crossref_rec* %53, %struct.crossref_rec** %x, align 8
  %54 = load %union.rec*, %union.rec** %sym.addr, align 8
  %55 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_sym39 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %55, i32 0, i32 1
  store %union.rec* %54, %union.rec** %crtab_sym39, align 8
  %56 = load i16, i16* %fnum.addr, align 2
  %57 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_fnum40 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %57, i32 0, i32 2
  store i16 %56, i16* %crtab_fnum40, align 2
  %58 = load i64, i64* %pos, align 8
  %59 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %60 = load %struct.anon.14*, %struct.anon.14** %59, align 8
  %tab_chains41 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %60, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains41, i32 0, i64 %58
  %61 = load %struct.crossref_rec*, %struct.crossref_rec** %arrayidx42, align 8
  %62 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_next43 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %62, i32 0, i32 0
  store %struct.crossref_rec* %61, %struct.crossref_rec** %crtab_next43, align 8
  %63 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %64 = load i64, i64* %pos, align 8
  %65 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %66 = load %struct.anon.14*, %struct.anon.14** %65, align 8
  %tab_chains44 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %66, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains44, i32 0, i64 %64
  store %struct.crossref_rec* %63, %struct.crossref_rec** %arrayidx45, align 8
  %67 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %68 = load %struct.anon.14*, %struct.anon.14** %67, align 8
  %tab_count46 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %68, i32 0, i32 1
  %69 = load i32, i32* %tab_count46, align 4
  %inc47 = add nsw i32 %69, 1
  store i32 %inc47, i32* %tab_count46, align 4
  %70 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %crtab_value48 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %70, i32 0, i32 3
  store i32 1, i32* %crtab_value48, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.10
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare %union.rec* @SetEnv(%union.rec*, %union.rec*) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @CrossSequence(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %val = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %key = alloca %union.rec*, align 8
  %hold_key = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %hold_env = alloca %union.rec*, align 8
  %ctype = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %seq = alloca i8*, align 8
  %dfnum = alloca i16, align 2
  %dfpos = alloca i32, align 4
  %dlnum = alloca i32, align 4
  %nbt = alloca [2 x %union.rec*], align 16
  %nft = alloca [2 x %union.rec*], align 16
  %crs = alloca %union.rec*, align 8
  %ntarget = alloca %union.rec*, align 8
  %nenclose = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load i32, i32* @AllowCrossDb, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.16, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp eq %union.rec* %2, %3
  br i1 %cmp, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %call = call i32 @DisposeObject(%union.rec* %4)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %sw.epilog.2447

if.end.16:                                        ; preds = %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %5 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %6 = load i8, i8* %otype, align 1
  %conv = zext i8 %6 to i32
  %cmp18 = icmp eq i32 %conv, 6
  br i1 %cmp18, label %if.end.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os120 = bitcast %union.rec* %7 to %struct.word_type*
  %ou121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 1
  %os1122 = bitcast %union.FIRST_UNION* %ou121 to %struct.anon*
  %otype23 = getelementptr inbounds %struct.anon, %struct.anon* %os1122, i32 0, i32 0
  %8 = load i8, i8* %otype23, align 1
  %conv24 = zext i8 %8 to i32
  %cmp25 = icmp eq i32 %conv24, 7
  br i1 %cmp25, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %lor.lhs.false, %if.end.16
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os130 = bitcast %union.rec* %10 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %ocross_type = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 1
  %11 = load i8, i8* %ocross_type, align 1
  %conv31 = zext i8 %11 to i32
  store i32 %conv31, i32* %ctype, align 4
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os132 = bitcast %union.rec* %12 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 0
  %osucc35 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc35, align 8
  %os136 = bitcast %union.rec* %13 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %14, %union.rec** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %15 = load %union.rec*, %union.rec** %tmp, align 8
  %os139 = bitcast %union.rec* %15 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon*
  %otype42 = getelementptr inbounds %struct.anon, %struct.anon* %os1141, i32 0, i32 0
  %16 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %16 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %union.rec*, %union.rec** %tmp, align 8
  %os146 = bitcast %union.rec* %17 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred49, align 8
  store %union.rec* %18, %union.rec** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %union.rec*, %union.rec** %tmp, align 8
  %os150 = bitcast %union.rec* %19 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %os1152 = bitcast %union.FIRST_UNION* %ou151 to %struct.anon*
  %otype53 = getelementptr inbounds %struct.anon, %struct.anon* %os1152, i32 0, i32 0
  %20 = load i8, i8* %otype53, align 1
  %conv54 = zext i8 %20 to i32
  %cmp55 = icmp eq i32 %conv54, 2
  br i1 %cmp55, label %if.end.59, label %if.then.57

if.then.57:                                       ; preds = %for.end
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call58 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %for.end
  %22 = load %union.rec*, %union.rec** %tmp, align 8
  %os2 = bitcast %union.rec* %22 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %23 = load %union.rec*, %union.rec** %oactual, align 8
  store %union.rec* %23, %union.rec** %sym, align 8
  %24 = load %union.rec*, %union.rec** %sym, align 8
  %os6 = bitcast %union.rec* %24 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %25 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp60 = icmp eq %union.rec* %25, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  %26 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %26)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.59
  %27 = load %union.rec*, %union.rec** %sym, align 8
  %os664 = bitcast %union.rec* %27 to %struct.symbol_type*
  %ocross_sym65 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os664, i32 0, i32 8
  %28 = load %union.rec*, %union.rec** %ocross_sym65, align 8
  store %union.rec* %28, %union.rec** %cs, align 8
  %29 = load %union.rec*, %union.rec** %cs, align 8
  %os166 = bitcast %union.rec* %29 to %struct.word_type*
  %ou167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 1
  %os1168 = bitcast %union.FIRST_UNION* %ou167 to %struct.anon*
  %otype69 = getelementptr inbounds %struct.anon, %struct.anon* %os1168, i32 0, i32 0
  %30 = load i8, i8* %otype69, align 1
  %conv70 = zext i8 %30 to i32
  %cmp71 = icmp eq i32 %conv70, 140
  br i1 %cmp71, label %if.end.75, label %if.then.73

if.then.73:                                       ; preds = %if.end.63
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.63
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %os176 = bitcast %union.rec* %32 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %osucc79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %osucc79, align 8
  %os180 = bitcast %union.rec* %33 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %osucc83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 1
  %34 = load %union.rec*, %union.rec** %osucc83, align 8
  %os184 = bitcast %union.rec* %34 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred87, align 8
  store %union.rec* %35, %union.rec** %tag, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %if.end.75
  %36 = load %union.rec*, %union.rec** %tag, align 8
  %os189 = bitcast %union.rec* %36 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon*
  %otype92 = getelementptr inbounds %struct.anon, %struct.anon* %os1191, i32 0, i32 0
  %37 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %37 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %for.body.96, label %for.end.102

for.body.96:                                      ; preds = %for.cond.88
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.96
  %38 = load %union.rec*, %union.rec** %tag, align 8
  %os198 = bitcast %union.rec* %38 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred101, align 8
  store %union.rec* %39, %union.rec** %tag, align 8
  br label %for.cond.88

for.end.102:                                      ; preds = %for.cond.88
  %40 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1103 = bitcast %union.rec* %40 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 0
  %osucc106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %osucc106, align 8
  %os1107 = bitcast %union.rec* %41 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 0
  %osucc110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %osucc110, align 8
  store %union.rec* %42, %union.rec** @xx_link, align 8
  %43 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %44 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 1
  %osucc114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 1
  %45 = load %union.rec*, %union.rec** %osucc114, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp115 = icmp eq %union.rec* %45, %46
  br i1 %cmp115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.102
  br label %cond.end

cond.false:                                       ; preds = %for.end.102
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %47 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 1
  %osucc120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %osucc120, align 8
  store %union.rec* %48, %union.rec** @zz_res, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1121 = bitcast %union.rec* %49 to %struct.word_type*
  %olist122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist122, i32 0, i64 1
  %opred124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx123, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %opred124, align 8
  %51 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1125 = bitcast %union.rec* %51 to %struct.word_type*
  %olist126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist126, i32 0, i64 1
  %opred128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx127, i32 0, i32 0
  store %union.rec* %50, %union.rec** %opred128, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1129 = bitcast %union.rec* %53 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 1
  %opred132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %opred132, align 8
  %os1133 = bitcast %union.rec* %54 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 1
  %osucc136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc136, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1137 = bitcast %union.rec* %56 to %struct.word_type*
  %olist138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist138, i32 0, i64 1
  %osucc140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx139, i32 0, i32 1
  store %union.rec* %55, %union.rec** %osucc140, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1142 = bitcast %union.rec* %57 to %struct.word_type*
  %olist143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist143, i32 0, i64 1
  %opred145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx144, i32 0, i32 0
  store %union.rec* %55, %union.rec** %opred145, align 8
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %58, %cond.false ]
  %59 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1146 = bitcast %union.rec* %60 to %struct.word_type*
  %olist147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist147, i32 0, i64 0
  %osucc149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx148, i32 0, i32 1
  %61 = load %union.rec*, %union.rec** %osucc149, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp150 = icmp eq %union.rec* %61, %62
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %cond.end
  br label %cond.end.182

cond.false.153:                                   ; preds = %cond.end
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1154 = bitcast %union.rec* %63 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 0
  %osucc157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 1
  %64 = load %union.rec*, %union.rec** %osucc157, align 8
  store %union.rec* %64, %union.rec** @zz_res, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1158 = bitcast %union.rec* %65 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 0
  %opred161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %opred161, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1162 = bitcast %union.rec* %67 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 0
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  store %union.rec* %66, %union.rec** %opred165, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %69 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 0
  %opred169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %opred169, align 8
  %os1170 = bitcast %union.rec* %70 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 0
  %osucc173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 1
  store %union.rec* %68, %union.rec** %osucc173, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %72 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  store %union.rec* %71, %union.rec** %osucc177, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %73 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 0
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  store %union.rec* %71, %union.rec** %opred181, align 8
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.153, %cond.true.152
  %cond183 = phi %union.rec* [ null, %cond.true.152 ], [ %74, %cond.false.153 ]
  %75 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1184 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 1
  %os11186 = bitcast %union.FIRST_UNION* %ou1185 to %struct.anon*
  %otype187 = getelementptr inbounds %struct.anon, %struct.anon* %os11186, i32 0, i32 0
  %78 = load i8, i8* %otype187, align 1
  %conv188 = zext i8 %78 to i32
  %cmp189 = icmp eq i32 %conv188, 11
  br i1 %cmp189, label %cond.true.199, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %cond.end.182
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1192 = bitcast %union.rec* %79 to %struct.word_type*
  %ou1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 1
  %os11194 = bitcast %union.FIRST_UNION* %ou1193 to %struct.anon*
  %otype195 = getelementptr inbounds %struct.anon, %struct.anon* %os11194, i32 0, i32 0
  %80 = load i8, i8* %otype195, align 1
  %conv196 = zext i8 %80 to i32
  %cmp197 = icmp eq i32 %conv196, 12
  br i1 %cmp197, label %cond.true.199, label %cond.false.204

cond.true.199:                                    ; preds = %lor.lhs.false.191, %cond.end.182
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %81 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 1
  %82 = load i8, i8* %orec_size, align 1
  %conv203 = zext i8 %82 to i32
  br label %cond.end.211

cond.false.204:                                   ; preds = %lor.lhs.false.191
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1205 = bitcast %union.rec* %83 to %struct.word_type*
  %ou1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 1
  %os11207 = bitcast %union.FIRST_UNION* %ou1206 to %struct.anon*
  %otype208 = getelementptr inbounds %struct.anon, %struct.anon* %os11207, i32 0, i32 0
  %84 = load i8, i8* %otype208, align 1
  %idxprom = zext i8 %84 to i64
  %arrayidx209 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %85 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %85 to i32
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.204, %cond.true.199
  %cond212 = phi i32 [ %conv203, %cond.true.199 ], [ %conv210, %cond.false.204 ]
  store i32 %cond212, i32* @zz_size, align 4
  %86 = load i32, i32* @zz_size, align 4
  %idxprom213 = sext i32 %86 to i64
  %arrayidx214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom213
  %87 = load %union.rec*, %union.rec** %arrayidx214, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1215 = bitcast %union.rec* %88 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 0
  %opred218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 0
  store %union.rec* %87, %union.rec** %opred218, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %90 = load i32, i32* @zz_size, align 4
  %idxprom219 = sext i32 %90 to i64
  %arrayidx220 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom219
  store %union.rec* %89, %union.rec** %arrayidx220, align 8
  %91 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1221 = bitcast %union.rec* %91 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 1
  %osucc224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 1
  %92 = load %union.rec*, %union.rec** %osucc224, align 8
  %93 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp225 = icmp eq %union.rec* %92, %93
  br i1 %cmp225, label %if.then.227, label %if.end.229

if.then.227:                                      ; preds = %cond.end.211
  %94 = load %union.rec*, %union.rec** %x.addr, align 8
  %call228 = call i32 @DisposeObject(%union.rec* %94)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.227, %cond.end.211
  %95 = load i32, i32* %ctype, align 4
  switch i32 %95, label %sw.default.2444 [
    i32 129, label %sw.bb
    i32 130, label %sw.bb
    i32 133, label %sw.bb
    i32 132, label %sw.bb.1243
    i32 134, label %sw.bb.1535
    i32 127, label %sw.bb.1606
    i32 128, label %sw.bb.1606
    i32 131, label %sw.bb.1777
  ]

sw.bb:                                            ; preds = %if.end.229, %if.end.229, %if.end.229
  %96 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %96, %union.rec** %val, align 8
  store %union.rec* null, %union.rec** %hold_key, align 8
  store %union.rec* null, %union.rec** %key, align 8
  %97 = load %union.rec*, %union.rec** %val, align 8
  %os1230 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 1
  %os11232 = bitcast %union.FIRST_UNION* %ou1231 to %struct.anon*
  %otype233 = getelementptr inbounds %struct.anon, %struct.anon* %os11232, i32 0, i32 0
  %98 = load i8, i8* %otype233, align 1
  %conv234 = zext i8 %98 to i32
  %cmp235 = icmp eq i32 %conv234, 2
  br i1 %cmp235, label %if.end.239, label %if.then.237

if.then.237:                                      ; preds = %sw.bb
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call238 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %sw.bb
  %100 = load %union.rec*, %union.rec** %val, align 8
  %os2240 = bitcast %union.rec* %100 to %struct.closure_type*
  %oactual241 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2240, i32 0, i32 5
  %101 = load %union.rec*, %union.rec** %oactual241, align 8
  %os1242 = bitcast %union.rec* %101 to %struct.word_type*
  %ou2243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2243 to %struct.anon.5*
  %ohas_key = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %102 = bitcast [3 x i8]* %ohas_key to i24*
  %bf.load = load i24, i24* %102, align 1
  %bf.lshr = lshr i24 %bf.load, 14
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool244 = icmp ne i32 %bf.cast, 0
  br i1 %tobool244, label %if.then.245, label %if.end.975

if.then.245:                                      ; preds = %if.end.239
  %103 = load %union.rec*, %union.rec** %val, align 8
  %os2246 = bitcast %union.rec* %103 to %struct.closure_type*
  %oactual247 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2246, i32 0, i32 5
  %104 = load %union.rec*, %union.rec** %oactual247, align 8
  %os1248 = bitcast %union.rec* %104 to %struct.word_type*
  %olist249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist249, i32 0, i64 0
  %osucc251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx250, i32 0, i32 1
  %105 = load %union.rec*, %union.rec** %osucc251, align 8
  store %union.rec* %105, %union.rec** %link, align 8
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.969, %if.then.245
  %106 = load %union.rec*, %union.rec** %link, align 8
  %107 = load %union.rec*, %union.rec** %val, align 8
  %os2253 = bitcast %union.rec* %107 to %struct.closure_type*
  %oactual254 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2253, i32 0, i32 5
  %108 = load %union.rec*, %union.rec** %oactual254, align 8
  %cmp255 = icmp ne %union.rec* %106, %108
  br i1 %cmp255, label %for.body.257, label %for.end.974

for.body.257:                                     ; preds = %for.cond.252
  %109 = load %union.rec*, %union.rec** %link, align 8
  %os1258 = bitcast %union.rec* %109 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 1
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %opred261, align 8
  store %union.rec* %110, %union.rec** %y, align 8
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.271, %for.body.257
  %111 = load %union.rec*, %union.rec** %y, align 8
  %os1263 = bitcast %union.rec* %111 to %struct.word_type*
  %ou1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 1
  %os11265 = bitcast %union.FIRST_UNION* %ou1264 to %struct.anon*
  %otype266 = getelementptr inbounds %struct.anon, %struct.anon* %os11265, i32 0, i32 0
  %112 = load i8, i8* %otype266, align 1
  %conv267 = zext i8 %112 to i32
  %cmp268 = icmp eq i32 %conv267, 0
  br i1 %cmp268, label %for.body.270, label %for.end.276

for.body.270:                                     ; preds = %for.cond.262
  br label %for.inc.271

for.inc.271:                                      ; preds = %for.body.270
  %113 = load %union.rec*, %union.rec** %y, align 8
  %os1272 = bitcast %union.rec* %113 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 1
  %opred275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred275, align 8
  store %union.rec* %114, %union.rec** %y, align 8
  br label %for.cond.262

for.end.276:                                      ; preds = %for.cond.262
  %115 = load %union.rec*, %union.rec** %y, align 8
  %os1277 = bitcast %union.rec* %115 to %struct.word_type*
  %ou2278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 2
  %os26279 = bitcast %union.SECOND_UNION* %ou2278 to %struct.anon.5*
  %ois_key = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26279, i32 0, i32 1
  %116 = bitcast [3 x i8]* %ois_key to i24*
  %bf.load280 = load i24, i24* %116, align 1
  %bf.lshr281 = lshr i24 %bf.load280, 13
  %bf.clear282 = and i24 %bf.lshr281, 1
  %bf.cast283 = zext i24 %bf.clear282 to i32
  %tobool284 = icmp ne i32 %bf.cast283, 0
  br i1 %tobool284, label %if.then.285, label %if.end.968

if.then.285:                                      ; preds = %for.end.276
  %arrayidx291 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nft, i32 0, i64 1
  store %union.rec* null, %union.rec** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nbt, i32 0, i64 1
  store %union.rec* null, %union.rec** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nft, i32 0, i64 0
  store %union.rec* null, %union.rec** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nbt, i32 0, i64 0
  store %union.rec* null, %union.rec** %arrayidx294, align 8
  store %union.rec* null, %union.rec** %nenclose, align 8
  store %union.rec* null, %union.rec** %ntarget, align 8
  store %union.rec* null, %union.rec** %crs, align 8
  %117 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv295 = zext i8 %117 to i32
  store i32 %conv295, i32* @zz_size, align 4
  %conv296 = sext i32 %conv295 to i64
  %cmp297 = icmp uge i64 %conv296, 265
  br i1 %cmp297, label %if.then.299, label %if.else

if.then.299:                                      ; preds = %if.then.285
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call300 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %118)
  br label %if.end.317

if.else:                                          ; preds = %if.then.285
  %119 = load i32, i32* @zz_size, align 4
  %idxprom301 = sext i32 %119 to i64
  %arrayidx302 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom301
  %120 = load %union.rec*, %union.rec** %arrayidx302, align 8
  %cmp303 = icmp eq %union.rec* %120, null
  br i1 %cmp303, label %if.then.305, label %if.else.307

if.then.305:                                      ; preds = %if.else
  %121 = load i32, i32* @zz_size, align 4
  %122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call306 = call %union.rec* @GetMemory(i32 %121, %struct.FILE_POS* %122)
  store %union.rec* %call306, %union.rec** @zz_hold, align 8
  br label %if.end.316

if.else.307:                                      ; preds = %if.else
  %123 = load i32, i32* @zz_size, align 4
  %idxprom308 = sext i32 %123 to i64
  %arrayidx309 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom308
  %124 = load %union.rec*, %union.rec** %arrayidx309, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1310 = bitcast %union.rec* %125 to %struct.word_type*
  %olist311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1310, i32 0, i32 0
  %arrayidx312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist311, i32 0, i64 0
  %opred313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx312, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %opred313, align 8
  %127 = load i32, i32* @zz_size, align 4
  %idxprom314 = sext i32 %127 to i64
  %arrayidx315 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom314
  store %union.rec* %126, %union.rec** %arrayidx315, align 8
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.307, %if.then.305
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.299
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1318 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 1
  %os11320 = bitcast %union.FIRST_UNION* %ou1319 to %struct.anon*
  %otype321 = getelementptr inbounds %struct.anon, %struct.anon* %os11320, i32 0, i32 0
  store i8 2, i8* %otype321, align 1
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1322 = bitcast %union.rec* %130 to %struct.word_type*
  %olist323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1322, i32 0, i32 0
  %arrayidx324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist323, i32 0, i64 1
  %osucc325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx324, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc325, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1326 = bitcast %union.rec* %131 to %struct.word_type*
  %olist327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1326, i32 0, i32 0
  %arrayidx328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist327, i32 0, i64 1
  %opred329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx328, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred329, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1330 = bitcast %union.rec* %132 to %struct.word_type*
  %olist331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist331, i32 0, i64 0
  %osucc333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx332, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc333, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1334 = bitcast %union.rec* %133 to %struct.word_type*
  %olist335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1334, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist335, i32 0, i64 0
  %opred337 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx336, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred337, align 8
  store %union.rec* %129, %union.rec** %key, align 8
  %134 = load %union.rec*, %union.rec** %y, align 8
  %135 = load %union.rec*, %union.rec** %key, align 8
  %os2338 = bitcast %union.rec* %135 to %struct.closure_type*
  %oactual339 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2338, i32 0, i32 5
  store %union.rec* %134, %union.rec** %oactual339, align 8
  %136 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv340 = zext i8 %136 to i32
  store i32 %conv340, i32* @zz_size, align 4
  %conv341 = sext i32 %conv340 to i64
  %cmp342 = icmp uge i64 %conv341, 265
  br i1 %cmp342, label %if.then.344, label %if.else.346

if.then.344:                                      ; preds = %if.end.317
  %137 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call345 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %137)
  br label %if.end.363

if.else.346:                                      ; preds = %if.end.317
  %138 = load i32, i32* @zz_size, align 4
  %idxprom347 = sext i32 %138 to i64
  %arrayidx348 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom347
  %139 = load %union.rec*, %union.rec** %arrayidx348, align 8
  %cmp349 = icmp eq %union.rec* %139, null
  br i1 %cmp349, label %if.then.351, label %if.else.353

if.then.351:                                      ; preds = %if.else.346
  %140 = load i32, i32* @zz_size, align 4
  %141 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call352 = call %union.rec* @GetMemory(i32 %140, %struct.FILE_POS* %141)
  store %union.rec* %call352, %union.rec** @zz_hold, align 8
  br label %if.end.362

if.else.353:                                      ; preds = %if.else.346
  %142 = load i32, i32* @zz_size, align 4
  %idxprom354 = sext i32 %142 to i64
  %arrayidx355 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom354
  %143 = load %union.rec*, %union.rec** %arrayidx355, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1356 = bitcast %union.rec* %144 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 0
  %opred359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %opred359, align 8
  %146 = load i32, i32* @zz_size, align 4
  %idxprom360 = sext i32 %146 to i64
  %arrayidx361 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom360
  store %union.rec* %145, %union.rec** %arrayidx361, align 8
  br label %if.end.362

if.end.362:                                       ; preds = %if.else.353, %if.then.351
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.then.344
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1364 = bitcast %union.rec* %147 to %struct.word_type*
  %ou1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 1
  %os11366 = bitcast %union.FIRST_UNION* %ou1365 to %struct.anon*
  %otype367 = getelementptr inbounds %struct.anon, %struct.anon* %os11366, i32 0, i32 0
  store i8 17, i8* %otype367, align 1
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1368 = bitcast %union.rec* %149 to %struct.word_type*
  %olist369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1368, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist369, i32 0, i64 1
  %osucc371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx370, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc371, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1372 = bitcast %union.rec* %150 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 1
  %opred375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 0
  store %union.rec* %148, %union.rec** %opred375, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1376 = bitcast %union.rec* %151 to %struct.word_type*
  %olist377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist377, i32 0, i64 0
  %osucc379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx378, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc379, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %152 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 0
  %opred383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 0
  store %union.rec* %148, %union.rec** %opred383, align 8
  store %union.rec* %148, %union.rec** %hold_key, align 8
  %153 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv384 = zext i8 %153 to i32
  store i32 %conv384, i32* @zz_size, align 4
  %conv385 = sext i32 %conv384 to i64
  %cmp386 = icmp uge i64 %conv385, 265
  br i1 %cmp386, label %if.then.388, label %if.else.390

if.then.388:                                      ; preds = %if.end.363
  %154 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call389 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %154)
  br label %if.end.407

if.else.390:                                      ; preds = %if.end.363
  %155 = load i32, i32* @zz_size, align 4
  %idxprom391 = sext i32 %155 to i64
  %arrayidx392 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom391
  %156 = load %union.rec*, %union.rec** %arrayidx392, align 8
  %cmp393 = icmp eq %union.rec* %156, null
  br i1 %cmp393, label %if.then.395, label %if.else.397

if.then.395:                                      ; preds = %if.else.390
  %157 = load i32, i32* @zz_size, align 4
  %158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call396 = call %union.rec* @GetMemory(i32 %157, %struct.FILE_POS* %158)
  store %union.rec* %call396, %union.rec** @zz_hold, align 8
  br label %if.end.406

if.else.397:                                      ; preds = %if.else.390
  %159 = load i32, i32* @zz_size, align 4
  %idxprom398 = sext i32 %159 to i64
  %arrayidx399 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom398
  %160 = load %union.rec*, %union.rec** %arrayidx399, align 8
  store %union.rec* %160, %union.rec** @zz_hold, align 8
  store %union.rec* %160, %union.rec** @zz_hold, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1400 = bitcast %union.rec* %161 to %struct.word_type*
  %olist401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist401, i32 0, i64 0
  %opred403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx402, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred403, align 8
  %163 = load i32, i32* @zz_size, align 4
  %idxprom404 = sext i32 %163 to i64
  %arrayidx405 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom404
  store %union.rec* %162, %union.rec** %arrayidx405, align 8
  br label %if.end.406

if.end.406:                                       ; preds = %if.else.397, %if.then.395
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %if.then.388
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1408 = bitcast %union.rec* %164 to %struct.word_type*
  %ou1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 1
  %os11410 = bitcast %union.FIRST_UNION* %ou1409 to %struct.anon*
  %otype411 = getelementptr inbounds %struct.anon, %struct.anon* %os11410, i32 0, i32 0
  store i8 0, i8* %otype411, align 1
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1412 = bitcast %union.rec* %166 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 1
  %osucc415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 1
  store %union.rec* %165, %union.rec** %osucc415, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1416 = bitcast %union.rec* %167 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 1
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  store %union.rec* %165, %union.rec** %opred419, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1420 = bitcast %union.rec* %168 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 0
  %osucc423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 1
  store %union.rec* %165, %union.rec** %osucc423, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1424 = bitcast %union.rec* %169 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 0
  %opred427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 0
  store %union.rec* %165, %union.rec** %opred427, align 8
  store %union.rec* %165, %union.rec** @xx_link, align 8
  %170 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %170, %union.rec** @zz_res, align 8
  %171 = load %union.rec*, %union.rec** %hold_key, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp428 = icmp eq %union.rec* %172, null
  br i1 %cmp428, label %cond.true.430, label %cond.false.431

cond.true.430:                                    ; preds = %if.end.407
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.466

cond.false.431:                                   ; preds = %if.end.407
  %174 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp432 = icmp eq %union.rec* %174, null
  br i1 %cmp432, label %cond.true.434, label %cond.false.435

cond.true.434:                                    ; preds = %cond.false.431
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.464

cond.false.435:                                   ; preds = %cond.false.431
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1436 = bitcast %union.rec* %176 to %struct.word_type*
  %olist437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1436, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist437, i32 0, i64 0
  %opred439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx438, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %opred439, align 8
  store %union.rec* %177, %union.rec** @zz_tmp, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1440 = bitcast %union.rec* %178 to %struct.word_type*
  %olist441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist441, i32 0, i64 0
  %opred443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx442, i32 0, i32 0
  %179 = load %union.rec*, %union.rec** %opred443, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1444 = bitcast %union.rec* %180 to %struct.word_type*
  %olist445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1444, i32 0, i32 0
  %arrayidx446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist445, i32 0, i64 0
  %opred447 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx446, i32 0, i32 0
  store %union.rec* %179, %union.rec** %opred447, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1448 = bitcast %union.rec* %182 to %struct.word_type*
  %olist449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1448, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist449, i32 0, i64 0
  %opred451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx450, i32 0, i32 0
  %183 = load %union.rec*, %union.rec** %opred451, align 8
  %os1452 = bitcast %union.rec* %183 to %struct.word_type*
  %olist453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist453, i32 0, i64 0
  %osucc455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx454, i32 0, i32 1
  store %union.rec* %181, %union.rec** %osucc455, align 8
  %184 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1456 = bitcast %union.rec* %185 to %struct.word_type*
  %olist457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist457, i32 0, i64 0
  %opred459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx458, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred459, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %187 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1460 = bitcast %union.rec* %187 to %struct.word_type*
  %olist461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist461, i32 0, i64 0
  %osucc463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx462, i32 0, i32 1
  store %union.rec* %186, %union.rec** %osucc463, align 8
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.false.435, %cond.true.434
  %cond465 = phi %union.rec* [ %175, %cond.true.434 ], [ %186, %cond.false.435 ]
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.end.464, %cond.true.430
  %cond467 = phi %union.rec* [ %173, %cond.true.430 ], [ %cond465, %cond.end.464 ]
  %188 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %188, %union.rec** @zz_res, align 8
  %189 = load %union.rec*, %union.rec** %key, align 8
  store %union.rec* %189, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp468 = icmp eq %union.rec* %190, null
  br i1 %cmp468, label %cond.true.470, label %cond.false.471

cond.true.470:                                    ; preds = %cond.end.466
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.506

cond.false.471:                                   ; preds = %cond.end.466
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp472 = icmp eq %union.rec* %192, null
  br i1 %cmp472, label %cond.true.474, label %cond.false.475

cond.true.474:                                    ; preds = %cond.false.471
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.504

cond.false.475:                                   ; preds = %cond.false.471
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1476 = bitcast %union.rec* %194 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 1
  %opred479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %opred479, align 8
  store %union.rec* %195, %union.rec** @zz_tmp, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1480 = bitcast %union.rec* %196 to %struct.word_type*
  %olist481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist481, i32 0, i64 1
  %opred483 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx482, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %opred483, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1484 = bitcast %union.rec* %198 to %struct.word_type*
  %olist485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1484, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist485, i32 0, i64 1
  %opred487 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx486, i32 0, i32 0
  store %union.rec* %197, %union.rec** %opred487, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1488 = bitcast %union.rec* %200 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 1
  %opred491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %opred491, align 8
  %os1492 = bitcast %union.rec* %201 to %struct.word_type*
  %olist493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist493, i32 0, i64 1
  %osucc495 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx494, i32 0, i32 1
  store %union.rec* %199, %union.rec** %osucc495, align 8
  %202 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1496 = bitcast %union.rec* %203 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 1
  %opred499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 0
  store %union.rec* %202, %union.rec** %opred499, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %205 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1500 = bitcast %union.rec* %205 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 1
  %osucc503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 1
  store %union.rec* %204, %union.rec** %osucc503, align 8
  br label %cond.end.504

cond.end.504:                                     ; preds = %cond.false.475, %cond.true.474
  %cond505 = phi %union.rec* [ %193, %cond.true.474 ], [ %204, %cond.false.475 ]
  br label %cond.end.506

cond.end.506:                                     ; preds = %cond.end.504, %cond.true.470
  %cond507 = phi %union.rec* [ %191, %cond.true.470 ], [ %cond505, %cond.end.504 ]
  %206 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %conv508 = zext i8 %206 to i32
  store i32 %conv508, i32* @zz_size, align 4
  %conv509 = sext i32 %conv508 to i64
  %cmp510 = icmp uge i64 %conv509, 265
  br i1 %cmp510, label %if.then.512, label %if.else.514

if.then.512:                                      ; preds = %cond.end.506
  %207 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call513 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %207)
  br label %if.end.531

if.else.514:                                      ; preds = %cond.end.506
  %208 = load i32, i32* @zz_size, align 4
  %idxprom515 = sext i32 %208 to i64
  %arrayidx516 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom515
  %209 = load %union.rec*, %union.rec** %arrayidx516, align 8
  %cmp517 = icmp eq %union.rec* %209, null
  br i1 %cmp517, label %if.then.519, label %if.else.521

if.then.519:                                      ; preds = %if.else.514
  %210 = load i32, i32* @zz_size, align 4
  %211 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call520 = call %union.rec* @GetMemory(i32 %210, %struct.FILE_POS* %211)
  store %union.rec* %call520, %union.rec** @zz_hold, align 8
  br label %if.end.530

if.else.521:                                      ; preds = %if.else.514
  %212 = load i32, i32* @zz_size, align 4
  %idxprom522 = sext i32 %212 to i64
  %arrayidx523 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom522
  %213 = load %union.rec*, %union.rec** %arrayidx523, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1524 = bitcast %union.rec* %214 to %struct.word_type*
  %olist525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist525, i32 0, i64 0
  %opred527 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx526, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred527, align 8
  %216 = load i32, i32* @zz_size, align 4
  %idxprom528 = sext i32 %216 to i64
  %arrayidx529 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom528
  store %union.rec* %215, %union.rec** %arrayidx529, align 8
  br label %if.end.530

if.end.530:                                       ; preds = %if.else.521, %if.then.519
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %if.then.512
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %217 to %struct.word_type*
  %ou1533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 1
  %os11534 = bitcast %union.FIRST_UNION* %ou1533 to %struct.anon*
  %otype535 = getelementptr inbounds %struct.anon, %struct.anon* %os11534, i32 0, i32 0
  store i8 82, i8* %otype535, align 1
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1536 = bitcast %union.rec* %219 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 1
  %osucc539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 1
  store %union.rec* %218, %union.rec** %osucc539, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %220 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 1
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  store %union.rec* %218, %union.rec** %opred543, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1544 = bitcast %union.rec* %221 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 0
  %osucc547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 1
  store %union.rec* %218, %union.rec** %osucc547, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1548 = bitcast %union.rec* %222 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 0
  %opred551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 0
  store %union.rec* %218, %union.rec** %opred551, align 8
  store %union.rec* %218, %union.rec** %env, align 8
  %223 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv552 = zext i8 %223 to i32
  store i32 %conv552, i32* @zz_size, align 4
  %conv553 = sext i32 %conv552 to i64
  %cmp554 = icmp uge i64 %conv553, 265
  br i1 %cmp554, label %if.then.556, label %if.else.558

if.then.556:                                      ; preds = %if.end.531
  %224 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call557 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %224)
  br label %if.end.575

if.else.558:                                      ; preds = %if.end.531
  %225 = load i32, i32* @zz_size, align 4
  %idxprom559 = sext i32 %225 to i64
  %arrayidx560 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom559
  %226 = load %union.rec*, %union.rec** %arrayidx560, align 8
  %cmp561 = icmp eq %union.rec* %226, null
  br i1 %cmp561, label %if.then.563, label %if.else.565

if.then.563:                                      ; preds = %if.else.558
  %227 = load i32, i32* @zz_size, align 4
  %228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call564 = call %union.rec* @GetMemory(i32 %227, %struct.FILE_POS* %228)
  store %union.rec* %call564, %union.rec** @zz_hold, align 8
  br label %if.end.574

if.else.565:                                      ; preds = %if.else.558
  %229 = load i32, i32* @zz_size, align 4
  %idxprom566 = sext i32 %229 to i64
  %arrayidx567 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom566
  %230 = load %union.rec*, %union.rec** %arrayidx567, align 8
  store %union.rec* %230, %union.rec** @zz_hold, align 8
  store %union.rec* %230, %union.rec** @zz_hold, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1568 = bitcast %union.rec* %231 to %struct.word_type*
  %olist569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1568, i32 0, i32 0
  %arrayidx570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist569, i32 0, i64 0
  %opred571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx570, i32 0, i32 0
  %232 = load %union.rec*, %union.rec** %opred571, align 8
  %233 = load i32, i32* @zz_size, align 4
  %idxprom572 = sext i32 %233 to i64
  %arrayidx573 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom572
  store %union.rec* %232, %union.rec** %arrayidx573, align 8
  br label %if.end.574

if.end.574:                                       ; preds = %if.else.565, %if.then.563
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %if.then.556
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1576 = bitcast %union.rec* %234 to %struct.word_type*
  %ou1577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 1
  %os11578 = bitcast %union.FIRST_UNION* %ou1577 to %struct.anon*
  %otype579 = getelementptr inbounds %struct.anon, %struct.anon* %os11578, i32 0, i32 0
  store i8 0, i8* %otype579, align 1
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1580 = bitcast %union.rec* %236 to %struct.word_type*
  %olist581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist581, i32 0, i64 1
  %osucc583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx582, i32 0, i32 1
  store %union.rec* %235, %union.rec** %osucc583, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1584 = bitcast %union.rec* %237 to %struct.word_type*
  %olist585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist585, i32 0, i64 1
  %opred587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx586, i32 0, i32 0
  store %union.rec* %235, %union.rec** %opred587, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1588 = bitcast %union.rec* %238 to %struct.word_type*
  %olist589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 0
  %arrayidx590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist589, i32 0, i64 0
  %osucc591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx590, i32 0, i32 1
  store %union.rec* %235, %union.rec** %osucc591, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1592 = bitcast %union.rec* %239 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 0
  %opred595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 0
  store %union.rec* %235, %union.rec** %opred595, align 8
  store %union.rec* %235, %union.rec** @xx_link, align 8
  %240 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %240, %union.rec** @zz_res, align 8
  %241 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %241, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp596 = icmp eq %union.rec* %242, null
  br i1 %cmp596, label %cond.true.598, label %cond.false.599

cond.true.598:                                    ; preds = %if.end.575
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.634

cond.false.599:                                   ; preds = %if.end.575
  %244 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp600 = icmp eq %union.rec* %244, null
  br i1 %cmp600, label %cond.true.602, label %cond.false.603

cond.true.602:                                    ; preds = %cond.false.599
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.632

cond.false.603:                                   ; preds = %cond.false.599
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1604 = bitcast %union.rec* %246 to %struct.word_type*
  %olist605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist605, i32 0, i64 0
  %opred607 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx606, i32 0, i32 0
  %247 = load %union.rec*, %union.rec** %opred607, align 8
  store %union.rec* %247, %union.rec** @zz_tmp, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1608 = bitcast %union.rec* %248 to %struct.word_type*
  %olist609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1608, i32 0, i32 0
  %arrayidx610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist609, i32 0, i64 0
  %opred611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx610, i32 0, i32 0
  %249 = load %union.rec*, %union.rec** %opred611, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1612 = bitcast %union.rec* %250 to %struct.word_type*
  %olist613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1612, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist613, i32 0, i64 0
  %opred615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx614, i32 0, i32 0
  store %union.rec* %249, %union.rec** %opred615, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1616 = bitcast %union.rec* %252 to %struct.word_type*
  %olist617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1616, i32 0, i32 0
  %arrayidx618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist617, i32 0, i64 0
  %opred619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx618, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred619, align 8
  %os1620 = bitcast %union.rec* %253 to %struct.word_type*
  %olist621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist621, i32 0, i64 0
  %osucc623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx622, i32 0, i32 1
  store %union.rec* %251, %union.rec** %osucc623, align 8
  %254 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1624 = bitcast %union.rec* %255 to %struct.word_type*
  %olist625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 0
  %arrayidx626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist625, i32 0, i64 0
  %opred627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx626, i32 0, i32 0
  store %union.rec* %254, %union.rec** %opred627, align 8
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  %257 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1628 = bitcast %union.rec* %257 to %struct.word_type*
  %olist629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1628, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist629, i32 0, i64 0
  %osucc631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx630, i32 0, i32 1
  store %union.rec* %256, %union.rec** %osucc631, align 8
  br label %cond.end.632

cond.end.632:                                     ; preds = %cond.false.603, %cond.true.602
  %cond633 = phi %union.rec* [ %245, %cond.true.602 ], [ %256, %cond.false.603 ]
  br label %cond.end.634

cond.end.634:                                     ; preds = %cond.end.632, %cond.true.598
  %cond635 = phi %union.rec* [ %243, %cond.true.598 ], [ %cond633, %cond.end.632 ]
  %258 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %258, %union.rec** @zz_res, align 8
  %259 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %259, %union.rec** @zz_hold, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp636 = icmp eq %union.rec* %260, null
  br i1 %cmp636, label %cond.true.638, label %cond.false.639

cond.true.638:                                    ; preds = %cond.end.634
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.674

cond.false.639:                                   ; preds = %cond.end.634
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp640 = icmp eq %union.rec* %262, null
  br i1 %cmp640, label %cond.true.642, label %cond.false.643

cond.true.642:                                    ; preds = %cond.false.639
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.672

cond.false.643:                                   ; preds = %cond.false.639
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1644 = bitcast %union.rec* %264 to %struct.word_type*
  %olist645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1644, i32 0, i32 0
  %arrayidx646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist645, i32 0, i64 1
  %opred647 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx646, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %opred647, align 8
  store %union.rec* %265, %union.rec** @zz_tmp, align 8
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1648 = bitcast %union.rec* %266 to %struct.word_type*
  %olist649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 0
  %arrayidx650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist649, i32 0, i64 1
  %opred651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx650, i32 0, i32 0
  %267 = load %union.rec*, %union.rec** %opred651, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1652 = bitcast %union.rec* %268 to %struct.word_type*
  %olist653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1652, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist653, i32 0, i64 1
  %opred655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx654, i32 0, i32 0
  store %union.rec* %267, %union.rec** %opred655, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1656 = bitcast %union.rec* %270 to %struct.word_type*
  %olist657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1656, i32 0, i32 0
  %arrayidx658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist657, i32 0, i64 1
  %opred659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx658, i32 0, i32 0
  %271 = load %union.rec*, %union.rec** %opred659, align 8
  %os1660 = bitcast %union.rec* %271 to %struct.word_type*
  %olist661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 0
  %arrayidx662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist661, i32 0, i64 1
  %osucc663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx662, i32 0, i32 1
  store %union.rec* %269, %union.rec** %osucc663, align 8
  %272 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1664 = bitcast %union.rec* %273 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 1
  %opred667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 0
  store %union.rec* %272, %union.rec** %opred667, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1668 = bitcast %union.rec* %275 to %struct.word_type*
  %olist669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist669, i32 0, i64 1
  %osucc671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx670, i32 0, i32 1
  store %union.rec* %274, %union.rec** %osucc671, align 8
  br label %cond.end.672

cond.end.672:                                     ; preds = %cond.false.643, %cond.true.642
  %cond673 = phi %union.rec* [ %263, %cond.true.642 ], [ %274, %cond.false.643 ]
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.end.672, %cond.true.638
  %cond675 = phi %union.rec* [ %261, %cond.true.638 ], [ %cond673, %cond.end.672 ]
  %276 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv676 = zext i8 %276 to i32
  store i32 %conv676, i32* @zz_size, align 4
  %conv677 = sext i32 %conv676 to i64
  %cmp678 = icmp uge i64 %conv677, 265
  br i1 %cmp678, label %if.then.680, label %if.else.682

if.then.680:                                      ; preds = %cond.end.674
  %277 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call681 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %277)
  br label %if.end.699

if.else.682:                                      ; preds = %cond.end.674
  %278 = load i32, i32* @zz_size, align 4
  %idxprom683 = sext i32 %278 to i64
  %arrayidx684 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom683
  %279 = load %union.rec*, %union.rec** %arrayidx684, align 8
  %cmp685 = icmp eq %union.rec* %279, null
  br i1 %cmp685, label %if.then.687, label %if.else.689

if.then.687:                                      ; preds = %if.else.682
  %280 = load i32, i32* @zz_size, align 4
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call688 = call %union.rec* @GetMemory(i32 %280, %struct.FILE_POS* %281)
  store %union.rec* %call688, %union.rec** @zz_hold, align 8
  br label %if.end.698

if.else.689:                                      ; preds = %if.else.682
  %282 = load i32, i32* @zz_size, align 4
  %idxprom690 = sext i32 %282 to i64
  %arrayidx691 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom690
  %283 = load %union.rec*, %union.rec** %arrayidx691, align 8
  store %union.rec* %283, %union.rec** @zz_hold, align 8
  store %union.rec* %283, %union.rec** @zz_hold, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1692 = bitcast %union.rec* %284 to %struct.word_type*
  %olist693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1692, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist693, i32 0, i64 0
  %opred695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx694, i32 0, i32 0
  %285 = load %union.rec*, %union.rec** %opred695, align 8
  %286 = load i32, i32* @zz_size, align 4
  %idxprom696 = sext i32 %286 to i64
  %arrayidx697 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom696
  store %union.rec* %285, %union.rec** %arrayidx697, align 8
  br label %if.end.698

if.end.698:                                       ; preds = %if.else.689, %if.then.687
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %if.then.680
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1700 = bitcast %union.rec* %287 to %struct.word_type*
  %ou1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 1
  %os11702 = bitcast %union.FIRST_UNION* %ou1701 to %struct.anon*
  %otype703 = getelementptr inbounds %struct.anon, %struct.anon* %os11702, i32 0, i32 0
  store i8 17, i8* %otype703, align 1
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1704 = bitcast %union.rec* %289 to %struct.word_type*
  %olist705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1704, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist705, i32 0, i64 1
  %osucc707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx706, i32 0, i32 1
  store %union.rec* %288, %union.rec** %osucc707, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1708 = bitcast %union.rec* %290 to %struct.word_type*
  %olist709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1708, i32 0, i32 0
  %arrayidx710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist709, i32 0, i64 1
  %opred711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx710, i32 0, i32 0
  store %union.rec* %288, %union.rec** %opred711, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1712 = bitcast %union.rec* %291 to %struct.word_type*
  %olist713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1712, i32 0, i32 0
  %arrayidx714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist713, i32 0, i64 0
  %osucc715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx714, i32 0, i32 1
  store %union.rec* %288, %union.rec** %osucc715, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1716 = bitcast %union.rec* %292 to %struct.word_type*
  %olist717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1716, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist717, i32 0, i64 0
  %opred719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx718, i32 0, i32 0
  store %union.rec* %288, %union.rec** %opred719, align 8
  store %union.rec* %288, %union.rec** %hold_env, align 8
  %293 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv720 = zext i8 %293 to i32
  store i32 %conv720, i32* @zz_size, align 4
  %conv721 = sext i32 %conv720 to i64
  %cmp722 = icmp uge i64 %conv721, 265
  br i1 %cmp722, label %if.then.724, label %if.else.726

if.then.724:                                      ; preds = %if.end.699
  %294 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call725 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %294)
  br label %if.end.743

if.else.726:                                      ; preds = %if.end.699
  %295 = load i32, i32* @zz_size, align 4
  %idxprom727 = sext i32 %295 to i64
  %arrayidx728 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom727
  %296 = load %union.rec*, %union.rec** %arrayidx728, align 8
  %cmp729 = icmp eq %union.rec* %296, null
  br i1 %cmp729, label %if.then.731, label %if.else.733

if.then.731:                                      ; preds = %if.else.726
  %297 = load i32, i32* @zz_size, align 4
  %298 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call732 = call %union.rec* @GetMemory(i32 %297, %struct.FILE_POS* %298)
  store %union.rec* %call732, %union.rec** @zz_hold, align 8
  br label %if.end.742

if.else.733:                                      ; preds = %if.else.726
  %299 = load i32, i32* @zz_size, align 4
  %idxprom734 = sext i32 %299 to i64
  %arrayidx735 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom734
  %300 = load %union.rec*, %union.rec** %arrayidx735, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1736 = bitcast %union.rec* %301 to %struct.word_type*
  %olist737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1736, i32 0, i32 0
  %arrayidx738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist737, i32 0, i64 0
  %opred739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx738, i32 0, i32 0
  %302 = load %union.rec*, %union.rec** %opred739, align 8
  %303 = load i32, i32* @zz_size, align 4
  %idxprom740 = sext i32 %303 to i64
  %arrayidx741 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom740
  store %union.rec* %302, %union.rec** %arrayidx741, align 8
  br label %if.end.742

if.end.742:                                       ; preds = %if.else.733, %if.then.731
  br label %if.end.743

if.end.743:                                       ; preds = %if.end.742, %if.then.724
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1744 = bitcast %union.rec* %304 to %struct.word_type*
  %ou1745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1744, i32 0, i32 1
  %os11746 = bitcast %union.FIRST_UNION* %ou1745 to %struct.anon*
  %otype747 = getelementptr inbounds %struct.anon, %struct.anon* %os11746, i32 0, i32 0
  store i8 0, i8* %otype747, align 1
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1748 = bitcast %union.rec* %306 to %struct.word_type*
  %olist749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1748, i32 0, i32 0
  %arrayidx750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist749, i32 0, i64 1
  %osucc751 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx750, i32 0, i32 1
  store %union.rec* %305, %union.rec** %osucc751, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1752 = bitcast %union.rec* %307 to %struct.word_type*
  %olist753 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1752, i32 0, i32 0
  %arrayidx754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist753, i32 0, i64 1
  %opred755 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx754, i32 0, i32 0
  store %union.rec* %305, %union.rec** %opred755, align 8
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1756 = bitcast %union.rec* %308 to %struct.word_type*
  %olist757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1756, i32 0, i32 0
  %arrayidx758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist757, i32 0, i64 0
  %osucc759 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx758, i32 0, i32 1
  store %union.rec* %305, %union.rec** %osucc759, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1760 = bitcast %union.rec* %309 to %struct.word_type*
  %olist761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1760, i32 0, i32 0
  %arrayidx762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist761, i32 0, i64 0
  %opred763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx762, i32 0, i32 0
  store %union.rec* %305, %union.rec** %opred763, align 8
  store %union.rec* %305, %union.rec** @xx_link, align 8
  %310 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %310, %union.rec** @zz_res, align 8
  %311 = load %union.rec*, %union.rec** %hold_env, align 8
  store %union.rec* %311, %union.rec** @zz_hold, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp764 = icmp eq %union.rec* %312, null
  br i1 %cmp764, label %cond.true.766, label %cond.false.767

cond.true.766:                                    ; preds = %if.end.743
  %313 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.802

cond.false.767:                                   ; preds = %if.end.743
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp768 = icmp eq %union.rec* %314, null
  br i1 %cmp768, label %cond.true.770, label %cond.false.771

cond.true.770:                                    ; preds = %cond.false.767
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.800

cond.false.771:                                   ; preds = %cond.false.767
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1772 = bitcast %union.rec* %316 to %struct.word_type*
  %olist773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1772, i32 0, i32 0
  %arrayidx774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist773, i32 0, i64 0
  %opred775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx774, i32 0, i32 0
  %317 = load %union.rec*, %union.rec** %opred775, align 8
  store %union.rec* %317, %union.rec** @zz_tmp, align 8
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1776 = bitcast %union.rec* %318 to %struct.word_type*
  %olist777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 0
  %arrayidx778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist777, i32 0, i64 0
  %opred779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx778, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %opred779, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1780 = bitcast %union.rec* %320 to %struct.word_type*
  %olist781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1780, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist781, i32 0, i64 0
  %opred783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx782, i32 0, i32 0
  store %union.rec* %319, %union.rec** %opred783, align 8
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %322 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1784 = bitcast %union.rec* %322 to %struct.word_type*
  %olist785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 0
  %arrayidx786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist785, i32 0, i64 0
  %opred787 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx786, i32 0, i32 0
  %323 = load %union.rec*, %union.rec** %opred787, align 8
  %os1788 = bitcast %union.rec* %323 to %struct.word_type*
  %olist789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1788, i32 0, i32 0
  %arrayidx790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist789, i32 0, i64 0
  %osucc791 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx790, i32 0, i32 1
  store %union.rec* %321, %union.rec** %osucc791, align 8
  %324 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1792 = bitcast %union.rec* %325 to %struct.word_type*
  %olist793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 0
  %arrayidx794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist793, i32 0, i64 0
  %opred795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx794, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred795, align 8
  %326 = load %union.rec*, %union.rec** @zz_res, align 8
  %327 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1796 = bitcast %union.rec* %327 to %struct.word_type*
  %olist797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 0
  %arrayidx798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist797, i32 0, i64 0
  %osucc799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx798, i32 0, i32 1
  store %union.rec* %326, %union.rec** %osucc799, align 8
  br label %cond.end.800

cond.end.800:                                     ; preds = %cond.false.771, %cond.true.770
  %cond801 = phi %union.rec* [ %315, %cond.true.770 ], [ %326, %cond.false.771 ]
  br label %cond.end.802

cond.end.802:                                     ; preds = %cond.end.800, %cond.true.766
  %cond803 = phi %union.rec* [ %313, %cond.true.766 ], [ %cond801, %cond.end.800 ]
  %328 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %328, %union.rec** @zz_res, align 8
  %329 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %329, %union.rec** @zz_hold, align 8
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp804 = icmp eq %union.rec* %330, null
  br i1 %cmp804, label %cond.true.806, label %cond.false.807

cond.true.806:                                    ; preds = %cond.end.802
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.842

cond.false.807:                                   ; preds = %cond.end.802
  %332 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp808 = icmp eq %union.rec* %332, null
  br i1 %cmp808, label %cond.true.810, label %cond.false.811

cond.true.810:                                    ; preds = %cond.false.807
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.840

cond.false.811:                                   ; preds = %cond.false.807
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1812 = bitcast %union.rec* %334 to %struct.word_type*
  %olist813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1812, i32 0, i32 0
  %arrayidx814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist813, i32 0, i64 1
  %opred815 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx814, i32 0, i32 0
  %335 = load %union.rec*, %union.rec** %opred815, align 8
  store %union.rec* %335, %union.rec** @zz_tmp, align 8
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1816 = bitcast %union.rec* %336 to %struct.word_type*
  %olist817 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1816, i32 0, i32 0
  %arrayidx818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist817, i32 0, i64 1
  %opred819 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx818, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %opred819, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1820 = bitcast %union.rec* %338 to %struct.word_type*
  %olist821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1820, i32 0, i32 0
  %arrayidx822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist821, i32 0, i64 1
  %opred823 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx822, i32 0, i32 0
  store %union.rec* %337, %union.rec** %opred823, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1824 = bitcast %union.rec* %340 to %struct.word_type*
  %olist825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1824, i32 0, i32 0
  %arrayidx826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist825, i32 0, i64 1
  %opred827 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx826, i32 0, i32 0
  %341 = load %union.rec*, %union.rec** %opred827, align 8
  %os1828 = bitcast %union.rec* %341 to %struct.word_type*
  %olist829 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1828, i32 0, i32 0
  %arrayidx830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist829, i32 0, i64 1
  %osucc831 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx830, i32 0, i32 1
  store %union.rec* %339, %union.rec** %osucc831, align 8
  %342 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %343 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1832 = bitcast %union.rec* %343 to %struct.word_type*
  %olist833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1832, i32 0, i32 0
  %arrayidx834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist833, i32 0, i64 1
  %opred835 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx834, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred835, align 8
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  %345 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1836 = bitcast %union.rec* %345 to %struct.word_type*
  %olist837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1836, i32 0, i32 0
  %arrayidx838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist837, i32 0, i64 1
  %osucc839 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx838, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc839, align 8
  br label %cond.end.840

cond.end.840:                                     ; preds = %cond.false.811, %cond.true.810
  %cond841 = phi %union.rec* [ %333, %cond.true.810 ], [ %344, %cond.false.811 ]
  br label %cond.end.842

cond.end.842:                                     ; preds = %cond.end.840, %cond.true.806
  %cond843 = phi %union.rec* [ %331, %cond.true.806 ], [ %cond841, %cond.end.840 ]
  %346 = load %union.rec*, %union.rec** %key, align 8
  %347 = load %union.rec*, %union.rec** %env, align 8
  %348 = load %union.rec*, %union.rec** %val, align 8
  %os2844 = bitcast %union.rec* %348 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2844, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %arraydecay = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nbt, i32 0, i32 0
  %arraydecay845 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nft, i32 0, i32 0
  %call846 = call %union.rec* @Manifest(%union.rec* %346, %union.rec* %347, %struct.STYLE* %osave_style, %union.rec** %arraydecay, %union.rec** %arraydecay845, %union.rec** %ntarget, %union.rec** %crs, i32 0, i32 1, %union.rec** %nenclose, i32 0)
  store %union.rec* %call846, %union.rec** %key, align 8
  %349 = load %union.rec*, %union.rec** %key, align 8
  %call847 = call %union.rec* @ReplaceWithTidy(%union.rec* %349, i32 1)
  store %union.rec* %call847, %union.rec** %key, align 8
  %350 = load %union.rec*, %union.rec** %env, align 8
  %os1848 = bitcast %union.rec* %350 to %struct.word_type*
  %olist849 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1848, i32 0, i32 0
  %arrayidx850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist849, i32 0, i64 0
  %osucc851 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx850, i32 0, i32 1
  %351 = load %union.rec*, %union.rec** %osucc851, align 8
  store %union.rec* %351, %union.rec** @xx_link, align 8
  %352 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %352, %union.rec** @zz_hold, align 8
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1852 = bitcast %union.rec* %353 to %struct.word_type*
  %olist853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1852, i32 0, i32 0
  %arrayidx854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist853, i32 0, i64 1
  %osucc855 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx854, i32 0, i32 1
  %354 = load %union.rec*, %union.rec** %osucc855, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp856 = icmp eq %union.rec* %354, %355
  br i1 %cmp856, label %cond.true.858, label %cond.false.859

cond.true.858:                                    ; preds = %cond.end.842
  br label %cond.end.888

cond.false.859:                                   ; preds = %cond.end.842
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1860 = bitcast %union.rec* %356 to %struct.word_type*
  %olist861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1860, i32 0, i32 0
  %arrayidx862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist861, i32 0, i64 1
  %osucc863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx862, i32 0, i32 1
  %357 = load %union.rec*, %union.rec** %osucc863, align 8
  store %union.rec* %357, %union.rec** @zz_res, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1864 = bitcast %union.rec* %358 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 1
  %opred867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 0
  %359 = load %union.rec*, %union.rec** %opred867, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1868 = bitcast %union.rec* %360 to %struct.word_type*
  %olist869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1868, i32 0, i32 0
  %arrayidx870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist869, i32 0, i64 1
  %opred871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx870, i32 0, i32 0
  store %union.rec* %359, %union.rec** %opred871, align 8
  %361 = load %union.rec*, %union.rec** @zz_res, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1872 = bitcast %union.rec* %362 to %struct.word_type*
  %olist873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 0
  %arrayidx874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist873, i32 0, i64 1
  %opred875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx874, i32 0, i32 0
  %363 = load %union.rec*, %union.rec** %opred875, align 8
  %os1876 = bitcast %union.rec* %363 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 1
  %osucc879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 1
  store %union.rec* %361, %union.rec** %osucc879, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1880 = bitcast %union.rec* %365 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 1
  %osucc883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 1
  store %union.rec* %364, %union.rec** %osucc883, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1884 = bitcast %union.rec* %366 to %struct.word_type*
  %olist885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1884, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist885, i32 0, i64 1
  %opred887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx886, i32 0, i32 0
  store %union.rec* %364, %union.rec** %opred887, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.888

cond.end.888:                                     ; preds = %cond.false.859, %cond.true.858
  %cond889 = phi %union.rec* [ null, %cond.true.858 ], [ %367, %cond.false.859 ]
  %368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %368, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1890 = bitcast %union.rec* %369 to %struct.word_type*
  %olist891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1890, i32 0, i32 0
  %arrayidx892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist891, i32 0, i64 0
  %osucc893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx892, i32 0, i32 1
  %370 = load %union.rec*, %union.rec** %osucc893, align 8
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp894 = icmp eq %union.rec* %370, %371
  br i1 %cmp894, label %cond.true.896, label %cond.false.897

cond.true.896:                                    ; preds = %cond.end.888
  br label %cond.end.926

cond.false.897:                                   ; preds = %cond.end.888
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1898 = bitcast %union.rec* %372 to %struct.word_type*
  %olist899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1898, i32 0, i32 0
  %arrayidx900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist899, i32 0, i64 0
  %osucc901 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx900, i32 0, i32 1
  %373 = load %union.rec*, %union.rec** %osucc901, align 8
  store %union.rec* %373, %union.rec** @zz_res, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1902 = bitcast %union.rec* %374 to %struct.word_type*
  %olist903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1902, i32 0, i32 0
  %arrayidx904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist903, i32 0, i64 0
  %opred905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx904, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred905, align 8
  %376 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1906 = bitcast %union.rec* %376 to %struct.word_type*
  %olist907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1906, i32 0, i32 0
  %arrayidx908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist907, i32 0, i64 0
  %opred909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx908, i32 0, i32 0
  store %union.rec* %375, %union.rec** %opred909, align 8
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1910 = bitcast %union.rec* %378 to %struct.word_type*
  %olist911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1910, i32 0, i32 0
  %arrayidx912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist911, i32 0, i64 0
  %opred913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx912, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred913, align 8
  %os1914 = bitcast %union.rec* %379 to %struct.word_type*
  %olist915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1914, i32 0, i32 0
  %arrayidx916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist915, i32 0, i64 0
  %osucc917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx916, i32 0, i32 1
  store %union.rec* %377, %union.rec** %osucc917, align 8
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1918 = bitcast %union.rec* %381 to %struct.word_type*
  %olist919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist919, i32 0, i64 0
  %osucc921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx920, i32 0, i32 1
  store %union.rec* %380, %union.rec** %osucc921, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1922 = bitcast %union.rec* %382 to %struct.word_type*
  %olist923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1922, i32 0, i32 0
  %arrayidx924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist923, i32 0, i64 0
  %opred925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx924, i32 0, i32 0
  store %union.rec* %380, %union.rec** %opred925, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.926

cond.end.926:                                     ; preds = %cond.false.897, %cond.true.896
  %cond927 = phi %union.rec* [ null, %cond.true.896 ], [ %383, %cond.false.897 ]
  %384 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %384, %union.rec** @zz_hold, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %385, %union.rec** @zz_hold, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1928 = bitcast %union.rec* %386 to %struct.word_type*
  %ou1929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1928, i32 0, i32 1
  %os11930 = bitcast %union.FIRST_UNION* %ou1929 to %struct.anon*
  %otype931 = getelementptr inbounds %struct.anon, %struct.anon* %os11930, i32 0, i32 0
  %387 = load i8, i8* %otype931, align 1
  %conv932 = zext i8 %387 to i32
  %cmp933 = icmp eq i32 %conv932, 11
  br i1 %cmp933, label %cond.true.943, label %lor.lhs.false.935

lor.lhs.false.935:                                ; preds = %cond.end.926
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1936 = bitcast %union.rec* %388 to %struct.word_type*
  %ou1937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1936, i32 0, i32 1
  %os11938 = bitcast %union.FIRST_UNION* %ou1937 to %struct.anon*
  %otype939 = getelementptr inbounds %struct.anon, %struct.anon* %os11938, i32 0, i32 0
  %389 = load i8, i8* %otype939, align 1
  %conv940 = zext i8 %389 to i32
  %cmp941 = icmp eq i32 %conv940, 12
  br i1 %cmp941, label %cond.true.943, label %cond.false.949

cond.true.943:                                    ; preds = %lor.lhs.false.935, %cond.end.926
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1944 = bitcast %union.rec* %390 to %struct.word_type*
  %ou1945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1944, i32 0, i32 1
  %os11946 = bitcast %union.FIRST_UNION* %ou1945 to %struct.anon*
  %orec_size947 = getelementptr inbounds %struct.anon, %struct.anon* %os11946, i32 0, i32 1
  %391 = load i8, i8* %orec_size947, align 1
  %conv948 = zext i8 %391 to i32
  br label %cond.end.957

cond.false.949:                                   ; preds = %lor.lhs.false.935
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1950 = bitcast %union.rec* %392 to %struct.word_type*
  %ou1951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1950, i32 0, i32 1
  %os11952 = bitcast %union.FIRST_UNION* %ou1951 to %struct.anon*
  %otype953 = getelementptr inbounds %struct.anon, %struct.anon* %os11952, i32 0, i32 0
  %393 = load i8, i8* %otype953, align 1
  %idxprom954 = zext i8 %393 to i64
  %arrayidx955 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom954
  %394 = load i8, i8* %arrayidx955, align 1
  %conv956 = zext i8 %394 to i32
  br label %cond.end.957

cond.end.957:                                     ; preds = %cond.false.949, %cond.true.943
  %cond958 = phi i32 [ %conv948, %cond.true.943 ], [ %conv956, %cond.false.949 ]
  store i32 %cond958, i32* @zz_size, align 4
  %395 = load i32, i32* @zz_size, align 4
  %idxprom959 = sext i32 %395 to i64
  %arrayidx960 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom959
  %396 = load %union.rec*, %union.rec** %arrayidx960, align 8
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1961 = bitcast %union.rec* %397 to %struct.word_type*
  %olist962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1961, i32 0, i32 0
  %arrayidx963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist962, i32 0, i64 0
  %opred964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx963, i32 0, i32 0
  store %union.rec* %396, %union.rec** %opred964, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = load i32, i32* @zz_size, align 4
  %idxprom965 = sext i32 %399 to i64
  %arrayidx966 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom965
  store %union.rec* %398, %union.rec** %arrayidx966, align 8
  %400 = load %union.rec*, %union.rec** %hold_env, align 8
  %call967 = call i32 @DisposeObject(%union.rec* %400)
  br label %if.end.968

if.end.968:                                       ; preds = %cond.end.957, %for.end.276
  br label %for.inc.969

for.inc.969:                                      ; preds = %if.end.968
  %401 = load %union.rec*, %union.rec** %link, align 8
  %os1970 = bitcast %union.rec* %401 to %struct.word_type*
  %olist971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1970, i32 0, i32 0
  %arrayidx972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist971, i32 0, i64 0
  %osucc973 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx972, i32 0, i32 1
  %402 = load %union.rec*, %union.rec** %osucc973, align 8
  store %union.rec* %402, %union.rec** %link, align 8
  br label %for.cond.252

for.end.974:                                      ; preds = %for.cond.252
  br label %if.end.975

if.end.975:                                       ; preds = %for.end.974, %if.end.239
  %403 = load %union.rec*, %union.rec** %val, align 8
  %os1976 = bitcast %union.rec* %403 to %struct.word_type*
  %ou1977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1976, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1977 to %struct.FILE_POS*
  %call978 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %ofpos)
  store i16 %call978, i16* %dfnum, align 2
  %404 = load %union.rec*, %union.rec** %val, align 8
  %405 = load i16, i16* %dfnum, align 2
  call void @AppendToFile(%union.rec* %404, i16 zeroext %405, i32* %dfpos, i32* %dlnum)
  %406 = load %union.rec*, %union.rec** %key, align 8
  %cmp979 = icmp eq %union.rec* %406, null
  br i1 %cmp979, label %if.then.981, label %if.else.988

if.then.981:                                      ; preds = %if.end.975
  %407 = load %union.rec*, %union.rec** %cs, align 8
  %os7 = bitcast %union.rec* %407 to %struct.cr_type*
  %ogall_seq = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 8
  %408 = load i32, i32* %ogall_seq, align 4
  %inc = add nsw i32 %408, 1
  store i32 %inc, i32* %ogall_seq, align 4
  %arraydecay982 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %409 = load %union.rec*, %union.rec** %cs, align 8
  %os7983 = bitcast %union.rec* %409 to %struct.cr_type*
  %ogall_seq984 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7983, i32 0, i32 8
  %410 = load i32, i32* %ogall_seq984, align 4
  %call985 = call i8* @StringFiveInt(i32 %410)
  %call986 = call i8* @strcpy(i8* %arraydecay982, i8* %call985) #5
  %arraydecay987 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay987, i8** %seq, align 8
  br label %if.end.1026

if.else.988:                                      ; preds = %if.end.975
  %411 = load %union.rec*, %union.rec** %key, align 8
  %os1989 = bitcast %union.rec* %411 to %struct.word_type*
  %ou1990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1989, i32 0, i32 1
  %os11991 = bitcast %union.FIRST_UNION* %ou1990 to %struct.anon*
  %otype992 = getelementptr inbounds %struct.anon, %struct.anon* %os11991, i32 0, i32 0
  %412 = load i8, i8* %otype992, align 1
  %conv993 = zext i8 %412 to i32
  %cmp994 = icmp eq i32 %conv993, 11
  br i1 %cmp994, label %if.else.1009, label %lor.lhs.false.996

lor.lhs.false.996:                                ; preds = %if.else.988
  %413 = load %union.rec*, %union.rec** %key, align 8
  %os1997 = bitcast %union.rec* %413 to %struct.word_type*
  %ou1998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1997, i32 0, i32 1
  %os11999 = bitcast %union.FIRST_UNION* %ou1998 to %struct.anon*
  %otype1000 = getelementptr inbounds %struct.anon, %struct.anon* %os11999, i32 0, i32 0
  %414 = load i8, i8* %otype1000, align 1
  %conv1001 = zext i8 %414 to i32
  %cmp1002 = icmp eq i32 %conv1001, 12
  br i1 %cmp1002, label %if.else.1009, label %if.then.1004

if.then.1004:                                     ; preds = %lor.lhs.false.996
  %415 = load %union.rec*, %union.rec** %key, align 8
  %os11005 = bitcast %union.rec* %415 to %struct.word_type*
  %ou11006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11005, i32 0, i32 1
  %ofpos1007 = bitcast %union.FIRST_UNION* %ou11006 to %struct.FILE_POS*
  %call1008 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1007, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %seq, align 8
  br label %if.end.1025

if.else.1009:                                     ; preds = %lor.lhs.false.996, %if.else.988
  %416 = load %union.rec*, %union.rec** %key, align 8
  %os11010 = bitcast %union.rec* %416 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os11010, i32 0, i32 4
  %arraydecay1011 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call1012 = call i32 @strcmp(i8* %arraydecay1011, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1013 = icmp eq i32 %call1012, 0
  br i1 %cmp1013, label %if.then.1015, label %if.else.1020

if.then.1015:                                     ; preds = %if.else.1009
  %417 = load %union.rec*, %union.rec** %key, align 8
  %os11016 = bitcast %union.rec* %417 to %struct.word_type*
  %ou11017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11016, i32 0, i32 1
  %ofpos1018 = bitcast %union.FIRST_UNION* %ou11017 to %struct.FILE_POS*
  %call1019 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1018, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %seq, align 8
  br label %if.end.1024

if.else.1020:                                     ; preds = %if.else.1009
  %418 = load %union.rec*, %union.rec** %key, align 8
  %os11021 = bitcast %union.rec* %418 to %struct.word_type*
  %ostring1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 4
  %arraydecay1023 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1022, i32 0, i32 0
  store i8* %arraydecay1023, i8** %seq, align 8
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.else.1020, %if.then.1015
  br label %if.end.1025

if.end.1025:                                      ; preds = %if.end.1024, %if.then.1004
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.end.1025, %if.then.981
  %419 = load i32, i32* %ctype, align 4
  %cmp1027 = icmp eq i32 %419, 133
  br i1 %cmp1027, label %if.then.1029, label %if.else.1094

if.then.1029:                                     ; preds = %if.end.1026
  %420 = load %union.rec*, %union.rec** %cs, align 8
  %os71030 = bitcast %union.rec* %420 to %struct.cr_type*
  %ogall_tag = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71030, i32 0, i32 10
  %421 = load %union.rec*, %union.rec** %ogall_tag, align 8
  %cmp1031 = icmp eq %union.rec* %421, null
  br i1 %cmp1031, label %if.then.1033, label %if.end.1057

if.then.1033:                                     ; preds = %if.then.1029
  %422 = load i32, i32* %ctype, align 4
  %cmp1034 = icmp eq i32 %422, 133
  br i1 %cmp1034, label %if.then.1036, label %if.else.1043

if.then.1036:                                     ; preds = %if.then.1033
  %423 = load %union.rec*, %union.rec** %val, align 8
  %os11037 = bitcast %union.rec* %423 to %struct.word_type*
  %ou11038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 1
  %ofpos1039 = bitcast %union.FIRST_UNION* %ou11038 to %struct.FILE_POS*
  %424 = load %union.rec*, %union.rec** %sym, align 8
  %call1040 = call i8* @SymName(%union.rec* %424)
  %425 = load %union.rec*, %union.rec** %sym, align 8
  %call1041 = call i8* @SymName(%union.rec* %425)
  %call1042 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1039, i8* %call1040, i8* %call1041, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1050

if.else.1043:                                     ; preds = %if.then.1033
  %426 = load %union.rec*, %union.rec** %val, align 8
  %os11044 = bitcast %union.rec* %426 to %struct.word_type*
  %ou11045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11044, i32 0, i32 1
  %ofpos1046 = bitcast %union.FIRST_UNION* %ou11045 to %struct.FILE_POS*
  %427 = load %union.rec*, %union.rec** %sym, align 8
  %call1047 = call i8* @SymName(%union.rec* %427)
  %428 = load %union.rec*, %union.rec** %sym, align 8
  %call1048 = call i8* @SymName(%union.rec* %428)
  %call1049 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1046, i8* %call1047, i8* %call1048, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.1050

if.end.1050:                                      ; preds = %if.else.1043, %if.then.1036
  %429 = load %union.rec*, %union.rec** %val, align 8
  %os11051 = bitcast %union.rec* %429 to %struct.word_type*
  %ou11052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11051, i32 0, i32 1
  %ofpos1053 = bitcast %union.FIRST_UNION* %ou11052 to %struct.FILE_POS*
  %call1054 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %ofpos1053)
  %430 = load %union.rec*, %union.rec** %cs, align 8
  %os71055 = bitcast %union.rec* %430 to %struct.cr_type*
  %ogall_tag1056 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71055, i32 0, i32 10
  store %union.rec* %call1054, %union.rec** %ogall_tag1056, align 8
  br label %if.end.1057

if.end.1057:                                      ; preds = %if.end.1050, %if.then.1029
  %431 = load %union.rec*, %union.rec** %cs, align 8
  %os71058 = bitcast %union.rec* %431 to %struct.cr_type*
  %ogall_tag1059 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71058, i32 0, i32 10
  %432 = load %union.rec*, %union.rec** %ogall_tag1059, align 8
  %os11060 = bitcast %union.rec* %432 to %struct.word_type*
  %ou11061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 1
  %os111062 = bitcast %union.FIRST_UNION* %ou11061 to %struct.anon*
  %otype1063 = getelementptr inbounds %struct.anon, %struct.anon* %os111062, i32 0, i32 0
  %433 = load i8, i8* %otype1063, align 1
  %conv1064 = zext i8 %433 to i32
  %cmp1065 = icmp eq i32 %conv1064, 11
  br i1 %cmp1065, label %land.lhs.true, label %lor.lhs.false.1067

lor.lhs.false.1067:                               ; preds = %if.end.1057
  %434 = load %union.rec*, %union.rec** %cs, align 8
  %os71068 = bitcast %union.rec* %434 to %struct.cr_type*
  %ogall_tag1069 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71068, i32 0, i32 10
  %435 = load %union.rec*, %union.rec** %ogall_tag1069, align 8
  %os11070 = bitcast %union.rec* %435 to %struct.word_type*
  %ou11071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11070, i32 0, i32 1
  %os111072 = bitcast %union.FIRST_UNION* %ou11071 to %struct.anon*
  %otype1073 = getelementptr inbounds %struct.anon, %struct.anon* %os111072, i32 0, i32 0
  %436 = load i8, i8* %otype1073, align 1
  %conv1074 = zext i8 %436 to i32
  %cmp1075 = icmp eq i32 %conv1074, 12
  br i1 %cmp1075, label %land.lhs.true, label %if.then.1085

land.lhs.true:                                    ; preds = %lor.lhs.false.1067, %if.end.1057
  %437 = load %union.rec*, %union.rec** %cs, align 8
  %os71077 = bitcast %union.rec* %437 to %struct.cr_type*
  %ogall_tag1078 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71077, i32 0, i32 10
  %438 = load %union.rec*, %union.rec** %ogall_tag1078, align 8
  %os11079 = bitcast %union.rec* %438 to %struct.word_type*
  %ostring1080 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11079, i32 0, i32 4
  %arraydecay1081 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1080, i32 0, i32 0
  %call1082 = call i32 @strcmp(i8* %arraydecay1081, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1083 = icmp eq i32 %call1082, 0
  br i1 %cmp1083, label %if.then.1085, label %if.end.1087

if.then.1085:                                     ; preds = %land.lhs.true, %lor.lhs.false.1067
  %439 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1086 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %439, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.1087

if.end.1087:                                      ; preds = %if.then.1085, %land.lhs.true
  %440 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %441 = load %union.rec*, %union.rec** %sym, align 8
  %442 = load %union.rec*, %union.rec** %cs, align 8
  %os71088 = bitcast %union.rec* %442 to %struct.cr_type*
  %ogall_tag1089 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71088, i32 0, i32 10
  %443 = load %union.rec*, %union.rec** %ogall_tag1089, align 8
  %os11090 = bitcast %union.rec* %443 to %struct.word_type*
  %ostring1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 4
  %arraydecay1092 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1091, i32 0, i32 0
  %444 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %445 = load i8*, i8** %seq, align 8
  %446 = load i16, i16* %dfnum, align 2
  %447 = load i32, i32* %dfpos, align 4
  %conv1093 = sext i32 %447 to i64
  %448 = load i32, i32* %dlnum, align 4
  call void @DbInsert(%union.rec* %440, i32 1, %union.rec* %441, i8* %arraydecay1092, %struct.FILE_POS* %444, i8* %445, i16 zeroext %446, i64 %conv1093, i32 %448, i32 0)
  br label %if.end.1236

if.else.1094:                                     ; preds = %if.end.1026
  %449 = load i8*, i8** %seq, align 8
  %450 = load %union.rec*, %union.rec** %val, align 8
  %os11095 = bitcast %union.rec* %450 to %struct.word_type*
  %ou11096 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11095, i32 0, i32 1
  %ofpos1097 = bitcast %union.FIRST_UNION* %ou11096 to %struct.FILE_POS*
  %call1098 = call %union.rec* @MakeWord(i32 11, i8* %449, %struct.FILE_POS* %ofpos1097)
  store %union.rec* %call1098, %union.rec** %tmp, align 8
  %451 = load i32, i32* %ctype, align 4
  %conv1099 = trunc i32 %451 to i8
  %452 = load %union.rec*, %union.rec** %tmp, align 8
  %os11100 = bitcast %union.rec* %452 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11100, i32 0, i32 3
  %os33 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.8*
  %ocs_type = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33, i32 0, i32 0
  store i8 %conv1099, i8* %ocs_type, align 1
  %453 = load i16, i16* %dfnum, align 2
  %454 = load %union.rec*, %union.rec** %tmp, align 8
  %os11101 = bitcast %union.rec* %454 to %struct.word_type*
  %ou31102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11101, i32 0, i32 3
  %os331103 = bitcast %union.THIRD_UNION* %ou31102 to %struct.anon.8*
  %ocs_fnum = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331103, i32 0, i32 1
  store i16 %453, i16* %ocs_fnum, align 2
  %455 = load i32, i32* %dfpos, align 4
  %456 = load %union.rec*, %union.rec** %tmp, align 8
  %os11104 = bitcast %union.rec* %456 to %struct.word_type*
  %ou31105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11104, i32 0, i32 3
  %os331106 = bitcast %union.THIRD_UNION* %ou31105 to %struct.anon.8*
  %ocs_pos = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331106, i32 0, i32 2
  store i32 %455, i32* %ocs_pos, align 4
  %457 = load i32, i32* %dlnum, align 4
  %458 = load %union.rec*, %union.rec** %tmp, align 8
  %os11107 = bitcast %union.rec* %458 to %struct.word_type*
  %ou31108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11107, i32 0, i32 3
  %os331109 = bitcast %union.THIRD_UNION* %ou31108 to %struct.anon.8*
  %ocs_lnum = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331109, i32 0, i32 3
  store i32 %457, i32* %ocs_lnum, align 4
  %459 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1110 = zext i8 %459 to i32
  store i32 %conv1110, i32* @zz_size, align 4
  %conv1111 = sext i32 %conv1110 to i64
  %cmp1112 = icmp uge i64 %conv1111, 265
  br i1 %cmp1112, label %if.then.1114, label %if.else.1116

if.then.1114:                                     ; preds = %if.else.1094
  %460 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1115 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %460)
  br label %if.end.1133

if.else.1116:                                     ; preds = %if.else.1094
  %461 = load i32, i32* @zz_size, align 4
  %idxprom1117 = sext i32 %461 to i64
  %arrayidx1118 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1117
  %462 = load %union.rec*, %union.rec** %arrayidx1118, align 8
  %cmp1119 = icmp eq %union.rec* %462, null
  br i1 %cmp1119, label %if.then.1121, label %if.else.1123

if.then.1121:                                     ; preds = %if.else.1116
  %463 = load i32, i32* @zz_size, align 4
  %464 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1122 = call %union.rec* @GetMemory(i32 %463, %struct.FILE_POS* %464)
  store %union.rec* %call1122, %union.rec** @zz_hold, align 8
  br label %if.end.1132

if.else.1123:                                     ; preds = %if.else.1116
  %465 = load i32, i32* @zz_size, align 4
  %idxprom1124 = sext i32 %465 to i64
  %arrayidx1125 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1124
  %466 = load %union.rec*, %union.rec** %arrayidx1125, align 8
  store %union.rec* %466, %union.rec** @zz_hold, align 8
  store %union.rec* %466, %union.rec** @zz_hold, align 8
  %467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11126 = bitcast %union.rec* %467 to %struct.word_type*
  %olist1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1127, i32 0, i64 0
  %opred1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1128, i32 0, i32 0
  %468 = load %union.rec*, %union.rec** %opred1129, align 8
  %469 = load i32, i32* @zz_size, align 4
  %idxprom1130 = sext i32 %469 to i64
  %arrayidx1131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1130
  store %union.rec* %468, %union.rec** %arrayidx1131, align 8
  br label %if.end.1132

if.end.1132:                                      ; preds = %if.else.1123, %if.then.1121
  br label %if.end.1133

if.end.1133:                                      ; preds = %if.end.1132, %if.then.1114
  %470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11134 = bitcast %union.rec* %470 to %struct.word_type*
  %ou11135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11134, i32 0, i32 1
  %os111136 = bitcast %union.FIRST_UNION* %ou11135 to %struct.anon*
  %otype1137 = getelementptr inbounds %struct.anon, %struct.anon* %os111136, i32 0, i32 0
  store i8 0, i8* %otype1137, align 1
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11138 = bitcast %union.rec* %472 to %struct.word_type*
  %olist1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 0
  %arrayidx1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1139, i32 0, i64 1
  %osucc1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1140, i32 0, i32 1
  store %union.rec* %471, %union.rec** %osucc1141, align 8
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11142 = bitcast %union.rec* %473 to %struct.word_type*
  %olist1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11142, i32 0, i32 0
  %arrayidx1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1143, i32 0, i64 1
  %opred1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1144, i32 0, i32 0
  store %union.rec* %471, %union.rec** %opred1145, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11146 = bitcast %union.rec* %474 to %struct.word_type*
  %olist1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 0
  %arrayidx1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1147, i32 0, i64 0
  %osucc1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1148, i32 0, i32 1
  store %union.rec* %471, %union.rec** %osucc1149, align 8
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11150 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11150, i32 0, i32 0
  %arrayidx1152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1151, i32 0, i64 0
  %opred1153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1152, i32 0, i32 0
  store %union.rec* %471, %union.rec** %opred1153, align 8
  store %union.rec* %471, %union.rec** @xx_link, align 8
  %476 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %476, %union.rec** @zz_res, align 8
  %477 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %477, %union.rec** @zz_hold, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1154 = icmp eq %union.rec* %478, null
  br i1 %cmp1154, label %cond.true.1156, label %cond.false.1157

cond.true.1156:                                   ; preds = %if.end.1133
  %479 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1193

cond.false.1157:                                  ; preds = %if.end.1133
  %480 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1158 = icmp eq %union.rec* %480, null
  br i1 %cmp1158, label %cond.true.1160, label %cond.false.1161

cond.true.1160:                                   ; preds = %cond.false.1157
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1191

cond.false.1161:                                  ; preds = %cond.false.1157
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11162 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11162, i32 0, i32 0
  %arrayidx1164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1163, i32 0, i64 0
  %opred1165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1164, i32 0, i32 0
  %483 = load %union.rec*, %union.rec** %opred1165, align 8
  store %union.rec* %483, %union.rec** @zz_tmp, align 8
  %484 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11166 = bitcast %union.rec* %484 to %struct.word_type*
  %olist1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11166, i32 0, i32 0
  %arrayidx1168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1167, i32 0, i64 0
  %opred1169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1168, i32 0, i32 0
  %485 = load %union.rec*, %union.rec** %opred1169, align 8
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11170 = bitcast %union.rec* %486 to %struct.word_type*
  %olist1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11170, i32 0, i32 0
  %arrayidx1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1171, i32 0, i64 0
  %opred1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1172, i32 0, i32 0
  store %union.rec* %485, %union.rec** %opred1173, align 8
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %488 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11174 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11174, i32 0, i32 0
  %arrayidx1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1175, i32 0, i64 0
  %opred1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1176, i32 0, i32 0
  %489 = load %union.rec*, %union.rec** %opred1177, align 8
  %os11178 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1179, i32 0, i64 0
  %osucc1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1180, i32 0, i32 1
  store %union.rec* %487, %union.rec** %osucc1181, align 8
  %490 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %491 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11182 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11182, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1183, i32 0, i64 0
  %opred1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1184, i32 0, i32 0
  store %union.rec* %490, %union.rec** %opred1185, align 8
  %492 = load %union.rec*, %union.rec** @zz_res, align 8
  %493 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11187 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 0
  %osucc1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 1
  store %union.rec* %492, %union.rec** %osucc1190, align 8
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1161, %cond.true.1160
  %cond1192 = phi %union.rec* [ %481, %cond.true.1160 ], [ %492, %cond.false.1161 ]
  br label %cond.end.1193

cond.end.1193:                                    ; preds = %cond.end.1191, %cond.true.1156
  %cond1194 = phi %union.rec* [ %479, %cond.true.1156 ], [ %cond1192, %cond.end.1191 ]
  %494 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %494, %union.rec** @zz_res, align 8
  %495 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %495, %union.rec** @zz_hold, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1195 = icmp eq %union.rec* %496, null
  br i1 %cmp1195, label %cond.true.1197, label %cond.false.1198

cond.true.1197:                                   ; preds = %cond.end.1193
  %497 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1234

cond.false.1198:                                  ; preds = %cond.end.1193
  %498 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1199 = icmp eq %union.rec* %498, null
  br i1 %cmp1199, label %cond.true.1201, label %cond.false.1202

cond.true.1201:                                   ; preds = %cond.false.1198
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1232

cond.false.1202:                                  ; preds = %cond.false.1198
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11203 = bitcast %union.rec* %500 to %struct.word_type*
  %olist1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11203, i32 0, i32 0
  %arrayidx1205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1204, i32 0, i64 1
  %opred1206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1205, i32 0, i32 0
  %501 = load %union.rec*, %union.rec** %opred1206, align 8
  store %union.rec* %501, %union.rec** @zz_tmp, align 8
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11208 = bitcast %union.rec* %502 to %struct.word_type*
  %olist1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11208, i32 0, i32 0
  %arrayidx1210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1209, i32 0, i64 1
  %opred1211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1210, i32 0, i32 0
  %503 = load %union.rec*, %union.rec** %opred1211, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11212 = bitcast %union.rec* %504 to %struct.word_type*
  %olist1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11212, i32 0, i32 0
  %arrayidx1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1213, i32 0, i64 1
  %opred1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1214, i32 0, i32 0
  store %union.rec* %503, %union.rec** %opred1215, align 8
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11216 = bitcast %union.rec* %506 to %struct.word_type*
  %olist1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11216, i32 0, i32 0
  %arrayidx1218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1217, i32 0, i64 1
  %opred1219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1218, i32 0, i32 0
  %507 = load %union.rec*, %union.rec** %opred1219, align 8
  %os11220 = bitcast %union.rec* %507 to %struct.word_type*
  %olist1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11220, i32 0, i32 0
  %arrayidx1222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1221, i32 0, i64 1
  %osucc1223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1222, i32 0, i32 1
  store %union.rec* %505, %union.rec** %osucc1223, align 8
  %508 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %509 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11224 = bitcast %union.rec* %509 to %struct.word_type*
  %olist1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11224, i32 0, i32 0
  %arrayidx1226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1225, i32 0, i64 1
  %opred1227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1226, i32 0, i32 0
  store %union.rec* %508, %union.rec** %opred1227, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %511 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11228 = bitcast %union.rec* %511 to %struct.word_type*
  %olist1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11228, i32 0, i32 0
  %arrayidx1230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1229, i32 0, i64 1
  %osucc1231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1230, i32 0, i32 1
  store %union.rec* %510, %union.rec** %osucc1231, align 8
  br label %cond.end.1232

cond.end.1232:                                    ; preds = %cond.false.1202, %cond.true.1201
  %cond1233 = phi %union.rec* [ %499, %cond.true.1201 ], [ %510, %cond.false.1202 ]
  br label %cond.end.1234

cond.end.1234:                                    ; preds = %cond.end.1232, %cond.true.1197
  %cond1235 = phi %union.rec* [ %497, %cond.true.1197 ], [ %cond1233, %cond.end.1232 ]
  br label %if.end.1236

if.end.1236:                                      ; preds = %cond.end.1234, %if.end.1087
  %512 = load %union.rec*, %union.rec** %val, align 8
  %call1237 = call i32 @DisposeObject(%union.rec* %512)
  %513 = load %union.rec*, %union.rec** %hold_key, align 8
  %cmp1238 = icmp ne %union.rec* %513, null
  br i1 %cmp1238, label %if.then.1240, label %if.end.1242

if.then.1240:                                     ; preds = %if.end.1236
  %514 = load %union.rec*, %union.rec** %hold_key, align 8
  %call1241 = call i32 @DisposeObject(%union.rec* %514)
  br label %if.end.1242

if.end.1242:                                      ; preds = %if.then.1240, %if.end.1236
  br label %sw.epilog.2447

sw.bb.1243:                                       ; preds = %if.end.229
  %515 = load %union.rec*, %union.rec** %cs, align 8
  %os71244 = bitcast %union.rec* %515 to %struct.cr_type*
  %ogall_tag1245 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71244, i32 0, i32 10
  %516 = load %union.rec*, %union.rec** %ogall_tag1245, align 8
  %cmp1246 = icmp ne %union.rec* %516, null
  br i1 %cmp1246, label %if.then.1248, label %if.end.1252

if.then.1248:                                     ; preds = %sw.bb.1243
  %517 = load %union.rec*, %union.rec** %cs, align 8
  %os71249 = bitcast %union.rec* %517 to %struct.cr_type*
  %ogall_tag1250 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71249, i32 0, i32 10
  %518 = load %union.rec*, %union.rec** %ogall_tag1250, align 8
  %call1251 = call i32 @DisposeObject(%union.rec* %518)
  br label %if.end.1252

if.end.1252:                                      ; preds = %if.then.1248, %sw.bb.1243
  %519 = load %union.rec*, %union.rec** %tag, align 8
  %os11253 = bitcast %union.rec* %519 to %struct.word_type*
  %ou11254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11253, i32 0, i32 1
  %os111255 = bitcast %union.FIRST_UNION* %ou11254 to %struct.anon*
  %otype1256 = getelementptr inbounds %struct.anon, %struct.anon* %os111255, i32 0, i32 0
  %520 = load i8, i8* %otype1256, align 1
  %conv1257 = zext i8 %520 to i32
  %cmp1258 = icmp eq i32 %conv1257, 11
  br i1 %cmp1258, label %lor.lhs.false.1268, label %lor.lhs.false.1260

lor.lhs.false.1260:                               ; preds = %if.end.1252
  %521 = load %union.rec*, %union.rec** %tag, align 8
  %os11261 = bitcast %union.rec* %521 to %struct.word_type*
  %ou11262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11261, i32 0, i32 1
  %os111263 = bitcast %union.FIRST_UNION* %ou11262 to %struct.anon*
  %otype1264 = getelementptr inbounds %struct.anon, %struct.anon* %os111263, i32 0, i32 0
  %522 = load i8, i8* %otype1264, align 1
  %conv1265 = zext i8 %522 to i32
  %cmp1266 = icmp eq i32 %conv1265, 12
  br i1 %cmp1266, label %lor.lhs.false.1268, label %if.then.1275

lor.lhs.false.1268:                               ; preds = %lor.lhs.false.1260, %if.end.1252
  %523 = load %union.rec*, %union.rec** %tag, align 8
  %os11269 = bitcast %union.rec* %523 to %struct.word_type*
  %ostring1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11269, i32 0, i32 4
  %arraydecay1271 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1270, i32 0, i32 0
  %call1272 = call i32 @strcmp(i8* %arraydecay1271, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1273 = icmp eq i32 %call1272, 0
  br i1 %cmp1273, label %if.then.1275, label %if.else.1280

if.then.1275:                                     ; preds = %lor.lhs.false.1268, %lor.lhs.false.1260
  %524 = load %union.rec*, %union.rec** %tag, align 8
  %call1276 = call i32 @DisposeObject(%union.rec* %524)
  %525 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1277 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %525)
  %526 = load %union.rec*, %union.rec** %cs, align 8
  %os71278 = bitcast %union.rec* %526 to %struct.cr_type*
  %ogall_tag1279 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71278, i32 0, i32 10
  store %union.rec* %call1277, %union.rec** %ogall_tag1279, align 8
  br label %if.end.1283

if.else.1280:                                     ; preds = %lor.lhs.false.1268
  %527 = load %union.rec*, %union.rec** %tag, align 8
  %528 = load %union.rec*, %union.rec** %cs, align 8
  %os71281 = bitcast %union.rec* %528 to %struct.cr_type*
  %ogall_tag1282 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71281, i32 0, i32 10
  store %union.rec* %527, %union.rec** %ogall_tag1282, align 8
  br label %if.end.1283

if.end.1283:                                      ; preds = %if.else.1280, %if.then.1275
  %529 = load %union.rec*, %union.rec** %cs, align 8
  %os11284 = bitcast %union.rec* %529 to %struct.word_type*
  %olist1285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11284, i32 0, i32 0
  %arrayidx1286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1285, i32 0, i64 0
  %osucc1287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1286, i32 0, i32 1
  %530 = load %union.rec*, %union.rec** %osucc1287, align 8
  store %union.rec* %530, %union.rec** %link, align 8
  br label %for.cond.1288

for.cond.1288:                                    ; preds = %for.inc.1529, %if.end.1283
  %531 = load %union.rec*, %union.rec** %link, align 8
  %532 = load %union.rec*, %union.rec** %cs, align 8
  %cmp1289 = icmp ne %union.rec* %531, %532
  br i1 %cmp1289, label %for.body.1291, label %for.end.1534

for.body.1291:                                    ; preds = %for.cond.1288
  %533 = load %union.rec*, %union.rec** %link, align 8
  %os11292 = bitcast %union.rec* %533 to %struct.word_type*
  %olist1293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11292, i32 0, i32 0
  %arrayidx1294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1293, i32 0, i64 1
  %opred1295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1294, i32 0, i32 0
  %534 = load %union.rec*, %union.rec** %opred1295, align 8
  store %union.rec* %534, %union.rec** %y, align 8
  br label %for.cond.1296

for.cond.1296:                                    ; preds = %for.inc.1305, %for.body.1291
  %535 = load %union.rec*, %union.rec** %y, align 8
  %os11297 = bitcast %union.rec* %535 to %struct.word_type*
  %ou11298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11297, i32 0, i32 1
  %os111299 = bitcast %union.FIRST_UNION* %ou11298 to %struct.anon*
  %otype1300 = getelementptr inbounds %struct.anon, %struct.anon* %os111299, i32 0, i32 0
  %536 = load i8, i8* %otype1300, align 1
  %conv1301 = zext i8 %536 to i32
  %cmp1302 = icmp eq i32 %conv1301, 0
  br i1 %cmp1302, label %for.body.1304, label %for.end.1310

for.body.1304:                                    ; preds = %for.cond.1296
  br label %for.inc.1305

for.inc.1305:                                     ; preds = %for.body.1304
  %537 = load %union.rec*, %union.rec** %y, align 8
  %os11306 = bitcast %union.rec* %537 to %struct.word_type*
  %olist1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1307, i32 0, i64 1
  %opred1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1308, i32 0, i32 0
  %538 = load %union.rec*, %union.rec** %opred1309, align 8
  store %union.rec* %538, %union.rec** %y, align 8
  br label %for.cond.1296

for.end.1310:                                     ; preds = %for.cond.1296
  %539 = load %union.rec*, %union.rec** %y, align 8
  %os11311 = bitcast %union.rec* %539 to %struct.word_type*
  %ou11312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11311, i32 0, i32 1
  %os111313 = bitcast %union.FIRST_UNION* %ou11312 to %struct.anon*
  %otype1314 = getelementptr inbounds %struct.anon, %struct.anon* %os111313, i32 0, i32 0
  %540 = load i8, i8* %otype1314, align 1
  %conv1315 = zext i8 %540 to i32
  %cmp1316 = icmp eq i32 %conv1315, 11
  br i1 %cmp1316, label %land.lhs.true.1326, label %lor.lhs.false.1318

lor.lhs.false.1318:                               ; preds = %for.end.1310
  %541 = load %union.rec*, %union.rec** %y, align 8
  %os11319 = bitcast %union.rec* %541 to %struct.word_type*
  %ou11320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11319, i32 0, i32 1
  %os111321 = bitcast %union.FIRST_UNION* %ou11320 to %struct.anon*
  %otype1322 = getelementptr inbounds %struct.anon, %struct.anon* %os111321, i32 0, i32 0
  %542 = load i8, i8* %otype1322, align 1
  %conv1323 = zext i8 %542 to i32
  %cmp1324 = icmp eq i32 %conv1323, 12
  br i1 %cmp1324, label %land.lhs.true.1326, label %if.then.1333

land.lhs.true.1326:                               ; preds = %lor.lhs.false.1318, %for.end.1310
  %543 = load %union.rec*, %union.rec** %y, align 8
  %os11327 = bitcast %union.rec* %543 to %struct.word_type*
  %ostring1328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11327, i32 0, i32 4
  %arraydecay1329 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1328, i32 0, i32 0
  %call1330 = call i32 @strcmp(i8* %arraydecay1329, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1331 = icmp eq i32 %call1330, 0
  br i1 %cmp1331, label %if.then.1333, label %if.end.1335

if.then.1333:                                     ; preds = %land.lhs.true.1326, %lor.lhs.false.1318
  %544 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1334 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %544, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.1335

if.end.1335:                                      ; preds = %if.then.1333, %land.lhs.true.1326
  %545 = load %union.rec*, %union.rec** %y, align 8
  %os11336 = bitcast %union.rec* %545 to %struct.word_type*
  %ou31337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11336, i32 0, i32 3
  %os331338 = bitcast %union.THIRD_UNION* %ou31337 to %struct.anon.8*
  %ocs_type1339 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331338, i32 0, i32 0
  %546 = load i8, i8* %ocs_type1339, align 1
  %conv1340 = zext i8 %546 to i32
  switch i32 %conv1340, label %sw.default [
    i32 133, label %sw.bb.1341
    i32 129, label %sw.bb.1341
    i32 130, label %sw.bb.1341
    i32 126, label %sw.bb.1527
    i32 134, label %sw.bb.1527
    i32 127, label %sw.bb.1527
    i32 128, label %sw.bb.1527
  ]

sw.bb.1341:                                       ; preds = %if.end.1335, %if.end.1335, %if.end.1335
  %547 = load %union.rec*, %union.rec** %y, align 8
  %os11342 = bitcast %union.rec* %547 to %struct.word_type*
  %olist1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11342, i32 0, i32 0
  %arrayidx1344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1343, i32 0, i64 0
  %osucc1345 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1344, i32 0, i32 1
  %548 = load %union.rec*, %union.rec** %osucc1345, align 8
  %549 = load %union.rec*, %union.rec** %y, align 8
  %cmp1346 = icmp ne %union.rec* %548, %549
  br i1 %cmp1346, label %if.then.1348, label %if.else.1372

if.then.1348:                                     ; preds = %sw.bb.1341
  %550 = load %union.rec*, %union.rec** %y, align 8
  %os11349 = bitcast %union.rec* %550 to %struct.word_type*
  %olist1350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11349, i32 0, i32 0
  %arrayidx1351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1350, i32 0, i64 0
  %osucc1352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1351, i32 0, i32 1
  %551 = load %union.rec*, %union.rec** %osucc1352, align 8
  %os11353 = bitcast %union.rec* %551 to %struct.word_type*
  %olist1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11353, i32 0, i32 0
  %arrayidx1355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1354, i32 0, i64 1
  %opred1356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1355, i32 0, i32 0
  %552 = load %union.rec*, %union.rec** %opred1356, align 8
  store %union.rec* %552, %union.rec** %val, align 8
  br label %for.cond.1357

for.cond.1357:                                    ; preds = %for.inc.1366, %if.then.1348
  %553 = load %union.rec*, %union.rec** %val, align 8
  %os11358 = bitcast %union.rec* %553 to %struct.word_type*
  %ou11359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 1
  %os111360 = bitcast %union.FIRST_UNION* %ou11359 to %struct.anon*
  %otype1361 = getelementptr inbounds %struct.anon, %struct.anon* %os111360, i32 0, i32 0
  %554 = load i8, i8* %otype1361, align 1
  %conv1362 = zext i8 %554 to i32
  %cmp1363 = icmp eq i32 %conv1362, 0
  br i1 %cmp1363, label %for.body.1365, label %for.end.1371

for.body.1365:                                    ; preds = %for.cond.1357
  br label %for.inc.1366

for.inc.1366:                                     ; preds = %for.body.1365
  %555 = load %union.rec*, %union.rec** %val, align 8
  %os11367 = bitcast %union.rec* %555 to %struct.word_type*
  %olist1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11367, i32 0, i32 0
  %arrayidx1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1368, i32 0, i64 1
  %opred1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1369, i32 0, i32 0
  %556 = load %union.rec*, %union.rec** %opred1370, align 8
  store %union.rec* %556, %union.rec** %val, align 8
  br label %for.cond.1357

for.end.1371:                                     ; preds = %for.cond.1357
  br label %if.end.1373

if.else.1372:                                     ; preds = %sw.bb.1341
  store %union.rec* null, %union.rec** %val, align 8
  br label %if.end.1373

if.end.1373:                                      ; preds = %if.else.1372, %for.end.1371
  %557 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %558 = load %union.rec*, %union.rec** %sym, align 8
  %559 = load %union.rec*, %union.rec** %cs, align 8
  %os71374 = bitcast %union.rec* %559 to %struct.cr_type*
  %ogall_tag1375 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71374, i32 0, i32 10
  %560 = load %union.rec*, %union.rec** %ogall_tag1375, align 8
  %os11376 = bitcast %union.rec* %560 to %struct.word_type*
  %ostring1377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11376, i32 0, i32 4
  %arraydecay1378 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1377, i32 0, i32 0
  %561 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %562 = load %union.rec*, %union.rec** %y, align 8
  %os11379 = bitcast %union.rec* %562 to %struct.word_type*
  %ostring1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11379, i32 0, i32 4
  %arraydecay1381 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1380, i32 0, i32 0
  %563 = load %union.rec*, %union.rec** %y, align 8
  %os11382 = bitcast %union.rec* %563 to %struct.word_type*
  %ou31383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11382, i32 0, i32 3
  %os331384 = bitcast %union.THIRD_UNION* %ou31383 to %struct.anon.8*
  %ocs_fnum1385 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331384, i32 0, i32 1
  %564 = load i16, i16* %ocs_fnum1385, align 2
  %565 = load %union.rec*, %union.rec** %y, align 8
  %os11386 = bitcast %union.rec* %565 to %struct.word_type*
  %ou31387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11386, i32 0, i32 3
  %os331388 = bitcast %union.THIRD_UNION* %ou31387 to %struct.anon.8*
  %ocs_pos1389 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331388, i32 0, i32 2
  %566 = load i32, i32* %ocs_pos1389, align 4
  %conv1390 = sext i32 %566 to i64
  %567 = load %union.rec*, %union.rec** %y, align 8
  %os11391 = bitcast %union.rec* %567 to %struct.word_type*
  %ou31392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11391, i32 0, i32 3
  %os331393 = bitcast %union.THIRD_UNION* %ou31392 to %struct.anon.8*
  %ocs_lnum1394 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331393, i32 0, i32 3
  %568 = load i32, i32* %ocs_lnum1394, align 4
  call void @DbInsert(%union.rec* %557, i32 1, %union.rec* %558, i8* %arraydecay1378, %struct.FILE_POS* %561, i8* %arraydecay1381, i16 zeroext %564, i64 %conv1390, i32 %568, i32 0)
  %569 = load %union.rec*, %union.rec** %link, align 8
  %os11395 = bitcast %union.rec* %569 to %struct.word_type*
  %olist1396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11395, i32 0, i32 0
  %arrayidx1397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1396, i32 0, i64 0
  %opred1398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1397, i32 0, i32 0
  %570 = load %union.rec*, %union.rec** %opred1398, align 8
  store %union.rec* %570, %union.rec** %link, align 8
  %571 = load %union.rec*, %union.rec** %link, align 8
  %os11399 = bitcast %union.rec* %571 to %struct.word_type*
  %olist1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11399, i32 0, i32 0
  %arrayidx1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1400, i32 0, i64 0
  %osucc1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1401, i32 0, i32 1
  %572 = load %union.rec*, %union.rec** %osucc1402, align 8
  store %union.rec* %572, %union.rec** @xx_link, align 8
  %573 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %573, %union.rec** @zz_hold, align 8
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11403 = bitcast %union.rec* %574 to %struct.word_type*
  %olist1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 0
  %arrayidx1405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1404, i32 0, i64 1
  %osucc1406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1405, i32 0, i32 1
  %575 = load %union.rec*, %union.rec** %osucc1406, align 8
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1407 = icmp eq %union.rec* %575, %576
  br i1 %cmp1407, label %cond.true.1409, label %cond.false.1410

cond.true.1409:                                   ; preds = %if.end.1373
  br label %cond.end.1439

cond.false.1410:                                  ; preds = %if.end.1373
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11411 = bitcast %union.rec* %577 to %struct.word_type*
  %olist1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11411, i32 0, i32 0
  %arrayidx1413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1412, i32 0, i64 1
  %osucc1414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1413, i32 0, i32 1
  %578 = load %union.rec*, %union.rec** %osucc1414, align 8
  store %union.rec* %578, %union.rec** @zz_res, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11415 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11415, i32 0, i32 0
  %arrayidx1417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1416, i32 0, i64 1
  %opred1418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1417, i32 0, i32 0
  %580 = load %union.rec*, %union.rec** %opred1418, align 8
  %581 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11419 = bitcast %union.rec* %581 to %struct.word_type*
  %olist1420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11419, i32 0, i32 0
  %arrayidx1421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1420, i32 0, i64 1
  %opred1422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1421, i32 0, i32 0
  store %union.rec* %580, %union.rec** %opred1422, align 8
  %582 = load %union.rec*, %union.rec** @zz_res, align 8
  %583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11423 = bitcast %union.rec* %583 to %struct.word_type*
  %olist1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11423, i32 0, i32 0
  %arrayidx1425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1424, i32 0, i64 1
  %opred1426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1425, i32 0, i32 0
  %584 = load %union.rec*, %union.rec** %opred1426, align 8
  %os11427 = bitcast %union.rec* %584 to %struct.word_type*
  %olist1428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11427, i32 0, i32 0
  %arrayidx1429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1428, i32 0, i64 1
  %osucc1430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1429, i32 0, i32 1
  store %union.rec* %582, %union.rec** %osucc1430, align 8
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11431 = bitcast %union.rec* %586 to %struct.word_type*
  %olist1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11431, i32 0, i32 0
  %arrayidx1433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1432, i32 0, i64 1
  %osucc1434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1433, i32 0, i32 1
  store %union.rec* %585, %union.rec** %osucc1434, align 8
  %587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11435 = bitcast %union.rec* %587 to %struct.word_type*
  %olist1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11435, i32 0, i32 0
  %arrayidx1437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1436, i32 0, i64 1
  %opred1438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1437, i32 0, i32 0
  store %union.rec* %585, %union.rec** %opred1438, align 8
  %588 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1439

cond.end.1439:                                    ; preds = %cond.false.1410, %cond.true.1409
  %cond1440 = phi %union.rec* [ null, %cond.true.1409 ], [ %588, %cond.false.1410 ]
  store %union.rec* %cond1440, %union.rec** @xx_tmp, align 8
  %589 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %589, %union.rec** @zz_hold, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11441 = bitcast %union.rec* %590 to %struct.word_type*
  %olist1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11441, i32 0, i32 0
  %arrayidx1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1442, i32 0, i64 0
  %osucc1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1443, i32 0, i32 1
  %591 = load %union.rec*, %union.rec** %osucc1444, align 8
  %592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1445 = icmp eq %union.rec* %591, %592
  br i1 %cmp1445, label %cond.true.1447, label %cond.false.1448

cond.true.1447:                                   ; preds = %cond.end.1439
  br label %cond.end.1477

cond.false.1448:                                  ; preds = %cond.end.1439
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11449 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11449, i32 0, i32 0
  %arrayidx1451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1450, i32 0, i64 0
  %osucc1452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1451, i32 0, i32 1
  %594 = load %union.rec*, %union.rec** %osucc1452, align 8
  store %union.rec* %594, %union.rec** @zz_res, align 8
  %595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11453 = bitcast %union.rec* %595 to %struct.word_type*
  %olist1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11453, i32 0, i32 0
  %arrayidx1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1454, i32 0, i64 0
  %opred1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1455, i32 0, i32 0
  %596 = load %union.rec*, %union.rec** %opred1456, align 8
  %597 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11457 = bitcast %union.rec* %597 to %struct.word_type*
  %olist1458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11457, i32 0, i32 0
  %arrayidx1459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1458, i32 0, i64 0
  %opred1460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1459, i32 0, i32 0
  store %union.rec* %596, %union.rec** %opred1460, align 8
  %598 = load %union.rec*, %union.rec** @zz_res, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11461 = bitcast %union.rec* %599 to %struct.word_type*
  %olist1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11461, i32 0, i32 0
  %arrayidx1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1462, i32 0, i64 0
  %opred1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1463, i32 0, i32 0
  %600 = load %union.rec*, %union.rec** %opred1464, align 8
  %os11465 = bitcast %union.rec* %600 to %struct.word_type*
  %olist1466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11465, i32 0, i32 0
  %arrayidx1467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1466, i32 0, i64 0
  %osucc1468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1467, i32 0, i32 1
  store %union.rec* %598, %union.rec** %osucc1468, align 8
  %601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11469 = bitcast %union.rec* %602 to %struct.word_type*
  %olist1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11469, i32 0, i32 0
  %arrayidx1471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1470, i32 0, i64 0
  %osucc1472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1471, i32 0, i32 1
  store %union.rec* %601, %union.rec** %osucc1472, align 8
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11473 = bitcast %union.rec* %603 to %struct.word_type*
  %olist1474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11473, i32 0, i32 0
  %arrayidx1475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1474, i32 0, i64 0
  %opred1476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1475, i32 0, i32 0
  store %union.rec* %601, %union.rec** %opred1476, align 8
  %604 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1477

cond.end.1477:                                    ; preds = %cond.false.1448, %cond.true.1447
  %cond1478 = phi %union.rec* [ null, %cond.true.1447 ], [ %604, %cond.false.1448 ]
  %605 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %605, %union.rec** @zz_hold, align 8
  %606 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %606, %union.rec** @zz_hold, align 8
  %607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11479 = bitcast %union.rec* %607 to %struct.word_type*
  %ou11480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11479, i32 0, i32 1
  %os111481 = bitcast %union.FIRST_UNION* %ou11480 to %struct.anon*
  %otype1482 = getelementptr inbounds %struct.anon, %struct.anon* %os111481, i32 0, i32 0
  %608 = load i8, i8* %otype1482, align 1
  %conv1483 = zext i8 %608 to i32
  %cmp1484 = icmp eq i32 %conv1483, 11
  br i1 %cmp1484, label %cond.true.1494, label %lor.lhs.false.1486

lor.lhs.false.1486:                               ; preds = %cond.end.1477
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11487 = bitcast %union.rec* %609 to %struct.word_type*
  %ou11488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11487, i32 0, i32 1
  %os111489 = bitcast %union.FIRST_UNION* %ou11488 to %struct.anon*
  %otype1490 = getelementptr inbounds %struct.anon, %struct.anon* %os111489, i32 0, i32 0
  %610 = load i8, i8* %otype1490, align 1
  %conv1491 = zext i8 %610 to i32
  %cmp1492 = icmp eq i32 %conv1491, 12
  br i1 %cmp1492, label %cond.true.1494, label %cond.false.1500

cond.true.1494:                                   ; preds = %lor.lhs.false.1486, %cond.end.1477
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11495 = bitcast %union.rec* %611 to %struct.word_type*
  %ou11496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11495, i32 0, i32 1
  %os111497 = bitcast %union.FIRST_UNION* %ou11496 to %struct.anon*
  %orec_size1498 = getelementptr inbounds %struct.anon, %struct.anon* %os111497, i32 0, i32 1
  %612 = load i8, i8* %orec_size1498, align 1
  %conv1499 = zext i8 %612 to i32
  br label %cond.end.1508

cond.false.1500:                                  ; preds = %lor.lhs.false.1486
  %613 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11501 = bitcast %union.rec* %613 to %struct.word_type*
  %ou11502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11501, i32 0, i32 1
  %os111503 = bitcast %union.FIRST_UNION* %ou11502 to %struct.anon*
  %otype1504 = getelementptr inbounds %struct.anon, %struct.anon* %os111503, i32 0, i32 0
  %614 = load i8, i8* %otype1504, align 1
  %idxprom1505 = zext i8 %614 to i64
  %arrayidx1506 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1505
  %615 = load i8, i8* %arrayidx1506, align 1
  %conv1507 = zext i8 %615 to i32
  br label %cond.end.1508

cond.end.1508:                                    ; preds = %cond.false.1500, %cond.true.1494
  %cond1509 = phi i32 [ %conv1499, %cond.true.1494 ], [ %conv1507, %cond.false.1500 ]
  store i32 %cond1509, i32* @zz_size, align 4
  %616 = load i32, i32* @zz_size, align 4
  %idxprom1510 = sext i32 %616 to i64
  %arrayidx1511 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1510
  %617 = load %union.rec*, %union.rec** %arrayidx1511, align 8
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11512 = bitcast %union.rec* %618 to %struct.word_type*
  %olist1513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11512, i32 0, i32 0
  %arrayidx1514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1513, i32 0, i64 0
  %opred1515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1514, i32 0, i32 0
  store %union.rec* %617, %union.rec** %opred1515, align 8
  %619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %620 = load i32, i32* @zz_size, align 4
  %idxprom1516 = sext i32 %620 to i64
  %arrayidx1517 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1516
  store %union.rec* %619, %union.rec** %arrayidx1517, align 8
  %621 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11518 = bitcast %union.rec* %621 to %struct.word_type*
  %olist1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11518, i32 0, i32 0
  %arrayidx1520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1519, i32 0, i64 1
  %osucc1521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1520, i32 0, i32 1
  %622 = load %union.rec*, %union.rec** %osucc1521, align 8
  %623 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1522 = icmp eq %union.rec* %622, %623
  br i1 %cmp1522, label %if.then.1524, label %if.end.1526

if.then.1524:                                     ; preds = %cond.end.1508
  %624 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1525 = call i32 @DisposeObject(%union.rec* %624)
  br label %if.end.1526

if.end.1526:                                      ; preds = %if.then.1524, %cond.end.1508
  br label %sw.epilog

sw.bb.1527:                                       ; preds = %if.end.1335, %if.end.1335, %if.end.1335, %if.end.1335
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.1335
  %625 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1528 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %625, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1527, %if.end.1526
  br label %for.inc.1529

for.inc.1529:                                     ; preds = %sw.epilog
  %626 = load %union.rec*, %union.rec** %link, align 8
  %os11530 = bitcast %union.rec* %626 to %struct.word_type*
  %olist1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11530, i32 0, i32 0
  %arrayidx1532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1531, i32 0, i64 0
  %osucc1533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1532, i32 0, i32 1
  %627 = load %union.rec*, %union.rec** %osucc1533, align 8
  store %union.rec* %627, %union.rec** %link, align 8
  br label %for.cond.1288

for.end.1534:                                     ; preds = %for.cond.1288
  br label %sw.epilog.2447

sw.bb.1535:                                       ; preds = %if.end.229
  %628 = load %union.rec*, %union.rec** %cs, align 8
  %os71536 = bitcast %union.rec* %628 to %struct.cr_type*
  %otarget_state = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71536, i32 0, i32 2
  %629 = load i8, i8* %otarget_state, align 1
  %conv1537 = zext i8 %629 to i32
  %cmp1538 = icmp eq i32 %conv1537, 0
  br i1 %cmp1538, label %if.then.1540, label %if.end.1547

if.then.1540:                                     ; preds = %sw.bb.1535
  %630 = load %union.rec*, %union.rec** %tag, align 8
  %os11541 = bitcast %union.rec* %630 to %struct.word_type*
  %ou11542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11541, i32 0, i32 1
  %ofpos1543 = bitcast %union.FIRST_UNION* %ou11542 to %struct.FILE_POS*
  %631 = load %union.rec*, %union.rec** %sym, align 8
  %call1544 = call i8* @SymName(%union.rec* %631)
  %632 = load %union.rec*, %union.rec** %sym, align 8
  %call1545 = call i8* @SymName(%union.rec* %632)
  %call1546 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1543, i8* %call1544, i8* %call1545, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog.2447

if.end.1547:                                      ; preds = %sw.bb.1535
  %633 = load %union.rec*, %union.rec** %cs, align 8
  %os71548 = bitcast %union.rec* %633 to %struct.cr_type*
  %otarget_state1549 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71548, i32 0, i32 2
  %634 = load i8, i8* %otarget_state1549, align 1
  %conv1550 = zext i8 %634 to i32
  %cmp1551 = icmp eq i32 %conv1550, 1
  br i1 %cmp1551, label %if.then.1553, label %if.end.1565

if.then.1553:                                     ; preds = %if.end.1547
  %635 = load %union.rec*, %union.rec** %cs, align 8
  %os71554 = bitcast %union.rec* %635 to %struct.cr_type*
  %otarget_val = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71554, i32 0, i32 4
  %636 = load %union.rec*, %union.rec** %otarget_val, align 8
  %637 = load %union.rec*, %union.rec** %cs, align 8
  %os71555 = bitcast %union.rec* %637 to %struct.cr_type*
  %otarget_file = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71555, i32 0, i32 3
  %638 = load i16, i16* %otarget_file, align 2
  %639 = load %union.rec*, %union.rec** %cs, align 8
  %os71556 = bitcast %union.rec* %639 to %struct.cr_type*
  %otarget_pos = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71556, i32 0, i32 6
  %640 = load %union.rec*, %union.rec** %cs, align 8
  %os71557 = bitcast %union.rec* %640 to %struct.cr_type*
  %otarget_lnum = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71557, i32 0, i32 7
  call void @AppendToFile(%union.rec* %636, i16 zeroext %638, i32* %otarget_pos, i32* %otarget_lnum)
  %641 = load %union.rec*, %union.rec** %cs, align 8
  %os71558 = bitcast %union.rec* %641 to %struct.cr_type*
  %otarget_val1559 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71558, i32 0, i32 4
  %642 = load %union.rec*, %union.rec** %otarget_val1559, align 8
  %call1560 = call i32 @DisposeObject(%union.rec* %642)
  %643 = load %union.rec*, %union.rec** %cs, align 8
  %os71561 = bitcast %union.rec* %643 to %struct.cr_type*
  %otarget_val1562 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71561, i32 0, i32 4
  store %union.rec* null, %union.rec** %otarget_val1562, align 8
  %644 = load %union.rec*, %union.rec** %cs, align 8
  %os71563 = bitcast %union.rec* %644 to %struct.cr_type*
  %otarget_state1564 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71563, i32 0, i32 2
  store i8 2, i8* %otarget_state1564, align 1
  br label %if.end.1565

if.end.1565:                                      ; preds = %if.then.1553, %if.end.1547
  %645 = load %union.rec*, %union.rec** %tag, align 8
  %os11566 = bitcast %union.rec* %645 to %struct.word_type*
  %ou11567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11566, i32 0, i32 1
  %os111568 = bitcast %union.FIRST_UNION* %ou11567 to %struct.anon*
  %otype1569 = getelementptr inbounds %struct.anon, %struct.anon* %os111568, i32 0, i32 0
  %646 = load i8, i8* %otype1569, align 1
  %conv1570 = zext i8 %646 to i32
  %cmp1571 = icmp eq i32 %conv1570, 11
  br i1 %cmp1571, label %lor.lhs.false.1581, label %lor.lhs.false.1573

lor.lhs.false.1573:                               ; preds = %if.end.1565
  %647 = load %union.rec*, %union.rec** %tag, align 8
  %os11574 = bitcast %union.rec* %647 to %struct.word_type*
  %ou11575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11574, i32 0, i32 1
  %os111576 = bitcast %union.FIRST_UNION* %ou11575 to %struct.anon*
  %otype1577 = getelementptr inbounds %struct.anon, %struct.anon* %os111576, i32 0, i32 0
  %648 = load i8, i8* %otype1577, align 1
  %conv1578 = zext i8 %648 to i32
  %cmp1579 = icmp eq i32 %conv1578, 12
  br i1 %cmp1579, label %lor.lhs.false.1581, label %if.then.1588

lor.lhs.false.1581:                               ; preds = %lor.lhs.false.1573, %if.end.1565
  %649 = load %union.rec*, %union.rec** %tag, align 8
  %os11582 = bitcast %union.rec* %649 to %struct.word_type*
  %ostring1583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11582, i32 0, i32 4
  %arraydecay1584 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1583, i32 0, i32 0
  %call1585 = call i32 @strcmp(i8* %arraydecay1584, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1586 = icmp eq i32 %call1585, 0
  br i1 %cmp1586, label %if.then.1588, label %if.end.1591

if.then.1588:                                     ; preds = %lor.lhs.false.1581, %lor.lhs.false.1573
  %650 = load %union.rec*, %union.rec** %tag, align 8
  %call1589 = call i32 @DisposeObject(%union.rec* %650)
  %651 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1590 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %651)
  store %union.rec* %call1590, %union.rec** %tag, align 8
  br label %if.end.1591

if.end.1591:                                      ; preds = %if.then.1588, %lor.lhs.false.1581
  %652 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %653 = load %union.rec*, %union.rec** %sym, align 8
  %654 = load %union.rec*, %union.rec** %tag, align 8
  %os11592 = bitcast %union.rec* %654 to %struct.word_type*
  %ostring1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11592, i32 0, i32 4
  %arraydecay1594 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1593, i32 0, i32 0
  %655 = load %union.rec*, %union.rec** %tag, align 8
  %os11595 = bitcast %union.rec* %655 to %struct.word_type*
  %ou11596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11595, i32 0, i32 1
  %ofpos1597 = bitcast %union.FIRST_UNION* %ou11596 to %struct.FILE_POS*
  %656 = load %union.rec*, %union.rec** %cs, align 8
  %os71598 = bitcast %union.rec* %656 to %struct.cr_type*
  %otarget_file1599 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71598, i32 0, i32 3
  %657 = load i16, i16* %otarget_file1599, align 2
  %658 = load %union.rec*, %union.rec** %cs, align 8
  %os71600 = bitcast %union.rec* %658 to %struct.cr_type*
  %otarget_pos1601 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71600, i32 0, i32 6
  %659 = load i32, i32* %otarget_pos1601, align 4
  %conv1602 = sext i32 %659 to i64
  %660 = load %union.rec*, %union.rec** %cs, align 8
  %os71603 = bitcast %union.rec* %660 to %struct.cr_type*
  %otarget_lnum1604 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71603, i32 0, i32 7
  %661 = load i32, i32* %otarget_lnum1604, align 4
  call void @DbInsert(%union.rec* %652, i32 0, %union.rec* %653, i8* %arraydecay1594, %struct.FILE_POS* %ofpos1597, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i16 zeroext %657, i64 %conv1602, i32 %661, i32 1)
  %662 = load %union.rec*, %union.rec** %tag, align 8
  %call1605 = call i32 @DisposeObject(%union.rec* %662)
  br label %sw.epilog.2447

sw.bb.1606:                                       ; preds = %if.end.229, %if.end.229
  %663 = load %union.rec*, %union.rec** %tag, align 8
  %os11607 = bitcast %union.rec* %663 to %struct.word_type*
  %ou11608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11607, i32 0, i32 1
  %os111609 = bitcast %union.FIRST_UNION* %ou11608 to %struct.anon*
  %otype1610 = getelementptr inbounds %struct.anon, %struct.anon* %os111609, i32 0, i32 0
  %664 = load i8, i8* %otype1610, align 1
  %conv1611 = zext i8 %664 to i32
  %cmp1612 = icmp eq i32 %conv1611, 11
  br i1 %cmp1612, label %if.else.1629, label %lor.lhs.false.1614

lor.lhs.false.1614:                               ; preds = %sw.bb.1606
  %665 = load %union.rec*, %union.rec** %tag, align 8
  %os11615 = bitcast %union.rec* %665 to %struct.word_type*
  %ou11616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11615, i32 0, i32 1
  %os111617 = bitcast %union.FIRST_UNION* %ou11616 to %struct.anon*
  %otype1618 = getelementptr inbounds %struct.anon, %struct.anon* %os111617, i32 0, i32 0
  %666 = load i8, i8* %otype1618, align 1
  %conv1619 = zext i8 %666 to i32
  %cmp1620 = icmp eq i32 %conv1619, 12
  br i1 %cmp1620, label %if.else.1629, label %if.then.1622

if.then.1622:                                     ; preds = %lor.lhs.false.1614
  %667 = load %union.rec*, %union.rec** %tag, align 8
  %os11623 = bitcast %union.rec* %667 to %struct.word_type*
  %ou11624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11623, i32 0, i32 1
  %ofpos1625 = bitcast %union.FIRST_UNION* %ou11624 to %struct.FILE_POS*
  %668 = load %union.rec*, %union.rec** %cs, align 8
  %os71626 = bitcast %union.rec* %668 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71626, i32 0, i32 9
  %669 = load %union.rec*, %union.rec** %osymb, align 8
  %call1627 = call i8* @SymName(%union.rec* %669)
  %call1628 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1625, i8* %call1627)
  br label %if.end.1776

if.else.1629:                                     ; preds = %lor.lhs.false.1614, %sw.bb.1606
  %670 = load %union.rec*, %union.rec** %tag, align 8
  %os11630 = bitcast %union.rec* %670 to %struct.word_type*
  %ostring1631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11630, i32 0, i32 4
  %arraydecay1632 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1631, i32 0, i32 0
  %call1633 = call i32 @strcmp(i8* %arraydecay1632, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1634 = icmp eq i32 %call1633, 0
  br i1 %cmp1634, label %if.then.1636, label %if.else.1637

if.then.1636:                                     ; preds = %if.else.1629
  br label %if.end.1775

if.else.1637:                                     ; preds = %if.else.1629
  %671 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1638 = zext i8 %671 to i32
  store i32 %conv1638, i32* @zz_size, align 4
  %conv1639 = sext i32 %conv1638 to i64
  %cmp1640 = icmp uge i64 %conv1639, 265
  br i1 %cmp1640, label %if.then.1642, label %if.else.1644

if.then.1642:                                     ; preds = %if.else.1637
  %672 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1643 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %672)
  br label %if.end.1661

if.else.1644:                                     ; preds = %if.else.1637
  %673 = load i32, i32* @zz_size, align 4
  %idxprom1645 = sext i32 %673 to i64
  %arrayidx1646 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1645
  %674 = load %union.rec*, %union.rec** %arrayidx1646, align 8
  %cmp1647 = icmp eq %union.rec* %674, null
  br i1 %cmp1647, label %if.then.1649, label %if.else.1651

if.then.1649:                                     ; preds = %if.else.1644
  %675 = load i32, i32* @zz_size, align 4
  %676 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1650 = call %union.rec* @GetMemory(i32 %675, %struct.FILE_POS* %676)
  store %union.rec* %call1650, %union.rec** @zz_hold, align 8
  br label %if.end.1660

if.else.1651:                                     ; preds = %if.else.1644
  %677 = load i32, i32* @zz_size, align 4
  %idxprom1652 = sext i32 %677 to i64
  %arrayidx1653 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1652
  %678 = load %union.rec*, %union.rec** %arrayidx1653, align 8
  store %union.rec* %678, %union.rec** @zz_hold, align 8
  store %union.rec* %678, %union.rec** @zz_hold, align 8
  %679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11654 = bitcast %union.rec* %679 to %struct.word_type*
  %olist1655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11654, i32 0, i32 0
  %arrayidx1656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1655, i32 0, i64 0
  %opred1657 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1656, i32 0, i32 0
  %680 = load %union.rec*, %union.rec** %opred1657, align 8
  %681 = load i32, i32* @zz_size, align 4
  %idxprom1658 = sext i32 %681 to i64
  %arrayidx1659 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1658
  store %union.rec* %680, %union.rec** %arrayidx1659, align 8
  br label %if.end.1660

if.end.1660:                                      ; preds = %if.else.1651, %if.then.1649
  br label %if.end.1661

if.end.1661:                                      ; preds = %if.end.1660, %if.then.1642
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11662 = bitcast %union.rec* %682 to %struct.word_type*
  %ou11663 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11662, i32 0, i32 1
  %os111664 = bitcast %union.FIRST_UNION* %ou11663 to %struct.anon*
  %otype1665 = getelementptr inbounds %struct.anon, %struct.anon* %os111664, i32 0, i32 0
  store i8 0, i8* %otype1665, align 1
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11666 = bitcast %union.rec* %684 to %struct.word_type*
  %olist1667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11666, i32 0, i32 0
  %arrayidx1668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1667, i32 0, i64 1
  %osucc1669 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1668, i32 0, i32 1
  store %union.rec* %683, %union.rec** %osucc1669, align 8
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11670 = bitcast %union.rec* %685 to %struct.word_type*
  %olist1671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11670, i32 0, i32 0
  %arrayidx1672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1671, i32 0, i64 1
  %opred1673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1672, i32 0, i32 0
  store %union.rec* %683, %union.rec** %opred1673, align 8
  %686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11674 = bitcast %union.rec* %686 to %struct.word_type*
  %olist1675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11674, i32 0, i32 0
  %arrayidx1676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1675, i32 0, i64 0
  %osucc1677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1676, i32 0, i32 1
  store %union.rec* %683, %union.rec** %osucc1677, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11678 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11678, i32 0, i32 0
  %arrayidx1680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1679, i32 0, i64 0
  %opred1681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1680, i32 0, i32 0
  store %union.rec* %683, %union.rec** %opred1681, align 8
  store %union.rec* %683, %union.rec** @xx_link, align 8
  %688 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %688, %union.rec** @zz_res, align 8
  %689 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %689, %union.rec** @zz_hold, align 8
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1682 = icmp eq %union.rec* %690, null
  br i1 %cmp1682, label %cond.true.1684, label %cond.false.1685

cond.true.1684:                                   ; preds = %if.end.1661
  %691 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1721

cond.false.1685:                                  ; preds = %if.end.1661
  %692 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1686 = icmp eq %union.rec* %692, null
  br i1 %cmp1686, label %cond.true.1688, label %cond.false.1689

cond.true.1688:                                   ; preds = %cond.false.1685
  %693 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1719

cond.false.1689:                                  ; preds = %cond.false.1685
  %694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11690 = bitcast %union.rec* %694 to %struct.word_type*
  %olist1691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11690, i32 0, i32 0
  %arrayidx1692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1691, i32 0, i64 0
  %opred1693 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1692, i32 0, i32 0
  %695 = load %union.rec*, %union.rec** %opred1693, align 8
  store %union.rec* %695, %union.rec** @zz_tmp, align 8
  %696 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11694 = bitcast %union.rec* %696 to %struct.word_type*
  %olist1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11694, i32 0, i32 0
  %arrayidx1696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1695, i32 0, i64 0
  %opred1697 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1696, i32 0, i32 0
  %697 = load %union.rec*, %union.rec** %opred1697, align 8
  %698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11698 = bitcast %union.rec* %698 to %struct.word_type*
  %olist1699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11698, i32 0, i32 0
  %arrayidx1700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1699, i32 0, i64 0
  %opred1701 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1700, i32 0, i32 0
  store %union.rec* %697, %union.rec** %opred1701, align 8
  %699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %700 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11703 = bitcast %union.rec* %700 to %struct.word_type*
  %olist1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11703, i32 0, i32 0
  %arrayidx1705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1704, i32 0, i64 0
  %opred1706 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1705, i32 0, i32 0
  %701 = load %union.rec*, %union.rec** %opred1706, align 8
  %os11707 = bitcast %union.rec* %701 to %struct.word_type*
  %olist1708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11707, i32 0, i32 0
  %arrayidx1709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1708, i32 0, i64 0
  %osucc1710 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1709, i32 0, i32 1
  store %union.rec* %699, %union.rec** %osucc1710, align 8
  %702 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %703 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11711 = bitcast %union.rec* %703 to %struct.word_type*
  %olist1712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11711, i32 0, i32 0
  %arrayidx1713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1712, i32 0, i64 0
  %opred1714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1713, i32 0, i32 0
  store %union.rec* %702, %union.rec** %opred1714, align 8
  %704 = load %union.rec*, %union.rec** @zz_res, align 8
  %705 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11715 = bitcast %union.rec* %705 to %struct.word_type*
  %olist1716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11715, i32 0, i32 0
  %arrayidx1717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1716, i32 0, i64 0
  %osucc1718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1717, i32 0, i32 1
  store %union.rec* %704, %union.rec** %osucc1718, align 8
  br label %cond.end.1719

cond.end.1719:                                    ; preds = %cond.false.1689, %cond.true.1688
  %cond1720 = phi %union.rec* [ %693, %cond.true.1688 ], [ %704, %cond.false.1689 ]
  br label %cond.end.1721

cond.end.1721:                                    ; preds = %cond.end.1719, %cond.true.1684
  %cond1722 = phi %union.rec* [ %691, %cond.true.1684 ], [ %cond1720, %cond.end.1719 ]
  %706 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %706, %union.rec** @zz_res, align 8
  %707 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %707, %union.rec** @zz_hold, align 8
  %708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1723 = icmp eq %union.rec* %708, null
  br i1 %cmp1723, label %cond.true.1725, label %cond.false.1726

cond.true.1725:                                   ; preds = %cond.end.1721
  %709 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1761

cond.false.1726:                                  ; preds = %cond.end.1721
  %710 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1727 = icmp eq %union.rec* %710, null
  br i1 %cmp1727, label %cond.true.1729, label %cond.false.1730

cond.true.1729:                                   ; preds = %cond.false.1726
  %711 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1759

cond.false.1730:                                  ; preds = %cond.false.1726
  %712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11731 = bitcast %union.rec* %712 to %struct.word_type*
  %olist1732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11731, i32 0, i32 0
  %arrayidx1733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1732, i32 0, i64 1
  %opred1734 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1733, i32 0, i32 0
  %713 = load %union.rec*, %union.rec** %opred1734, align 8
  store %union.rec* %713, %union.rec** @zz_tmp, align 8
  %714 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11735 = bitcast %union.rec* %714 to %struct.word_type*
  %olist1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11735, i32 0, i32 0
  %arrayidx1737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1736, i32 0, i64 1
  %opred1738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1737, i32 0, i32 0
  %715 = load %union.rec*, %union.rec** %opred1738, align 8
  %716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11739 = bitcast %union.rec* %716 to %struct.word_type*
  %olist1740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11739, i32 0, i32 0
  %arrayidx1741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1740, i32 0, i64 1
  %opred1742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1741, i32 0, i32 0
  store %union.rec* %715, %union.rec** %opred1742, align 8
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %718 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11743 = bitcast %union.rec* %718 to %struct.word_type*
  %olist1744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11743, i32 0, i32 0
  %arrayidx1745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1744, i32 0, i64 1
  %opred1746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1745, i32 0, i32 0
  %719 = load %union.rec*, %union.rec** %opred1746, align 8
  %os11747 = bitcast %union.rec* %719 to %struct.word_type*
  %olist1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11747, i32 0, i32 0
  %arrayidx1749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1748, i32 0, i64 1
  %osucc1750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1749, i32 0, i32 1
  store %union.rec* %717, %union.rec** %osucc1750, align 8
  %720 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %721 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11751 = bitcast %union.rec* %721 to %struct.word_type*
  %olist1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11751, i32 0, i32 0
  %arrayidx1753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1752, i32 0, i64 1
  %opred1754 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1753, i32 0, i32 0
  store %union.rec* %720, %union.rec** %opred1754, align 8
  %722 = load %union.rec*, %union.rec** @zz_res, align 8
  %723 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11755 = bitcast %union.rec* %723 to %struct.word_type*
  %olist1756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11755, i32 0, i32 0
  %arrayidx1757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1756, i32 0, i64 1
  %osucc1758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1757, i32 0, i32 1
  store %union.rec* %722, %union.rec** %osucc1758, align 8
  br label %cond.end.1759

cond.end.1759:                                    ; preds = %cond.false.1730, %cond.true.1729
  %cond1760 = phi %union.rec* [ %711, %cond.true.1729 ], [ %722, %cond.false.1730 ]
  br label %cond.end.1761

cond.end.1761:                                    ; preds = %cond.end.1759, %cond.true.1725
  %cond1762 = phi %union.rec* [ %709, %cond.true.1725 ], [ %cond1760, %cond.end.1759 ]
  %724 = load %union.rec*, %union.rec** %tag, align 8
  %os11763 = bitcast %union.rec* %724 to %struct.word_type*
  %ou11764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11763, i32 0, i32 1
  %ofpos1765 = bitcast %union.FIRST_UNION* %ou11764 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1765, i32 0, i32 2
  %725 = load i16, i16* %ofile_num, align 2
  %726 = load %union.rec*, %union.rec** %tag, align 8
  %os11766 = bitcast %union.rec* %726 to %struct.word_type*
  %ou31767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11766, i32 0, i32 3
  %os331768 = bitcast %union.THIRD_UNION* %ou31767 to %struct.anon.8*
  %ocs_fnum1769 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331768, i32 0, i32 1
  store i16 %725, i16* %ocs_fnum1769, align 2
  %727 = load i32, i32* %ctype, align 4
  %conv1770 = trunc i32 %727 to i8
  %728 = load %union.rec*, %union.rec** %tag, align 8
  %os11771 = bitcast %union.rec* %728 to %struct.word_type*
  %ou31772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11771, i32 0, i32 3
  %os331773 = bitcast %union.THIRD_UNION* %ou31772 to %struct.anon.8*
  %ocs_type1774 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331773, i32 0, i32 0
  store i8 %conv1770, i8* %ocs_type1774, align 1
  br label %if.end.1775

if.end.1775:                                      ; preds = %cond.end.1761, %if.then.1636
  br label %if.end.1776

if.end.1776:                                      ; preds = %if.end.1775, %if.then.1622
  br label %sw.epilog.2447

sw.bb.1777:                                       ; preds = %if.end.229
  %729 = load %union.rec*, %union.rec** %cs, align 8
  %os71778 = bitcast %union.rec* %729 to %struct.cr_type*
  %otarget_state1779 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71778, i32 0, i32 2
  %730 = load i8, i8* %otarget_state1779, align 1
  %conv1780 = zext i8 %730 to i32
  %cmp1781 = icmp eq i32 %conv1780, 1
  br i1 %cmp1781, label %if.then.1783, label %if.end.1787

if.then.1783:                                     ; preds = %sw.bb.1777
  %731 = load %union.rec*, %union.rec** %cs, align 8
  %os71784 = bitcast %union.rec* %731 to %struct.cr_type*
  %otarget_val1785 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71784, i32 0, i32 4
  %732 = load %union.rec*, %union.rec** %otarget_val1785, align 8
  %call1786 = call i32 @DisposeObject(%union.rec* %732)
  br label %if.end.1787

if.end.1787:                                      ; preds = %if.then.1783, %sw.bb.1777
  %733 = load %union.rec*, %union.rec** %tag, align 8
  %734 = load %union.rec*, %union.rec** %cs, align 8
  %os71788 = bitcast %union.rec* %734 to %struct.cr_type*
  %otarget_val1789 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71788, i32 0, i32 4
  store %union.rec* %733, %union.rec** %otarget_val1789, align 8
  %735 = load %union.rec*, %union.rec** %tag, align 8
  %os11790 = bitcast %union.rec* %735 to %struct.word_type*
  %olist1791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11790, i32 0, i32 0
  %arrayidx1792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1791, i32 0, i64 1
  %osucc1793 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1792, i32 0, i32 1
  %736 = load %union.rec*, %union.rec** %osucc1793, align 8
  %737 = load %union.rec*, %union.rec** %tag, align 8
  %cmp1794 = icmp eq %union.rec* %736, %737
  br i1 %cmp1794, label %if.end.1798, label %if.then.1796

if.then.1796:                                     ; preds = %if.end.1787
  %738 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1797 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %738, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.1798

if.end.1798:                                      ; preds = %if.then.1796, %if.end.1787
  %739 = load %union.rec*, %union.rec** %tag, align 8
  %os11799 = bitcast %union.rec* %739 to %struct.word_type*
  %ou11800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11799, i32 0, i32 1
  %ofpos1801 = bitcast %union.FIRST_UNION* %ou11800 to %struct.FILE_POS*
  %call1802 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %ofpos1801)
  %740 = load %union.rec*, %union.rec** %cs, align 8
  %os71803 = bitcast %union.rec* %740 to %struct.cr_type*
  %otarget_file1804 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71803, i32 0, i32 3
  store i16 %call1802, i16* %otarget_file1804, align 2
  %741 = load %union.rec*, %union.rec** %cs, align 8
  %os71805 = bitcast %union.rec* %741 to %struct.cr_type*
  %otarget_state1806 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71805, i32 0, i32 2
  store i8 1, i8* %otarget_state1806, align 1
  store %union.rec* null, %union.rec** %tag, align 8
  %742 = load %union.rec*, %union.rec** %cs, align 8
  %os71807 = bitcast %union.rec* %742 to %struct.cr_type*
  %otarget_val1808 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71807, i32 0, i32 4
  %743 = load %union.rec*, %union.rec** %otarget_val1808, align 8
  %os11809 = bitcast %union.rec* %743 to %struct.word_type*
  %ou11810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11809, i32 0, i32 1
  %os111811 = bitcast %union.FIRST_UNION* %ou11810 to %struct.anon*
  %otype1812 = getelementptr inbounds %struct.anon, %struct.anon* %os111811, i32 0, i32 0
  %744 = load i8, i8* %otype1812, align 1
  %conv1813 = zext i8 %744 to i32
  %cmp1814 = icmp eq i32 %conv1813, 2
  br i1 %cmp1814, label %if.end.1818, label %if.then.1816

if.then.1816:                                     ; preds = %if.end.1798
  %745 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1817 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %745, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.1818

if.end.1818:                                      ; preds = %if.then.1816, %if.end.1798
  %746 = load %union.rec*, %union.rec** %cs, align 8
  %os71819 = bitcast %union.rec* %746 to %struct.cr_type*
  %otarget_val1820 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71819, i32 0, i32 4
  %747 = load %union.rec*, %union.rec** %otarget_val1820, align 8
  %os11821 = bitcast %union.rec* %747 to %struct.word_type*
  %olist1822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11821, i32 0, i32 0
  %arrayidx1823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1822, i32 0, i64 0
  %osucc1824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1823, i32 0, i32 1
  %748 = load %union.rec*, %union.rec** %osucc1824, align 8
  store %union.rec* %748, %union.rec** %link, align 8
  br label %for.cond.1825

for.cond.1825:                                    ; preds = %for.inc.2202, %if.end.1818
  %749 = load %union.rec*, %union.rec** %link, align 8
  %750 = load %union.rec*, %union.rec** %cs, align 8
  %os71826 = bitcast %union.rec* %750 to %struct.cr_type*
  %otarget_val1827 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71826, i32 0, i32 4
  %751 = load %union.rec*, %union.rec** %otarget_val1827, align 8
  %cmp1828 = icmp ne %union.rec* %749, %751
  br i1 %cmp1828, label %for.body.1830, label %for.end.2207

for.body.1830:                                    ; preds = %for.cond.1825
  %752 = load %union.rec*, %union.rec** %link, align 8
  %os11831 = bitcast %union.rec* %752 to %struct.word_type*
  %olist1832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11831, i32 0, i32 0
  %arrayidx1833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1832, i32 0, i64 1
  %opred1834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1833, i32 0, i32 0
  %753 = load %union.rec*, %union.rec** %opred1834, align 8
  store %union.rec* %753, %union.rec** %par, align 8
  br label %for.cond.1835

for.cond.1835:                                    ; preds = %for.inc.1844, %for.body.1830
  %754 = load %union.rec*, %union.rec** %par, align 8
  %os11836 = bitcast %union.rec* %754 to %struct.word_type*
  %ou11837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11836, i32 0, i32 1
  %os111838 = bitcast %union.FIRST_UNION* %ou11837 to %struct.anon*
  %otype1839 = getelementptr inbounds %struct.anon, %struct.anon* %os111838, i32 0, i32 0
  %755 = load i8, i8* %otype1839, align 1
  %conv1840 = zext i8 %755 to i32
  %cmp1841 = icmp eq i32 %conv1840, 0
  br i1 %cmp1841, label %for.body.1843, label %for.end.1849

for.body.1843:                                    ; preds = %for.cond.1835
  br label %for.inc.1844

for.inc.1844:                                     ; preds = %for.body.1843
  %756 = load %union.rec*, %union.rec** %par, align 8
  %os11845 = bitcast %union.rec* %756 to %struct.word_type*
  %olist1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11845, i32 0, i32 0
  %arrayidx1847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1846, i32 0, i64 1
  %opred1848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1847, i32 0, i32 0
  %757 = load %union.rec*, %union.rec** %opred1848, align 8
  store %union.rec* %757, %union.rec** %par, align 8
  br label %for.cond.1835

for.end.1849:                                     ; preds = %for.cond.1835
  %758 = load %union.rec*, %union.rec** %par, align 8
  %os11850 = bitcast %union.rec* %758 to %struct.word_type*
  %ou11851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11850, i32 0, i32 1
  %os111852 = bitcast %union.FIRST_UNION* %ou11851 to %struct.anon*
  %otype1853 = getelementptr inbounds %struct.anon, %struct.anon* %os111852, i32 0, i32 0
  %759 = load i8, i8* %otype1853, align 1
  %conv1854 = zext i8 %759 to i32
  %cmp1855 = icmp eq i32 %conv1854, 10
  br i1 %cmp1855, label %if.then.1857, label %if.end.2201

if.then.1857:                                     ; preds = %for.end.1849
  %760 = load %union.rec*, %union.rec** %par, align 8
  %os11858 = bitcast %union.rec* %760 to %struct.word_type*
  %olist1859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11858, i32 0, i32 0
  %arrayidx1860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1859, i32 0, i64 0
  %osucc1861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1860, i32 0, i32 1
  %761 = load %union.rec*, %union.rec** %osucc1861, align 8
  %762 = load %union.rec*, %union.rec** %par, align 8
  %cmp1862 = icmp ne %union.rec* %761, %762
  br i1 %cmp1862, label %if.end.1866, label %if.then.1864

if.then.1864:                                     ; preds = %if.then.1857
  %763 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1865 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %763, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.1866

if.end.1866:                                      ; preds = %if.then.1864, %if.then.1857
  %764 = load %union.rec*, %union.rec** %par, align 8
  %os21867 = bitcast %union.rec* %764 to %struct.closure_type*
  %oactual1868 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21867, i32 0, i32 5
  %765 = load %union.rec*, %union.rec** %oactual1868, align 8
  %os11869 = bitcast %union.rec* %765 to %struct.word_type*
  %ou21870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11869, i32 0, i32 2
  %os261871 = bitcast %union.SECOND_UNION* %ou21870 to %struct.anon.5*
  %ois_tag = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261871, i32 0, i32 1
  %766 = bitcast [3 x i8]* %ois_tag to i24*
  %bf.load1872 = load i24, i24* %766, align 1
  %bf.clear1873 = and i24 %bf.load1872, 1
  %bf.cast1874 = zext i24 %bf.clear1873 to i32
  %tobool1875 = icmp ne i32 %bf.cast1874, 0
  br i1 %tobool1875, label %if.then.1876, label %if.else.2074

if.then.1876:                                     ; preds = %if.end.1866
  %767 = load %union.rec*, %union.rec** %par, align 8
  %os11877 = bitcast %union.rec* %767 to %struct.word_type*
  %olist1878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11877, i32 0, i32 0
  %arrayidx1879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1878, i32 0, i64 0
  %osucc1880 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1879, i32 0, i32 1
  %768 = load %union.rec*, %union.rec** %osucc1880, align 8
  %os11881 = bitcast %union.rec* %768 to %struct.word_type*
  %olist1882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11881, i32 0, i32 0
  %arrayidx1883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1882, i32 0, i64 1
  %opred1884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1883, i32 0, i32 0
  %769 = load %union.rec*, %union.rec** %opred1884, align 8
  store %union.rec* %769, %union.rec** %tag, align 8
  br label %for.cond.1885

for.cond.1885:                                    ; preds = %for.inc.1894, %if.then.1876
  %770 = load %union.rec*, %union.rec** %tag, align 8
  %os11886 = bitcast %union.rec* %770 to %struct.word_type*
  %ou11887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11886, i32 0, i32 1
  %os111888 = bitcast %union.FIRST_UNION* %ou11887 to %struct.anon*
  %otype1889 = getelementptr inbounds %struct.anon, %struct.anon* %os111888, i32 0, i32 0
  %771 = load i8, i8* %otype1889, align 1
  %conv1890 = zext i8 %771 to i32
  %cmp1891 = icmp eq i32 %conv1890, 0
  br i1 %cmp1891, label %for.body.1893, label %for.end.1899

for.body.1893:                                    ; preds = %for.cond.1885
  br label %for.inc.1894

for.inc.1894:                                     ; preds = %for.body.1893
  %772 = load %union.rec*, %union.rec** %tag, align 8
  %os11895 = bitcast %union.rec* %772 to %struct.word_type*
  %olist1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11895, i32 0, i32 0
  %arrayidx1897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1896, i32 0, i64 1
  %opred1898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1897, i32 0, i32 0
  %773 = load %union.rec*, %union.rec** %opred1898, align 8
  store %union.rec* %773, %union.rec** %tag, align 8
  br label %for.cond.1885

for.end.1899:                                     ; preds = %for.cond.1885
  %774 = load %union.rec*, %union.rec** %tag, align 8
  %call1900 = call %union.rec* @ReplaceWithTidy(%union.rec* %774, i32 1)
  store %union.rec* %call1900, %union.rec** %tag, align 8
  %775 = load %union.rec*, %union.rec** %tag, align 8
  %os11901 = bitcast %union.rec* %775 to %struct.word_type*
  %ou11902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11901, i32 0, i32 1
  %os111903 = bitcast %union.FIRST_UNION* %ou11902 to %struct.anon*
  %otype1904 = getelementptr inbounds %struct.anon, %struct.anon* %os111903, i32 0, i32 0
  %776 = load i8, i8* %otype1904, align 1
  %conv1905 = zext i8 %776 to i32
  %cmp1906 = icmp eq i32 %conv1905, 11
  br i1 %cmp1906, label %if.else.1926, label %lor.lhs.false.1908

lor.lhs.false.1908:                               ; preds = %for.end.1899
  %777 = load %union.rec*, %union.rec** %tag, align 8
  %os11909 = bitcast %union.rec* %777 to %struct.word_type*
  %ou11910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11909, i32 0, i32 1
  %os111911 = bitcast %union.FIRST_UNION* %ou11910 to %struct.anon*
  %otype1912 = getelementptr inbounds %struct.anon, %struct.anon* %os111911, i32 0, i32 0
  %778 = load i8, i8* %otype1912, align 1
  %conv1913 = zext i8 %778 to i32
  %cmp1914 = icmp eq i32 %conv1913, 12
  br i1 %cmp1914, label %if.else.1926, label %if.then.1916

if.then.1916:                                     ; preds = %lor.lhs.false.1908
  %779 = load %union.rec*, %union.rec** %tag, align 8
  %os11917 = bitcast %union.rec* %779 to %struct.word_type*
  %ou11918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11917, i32 0, i32 1
  %ofpos1919 = bitcast %union.FIRST_UNION* %ou11918 to %struct.FILE_POS*
  %780 = load %union.rec*, %union.rec** %cs, align 8
  %os71920 = bitcast %union.rec* %780 to %struct.cr_type*
  %otarget_val1921 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os71920, i32 0, i32 4
  %781 = load %union.rec*, %union.rec** %otarget_val1921, align 8
  %os21922 = bitcast %union.rec* %781 to %struct.closure_type*
  %oactual1923 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21922, i32 0, i32 5
  %782 = load %union.rec*, %union.rec** %oactual1923, align 8
  %call1924 = call i8* @SymName(%union.rec* %782)
  %call1925 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1919, i8* %call1924)
  br label %if.end.2073

if.else.1926:                                     ; preds = %lor.lhs.false.1908, %for.end.1899
  %783 = load %union.rec*, %union.rec** %tag, align 8
  %os11927 = bitcast %union.rec* %783 to %struct.word_type*
  %ostring1928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11927, i32 0, i32 4
  %arraydecay1929 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1928, i32 0, i32 0
  %call1930 = call i32 @strcmp(i8* %arraydecay1929, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp1931 = icmp eq i32 %call1930, 0
  br i1 %cmp1931, label %if.then.1933, label %if.else.1934

if.then.1933:                                     ; preds = %if.else.1926
  br label %if.end.2072

if.else.1934:                                     ; preds = %if.else.1926
  %784 = load %union.rec*, %union.rec** %tag, align 8
  %os11935 = bitcast %union.rec* %784 to %struct.word_type*
  %ou11936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11935, i32 0, i32 1
  %ofpos1937 = bitcast %union.FIRST_UNION* %ou11936 to %struct.FILE_POS*
  %ofile_num1938 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1937, i32 0, i32 2
  %785 = load i16, i16* %ofile_num1938, align 2
  %786 = load %union.rec*, %union.rec** %tag, align 8
  %os11939 = bitcast %union.rec* %786 to %struct.word_type*
  %ou31940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11939, i32 0, i32 3
  %os331941 = bitcast %union.THIRD_UNION* %ou31940 to %struct.anon.8*
  %ocs_fnum1942 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331941, i32 0, i32 1
  store i16 %785, i16* %ocs_fnum1942, align 2
  %787 = load %union.rec*, %union.rec** %tag, align 8
  %os11943 = bitcast %union.rec* %787 to %struct.word_type*
  %ou31944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11943, i32 0, i32 3
  %os331945 = bitcast %union.THIRD_UNION* %ou31944 to %struct.anon.8*
  %ocs_type1946 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os331945, i32 0, i32 0
  store i8 126, i8* %ocs_type1946, align 1
  %788 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1947 = zext i8 %788 to i32
  store i32 %conv1947, i32* @zz_size, align 4
  %conv1948 = sext i32 %conv1947 to i64
  %cmp1949 = icmp uge i64 %conv1948, 265
  br i1 %cmp1949, label %if.then.1951, label %if.else.1953

if.then.1951:                                     ; preds = %if.else.1934
  %789 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1952 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %789)
  br label %if.end.1970

if.else.1953:                                     ; preds = %if.else.1934
  %790 = load i32, i32* @zz_size, align 4
  %idxprom1954 = sext i32 %790 to i64
  %arrayidx1955 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1954
  %791 = load %union.rec*, %union.rec** %arrayidx1955, align 8
  %cmp1956 = icmp eq %union.rec* %791, null
  br i1 %cmp1956, label %if.then.1958, label %if.else.1960

if.then.1958:                                     ; preds = %if.else.1953
  %792 = load i32, i32* @zz_size, align 4
  %793 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1959 = call %union.rec* @GetMemory(i32 %792, %struct.FILE_POS* %793)
  store %union.rec* %call1959, %union.rec** @zz_hold, align 8
  br label %if.end.1969

if.else.1960:                                     ; preds = %if.else.1953
  %794 = load i32, i32* @zz_size, align 4
  %idxprom1961 = sext i32 %794 to i64
  %arrayidx1962 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1961
  %795 = load %union.rec*, %union.rec** %arrayidx1962, align 8
  store %union.rec* %795, %union.rec** @zz_hold, align 8
  store %union.rec* %795, %union.rec** @zz_hold, align 8
  %796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11963 = bitcast %union.rec* %796 to %struct.word_type*
  %olist1964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11963, i32 0, i32 0
  %arrayidx1965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1964, i32 0, i64 0
  %opred1966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1965, i32 0, i32 0
  %797 = load %union.rec*, %union.rec** %opred1966, align 8
  %798 = load i32, i32* @zz_size, align 4
  %idxprom1967 = sext i32 %798 to i64
  %arrayidx1968 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1967
  store %union.rec* %797, %union.rec** %arrayidx1968, align 8
  br label %if.end.1969

if.end.1969:                                      ; preds = %if.else.1960, %if.then.1958
  br label %if.end.1970

if.end.1970:                                      ; preds = %if.end.1969, %if.then.1951
  %799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11971 = bitcast %union.rec* %799 to %struct.word_type*
  %ou11972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11971, i32 0, i32 1
  %os111973 = bitcast %union.FIRST_UNION* %ou11972 to %struct.anon*
  %otype1974 = getelementptr inbounds %struct.anon, %struct.anon* %os111973, i32 0, i32 0
  store i8 0, i8* %otype1974, align 1
  %800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11975 = bitcast %union.rec* %801 to %struct.word_type*
  %olist1976 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11975, i32 0, i32 0
  %arrayidx1977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1976, i32 0, i64 1
  %osucc1978 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1977, i32 0, i32 1
  store %union.rec* %800, %union.rec** %osucc1978, align 8
  %802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11979 = bitcast %union.rec* %802 to %struct.word_type*
  %olist1980 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11979, i32 0, i32 0
  %arrayidx1981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1980, i32 0, i64 1
  %opred1982 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1981, i32 0, i32 0
  store %union.rec* %800, %union.rec** %opred1982, align 8
  %803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11983 = bitcast %union.rec* %803 to %struct.word_type*
  %olist1984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11983, i32 0, i32 0
  %arrayidx1985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1984, i32 0, i64 0
  %osucc1986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1985, i32 0, i32 1
  store %union.rec* %800, %union.rec** %osucc1986, align 8
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11987 = bitcast %union.rec* %804 to %struct.word_type*
  %olist1988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11987, i32 0, i32 0
  %arrayidx1989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1988, i32 0, i64 0
  %opred1990 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1989, i32 0, i32 0
  store %union.rec* %800, %union.rec** %opred1990, align 8
  store %union.rec* %800, %union.rec** @xx_link, align 8
  %805 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %805, %union.rec** @zz_res, align 8
  %806 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %806, %union.rec** @zz_hold, align 8
  %807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1991 = icmp eq %union.rec* %807, null
  br i1 %cmp1991, label %cond.true.1993, label %cond.false.1994

cond.true.1993:                                   ; preds = %if.end.1970
  %808 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2030

cond.false.1994:                                  ; preds = %if.end.1970
  %809 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1995 = icmp eq %union.rec* %809, null
  br i1 %cmp1995, label %cond.true.1997, label %cond.false.1998

cond.true.1997:                                   ; preds = %cond.false.1994
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2028

cond.false.1998:                                  ; preds = %cond.false.1994
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12000 = bitcast %union.rec* %811 to %struct.word_type*
  %olist2001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12000, i32 0, i32 0
  %arrayidx2002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2001, i32 0, i64 0
  %opred2003 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2002, i32 0, i32 0
  %812 = load %union.rec*, %union.rec** %opred2003, align 8
  store %union.rec* %812, %union.rec** @zz_tmp, align 8
  %813 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12004 = bitcast %union.rec* %813 to %struct.word_type*
  %olist2005 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12004, i32 0, i32 0
  %arrayidx2006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2005, i32 0, i64 0
  %opred2007 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2006, i32 0, i32 0
  %814 = load %union.rec*, %union.rec** %opred2007, align 8
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12008 = bitcast %union.rec* %815 to %struct.word_type*
  %olist2009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12008, i32 0, i32 0
  %arrayidx2010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2009, i32 0, i64 0
  %opred2011 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2010, i32 0, i32 0
  store %union.rec* %814, %union.rec** %opred2011, align 8
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %817 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12012 = bitcast %union.rec* %817 to %struct.word_type*
  %olist2013 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12012, i32 0, i32 0
  %arrayidx2014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2013, i32 0, i64 0
  %opred2015 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2014, i32 0, i32 0
  %818 = load %union.rec*, %union.rec** %opred2015, align 8
  %os12016 = bitcast %union.rec* %818 to %struct.word_type*
  %olist2017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12016, i32 0, i32 0
  %arrayidx2018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2017, i32 0, i64 0
  %osucc2019 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2018, i32 0, i32 1
  store %union.rec* %816, %union.rec** %osucc2019, align 8
  %819 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %820 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12020 = bitcast %union.rec* %820 to %struct.word_type*
  %olist2021 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12020, i32 0, i32 0
  %arrayidx2022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2021, i32 0, i64 0
  %opred2023 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2022, i32 0, i32 0
  store %union.rec* %819, %union.rec** %opred2023, align 8
  %821 = load %union.rec*, %union.rec** @zz_res, align 8
  %822 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12024 = bitcast %union.rec* %822 to %struct.word_type*
  %olist2025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12024, i32 0, i32 0
  %arrayidx2026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2025, i32 0, i64 0
  %osucc2027 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2026, i32 0, i32 1
  store %union.rec* %821, %union.rec** %osucc2027, align 8
  br label %cond.end.2028

cond.end.2028:                                    ; preds = %cond.false.1998, %cond.true.1997
  %cond2029 = phi %union.rec* [ %810, %cond.true.1997 ], [ %821, %cond.false.1998 ]
  br label %cond.end.2030

cond.end.2030:                                    ; preds = %cond.end.2028, %cond.true.1993
  %cond2031 = phi %union.rec* [ %808, %cond.true.1993 ], [ %cond2029, %cond.end.2028 ]
  %823 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %823, %union.rec** @zz_res, align 8
  %824 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %824, %union.rec** @zz_hold, align 8
  %825 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2032 = icmp eq %union.rec* %825, null
  br i1 %cmp2032, label %cond.true.2034, label %cond.false.2035

cond.true.2034:                                   ; preds = %cond.end.2030
  %826 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2070

cond.false.2035:                                  ; preds = %cond.end.2030
  %827 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2036 = icmp eq %union.rec* %827, null
  br i1 %cmp2036, label %cond.true.2038, label %cond.false.2039

cond.true.2038:                                   ; preds = %cond.false.2035
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2068

cond.false.2039:                                  ; preds = %cond.false.2035
  %829 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12040 = bitcast %union.rec* %829 to %struct.word_type*
  %olist2041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12040, i32 0, i32 0
  %arrayidx2042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2041, i32 0, i64 1
  %opred2043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2042, i32 0, i32 0
  %830 = load %union.rec*, %union.rec** %opred2043, align 8
  store %union.rec* %830, %union.rec** @zz_tmp, align 8
  %831 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12044 = bitcast %union.rec* %831 to %struct.word_type*
  %olist2045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12044, i32 0, i32 0
  %arrayidx2046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2045, i32 0, i64 1
  %opred2047 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2046, i32 0, i32 0
  %832 = load %union.rec*, %union.rec** %opred2047, align 8
  %833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12048 = bitcast %union.rec* %833 to %struct.word_type*
  %olist2049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12048, i32 0, i32 0
  %arrayidx2050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2049, i32 0, i64 1
  %opred2051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2050, i32 0, i32 0
  store %union.rec* %832, %union.rec** %opred2051, align 8
  %834 = load %union.rec*, %union.rec** @zz_hold, align 8
  %835 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12052 = bitcast %union.rec* %835 to %struct.word_type*
  %olist2053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12052, i32 0, i32 0
  %arrayidx2054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2053, i32 0, i64 1
  %opred2055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2054, i32 0, i32 0
  %836 = load %union.rec*, %union.rec** %opred2055, align 8
  %os12056 = bitcast %union.rec* %836 to %struct.word_type*
  %olist2057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12056, i32 0, i32 0
  %arrayidx2058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2057, i32 0, i64 1
  %osucc2059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2058, i32 0, i32 1
  store %union.rec* %834, %union.rec** %osucc2059, align 8
  %837 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %838 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12060 = bitcast %union.rec* %838 to %struct.word_type*
  %olist2061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12060, i32 0, i32 0
  %arrayidx2062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2061, i32 0, i64 1
  %opred2063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2062, i32 0, i32 0
  store %union.rec* %837, %union.rec** %opred2063, align 8
  %839 = load %union.rec*, %union.rec** @zz_res, align 8
  %840 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12064 = bitcast %union.rec* %840 to %struct.word_type*
  %olist2065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12064, i32 0, i32 0
  %arrayidx2066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2065, i32 0, i64 1
  %osucc2067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2066, i32 0, i32 1
  store %union.rec* %839, %union.rec** %osucc2067, align 8
  br label %cond.end.2068

cond.end.2068:                                    ; preds = %cond.false.2039, %cond.true.2038
  %cond2069 = phi %union.rec* [ %828, %cond.true.2038 ], [ %839, %cond.false.2039 ]
  br label %cond.end.2070

cond.end.2070:                                    ; preds = %cond.end.2068, %cond.true.2034
  %cond2071 = phi %union.rec* [ %826, %cond.true.2034 ], [ %cond2069, %cond.end.2068 ]
  br label %if.end.2072

if.end.2072:                                      ; preds = %cond.end.2070, %if.then.1933
  br label %if.end.2073

if.end.2073:                                      ; preds = %if.end.2072, %if.then.1916
  br label %if.end.2200

if.else.2074:                                     ; preds = %if.end.1866
  %841 = load %union.rec*, %union.rec** %par, align 8
  %os22075 = bitcast %union.rec* %841 to %struct.closure_type*
  %oactual2076 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22075, i32 0, i32 5
  %842 = load %union.rec*, %union.rec** %oactual2076, align 8
  %os12077 = bitcast %union.rec* %842 to %struct.word_type*
  %ou12078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12077, i32 0, i32 1
  %os112079 = bitcast %union.FIRST_UNION* %ou12078 to %struct.anon*
  %otype2080 = getelementptr inbounds %struct.anon, %struct.anon* %os112079, i32 0, i32 0
  %843 = load i8, i8* %otype2080, align 1
  %conv2081 = zext i8 %843 to i32
  %cmp2082 = icmp eq i32 %conv2081, 146
  br i1 %cmp2082, label %if.then.2084, label %if.end.2199

if.then.2084:                                     ; preds = %if.else.2074
  %844 = load %union.rec*, %union.rec** %par, align 8
  %os12085 = bitcast %union.rec* %844 to %struct.word_type*
  %olist2086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12085, i32 0, i32 0
  %arrayidx2087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2086, i32 0, i64 0
  %osucc2088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2087, i32 0, i32 1
  %845 = load %union.rec*, %union.rec** %osucc2088, align 8
  %os12089 = bitcast %union.rec* %845 to %struct.word_type*
  %olist2090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12089, i32 0, i32 0
  %arrayidx2091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2090, i32 0, i64 1
  %opred2092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2091, i32 0, i32 0
  %846 = load %union.rec*, %union.rec** %opred2092, align 8
  store %union.rec* %846, %union.rec** %y, align 8
  br label %for.cond.2093

for.cond.2093:                                    ; preds = %for.inc.2102, %if.then.2084
  %847 = load %union.rec*, %union.rec** %y, align 8
  %os12094 = bitcast %union.rec* %847 to %struct.word_type*
  %ou12095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12094, i32 0, i32 1
  %os112096 = bitcast %union.FIRST_UNION* %ou12095 to %struct.anon*
  %otype2097 = getelementptr inbounds %struct.anon, %struct.anon* %os112096, i32 0, i32 0
  %848 = load i8, i8* %otype2097, align 1
  %conv2098 = zext i8 %848 to i32
  %cmp2099 = icmp eq i32 %conv2098, 0
  br i1 %cmp2099, label %for.body.2101, label %for.end.2107

for.body.2101:                                    ; preds = %for.cond.2093
  br label %for.inc.2102

for.inc.2102:                                     ; preds = %for.body.2101
  %849 = load %union.rec*, %union.rec** %y, align 8
  %os12103 = bitcast %union.rec* %849 to %struct.word_type*
  %olist2104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12103, i32 0, i32 0
  %arrayidx2105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2104, i32 0, i64 1
  %opred2106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2105, i32 0, i32 0
  %850 = load %union.rec*, %union.rec** %opred2106, align 8
  store %union.rec* %850, %union.rec** %y, align 8
  br label %for.cond.2093

for.end.2107:                                     ; preds = %for.cond.2093
  %851 = load %union.rec*, %union.rec** %y, align 8
  %os12108 = bitcast %union.rec* %851 to %struct.word_type*
  %ou12109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12108, i32 0, i32 1
  %os112110 = bitcast %union.FIRST_UNION* %ou12109 to %struct.anon*
  %otype2111 = getelementptr inbounds %struct.anon, %struct.anon* %os112110, i32 0, i32 0
  %852 = load i8, i8* %otype2111, align 1
  %conv2112 = zext i8 %852 to i32
  switch i32 %conv2112, label %sw.default.2114 [
    i32 11, label %sw.bb.2113
    i32 12, label %sw.bb.2113
    i32 17, label %sw.bb.2113
    i32 92, label %sw.bb.2113
    i32 78, label %sw.bb.2113
    i32 5, label %sw.bb.2113
    i32 6, label %sw.bb.2113
    i32 7, label %sw.bb.2113
    i32 93, label %sw.bb.2113
  ]

sw.bb.2113:                                       ; preds = %for.end.2107, %for.end.2107, %for.end.2107, %for.end.2107, %for.end.2107, %for.end.2107, %for.end.2107, %for.end.2107, %for.end.2107
  br label %sw.epilog.2198

sw.default.2114:                                  ; preds = %for.end.2107
  %853 = load %union.rec*, %union.rec** %y, align 8
  %os12115 = bitcast %union.rec* %853 to %struct.word_type*
  %ou12116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12115, i32 0, i32 1
  %ofpos2117 = bitcast %union.FIRST_UNION* %ou12116 to %struct.FILE_POS*
  %call2118 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct.FILE_POS* %ofpos2117)
  store %union.rec* %call2118, %union.rec** %tmp, align 8
  %854 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %854, %union.rec** @zz_hold, align 8
  %855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12119 = bitcast %union.rec* %855 to %struct.word_type*
  %olist2120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12119, i32 0, i32 0
  %arrayidx2121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2120, i32 0, i64 1
  %osucc2122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2121, i32 0, i32 1
  %856 = load %union.rec*, %union.rec** %osucc2122, align 8
  %857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2123 = icmp eq %union.rec* %856, %857
  br i1 %cmp2123, label %cond.true.2125, label %cond.false.2126

cond.true.2125:                                   ; preds = %sw.default.2114
  br label %cond.end.2155

cond.false.2126:                                  ; preds = %sw.default.2114
  %858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12127 = bitcast %union.rec* %858 to %struct.word_type*
  %olist2128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12127, i32 0, i32 0
  %arrayidx2129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2128, i32 0, i64 1
  %osucc2130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2129, i32 0, i32 1
  %859 = load %union.rec*, %union.rec** %osucc2130, align 8
  store %union.rec* %859, %union.rec** @zz_res, align 8
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12131 = bitcast %union.rec* %860 to %struct.word_type*
  %olist2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12131, i32 0, i32 0
  %arrayidx2133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2132, i32 0, i64 1
  %opred2134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2133, i32 0, i32 0
  %861 = load %union.rec*, %union.rec** %opred2134, align 8
  %862 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12135 = bitcast %union.rec* %862 to %struct.word_type*
  %olist2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12135, i32 0, i32 0
  %arrayidx2137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2136, i32 0, i64 1
  %opred2138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2137, i32 0, i32 0
  store %union.rec* %861, %union.rec** %opred2138, align 8
  %863 = load %union.rec*, %union.rec** @zz_res, align 8
  %864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12139 = bitcast %union.rec* %864 to %struct.word_type*
  %olist2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12139, i32 0, i32 0
  %arrayidx2141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2140, i32 0, i64 1
  %opred2142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2141, i32 0, i32 0
  %865 = load %union.rec*, %union.rec** %opred2142, align 8
  %os12143 = bitcast %union.rec* %865 to %struct.word_type*
  %olist2144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12143, i32 0, i32 0
  %arrayidx2145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2144, i32 0, i64 1
  %osucc2146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2145, i32 0, i32 1
  store %union.rec* %863, %union.rec** %osucc2146, align 8
  %866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12147 = bitcast %union.rec* %867 to %struct.word_type*
  %olist2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12147, i32 0, i32 0
  %arrayidx2149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2148, i32 0, i64 1
  %osucc2150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2149, i32 0, i32 1
  store %union.rec* %866, %union.rec** %osucc2150, align 8
  %868 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12151 = bitcast %union.rec* %868 to %struct.word_type*
  %olist2152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12151, i32 0, i32 0
  %arrayidx2153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2152, i32 0, i64 1
  %opred2154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2153, i32 0, i32 0
  store %union.rec* %866, %union.rec** %opred2154, align 8
  %869 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2155

cond.end.2155:                                    ; preds = %cond.false.2126, %cond.true.2125
  %cond2156 = phi %union.rec* [ null, %cond.true.2125 ], [ %869, %cond.false.2126 ]
  store %union.rec* %cond2156, %union.rec** @xx_tmp, align 8
  %870 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %870, %union.rec** @zz_res, align 8
  %871 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %871, %union.rec** @zz_hold, align 8
  %872 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2157 = icmp eq %union.rec* %872, null
  br i1 %cmp2157, label %cond.true.2159, label %cond.false.2160

cond.true.2159:                                   ; preds = %cond.end.2155
  %873 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2195

cond.false.2160:                                  ; preds = %cond.end.2155
  %874 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2161 = icmp eq %union.rec* %874, null
  br i1 %cmp2161, label %cond.true.2163, label %cond.false.2164

cond.true.2163:                                   ; preds = %cond.false.2160
  %875 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2193

cond.false.2164:                                  ; preds = %cond.false.2160
  %876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12165 = bitcast %union.rec* %876 to %struct.word_type*
  %olist2166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12165, i32 0, i32 0
  %arrayidx2167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2166, i32 0, i64 1
  %opred2168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2167, i32 0, i32 0
  %877 = load %union.rec*, %union.rec** %opred2168, align 8
  store %union.rec* %877, %union.rec** @zz_tmp, align 8
  %878 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12169 = bitcast %union.rec* %878 to %struct.word_type*
  %olist2170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12169, i32 0, i32 0
  %arrayidx2171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2170, i32 0, i64 1
  %opred2172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2171, i32 0, i32 0
  %879 = load %union.rec*, %union.rec** %opred2172, align 8
  %880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12173 = bitcast %union.rec* %880 to %struct.word_type*
  %olist2174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12173, i32 0, i32 0
  %arrayidx2175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2174, i32 0, i64 1
  %opred2176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2175, i32 0, i32 0
  store %union.rec* %879, %union.rec** %opred2176, align 8
  %881 = load %union.rec*, %union.rec** @zz_hold, align 8
  %882 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12177 = bitcast %union.rec* %882 to %struct.word_type*
  %olist2178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12177, i32 0, i32 0
  %arrayidx2179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2178, i32 0, i64 1
  %opred2180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2179, i32 0, i32 0
  %883 = load %union.rec*, %union.rec** %opred2180, align 8
  %os12181 = bitcast %union.rec* %883 to %struct.word_type*
  %olist2182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12181, i32 0, i32 0
  %arrayidx2183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2182, i32 0, i64 1
  %osucc2184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2183, i32 0, i32 1
  store %union.rec* %881, %union.rec** %osucc2184, align 8
  %884 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %885 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12185 = bitcast %union.rec* %885 to %struct.word_type*
  %olist2186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12185, i32 0, i32 0
  %arrayidx2187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2186, i32 0, i64 1
  %opred2188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2187, i32 0, i32 0
  store %union.rec* %884, %union.rec** %opred2188, align 8
  %886 = load %union.rec*, %union.rec** @zz_res, align 8
  %887 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12189 = bitcast %union.rec* %887 to %struct.word_type*
  %olist2190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12189, i32 0, i32 0
  %arrayidx2191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2190, i32 0, i64 1
  %osucc2192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2191, i32 0, i32 1
  store %union.rec* %886, %union.rec** %osucc2192, align 8
  br label %cond.end.2193

cond.end.2193:                                    ; preds = %cond.false.2164, %cond.true.2163
  %cond2194 = phi %union.rec* [ %875, %cond.true.2163 ], [ %886, %cond.false.2164 ]
  br label %cond.end.2195

cond.end.2195:                                    ; preds = %cond.end.2193, %cond.true.2159
  %cond2196 = phi %union.rec* [ %873, %cond.true.2159 ], [ %cond2194, %cond.end.2193 ]
  %888 = load %union.rec*, %union.rec** %y, align 8
  %call2197 = call i32 @DisposeObject(%union.rec* %888)
  br label %sw.epilog.2198

sw.epilog.2198:                                   ; preds = %cond.end.2195, %sw.bb.2113
  br label %if.end.2199

if.end.2199:                                      ; preds = %sw.epilog.2198, %if.else.2074
  br label %if.end.2200

if.end.2200:                                      ; preds = %if.end.2199, %if.end.2073
  br label %if.end.2201

if.end.2201:                                      ; preds = %if.end.2200, %for.end.1849
  br label %for.inc.2202

for.inc.2202:                                     ; preds = %if.end.2201
  %889 = load %union.rec*, %union.rec** %link, align 8
  %os12203 = bitcast %union.rec* %889 to %struct.word_type*
  %olist2204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12203, i32 0, i32 0
  %arrayidx2205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2204, i32 0, i64 0
  %osucc2206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2205, i32 0, i32 1
  %890 = load %union.rec*, %union.rec** %osucc2206, align 8
  store %union.rec* %890, %union.rec** %link, align 8
  br label %for.cond.1825

for.end.2207:                                     ; preds = %for.cond.1825
  %891 = load %union.rec*, %union.rec** %cs, align 8
  %os12208 = bitcast %union.rec* %891 to %struct.word_type*
  %olist2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12208, i32 0, i32 0
  %arrayidx2210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2209, i32 0, i64 0
  %osucc2211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2210, i32 0, i32 1
  %892 = load %union.rec*, %union.rec** %osucc2211, align 8
  %893 = load %union.rec*, %union.rec** %cs, align 8
  %cmp2212 = icmp ne %union.rec* %892, %893
  br i1 %cmp2212, label %if.then.2214, label %if.end.2443

if.then.2214:                                     ; preds = %for.end.2207
  %894 = load %union.rec*, %union.rec** %cs, align 8
  %os72215 = bitcast %union.rec* %894 to %struct.cr_type*
  %otarget_val2216 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72215, i32 0, i32 4
  %895 = load %union.rec*, %union.rec** %otarget_val2216, align 8
  %896 = load %union.rec*, %union.rec** %cs, align 8
  %os72217 = bitcast %union.rec* %896 to %struct.cr_type*
  %otarget_file2218 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72217, i32 0, i32 3
  %897 = load i16, i16* %otarget_file2218, align 2
  %898 = load %union.rec*, %union.rec** %cs, align 8
  %os72219 = bitcast %union.rec* %898 to %struct.cr_type*
  %otarget_pos2220 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72219, i32 0, i32 6
  %899 = load %union.rec*, %union.rec** %cs, align 8
  %os72221 = bitcast %union.rec* %899 to %struct.cr_type*
  %otarget_lnum2222 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72221, i32 0, i32 7
  call void @AppendToFile(%union.rec* %895, i16 zeroext %897, i32* %otarget_pos2220, i32* %otarget_lnum2222)
  %900 = load %union.rec*, %union.rec** %cs, align 8
  %os72223 = bitcast %union.rec* %900 to %struct.cr_type*
  %otarget_val2224 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72223, i32 0, i32 4
  %901 = load %union.rec*, %union.rec** %otarget_val2224, align 8
  %call2225 = call i32 @DisposeObject(%union.rec* %901)
  %902 = load %union.rec*, %union.rec** %cs, align 8
  %os72226 = bitcast %union.rec* %902 to %struct.cr_type*
  %otarget_val2227 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72226, i32 0, i32 4
  store %union.rec* null, %union.rec** %otarget_val2227, align 8
  %903 = load %union.rec*, %union.rec** %cs, align 8
  %os12228 = bitcast %union.rec* %903 to %struct.word_type*
  %olist2229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12228, i32 0, i32 0
  %arrayidx2230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2229, i32 0, i64 0
  %osucc2231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2230, i32 0, i32 1
  %904 = load %union.rec*, %union.rec** %osucc2231, align 8
  store %union.rec* %904, %union.rec** %link, align 8
  br label %for.cond.2232

for.cond.2232:                                    ; preds = %for.inc.2435, %if.then.2214
  %905 = load %union.rec*, %union.rec** %link, align 8
  %906 = load %union.rec*, %union.rec** %cs, align 8
  %cmp2233 = icmp ne %union.rec* %905, %906
  br i1 %cmp2233, label %for.body.2235, label %for.end.2440

for.body.2235:                                    ; preds = %for.cond.2232
  %907 = load %union.rec*, %union.rec** %link, align 8
  %os12236 = bitcast %union.rec* %907 to %struct.word_type*
  %olist2237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12236, i32 0, i32 0
  %arrayidx2238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2237, i32 0, i64 1
  %opred2239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2238, i32 0, i32 0
  %908 = load %union.rec*, %union.rec** %opred2239, align 8
  store %union.rec* %908, %union.rec** %tag, align 8
  br label %for.cond.2240

for.cond.2240:                                    ; preds = %for.inc.2249, %for.body.2235
  %909 = load %union.rec*, %union.rec** %tag, align 8
  %os12241 = bitcast %union.rec* %909 to %struct.word_type*
  %ou12242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12241, i32 0, i32 1
  %os112243 = bitcast %union.FIRST_UNION* %ou12242 to %struct.anon*
  %otype2244 = getelementptr inbounds %struct.anon, %struct.anon* %os112243, i32 0, i32 0
  %910 = load i8, i8* %otype2244, align 1
  %conv2245 = zext i8 %910 to i32
  %cmp2246 = icmp eq i32 %conv2245, 0
  br i1 %cmp2246, label %for.body.2248, label %for.end.2254

for.body.2248:                                    ; preds = %for.cond.2240
  br label %for.inc.2249

for.inc.2249:                                     ; preds = %for.body.2248
  %911 = load %union.rec*, %union.rec** %tag, align 8
  %os12250 = bitcast %union.rec* %911 to %struct.word_type*
  %olist2251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12250, i32 0, i32 0
  %arrayidx2252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2251, i32 0, i64 1
  %opred2253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2252, i32 0, i32 0
  %912 = load %union.rec*, %union.rec** %opred2253, align 8
  store %union.rec* %912, %union.rec** %tag, align 8
  br label %for.cond.2240

for.end.2254:                                     ; preds = %for.cond.2240
  %913 = load %union.rec*, %union.rec** %tag, align 8
  %os12255 = bitcast %union.rec* %913 to %struct.word_type*
  %ou12256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12255, i32 0, i32 1
  %os112257 = bitcast %union.FIRST_UNION* %ou12256 to %struct.anon*
  %otype2258 = getelementptr inbounds %struct.anon, %struct.anon* %os112257, i32 0, i32 0
  %914 = load i8, i8* %otype2258, align 1
  %conv2259 = zext i8 %914 to i32
  %cmp2260 = icmp eq i32 %conv2259, 11
  br i1 %cmp2260, label %land.lhs.true.2270, label %lor.lhs.false.2262

lor.lhs.false.2262:                               ; preds = %for.end.2254
  %915 = load %union.rec*, %union.rec** %tag, align 8
  %os12263 = bitcast %union.rec* %915 to %struct.word_type*
  %ou12264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12263, i32 0, i32 1
  %os112265 = bitcast %union.FIRST_UNION* %ou12264 to %struct.anon*
  %otype2266 = getelementptr inbounds %struct.anon, %struct.anon* %os112265, i32 0, i32 0
  %916 = load i8, i8* %otype2266, align 1
  %conv2267 = zext i8 %916 to i32
  %cmp2268 = icmp eq i32 %conv2267, 12
  br i1 %cmp2268, label %land.lhs.true.2270, label %if.then.2277

land.lhs.true.2270:                               ; preds = %lor.lhs.false.2262, %for.end.2254
  %917 = load %union.rec*, %union.rec** %tag, align 8
  %os12271 = bitcast %union.rec* %917 to %struct.word_type*
  %ostring2272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12271, i32 0, i32 4
  %arraydecay2273 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2272, i32 0, i32 0
  %call2274 = call i32 @strcmp(i8* %arraydecay2273, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp2275 = icmp eq i32 %call2274, 0
  br i1 %cmp2275, label %if.then.2277, label %if.end.2279

if.then.2277:                                     ; preds = %land.lhs.true.2270, %lor.lhs.false.2262
  %918 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2278 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %918, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.2279

if.end.2279:                                      ; preds = %if.then.2277, %land.lhs.true.2270
  %919 = load %union.rec*, %union.rec** %tag, align 8
  %os12280 = bitcast %union.rec* %919 to %struct.word_type*
  %ou32281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12280, i32 0, i32 3
  %os332282 = bitcast %union.THIRD_UNION* %ou32281 to %struct.anon.8*
  %ocs_type2283 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os332282, i32 0, i32 0
  %920 = load i8, i8* %ocs_type2283, align 1
  %conv2284 = zext i8 %920 to i32
  switch i32 %conv2284, label %sw.default.2432 [
    i32 126, label %sw.bb.2285
    i32 127, label %sw.bb.2285
    i32 128, label %sw.bb.2285
    i32 129, label %sw.bb.2431
    i32 133, label %sw.bb.2431
    i32 130, label %sw.bb.2431
  ]

sw.bb.2285:                                       ; preds = %if.end.2279, %if.end.2279, %if.end.2279
  %921 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %922 = load %union.rec*, %union.rec** %sym, align 8
  %923 = load %union.rec*, %union.rec** %tag, align 8
  %os12286 = bitcast %union.rec* %923 to %struct.word_type*
  %ostring2287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12286, i32 0, i32 4
  %arraydecay2288 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2287, i32 0, i32 0
  %924 = load %union.rec*, %union.rec** %tag, align 8
  %os12289 = bitcast %union.rec* %924 to %struct.word_type*
  %ou12290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12289, i32 0, i32 1
  %ofpos2291 = bitcast %union.FIRST_UNION* %ou12290 to %struct.FILE_POS*
  %925 = load %union.rec*, %union.rec** %cs, align 8
  %os72292 = bitcast %union.rec* %925 to %struct.cr_type*
  %otarget_file2293 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72292, i32 0, i32 3
  %926 = load i16, i16* %otarget_file2293, align 2
  %927 = load %union.rec*, %union.rec** %cs, align 8
  %os72294 = bitcast %union.rec* %927 to %struct.cr_type*
  %otarget_pos2295 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72294, i32 0, i32 6
  %928 = load i32, i32* %otarget_pos2295, align 4
  %conv2296 = sext i32 %928 to i64
  %929 = load %union.rec*, %union.rec** %cs, align 8
  %os72297 = bitcast %union.rec* %929 to %struct.cr_type*
  %otarget_lnum2298 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72297, i32 0, i32 7
  %930 = load i32, i32* %otarget_lnum2298, align 4
  call void @DbInsert(%union.rec* %921, i32 0, %union.rec* %922, i8* %arraydecay2288, %struct.FILE_POS* %ofpos2291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i16 zeroext %926, i64 %conv2296, i32 %930, i32 1)
  %931 = load %union.rec*, %union.rec** %link, align 8
  %os12299 = bitcast %union.rec* %931 to %struct.word_type*
  %olist2300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12299, i32 0, i32 0
  %arrayidx2301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2300, i32 0, i64 0
  %opred2302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2301, i32 0, i32 0
  %932 = load %union.rec*, %union.rec** %opred2302, align 8
  store %union.rec* %932, %union.rec** %link, align 8
  %933 = load %union.rec*, %union.rec** %link, align 8
  %os12303 = bitcast %union.rec* %933 to %struct.word_type*
  %olist2304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12303, i32 0, i32 0
  %arrayidx2305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2304, i32 0, i64 0
  %osucc2306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2305, i32 0, i32 1
  %934 = load %union.rec*, %union.rec** %osucc2306, align 8
  store %union.rec* %934, %union.rec** @xx_link, align 8
  %935 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %935, %union.rec** @zz_hold, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12307 = bitcast %union.rec* %936 to %struct.word_type*
  %olist2308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12307, i32 0, i32 0
  %arrayidx2309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2308, i32 0, i64 1
  %osucc2310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2309, i32 0, i32 1
  %937 = load %union.rec*, %union.rec** %osucc2310, align 8
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2311 = icmp eq %union.rec* %937, %938
  br i1 %cmp2311, label %cond.true.2313, label %cond.false.2314

cond.true.2313:                                   ; preds = %sw.bb.2285
  br label %cond.end.2343

cond.false.2314:                                  ; preds = %sw.bb.2285
  %939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12315 = bitcast %union.rec* %939 to %struct.word_type*
  %olist2316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12315, i32 0, i32 0
  %arrayidx2317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2316, i32 0, i64 1
  %osucc2318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2317, i32 0, i32 1
  %940 = load %union.rec*, %union.rec** %osucc2318, align 8
  store %union.rec* %940, %union.rec** @zz_res, align 8
  %941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12319 = bitcast %union.rec* %941 to %struct.word_type*
  %olist2320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12319, i32 0, i32 0
  %arrayidx2321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2320, i32 0, i64 1
  %opred2322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2321, i32 0, i32 0
  %942 = load %union.rec*, %union.rec** %opred2322, align 8
  %943 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12323 = bitcast %union.rec* %943 to %struct.word_type*
  %olist2324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12323, i32 0, i32 0
  %arrayidx2325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2324, i32 0, i64 1
  %opred2326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2325, i32 0, i32 0
  store %union.rec* %942, %union.rec** %opred2326, align 8
  %944 = load %union.rec*, %union.rec** @zz_res, align 8
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12327 = bitcast %union.rec* %945 to %struct.word_type*
  %olist2328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12327, i32 0, i32 0
  %arrayidx2329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2328, i32 0, i64 1
  %opred2330 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2329, i32 0, i32 0
  %946 = load %union.rec*, %union.rec** %opred2330, align 8
  %os12331 = bitcast %union.rec* %946 to %struct.word_type*
  %olist2332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12331, i32 0, i32 0
  %arrayidx2333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2332, i32 0, i64 1
  %osucc2334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2333, i32 0, i32 1
  store %union.rec* %944, %union.rec** %osucc2334, align 8
  %947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12335 = bitcast %union.rec* %948 to %struct.word_type*
  %olist2336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12335, i32 0, i32 0
  %arrayidx2337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2336, i32 0, i64 1
  %osucc2338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2337, i32 0, i32 1
  store %union.rec* %947, %union.rec** %osucc2338, align 8
  %949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12339 = bitcast %union.rec* %949 to %struct.word_type*
  %olist2340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12339, i32 0, i32 0
  %arrayidx2341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2340, i32 0, i64 1
  %opred2342 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2341, i32 0, i32 0
  store %union.rec* %947, %union.rec** %opred2342, align 8
  %950 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2343

cond.end.2343:                                    ; preds = %cond.false.2314, %cond.true.2313
  %cond2344 = phi %union.rec* [ null, %cond.true.2313 ], [ %950, %cond.false.2314 ]
  store %union.rec* %cond2344, %union.rec** @xx_tmp, align 8
  %951 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %951, %union.rec** @zz_hold, align 8
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12345 = bitcast %union.rec* %952 to %struct.word_type*
  %olist2346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12345, i32 0, i32 0
  %arrayidx2347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2346, i32 0, i64 0
  %osucc2348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2347, i32 0, i32 1
  %953 = load %union.rec*, %union.rec** %osucc2348, align 8
  %954 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2349 = icmp eq %union.rec* %953, %954
  br i1 %cmp2349, label %cond.true.2351, label %cond.false.2352

cond.true.2351:                                   ; preds = %cond.end.2343
  br label %cond.end.2381

cond.false.2352:                                  ; preds = %cond.end.2343
  %955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12353 = bitcast %union.rec* %955 to %struct.word_type*
  %olist2354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12353, i32 0, i32 0
  %arrayidx2355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2354, i32 0, i64 0
  %osucc2356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2355, i32 0, i32 1
  %956 = load %union.rec*, %union.rec** %osucc2356, align 8
  store %union.rec* %956, %union.rec** @zz_res, align 8
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12357 = bitcast %union.rec* %957 to %struct.word_type*
  %olist2358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12357, i32 0, i32 0
  %arrayidx2359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2358, i32 0, i64 0
  %opred2360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2359, i32 0, i32 0
  %958 = load %union.rec*, %union.rec** %opred2360, align 8
  %959 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12361 = bitcast %union.rec* %959 to %struct.word_type*
  %olist2362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12361, i32 0, i32 0
  %arrayidx2363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2362, i32 0, i64 0
  %opred2364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2363, i32 0, i32 0
  store %union.rec* %958, %union.rec** %opred2364, align 8
  %960 = load %union.rec*, %union.rec** @zz_res, align 8
  %961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12365 = bitcast %union.rec* %961 to %struct.word_type*
  %olist2366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12365, i32 0, i32 0
  %arrayidx2367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2366, i32 0, i64 0
  %opred2368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2367, i32 0, i32 0
  %962 = load %union.rec*, %union.rec** %opred2368, align 8
  %os12369 = bitcast %union.rec* %962 to %struct.word_type*
  %olist2370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12369, i32 0, i32 0
  %arrayidx2371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2370, i32 0, i64 0
  %osucc2372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2371, i32 0, i32 1
  store %union.rec* %960, %union.rec** %osucc2372, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12373 = bitcast %union.rec* %964 to %struct.word_type*
  %olist2374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12373, i32 0, i32 0
  %arrayidx2375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2374, i32 0, i64 0
  %osucc2376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2375, i32 0, i32 1
  store %union.rec* %963, %union.rec** %osucc2376, align 8
  %965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12377 = bitcast %union.rec* %965 to %struct.word_type*
  %olist2378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12377, i32 0, i32 0
  %arrayidx2379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2378, i32 0, i64 0
  %opred2380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2379, i32 0, i32 0
  store %union.rec* %963, %union.rec** %opred2380, align 8
  %966 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2381

cond.end.2381:                                    ; preds = %cond.false.2352, %cond.true.2351
  %cond2382 = phi %union.rec* [ null, %cond.true.2351 ], [ %966, %cond.false.2352 ]
  %967 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %967, %union.rec** @zz_hold, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %968, %union.rec** @zz_hold, align 8
  %969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12383 = bitcast %union.rec* %969 to %struct.word_type*
  %ou12384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12383, i32 0, i32 1
  %os112385 = bitcast %union.FIRST_UNION* %ou12384 to %struct.anon*
  %otype2386 = getelementptr inbounds %struct.anon, %struct.anon* %os112385, i32 0, i32 0
  %970 = load i8, i8* %otype2386, align 1
  %conv2387 = zext i8 %970 to i32
  %cmp2388 = icmp eq i32 %conv2387, 11
  br i1 %cmp2388, label %cond.true.2398, label %lor.lhs.false.2390

lor.lhs.false.2390:                               ; preds = %cond.end.2381
  %971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12391 = bitcast %union.rec* %971 to %struct.word_type*
  %ou12392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12391, i32 0, i32 1
  %os112393 = bitcast %union.FIRST_UNION* %ou12392 to %struct.anon*
  %otype2394 = getelementptr inbounds %struct.anon, %struct.anon* %os112393, i32 0, i32 0
  %972 = load i8, i8* %otype2394, align 1
  %conv2395 = zext i8 %972 to i32
  %cmp2396 = icmp eq i32 %conv2395, 12
  br i1 %cmp2396, label %cond.true.2398, label %cond.false.2404

cond.true.2398:                                   ; preds = %lor.lhs.false.2390, %cond.end.2381
  %973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12399 = bitcast %union.rec* %973 to %struct.word_type*
  %ou12400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12399, i32 0, i32 1
  %os112401 = bitcast %union.FIRST_UNION* %ou12400 to %struct.anon*
  %orec_size2402 = getelementptr inbounds %struct.anon, %struct.anon* %os112401, i32 0, i32 1
  %974 = load i8, i8* %orec_size2402, align 1
  %conv2403 = zext i8 %974 to i32
  br label %cond.end.2412

cond.false.2404:                                  ; preds = %lor.lhs.false.2390
  %975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12405 = bitcast %union.rec* %975 to %struct.word_type*
  %ou12406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12405, i32 0, i32 1
  %os112407 = bitcast %union.FIRST_UNION* %ou12406 to %struct.anon*
  %otype2408 = getelementptr inbounds %struct.anon, %struct.anon* %os112407, i32 0, i32 0
  %976 = load i8, i8* %otype2408, align 1
  %idxprom2409 = zext i8 %976 to i64
  %arrayidx2410 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2409
  %977 = load i8, i8* %arrayidx2410, align 1
  %conv2411 = zext i8 %977 to i32
  br label %cond.end.2412

cond.end.2412:                                    ; preds = %cond.false.2404, %cond.true.2398
  %cond2413 = phi i32 [ %conv2403, %cond.true.2398 ], [ %conv2411, %cond.false.2404 ]
  store i32 %cond2413, i32* @zz_size, align 4
  %978 = load i32, i32* @zz_size, align 4
  %idxprom2414 = sext i32 %978 to i64
  %arrayidx2415 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2414
  %979 = load %union.rec*, %union.rec** %arrayidx2415, align 8
  %980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12416 = bitcast %union.rec* %980 to %struct.word_type*
  %olist2417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12416, i32 0, i32 0
  %arrayidx2418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2417, i32 0, i64 0
  %opred2419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2418, i32 0, i32 0
  store %union.rec* %979, %union.rec** %opred2419, align 8
  %981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %982 = load i32, i32* @zz_size, align 4
  %idxprom2420 = sext i32 %982 to i64
  %arrayidx2421 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2420
  store %union.rec* %981, %union.rec** %arrayidx2421, align 8
  %983 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os12422 = bitcast %union.rec* %983 to %struct.word_type*
  %olist2423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12422, i32 0, i32 0
  %arrayidx2424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2423, i32 0, i64 1
  %osucc2425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2424, i32 0, i32 1
  %984 = load %union.rec*, %union.rec** %osucc2425, align 8
  %985 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp2426 = icmp eq %union.rec* %984, %985
  br i1 %cmp2426, label %if.then.2428, label %if.end.2430

if.then.2428:                                     ; preds = %cond.end.2412
  %986 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call2429 = call i32 @DisposeObject(%union.rec* %986)
  br label %if.end.2430

if.end.2430:                                      ; preds = %if.then.2428, %cond.end.2412
  br label %sw.epilog.2434

sw.bb.2431:                                       ; preds = %if.end.2279, %if.end.2279, %if.end.2279
  br label %sw.epilog.2434

sw.default.2432:                                  ; preds = %if.end.2279
  %987 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2433 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %987, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.epilog.2434

sw.epilog.2434:                                   ; preds = %sw.default.2432, %sw.bb.2431, %if.end.2430
  br label %for.inc.2435

for.inc.2435:                                     ; preds = %sw.epilog.2434
  %988 = load %union.rec*, %union.rec** %link, align 8
  %os12436 = bitcast %union.rec* %988 to %struct.word_type*
  %olist2437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12436, i32 0, i32 0
  %arrayidx2438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2437, i32 0, i64 0
  %osucc2439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2438, i32 0, i32 1
  %989 = load %union.rec*, %union.rec** %osucc2439, align 8
  store %union.rec* %989, %union.rec** %link, align 8
  br label %for.cond.2232

for.end.2440:                                     ; preds = %for.cond.2232
  %990 = load %union.rec*, %union.rec** %cs, align 8
  %os72441 = bitcast %union.rec* %990 to %struct.cr_type*
  %otarget_state2442 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os72441, i32 0, i32 2
  store i8 2, i8* %otarget_state2442, align 1
  br label %if.end.2443

if.end.2443:                                      ; preds = %for.end.2440, %for.end.2207
  br label %sw.epilog.2447

sw.default.2444:                                  ; preds = %if.end.229
  %991 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %992 = load i32, i32* %ctype, align 4
  %call2445 = call i8* @Image(i32 %992)
  %call2446 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i32 0, %struct.FILE_POS* %991, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %call2445)
  br label %sw.epilog.2447

sw.epilog.2447:                                   ; preds = %if.end, %sw.default.2444, %if.end.2443, %if.end.1776, %if.end.1591, %if.then.1540, %for.end.1534, %if.end.1242
  ret void
}

declare zeroext i16 @DatabaseFileNum(%struct.FILE_POS*) #1

declare void @AppendToFile(%union.rec*, i16 zeroext, i32*, i32*) #1

declare i8* @StringFiveInt(i32) #1

declare void @DbInsert(%union.rec*, i32, %union.rec*, i8*, %struct.FILE_POS*, i8*, i16 zeroext, i64, i32, i32) #1

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define void @CrossClose() #0 {
entry:
  %link = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %g = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %cont = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %seq = alloca [512 x i8], align 16
  %tag = alloca [512 x i8], align 16
  %0 = load i32, i32* @AllowCrossDb, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.rec*, %union.rec** @RootCross, align 8
  %cmp = icmp ne %union.rec* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.239

if.then.1:                                        ; preds = %if.end
  %2 = load %union.rec*, %union.rec** @RootCross, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %3 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %3, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.233, %if.then.1
  %4 = load %union.rec*, %union.rec** %link, align 8
  %5 = load %union.rec*, %union.rec** @RootCross, align 8
  %cmp2 = icmp ne %union.rec* %4, %5
  br i1 %cmp2, label %for.body, label %for.end.238

for.body:                                         ; preds = %for.cond
  %6 = load %union.rec*, %union.rec** %link, align 8
  %os13 = bitcast %union.rec* %6 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %7, %union.rec** %cs, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load %union.rec*, %union.rec** %cs, align 8
  %os17 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %10 = load %union.rec*, %union.rec** %cs, align 8
  %os111 = bitcast %union.rec* %10 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred14, align 8
  store %union.rec* %11, %union.rec** %cs, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %12 = load %union.rec*, %union.rec** %cs, align 8
  %os7 = bitcast %union.rec* %12 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 9
  %13 = load %union.rec*, %union.rec** %osymb, align 8
  store %union.rec* %13, %union.rec** %sym, align 8
  %14 = load %union.rec*, %union.rec** %cs, align 8
  %os115 = bitcast %union.rec* %14 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %15 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 140
  br i1 %cmp20, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.end
  store i32 0, i32* %count, align 4
  %17 = load %union.rec*, %union.rec** %cs, align 8
  %os124 = bitcast %union.rec* %17 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 0
  %osucc27 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc27, align 8
  store %union.rec* %18, %union.rec** %ylink, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.227, %if.end.23
  %19 = load %union.rec*, %union.rec** %ylink, align 8
  %20 = load %union.rec*, %union.rec** %cs, align 8
  %cmp29 = icmp ne %union.rec* %19, %20
  br i1 %cmp29, label %for.body.31, label %for.end.232

for.body.31:                                      ; preds = %for.cond.28
  %21 = load %union.rec*, %union.rec** %ylink, align 8
  %os132 = bitcast %union.rec* %21 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 1
  %opred35 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred35, align 8
  store %union.rec* %22, %union.rec** %y, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.45, %for.body.31
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os137 = bitcast %union.rec* %23 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %os1139 = bitcast %union.FIRST_UNION* %ou138 to %struct.anon*
  %otype40 = getelementptr inbounds %struct.anon, %struct.anon* %os1139, i32 0, i32 0
  %24 = load i8, i8* %otype40, align 1
  %conv41 = zext i8 %24 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %for.body.44, label %for.end.50

for.body.44:                                      ; preds = %for.cond.36
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.44
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os146 = bitcast %union.rec* %25 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred49, align 8
  store %union.rec* %26, %union.rec** %y, align 8
  br label %for.cond.36

for.end.50:                                       ; preds = %for.cond.36
  %27 = load %union.rec*, %union.rec** %y, align 8
  %os151 = bitcast %union.rec* %27 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %os1153 = bitcast %union.FIRST_UNION* %ou152 to %struct.anon*
  %otype54 = getelementptr inbounds %struct.anon, %struct.anon* %os1153, i32 0, i32 0
  %28 = load i8, i8* %otype54, align 1
  %conv55 = zext i8 %28 to i32
  %cmp56 = icmp eq i32 %conv55, 11
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.50
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os158 = bitcast %union.rec* %29 to %struct.word_type*
  %ou159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 1
  %os1160 = bitcast %union.FIRST_UNION* %ou159 to %struct.anon*
  %otype61 = getelementptr inbounds %struct.anon, %struct.anon* %os1160, i32 0, i32 0
  %30 = load i8, i8* %otype61, align 1
  %conv62 = zext i8 %30 to i32
  %cmp63 = icmp eq i32 %conv62, 12
  br i1 %cmp63, label %land.lhs.true, label %if.then.69

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.end.50
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os165 = bitcast %union.rec* %31 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call66 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call70 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %land.lhs.true
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os172 = bitcast %union.rec* %33 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 3
  %os33 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.8*
  %ocs_type = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33, i32 0, i32 0
  %34 = load i8, i8* %ocs_type, align 1
  %conv73 = zext i8 %34 to i32
  switch i32 %conv73, label %sw.default [
    i32 127, label %sw.bb
    i32 128, label %sw.bb.89
    i32 129, label %sw.bb.158
    i32 130, label %sw.bb.190
  ]

sw.bb:                                            ; preds = %if.end.71
  %35 = load i32, i32* %count, align 4
  %cmp74 = icmp slt i32 %35, 5
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %sw.bb
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os177 = bitcast %union.rec* %36 to %struct.word_type*
  %ou178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou178 to %struct.FILE_POS*
  %37 = load %union.rec*, %union.rec** %sym, align 8
  %call79 = call i8* @SymName(%union.rec* %37)
  %38 = load %union.rec*, %union.rec** %sym, align 8
  %call80 = call i8* @SymName(%union.rec* %38)
  %call81 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %call79, i8* %call80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.88

if.else:                                          ; preds = %sw.bb
  %39 = load i32, i32* %count, align 4
  %cmp82 = icmp eq i32 %39, 5
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.else
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %41 = load %union.rec*, %union.rec** %sym, align 8
  %call85 = call i8* @SymName(%union.rec* %41)
  %call86 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0), i32 2, %struct.FILE_POS* %40, i8* %call85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.else
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.76
  %42 = load i32, i32* %count, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %count, align 4
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.71
  %43 = load %union.rec*, %union.rec** %cs, align 8
  %os790 = bitcast %union.rec* %43 to %struct.cr_type*
  %otarget_state = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os790, i32 0, i32 2
  %44 = load i8, i8* %otarget_state, align 1
  %conv91 = zext i8 %44 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %sw.bb.89
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os195 = bitcast %union.rec* %45 to %struct.word_type*
  %ou196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 1
  %ofpos97 = bitcast %union.FIRST_UNION* %ou196 to %struct.FILE_POS*
  %46 = load %union.rec*, %union.rec** %sym, align 8
  %call98 = call i8* @SymName(%union.rec* %46)
  %47 = load %union.rec*, %union.rec** %sym, align 8
  %call99 = call i8* @SymName(%union.rec* %47)
  %call100 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos97, i8* %call98, i8* %call99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

if.end.101:                                       ; preds = %sw.bb.89
  %48 = load %union.rec*, %union.rec** %cs, align 8
  %os7102 = bitcast %union.rec* %48 to %struct.cr_type*
  %otarget_state103 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7102, i32 0, i32 2
  %49 = load i8, i8* %otarget_state103, align 1
  %conv104 = zext i8 %49 to i32
  %cmp105 = icmp eq i32 %conv104, 1
  br i1 %cmp105, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %if.end.101
  %50 = load %union.rec*, %union.rec** %cs, align 8
  %os7108 = bitcast %union.rec* %50 to %struct.cr_type*
  %otarget_val = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7108, i32 0, i32 4
  %51 = load %union.rec*, %union.rec** %otarget_val, align 8
  %52 = load %union.rec*, %union.rec** %cs, align 8
  %os7109 = bitcast %union.rec* %52 to %struct.cr_type*
  %otarget_file = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7109, i32 0, i32 3
  %53 = load i16, i16* %otarget_file, align 2
  %54 = load %union.rec*, %union.rec** %cs, align 8
  %os7110 = bitcast %union.rec* %54 to %struct.cr_type*
  %otarget_pos = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7110, i32 0, i32 6
  %55 = load %union.rec*, %union.rec** %cs, align 8
  %os7111 = bitcast %union.rec* %55 to %struct.cr_type*
  %otarget_lnum = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7111, i32 0, i32 7
  call void @AppendToFile(%union.rec* %51, i16 zeroext %53, i32* %otarget_pos, i32* %otarget_lnum)
  %56 = load %union.rec*, %union.rec** %cs, align 8
  %os7112 = bitcast %union.rec* %56 to %struct.cr_type*
  %otarget_val113 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7112, i32 0, i32 4
  %57 = load %union.rec*, %union.rec** %otarget_val113, align 8
  %call114 = call i32 @DisposeObject(%union.rec* %57)
  %58 = load %union.rec*, %union.rec** %cs, align 8
  %os7115 = bitcast %union.rec* %58 to %struct.cr_type*
  %otarget_val116 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7115, i32 0, i32 4
  store %union.rec* null, %union.rec** %otarget_val116, align 8
  %59 = load %union.rec*, %union.rec** %cs, align 8
  %os7117 = bitcast %union.rec* %59 to %struct.cr_type*
  %otarget_state118 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7117, i32 0, i32 2
  store i8 2, i8* %otarget_state118, align 1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.107, %if.end.101
  %60 = load %union.rec*, %union.rec** %y, align 8
  %os1120 = bitcast %union.rec* %60 to %struct.word_type*
  %ou1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 1
  %os11122 = bitcast %union.FIRST_UNION* %ou1121 to %struct.anon*
  %otype123 = getelementptr inbounds %struct.anon, %struct.anon* %os11122, i32 0, i32 0
  %61 = load i8, i8* %otype123, align 1
  %conv124 = zext i8 %61 to i32
  %cmp125 = icmp eq i32 %conv124, 11
  br i1 %cmp125, label %lor.lhs.false.135, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %if.end.119
  %62 = load %union.rec*, %union.rec** %y, align 8
  %os1128 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 1
  %os11130 = bitcast %union.FIRST_UNION* %ou1129 to %struct.anon*
  %otype131 = getelementptr inbounds %struct.anon, %struct.anon* %os11130, i32 0, i32 0
  %63 = load i8, i8* %otype131, align 1
  %conv132 = zext i8 %63 to i32
  %cmp133 = icmp eq i32 %conv132, 12
  br i1 %cmp133, label %lor.lhs.false.135, label %if.then.142

lor.lhs.false.135:                                ; preds = %lor.lhs.false.127, %if.end.119
  %64 = load %union.rec*, %union.rec** %y, align 8
  %os1136 = bitcast %union.rec* %64 to %struct.word_type*
  %ostring137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 4
  %arraydecay138 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring137, i32 0, i32 0
  %call139 = call i32 @strcmp(i8* %arraydecay138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %lor.lhs.false.135, %lor.lhs.false.127
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call143 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %65)
  store %union.rec* %call143, %union.rec** %y, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %lor.lhs.false.135
  %66 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %67 = load %union.rec*, %union.rec** %sym, align 8
  %68 = load %union.rec*, %union.rec** %y, align 8
  %os1145 = bitcast %union.rec* %68 to %struct.word_type*
  %ostring146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 4
  %arraydecay147 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring146, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %y, align 8
  %os1148 = bitcast %union.rec* %69 to %struct.word_type*
  %ou1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 1
  %ofpos150 = bitcast %union.FIRST_UNION* %ou1149 to %struct.FILE_POS*
  %70 = load %union.rec*, %union.rec** %cs, align 8
  %os7151 = bitcast %union.rec* %70 to %struct.cr_type*
  %otarget_file152 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7151, i32 0, i32 3
  %71 = load i16, i16* %otarget_file152, align 2
  %72 = load %union.rec*, %union.rec** %cs, align 8
  %os7153 = bitcast %union.rec* %72 to %struct.cr_type*
  %otarget_pos154 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7153, i32 0, i32 6
  %73 = load i32, i32* %otarget_pos154, align 4
  %conv155 = sext i32 %73 to i64
  %74 = load %union.rec*, %union.rec** %cs, align 8
  %os7156 = bitcast %union.rec* %74 to %struct.cr_type*
  %otarget_lnum157 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7156, i32 0, i32 7
  %75 = load i32, i32* %otarget_lnum157, align 4
  call void @DbInsert(%union.rec* %66, i32 0, %union.rec* %67, i8* %arraydecay147, %struct.FILE_POS* %ofpos150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i16 zeroext %71, i64 %conv155, i32 %75, i32 1)
  br label %sw.epilog

sw.bb.158:                                        ; preds = %if.end.71
  %76 = load i32, i32* %count, align 4
  %cmp159 = icmp slt i32 %76, 5
  br i1 %cmp159, label %if.then.161, label %if.else.168

if.then.161:                                      ; preds = %sw.bb.158
  %77 = load %union.rec*, %union.rec** %y, align 8
  %os1162 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 1
  %ofpos164 = bitcast %union.FIRST_UNION* %ou1163 to %struct.FILE_POS*
  %78 = load %union.rec*, %union.rec** %sym, align 8
  %call165 = call i8* @SymName(%union.rec* %78)
  %79 = load %union.rec*, %union.rec** %sym, align 8
  %call166 = call i8* @SymName(%union.rec* %79)
  %call167 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos164, i8* %call165, i8* %call166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.175

if.else.168:                                      ; preds = %sw.bb.158
  %80 = load i32, i32* %count, align 4
  %cmp169 = icmp eq i32 %80, 5
  br i1 %cmp169, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.else.168
  %81 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %82 = load %union.rec*, %union.rec** %sym, align 8
  %call172 = call i8* @SymName(%union.rec* %82)
  %call173 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0), i32 2, %struct.FILE_POS* %81, i8* %call172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %if.else.168
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.161
  %83 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %84 = load %union.rec*, %union.rec** %sym, align 8
  %85 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %86 = load %union.rec*, %union.rec** %y, align 8
  %os1176 = bitcast %union.rec* %86 to %struct.word_type*
  %ostring177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 4
  %arraydecay178 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring177, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %y, align 8
  %os1179 = bitcast %union.rec* %87 to %struct.word_type*
  %ou3180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 3
  %os33181 = bitcast %union.THIRD_UNION* %ou3180 to %struct.anon.8*
  %ocs_fnum = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33181, i32 0, i32 1
  %88 = load i16, i16* %ocs_fnum, align 2
  %89 = load %union.rec*, %union.rec** %y, align 8
  %os1182 = bitcast %union.rec* %89 to %struct.word_type*
  %ou3183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 3
  %os33184 = bitcast %union.THIRD_UNION* %ou3183 to %struct.anon.8*
  %ocs_pos = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33184, i32 0, i32 2
  %90 = load i32, i32* %ocs_pos, align 4
  %conv185 = sext i32 %90 to i64
  %91 = load %union.rec*, %union.rec** %y, align 8
  %os1186 = bitcast %union.rec* %91 to %struct.word_type*
  %ou3187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 3
  %os33188 = bitcast %union.THIRD_UNION* %ou3187 to %struct.anon.8*
  %ocs_lnum = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33188, i32 0, i32 3
  %92 = load i32, i32* %ocs_lnum, align 4
  call void @DbInsert(%union.rec* %83, i32 1, %union.rec* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %85, i8* %arraydecay178, i16 zeroext %88, i64 %conv185, i32 %92, i32 0)
  %93 = load i32, i32* %count, align 4
  %inc189 = add nsw i32 %93, 1
  store i32 %inc189, i32* %count, align 4
  br label %sw.epilog

sw.bb.190:                                        ; preds = %if.end.71
  %94 = load %union.rec*, %union.rec** %cs, align 8
  %os7191 = bitcast %union.rec* %94 to %struct.cr_type*
  %ogall_tag = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7191, i32 0, i32 10
  %95 = load %union.rec*, %union.rec** %ogall_tag, align 8
  %cmp192 = icmp eq %union.rec* %95, null
  br i1 %cmp192, label %if.then.194, label %if.end.204

if.then.194:                                      ; preds = %sw.bb.190
  %96 = load %union.rec*, %union.rec** %y, align 8
  %os1195 = bitcast %union.rec* %96 to %struct.word_type*
  %ou1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 1
  %ofpos197 = bitcast %union.FIRST_UNION* %ou1196 to %struct.FILE_POS*
  %97 = load %union.rec*, %union.rec** %sym, align 8
  %call198 = call i8* @SymName(%union.rec* %97)
  %98 = load %union.rec*, %union.rec** %sym, align 8
  %call199 = call i8* @SymName(%union.rec* %98)
  %call200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos197, i8* %call198, i8* %call199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call201 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %99)
  %100 = load %union.rec*, %union.rec** %cs, align 8
  %os7202 = bitcast %union.rec* %100 to %struct.cr_type*
  %ogall_tag203 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7202, i32 0, i32 10
  store %union.rec* %call201, %union.rec** %ogall_tag203, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.194, %sw.bb.190
  %101 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %102 = load %union.rec*, %union.rec** %sym, align 8
  %103 = load %union.rec*, %union.rec** %cs, align 8
  %os7205 = bitcast %union.rec* %103 to %struct.cr_type*
  %ogall_tag206 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7205, i32 0, i32 10
  %104 = load %union.rec*, %union.rec** %ogall_tag206, align 8
  %os1207 = bitcast %union.rec* %104 to %struct.word_type*
  %ostring208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 4
  %arraydecay209 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring208, i32 0, i32 0
  %105 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %106 = load %union.rec*, %union.rec** %y, align 8
  %os1210 = bitcast %union.rec* %106 to %struct.word_type*
  %ostring211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 4
  %arraydecay212 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring211, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %y, align 8
  %os1213 = bitcast %union.rec* %107 to %struct.word_type*
  %ou3214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 3
  %os33215 = bitcast %union.THIRD_UNION* %ou3214 to %struct.anon.8*
  %ocs_fnum216 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33215, i32 0, i32 1
  %108 = load i16, i16* %ocs_fnum216, align 2
  %109 = load %union.rec*, %union.rec** %y, align 8
  %os1217 = bitcast %union.rec* %109 to %struct.word_type*
  %ou3218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 3
  %os33219 = bitcast %union.THIRD_UNION* %ou3218 to %struct.anon.8*
  %ocs_pos220 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33219, i32 0, i32 2
  %110 = load i32, i32* %ocs_pos220, align 4
  %conv221 = sext i32 %110 to i64
  %111 = load %union.rec*, %union.rec** %y, align 8
  %os1222 = bitcast %union.rec* %111 to %struct.word_type*
  %ou3223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 3
  %os33224 = bitcast %union.THIRD_UNION* %ou3223 to %struct.anon.8*
  %ocs_lnum225 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %os33224, i32 0, i32 3
  %112 = load i32, i32* %ocs_lnum225, align 4
  call void @DbInsert(%union.rec* %101, i32 1, %union.rec* %102, i8* %arraydecay209, %struct.FILE_POS* %105, i8* %arraydecay212, i16 zeroext %108, i64 %conv221, i32 %112, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.71
  %113 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call226 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.204, %if.end.175, %if.end.144, %if.then.94, %if.end.88
  br label %for.inc.227

for.inc.227:                                      ; preds = %sw.epilog
  %114 = load %union.rec*, %union.rec** %ylink, align 8
  %os1228 = bitcast %union.rec* %114 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 0
  %osucc231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 1
  %115 = load %union.rec*, %union.rec** %osucc231, align 8
  store %union.rec* %115, %union.rec** %ylink, align 8
  br label %for.cond.28

for.end.232:                                      ; preds = %for.cond.28
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.end.232
  %116 = load %union.rec*, %union.rec** %link, align 8
  %os1234 = bitcast %union.rec* %116 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 0
  %osucc237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 1
  %117 = load %union.rec*, %union.rec** %osucc237, align 8
  store %union.rec* %117, %union.rec** %link, align 8
  br label %for.cond

for.end.238:                                      ; preds = %for.cond
  br label %if.end.239

if.end.239:                                       ; preds = %for.end.238, %if.end
  store i64 0, i64* %cont, align 8
  store i32 3, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.263, %if.then.245, %if.end.239
  %118 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %arraydecay240 = getelementptr inbounds [512 x i8], [512 x i8]* %tag, i32 0, i32 0
  %arraydecay241 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %call242 = call i32 @DbRetrieveNext(%union.rec* %118, i32* %g, %union.rec** %sym, i8* %arraydecay240, i8* %arraydecay241, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %119 = load i32, i32* %g, align 4
  %tobool244 = icmp ne i32 %119, 0
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %while.body
  br label %while.cond

if.end.246:                                       ; preds = %while.body
  %arraydecay247 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %120 = load i16, i16* %dfnum, align 2
  %call248 = call i8* @FileName(i16 zeroext %120)
  %call249 = call i8* @strcpy(i8* %arraydecay247, i8* %call248) #5
  %arraydecay250 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call251 = call i64 @strlen(i8* %arraydecay250) #4
  %121 = load i32, i32* %len, align 4
  %conv252 = sext i32 %121 to i64
  %sub = sub i64 %call251, %conv252
  %arrayidx253 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %sub
  %call254 = call i8* @strcpy(i8* %arrayidx253, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #5
  %arraydecay255 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call256 = call zeroext i16 @FileNum(i8* %arraydecay255, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %conv257 = zext i16 %call256 to i32
  %cmp258 = icmp eq i32 %conv257, 0
  br i1 %cmp258, label %if.then.260, label %if.end.263

if.then.260:                                      ; preds = %if.end.246
  %122 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %123 = load %union.rec*, %union.rec** %sym, align 8
  %arraydecay261 = getelementptr inbounds [512 x i8], [512 x i8]* %tag, i32 0, i32 0
  %124 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %arraydecay262 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %125 = load i16, i16* %dfnum, align 2
  %126 = load i64, i64* %dfpos, align 8
  %127 = load i32, i32* %dlnum, align 4
  call void @DbInsert(%union.rec* %122, i32 0, %union.rec* %123, i8* %arraydecay261, %struct.FILE_POS* %124, i8* %arraydecay262, i16 zeroext %125, i64 %126, i32 %127, i32 0)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.260, %if.end.246
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %128 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  call void @DbClose(%union.rec* %128)
  %129 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  call void @DbConvert(%union.rec* %129, i32 1)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare i32 @DbRetrieveNext(%union.rec*, i32*, %union.rec**, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare zeroext i16 @FileNum(i8*, i8*) #1

declare void @DbClose(%union.rec*) #1

declare void @DbConvert(%union.rec*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @crtab_new(i32 %newsize) #0 {
entry:
  %newsize.addr = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 8, %mul
  %call = call noalias i8* @malloc(i64 %add) #5
  %1 = bitcast i8* %call to %struct.anon.14*
  store %struct.anon.14* %1, %struct.anon.14** %S, align 8
  %2 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %cmp = icmp eq %struct.anon.14* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %newsize.addr, align 4
  %5 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %tab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 0
  store i32 %4, i32* %tab_size, align 4
  %6 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %tab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 1
  store i32 0, i32* %tab_count, align 4
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
  %10 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %tab_chains = getelementptr inbounds %struct.anon.14, %struct.anon.14* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains, i32 0, i64 %idxprom
  store %struct.crossref_rec* null, %struct.crossref_rec** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @crtab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
entry:
  %S.addr = alloca %struct.anon.14*, align 8
  %newsize.addr = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  %newpos = alloca i64, align 8
  %p = alloca %struct.crossref_rec*, align 8
  %q = alloca %struct.crossref_rec*, align 8
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %call = call %struct.anon.14* @crtab_new(i32 %0)
  store %struct.anon.14* %call, %struct.anon.14** %NewS, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %tab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %2, i32 0, i32 0
  %3 = load i32, i32* %tab_size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %tab_chains = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains, i32 0, i64 %idxprom
  %6 = load %struct.crossref_rec*, %struct.crossref_rec** %arrayidx, align 8
  store %struct.crossref_rec* %6, %struct.crossref_rec** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %cmp1 = icmp ne %struct.crossref_rec* %7, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %crtab_next = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %8, i32 0, i32 0
  %9 = load %struct.crossref_rec*, %struct.crossref_rec** %crtab_next, align 8
  store %struct.crossref_rec* %9, %struct.crossref_rec** %q, align 8
  %10 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %crtab_sym = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %10, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %crtab_sym, align 8
  %12 = ptrtoint %union.rec* %11 to i64
  %13 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %crtab_fnum = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %13, i32 0, i32 2
  %14 = load i16, i16* %crtab_fnum, align 2
  %conv = zext i16 %14 to i64
  %add = add i64 %12, %conv
  %15 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %tab_size2 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %15, i32 0, i32 0
  %16 = load i32, i32* %tab_size2, align 4
  %conv3 = sext i32 %16 to i64
  %rem = urem i64 %add, %conv3
  store i64 %rem, i64* %newpos, align 8
  %17 = load i64, i64* %newpos, align 8
  %18 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %tab_chains4 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %18, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains4, i32 0, i64 %17
  %19 = load %struct.crossref_rec*, %struct.crossref_rec** %arrayidx5, align 8
  %20 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %crtab_next6 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %20, i32 0, i32 0
  store %struct.crossref_rec* %19, %struct.crossref_rec** %crtab_next6, align 8
  %21 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %22 = load i64, i64* %newpos, align 8
  %23 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %tab_chains7 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %23, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %tab_chains7, i32 0, i64 %22
  store %struct.crossref_rec* %21, %struct.crossref_rec** %arrayidx8, align 8
  %24 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %tab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %24, i32 0, i32 1
  %25 = load i32, i32* %tab_count, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %tab_count, align 4
  %26 = load %struct.crossref_rec*, %struct.crossref_rec** %q, align 8
  store %struct.crossref_rec* %26, %struct.crossref_rec** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %27 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %27, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %29 = bitcast %struct.anon.14* %28 to i8*
  call void @free(i8* %29) #5
  %30 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %30
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
