; ModuleID = './MultiSource.Benchmarks.MiBench/53.consumer-typeset.z03.bc'
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
%struct.anon.14 = type { i32, i32, [1 x %struct.filetab_rec] }
%struct.filetab_rec = type { %union.rec*, %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@no_fpos = global %struct.FILE_POS* bitcast ({ i8, i8, i16, i8, i8, i8, i8 }* @no_file_pos to %struct.FILE_POS*), align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@file_type = internal global [11 x %union.rec*] zeroinitializer, align 16
@file_path = internal global [8 x %union.rec*] zeroinitializer, align 16
@file_tab = internal global %struct.anon.14* null, align 8
@empty_path = internal global %union.rec* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DefineFile: ftype!\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"database file %s where source file expected\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".li\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"database index file %s where source file expected\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"file name %s%s is too long\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"DatabaseFileNum: filter file position unknown\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"DatabaseFileNum: unexpected file type\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"FileName: x == nilobj!\00", align 1
@FullFileName.ffbuff = internal global [2 x [512 x i8]] zeroinitializer, align 16
@FullFileName.ffbp = internal global i32 1, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@bp = internal global i32 1, align 4
@buff = internal global [2 x [512 x i8]] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"EchoFileSource: x == nilobj!\00", align 1
@MsgCat = external global i8*, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"PosOfFile: file_tab entry is nilobj!\00", align 1
@file_mode = internal global [11 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)], align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"OpenIncGraphicFile!\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@compress_suffixes = internal global [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0)], align 16
@.str.28 = private unnamed_addr constant [18 x i8] c"gunzip -c %s > %s\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@SafeExecution = external global i32, align 4
@.str.30 = private unnamed_addr constant [39 x i8] c"safe execution prohibiting command: %s\00", align 1
@no_file_pos = internal global { i8, i8, i16, i8, i8, i8, i8 } zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [44 x i8] c"run out of memory when enlarging file table\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"too many files (maximum is %d)\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"EchoFilePos: file_tab entry is nilobj!\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"file position %s... is too long to print\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [34 x i8] c"file path name %s%s%s is too long\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"files %s and %s both exist\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"-gz\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"_z\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c".Z\00", align 1

; Function Attrs: nounwind uwtable
define void @InitFiles() #0 {
entry:
  %i = alloca i32, align 4
  %tmp = alloca %union.rec*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp2 = icmp uge i64 %conv1, 265
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %3 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %4 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp4 = icmp eq %union.rec* %4, null
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %5 = load i32, i32* @zz_size, align 4
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* %6)
  store %union.rec* %call7, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom9
  %8 = load %union.rec*, %union.rec** %arrayidx10, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  %11 = load i32, i32* @zz_size, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom12
  store %union.rec* %10, %union.rec** %arrayidx13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %14 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os119 = bitcast %union.rec* %15 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred22, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %16 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 0
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc26, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %17 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 0
  %opred30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred30, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [11 x %union.rec*], [11 x %union.rec*]* @file_type, i32 0, i64 %idxprom31
  store %union.rec* %13, %union.rec** %arrayidx32, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.83, %for.end
  %20 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %20, 8
  br i1 %cmp34, label %for.body.36, label %for.end.85

for.body.36:                                      ; preds = %for.cond.33
  %21 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv37 = zext i8 %21 to i32
  store i32 %conv37, i32* @zz_size, align 4
  %conv38 = sext i32 %conv37 to i64
  %cmp39 = icmp uge i64 %conv38, 265
  br i1 %cmp39, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %for.body.36
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call42 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %22)
  br label %if.end.60

if.else.43:                                       ; preds = %for.body.36
  %23 = load i32, i32* @zz_size, align 4
  %idxprom44 = sext i32 %23 to i64
  %arrayidx45 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom44
  %24 = load %union.rec*, %union.rec** %arrayidx45, align 8
  %cmp46 = icmp eq %union.rec* %24, null
  br i1 %cmp46, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else.43
  %25 = load i32, i32* @zz_size, align 4
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call49 = call %union.rec* @GetMemory(i32 %25, %struct.FILE_POS* %26)
  store %union.rec* %call49, %union.rec** @zz_hold, align 8
  br label %if.end.59

if.else.50:                                       ; preds = %if.else.43
  %27 = load i32, i32* @zz_size, align 4
  %idxprom51 = sext i32 %27 to i64
  %arrayidx52 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom51
  %28 = load %union.rec*, %union.rec** %arrayidx52, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os153 = bitcast %union.rec* %29 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 0
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred56, align 8
  %31 = load i32, i32* @zz_size, align 4
  %idxprom57 = sext i32 %31 to i64
  %arrayidx58 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom57
  store %union.rec* %30, %union.rec** %arrayidx58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.50, %if.then.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.41
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os161 = bitcast %union.rec* %32 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %os1163 = bitcast %union.FIRST_UNION* %ou162 to %struct.anon*
  %otype64 = getelementptr inbounds %struct.anon, %struct.anon* %os1163, i32 0, i32 0
  store i8 17, i8* %otype64, align 1
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %34 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  store %union.rec* %33, %union.rec** %osucc68, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %35 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred72, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %36 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %osucc76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 1
  store %union.rec* %33, %union.rec** %osucc76, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os177 = bitcast %union.rec* %37 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 0
  %opred80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred80, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %38 to i64
  %arrayidx82 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %idxprom81
  store %union.rec* %33, %union.rec** %arrayidx82, align 8
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.60
  %39 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %39, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.33

for.end.85:                                       ; preds = %for.cond.33
  %call86 = call %struct.anon.14* @ftab_new(i32 3)
  store %struct.anon.14* %call86, %struct.anon.14** @file_tab, align 8
  %40 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv87 = zext i8 %40 to i32
  store i32 %conv87, i32* @zz_size, align 4
  %conv88 = sext i32 %conv87 to i64
  %cmp89 = icmp uge i64 %conv88, 265
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %for.end.85
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call92 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %41)
  br label %if.end.110

if.else.93:                                       ; preds = %for.end.85
  %42 = load i32, i32* @zz_size, align 4
  %idxprom94 = sext i32 %42 to i64
  %arrayidx95 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom94
  %43 = load %union.rec*, %union.rec** %arrayidx95, align 8
  %cmp96 = icmp eq %union.rec* %43, null
  br i1 %cmp96, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.else.93
  %44 = load i32, i32* @zz_size, align 4
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call99 = call %union.rec* @GetMemory(i32 %44, %struct.FILE_POS* %45)
  store %union.rec* %call99, %union.rec** @zz_hold, align 8
  br label %if.end.109

if.else.100:                                      ; preds = %if.else.93
  %46 = load i32, i32* @zz_size, align 4
  %idxprom101 = sext i32 %46 to i64
  %arrayidx102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom101
  %47 = load %union.rec*, %union.rec** %arrayidx102, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %48 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 0
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred106, align 8
  %50 = load i32, i32* @zz_size, align 4
  %idxprom107 = sext i32 %50 to i64
  %arrayidx108 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom107
  store %union.rec* %49, %union.rec** %arrayidx108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.100, %if.then.98
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.91
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 1
  %os11113 = bitcast %union.FIRST_UNION* %ou1112 to %struct.anon*
  %otype114 = getelementptr inbounds %struct.anon, %struct.anon* %os11113, i32 0, i32 0
  store i8 17, i8* %otype114, align 1
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %53 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 1
  %osucc118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc118, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %54 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 1
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred122, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1123 = bitcast %union.rec* %55 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 0
  %osucc126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc126, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1127 = bitcast %union.rec* %56 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 0
  %opred130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred130, align 8
  store %union.rec* %52, %union.rec** @empty_path, align 8
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call131 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %57)
  store %union.rec* %call131, %union.rec** %tmp, align 8
  %58 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv132 = zext i8 %58 to i32
  store i32 %conv132, i32* @zz_size, align 4
  %conv133 = sext i32 %conv132 to i64
  %cmp134 = icmp uge i64 %conv133, 265
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.end.110
  %59 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call137 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %59)
  br label %if.end.155

if.else.138:                                      ; preds = %if.end.110
  %60 = load i32, i32* @zz_size, align 4
  %idxprom139 = sext i32 %60 to i64
  %arrayidx140 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom139
  %61 = load %union.rec*, %union.rec** %arrayidx140, align 8
  %cmp141 = icmp eq %union.rec* %61, null
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.else.138
  %62 = load i32, i32* @zz_size, align 4
  %63 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call144 = call %union.rec* @GetMemory(i32 %62, %struct.FILE_POS* %63)
  store %union.rec* %call144, %union.rec** @zz_hold, align 8
  br label %if.end.154

if.else.145:                                      ; preds = %if.else.138
  %64 = load i32, i32* @zz_size, align 4
  %idxprom146 = sext i32 %64 to i64
  %arrayidx147 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom146
  %65 = load %union.rec*, %union.rec** %arrayidx147, align 8
  store %union.rec* %65, %union.rec** @zz_hold, align 8
  store %union.rec* %65, %union.rec** @zz_hold, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1148 = bitcast %union.rec* %66 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 0
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred151, align 8
  %68 = load i32, i32* @zz_size, align 4
  %idxprom152 = sext i32 %68 to i64
  %arrayidx153 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom152
  store %union.rec* %67, %union.rec** %arrayidx153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.145, %if.then.143
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.136
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1156 = bitcast %union.rec* %69 to %struct.word_type*
  %ou1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 1
  %os11158 = bitcast %union.FIRST_UNION* %ou1157 to %struct.anon*
  %otype159 = getelementptr inbounds %struct.anon, %struct.anon* %os11158, i32 0, i32 0
  store i8 0, i8* %otype159, align 1
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1160 = bitcast %union.rec* %71 to %struct.word_type*
  %olist161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist161, i32 0, i64 1
  %osucc163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx162, i32 0, i32 1
  store %union.rec* %70, %union.rec** %osucc163, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1164 = bitcast %union.rec* %72 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 1
  %opred167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred167, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1168 = bitcast %union.rec* %73 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 0
  %osucc171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 1
  store %union.rec* %70, %union.rec** %osucc171, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1172 = bitcast %union.rec* %74 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 0
  %opred175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred175, align 8
  store %union.rec* %70, %union.rec** @xx_link, align 8
  %75 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %75, %union.rec** @zz_res, align 8
  %76 = load %union.rec*, %union.rec** @empty_path, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp176 = icmp eq %union.rec* %77, null
  br i1 %cmp176, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.155
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.210

cond.false:                                       ; preds = %if.end.155
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp178 = icmp eq %union.rec* %79, null
  br i1 %cmp178, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %cond.false
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.181:                                   ; preds = %cond.false
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1182 = bitcast %union.rec* %81 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 0
  %opred185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred185, align 8
  store %union.rec* %82, %union.rec** @zz_tmp, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1186 = bitcast %union.rec* %83 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 0
  %opred189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 0
  %84 = load %union.rec*, %union.rec** %opred189, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1190 = bitcast %union.rec* %85 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 0
  %opred193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 0
  store %union.rec* %84, %union.rec** %opred193, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1194 = bitcast %union.rec* %87 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 0
  %opred197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred197, align 8
  %os1198 = bitcast %union.rec* %88 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 0
  %osucc201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 1
  store %union.rec* %86, %union.rec** %osucc201, align 8
  %89 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %90 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1202 = bitcast %union.rec* %90 to %struct.word_type*
  %olist203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist203, i32 0, i64 0
  %opred205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx204, i32 0, i32 0
  store %union.rec* %89, %union.rec** %opred205, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %92 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1206 = bitcast %union.rec* %92 to %struct.word_type*
  %olist207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist207, i32 0, i64 0
  %osucc209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx208, i32 0, i32 1
  store %union.rec* %91, %union.rec** %osucc209, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.181, %cond.true.180
  %cond = phi %union.rec* [ %80, %cond.true.180 ], [ %91, %cond.false.181 ]
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.end, %cond.true
  %cond211 = phi %union.rec* [ %78, %cond.true ], [ %cond, %cond.end ]
  %93 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %93, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp212 = icmp eq %union.rec* %95, null
  br i1 %cmp212, label %cond.true.214, label %cond.false.215

cond.true.214:                                    ; preds = %cond.end.210
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.250

cond.false.215:                                   ; preds = %cond.end.210
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp216 = icmp eq %union.rec* %97, null
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %cond.false.215
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.248

cond.false.219:                                   ; preds = %cond.false.215
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %99 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 1
  %opred223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred223, align 8
  store %union.rec* %100, %union.rec** @zz_tmp, align 8
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1224 = bitcast %union.rec* %101 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 1
  %opred227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred227, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %103 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 1
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  store %union.rec* %102, %union.rec** %opred231, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1232 = bitcast %union.rec* %105 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 1
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %opred235, align 8
  %os1236 = bitcast %union.rec* %106 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 1
  %osucc239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc239, align 8
  %107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1240 = bitcast %union.rec* %108 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 1
  %opred243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 0
  store %union.rec* %107, %union.rec** %opred243, align 8
  %109 = load %union.rec*, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1244 = bitcast %union.rec* %110 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 1
  %osucc247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc247, align 8
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.219, %cond.true.218
  %cond249 = phi %union.rec* [ %98, %cond.true.218 ], [ %109, %cond.false.219 ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end.248, %cond.true.214
  %cond251 = phi %union.rec* [ %96, %cond.true.214 ], [ %cond249, %cond.end.248 ]
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ftab_new(i32 %newsize) #0 {
entry:
  %newsize.addr = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %add = add i64 8, %mul
  %call = call noalias i8* @malloc(i64 %add) #4
  %1 = bitcast i8* %call to %struct.anon.14*
  store %struct.anon.14* %1, %struct.anon.14** %S, align 8
  %2 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %cmp = icmp eq %struct.anon.14* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %newsize.addr, align 4
  %5 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %filetab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 0
  store i32 %4, i32* %filetab_size, align 4
  %6 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %filetab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 1
  store i32 0, i32* %filetab_count, align 4
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
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_name_hash = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 1
  store %union.rec* null, %union.rec** %by_name_hash, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %filetab6 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %12, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab6, i32 0, i64 %idxprom5
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx7, i32 0, i32 0
  store %union.rec* null, %union.rec** %by_number, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %14
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @AddToPath(i32 %fpath, %union.rec* %dirname) #0 {
entry:
  %fpath.addr = alloca i32, align 4
  %dirname.addr = alloca %union.rec*, align 8
  store i32 %fpath, i32* %fpath.addr, align 4
  store %union.rec* %dirname, %union.rec** %dirname.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
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
  store i8 0, i8* %otype, align 1
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
  store %union.rec* %12, %union.rec** @xx_link, align 8
  %17 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %17, %union.rec** @zz_res, align 8
  %18 = load i32, i32* %fpath.addr, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %idxprom30
  %19 = load %union.rec*, %union.rec** %arrayidx31, align 8
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp32 = icmp eq %union.rec* %20, null
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %21 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.66

cond.false:                                       ; preds = %if.end.13
  %22 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp34 = icmp eq %union.rec* %22, null
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.37:                                    ; preds = %cond.false
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os138 = bitcast %union.rec* %24 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 0
  %opred41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %opred41, align 8
  store %union.rec* %25, %union.rec** @zz_tmp, align 8
  %26 = load %union.rec*, %union.rec** @zz_res, align 8
  %os142 = bitcast %union.rec* %26 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 0
  %opred45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred45, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %28 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 0
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %27, %union.rec** %opred49, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_res, align 8
  %os150 = bitcast %union.rec* %30 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %opred53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred53, align 8
  %os154 = bitcast %union.rec* %31 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 0
  %osucc57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc57, align 8
  %32 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %33 = load %union.rec*, %union.rec** @zz_res, align 8
  %os158 = bitcast %union.rec* %33 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  store %union.rec* %32, %union.rec** %opred61, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  %35 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os162 = bitcast %union.rec* %35 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %osucc65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 1
  store %union.rec* %34, %union.rec** %osucc65, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.37, %cond.true.36
  %cond = phi %union.rec* [ %23, %cond.true.36 ], [ %34, %cond.false.37 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end, %cond.true
  %cond67 = phi %union.rec* [ %21, %cond.true ], [ %cond, %cond.end ]
  %36 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %36, %union.rec** @zz_res, align 8
  %37 = load %union.rec*, %union.rec** %dirname.addr, align 8
  store %union.rec* %37, %union.rec** @zz_hold, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp68 = icmp eq %union.rec* %38, null
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end.66
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.106

cond.false.71:                                    ; preds = %cond.end.66
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp72 = icmp eq %union.rec* %40, null
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.false.71
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.104

cond.false.75:                                    ; preds = %cond.false.71
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os176 = bitcast %union.rec* %42 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 1
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %opred79, align 8
  store %union.rec* %43, %union.rec** @zz_tmp, align 8
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %os180 = bitcast %union.rec* %44 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 1
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred83, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os184 = bitcast %union.rec* %46 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred87, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %os188 = bitcast %union.rec* %48 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 1
  %opred91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred91, align 8
  %os192 = bitcast %union.rec* %49 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 1
  %osucc95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc95, align 8
  %50 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %51 = load %union.rec*, %union.rec** @zz_res, align 8
  %os196 = bitcast %union.rec* %51 to %struct.word_type*
  %olist97 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist97, i32 0, i64 1
  %opred99 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx98, i32 0, i32 0
  store %union.rec* %50, %union.rec** %opred99, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  %53 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1100 = bitcast %union.rec* %53 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 1
  %osucc103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc103, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.75, %cond.true.74
  %cond105 = phi %union.rec* [ %41, %cond.true.74 ], [ %52, %cond.false.75 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.70
  %cond107 = phi %union.rec* [ %39, %cond.true.70 ], [ %cond105, %cond.end.104 ]
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @DefineFile(i8* %str, i8* %suffix, %struct.FILE_POS* %xfpos, i32 %ftype, i32 %fpath) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %ftype.addr = alloca i32, align 4
  %fpath.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fname = alloca %union.rec*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i32 %fpath, i32* %fpath.addr, align 4
  %0 = load i32, i32* %ftype.addr, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ftype.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %call2 = call i64 @strlen(i8* %3) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %i, align 4
  %cmp3 = icmp sge i32 %conv, 3
  br i1 %cmp3, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %i, align 4
  %conv6 = sext i32 %4 to i64
  %sub = sub i64 %conv6, 3
  %5 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %sub
  %call7 = call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.5
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %6, i8* %7)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.5
  %8 = load i32, i32* %i, align 4
  %conv13 = sext i32 %8 to i64
  %sub14 = sub i64 %conv13, 3
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %9, i64 %sub14
  %call16 = call i32 @strcmp(i8* %arrayidx15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.12
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %11 = load i8*, i8** %str.addr, align 8
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %10, i8* %11)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %if.end
  %12 = load i8*, i8** %str.addr, align 8
  %call23 = call i64 @strlen(i8* %12) #5
  %13 = load i8*, i8** %suffix.addr, align 8
  %call24 = call i64 @strlen(i8* %13) #5
  %add = add i64 %call23, %call24
  %cmp25 = icmp uge i64 %add, 2048
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.22
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = load i8*, i8** %str.addr, align 8
  %16 = load i8*, i8** %suffix.addr, align 8
  %call28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %14, i8* %15, i8* %16)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.22
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i8*, i8** %suffix.addr, align 8
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call30 = call %union.rec* @MakeWordTwo(i32 11, i8* %17, i8* %18, %struct.FILE_POS* %19)
  store %union.rec* %call30, %union.rec** %fname, align 8
  %20 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv31 = zext i8 %20 to i32
  store i32 %conv31, i32* @zz_size, align 4
  %conv32 = sext i32 %conv31 to i64
  %cmp33 = icmp uge i64 %conv32, 265
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.29
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %21)
  br label %if.end.49

if.else:                                          ; preds = %if.end.29
  %22 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %23 = load %union.rec*, %union.rec** %arrayidx37, align 8
  %cmp38 = icmp eq %union.rec* %23, null
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else
  %24 = load i32, i32* @zz_size, align 4
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call41 = call %union.rec* @GetMemory(i32 %24, %struct.FILE_POS* %25)
  store %union.rec* %call41, %union.rec** @zz_hold, align 8
  br label %if.end.48

if.else.42:                                       ; preds = %if.else
  %26 = load i32, i32* @zz_size, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom43
  %27 = load %union.rec*, %union.rec** %arrayidx44, align 8
  store %union.rec* %27, %union.rec** @zz_hold, align 8
  store %union.rec* %27, %union.rec** @zz_hold, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %28 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %opred, align 8
  %30 = load i32, i32* @zz_size, align 4
  %idxprom46 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom46
  store %union.rec* %29, %union.rec** %arrayidx47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.35
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %31 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 0, i8* %otype, align 1
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os151 = bitcast %union.rec* %33 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 1
  store %union.rec* %32, %union.rec** %osucc, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %34 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 1
  %opred57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 0
  store %union.rec* %32, %union.rec** %opred57, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %35 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  store %union.rec* %32, %union.rec** %osucc61, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %36 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  store %union.rec* %32, %union.rec** %opred65, align 8
  store %union.rec* %32, %union.rec** @xx_link, align 8
  %37 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %37, %union.rec** @zz_res, align 8
  %38 = load i32, i32* %ftype.addr, align 4
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds [11 x %union.rec*], [11 x %union.rec*]* @file_type, i32 0, i64 %idxprom66
  %39 = load %union.rec*, %union.rec** %arrayidx67, align 8
  store %union.rec* %39, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp68 = icmp eq %union.rec* %40, null
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.49
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.102

cond.false:                                       ; preds = %if.end.49
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp70 = icmp eq %union.rec* %42, null
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.false
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.73:                                    ; preds = %cond.false
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %44 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred77, align 8
  store %union.rec* %45, %union.rec** @zz_tmp, align 8
  %46 = load %union.rec*, %union.rec** @zz_res, align 8
  %os178 = bitcast %union.rec* %46 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %opred81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %opred81, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %48 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred85, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = load %union.rec*, %union.rec** @zz_res, align 8
  %os186 = bitcast %union.rec* %50 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 0
  %opred89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred89, align 8
  %os190 = bitcast %union.rec* %51 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 0
  %osucc93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 1
  store %union.rec* %49, %union.rec** %osucc93, align 8
  %52 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %os194 = bitcast %union.rec* %53 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 0
  %opred97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred97, align 8
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  %55 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os198 = bitcast %union.rec* %55 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 0
  %osucc101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 1
  store %union.rec* %54, %union.rec** %osucc101, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.73, %cond.true.72
  %cond = phi %union.rec* [ %43, %cond.true.72 ], [ %54, %cond.false.73 ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end, %cond.true
  %cond103 = phi %union.rec* [ %41, %cond.true ], [ %cond, %cond.end ]
  %56 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %56, %union.rec** @zz_res, align 8
  %57 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %57, %union.rec** @zz_hold, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp104 = icmp eq %union.rec* %58, null
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.end.102
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.142

cond.false.107:                                   ; preds = %cond.end.102
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp108 = icmp eq %union.rec* %60, null
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.false.107
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.140

cond.false.111:                                   ; preds = %cond.false.107
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %62 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 1
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred115, align 8
  store %union.rec* %63, %union.rec** @zz_tmp, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1116 = bitcast %union.rec* %64 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 1
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred119, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %66 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 1
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred123, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1124 = bitcast %union.rec* %68 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred127, align 8
  %os1128 = bitcast %union.rec* %69 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc131, align 8
  %70 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1132 = bitcast %union.rec* %71 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 1
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred135, align 8
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %73 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1136 = bitcast %union.rec* %73 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 1
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc139, align 8
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.111, %cond.true.110
  %cond141 = phi %union.rec* [ %61, %cond.true.110 ], [ %72, %cond.false.111 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.106
  %cond143 = phi %union.rec* [ %59, %cond.true.106 ], [ %cond141, %cond.end.140 ]
  %74 = load i32, i32* %fpath.addr, align 4
  %75 = load %union.rec*, %union.rec** %fname, align 8
  %os1144 = bitcast %union.rec* %75 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  store i32 %74, i32* %arrayidx145, align 4
  %76 = load %union.rec*, %union.rec** %fname, align 8
  %os1146 = bitcast %union.rec* %76 to %struct.word_type*
  %ou3147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 3
  %os31148 = bitcast %union.THIRD_UNION* %ou3147 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31148, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  store i32 0, i32* %arrayidx149, align 4
  %77 = load %union.rec*, %union.rec** %fname, align 8
  %os1150 = bitcast %union.rec* %77 to %struct.word_type*
  %ou3151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 3
  %os31152 = bitcast %union.THIRD_UNION* %ou3151 to %struct.anon.6*
  %ofwd153 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31152, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd153, i32 0, i64 1
  store i32 0, i32* %arrayidx154, align 4
  %78 = load i32, i32* %ftype.addr, align 4
  %79 = load %union.rec*, %union.rec** %fname, align 8
  %os1155 = bitcast %union.rec* %79 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %80 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %80, align 4
  %bf.value = and i32 %78, 1023
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear = and i32 %bf.load, -4190209
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %80, align 4
  %81 = load %union.rec*, %union.rec** %fname, align 8
  %os1156 = bitcast %union.rec* %81 to %struct.word_type*
  %ou2157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 2
  %os22158 = bitcast %union.SECOND_UNION* %ou2157 to %struct.anon.1*
  %82 = bitcast %struct.anon.1* %os22158 to i32*
  %bf.load159 = load i32, i32* %82, align 4
  %bf.clear160 = and i32 %bf.load159, 2147483647
  store i32 %bf.clear160, i32* %82, align 4
  %83 = load %union.rec*, %union.rec** %fname, align 8
  call void @ftab_insert(%union.rec* %83, %struct.anon.14** @file_tab)
  %84 = load %union.rec*, %union.rec** %fname, align 8
  %os1161 = bitcast %union.rec* %84 to %struct.word_type*
  %ou2162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 2
  %os22163 = bitcast %union.SECOND_UNION* %ou2162 to %struct.anon.1*
  %85 = bitcast %struct.anon.1* %os22163 to i32*
  %bf.load164 = load i32, i32* %85, align 4
  %bf.clear165 = and i32 %bf.load164, 4095
  %conv166 = trunc i32 %bf.clear165 to i16
  ret i16 %conv166
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %union.rec* @MakeWordTwo(i32, i8*, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal void @ftab_insert(%union.rec* %x, %struct.anon.14** %S) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %S.addr = alloca %struct.anon.14**, align 8
  %pos = alloca i32, align 4
  %num = alloca i32, align 4
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.anon.14** %S, %struct.anon.14*** %S.addr, align 8
  %0 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %1 = load %struct.anon.14*, %struct.anon.14** %0, align 8
  %filetab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 1
  %2 = load i32, i32* %filetab_count, align 4
  %3 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %4 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %filetab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 0
  %5 = load i32, i32* %filetab_size, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %7 = load %struct.anon.14*, %struct.anon.14** %6, align 8
  %8 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %9 = load %struct.anon.14*, %struct.anon.14** %8, align 8
  %filetab_size1 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %filetab_size1, align 4
  %mul = mul nsw i32 2, %10
  %call = call %struct.anon.14* @ftab_rehash(%struct.anon.14* %7, i32 %mul)
  %11 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  store %struct.anon.14* %call, %struct.anon.14** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %13 = load %struct.anon.14*, %struct.anon.14** %12, align 8
  %filetab_count2 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %13, i32 0, i32 1
  %14 = load i32, i32* %filetab_count2, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %filetab_count2, align 4
  store i32 %inc, i32* %num, align 4
  %15 = load i32, i32* %num, align 4
  %cmp3 = icmp sgt i32 %15, 65535
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %16 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i32 65535)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %os17 = bitcast %union.rec* %17 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  store i32 %conv, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.6
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv9 = zext i8 %23 to i32
  %24 = load i32, i32* %pos, align 4
  %add = add nsw i32 %24, %conv9
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %pos, align 4
  %26 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %27 = load %struct.anon.14*, %struct.anon.14** %26, align 8
  %filetab_size10 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %27, i32 0, i32 0
  %28 = load i32, i32* %filetab_size10, align 4
  %rem = srem i32 %25, %28
  store i32 %rem, i32* %pos, align 4
  %29 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %31 = load %struct.anon.14*, %struct.anon.14** %30, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %31, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_name_hash = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %by_name_hash, align 8
  %cmp11 = icmp eq %union.rec* %32, null
  br i1 %cmp11, label %if.then.13, label %if.end.56

if.then.13:                                       ; preds = %while.end
  %33 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv14 = zext i8 %33 to i32
  store i32 %conv14, i32* @zz_size, align 4
  %conv15 = sext i32 %conv14 to i64
  %cmp16 = icmp uge i64 %conv15, 265
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.13
  %34 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %34)
  br label %if.end.34

if.else:                                          ; preds = %if.then.13
  %35 = load i32, i32* @zz_size, align 4
  %idxprom20 = sext i32 %35 to i64
  %arrayidx21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom20
  %36 = load %union.rec*, %union.rec** %arrayidx21, align 8
  %cmp22 = icmp eq %union.rec* %36, null
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else
  %37 = load i32, i32* @zz_size, align 4
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call %union.rec* @GetMemory(i32 %37, %struct.FILE_POS* %38)
  store %union.rec* %call25, %union.rec** @zz_hold, align 8
  br label %if.end.33

if.else.26:                                       ; preds = %if.else
  %39 = load i32, i32* @zz_size, align 4
  %idxprom27 = sext i32 %39 to i64
  %arrayidx28 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom27
  %40 = load %union.rec*, %union.rec** %arrayidx28, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %41 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred, align 8
  %43 = load i32, i32* @zz_size, align 4
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom31
  store %union.rec* %42, %union.rec** %arrayidx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %44 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou136 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %46 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os140 = bitcast %union.rec* %47 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %opred43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred43, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os144 = bitcast %union.rec* %48 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 0
  %osucc47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc47, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os148 = bitcast %union.rec* %49 to %struct.word_type*
  %olist49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist49, i32 0, i64 0
  %opred51 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx50, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred51, align 8
  %50 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %50 to i64
  %51 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %52 = load %struct.anon.14*, %struct.anon.14** %51, align 8
  %filetab53 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab53, i32 0, i64 %idxprom52
  %by_name_hash55 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx54, i32 0, i32 1
  store %union.rec* %45, %union.rec** %by_name_hash55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.34, %while.end
  %53 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv57 = zext i8 %53 to i32
  store i32 %conv57, i32* @zz_size, align 4
  %conv58 = sext i32 %conv57 to i64
  %cmp59 = icmp uge i64 %conv58, 265
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.end.56
  %54 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %54)
  br label %if.end.80

if.else.63:                                       ; preds = %if.end.56
  %55 = load i32, i32* @zz_size, align 4
  %idxprom64 = sext i32 %55 to i64
  %arrayidx65 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom64
  %56 = load %union.rec*, %union.rec** %arrayidx65, align 8
  %cmp66 = icmp eq %union.rec* %56, null
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.else.63
  %57 = load i32, i32* @zz_size, align 4
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call69 = call %union.rec* @GetMemory(i32 %57, %struct.FILE_POS* %58)
  store %union.rec* %call69, %union.rec** @zz_hold, align 8
  br label %if.end.79

if.else.70:                                       ; preds = %if.else.63
  %59 = load i32, i32* @zz_size, align 4
  %idxprom71 = sext i32 %59 to i64
  %arrayidx72 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom71
  %60 = load %union.rec*, %union.rec** %arrayidx72, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %61 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred76, align 8
  %63 = load i32, i32* @zz_size, align 4
  %idxprom77 = sext i32 %63 to i64
  %arrayidx78 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom77
  store %union.rec* %62, %union.rec** %arrayidx78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.70, %if.then.68
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.61
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %64 to %struct.word_type*
  %ou182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 1
  %os1183 = bitcast %union.FIRST_UNION* %ou182 to %struct.anon*
  %otype84 = getelementptr inbounds %struct.anon, %struct.anon* %os1183, i32 0, i32 0
  store i8 0, i8* %otype84, align 1
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %66 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %osucc88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc88, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os189 = bitcast %union.rec* %67 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 1
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred92, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os193 = bitcast %union.rec* %68 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 0
  %osucc96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc96, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os197 = bitcast %union.rec* %69 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %opred100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred100, align 8
  store %union.rec* %65, %union.rec** @xx_link, align 8
  %70 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %70, %union.rec** @zz_res, align 8
  %71 = load i32, i32* %pos, align 4
  %idxprom101 = sext i32 %71 to i64
  %72 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %73 = load %struct.anon.14*, %struct.anon.14** %72, align 8
  %filetab102 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %73, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab102, i32 0, i64 %idxprom101
  %by_name_hash104 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx103, i32 0, i32 1
  %74 = load %union.rec*, %union.rec** %by_name_hash104, align 8
  store %union.rec* %74, %union.rec** @zz_hold, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp105 = icmp eq %union.rec* %75, null
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.80
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.139

cond.false:                                       ; preds = %if.end.80
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp107 = icmp eq %union.rec* %77, null
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.110:                                   ; preds = %cond.false
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %79 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 0
  %opred114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred114, align 8
  store %union.rec* %80, %union.rec** @zz_tmp, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1115 = bitcast %union.rec* %81 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred118, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %83 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  store %union.rec* %82, %union.rec** %opred122, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1123 = bitcast %union.rec* %85 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 0
  %opred126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred126, align 8
  %os1127 = bitcast %union.rec* %86 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 0
  %osucc130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 1
  store %union.rec* %84, %union.rec** %osucc130, align 8
  %87 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1131 = bitcast %union.rec* %88 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 0
  %opred134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 0
  store %union.rec* %87, %union.rec** %opred134, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %90 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1135 = bitcast %union.rec* %90 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  store %union.rec* %89, %union.rec** %osucc138, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.110, %cond.true.109
  %cond = phi %union.rec* [ %78, %cond.true.109 ], [ %89, %cond.false.110 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end, %cond.true
  %cond140 = phi %union.rec* [ %76, %cond.true ], [ %cond, %cond.end ]
  %91 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %91, %union.rec** @zz_res, align 8
  %92 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %92, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp141 = icmp eq %union.rec* %93, null
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.end.139
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.179

cond.false.144:                                   ; preds = %cond.end.139
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp145 = icmp eq %union.rec* %95, null
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.false.144
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.177

cond.false.148:                                   ; preds = %cond.false.144
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %97 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred152, align 8
  store %union.rec* %98, %union.rec** @zz_tmp, align 8
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1153 = bitcast %union.rec* %99 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 1
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred156, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %101 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 1
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred160, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1161 = bitcast %union.rec* %103 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred164, align 8
  %os1165 = bitcast %union.rec* %104 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 1
  %osucc168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 1
  store %union.rec* %102, %union.rec** %osucc168, align 8
  %105 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1169 = bitcast %union.rec* %106 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %opred172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 0
  store %union.rec* %105, %union.rec** %opred172, align 8
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  %108 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1173 = bitcast %union.rec* %108 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  store %union.rec* %107, %union.rec** %osucc176, align 8
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.148, %cond.true.147
  %cond178 = phi %union.rec* [ %96, %cond.true.147 ], [ %107, %cond.false.148 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.143
  %cond180 = phi %union.rec* [ %94, %cond.true.143 ], [ %cond178, %cond.end.177 ]
  %109 = load i32, i32* %num, align 4
  %110 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1181 = bitcast %union.rec* %110 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %111 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %111, align 4
  %bf.value = and i32 %109, 4095
  %bf.clear = and i32 %bf.load, -4096
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %111, align 4
  %112 = load %union.rec*, %union.rec** %x.addr, align 8
  %113 = load i32, i32* %num, align 4
  %idxprom182 = sext i32 %113 to i64
  %114 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %115 = load %struct.anon.14*, %struct.anon.14** %114, align 8
  %filetab183 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %115, i32 0, i32 2
  %arrayidx184 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab183, i32 0, i64 %idxprom182
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx184, i32 0, i32 0
  store %union.rec* %112, %union.rec** %by_number, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @FirstFile(i32 %ftype) #0 {
entry:
  %ftype.addr = alloca i32, align 4
  %i = alloca i16, align 2
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  %0 = load i32, i32* %ftype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [11 x %union.rec*], [11 x %union.rec*]* @file_type, i32 0, i64 %idxprom
  %1 = load %union.rec*, %union.rec** %arrayidx, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %2, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** %link, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %link, align 8
  %os14 = bitcast %union.rec* %5 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %6, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load %union.rec*, %union.rec** %y, align 8
  %os17 = bitcast %union.rec* %7 to %struct.word_type*
  %ou18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os119 = bitcast %union.FIRST_UNION* %ou18 to %struct.anon*
  %otype10 = getelementptr inbounds %struct.anon, %struct.anon* %os119, i32 0, i32 0
  %8 = load i8, i8* %otype10, align 1
  %conv11 = zext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %union.rec*, %union.rec** %y, align 8
  %os114 = bitcast %union.rec* %9 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 1
  %opred17 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred17, align 8
  store %union.rec* %10, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %11 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %12 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %12, align 4
  %bf.clear = and i32 %bf.load, 4095
  %conv19 = trunc i32 %bf.clear to i16
  store i16 %conv19, i16* %i, align 2
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %13 = load i16, i16* %i, align 2
  ret i16 %13
}

; Function Attrs: nounwind uwtable
define zeroext i16 @NextFile(i16 zeroext %i) #0 {
entry:
  %i.addr = alloca i16, align 2
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store i16 %i, i16* %i.addr, align 2
  %0 = load i16, i16* %i.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %3 = load %union.rec*, %union.rec** %osucc, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 0
  %osucc5 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc5, align 8
  store %union.rec* %4, %union.rec** %link, align 8
  %5 = load %union.rec*, %union.rec** %link, align 8
  %os16 = bitcast %union.rec* %5 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %6 = load i8, i8* %otype, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 0, i16* %i.addr, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %union.rec*, %union.rec** %link, align 8
  %os18 = bitcast %union.rec* %7 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %8, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %9 to %struct.word_type*
  %ou112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os1113 = bitcast %union.FIRST_UNION* %ou112 to %struct.anon*
  %otype14 = getelementptr inbounds %struct.anon, %struct.anon* %os1113, i32 0, i32 0
  %10 = load i8, i8* %otype14, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %11 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %12, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %13 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %14 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %14, align 4
  %bf.clear = and i32 %bf.load, 4095
  %conv23 = trunc i32 %bf.clear to i16
  store i16 %conv23, i16* %i.addr, align 2
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %15 = load i16, i16* %i.addr, align 2
  ret i16 %15
}

; Function Attrs: nounwind uwtable
define zeroext i16 @FileNum(i8* %str, i8* %suffix) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %fname = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  store i8* %str, i8** %str.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %1 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %add = add i64 %call, %call1
  %cmp = icmp uge i64 %add, 512
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8*, i8** %suffix.addr, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %2, i8* %3, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %5 = load i8*, i8** %str.addr, align 8
  %call3 = call i8* @strcpy(i8* %arraydecay, i8* %5) #4
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %6 = load i8*, i8** %suffix.addr, align 8
  %call5 = call i8* @strcat(i8* %arraydecay4, i8* %6) #4
  %arraydecay6 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %7 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %call7 = call %union.rec* @ftab_retrieve(i8* %arraydecay6, %struct.anon.14* %7)
  store %union.rec* %call7, %union.rec** %fname, align 8
  %8 = load %union.rec*, %union.rec** %fname, align 8
  %cmp8 = icmp eq %union.rec* %8, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %union.rec*, %union.rec** %fname, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %10 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %10, align 4
  %bf.clear = and i32 %bf.load, 4095
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %bf.clear, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %conv = trunc i32 %11 to i16
  ret i16 %conv
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %union.rec* @ftab_retrieve(i8* %str, %struct.anon.14* %S) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %str.addr = alloca i8*, align 8
  %S.addr = alloca %struct.anon.14*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
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
  %9 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %filetab_size, align 4
  %rem = srem i32 %8, %10
  store i32 %rem, i32* %pos, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_name_hash = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %by_name_hash, align 8
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
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
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
define zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %xfpos) #0 {
entry:
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %x = alloca %union.rec*, align 8
  %fnum = alloca i16, align 2
  %str = alloca i8*, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %0, i32 0, i32 2
  %1 = load i16, i16* %ofile_num, align 2
  %idxprom = zext i16 %1 to i64
  %2 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %3, %union.rec** %x, align 8
  %4 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %4 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %5 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  switch i32 %bf.clear, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb.5
    i32 10, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry, %entry
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ofile_num1 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %6, i32 0, i32 2
  %7 = load i16, i16* %ofile_num1, align 2
  %call = call i8* @FileName(i16 zeroext %7)
  store i8* %call, i8** %str, align 8
  %8 = load i8*, i8** %str, align 8
  %call2 = call zeroext i16 @FileNum(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i16 %call2, i16* %fnum, align 2
  %9 = load i16, i16* %fnum, align 2
  %conv = zext i16 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %10 = load i8*, i8** %str, align 8
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call4 = call zeroext i16 @DefineFile(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %11, i32 3, i32 0)
  store i16 %call4, i16* %fnum, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %union.rec*, %union.rec** %x, align 8
  %os16 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %ofile_num7 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %13 = load i16, i16* %ofile_num7, align 2
  %conv8 = zext i16 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.5
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ofile_num12 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %14, i32 0, i32 2
  %15 = load i16, i16* %ofile_num12, align 2
  store i16 %15, i16* %fnum, align 2
  br label %if.end.17

if.else:                                          ; preds = %sw.bb.5
  %16 = load %union.rec*, %union.rec** %x, align 8
  %os113 = bitcast %union.rec* %16 to %struct.word_type*
  %ou114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %ofpos15 = bitcast %union.FIRST_UNION* %ou114 to %struct.FILE_POS*
  %call16 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %ofpos15)
  store i16 %call16, i16* %fnum, align 2
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %17 = load %union.rec*, %union.rec** %x, align 8
  %os119 = bitcast %union.rec* %17 to %struct.word_type*
  %ou120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 1
  %ofpos21 = bitcast %union.FIRST_UNION* %ou120 to %struct.FILE_POS*
  %ofile_num22 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos21, i32 0, i32 2
  %18 = load i16, i16* %ofile_num22, align 2
  %conv23 = zext i16 %18 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %sw.bb.18
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i32 0, %struct.FILE_POS* %19)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %sw.bb.18
  %20 = load %union.rec*, %union.rec** %x, align 8
  %os129 = bitcast %union.rec* %20 to %struct.word_type*
  %ou130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %ofpos31 = bitcast %union.FIRST_UNION* %ou130 to %struct.FILE_POS*
  %call32 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %ofpos31)
  store i16 %call32, i16* %fnum, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call33 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %21)
  store i16 0, i16* %fnum, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.28, %if.end.17, %if.end
  %22 = load i16, i16* %fnum, align 2
  ret i16 %22
}

; Function Attrs: nounwind uwtable
define i8* @FileName(i16 zeroext %fnum) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %2, %union.rec** %x, align 8
  %3 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp ne %union.rec* %3, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  %7 = load %union.rec*, %union.rec** %x, align 8
  %cmp2 = icmp ne %union.rec* %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %x, align 8
  %os14 = bitcast %union.rec* %8 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 0
  %osucc7 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc7, align 8
  %os18 = bitcast %union.rec* %9 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %10, %union.rec** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %11 = load %union.rec*, %union.rec** %x, align 8
  %os111 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %12 = load i8, i8* %otype, align 1
  %conv = zext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.rec*, %union.rec** %x, align 8
  %os114 = bitcast %union.rec* %13 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 1
  %opred17 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred17, align 8
  store %union.rec* %14, %union.rec** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  %15 = load %union.rec*, %union.rec** %x, align 8
  %os119 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define i8* @FullFileName(i16 zeroext %fnum) #0 {
entry:
  %retval = alloca i8*, align 8
  %fnum.addr = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %2, %union.rec** %x, align 8
  %3 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp ne %union.rec* %3, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %6 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  %tobool = icmp ne i32 %bf.lshr, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load %union.rec*, %union.rec** %x, align 8
  %os12 = bitcast %union.rec* %7 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc, align 8
  %9 = load %union.rec*, %union.rec** %x, align 8
  %cmp4 = icmp ne %union.rec* %8, %9
  br i1 %cmp4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.then.1
  %10 = load %union.rec*, %union.rec** %x, align 8
  %os16 = bitcast %union.rec* %10 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 0
  %osucc9 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %osucc9, align 8
  %os110 = bitcast %union.rec* %11 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %12, %union.rec** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %13 = load %union.rec*, %union.rec** %x, align 8
  %os113 = bitcast %union.rec* %13 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %14 = load i8, i8* %otype, align 1
  %conv = zext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %union.rec*, %union.rec** %x, align 8
  %os116 = bitcast %union.rec* %15 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %16, %union.rec** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.then.1
  %17 = load i32, i32* @FullFileName.ffbp, align 4
  %add = add nsw i32 %17, 1
  %rem = srem i32 %add, 2
  store i32 %rem, i32* @FullFileName.ffbp, align 4
  %18 = load i32, i32* @FullFileName.ffbp, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @FullFileName.ffbuff, i32 0, i64 %idxprom21
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx22, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %x, align 8
  %os123 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call25 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay24) #4
  %20 = load i32, i32* @FullFileName.ffbp, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @FullFileName.ffbuff, i32 0, i64 %idxprom26
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx27, i32 0, i32 0
  %call29 = call i8* @strcat(i8* %arraydecay28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %21 = load i32, i32* @FullFileName.ffbp, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @FullFileName.ffbuff, i32 0, i64 %idxprom30
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx31, i32 0, i32 0
  store i8* %arraydecay32, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %22 = load %union.rec*, %union.rec** %x, align 8
  %os133 = bitcast %union.rec* %22 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %osucc36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc36, align 8
  %24 = load %union.rec*, %union.rec** %x, align 8
  %cmp37 = icmp ne %union.rec* %23, %24
  br i1 %cmp37, label %if.then.39, label %if.end.63

if.then.39:                                       ; preds = %if.else
  %25 = load %union.rec*, %union.rec** %x, align 8
  %os140 = bitcast %union.rec* %25 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 0
  %osucc43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc43, align 8
  %os144 = bitcast %union.rec* %26 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 1
  %opred47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred47, align 8
  store %union.rec* %27, %union.rec** %x, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %if.then.39
  %28 = load %union.rec*, %union.rec** %x, align 8
  %os149 = bitcast %union.rec* %28 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %os1151 = bitcast %union.FIRST_UNION* %ou150 to %struct.anon*
  %otype52 = getelementptr inbounds %struct.anon, %struct.anon* %os1151, i32 0, i32 0
  %29 = load i8, i8* %otype52, align 1
  %conv53 = zext i8 %29 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.48
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.56
  %30 = load %union.rec*, %union.rec** %x, align 8
  %os158 = bitcast %union.rec* %30 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %31, %union.rec** %x, align 8
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  br label %if.end.63

if.end.63:                                        ; preds = %for.end.62, %if.else
  %32 = load %union.rec*, %union.rec** %x, align 8
  %os164 = bitcast %union.rec* %32 to %struct.word_type*
  %ostring65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring65, i32 0, i32 0
  store i8* %arraydecay66, i8** %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.end.20
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: nounwind uwtable
define i8* @EchoFilePos(%struct.FILE_POS* %pos) #0 {
entry:
  %pos.addr = alloca %struct.FILE_POS*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load i32, i32* @bp, align 4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 2
  store i32 %rem, i32* @bp, align 4
  %1 = load i32, i32* @bp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2, i32 0, i32 2
  %3 = load i16, i16* %ofile_num, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  call void @append_fpos(%struct.FILE_POS* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @bp, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx3, i32 0, i32 0
  ret i8* %arraydecay4
}

; Function Attrs: nounwind uwtable
define internal void @append_fpos(%struct.FILE_POS* %pos) #0 {
entry:
  %pos.addr = alloca %struct.FILE_POS*, align 8
  %x = alloca %union.rec*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %0, i32 0, i32 2
  %1 = load i16, i16* %ofile_num, align 2
  %idxprom = zext i16 %1 to i64
  %2 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %3, %union.rec** %x, align 8
  %4 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp ne %union.rec* %4, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %ofile_num1 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %7 = load i16, i16* %ofile_num1, align 2
  %conv = zext i16 %7 to i32
  %cmp2 = icmp sgt i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.27

if.then.4:                                        ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %x, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %ou16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %ofpos7 = bitcast %union.FIRST_UNION* %ou16 to %struct.FILE_POS*
  call void @append_fpos(%struct.FILE_POS* %ofpos7)
  %9 = load i32, i32* @bp, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx9, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay) #5
  %add = add i64 %call10, 2
  %cmp11 = icmp uge i64 %add, 512
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.then.4
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = load i32, i32* @bp, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx15, i32 0, i32 0
  %call17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct.FILE_POS* %10, i8* %arraydecay16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.then.4
  %12 = load i32, i32* @bp, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom19
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx20, i32 0, i32 0
  %call22 = call i8* @strcat(i8* %arraydecay21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %13 = load i32, i32* @bp, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx24, i32 0, i32 0
  %call26 = call i8* @strcat(i8* %arraydecay25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0)) #4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.18, %if.end
  %14 = load i32, i32* @bp, align 4
  %idxprom28 = sext i32 %14 to i64
  %arrayidx29 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx29, i32 0, i32 0
  %call31 = call i64 @strlen(i8* %arraydecay30) #5
  %15 = load %union.rec*, %union.rec** %x, align 8
  %os132 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 4
  %arraydecay33 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call34 = call i64 @strlen(i8* %arraydecay33) #5
  %add35 = add i64 %call31, %call34
  %add36 = add i64 %add35, 13
  %cmp37 = icmp uge i64 %add36, 512
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %if.end.27
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %17 = load i32, i32* @bp, align 4
  %idxprom40 = sext i32 %17 to i64
  %arrayidx41 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom40
  %arraydecay42 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx41, i32 0, i32 0
  %call43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct.FILE_POS* %16, i8* %arraydecay42)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %if.end.27
  %18 = load i32, i32* @bp, align 4
  %idxprom45 = sext i32 %18 to i64
  %arrayidx46 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom45
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx46, i32 0, i32 0
  %call48 = call i8* @strcat(i8* %arraydecay47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %19 = load i32, i32* @bp, align 4
  %idxprom49 = sext i32 %19 to i64
  %arrayidx50 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom49
  %arraydecay51 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx50, i32 0, i32 0
  %call52 = call i8* @strcat(i8* %arraydecay51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %20 = load i32, i32* @bp, align 4
  %idxprom53 = sext i32 %20 to i64
  %arrayidx54 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx54, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %x, align 8
  %os156 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 4
  %arraydecay58 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring57, i32 0, i32 0
  %call59 = call i8* @strcat(i8* %arraydecay55, i8* %arraydecay58) #4
  %22 = load i32, i32* @bp, align 4
  %idxprom60 = sext i32 %22 to i64
  %arrayidx61 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom60
  %arraydecay62 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx61, i32 0, i32 0
  %call63 = call i8* @strcat(i8* %arraydecay62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %23, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %cmp64 = icmp ne i32 %bf.clear, 0
  br i1 %cmp64, label %if.then.66, label %if.end.89

if.then.66:                                       ; preds = %if.end.44
  %24 = load i32, i32* @bp, align 4
  %idxprom67 = sext i32 %24 to i64
  %arrayidx68 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom67
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx68, i32 0, i32 0
  %call70 = call i8* @strcat(i8* %arraydecay69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %25 = load i32, i32* @bp, align 4
  %idxprom71 = sext i32 %25 to i64
  %arrayidx72 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom71
  %arraydecay73 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx72, i32 0, i32 0
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num74 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %26, i32 0, i32 3
  %bf.load75 = load i32, i32* %oline_num74, align 4
  %bf.clear76 = and i32 %bf.load75, 1048575
  %call77 = call i8* @StringInt(i32 %bf.clear76)
  %call78 = call i8* @strcat(i8* %arraydecay73, i8* %call77) #4
  %27 = load i32, i32* @bp, align 4
  %idxprom79 = sext i32 %27 to i64
  %arrayidx80 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx80, i32 0, i32 0
  %call82 = call i8* @strcat(i8* %arraydecay81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #4
  %28 = load i32, i32* @bp, align 4
  %idxprom83 = sext i32 %28 to i64
  %arrayidx84 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom83
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx84, i32 0, i32 0
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %29, i32 0, i32 3
  %bf.load86 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load86, 20
  %call87 = call i8* @StringInt(i32 %bf.lshr)
  %call88 = call i8* @strcat(i8* %arraydecay85, i8* %call87) #4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.66, %if.end.44
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @EchoAltFilePos(%struct.FILE_POS* %pos) #0 {
entry:
  %pos.addr = alloca %struct.FILE_POS*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load i32, i32* @bp, align 4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 2
  store i32 %rem, i32* @bp, align 4
  %1 = load i32, i32* @bp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2, i32 0, i32 2
  %3 = load i16, i16* %ofile_num, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @bp, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx3, i32 0, i32 0
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num5 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %5, i32 0, i32 2
  %6 = load i16, i16* %ofile_num5, align 2
  %call6 = call i8* @FullFileName(i16 zeroext %6)
  %call7 = call i8* @strcat(i8* %arraydecay4, i8* %call6) #4
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %7, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %cmp8 = icmp ne i32 %bf.clear, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %8 = load i32, i32* @bp, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom11
  %arraydecay13 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx12, i32 0, i32 0
  %call14 = call i8* @strcat(i8* %arraydecay13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %9 = load i32, i32* @bp, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx16, i32 0, i32 0
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num18 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %10, i32 0, i32 3
  %bf.load19 = load i32, i32* %oline_num18, align 4
  %bf.clear20 = and i32 %bf.load19, 1048575
  %call21 = call i8* @StringInt(i32 %bf.clear20)
  %call22 = call i8* @strcat(i8* %arraydecay17, i8* %call21) #4
  %11 = load i32, i32* @bp, align 4
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx24, i32 0, i32 0
  %call26 = call i8* @strcat(i8* %arraydecay25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %12 = load i32, i32* @bp, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom27
  %arraydecay29 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx28, i32 0, i32 0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %13, i32 0, i32 3
  %bf.load30 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load30, 20
  %call31 = call i8* @StringInt(i32 %bf.lshr)
  %call32 = call i8* @strcat(i8* %arraydecay29, i8* %call31) #4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %entry
  %14 = load i32, i32* @bp, align 4
  %idxprom34 = sext i32 %14 to i64
  %arrayidx35 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom34
  %arraydecay36 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx35, i32 0, i32 0
  ret i8* %arraydecay36
}

declare i8* @StringInt(i32) #1

; Function Attrs: nounwind uwtable
define i8* @EchoFileSource(i16 zeroext %fnum) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  %nextx = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load i32, i32* @bp, align 4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 2
  store i32 %rem, i32* @bp, align 4
  %1 = load i32, i32* @bp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %2 = load i16, i16* %fnum.addr, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.143

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @bp, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx3, i32 0, i32 0
  %call5 = call i8* @strcat(i8* %arraydecay4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %4 = load i16, i16* %fnum.addr, align 2
  %idxprom6 = zext i16 %4 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom6
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx7, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %6, %union.rec** %x, align 8
  %7 = load %union.rec*, %union.rec** %x, align 8
  %cmp8 = icmp ne %union.rec* %7, null
  br i1 %cmp8, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %9 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %10 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %10, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %cmp12 = icmp eq i32 %bf.clear, 10
  br i1 %cmp12, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end
  %11 = load i32, i32* @bp, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx16, i32 0, i32 0
  %12 = load i8*, i8** @MsgCat, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %13 = load i8*, i8** @MsgCat, align 8
  %call18 = call i8* @catgets(i8* %13, i32 3, i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call18, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %cond.false ]
  %call19 = call i8* @strcat(i8* %arraydecay17, i8* %cond) #4
  %14 = load i32, i32* @bp, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx21, i32 0, i32 0
  %call23 = call i8* @strcat(i8* %arraydecay22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end, %if.end
  %15 = load i32, i32* @bp, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx26, i32 0, i32 0
  %16 = load i8*, i8** @MsgCat, align 8
  %tobool28 = icmp ne i8* %16, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %if.end.24
  %17 = load i8*, i8** @MsgCat, align 8
  %call30 = call i8* @catgets(i8* %17, i32 3, i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.end.24
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i8* [ %call30, %cond.true.29 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %cond.false.31 ]
  %call34 = call i8* @strcat(i8* %arraydecay27, i8* %cond33) #4
  %18 = load i32, i32* @bp, align 4
  %idxprom35 = sext i32 %18 to i64
  %arrayidx36 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx36, i32 0, i32 0
  %call38 = call i8* @strcat(i8* %arraydecay37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %19 = load i32, i32* @bp, align 4
  %idxprom39 = sext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom39
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx40, i32 0, i32 0
  %call42 = call i8* @strcat(i8* %arraydecay41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %20 = load i32, i32* @bp, align 4
  %idxprom43 = sext i32 %20 to i64
  %arrayidx44 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom43
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx44, i32 0, i32 0
  %21 = load i16, i16* %fnum.addr, align 2
  %call46 = call i8* @FullFileName(i16 zeroext %21)
  %call47 = call i8* @strcat(i8* %arraydecay45, i8* %call46) #4
  %22 = load i32, i32* @bp, align 4
  %idxprom48 = sext i32 %22 to i64
  %arrayidx49 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom48
  %arraydecay50 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx49, i32 0, i32 0
  %call51 = call i8* @strcat(i8* %arraydecay50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %23 = load %union.rec*, %union.rec** %x, align 8
  %os152 = bitcast %union.rec* %23 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %24 = load i16, i16* %ofile_num, align 2
  %conv53 = zext i16 %24 to i32
  %cmp54 = icmp sgt i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.142

if.then.56:                                       ; preds = %cond.end.32
  %25 = load i32, i32* @bp, align 4
  %idxprom57 = sext i32 %25 to i64
  %arrayidx58 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom57
  %arraydecay59 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx58, i32 0, i32 0
  %call60 = call i8* @strcat(i8* %arraydecay59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end.133, %if.then.56
  %26 = load %union.rec*, %union.rec** %x, align 8
  %os161 = bitcast %union.rec* %26 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %ofpos63 = bitcast %union.FIRST_UNION* %ou162 to %struct.FILE_POS*
  %ofile_num64 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos63, i32 0, i32 2
  %27 = load i16, i16* %ofile_num64, align 2
  %idxprom65 = zext i16 %27 to i64
  %28 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab66 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %28, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab66, i32 0, i64 %idxprom65
  %by_number68 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx67, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %by_number68, align 8
  store %union.rec* %29, %union.rec** %nextx, align 8
  %30 = load i32, i32* @bp, align 4
  %idxprom69 = sext i32 %30 to i64
  %arrayidx70 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom69
  %arraydecay71 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx70, i32 0, i32 0
  %31 = load i8*, i8** @MsgCat, align 8
  %tobool72 = icmp ne i8* %31, null
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %for.cond
  %32 = load i8*, i8** @MsgCat, align 8
  %call74 = call i8* @catgets(i8* %32, i32 3, i32 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #4
  br label %cond.end.76

cond.false.75:                                    ; preds = %for.cond
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.73
  %cond77 = phi i8* [ %call74, %cond.true.73 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %cond.false.75 ]
  %call78 = call i8* @strcat(i8* %arraydecay71, i8* %cond77) #4
  %33 = load i32, i32* @bp, align 4
  %idxprom79 = sext i32 %33 to i64
  %arrayidx80 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom79
  %arraydecay81 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx80, i32 0, i32 0
  %call82 = call i8* @strcat(i8* %arraydecay81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %34 = load i32, i32* @bp, align 4
  %idxprom83 = sext i32 %34 to i64
  %arrayidx84 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom83
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx84, i32 0, i32 0
  %call86 = call i8* @strcat(i8* %arraydecay85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %35 = load i32, i32* @bp, align 4
  %idxprom87 = sext i32 %35 to i64
  %arrayidx88 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom87
  %arraydecay89 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx88, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %nextx, align 8
  %os190 = bitcast %union.rec* %36 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 4
  %arraydecay91 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call92 = call i8* @strcat(i8* %arraydecay89, i8* %arraydecay91) #4
  %37 = load i32, i32* @bp, align 4
  %idxprom93 = sext i32 %37 to i64
  %arrayidx94 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom93
  %arraydecay95 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx94, i32 0, i32 0
  %call96 = call i8* @strcat(i8* %arraydecay95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %38 = load i32, i32* @bp, align 4
  %idxprom97 = sext i32 %38 to i64
  %arrayidx98 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom97
  %arraydecay99 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx98, i32 0, i32 0
  %call100 = call i8* @strcat(i8* %arraydecay99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %39 = load i32, i32* @bp, align 4
  %idxprom101 = sext i32 %39 to i64
  %arrayidx102 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom101
  %arraydecay103 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx102, i32 0, i32 0
  %40 = load i8*, i8** @MsgCat, align 8
  %tobool104 = icmp ne i8* %40, null
  br i1 %tobool104, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %cond.end.76
  %41 = load i8*, i8** @MsgCat, align 8
  %call106 = call i8* @catgets(i8* %41, i32 3, i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %cond.end.108

cond.false.107:                                   ; preds = %cond.end.76
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.105
  %cond109 = phi i8* [ %call106, %cond.true.105 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %cond.false.107 ]
  %call110 = call i8* @strcat(i8* %arraydecay103, i8* %cond109) #4
  %42 = load i32, i32* @bp, align 4
  %idxprom111 = sext i32 %42 to i64
  %arrayidx112 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom111
  %arraydecay113 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx112, i32 0, i32 0
  %call114 = call i8* @strcat(i8* %arraydecay113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %43 = load i32, i32* @bp, align 4
  %idxprom115 = sext i32 %43 to i64
  %arrayidx116 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom115
  %arraydecay117 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx116, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %x, align 8
  %os1118 = bitcast %union.rec* %44 to %struct.word_type*
  %ou1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 1
  %ofpos120 = bitcast %union.FIRST_UNION* %ou1119 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos120, i32 0, i32 3
  %bf.load121 = load i32, i32* %oline_num, align 4
  %bf.clear122 = and i32 %bf.load121, 1048575
  %call123 = call i8* @StringInt(i32 %bf.clear122)
  %call124 = call i8* @strcat(i8* %arraydecay117, i8* %call123) #4
  %45 = load %union.rec*, %union.rec** %nextx, align 8
  %os1125 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 1
  %ofpos127 = bitcast %union.FIRST_UNION* %ou1126 to %struct.FILE_POS*
  %ofile_num128 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos127, i32 0, i32 2
  %46 = load i16, i16* %ofile_num128, align 2
  %conv129 = zext i16 %46 to i32
  %cmp130 = icmp eq i32 %conv129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %cond.end.108
  br label %for.end

if.end.133:                                       ; preds = %cond.end.108
  %47 = load i32, i32* @bp, align 4
  %idxprom134 = sext i32 %47 to i64
  %arrayidx135 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom134
  %arraydecay136 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx135, i32 0, i32 0
  %call137 = call i8* @strcat(i8* %arraydecay136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)) #4
  %48 = load %union.rec*, %union.rec** %nextx, align 8
  store %union.rec* %48, %union.rec** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.132
  %49 = load i32, i32* @bp, align 4
  %idxprom138 = sext i32 %49 to i64
  %arrayidx139 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom138
  %arraydecay140 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx139, i32 0, i32 0
  %call141 = call i8* @strcat(i8* %arraydecay140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %if.end.142

if.end.142:                                       ; preds = %for.end, %cond.end.32
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %entry
  %50 = load i32, i32* @bp, align 4
  %idxprom144 = sext i32 %50 to i64
  %arrayidx145 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom144
  %arraydecay146 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx145, i32 0, i32 0
  ret i8* %arraydecay146
}

; Function Attrs: nounwind
declare i8* @catgets(i8*, i32, i32, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @EchoFileLine(%struct.FILE_POS* %pos) #0 {
entry:
  %pos.addr = alloca %struct.FILE_POS*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load i32, i32* @bp, align 4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 2
  store i32 %rem, i32* @bp, align 4
  %1 = load i32, i32* @bp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2, i32 0, i32 2
  %3 = load i16, i16* %ofile_num, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %4, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %cmp2 = icmp ne i32 %bf.clear, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @bp, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom4
  %arraydecay6 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx5, i32 0, i32 0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num7 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %6, i32 0, i32 3
  %bf.load8 = load i32, i32* %oline_num7, align 4
  %bf.clear9 = and i32 %bf.load8, 1048575
  %call10 = call i8* @StringInt(i32 %bf.clear9)
  %call11 = call i8* @strcat(i8* %arraydecay6, i8* %call10) #4
  %7 = load i32, i32* @bp, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom12
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx13, i32 0, i32 0
  %call15 = call i8* @strcat(i8* %arraydecay14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #4
  %8 = load i32, i32* @bp, align 4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom16
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx17, i32 0, i32 0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %9, i32 0, i32 3
  %bf.load19 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load19, 20
  %call20 = call i8* @StringInt(i32 %bf.lshr)
  %call21 = call i8* @strcat(i8* %arraydecay18, i8* %call20) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* @bp, align 4
  %idxprom22 = sext i32 %10 to i64
  %arrayidx23 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %idxprom22
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx23, i32 0, i32 0
  ret i8* %arraydecay24
}

; Function Attrs: nounwind uwtable
define %struct.FILE_POS* @PosOfFile(i16 zeroext %fnum) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %2, %union.rec** %x, align 8
  %3 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp ne %union.rec* %3, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  ret %struct.FILE_POS* %ofpos
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @OpenFile(i16 zeroext %fnum, i32 %check_ld, i32 %check_lt) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %check_ld.addr = alloca i32, align 4
  %check_lt.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %fname = alloca %union.rec*, align 8
  %full_name = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %used_source_suffix = alloca i32, align 4
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32 %check_ld, i32* %check_ld.addr, align 4
  store i32 %check_lt, i32* %check_lt.addr, align 4
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  store %union.rec* %2, %union.rec** %fname, align 8
  %3 = load %union.rec*, %union.rec** %fname, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  %5 = load %union.rec*, %union.rec** %fname, align 8
  %cmp = icmp ne %union.rec* %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %union.rec*, %union.rec** %fname, align 8
  %os12 = bitcast %union.rec* %6 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 0
  %osucc5 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %osucc5, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %8, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %union.rec*, %union.rec** %y, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %10 = load i8, i8* %otype, align 1
  %conv = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os112 = bitcast %union.rec* %11 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred15, align 8
  store %union.rec* %12, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %fname, align 8
  %os117 = bitcast %union.rec* %14 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %15 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %15, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %idxprom18 = zext i32 %bf.clear to i64
  %arrayidx19 = getelementptr inbounds [11 x i8*], [11 x i8*]* @file_mode, i32 0, i64 %idxprom18
  %16 = load i8*, i8** %arrayidx19, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* %16)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  br label %if.end.166

if.else:                                          ; preds = %entry
  %17 = load %union.rec*, %union.rec** %fname, align 8
  %os120 = bitcast %union.rec* %17 to %struct.word_type*
  %ostring21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 4
  %arraydecay22 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring21, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %fname, align 8
  %os123 = bitcast %union.rec* %18 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %19 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %idxprom25
  %20 = load %union.rec*, %union.rec** %arrayidx26, align 8
  %21 = load i32, i32* %check_ld.addr, align 4
  %22 = load i32, i32* %check_lt.addr, align 4
  %23 = load %union.rec*, %union.rec** %fname, align 8
  %os127 = bitcast %union.rec* %23 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou128 to %struct.FILE_POS*
  %24 = load %union.rec*, %union.rec** %fname, align 8
  %os129 = bitcast %union.rec* %24 to %struct.word_type*
  %ou230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 2
  %os2231 = bitcast %union.SECOND_UNION* %ou230 to %struct.anon.1*
  %25 = bitcast %struct.anon.1* %os2231 to i32*
  %bf.load32 = load i32, i32* %25, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 12
  %bf.clear34 = and i32 %bf.lshr33, 1023
  %idxprom35 = zext i32 %bf.clear34 to i64
  %arrayidx36 = getelementptr inbounds [11 x i8*], [11 x i8*]* @file_mode, i32 0, i64 %idxprom35
  %26 = load i8*, i8** %arrayidx36, align 8
  %call37 = call %struct._IO_FILE* @SearchPath(i8* %arraydecay22, %union.rec* %20, i32 %21, i32 %22, %union.rec** %full_name, %struct.FILE_POS* %ofpos, i8* %26, i32* %used_source_suffix)
  store %struct._IO_FILE* %call37, %struct._IO_FILE** %fp, align 8
  %27 = load %union.rec*, %union.rec** %full_name, align 8
  %cmp38 = icmp ne %union.rec* %27, null
  br i1 %cmp38, label %if.then.40, label %if.end.160

if.then.40:                                       ; preds = %if.else
  %28 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv41 = zext i8 %28 to i32
  store i32 %conv41, i32* @zz_size, align 4
  %conv42 = sext i32 %conv41 to i64
  %cmp43 = icmp uge i64 %conv42, 265
  br i1 %cmp43, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.then.40
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %29)
  br label %if.end.63

if.else.47:                                       ; preds = %if.then.40
  %30 = load i32, i32* @zz_size, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom48
  %31 = load %union.rec*, %union.rec** %arrayidx49, align 8
  %cmp50 = icmp eq %union.rec* %31, null
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.else.47
  %32 = load i32, i32* @zz_size, align 4
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call53 = call %union.rec* @GetMemory(i32 %32, %struct.FILE_POS* %33)
  store %union.rec* %call53, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.54:                                       ; preds = %if.else.47
  %34 = load i32, i32* @zz_size, align 4
  %idxprom55 = sext i32 %34 to i64
  %arrayidx56 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom55
  %35 = load %union.rec*, %union.rec** %arrayidx56, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os157 = bitcast %union.rec* %36 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 0
  %opred60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred60, align 8
  %38 = load i32, i32* @zz_size, align 4
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom61
  store %union.rec* %37, %union.rec** %arrayidx62, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.54, %if.then.52
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %if.then.45
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %39 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %os1166 = bitcast %union.FIRST_UNION* %ou165 to %struct.anon*
  %otype67 = getelementptr inbounds %struct.anon, %struct.anon* %os1166, i32 0, i32 0
  store i8 0, i8* %otype67, align 1
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os168 = bitcast %union.rec* %41 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %osucc71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc71, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %42 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 1
  %opred75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred75, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os176 = bitcast %union.rec* %43 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %osucc79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc79, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os180 = bitcast %union.rec* %44 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred83, align 8
  store %union.rec* %40, %union.rec** @xx_link, align 8
  %45 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %45, %union.rec** @zz_res, align 8
  %46 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp84 = icmp eq %union.rec* %47, null
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.63
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.118

cond.false:                                       ; preds = %if.end.63
  %49 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp86 = icmp eq %union.rec* %49, null
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.false
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.89:                                    ; preds = %cond.false
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %51 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 0
  %opred93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred93, align 8
  store %union.rec* %52, %union.rec** @zz_tmp, align 8
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %os194 = bitcast %union.rec* %53 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 0
  %opred97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %opred97, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %55 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 0
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  store %union.rec* %54, %union.rec** %opred101, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1102 = bitcast %union.rec* %57 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 0
  %opred105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred105, align 8
  %os1106 = bitcast %union.rec* %58 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %osucc109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc109, align 8
  %59 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1110 = bitcast %union.rec* %60 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  store %union.rec* %59, %union.rec** %opred113, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %62 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1114 = bitcast %union.rec* %62 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 0
  %osucc117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 1
  store %union.rec* %61, %union.rec** %osucc117, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.89, %cond.true.88
  %cond = phi %union.rec* [ %50, %cond.true.88 ], [ %61, %cond.false.89 ]
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.end, %cond.true
  %cond119 = phi %union.rec* [ %48, %cond.true ], [ %cond, %cond.end ]
  %63 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %63, %union.rec** @zz_res, align 8
  %64 = load %union.rec*, %union.rec** %full_name, align 8
  store %union.rec* %64, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp120 = icmp eq %union.rec* %65, null
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.118
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.158

cond.false.123:                                   ; preds = %cond.end.118
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp124 = icmp eq %union.rec* %67, null
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.false.123
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.156

cond.false.127:                                   ; preds = %cond.false.123
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %69 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %opred131, align 8
  store %union.rec* %70, %union.rec** @zz_tmp, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1132 = bitcast %union.rec* %71 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 1
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %72 = load %union.rec*, %union.rec** %opred135, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %73 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 1
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred139, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1140 = bitcast %union.rec* %75 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 1
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred143, align 8
  %os1144 = bitcast %union.rec* %76 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 1
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  store %union.rec* %74, %union.rec** %osucc147, align 8
  %77 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1148 = bitcast %union.rec* %78 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 1
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  store %union.rec* %77, %union.rec** %opred151, align 8
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  %80 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1152 = bitcast %union.rec* %80 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 1
  %osucc155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 1
  store %union.rec* %79, %union.rec** %osucc155, align 8
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.127, %cond.true.126
  %cond157 = phi %union.rec* [ %68, %cond.true.126 ], [ %79, %cond.false.127 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.122
  %cond159 = phi %union.rec* [ %66, %cond.true.122 ], [ %cond157, %cond.end.156 ]
  br label %if.end.160

if.end.160:                                       ; preds = %cond.end.158, %if.else
  %81 = load i32, i32* %used_source_suffix, align 4
  %82 = load %union.rec*, %union.rec** %fname, align 8
  %os1161 = bitcast %union.rec* %82 to %struct.word_type*
  %ou2162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 2
  %os22163 = bitcast %union.SECOND_UNION* %ou2162 to %struct.anon.1*
  %83 = bitcast %struct.anon.1* %os22163 to i32*
  %bf.load164 = load i32, i32* %83, align 4
  %bf.value = and i32 %81, 1
  %bf.shl = shl i32 %bf.value, 31
  %bf.clear165 = and i32 %bf.load164, 2147483647
  %bf.set = or i32 %bf.clear165, %bf.shl
  store i32 %bf.set, i32* %83, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.160, %for.end
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %84
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @SearchPath(i8* %str, %union.rec* %fpath, i32 %check_ld, i32 %check_lt, %union.rec** %full_name, %struct.FILE_POS* %xfpos, i8* %read_mode, i32* %used_source_suffix) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %str.addr = alloca i8*, align 8
  %fpath.addr = alloca %union.rec*, align 8
  %check_ld.addr = alloca i32, align 4
  %check_lt.addr = alloca i32, align 4
  %full_name.addr = alloca %union.rec**, align 8
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %read_mode.addr = alloca i8*, align 8
  %used_source_suffix.addr = alloca i32*, align 8
  %buff = alloca [512 x i8], align 16
  %buff2 = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %cpath = alloca %union.rec*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fp2 = alloca %struct._IO_FILE*, align 8
  %indexstat = alloca %struct.stat, align 8
  %datastat = alloca %struct.stat, align 8
  store i8* %str, i8** %str.addr, align 8
  store %union.rec* %fpath, %union.rec** %fpath.addr, align 8
  store i32 %check_ld, i32* %check_ld.addr, align 4
  store i32 %check_lt, i32* %check_lt.addr, align 4
  store %union.rec** %full_name, %union.rec*** %full_name.addr, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  store i8* %read_mode, i8** %read_mode.addr, align 8
  store i32* %used_source_suffix, i32** %used_source_suffix.addr, align 8
  %0 = load i32*, i32** %used_source_suffix.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  store %union.rec* null, %union.rec** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @StringBeginsWith(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %union.rec*, %union.rec** @empty_path, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %union.rec*, %union.rec** %fpath.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %5, %cond.true ], [ %6, %cond.false ]
  store %union.rec* %cond, %union.rec** %cpath, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %7 = load %union.rec*, %union.rec** %cpath, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %8, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.125, %cond.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load %union.rec*, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** %cpath, align 8
  %cmp3 = icmp ne %union.rec* %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %for.body, label %for.end.130

for.body:                                         ; preds = %land.end
  %13 = load %union.rec*, %union.rec** %link, align 8
  %os14 = bitcast %union.rec* %13 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os18 = bitcast %union.rec* %15 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %16 = load i8, i8* %otype, align 1
  %conv = zext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.7
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os112 = bitcast %union.rec* %17 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred15, align 8
  store %union.rec* %18, %union.rec** %y, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os116 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call17 = call i64 @strlen(i8* %arraydecay) #5
  %cmp18 = icmp eq i64 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %20 = load i8*, i8** %str.addr, align 8
  %call22 = call i8* @strcpy(i8* %arraydecay21, i8* %20) #4
  br label %if.end.48

if.else:                                          ; preds = %for.end
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os123 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring24, i32 0, i32 0
  %call26 = call i64 @strlen(i8* %arraydecay25) #5
  %add = add i64 %call26, 1
  %22 = load i8*, i8** %str.addr, align 8
  %call27 = call i64 @strlen(i8* %22) #5
  %add28 = add i64 %add, %call27
  %cmp29 = icmp uge i64 %add28, 512
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %if.else
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os132 = bitcast %union.rec* %23 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou133 to %struct.FILE_POS*
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os134 = bitcast %union.rec* %24 to %struct.word_type*
  %ostring35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 4
  %arraydecay36 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring35, i32 0, i32 0
  %25 = load i8*, i8** %str.addr, align 8
  %call37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* %25)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %if.else
  %arraydecay39 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os140 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 4
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring41, i32 0, i32 0
  %call43 = call i8* @strcpy(i8* %arraydecay39, i8* %arraydecay42) #4
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call45 = call i8* @strcat(i8* %arraydecay44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0)) #4
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %27 = load i8*, i8** %str.addr, align 8
  %call47 = call i8* @strcat(i8* %arraydecay46, i8* %27) #4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.38, %if.then.20
  %arraydecay49 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %28 = load i8*, i8** %read_mode.addr, align 8
  %call50 = call %struct._IO_FILE* @fopen(i8* %arraydecay49, i8* %28)
  store %struct._IO_FILE* %call50, %struct._IO_FILE** %fp, align 8
  %29 = load i32, i32* %check_ld.addr, align 4
  %tobool51 = icmp ne i32 %29, 0
  br i1 %tobool51, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.48
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp52 = icmp eq %struct._IO_FILE* %30, null
  br i1 %cmp52, label %if.then.54, label %if.end.69

if.then.54:                                       ; preds = %land.lhs.true
  %arraydecay55 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call57 = call i8* @strcpy(i8* %arraydecay55, i8* %arraydecay56) #4
  %arraydecay58 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call59 = call i64 @strlen(i8* %arraydecay58) #5
  %sub = sub i64 %call59, 3
  %arrayidx60 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i64 %sub
  %call61 = call i8* @strcpy(i8* %arrayidx60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  %arraydecay62 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call63 = call %struct._IO_FILE* @fopen(i8* %arraydecay62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %call63, %struct._IO_FILE** %fp2, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %cmp64 = icmp ne %struct._IO_FILE* %31, null
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.54
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call67 = call i32 @fclose(%struct._IO_FILE* %32)
  %33 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  store %union.rec* null, %union.rec** %33, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.68:                                        ; preds = %if.then.54
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true, %if.end.48
  %34 = load i32, i32* %check_ld.addr, align 4
  %tobool70 = icmp ne i32 %34, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.103

land.lhs.true.71:                                 ; preds = %if.end.69
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp72 = icmp ne %struct._IO_FILE* %35, null
  br i1 %cmp72, label %if.then.74, label %if.end.103

if.then.74:                                       ; preds = %land.lhs.true.71
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %arraydecay76 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call77 = call i8* @strcpy(i8* %arraydecay75, i8* %arraydecay76) #4
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call79 = call i64 @strlen(i8* %arraydecay78) #5
  %sub80 = sub i64 %call79, 3
  %arrayidx81 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i64 %sub80
  %call82 = call i8* @strcpy(i8* %arrayidx81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  %arraydecay83 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call84 = call i32 @stat(i8* %arraydecay83, %struct.stat* %indexstat) #4
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.102

land.lhs.true.87:                                 ; preds = %if.then.74
  %arraydecay88 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call89 = call i32 @stat(i8* %arraydecay88, %struct.stat* %datastat) #4
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.102

if.then.92:                                       ; preds = %land.lhs.true.87
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %datastat, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %36 = load i64, i64* %tv_sec, align 8
  %st_mtim93 = getelementptr inbounds %struct.stat, %struct.stat* %indexstat, i32 0, i32 12
  %tv_sec94 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim93, i32 0, i32 0
  %37 = load i64, i64* %tv_sec94, align 8
  %cmp95 = icmp sgt i64 %36, %37
  br i1 %cmp95, label %if.then.97, label %if.end.101

if.then.97:                                       ; preds = %if.then.92
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call98 = call i32 @fclose(%struct._IO_FILE* %38)
  %arraydecay99 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call100 = call i32 @remove(i8* %arraydecay99) #4
  %39 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  store %union.rec* null, %union.rec** %39, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.101:                                       ; preds = %if.then.92
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.87, %if.then.74
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.71, %if.end.69
  %40 = load i32, i32* %check_lt.addr, align 4
  %tobool104 = icmp ne i32 %40, 0
  br i1 %tobool104, label %if.then.105, label %if.end.124

if.then.105:                                      ; preds = %if.end.103
  %arraydecay106 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %arraydecay107 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call108 = call i8* @strcpy(i8* %arraydecay106, i8* %arraydecay107) #4
  %arraydecay109 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call110 = call i8* @strcat(i8* %arraydecay109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %arraydecay111 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call112 = call %struct._IO_FILE* @fopen(i8* %arraydecay111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %call112, %struct._IO_FILE** %fp2, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %cmp113 = icmp ne %struct._IO_FILE* %41, null
  br i1 %cmp113, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %if.then.105
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp116 = icmp ne %struct._IO_FILE* %42, null
  br i1 %cmp116, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %if.then.115
  %43 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %arraydecay119 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %call121 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i32 1, %struct.FILE_POS* %43, i8* %arraydecay119, i8* %arraydecay120)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %if.then.115
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  store %struct._IO_FILE* %44, %struct._IO_FILE** %fp, align 8
  %45 = load i32*, i32** %used_source_suffix.addr, align 8
  store i32 1, i32* %45, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.105
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.103
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %46 = load %union.rec*, %union.rec** %link, align 8
  %os1126 = bitcast %union.rec* %46 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 0
  %osucc129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 1
  %47 = load %union.rec*, %union.rec** %osucc129, align 8
  store %union.rec* %47, %union.rec** %link, align 8
  br label %for.cond

for.end.130:                                      ; preds = %land.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp131 = icmp eq %struct._IO_FILE* %48, null
  br i1 %cmp131, label %cond.true.139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.130
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os1133 = bitcast %union.rec* %49 to %struct.word_type*
  %ostring134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 4
  %arraydecay135 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring134, i32 0, i32 0
  %call136 = call i64 @strlen(i8* %arraydecay135) #5
  %cmp137 = icmp eq i64 %call136, 0
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %lor.lhs.false, %for.end.130
  br label %cond.end.143

cond.false.140:                                   ; preds = %lor.lhs.false
  %arraydecay141 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call142 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay141, %struct.FILE_POS* %50)
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.140, %cond.true.139
  %cond144 = phi %union.rec* [ null, %cond.true.139 ], [ %call142, %cond.false.140 ]
  %51 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  store %union.rec* %cond144, %union.rec** %51, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %52, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %cond.end.143, %if.then.97, %if.then.66, %if.then
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %53
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @OpenIncGraphicFile(i8* %str, i8 zeroext %typ, %union.rec** %full_name, %struct.FILE_POS* %xfpos, i32* %compressed) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %typ.addr = alloca i8, align 1
  %full_name.addr = alloca %union.rec**, align 8
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %compressed.addr = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %used_source_suffix = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  store i8* %str, i8** %str.addr, align 8
  store i8 %typ, i8* %typ.addr, align 1
  store %union.rec** %full_name, %union.rec*** %full_name.addr, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  store i32* %compressed, i32** %compressed.addr, align 8
  %0 = load i8, i8* %typ.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 94
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %typ.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 95
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %3 = load i8, i8* %typ.addr, align 1
  %conv5 = zext i8 %3 to i32
  %cmp6 = icmp eq i32 %conv5, 94
  %cond = select i1 %cmp6, i32 1, i32 2
  store i32 %cond, i32* %p, align 4
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %p, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  %7 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call8 = call %struct._IO_FILE* @SearchPath(i8* %4, %union.rec* %6, i32 0, i32 0, %union.rec** %7, %struct.FILE_POS* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32* %used_source_suffix)
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fp, align 8
  %9 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  %10 = load %union.rec*, %union.rec** %9, align 8
  %cmp9 = icmp eq %union.rec* %10, null
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call12 = call %union.rec* @MakeWord(i32 11, i8* %11, %struct.FILE_POS* %12)
  %13 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  store %union.rec* %call12, %union.rec** %13, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp14 = icmp eq %struct._IO_FILE* %14, null
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %15 = load i32*, i32** %compressed.addr, align 8
  store i32 0, i32* %15, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %if.end.44

if.else:                                          ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %16, 6
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  %18 = load %union.rec*, %union.rec** %17, align 8
  %os1 = bitcast %union.rec* %18 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [6 x i8*], [6 x i8*]* @compress_suffixes, i32 0, i64 %idxprom19
  %20 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @StringEndsWith(i8* %arraydecay, i8* %20)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  br label %for.end

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %for.cond
  %22 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %22, 6
  br i1 %cmp24, label %if.then.26, label %if.else.42

if.then.26:                                       ; preds = %for.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* %23)
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %24 = load %union.rec**, %union.rec*** %full_name.addr, align 8
  %25 = load %union.rec*, %union.rec** %24, align 8
  %os129 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 4
  %arraydecay31 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring30, i32 0, i32 0
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #4
  %26 = load i32, i32* @SafeExecution, align 4
  %tobool33 = icmp ne i32 %26, 0
  br i1 %tobool33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.then.26
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %arraydecay35 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0), i32 2, %struct.FILE_POS* %27, i8* %arraydecay35)
  %28 = load i32*, i32** %compressed.addr, align 8
  store i32 0, i32* %28, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %if.end.41

if.else.37:                                       ; preds = %if.then.26
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call39 = call i32 @system(i8* %arraydecay38)
  %call40 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %call40, %struct._IO_FILE** %fp, align 8
  %29 = load i32*, i32** %compressed.addr, align 8
  store i32 1, i32* %29, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.34
  br label %if.end.43

if.else.42:                                       ; preds = %for.end
  %30 = load i32*, i32** %compressed.addr, align 8
  store i32 0, i32* %30, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.41
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.16
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %31
}

declare i32 @StringEndsWith(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @system(i8*) #1

; Function Attrs: nounwind uwtable
define void @FileSetUpdated(i16 zeroext %fnum, i32 %newlines) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %newlines.addr = alloca i32, align 4
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32 %newlines, i32* %newlines.addr, align 4
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  store i32 1, i32* %arrayidx1, align 4
  %3 = load i32, i32* %newlines.addr, align 4
  %4 = load i16, i16* %fnum.addr, align 2
  %idxprom2 = zext i16 %4 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab3 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab3, i32 0, i64 %idxprom2
  %by_number5 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx4, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %by_number5, align 8
  %os16 = bitcast %union.rec* %6 to %struct.word_type*
  %ou37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 3
  %os318 = bitcast %union.THIRD_UNION* %ou37 to %struct.anon.6*
  %ofwd9 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os318, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd9, i32 0, i64 1
  store i32 %3, i32* %arrayidx10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FileGetLineCount(i16 zeroext %fnum) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %res = alloca i32, align 4
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  store i32 %3, i32* %res, align 4
  %4 = load i32, i32* %res, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @FileTestUpdated(i16 zeroext %fnum) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load i16, i16* %fnum.addr, align 2
  %idxprom = zext i16 %0 to i64
  %1 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %by_number, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ftab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
entry:
  %S.addr = alloca %struct.anon.14*, align 8
  %newsize.addr = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %call = call %struct.anon.14* @ftab_new(i32 %0)
  store %struct.anon.14* %call, %struct.anon.14** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %2, i32 0, i32 1
  %3 = load i32, i32* %filetab_count, align 4
  %cmp = icmp sle i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %by_number, align 8
  call void @ftab_insert(%union.rec* %6, %struct.anon.14** %NewS)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.13, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %filetab_size, align 4
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end.15

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %12, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab5, i32 0, i64 %idxprom4
  %by_name_hash = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx6, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %by_name_hash, align 8
  %cmp7 = icmp ne %union.rec* %13, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %filetab9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %15, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %filetab9, i32 0, i64 %idxprom8
  %by_name_hash11 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %arrayidx10, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %by_name_hash11, align 8
  %call12 = call i32 @DisposeObject(%union.rec* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.1

for.end.15:                                       ; preds = %for.cond.1
  %18 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %19 = bitcast %struct.anon.14* %18 to i8*
  call void @free(i8* %19) #4
  %20 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %20
}

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @StringBeginsWith(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
