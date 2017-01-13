; ModuleID = './MultiSource.Benchmarks.MiBench/63.consumer-typeset.z40.bc'
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@filter_count = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@filter_active = internal global %union.rec* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"louti\00", align 1
@FilterInSym = external global %union.rec*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@FilterOutSym = external global %union.rec*, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"lout.err\00", align 1
@FilterErrSym = external global %union.rec*, align 8
@filter_in_filename = internal global %union.rec* null, align 8
@filter_out_filename = internal global %union.rec* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"cannot open temporary filter file %s\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"FilterSetFileNames: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"FilterSetFileNames: x has no children!\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"FilterSetFileNames: type(y)!\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"FilterSetFileNames: type(y) (2)!\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"FilterExecute: type(x)!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"FilterExecute: type(env)!\00", align 1
@SafeExecution = external global i32, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"safe execution prohibiting command: %s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"failure (non-zero status) of filter: %s\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"FilterWrite: type(x)!\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"cannot read filter temporary file %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@xx_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @FilterInit() #0 {
entry:
  store i32 0, i32* @filter_count, align 4
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
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
  store i8 17, i8* %otype, align 1
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
  store %union.rec* %12, %union.rec** @filter_active, align 8
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call30 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %17)
  %18 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %os6 = bitcast %union.rec* %18 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 4
  store %union.rec* %call30, %union.rec** %osym_body, align 8
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call31 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %19)
  %20 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %os632 = bitcast %union.rec* %20 to %struct.symbol_type*
  %osym_body33 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os632, i32 0, i32 4
  store %union.rec* %call31, %union.rec** %osym_body33, align 8
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call34 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.FILE_POS* %21)
  %22 = load %union.rec*, %union.rec** @FilterErrSym, align 8
  %os635 = bitcast %union.rec* %22 to %struct.symbol_type*
  %osym_body36 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os635, i32 0, i32 4
  store %union.rec* %call34, %union.rec** %osym_body36, align 8
  %23 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %os637 = bitcast %union.rec* %23 to %struct.symbol_type*
  %osym_body38 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os637, i32 0, i32 4
  %24 = load %union.rec*, %union.rec** %osym_body38, align 8
  store %union.rec* %24, %union.rec** @filter_in_filename, align 8
  %25 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %os639 = bitcast %union.rec* %25 to %struct.symbol_type*
  %osym_body40 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os639, i32 0, i32 4
  %26 = load %union.rec*, %union.rec** %osym_body40, align 8
  store %union.rec* %26, %union.rec** @filter_out_filename, align 8
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @FilterCreate(i32 %use_begin, %union.rec* %act, %struct.FILE_POS* %xfpos) #0 {
entry:
  %use_begin.addr = alloca i32, align 4
  %act.addr = alloca %union.rec*, align 8
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %buff = alloca [2048 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %x = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %junk = alloca %union.rec*, align 8
  store i32 %use_begin, i32* %use_begin.addr, align 4
  store %union.rec* %act, %union.rec** %act.addr, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 57), align 1
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
  store i8 57, i8* %otype, align 1
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
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %17, i32 0, i32 2
  %18 = load i16, i16* %ofile_num, align 2
  %19 = load %union.rec*, %union.rec** %res, align 8
  %os130 = bitcast %union.rec* %19 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou131 to %struct.FILE_POS*
  %ofile_num32 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %18, i16* %ofile_num32, align 2
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %20, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os133 = bitcast %union.rec* %21 to %struct.word_type*
  %ou134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 1
  %ofpos35 = bitcast %union.FIRST_UNION* %ou134 to %struct.FILE_POS*
  %oline_num36 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos35, i32 0, i32 3
  %bf.load37 = load i32, i32* %oline_num36, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear38 = and i32 %bf.load37, -1048576
  %bf.set = or i32 %bf.clear38, %bf.value
  store i32 %bf.set, i32* %oline_num36, align 4
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %22, i32 0, i32 3
  %bf.load39 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load39, 20
  %23 = load %union.rec*, %union.rec** %res, align 8
  %os140 = bitcast %union.rec* %23 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %ofpos42 = bitcast %union.FIRST_UNION* %ou141 to %struct.FILE_POS*
  %ocol_num43 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos42, i32 0, i32 3
  %bf.load44 = load i32, i32* %ocol_num43, align 4
  %bf.value45 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value45, 20
  %bf.clear46 = and i32 %bf.load44, 1048575
  %bf.set47 = or i32 %bf.clear46, %bf.shl
  store i32 %bf.set47, i32* %ocol_num43, align 4
  %24 = load i32, i32* @filter_count, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @filter_count, align 4
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %25 = load i32, i32* @filter_count, align 4
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %25) #4
  %arraydecay49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %call50 = call %struct._IO_FILE* @fopen(i8* %arraydecay49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call50, %struct._IO_FILE** %fp, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp51 = icmp eq %struct._IO_FILE* %26, null
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.13
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %arraydecay54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %call55 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %27, i8* %arraydecay54)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.13
  %arraydecay57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call58 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay57, %struct.FILE_POS* %28)
  store %union.rec* %call58, %union.rec** %x, align 8
  %29 = load i32, i32* %use_begin.addr, align 4
  %30 = load %union.rec*, %union.rec** %x, align 8
  %os159 = bitcast %union.rec* %30 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %31 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load60 = load i32, i32* %31, align 4
  %bf.value61 = and i32 %29, 1023
  %bf.shl62 = shl i32 %bf.value61, 12
  %bf.clear63 = and i32 %bf.load60, -4190209
  %bf.set64 = or i32 %bf.clear63, %bf.shl62
  store i32 %bf.set64, i32* %31, align 4
  %32 = load %union.rec*, %union.rec** %act.addr, align 8
  %33 = load %union.rec*, %union.rec** %x, align 8
  %os165 = bitcast %union.rec* %33 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 3
  %ofilter_actual = bitcast %union.THIRD_UNION* %ou3 to %union.rec**
  store %union.rec* %32, %union.rec** %ofilter_actual, align 8
  %34 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv66 = zext i8 %34 to i32
  store i32 %conv66, i32* @zz_size, align 4
  %conv67 = sext i32 %conv66 to i64
  %cmp68 = icmp uge i64 %conv67, 265
  br i1 %cmp68, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.end.56
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call71 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %35)
  br label %if.end.89

if.else.72:                                       ; preds = %if.end.56
  %36 = load i32, i32* @zz_size, align 4
  %idxprom73 = sext i32 %36 to i64
  %arrayidx74 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom73
  %37 = load %union.rec*, %union.rec** %arrayidx74, align 8
  %cmp75 = icmp eq %union.rec* %37, null
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else.72
  %38 = load i32, i32* @zz_size, align 4
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call78 = call %union.rec* @GetMemory(i32 %38, %struct.FILE_POS* %39)
  store %union.rec* %call78, %union.rec** @zz_hold, align 8
  br label %if.end.88

if.else.79:                                       ; preds = %if.else.72
  %40 = load i32, i32* @zz_size, align 4
  %idxprom80 = sext i32 %40 to i64
  %arrayidx81 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom80
  %41 = load %union.rec*, %union.rec** %arrayidx81, align 8
  store %union.rec* %41, %union.rec** @zz_hold, align 8
  store %union.rec* %41, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %42 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %opred85, align 8
  %44 = load i32, i32* @zz_size, align 4
  %idxprom86 = sext i32 %44 to i64
  %arrayidx87 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom86
  store %union.rec* %43, %union.rec** %arrayidx87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.79, %if.then.77
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.70
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %45 to %struct.word_type*
  %ou191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 1
  %os1192 = bitcast %union.FIRST_UNION* %ou191 to %struct.anon*
  %otype93 = getelementptr inbounds %struct.anon, %struct.anon* %os1192, i32 0, i32 0
  store i8 0, i8* %otype93, align 1
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %47 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 1
  %osucc97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 1
  store %union.rec* %46, %union.rec** %osucc97, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %48 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  store %union.rec* %46, %union.rec** %opred101, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %49 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 0
  %osucc105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 1
  store %union.rec* %46, %union.rec** %osucc105, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %50 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %opred109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 0
  store %union.rec* %46, %union.rec** %opred109, align 8
  store %union.rec* %46, %union.rec** @xx_link, align 8
  %51 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %51, %union.rec** @zz_res, align 8
  %52 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %52, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp110 = icmp eq %union.rec* %53, null
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.89
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.144

cond.false:                                       ; preds = %if.end.89
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp112 = icmp eq %union.rec* %55, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.false
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.115:                                   ; preds = %cond.false
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1116 = bitcast %union.rec* %57 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 0
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred119, align 8
  store %union.rec* %58, %union.rec** @zz_tmp, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1120 = bitcast %union.rec* %59 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 0
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %opred123, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1124 = bitcast %union.rec* %61 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  store %union.rec* %60, %union.rec** %opred127, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1128 = bitcast %union.rec* %63 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred131, align 8
  %os1132 = bitcast %union.rec* %64 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %osucc135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 1
  store %union.rec* %62, %union.rec** %osucc135, align 8
  %65 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1136 = bitcast %union.rec* %66 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred139, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  %68 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1140 = bitcast %union.rec* %68 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %osucc143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc143, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.115, %cond.true.114
  %cond = phi %union.rec* [ %56, %cond.true.114 ], [ %67, %cond.false.115 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end, %cond.true
  %cond145 = phi %union.rec* [ %54, %cond.true ], [ %cond, %cond.end ]
  %69 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %69, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp146 = icmp eq %union.rec* %71, null
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.end.144
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.184

cond.false.149:                                   ; preds = %cond.end.144
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp150 = icmp eq %union.rec* %73, null
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %cond.false.149
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.182

cond.false.153:                                   ; preds = %cond.false.149
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1154 = bitcast %union.rec* %75 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred157, align 8
  store %union.rec* %76, %union.rec** @zz_tmp, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1158 = bitcast %union.rec* %77 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 1
  %opred161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred161, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1162 = bitcast %union.rec* %79 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 1
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred165, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1166 = bitcast %union.rec* %81 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 1
  %opred169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred169, align 8
  %os1170 = bitcast %union.rec* %82 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %osucc173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc173, align 8
  %83 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1174 = bitcast %union.rec* %84 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 1
  %opred177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred177, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1178 = bitcast %union.rec* %86 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 1
  %osucc181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc181, align 8
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.153, %cond.true.152
  %cond183 = phi %union.rec* [ %74, %cond.true.152 ], [ %85, %cond.false.153 ]
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end.182, %cond.true.148
  %cond185 = phi %union.rec* [ %72, %cond.true.148 ], [ %cond183, %cond.end.182 ]
  %87 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv186 = zext i8 %87 to i32
  store i32 %conv186, i32* @zz_size, align 4
  %conv187 = sext i32 %conv186 to i64
  %cmp188 = icmp uge i64 %conv187, 265
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %cond.end.184
  %88 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call191 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %88)
  br label %if.end.209

if.else.192:                                      ; preds = %cond.end.184
  %89 = load i32, i32* @zz_size, align 4
  %idxprom193 = sext i32 %89 to i64
  %arrayidx194 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom193
  %90 = load %union.rec*, %union.rec** %arrayidx194, align 8
  %cmp195 = icmp eq %union.rec* %90, null
  br i1 %cmp195, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.else.192
  %91 = load i32, i32* @zz_size, align 4
  %92 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call198 = call %union.rec* @GetMemory(i32 %91, %struct.FILE_POS* %92)
  store %union.rec* %call198, %union.rec** @zz_hold, align 8
  br label %if.end.208

if.else.199:                                      ; preds = %if.else.192
  %93 = load i32, i32* @zz_size, align 4
  %idxprom200 = sext i32 %93 to i64
  %arrayidx201 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom200
  %94 = load %union.rec*, %union.rec** %arrayidx201, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1202 = bitcast %union.rec* %95 to %struct.word_type*
  %olist203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist203, i32 0, i64 0
  %opred205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx204, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred205, align 8
  %97 = load i32, i32* @zz_size, align 4
  %idxprom206 = sext i32 %97 to i64
  %arrayidx207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom206
  store %union.rec* %96, %union.rec** %arrayidx207, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.199, %if.then.197
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.190
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1210 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 1
  %os11212 = bitcast %union.FIRST_UNION* %ou1211 to %struct.anon*
  %otype213 = getelementptr inbounds %struct.anon, %struct.anon* %os11212, i32 0, i32 0
  store i8 0, i8* %otype213, align 1
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %100 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %osucc217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 1
  store %union.rec* %99, %union.rec** %osucc217, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1218 = bitcast %union.rec* %101 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred221, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1222 = bitcast %union.rec* %102 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 0
  %osucc225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 1
  store %union.rec* %99, %union.rec** %osucc225, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1226 = bitcast %union.rec* %103 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 0
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred229, align 8
  store %union.rec* %99, %union.rec** @xx_link, align 8
  %104 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %104, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** @filter_active, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp230 = icmp eq %union.rec* %106, null
  br i1 %cmp230, label %cond.true.232, label %cond.false.233

cond.true.232:                                    ; preds = %if.end.209
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.268

cond.false.233:                                   ; preds = %if.end.209
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp234 = icmp eq %union.rec* %108, null
  br i1 %cmp234, label %cond.true.236, label %cond.false.237

cond.true.236:                                    ; preds = %cond.false.233
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.266

cond.false.237:                                   ; preds = %cond.false.233
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %110 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred241, align 8
  store %union.rec* %111, %union.rec** @zz_tmp, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1242 = bitcast %union.rec* %112 to %struct.word_type*
  %olist243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist243, i32 0, i64 0
  %opred245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx244, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred245, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1246 = bitcast %union.rec* %114 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 0
  %opred249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 0
  store %union.rec* %113, %union.rec** %opred249, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1250 = bitcast %union.rec* %116 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 0
  %opred253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred253, align 8
  %os1254 = bitcast %union.rec* %117 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 0
  %osucc257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 1
  store %union.rec* %115, %union.rec** %osucc257, align 8
  %118 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1258 = bitcast %union.rec* %119 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 0
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  store %union.rec* %118, %union.rec** %opred261, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1262 = bitcast %union.rec* %121 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 0
  %osucc265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 1
  store %union.rec* %120, %union.rec** %osucc265, align 8
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.237, %cond.true.236
  %cond267 = phi %union.rec* [ %109, %cond.true.236 ], [ %120, %cond.false.237 ]
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.end.266, %cond.true.232
  %cond269 = phi %union.rec* [ %107, %cond.true.232 ], [ %cond267, %cond.end.266 ]
  %122 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %122, %union.rec** @zz_res, align 8
  %123 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp270 = icmp eq %union.rec* %124, null
  br i1 %cmp270, label %cond.true.272, label %cond.false.273

cond.true.272:                                    ; preds = %cond.end.268
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.308

cond.false.273:                                   ; preds = %cond.end.268
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp274 = icmp eq %union.rec* %126, null
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.false.273
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.306

cond.false.277:                                   ; preds = %cond.false.273
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1278 = bitcast %union.rec* %128 to %struct.word_type*
  %olist279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist279, i32 0, i64 1
  %opred281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx280, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %opred281, align 8
  store %union.rec* %129, %union.rec** @zz_tmp, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1282 = bitcast %union.rec* %130 to %struct.word_type*
  %olist283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist283, i32 0, i64 1
  %opred285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx284, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred285, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1286 = bitcast %union.rec* %132 to %struct.word_type*
  %olist287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1286, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist287, i32 0, i64 1
  %opred289 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx288, i32 0, i32 0
  store %union.rec* %131, %union.rec** %opred289, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1290 = bitcast %union.rec* %134 to %struct.word_type*
  %olist291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1290, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist291, i32 0, i64 1
  %opred293 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx292, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred293, align 8
  %os1294 = bitcast %union.rec* %135 to %struct.word_type*
  %olist295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1294, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist295, i32 0, i64 1
  %osucc297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx296, i32 0, i32 1
  store %union.rec* %133, %union.rec** %osucc297, align 8
  %136 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1298 = bitcast %union.rec* %137 to %struct.word_type*
  %olist299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1298, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist299, i32 0, i64 1
  %opred301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx300, i32 0, i32 0
  store %union.rec* %136, %union.rec** %opred301, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  %139 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1302 = bitcast %union.rec* %139 to %struct.word_type*
  %olist303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1302, i32 0, i32 0
  %arrayidx304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist303, i32 0, i64 1
  %osucc305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx304, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc305, align 8
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.277, %cond.true.276
  %cond307 = phi %union.rec* [ %127, %cond.true.276 ], [ %138, %cond.false.277 ]
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.end.306, %cond.true.272
  %cond309 = phi %union.rec* [ %125, %cond.true.272 ], [ %cond307, %cond.end.306 ]
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %141 = load i32, i32* %use_begin.addr, align 4
  %142 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call310 = call %union.rec* @LexScanVerbatim(%struct._IO_FILE* %140, i32 %141, %struct.FILE_POS* %142, i32 0)
  store %union.rec* %call310, %union.rec** %junk, align 8
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call311 = call i32 @fclose(%struct._IO_FILE* %143)
  %arraydecay312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %144 = load i32, i32* @filter_count, align 4
  %call313 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay312, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %144) #4
  %arraydecay314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %145 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call315 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay314, %struct.FILE_POS* %145)
  store %union.rec* %call315, %union.rec** %x, align 8
  %146 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv316 = zext i8 %146 to i32
  store i32 %conv316, i32* @zz_size, align 4
  %conv317 = sext i32 %conv316 to i64
  %cmp318 = icmp uge i64 %conv317, 265
  br i1 %cmp318, label %if.then.320, label %if.else.322

if.then.320:                                      ; preds = %cond.end.308
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call321 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %147)
  br label %if.end.339

if.else.322:                                      ; preds = %cond.end.308
  %148 = load i32, i32* @zz_size, align 4
  %idxprom323 = sext i32 %148 to i64
  %arrayidx324 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom323
  %149 = load %union.rec*, %union.rec** %arrayidx324, align 8
  %cmp325 = icmp eq %union.rec* %149, null
  br i1 %cmp325, label %if.then.327, label %if.else.329

if.then.327:                                      ; preds = %if.else.322
  %150 = load i32, i32* @zz_size, align 4
  %151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call328 = call %union.rec* @GetMemory(i32 %150, %struct.FILE_POS* %151)
  store %union.rec* %call328, %union.rec** @zz_hold, align 8
  br label %if.end.338

if.else.329:                                      ; preds = %if.else.322
  %152 = load i32, i32* @zz_size, align 4
  %idxprom330 = sext i32 %152 to i64
  %arrayidx331 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom330
  %153 = load %union.rec*, %union.rec** %arrayidx331, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %154 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 0
  %opred335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred335, align 8
  %156 = load i32, i32* @zz_size, align 4
  %idxprom336 = sext i32 %156 to i64
  %arrayidx337 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom336
  store %union.rec* %155, %union.rec** %arrayidx337, align 8
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.329, %if.then.327
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.then.320
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %157 to %struct.word_type*
  %ou1341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 1
  %os11342 = bitcast %union.FIRST_UNION* %ou1341 to %struct.anon*
  %otype343 = getelementptr inbounds %struct.anon, %struct.anon* %os11342, i32 0, i32 0
  store i8 0, i8* %otype343, align 1
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %159 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 1
  %osucc347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 1
  store %union.rec* %158, %union.rec** %osucc347, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1348 = bitcast %union.rec* %160 to %struct.word_type*
  %olist349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist349, i32 0, i64 1
  %opred351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx350, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred351, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1352 = bitcast %union.rec* %161 to %struct.word_type*
  %olist353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist353, i32 0, i64 0
  %osucc355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx354, i32 0, i32 1
  store %union.rec* %158, %union.rec** %osucc355, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1356 = bitcast %union.rec* %162 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 0
  %opred359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred359, align 8
  store %union.rec* %158, %union.rec** @xx_link, align 8
  %163 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %163, %union.rec** @zz_res, align 8
  %164 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp360 = icmp eq %union.rec* %165, null
  br i1 %cmp360, label %cond.true.362, label %cond.false.363

cond.true.362:                                    ; preds = %if.end.339
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.398

cond.false.363:                                   ; preds = %if.end.339
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp364 = icmp eq %union.rec* %167, null
  br i1 %cmp364, label %cond.true.366, label %cond.false.367

cond.true.366:                                    ; preds = %cond.false.363
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.396

cond.false.367:                                   ; preds = %cond.false.363
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1368 = bitcast %union.rec* %169 to %struct.word_type*
  %olist369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1368, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist369, i32 0, i64 0
  %opred371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx370, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %opred371, align 8
  store %union.rec* %170, %union.rec** @zz_tmp, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1372 = bitcast %union.rec* %171 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 0
  %opred375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 0
  %172 = load %union.rec*, %union.rec** %opred375, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1376 = bitcast %union.rec* %173 to %struct.word_type*
  %olist377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist377, i32 0, i64 0
  %opred379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx378, i32 0, i32 0
  store %union.rec* %172, %union.rec** %opred379, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1380 = bitcast %union.rec* %175 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 0
  %opred383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %opred383, align 8
  %os1384 = bitcast %union.rec* %176 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 0
  %osucc387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 1
  store %union.rec* %174, %union.rec** %osucc387, align 8
  %177 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1388 = bitcast %union.rec* %178 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 0
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  store %union.rec* %177, %union.rec** %opred391, align 8
  %179 = load %union.rec*, %union.rec** @zz_res, align 8
  %180 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1392 = bitcast %union.rec* %180 to %struct.word_type*
  %olist393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist393, i32 0, i64 0
  %osucc395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx394, i32 0, i32 1
  store %union.rec* %179, %union.rec** %osucc395, align 8
  br label %cond.end.396

cond.end.396:                                     ; preds = %cond.false.367, %cond.true.366
  %cond397 = phi %union.rec* [ %168, %cond.true.366 ], [ %179, %cond.false.367 ]
  br label %cond.end.398

cond.end.398:                                     ; preds = %cond.end.396, %cond.true.362
  %cond399 = phi %union.rec* [ %166, %cond.true.362 ], [ %cond397, %cond.end.396 ]
  %181 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %181, %union.rec** @zz_res, align 8
  %182 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp400 = icmp eq %union.rec* %183, null
  br i1 %cmp400, label %cond.true.402, label %cond.false.403

cond.true.402:                                    ; preds = %cond.end.398
  %184 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.438

cond.false.403:                                   ; preds = %cond.end.398
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp404 = icmp eq %union.rec* %185, null
  br i1 %cmp404, label %cond.true.406, label %cond.false.407

cond.true.406:                                    ; preds = %cond.false.403
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.436

cond.false.407:                                   ; preds = %cond.false.403
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1408 = bitcast %union.rec* %187 to %struct.word_type*
  %olist409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist409, i32 0, i64 1
  %opred411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx410, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred411, align 8
  store %union.rec* %188, %union.rec** @zz_tmp, align 8
  %189 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1412 = bitcast %union.rec* %189 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 1
  %opred415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %opred415, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1416 = bitcast %union.rec* %191 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 1
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  store %union.rec* %190, %union.rec** %opred419, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1420 = bitcast %union.rec* %193 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 1
  %opred423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 0
  %194 = load %union.rec*, %union.rec** %opred423, align 8
  %os1424 = bitcast %union.rec* %194 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 1
  %osucc427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 1
  store %union.rec* %192, %union.rec** %osucc427, align 8
  %195 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1428 = bitcast %union.rec* %196 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 1
  %opred431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred431, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1432 = bitcast %union.rec* %198 to %struct.word_type*
  %olist433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist433, i32 0, i64 1
  %osucc435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx434, i32 0, i32 1
  store %union.rec* %197, %union.rec** %osucc435, align 8
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.407, %cond.true.406
  %cond437 = phi %union.rec* [ %186, %cond.true.406 ], [ %197, %cond.false.407 ]
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.end.436, %cond.true.402
  %cond439 = phi %union.rec* [ %184, %cond.true.402 ], [ %cond437, %cond.end.436 ]
  %199 = load %union.rec*, %union.rec** %act.addr, align 8
  %os1440 = bitcast %union.rec* %199 to %struct.word_type*
  %ou2441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2441 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %200 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load442 = load i24, i24* %200, align 1
  %bf.lshr443 = lshr i24 %bf.load442, 8
  %bf.clear444 = and i24 %bf.lshr443, 1
  %bf.cast = zext i24 %bf.clear444 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %cond.end.438
  %201 = load %union.rec*, %union.rec** %act.addr, align 8
  call void @PushScope(%union.rec* %201, i32 0, i32 1)
  br label %if.end.446

if.end.446:                                       ; preds = %if.then.445, %cond.end.438
  %call447 = call %union.rec* @GetScopeSnapshot()
  store %union.rec* %call447, %union.rec** %x, align 8
  %202 = load %union.rec*, %union.rec** %act.addr, align 8
  %os1448 = bitcast %union.rec* %202 to %struct.word_type*
  %ou2449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1448, i32 0, i32 2
  %os26450 = bitcast %union.SECOND_UNION* %ou2449 to %struct.anon.5*
  %ohas_body451 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26450, i32 0, i32 1
  %203 = bitcast [3 x i8]* %ohas_body451 to i24*
  %bf.load452 = load i24, i24* %203, align 1
  %bf.lshr453 = lshr i24 %bf.load452, 8
  %bf.clear454 = and i24 %bf.lshr453, 1
  %bf.cast455 = zext i24 %bf.clear454 to i32
  %tobool456 = icmp ne i32 %bf.cast455, 0
  br i1 %tobool456, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %if.end.446
  call void @PopScope()
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.457, %if.end.446
  %204 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv459 = zext i8 %204 to i32
  store i32 %conv459, i32* @zz_size, align 4
  %conv460 = sext i32 %conv459 to i64
  %cmp461 = icmp uge i64 %conv460, 265
  br i1 %cmp461, label %if.then.463, label %if.else.465

if.then.463:                                      ; preds = %if.end.458
  %205 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call464 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %205)
  br label %if.end.482

if.else.465:                                      ; preds = %if.end.458
  %206 = load i32, i32* @zz_size, align 4
  %idxprom466 = sext i32 %206 to i64
  %arrayidx467 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom466
  %207 = load %union.rec*, %union.rec** %arrayidx467, align 8
  %cmp468 = icmp eq %union.rec* %207, null
  br i1 %cmp468, label %if.then.470, label %if.else.472

if.then.470:                                      ; preds = %if.else.465
  %208 = load i32, i32* @zz_size, align 4
  %209 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call471 = call %union.rec* @GetMemory(i32 %208, %struct.FILE_POS* %209)
  store %union.rec* %call471, %union.rec** @zz_hold, align 8
  br label %if.end.481

if.else.472:                                      ; preds = %if.else.465
  %210 = load i32, i32* @zz_size, align 4
  %idxprom473 = sext i32 %210 to i64
  %arrayidx474 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom473
  %211 = load %union.rec*, %union.rec** %arrayidx474, align 8
  store %union.rec* %211, %union.rec** @zz_hold, align 8
  store %union.rec* %211, %union.rec** @zz_hold, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1475 = bitcast %union.rec* %212 to %struct.word_type*
  %olist476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 0
  %arrayidx477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist476, i32 0, i64 0
  %opred478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx477, i32 0, i32 0
  %213 = load %union.rec*, %union.rec** %opred478, align 8
  %214 = load i32, i32* @zz_size, align 4
  %idxprom479 = sext i32 %214 to i64
  %arrayidx480 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom479
  store %union.rec* %213, %union.rec** %arrayidx480, align 8
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.472, %if.then.470
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.then.463
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1483 = bitcast %union.rec* %215 to %struct.word_type*
  %ou1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 1
  %os11485 = bitcast %union.FIRST_UNION* %ou1484 to %struct.anon*
  %otype486 = getelementptr inbounds %struct.anon, %struct.anon* %os11485, i32 0, i32 0
  store i8 0, i8* %otype486, align 1
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1487 = bitcast %union.rec* %217 to %struct.word_type*
  %olist488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist488, i32 0, i64 1
  %osucc490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx489, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc490, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1491 = bitcast %union.rec* %218 to %struct.word_type*
  %olist492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1491, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist492, i32 0, i64 1
  %opred494 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx493, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred494, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1495 = bitcast %union.rec* %219 to %struct.word_type*
  %olist496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist496, i32 0, i64 0
  %osucc498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx497, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc498, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1499 = bitcast %union.rec* %220 to %struct.word_type*
  %olist500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist500, i32 0, i64 0
  %opred502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx501, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred502, align 8
  store %union.rec* %216, %union.rec** @xx_link, align 8
  %221 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %221, %union.rec** @zz_res, align 8
  %222 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp503 = icmp eq %union.rec* %223, null
  br i1 %cmp503, label %cond.true.505, label %cond.false.506

cond.true.505:                                    ; preds = %if.end.482
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.541

cond.false.506:                                   ; preds = %if.end.482
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp507 = icmp eq %union.rec* %225, null
  br i1 %cmp507, label %cond.true.509, label %cond.false.510

cond.true.509:                                    ; preds = %cond.false.506
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.539

cond.false.510:                                   ; preds = %cond.false.506
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1511 = bitcast %union.rec* %227 to %struct.word_type*
  %olist512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist512, i32 0, i64 0
  %opred514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx513, i32 0, i32 0
  %228 = load %union.rec*, %union.rec** %opred514, align 8
  store %union.rec* %228, %union.rec** @zz_tmp, align 8
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1515 = bitcast %union.rec* %229 to %struct.word_type*
  %olist516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 0
  %arrayidx517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist516, i32 0, i64 0
  %opred518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx517, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %opred518, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1519 = bitcast %union.rec* %231 to %struct.word_type*
  %olist520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1519, i32 0, i32 0
  %arrayidx521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist520, i32 0, i64 0
  %opred522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx521, i32 0, i32 0
  store %union.rec* %230, %union.rec** %opred522, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1523 = bitcast %union.rec* %233 to %struct.word_type*
  %olist524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1523, i32 0, i32 0
  %arrayidx525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist524, i32 0, i64 0
  %opred526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx525, i32 0, i32 0
  %234 = load %union.rec*, %union.rec** %opred526, align 8
  %os1527 = bitcast %union.rec* %234 to %struct.word_type*
  %olist528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 0
  %arrayidx529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist528, i32 0, i64 0
  %osucc530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx529, i32 0, i32 1
  store %union.rec* %232, %union.rec** %osucc530, align 8
  %235 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1531 = bitcast %union.rec* %236 to %struct.word_type*
  %olist532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1531, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist532, i32 0, i64 0
  %opred534 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx533, i32 0, i32 0
  store %union.rec* %235, %union.rec** %opred534, align 8
  %237 = load %union.rec*, %union.rec** @zz_res, align 8
  %238 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1535 = bitcast %union.rec* %238 to %struct.word_type*
  %olist536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1535, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist536, i32 0, i64 0
  %osucc538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx537, i32 0, i32 1
  store %union.rec* %237, %union.rec** %osucc538, align 8
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.510, %cond.true.509
  %cond540 = phi %union.rec* [ %226, %cond.true.509 ], [ %237, %cond.false.510 ]
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.end.539, %cond.true.505
  %cond542 = phi %union.rec* [ %224, %cond.true.505 ], [ %cond540, %cond.end.539 ]
  %239 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %239, %union.rec** @zz_res, align 8
  %240 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %240, %union.rec** @zz_hold, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp543 = icmp eq %union.rec* %241, null
  br i1 %cmp543, label %cond.true.545, label %cond.false.546

cond.true.545:                                    ; preds = %cond.end.541
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.581

cond.false.546:                                   ; preds = %cond.end.541
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp547 = icmp eq %union.rec* %243, null
  br i1 %cmp547, label %cond.true.549, label %cond.false.550

cond.true.549:                                    ; preds = %cond.false.546
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.579

cond.false.550:                                   ; preds = %cond.false.546
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1551 = bitcast %union.rec* %245 to %struct.word_type*
  %olist552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1551, i32 0, i32 0
  %arrayidx553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist552, i32 0, i64 1
  %opred554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx553, i32 0, i32 0
  %246 = load %union.rec*, %union.rec** %opred554, align 8
  store %union.rec* %246, %union.rec** @zz_tmp, align 8
  %247 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1555 = bitcast %union.rec* %247 to %struct.word_type*
  %olist556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist556, i32 0, i64 1
  %opred558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx557, i32 0, i32 0
  %248 = load %union.rec*, %union.rec** %opred558, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1559 = bitcast %union.rec* %249 to %struct.word_type*
  %olist560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1559, i32 0, i32 0
  %arrayidx561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist560, i32 0, i64 1
  %opred562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx561, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred562, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1563 = bitcast %union.rec* %251 to %struct.word_type*
  %olist564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1563, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist564, i32 0, i64 1
  %opred566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx565, i32 0, i32 0
  %252 = load %union.rec*, %union.rec** %opred566, align 8
  %os1567 = bitcast %union.rec* %252 to %struct.word_type*
  %olist568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1567, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist568, i32 0, i64 1
  %osucc570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx569, i32 0, i32 1
  store %union.rec* %250, %union.rec** %osucc570, align 8
  %253 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1571 = bitcast %union.rec* %254 to %struct.word_type*
  %olist572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist572, i32 0, i64 1
  %opred574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx573, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred574, align 8
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %256 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1575 = bitcast %union.rec* %256 to %struct.word_type*
  %olist576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist576, i32 0, i64 1
  %osucc578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx577, i32 0, i32 1
  store %union.rec* %255, %union.rec** %osucc578, align 8
  br label %cond.end.579

cond.end.579:                                     ; preds = %cond.false.550, %cond.true.549
  %cond580 = phi %union.rec* [ %244, %cond.true.549 ], [ %255, %cond.false.550 ]
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.end.579, %cond.true.545
  %cond582 = phi %union.rec* [ %242, %cond.true.545 ], [ %cond580, %cond.end.579 ]
  %257 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %257
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare %union.rec* @LexScanVerbatim(%struct._IO_FILE*, i32, %struct.FILE_POS*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @PushScope(%union.rec*, i32, i32) #1

declare %union.rec* @GetScopeSnapshot() #1

declare void @PopScope() #1

; Function Attrs: nounwind uwtable
define void @FilterSetFileNames(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 57
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3 = icmp ne %union.rec* %4, %5
  br i1 %cmp3, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %7 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %osucc11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc11, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os115 = bitcast %union.rec* %10 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %11 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %12 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %opred25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred25, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os126 = bitcast %union.rec* %14 to %struct.word_type*
  %ou127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 1
  %os1128 = bitcast %union.FIRST_UNION* %ou127 to %struct.anon*
  %otype29 = getelementptr inbounds %struct.anon, %struct.anon* %os1128, i32 0, i32 0
  %15 = load i8, i8* %otype29, align 1
  %conv30 = zext i8 %15 to i32
  %cmp31 = icmp eq i32 %conv30, 11
  br i1 %cmp31, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call34 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %for.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %18 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %os6 = bitcast %union.rec* %18 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 4
  store %union.rec* %17, %union.rec** %osym_body, align 8
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os136 = bitcast %union.rec* %19 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 0
  %osucc39 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc39, align 8
  %os140 = bitcast %union.rec* %20 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 0
  %osucc43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc43, align 8
  %os144 = bitcast %union.rec* %21 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 1
  %opred47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred47, align 8
  store %union.rec* %22, %union.rec** %y, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %if.end.35
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os149 = bitcast %union.rec* %23 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %os1151 = bitcast %union.FIRST_UNION* %ou150 to %struct.anon*
  %otype52 = getelementptr inbounds %struct.anon, %struct.anon* %os1151, i32 0, i32 0
  %24 = load i8, i8* %otype52, align 1
  %conv53 = zext i8 %24 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.48
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.56
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os158 = bitcast %union.rec* %25 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %26, %union.rec** %y, align 8
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  %27 = load %union.rec*, %union.rec** %y, align 8
  %os163 = bitcast %union.rec* %27 to %struct.word_type*
  %ou164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 1
  %os1165 = bitcast %union.FIRST_UNION* %ou164 to %struct.anon*
  %otype66 = getelementptr inbounds %struct.anon, %struct.anon* %os1165, i32 0, i32 0
  %28 = load i8, i8* %otype66, align 1
  %conv67 = zext i8 %28 to i32
  %cmp68 = icmp eq i32 %conv67, 11
  br i1 %cmp68, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %for.end.62
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call71 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %for.end.62
  %30 = load %union.rec*, %union.rec** %y, align 8
  %31 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %os673 = bitcast %union.rec* %31 to %struct.symbol_type*
  %osym_body74 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os673, i32 0, i32 4
  store %union.rec* %30, %union.rec** %osym_body74, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @FilterExecute(%union.rec* %x, i8* %command, %union.rec* %env) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %command.addr = alloca i8*, align 8
  %env.addr = alloca %union.rec*, align 8
  %status = alloca i32, align 4
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %scope_snapshot = alloca %union.rec*, align 8
  %line = alloca [2048 x i8], align 16
  %err_fp = alloca %struct._IO_FILE*, align 8
  %filter_out_file = alloca i16, align 2
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 57
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %env.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %4 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %4 to i32
  %cmp7 = icmp eq i32 %conv6, 82
  br i1 %cmp7, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %6 = load %union.rec*, %union.rec** @filter_in_filename, align 8
  %7 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %os6 = bitcast %union.rec* %7 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 4
  store %union.rec* %6, %union.rec** %osym_body, align 8
  %8 = load i32, i32* @SafeExecution, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.11
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os113 = bitcast %union.rec* %9 to %struct.word_type*
  %ou114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou114 to %struct.FILE_POS*
  %10 = load i8*, i8** %command.addr, align 8
  %call15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %10)
  %11 = load %union.rec*, %union.rec** %x.addr, align 8
  %os116 = bitcast %union.rec* %11 to %struct.word_type*
  %ou117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %ofpos18 = bitcast %union.FIRST_UNION* %ou117 to %struct.FILE_POS*
  %call19 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %struct.FILE_POS* %ofpos18)
  store %union.rec* %call19, %union.rec** %res, align 8
  br label %if.end.93

if.else:                                          ; preds = %if.end.11
  %12 = load i8*, i8** %command.addr, align 8
  %call20 = call i32 @system(i8* %12)
  store i32 %call20, i32* %status, align 4
  %call21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %err_fp, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %err_fp, align 8
  %cmp22 = icmp ne %struct._IO_FILE* %13, null
  br i1 %cmp22, label %if.then.24, label %if.end.46

if.then.24:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.then.24
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %err_fp, align 8
  %call25 = call i8* @fgets(i8* %arraydecay, i32 2048, %struct._IO_FILE* %14)
  %cmp26 = icmp ne i8* %call25, null
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %call29 = call i64 @strlen(i8* %arraydecay28) #5
  %sub = sub i64 %call29, 1
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub
  %15 = load i8, i8* %arrayidx, align 1
  %conv30 = sext i8 %15 to i32
  %cmp31 = icmp eq i32 %conv30, 10
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %while.body
  %arraydecay34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %call35 = call i64 @strlen(i8* %arraydecay34) #5
  %sub36 = sub i64 %call35, 1
  %arrayidx37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %sub36
  store i8 0, i8* %arrayidx37, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %while.body
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os139 = bitcast %union.rec* %16 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos41 = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %arraydecay42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %call43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos41, i8* %arraydecay42)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %err_fp, align 8
  %call44 = call i32 @fclose(%struct._IO_FILE* %17)
  %call45 = call i32 @remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.46

if.end.46:                                        ; preds = %while.end, %if.else
  %18 = load i32, i32* %status, align 4
  %cmp47 = icmp ne i32 %18, 0
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.end.46
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os150 = bitcast %union.rec* %19 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %ofpos52 = bitcast %union.FIRST_UNION* %ou151 to %struct.FILE_POS*
  %20 = load i8*, i8** %command.addr, align 8
  %call53 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos52, i8* %20)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.end.46
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os155 = bitcast %union.rec* %21 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred, align 8
  %os157 = bitcast %union.rec* %22 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 1
  %opred60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred60, align 8
  store %union.rec* %23, %union.rec** %scope_snapshot, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.54
  %24 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  %os161 = bitcast %union.rec* %24 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %os1163 = bitcast %union.FIRST_UNION* %ou162 to %struct.anon*
  %otype64 = getelementptr inbounds %struct.anon, %struct.anon* %os1163, i32 0, i32 0
  %25 = load i8, i8* %otype64, align 1
  %conv65 = zext i8 %25 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  %os168 = bitcast %union.rec* %26 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred71, align 8
  store %union.rec* %27, %union.rec** %scope_snapshot, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  call void @LoadScopeSnapshot(%union.rec* %28)
  %29 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %os672 = bitcast %union.rec* %29 to %struct.symbol_type*
  %osym_body73 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os672, i32 0, i32 4
  %30 = load %union.rec*, %union.rec** %osym_body73, align 8
  %os174 = bitcast %union.rec* %30 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 4
  %arraydecay75 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %x.addr, align 8
  %os176 = bitcast %union.rec* %31 to %struct.word_type*
  %ou177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 1
  %ofpos78 = bitcast %union.FIRST_UNION* %ou177 to %struct.FILE_POS*
  %call79 = call zeroext i16 @DefineFile(i8* %arraydecay75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %struct.FILE_POS* %ofpos78, i32 10, i32 0)
  store i16 %call79, i16* %filter_out_file, align 2
  %32 = load i16, i16* %filter_out_file, align 2
  call void @LexPush(i16 zeroext %32, i32 0, i32 10, i32 1, i32 0)
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os180 = bitcast %union.rec* %33 to %struct.word_type*
  %ou181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 1
  %ofpos82 = bitcast %union.FIRST_UNION* %ou181 to %struct.FILE_POS*
  %34 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %call83 = call %union.rec* @NewToken(i8 zeroext 104, %struct.FILE_POS* %ofpos82, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, %union.rec* %34)
  store %union.rec* %call83, %union.rec** %t, align 8
  %call84 = call %union.rec* @Parse(%union.rec** %t, %union.rec* null, i32 0, i32 0)
  store %union.rec* %call84, %union.rec** %res, align 8
  call void @LexPop()
  %35 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  call void @ClearScopeSnapshot(%union.rec* %35)
  %36 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %os685 = bitcast %union.rec* %36 to %struct.symbol_type*
  %osym_body86 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os685, i32 0, i32 4
  %37 = load %union.rec*, %union.rec** %osym_body86, align 8
  %os187 = bitcast %union.rec* %37 to %struct.word_type*
  %ostring88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 4
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring88, i32 0, i32 0
  %call90 = call i32 @remove(i8* %arraydecay89) #4
  %38 = load %union.rec*, %union.rec** @filter_out_filename, align 8
  %39 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %os691 = bitcast %union.rec* %39 to %struct.symbol_type*
  %osym_body92 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os691, i32 0, i32 4
  store %union.rec* %38, %union.rec** %osym_body92, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %for.end, %if.then.12
  %40 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %40
}

declare i32 @system(i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

declare void @LoadScopeSnapshot(%union.rec*) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #1

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare void @LexPop() #1

declare void @ClearScopeSnapshot(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @FilterWrite(%union.rec* %x, %struct._IO_FILE* %fp, i32* %linecount) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %linecount.addr = alloca i32*, align 8
  %in_fp = alloca %struct._IO_FILE*, align 8
  %y = alloca %union.rec*, align 8
  %ch = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %linecount, i32** %linecount.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 57
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %union.rec*, %union.rec** %y, align 8
  %os16 = bitcast %union.rec* %6 to %struct.word_type*
  %ou17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %os118 = bitcast %union.FIRST_UNION* %ou17 to %struct.anon*
  %otype9 = getelementptr inbounds %struct.anon, %struct.anon* %os118, i32 0, i32 0
  %7 = load i8, i8* %otype9, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os113 = bitcast %union.rec* %8 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %opred16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred16, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os117 = bitcast %union.rec* %10 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call18 = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call18, %struct._IO_FILE** %in_fp, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %cmp19 = icmp eq %struct._IO_FILE* %11, null
  br i1 %cmp19, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %for.end
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os122 = bitcast %union.rec* %12 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou123 to %struct.FILE_POS*
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os124 = bitcast %union.rec* %13 to %struct.word_type*
  %ostring25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 4
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring25, i32 0, i32 0
  %call27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %for.end
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os129 = bitcast %union.rec* %14 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %15 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %15, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.28
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call32 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %17)
  %18 = load i32*, i32** %linecount.addr, align 8
  %19 = load i32, i32* %18, align 4
  %add = add nsw i32 %19, 1
  store i32 %add, i32* %18, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.then.30
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call33 = call i32 @_IO_getc(%struct._IO_FILE* %20)
  store i32 %call33, i32* %ch, align 4
  %cmp34 = icmp ne i32 %call33, -1
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %ch, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @_IO_putc(i32 %21, %struct._IO_FILE* %22)
  %23 = load i32, i32* %ch, align 4
  %cmp37 = icmp eq i32 %23, 10
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %while.body
  %24 = load i32*, i32** %linecount.addr, align 8
  %25 = load i32, i32* %24, align 4
  %add40 = add nsw i32 %25, 1
  store i32 %add40, i32* %24, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call42 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %union.rec*, %union.rec** %y, align 8
  %os144 = bitcast %union.rec* %28 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 3
  %ofilter_actual = bitcast %union.THIRD_UNION* %ou3 to %union.rec**
  %29 = load %union.rec*, %union.rec** %ofilter_actual, align 8
  %call45 = call i8* @SymName(%union.rec* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call46 = call i32 @fputs(i8* %call45, %struct._IO_FILE* %30)
  br label %if.end.63

if.else:                                          ; preds = %if.end.28
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call48 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load i32*, i32** %linecount.addr, align 8
  %34 = load i32, i32* %33, align 4
  %add49 = add nsw i32 %34, 1
  store i32 %add49, i32* %33, align 4
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.60, %if.else
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call51 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  store i32 %call51, i32* %ch, align 4
  %cmp52 = icmp ne i32 %call51, -1
  br i1 %cmp52, label %while.body.54, label %while.end.61

while.body.54:                                    ; preds = %while.cond.50
  %36 = load i32, i32* %ch, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call55 = call i32 @_IO_putc(i32 %36, %struct._IO_FILE* %37)
  %38 = load i32, i32* %ch, align 4
  %cmp56 = icmp eq i32 %38, 10
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %while.body.54
  %39 = load i32*, i32** %linecount.addr, align 8
  %40 = load i32, i32* %39, align 4
  %add59 = add nsw i32 %40, 1
  store i32 %add59, i32* %39, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %while.body.54
  br label %while.cond.50

while.end.61:                                     ; preds = %while.cond.50
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call62 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %41)
  br label %if.end.63

if.end.63:                                        ; preds = %while.end.61, %while.end
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %42)
  %43 = load i32*, i32** %linecount.addr, align 8
  %44 = load i32, i32* %43, align 4
  %add65 = add nsw i32 %44, 1
  store i32 %add65, i32* %43, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call66 = call i32 @fclose(%struct._IO_FILE* %45)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i8* @SymName(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @FilterScavenge(i32 %all) #0 {
entry:
  %all.addr = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %nextlink = alloca %union.rec*, align 8
  store i32 %all, i32* %all.addr, align 4
  %0 = load %union.rec*, %union.rec** @filter_active, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.147, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** @filter_active, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.148

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %y, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %y, align 8
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
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %link, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 0
  %osucc17 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %osucc17, align 8
  store %union.rec* %11, %union.rec** %nextlink, align 8
  %12 = load i32, i32* %all.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %13 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %osucc21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 1
  %14 = load %union.rec*, %union.rec** %osucc21, align 8
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %opred25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred25, align 8
  %cmp26 = icmp eq %union.rec* %14, %16
  br i1 %cmp26, label %if.then, label %if.end.146

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os128 = bitcast %union.rec* %17 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @remove(i8* %arraydecay) #4
  %18 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %18, %union.rec** @xx_link, align 8
  %19 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %20 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 1
  %osucc32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc32, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp33 = icmp eq %union.rec* %21, %22
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %23 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %osucc38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc38, align 8
  store %union.rec* %24, %union.rec** @zz_res, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %25 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 1
  %opred42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred42, align 8
  %27 = load %union.rec*, %union.rec** @zz_res, align 8
  %os143 = bitcast %union.rec* %27 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 1
  %opred46 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 0
  store %union.rec* %26, %union.rec** %opred46, align 8
  %28 = load %union.rec*, %union.rec** @zz_res, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os147 = bitcast %union.rec* %29 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 1
  %opred50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred50, align 8
  %os151 = bitcast %union.rec* %30 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 1
  %osucc54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc54, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os155 = bitcast %union.rec* %32 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 1
  %osucc58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 1
  store %union.rec* %31, %union.rec** %osucc58, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os159 = bitcast %union.rec* %33 to %struct.word_type*
  %olist60 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist60, i32 0, i64 1
  %opred62 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx61, i32 0, i32 0
  store %union.rec* %31, %union.rec** %opred62, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %34, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %35 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os163 = bitcast %union.rec* %36 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 0
  %osucc66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc66, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp67 = icmp eq %union.rec* %37, %38
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end
  br label %cond.end.99

cond.false.70:                                    ; preds = %cond.end
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os171 = bitcast %union.rec* %39 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 0
  %osucc74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %osucc74, align 8
  store %union.rec* %40, %union.rec** @zz_res, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os175 = bitcast %union.rec* %41 to %struct.word_type*
  %olist76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist76, i32 0, i64 0
  %opred78 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx77, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred78, align 8
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  %os179 = bitcast %union.rec* %43 to %struct.word_type*
  %olist80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist80, i32 0, i64 0
  %opred82 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx81, i32 0, i32 0
  store %union.rec* %42, %union.rec** %opred82, align 8
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os183 = bitcast %union.rec* %45 to %struct.word_type*
  %olist84 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist84, i32 0, i64 0
  %opred86 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx85, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred86, align 8
  %os187 = bitcast %union.rec* %46 to %struct.word_type*
  %olist88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist88, i32 0, i64 0
  %osucc90 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx89, i32 0, i32 1
  store %union.rec* %44, %union.rec** %osucc90, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os191 = bitcast %union.rec* %48 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 0
  %osucc94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc94, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %49 to %struct.word_type*
  %olist96 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist96, i32 0, i64 0
  %opred98 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx97, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred98, align 8
  %50 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.70, %cond.true.69
  %cond100 = phi %union.rec* [ null, %cond.true.69 ], [ %50, %cond.false.70 ]
  %51 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %52, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1101 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 1
  %os11103 = bitcast %union.FIRST_UNION* %ou1102 to %struct.anon*
  %otype104 = getelementptr inbounds %struct.anon, %struct.anon* %os11103, i32 0, i32 0
  %54 = load i8, i8* %otype104, align 1
  %conv105 = zext i8 %54 to i32
  %cmp106 = icmp eq i32 %conv105, 11
  br i1 %cmp106, label %cond.true.116, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %cond.end.99
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 1
  %os11111 = bitcast %union.FIRST_UNION* %ou1110 to %struct.anon*
  %otype112 = getelementptr inbounds %struct.anon, %struct.anon* %os11111, i32 0, i32 0
  %56 = load i8, i8* %otype112, align 1
  %conv113 = zext i8 %56 to i32
  %cmp114 = icmp eq i32 %conv113, 12
  br i1 %cmp114, label %cond.true.116, label %cond.false.121

cond.true.116:                                    ; preds = %lor.lhs.false.108, %cond.end.99
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 1
  %os11119 = bitcast %union.FIRST_UNION* %ou1118 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11119, i32 0, i32 1
  %58 = load i8, i8* %orec_size, align 1
  %conv120 = zext i8 %58 to i32
  br label %cond.end.128

cond.false.121:                                   ; preds = %lor.lhs.false.108
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1122 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 1
  %os11124 = bitcast %union.FIRST_UNION* %ou1123 to %struct.anon*
  %otype125 = getelementptr inbounds %struct.anon, %struct.anon* %os11124, i32 0, i32 0
  %60 = load i8, i8* %otype125, align 1
  %idxprom = zext i8 %60 to i64
  %arrayidx126 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %61 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %61 to i32
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.121, %cond.true.116
  %cond129 = phi i32 [ %conv120, %cond.true.116 ], [ %conv127, %cond.false.121 ]
  store i32 %cond129, i32* @zz_size, align 4
  %62 = load i32, i32* @zz_size, align 4
  %idxprom130 = sext i32 %62 to i64
  %arrayidx131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom130
  %63 = load %union.rec*, %union.rec** %arrayidx131, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %64 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  store %union.rec* %63, %union.rec** %opred135, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = load i32, i32* @zz_size, align 4
  %idxprom136 = sext i32 %66 to i64
  %arrayidx137 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom136
  store %union.rec* %65, %union.rec** %arrayidx137, align 8
  %67 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1138 = bitcast %union.rec* %67 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 1
  %osucc141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc141, align 8
  %69 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp142 = icmp eq %union.rec* %68, %69
  br i1 %cmp142, label %if.then.144, label %if.end

if.then.144:                                      ; preds = %cond.end.128
  %70 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call145 = call i32 @DisposeObject(%union.rec* %70)
  br label %if.end

if.end:                                           ; preds = %if.then.144, %cond.end.128
  br label %if.end.146

if.end.146:                                       ; preds = %if.end, %lor.lhs.false
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %71 = load %union.rec*, %union.rec** %nextlink, align 8
  store %union.rec* %71, %union.rec** %link, align 8
  br label %for.cond

for.end.148:                                      ; preds = %for.cond
  ret void
}

declare i32 @DisposeObject(%union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
