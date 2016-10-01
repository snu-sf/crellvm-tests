; ModuleID = './MultiSource.Benchmarks.MiBench/83.consumer-typeset.z47.bc'
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
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@stat_reads = internal global i32 0, align 4
@stat_read_hits = internal global i32 0, align 4
@stat_writes = internal global i32 0, align 4
@stat_write_hits = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@env_cache = internal global %union.rec* null, align 8
@cache_count = internal global i32 0, align 4
@tab = internal global [211 x %union.rec*] zeroinitializer, align 16
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @EnvInit() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @stat_reads, align 4
  store i32 0, i32* @stat_read_hits, align 4
  store i32 0, i32* @stat_writes, align 4
  store i32 0, i32* @stat_write_hits, align 4
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
  store %union.rec* %12, %union.rec** @env_cache, align 8
  store i32 0, i32* @cache_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %17 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %17, 211
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom32
  store %union.rec* null, %union.rec** %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define i32 @EnvWriteRetrieve(%union.rec* %env, i16 zeroext %fnum, i32* %offset, i32* %lnum) #0 {
entry:
  %retval = alloca i32, align 4
  %env.addr = alloca %union.rec*, align 8
  %fnum.addr = alloca i16, align 2
  %offset.addr = alloca i32*, align 8
  %lnum.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32* %offset, i32** %offset.addr, align 8
  store i32* %lnum, i32** %lnum.addr, align 8
  %0 = load i32, i32* @stat_writes, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @stat_writes, align 4
  %1 = load %union.rec*, %union.rec** %env.addr, align 8
  %2 = ptrtoint %union.rec* %1 to i32
  %3 = load i16, i16* %fnum.addr, align 2
  %conv = zext i16 %3 to i32
  %add = add i32 %2, %conv
  %rem = urem i32 %add, 211
  store i32 %rem, i32* %pos, align 4
  %4 = load i32, i32* %pos, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom
  %5 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp = icmp ne %union.rec* %5, null
  br i1 %cmp, label %if.then, label %if.end.148

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %pos, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom2
  %7 = load %union.rec*, %union.rec** %arrayidx3, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %8, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.142, %if.then
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load i32, i32* %pos, align 4
  %idxprom5 = zext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom5
  %11 = load %union.rec*, %union.rec** %arrayidx6, align 8
  %cmp7 = icmp ne %union.rec* %9, %11
  br i1 %cmp7, label %for.body, label %for.end.147

for.body:                                         ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %link, align 8
  %os19 = bitcast %union.rec* %12 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os113 = bitcast %union.rec* %14 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %15 = load i8, i8* %otype, align 1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.12
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %16 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %17, %union.rec** %y, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %18 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %osucc25, align 8
  %os126 = bitcast %union.rec* %19 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred29, align 8
  store %union.rec* %20, %union.rec** %z, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.39, %for.end
  %21 = load %union.rec*, %union.rec** %z, align 8
  %os131 = bitcast %union.rec* %21 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %22 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %22 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.30
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.38
  %23 = load %union.rec*, %union.rec** %z, align 8
  %os140 = bitcast %union.rec* %23 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %opred43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred43, align 8
  store %union.rec* %24, %union.rec** %z, align 8
  br label %for.cond.30

for.end.44:                                       ; preds = %for.cond.30
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os145 = bitcast %union.rec* %25 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %26 = load i16, i16* %ofile_num, align 2
  %conv47 = zext i16 %26 to i32
  %27 = load i16, i16* %fnum.addr, align 2
  %conv48 = zext i16 %27 to i32
  %cmp49 = icmp eq i32 %conv47, %conv48
  br i1 %cmp49, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end.44
  %28 = load %union.rec*, %union.rec** %z, align 8
  %29 = load %union.rec*, %union.rec** %env.addr, align 8
  %cmp51 = icmp eq %union.rec* %28, %29
  br i1 %cmp51, label %land.lhs.true.53, label %if.end

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os154 = bitcast %union.rec* %30 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %osized, align 2
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os156 = bitcast %union.rec* %31 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 1
  %opred59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred59, align 8
  store %union.rec* %32, %union.rec** @xx_link, align 8
  %33 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os160 = bitcast %union.rec* %34 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %osucc63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 1
  %35 = load %union.rec*, %union.rec** %osucc63, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp64 = icmp eq %union.rec* %35, %36
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.55
  br label %cond.end

cond.false:                                       ; preds = %if.then.55
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os166 = bitcast %union.rec* %37 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %osucc69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 1
  %38 = load %union.rec*, %union.rec** %osucc69, align 8
  store %union.rec* %38, %union.rec** @zz_res, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %39 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred73, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  %os174 = bitcast %union.rec* %41 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred77, align 8
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %43 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %opred81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred81, align 8
  %os182 = bitcast %union.rec* %44 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %osucc85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 1
  store %union.rec* %42, %union.rec** %osucc85, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os186 = bitcast %union.rec* %46 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 0
  %osucc89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc89, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %47 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 0
  %opred93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred93, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %48, %cond.false ]
  %49 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %49, %union.rec** @zz_res, align 8
  %50 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %50, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp94 = icmp eq %union.rec* %51, null
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.end
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.132

cond.false.97:                                    ; preds = %cond.end
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp98 = icmp eq %union.rec* %53, null
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.false.97
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.130

cond.false.101:                                   ; preds = %cond.false.97
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %55 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 0
  %opred105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred105, align 8
  store %union.rec* %56, %union.rec** @zz_tmp, align 8
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1106 = bitcast %union.rec* %57 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %opred109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred109, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %59 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  store %union.rec* %58, %union.rec** %opred113, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1114 = bitcast %union.rec* %61 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 0
  %opred117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred117, align 8
  %os1118 = bitcast %union.rec* %62 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %osucc121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 1
  store %union.rec* %60, %union.rec** %osucc121, align 8
  %63 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1122 = bitcast %union.rec* %64 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 0
  %opred125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 0
  store %union.rec* %63, %union.rec** %opred125, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %66 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1126 = bitcast %union.rec* %66 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 0
  %osucc129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc129, align 8
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.101, %cond.true.100
  %cond131 = phi %union.rec* [ %54, %cond.true.100 ], [ %65, %cond.false.101 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.96
  %cond133 = phi %union.rec* [ %52, %cond.true.96 ], [ %cond131, %cond.end.130 ]
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os1134 = bitcast %union.rec* %67 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  %68 = load i32, i32* %arrayidx135, align 4
  %69 = load i32*, i32** %offset.addr, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %union.rec*, %union.rec** %y, align 8
  %os1136 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 1
  %ofpos138 = bitcast %union.FIRST_UNION* %ou1137 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos138, i32 0, i32 3
  %bf.load139 = load i32, i32* %oline_num, align 4
  %bf.clear140 = and i32 %bf.load139, 1048575
  %71 = load i32*, i32** %lnum.addr, align 8
  store i32 %bf.clear140, i32* %71, align 4
  %72 = load i32, i32* @stat_write_hits, align 4
  %inc141 = add nsw i32 %72, 1
  store i32 %inc141, i32* @stat_write_hits, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.53, %land.lhs.true, %for.end.44
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end
  %73 = load %union.rec*, %union.rec** %link, align 8
  %os1143 = bitcast %union.rec* %73 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 0
  %osucc146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 1
  %74 = load %union.rec*, %union.rec** %osucc146, align 8
  store %union.rec* %74, %union.rec** %link, align 8
  br label %for.cond

for.end.147:                                      ; preds = %for.cond
  br label %if.end.148

if.end.148:                                       ; preds = %for.end.147, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.148, %cond.end.132
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define void @EnvWriteInsert(%union.rec* %env, i16 zeroext %fnum, i32 %offset, i32 %lnum) #0 {
entry:
  %env.addr = alloca %union.rec*, align 8
  %fnum.addr = alloca i16, align 2
  %offset.addr = alloca i32, align 4
  %lnum.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %loser = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %lnum, i32* %lnum.addr, align 4
  %0 = load i32, i32* @cache_count, align 4
  %cmp = icmp sge i32 %0, 180
  br i1 %cmp, label %if.then, label %if.end.251

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** @env_cache, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %2 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %3, %union.rec** %loser, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %union.rec*, %union.rec** %loser, align 8
  %os14 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %5 = load i8, i8* %otype, align 1
  %conv = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.rec*, %union.rec** %loser, align 8
  %os18 = bitcast %union.rec* %6 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred11, align 8
  store %union.rec* %7, %union.rec** %loser, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %loser, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %osucc15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc15, align 8
  store %union.rec* %9, %union.rec** @xx_link, align 8
  %10 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10, %union.rec** @zz_hold, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %11 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %osucc19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 1
  %12 = load %union.rec*, %union.rec** %osucc19, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp20 = icmp eq %union.rec* %12, %13
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %osucc25, align 8
  store %union.rec* %15, %union.rec** @zz_res, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred29, align 8
  %18 = load %union.rec*, %union.rec** @zz_res, align 8
  %os130 = bitcast %union.rec* %18 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  store %union.rec* %17, %union.rec** %opred33, align 8
  %19 = load %union.rec*, %union.rec** @zz_res, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os134 = bitcast %union.rec* %20 to %struct.word_type*
  %olist35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist35, i32 0, i64 1
  %opred37 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx36, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %opred37, align 8
  %os138 = bitcast %union.rec* %21 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 1
  %osucc41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 1
  store %union.rec* %19, %union.rec** %osucc41, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os142 = bitcast %union.rec* %23 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 1
  %osucc45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 1
  store %union.rec* %22, %union.rec** %osucc45, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %24 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %22, %union.rec** %opred49, align 8
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %25, %cond.false ]
  %26 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %26, %union.rec** @zz_hold, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %27 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc53, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp54 = icmp eq %union.rec* %28, %29
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end
  br label %cond.end.86

cond.false.57:                                    ; preds = %cond.end
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %30 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc61, align 8
  store %union.rec* %31, %union.rec** @zz_res, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %32 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred65, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  %os166 = bitcast %union.rec* %34 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %opred69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred69, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %36 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred73, align 8
  %os174 = bitcast %union.rec* %37 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %osucc77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 1
  store %union.rec* %35, %union.rec** %osucc77, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %39 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %osucc81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc81, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %40 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred85, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.57, %cond.true.56
  %cond87 = phi %union.rec* [ null, %cond.true.56 ], [ %41, %cond.false.57 ]
  %42 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %44 to %struct.word_type*
  %ou189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 1
  %os1190 = bitcast %union.FIRST_UNION* %ou189 to %struct.anon*
  %otype91 = getelementptr inbounds %struct.anon, %struct.anon* %os1190, i32 0, i32 0
  %45 = load i8, i8* %otype91, align 1
  %conv92 = zext i8 %45 to i32
  %cmp93 = icmp eq i32 %conv92, 11
  br i1 %cmp93, label %cond.true.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.86
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %46 to %struct.word_type*
  %ou196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 1
  %os1197 = bitcast %union.FIRST_UNION* %ou196 to %struct.anon*
  %otype98 = getelementptr inbounds %struct.anon, %struct.anon* %os1197, i32 0, i32 0
  %47 = load i8, i8* %otype98, align 1
  %conv99 = zext i8 %47 to i32
  %cmp100 = icmp eq i32 %conv99, 12
  br i1 %cmp100, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %lor.lhs.false, %cond.end.86
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %48 to %struct.word_type*
  %ou1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 1
  %os11105 = bitcast %union.FIRST_UNION* %ou1104 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11105, i32 0, i32 1
  %49 = load i8, i8* %orec_size, align 1
  %conv106 = zext i8 %49 to i32
  br label %cond.end.114

cond.false.107:                                   ; preds = %lor.lhs.false
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1108 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 1
  %os11110 = bitcast %union.FIRST_UNION* %ou1109 to %struct.anon*
  %otype111 = getelementptr inbounds %struct.anon, %struct.anon* %os11110, i32 0, i32 0
  %51 = load i8, i8* %otype111, align 1
  %idxprom = zext i8 %51 to i64
  %arrayidx112 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %52 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %52 to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.107, %cond.true.102
  %cond115 = phi i32 [ %conv106, %cond.true.102 ], [ %conv113, %cond.false.107 ]
  store i32 %cond115, i32* @zz_size, align 4
  %53 = load i32, i32* @zz_size, align 4
  %idxprom116 = sext i32 %53 to i64
  %arrayidx117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom116
  %54 = load %union.rec*, %union.rec** %arrayidx117, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %55 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  store %union.rec* %54, %union.rec** %opred121, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load i32, i32* @zz_size, align 4
  %idxprom122 = sext i32 %57 to i64
  %arrayidx123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom122
  store %union.rec* %56, %union.rec** %arrayidx123, align 8
  %58 = load %union.rec*, %union.rec** %loser, align 8
  %os1124 = bitcast %union.rec* %58 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %osucc127, align 8
  store %union.rec* %59, %union.rec** @xx_link, align 8
  %60 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %61 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  %62 = load %union.rec*, %union.rec** %osucc131, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp132 = icmp eq %union.rec* %62, %63
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.114
  br label %cond.end.164

cond.false.135:                                   ; preds = %cond.end.114
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %64 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 1
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %osucc139, align 8
  store %union.rec* %65, %union.rec** @zz_res, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %66 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 1
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred143, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1144 = bitcast %union.rec* %68 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 1
  %opred147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred147, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1148 = bitcast %union.rec* %70 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 1
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %opred151, align 8
  %os1152 = bitcast %union.rec* %71 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 1
  %osucc155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc155, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1156 = bitcast %union.rec* %73 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 1
  %osucc159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc159, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1160 = bitcast %union.rec* %74 to %struct.word_type*
  %olist161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist161, i32 0, i64 1
  %opred163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx162, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred163, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.135, %cond.true.134
  %cond165 = phi %union.rec* [ null, %cond.true.134 ], [ %75, %cond.false.135 ]
  store %union.rec* %cond165, %union.rec** @xx_tmp, align 8
  %76 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %77 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 0
  %osucc169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 1
  %78 = load %union.rec*, %union.rec** %osucc169, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp170 = icmp eq %union.rec* %78, %79
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.end.164
  br label %cond.end.203

cond.false.173:                                   ; preds = %cond.end.164
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %80 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %osucc177, align 8
  store %union.rec* %81, %union.rec** @zz_res, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %82 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 0
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred181, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1182 = bitcast %union.rec* %84 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 0
  %opred185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred185, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1186 = bitcast %union.rec* %86 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 0
  %opred189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred189, align 8
  %os1191 = bitcast %union.rec* %87 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 0
  %osucc194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc194, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1195 = bitcast %union.rec* %89 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 0
  %osucc198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc198, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1199 = bitcast %union.rec* %90 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 0
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred202, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.173, %cond.true.172
  %cond204 = phi %union.rec* [ null, %cond.true.172 ], [ %91, %cond.false.173 ]
  %92 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %92, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %93, %union.rec** @zz_hold, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1205 = bitcast %union.rec* %94 to %struct.word_type*
  %ou1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 1
  %os11207 = bitcast %union.FIRST_UNION* %ou1206 to %struct.anon*
  %otype208 = getelementptr inbounds %struct.anon, %struct.anon* %os11207, i32 0, i32 0
  %95 = load i8, i8* %otype208, align 1
  %conv209 = zext i8 %95 to i32
  %cmp210 = icmp eq i32 %conv209, 11
  br i1 %cmp210, label %cond.true.220, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %cond.end.203
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1213 = bitcast %union.rec* %96 to %struct.word_type*
  %ou1214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 1
  %os11215 = bitcast %union.FIRST_UNION* %ou1214 to %struct.anon*
  %otype216 = getelementptr inbounds %struct.anon, %struct.anon* %os11215, i32 0, i32 0
  %97 = load i8, i8* %otype216, align 1
  %conv217 = zext i8 %97 to i32
  %cmp218 = icmp eq i32 %conv217, 12
  br i1 %cmp218, label %cond.true.220, label %cond.false.226

cond.true.220:                                    ; preds = %lor.lhs.false.212, %cond.end.203
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1221 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 1
  %os11223 = bitcast %union.FIRST_UNION* %ou1222 to %struct.anon*
  %orec_size224 = getelementptr inbounds %struct.anon, %struct.anon* %os11223, i32 0, i32 1
  %99 = load i8, i8* %orec_size224, align 1
  %conv225 = zext i8 %99 to i32
  br label %cond.end.234

cond.false.226:                                   ; preds = %lor.lhs.false.212
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1227 = bitcast %union.rec* %100 to %struct.word_type*
  %ou1228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1227, i32 0, i32 1
  %os11229 = bitcast %union.FIRST_UNION* %ou1228 to %struct.anon*
  %otype230 = getelementptr inbounds %struct.anon, %struct.anon* %os11229, i32 0, i32 0
  %101 = load i8, i8* %otype230, align 1
  %idxprom231 = zext i8 %101 to i64
  %arrayidx232 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom231
  %102 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %102 to i32
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.226, %cond.true.220
  %cond235 = phi i32 [ %conv225, %cond.true.220 ], [ %conv233, %cond.false.226 ]
  store i32 %cond235, i32* @zz_size, align 4
  %103 = load i32, i32* @zz_size, align 4
  %idxprom236 = sext i32 %103 to i64
  %arrayidx237 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom236
  %104 = load %union.rec*, %union.rec** %arrayidx237, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %105 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred241, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = load i32, i32* @zz_size, align 4
  %idxprom242 = sext i32 %107 to i64
  %arrayidx243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom242
  store %union.rec* %106, %union.rec** %arrayidx243, align 8
  %108 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1244 = bitcast %union.rec* %108 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 1
  %osucc247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 1
  %109 = load %union.rec*, %union.rec** %osucc247, align 8
  %110 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp248 = icmp eq %union.rec* %109, %110
  br i1 %cmp248, label %if.then.250, label %if.end

if.then.250:                                      ; preds = %cond.end.234
  %111 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call = call i32 @DisposeObject(%union.rec* %111)
  br label %if.end

if.end:                                           ; preds = %if.then.250, %cond.end.234
  %112 = load i32, i32* @cache_count, align 4
  %dec = add nsw i32 %112, -1
  store i32 %dec, i32* @cache_count, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.end, %entry
  %113 = load %union.rec*, %union.rec** %env.addr, align 8
  %114 = ptrtoint %union.rec* %113 to i32
  %115 = load i16, i16* %fnum.addr, align 2
  %conv252 = zext i16 %115 to i32
  %add = add i32 %114, %conv252
  %rem = urem i32 %add, 211
  store i32 %rem, i32* %pos, align 4
  %116 = load i32, i32* %pos, align 4
  %idxprom253 = zext i32 %116 to i64
  %arrayidx254 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom253
  %117 = load %union.rec*, %union.rec** %arrayidx254, align 8
  %cmp255 = icmp eq %union.rec* %117, null
  br i1 %cmp255, label %if.then.257, label %if.end.303

if.then.257:                                      ; preds = %if.end.251
  %118 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv258 = zext i8 %118 to i32
  store i32 %conv258, i32* @zz_size, align 4
  %conv259 = sext i32 %conv258 to i64
  %cmp260 = icmp uge i64 %conv259, 265
  br i1 %cmp260, label %if.then.262, label %if.else

if.then.262:                                      ; preds = %if.then.257
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call263 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %119)
  br label %if.end.280

if.else:                                          ; preds = %if.then.257
  %120 = load i32, i32* @zz_size, align 4
  %idxprom264 = sext i32 %120 to i64
  %arrayidx265 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom264
  %121 = load %union.rec*, %union.rec** %arrayidx265, align 8
  %cmp266 = icmp eq %union.rec* %121, null
  br i1 %cmp266, label %if.then.268, label %if.else.270

if.then.268:                                      ; preds = %if.else
  %122 = load i32, i32* @zz_size, align 4
  %123 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call269 = call %union.rec* @GetMemory(i32 %122, %struct.FILE_POS* %123)
  store %union.rec* %call269, %union.rec** @zz_hold, align 8
  br label %if.end.279

if.else.270:                                      ; preds = %if.else
  %124 = load i32, i32* @zz_size, align 4
  %idxprom271 = sext i32 %124 to i64
  %arrayidx272 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom271
  %125 = load %union.rec*, %union.rec** %arrayidx272, align 8
  store %union.rec* %125, %union.rec** @zz_hold, align 8
  store %union.rec* %125, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1273 = bitcast %union.rec* %126 to %struct.word_type*
  %olist274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist274, i32 0, i64 0
  %opred276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx275, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred276, align 8
  %128 = load i32, i32* @zz_size, align 4
  %idxprom277 = sext i32 %128 to i64
  %arrayidx278 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom277
  store %union.rec* %127, %union.rec** %arrayidx278, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.270, %if.then.268
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.262
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %129 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %os11283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.anon*
  %otype284 = getelementptr inbounds %struct.anon, %struct.anon* %os11283, i32 0, i32 0
  store i8 17, i8* %otype284, align 1
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1285 = bitcast %union.rec* %131 to %struct.word_type*
  %olist286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist286, i32 0, i64 1
  %osucc288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx287, i32 0, i32 1
  store %union.rec* %130, %union.rec** %osucc288, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %132 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 1
  %opred292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 0
  store %union.rec* %130, %union.rec** %opred292, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1293 = bitcast %union.rec* %133 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 0
  %osucc296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 1
  store %union.rec* %130, %union.rec** %osucc296, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %134 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 0
  %opred300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 0
  store %union.rec* %130, %union.rec** %opred300, align 8
  %135 = load i32, i32* %pos, align 4
  %idxprom301 = zext i32 %135 to i64
  %arrayidx302 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom301
  store %union.rec* %130, %union.rec** %arrayidx302, align 8
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.280, %if.end.251
  %136 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv304 = zext i8 %136 to i32
  store i32 %conv304, i32* @zz_size, align 4
  %conv305 = sext i32 %conv304 to i64
  %cmp306 = icmp uge i64 %conv305, 265
  br i1 %cmp306, label %if.then.308, label %if.else.310

if.then.308:                                      ; preds = %if.end.303
  %137 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call309 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %137)
  br label %if.end.327

if.else.310:                                      ; preds = %if.end.303
  %138 = load i32, i32* @zz_size, align 4
  %idxprom311 = sext i32 %138 to i64
  %arrayidx312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom311
  %139 = load %union.rec*, %union.rec** %arrayidx312, align 8
  %cmp313 = icmp eq %union.rec* %139, null
  br i1 %cmp313, label %if.then.315, label %if.else.317

if.then.315:                                      ; preds = %if.else.310
  %140 = load i32, i32* @zz_size, align 4
  %141 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call316 = call %union.rec* @GetMemory(i32 %140, %struct.FILE_POS* %141)
  store %union.rec* %call316, %union.rec** @zz_hold, align 8
  br label %if.end.326

if.else.317:                                      ; preds = %if.else.310
  %142 = load i32, i32* @zz_size, align 4
  %idxprom318 = sext i32 %142 to i64
  %arrayidx319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom318
  %143 = load %union.rec*, %union.rec** %arrayidx319, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %144 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 0
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %opred323, align 8
  %146 = load i32, i32* @zz_size, align 4
  %idxprom324 = sext i32 %146 to i64
  %arrayidx325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom324
  store %union.rec* %145, %union.rec** %arrayidx325, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.317, %if.then.315
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.308
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %147 to %struct.word_type*
  %ou1329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 1
  %os11330 = bitcast %union.FIRST_UNION* %ou1329 to %struct.anon*
  %otype331 = getelementptr inbounds %struct.anon, %struct.anon* %os11330, i32 0, i32 0
  store i8 17, i8* %otype331, align 1
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %149 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc335, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %150 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %148, %union.rec** %opred339, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %151 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 0
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc343, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %152 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 0
  %opred347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 0
  store %union.rec* %148, %union.rec** %opred347, align 8
  store %union.rec* %148, %union.rec** %x, align 8
  %153 = load i16, i16* %fnum.addr, align 2
  %154 = load %union.rec*, %union.rec** %x, align 8
  %os1348 = bitcast %union.rec* %154 to %struct.word_type*
  %ou1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1349 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %153, i16* %ofile_num, align 2
  %155 = load i32, i32* %offset.addr, align 4
  %156 = load %union.rec*, %union.rec** %x, align 8
  %os1350 = bitcast %union.rec* %156 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  store i32 %155, i32* %arrayidx351, align 4
  %157 = load i32, i32* %lnum.addr, align 4
  %158 = load %union.rec*, %union.rec** %x, align 8
  %os1352 = bitcast %union.rec* %158 to %struct.word_type*
  %ou1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 1
  %ofpos354 = bitcast %union.FIRST_UNION* %ou1353 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos354, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.value = and i32 %157, 1048575
  %bf.clear = and i32 %bf.load, -1048576
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %oline_num, align 4
  %159 = load %union.rec*, %union.rec** %x, align 8
  %os1355 = bitcast %union.rec* %159 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load356 = load i16, i16* %osized, align 2
  %bf.clear357 = and i16 %bf.load356, -3
  store i16 %bf.clear357, i16* %osized, align 2
  %160 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv358 = zext i8 %160 to i32
  store i32 %conv358, i32* @zz_size, align 4
  %conv359 = sext i32 %conv358 to i64
  %cmp360 = icmp uge i64 %conv359, 265
  br i1 %cmp360, label %if.then.362, label %if.else.364

if.then.362:                                      ; preds = %if.end.327
  %161 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call363 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %161)
  br label %if.end.381

if.else.364:                                      ; preds = %if.end.327
  %162 = load i32, i32* @zz_size, align 4
  %idxprom365 = sext i32 %162 to i64
  %arrayidx366 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom365
  %163 = load %union.rec*, %union.rec** %arrayidx366, align 8
  %cmp367 = icmp eq %union.rec* %163, null
  br i1 %cmp367, label %if.then.369, label %if.else.371

if.then.369:                                      ; preds = %if.else.364
  %164 = load i32, i32* @zz_size, align 4
  %165 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call370 = call %union.rec* @GetMemory(i32 %164, %struct.FILE_POS* %165)
  store %union.rec* %call370, %union.rec** @zz_hold, align 8
  br label %if.end.380

if.else.371:                                      ; preds = %if.else.364
  %166 = load i32, i32* @zz_size, align 4
  %idxprom372 = sext i32 %166 to i64
  %arrayidx373 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom372
  %167 = load %union.rec*, %union.rec** %arrayidx373, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1374 = bitcast %union.rec* %168 to %struct.word_type*
  %olist375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist375, i32 0, i64 0
  %opred377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx376, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred377, align 8
  %170 = load i32, i32* @zz_size, align 4
  %idxprom378 = sext i32 %170 to i64
  %arrayidx379 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom378
  store %union.rec* %169, %union.rec** %arrayidx379, align 8
  br label %if.end.380

if.end.380:                                       ; preds = %if.else.371, %if.then.369
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.362
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1382 = bitcast %union.rec* %171 to %struct.word_type*
  %ou1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 1
  %os11384 = bitcast %union.FIRST_UNION* %ou1383 to %struct.anon*
  %otype385 = getelementptr inbounds %struct.anon, %struct.anon* %os11384, i32 0, i32 0
  store i8 0, i8* %otype385, align 1
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1386 = bitcast %union.rec* %173 to %struct.word_type*
  %olist387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist387, i32 0, i64 1
  %osucc389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx388, i32 0, i32 1
  store %union.rec* %172, %union.rec** %osucc389, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1390 = bitcast %union.rec* %174 to %struct.word_type*
  %olist391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1390, i32 0, i32 0
  %arrayidx392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist391, i32 0, i64 1
  %opred393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx392, i32 0, i32 0
  store %union.rec* %172, %union.rec** %opred393, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1394 = bitcast %union.rec* %175 to %struct.word_type*
  %olist395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist395, i32 0, i64 0
  %osucc397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx396, i32 0, i32 1
  store %union.rec* %172, %union.rec** %osucc397, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1398 = bitcast %union.rec* %176 to %struct.word_type*
  %olist399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1398, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist399, i32 0, i64 0
  %opred401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx400, i32 0, i32 0
  store %union.rec* %172, %union.rec** %opred401, align 8
  store %union.rec* %172, %union.rec** @xx_link, align 8
  %177 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %177, %union.rec** @zz_res, align 8
  %178 = load i32, i32* %pos, align 4
  %idxprom402 = zext i32 %178 to i64
  %arrayidx403 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom402
  %179 = load %union.rec*, %union.rec** %arrayidx403, align 8
  store %union.rec* %179, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp404 = icmp eq %union.rec* %180, null
  br i1 %cmp404, label %cond.true.406, label %cond.false.407

cond.true.406:                                    ; preds = %if.end.381
  %181 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.442

cond.false.407:                                   ; preds = %if.end.381
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp408 = icmp eq %union.rec* %182, null
  br i1 %cmp408, label %cond.true.410, label %cond.false.411

cond.true.410:                                    ; preds = %cond.false.407
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.440

cond.false.411:                                   ; preds = %cond.false.407
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1412 = bitcast %union.rec* %184 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 0
  %opred415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 0
  %185 = load %union.rec*, %union.rec** %opred415, align 8
  store %union.rec* %185, %union.rec** @zz_tmp, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1416 = bitcast %union.rec* %186 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 0
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %opred419, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1420 = bitcast %union.rec* %188 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 0
  %opred423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 0
  store %union.rec* %187, %union.rec** %opred423, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1424 = bitcast %union.rec* %190 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 0
  %opred427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 0
  %191 = load %union.rec*, %union.rec** %opred427, align 8
  %os1428 = bitcast %union.rec* %191 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 0
  %osucc431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 1
  store %union.rec* %189, %union.rec** %osucc431, align 8
  %192 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1432 = bitcast %union.rec* %193 to %struct.word_type*
  %olist433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist433, i32 0, i64 0
  %opred435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx434, i32 0, i32 0
  store %union.rec* %192, %union.rec** %opred435, align 8
  %194 = load %union.rec*, %union.rec** @zz_res, align 8
  %195 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1436 = bitcast %union.rec* %195 to %struct.word_type*
  %olist437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1436, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist437, i32 0, i64 0
  %osucc439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx438, i32 0, i32 1
  store %union.rec* %194, %union.rec** %osucc439, align 8
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.411, %cond.true.410
  %cond441 = phi %union.rec* [ %183, %cond.true.410 ], [ %194, %cond.false.411 ]
  br label %cond.end.442

cond.end.442:                                     ; preds = %cond.end.440, %cond.true.406
  %cond443 = phi %union.rec* [ %181, %cond.true.406 ], [ %cond441, %cond.end.440 ]
  %196 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %196, %union.rec** @zz_res, align 8
  %197 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %197, %union.rec** @zz_hold, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp444 = icmp eq %union.rec* %198, null
  br i1 %cmp444, label %cond.true.446, label %cond.false.447

cond.true.446:                                    ; preds = %cond.end.442
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.482

cond.false.447:                                   ; preds = %cond.end.442
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp448 = icmp eq %union.rec* %200, null
  br i1 %cmp448, label %cond.true.450, label %cond.false.451

cond.true.450:                                    ; preds = %cond.false.447
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.480

cond.false.451:                                   ; preds = %cond.false.447
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1452 = bitcast %union.rec* %202 to %struct.word_type*
  %olist453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist453, i32 0, i64 1
  %opred455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx454, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %opred455, align 8
  store %union.rec* %203, %union.rec** @zz_tmp, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1456 = bitcast %union.rec* %204 to %struct.word_type*
  %olist457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist457, i32 0, i64 1
  %opred459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx458, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred459, align 8
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1460 = bitcast %union.rec* %206 to %struct.word_type*
  %olist461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist461, i32 0, i64 1
  %opred463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx462, i32 0, i32 0
  store %union.rec* %205, %union.rec** %opred463, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1464 = bitcast %union.rec* %208 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 1
  %opred467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %opred467, align 8
  %os1468 = bitcast %union.rec* %209 to %struct.word_type*
  %olist469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1468, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist469, i32 0, i64 1
  %osucc471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx470, i32 0, i32 1
  store %union.rec* %207, %union.rec** %osucc471, align 8
  %210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1472 = bitcast %union.rec* %211 to %struct.word_type*
  %olist473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1472, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist473, i32 0, i64 1
  %opred475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx474, i32 0, i32 0
  store %union.rec* %210, %union.rec** %opred475, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %213 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1476 = bitcast %union.rec* %213 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 1
  %osucc479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 1
  store %union.rec* %212, %union.rec** %osucc479, align 8
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.false.451, %cond.true.450
  %cond481 = phi %union.rec* [ %201, %cond.true.450 ], [ %212, %cond.false.451 ]
  br label %cond.end.482

cond.end.482:                                     ; preds = %cond.end.480, %cond.true.446
  %cond483 = phi %union.rec* [ %199, %cond.true.446 ], [ %cond481, %cond.end.480 ]
  %214 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv484 = zext i8 %214 to i32
  store i32 %conv484, i32* @zz_size, align 4
  %conv485 = sext i32 %conv484 to i64
  %cmp486 = icmp uge i64 %conv485, 265
  br i1 %cmp486, label %if.then.488, label %if.else.490

if.then.488:                                      ; preds = %cond.end.482
  %215 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call489 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %215)
  br label %if.end.507

if.else.490:                                      ; preds = %cond.end.482
  %216 = load i32, i32* @zz_size, align 4
  %idxprom491 = sext i32 %216 to i64
  %arrayidx492 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom491
  %217 = load %union.rec*, %union.rec** %arrayidx492, align 8
  %cmp493 = icmp eq %union.rec* %217, null
  br i1 %cmp493, label %if.then.495, label %if.else.497

if.then.495:                                      ; preds = %if.else.490
  %218 = load i32, i32* @zz_size, align 4
  %219 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call496 = call %union.rec* @GetMemory(i32 %218, %struct.FILE_POS* %219)
  store %union.rec* %call496, %union.rec** @zz_hold, align 8
  br label %if.end.506

if.else.497:                                      ; preds = %if.else.490
  %220 = load i32, i32* @zz_size, align 4
  %idxprom498 = sext i32 %220 to i64
  %arrayidx499 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom498
  %221 = load %union.rec*, %union.rec** %arrayidx499, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1500 = bitcast %union.rec* %222 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 0
  %opred503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred503, align 8
  %224 = load i32, i32* @zz_size, align 4
  %idxprom504 = sext i32 %224 to i64
  %arrayidx505 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom504
  store %union.rec* %223, %union.rec** %arrayidx505, align 8
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.497, %if.then.495
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %if.then.488
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1508 = bitcast %union.rec* %225 to %struct.word_type*
  %ou1509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 1
  %os11510 = bitcast %union.FIRST_UNION* %ou1509 to %struct.anon*
  %otype511 = getelementptr inbounds %struct.anon, %struct.anon* %os11510, i32 0, i32 0
  store i8 0, i8* %otype511, align 1
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1512 = bitcast %union.rec* %227 to %struct.word_type*
  %olist513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist513, i32 0, i64 1
  %osucc515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx514, i32 0, i32 1
  store %union.rec* %226, %union.rec** %osucc515, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1516 = bitcast %union.rec* %228 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 1
  %opred519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 0
  store %union.rec* %226, %union.rec** %opred519, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1520 = bitcast %union.rec* %229 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 0
  %osucc523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 1
  store %union.rec* %226, %union.rec** %osucc523, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1524 = bitcast %union.rec* %230 to %struct.word_type*
  %olist525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist525, i32 0, i64 0
  %opred527 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx526, i32 0, i32 0
  store %union.rec* %226, %union.rec** %opred527, align 8
  store %union.rec* %226, %union.rec** @xx_link, align 8
  %231 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %231, %union.rec** @zz_res, align 8
  %232 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %232, %union.rec** @zz_hold, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp528 = icmp eq %union.rec* %233, null
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %if.end.507
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.566

cond.false.531:                                   ; preds = %if.end.507
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp532 = icmp eq %union.rec* %235, null
  br i1 %cmp532, label %cond.true.534, label %cond.false.535

cond.true.534:                                    ; preds = %cond.false.531
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.564

cond.false.535:                                   ; preds = %cond.false.531
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1536 = bitcast %union.rec* %237 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 0
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %opred539, align 8
  store %union.rec* %238, %union.rec** @zz_tmp, align 8
  %239 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1540 = bitcast %union.rec* %239 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 0
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  %240 = load %union.rec*, %union.rec** %opred543, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1544 = bitcast %union.rec* %241 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 0
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  store %union.rec* %240, %union.rec** %opred547, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1548 = bitcast %union.rec* %243 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 0
  %opred551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %opred551, align 8
  %os1552 = bitcast %union.rec* %244 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 0
  %osucc555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 1
  store %union.rec* %242, %union.rec** %osucc555, align 8
  %245 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1556 = bitcast %union.rec* %246 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 0
  %opred559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 0
  store %union.rec* %245, %union.rec** %opred559, align 8
  %247 = load %union.rec*, %union.rec** @zz_res, align 8
  %248 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1560 = bitcast %union.rec* %248 to %struct.word_type*
  %olist561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1560, i32 0, i32 0
  %arrayidx562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist561, i32 0, i64 0
  %osucc563 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx562, i32 0, i32 1
  store %union.rec* %247, %union.rec** %osucc563, align 8
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.false.535, %cond.true.534
  %cond565 = phi %union.rec* [ %236, %cond.true.534 ], [ %247, %cond.false.535 ]
  br label %cond.end.566

cond.end.566:                                     ; preds = %cond.end.564, %cond.true.530
  %cond567 = phi %union.rec* [ %234, %cond.true.530 ], [ %cond565, %cond.end.564 ]
  %249 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %249, %union.rec** @zz_res, align 8
  %250 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %250, %union.rec** @zz_hold, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp568 = icmp eq %union.rec* %251, null
  br i1 %cmp568, label %cond.true.570, label %cond.false.571

cond.true.570:                                    ; preds = %cond.end.566
  %252 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.606

cond.false.571:                                   ; preds = %cond.end.566
  %253 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp572 = icmp eq %union.rec* %253, null
  br i1 %cmp572, label %cond.true.574, label %cond.false.575

cond.true.574:                                    ; preds = %cond.false.571
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.604

cond.false.575:                                   ; preds = %cond.false.571
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1576 = bitcast %union.rec* %255 to %struct.word_type*
  %olist577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist577, i32 0, i64 1
  %opred579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx578, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %opred579, align 8
  store %union.rec* %256, %union.rec** @zz_tmp, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1580 = bitcast %union.rec* %257 to %struct.word_type*
  %olist581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist581, i32 0, i64 1
  %opred583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx582, i32 0, i32 0
  %258 = load %union.rec*, %union.rec** %opred583, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1584 = bitcast %union.rec* %259 to %struct.word_type*
  %olist585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist585, i32 0, i64 1
  %opred587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx586, i32 0, i32 0
  store %union.rec* %258, %union.rec** %opred587, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1588 = bitcast %union.rec* %261 to %struct.word_type*
  %olist589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 0
  %arrayidx590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist589, i32 0, i64 1
  %opred591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx590, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %opred591, align 8
  %os1592 = bitcast %union.rec* %262 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 1
  %osucc595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 1
  store %union.rec* %260, %union.rec** %osucc595, align 8
  %263 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1596 = bitcast %union.rec* %264 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 1
  %opred599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 0
  store %union.rec* %263, %union.rec** %opred599, align 8
  %265 = load %union.rec*, %union.rec** @zz_res, align 8
  %266 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1600 = bitcast %union.rec* %266 to %struct.word_type*
  %olist601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1600, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist601, i32 0, i64 1
  %osucc603 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx602, i32 0, i32 1
  store %union.rec* %265, %union.rec** %osucc603, align 8
  br label %cond.end.604

cond.end.604:                                     ; preds = %cond.false.575, %cond.true.574
  %cond605 = phi %union.rec* [ %254, %cond.true.574 ], [ %265, %cond.false.575 ]
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.end.604, %cond.true.570
  %cond607 = phi %union.rec* [ %252, %cond.true.570 ], [ %cond605, %cond.end.604 ]
  %267 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv608 = zext i8 %267 to i32
  store i32 %conv608, i32* @zz_size, align 4
  %conv609 = sext i32 %conv608 to i64
  %cmp610 = icmp uge i64 %conv609, 265
  br i1 %cmp610, label %if.then.612, label %if.else.614

if.then.612:                                      ; preds = %cond.end.606
  %268 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call613 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %268)
  br label %if.end.631

if.else.614:                                      ; preds = %cond.end.606
  %269 = load i32, i32* @zz_size, align 4
  %idxprom615 = sext i32 %269 to i64
  %arrayidx616 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom615
  %270 = load %union.rec*, %union.rec** %arrayidx616, align 8
  %cmp617 = icmp eq %union.rec* %270, null
  br i1 %cmp617, label %if.then.619, label %if.else.621

if.then.619:                                      ; preds = %if.else.614
  %271 = load i32, i32* @zz_size, align 4
  %272 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call620 = call %union.rec* @GetMemory(i32 %271, %struct.FILE_POS* %272)
  store %union.rec* %call620, %union.rec** @zz_hold, align 8
  br label %if.end.630

if.else.621:                                      ; preds = %if.else.614
  %273 = load i32, i32* @zz_size, align 4
  %idxprom622 = sext i32 %273 to i64
  %arrayidx623 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom622
  %274 = load %union.rec*, %union.rec** %arrayidx623, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1624 = bitcast %union.rec* %275 to %struct.word_type*
  %olist625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 0
  %arrayidx626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist625, i32 0, i64 0
  %opred627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx626, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %opred627, align 8
  %277 = load i32, i32* @zz_size, align 4
  %idxprom628 = sext i32 %277 to i64
  %arrayidx629 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom628
  store %union.rec* %276, %union.rec** %arrayidx629, align 8
  br label %if.end.630

if.end.630:                                       ; preds = %if.else.621, %if.then.619
  br label %if.end.631

if.end.631:                                       ; preds = %if.end.630, %if.then.612
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1632 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1632, i32 0, i32 1
  %os11634 = bitcast %union.FIRST_UNION* %ou1633 to %struct.anon*
  %otype635 = getelementptr inbounds %struct.anon, %struct.anon* %os11634, i32 0, i32 0
  store i8 0, i8* %otype635, align 1
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1636 = bitcast %union.rec* %280 to %struct.word_type*
  %olist637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 0
  %arrayidx638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist637, i32 0, i64 1
  %osucc639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx638, i32 0, i32 1
  store %union.rec* %279, %union.rec** %osucc639, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1640 = bitcast %union.rec* %281 to %struct.word_type*
  %olist641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1640, i32 0, i32 0
  %arrayidx642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist641, i32 0, i64 1
  %opred643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx642, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred643, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1644 = bitcast %union.rec* %282 to %struct.word_type*
  %olist645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1644, i32 0, i32 0
  %arrayidx646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist645, i32 0, i64 0
  %osucc647 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx646, i32 0, i32 1
  store %union.rec* %279, %union.rec** %osucc647, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1648 = bitcast %union.rec* %283 to %struct.word_type*
  %olist649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 0
  %arrayidx650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist649, i32 0, i64 0
  %opred651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx650, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred651, align 8
  store %union.rec* %279, %union.rec** @xx_link, align 8
  %284 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %284, %union.rec** @zz_res, align 8
  %285 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %285, %union.rec** @zz_hold, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp652 = icmp eq %union.rec* %286, null
  br i1 %cmp652, label %cond.true.654, label %cond.false.655

cond.true.654:                                    ; preds = %if.end.631
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.690

cond.false.655:                                   ; preds = %if.end.631
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp656 = icmp eq %union.rec* %288, null
  br i1 %cmp656, label %cond.true.658, label %cond.false.659

cond.true.658:                                    ; preds = %cond.false.655
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.688

cond.false.659:                                   ; preds = %cond.false.655
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1660 = bitcast %union.rec* %290 to %struct.word_type*
  %olist661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 0
  %arrayidx662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist661, i32 0, i64 0
  %opred663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx662, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %opred663, align 8
  store %union.rec* %291, %union.rec** @zz_tmp, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1664 = bitcast %union.rec* %292 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 0
  %opred667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %opred667, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1668 = bitcast %union.rec* %294 to %struct.word_type*
  %olist669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist669, i32 0, i64 0
  %opred671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx670, i32 0, i32 0
  store %union.rec* %293, %union.rec** %opred671, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1672 = bitcast %union.rec* %296 to %struct.word_type*
  %olist673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 0
  %arrayidx674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist673, i32 0, i64 0
  %opred675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx674, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred675, align 8
  %os1676 = bitcast %union.rec* %297 to %struct.word_type*
  %olist677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1676, i32 0, i32 0
  %arrayidx678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist677, i32 0, i64 0
  %osucc679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx678, i32 0, i32 1
  store %union.rec* %295, %union.rec** %osucc679, align 8
  %298 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1680 = bitcast %union.rec* %299 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 0
  %opred683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 0
  store %union.rec* %298, %union.rec** %opred683, align 8
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  %301 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1684 = bitcast %union.rec* %301 to %struct.word_type*
  %olist685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 0
  %arrayidx686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist685, i32 0, i64 0
  %osucc687 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx686, i32 0, i32 1
  store %union.rec* %300, %union.rec** %osucc687, align 8
  br label %cond.end.688

cond.end.688:                                     ; preds = %cond.false.659, %cond.true.658
  %cond689 = phi %union.rec* [ %289, %cond.true.658 ], [ %300, %cond.false.659 ]
  br label %cond.end.690

cond.end.690:                                     ; preds = %cond.end.688, %cond.true.654
  %cond691 = phi %union.rec* [ %287, %cond.true.654 ], [ %cond689, %cond.end.688 ]
  %302 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %302, %union.rec** @zz_res, align 8
  %303 = load %union.rec*, %union.rec** %env.addr, align 8
  store %union.rec* %303, %union.rec** @zz_hold, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp692 = icmp eq %union.rec* %304, null
  br i1 %cmp692, label %cond.true.694, label %cond.false.695

cond.true.694:                                    ; preds = %cond.end.690
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.730

cond.false.695:                                   ; preds = %cond.end.690
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp696 = icmp eq %union.rec* %306, null
  br i1 %cmp696, label %cond.true.698, label %cond.false.699

cond.true.698:                                    ; preds = %cond.false.695
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.728

cond.false.699:                                   ; preds = %cond.false.695
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1700 = bitcast %union.rec* %308 to %struct.word_type*
  %olist701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 0
  %arrayidx702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist701, i32 0, i64 1
  %opred703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx702, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %opred703, align 8
  store %union.rec* %309, %union.rec** @zz_tmp, align 8
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1704 = bitcast %union.rec* %310 to %struct.word_type*
  %olist705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1704, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist705, i32 0, i64 1
  %opred707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx706, i32 0, i32 0
  %311 = load %union.rec*, %union.rec** %opred707, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1708 = bitcast %union.rec* %312 to %struct.word_type*
  %olist709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1708, i32 0, i32 0
  %arrayidx710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist709, i32 0, i64 1
  %opred711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx710, i32 0, i32 0
  store %union.rec* %311, %union.rec** %opred711, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1712 = bitcast %union.rec* %314 to %struct.word_type*
  %olist713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1712, i32 0, i32 0
  %arrayidx714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist713, i32 0, i64 1
  %opred715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx714, i32 0, i32 0
  %315 = load %union.rec*, %union.rec** %opred715, align 8
  %os1716 = bitcast %union.rec* %315 to %struct.word_type*
  %olist717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1716, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist717, i32 0, i64 1
  %osucc719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx718, i32 0, i32 1
  store %union.rec* %313, %union.rec** %osucc719, align 8
  %316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %317 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1720 = bitcast %union.rec* %317 to %struct.word_type*
  %olist721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1720, i32 0, i32 0
  %arrayidx722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist721, i32 0, i64 1
  %opred723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx722, i32 0, i32 0
  store %union.rec* %316, %union.rec** %opred723, align 8
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  %319 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1724 = bitcast %union.rec* %319 to %struct.word_type*
  %olist725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 0
  %arrayidx726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist725, i32 0, i64 1
  %osucc727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx726, i32 0, i32 1
  store %union.rec* %318, %union.rec** %osucc727, align 8
  br label %cond.end.728

cond.end.728:                                     ; preds = %cond.false.699, %cond.true.698
  %cond729 = phi %union.rec* [ %307, %cond.true.698 ], [ %318, %cond.false.699 ]
  br label %cond.end.730

cond.end.730:                                     ; preds = %cond.end.728, %cond.true.694
  %cond731 = phi %union.rec* [ %305, %cond.true.694 ], [ %cond729, %cond.end.728 ]
  %320 = load i32, i32* @cache_count, align 4
  %inc = add nsw i32 %320, 1
  store i32 %inc, i32* @cache_count, align 4
  ret void
}

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind uwtable
define i32 @EnvReadRetrieve(i16 zeroext %fnum, i32 %offset, %union.rec** %env) #0 {
entry:
  %retval = alloca i32, align 4
  %fnum.addr = alloca i16, align 2
  %offset.addr = alloca i32, align 4
  %env.addr = alloca %union.rec**, align 8
  %pos = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32 %offset, i32* %offset.addr, align 4
  store %union.rec** %env, %union.rec*** %env.addr, align 8
  %0 = load i32, i32* @stat_reads, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @stat_reads, align 4
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load i16, i16* %fnum.addr, align 2
  %conv = zext i16 %2 to i32
  %add = add nsw i32 %1, %conv
  %rem = srem i32 %add, 211
  store i32 %rem, i32* %pos, align 4
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom
  %4 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp = icmp ne %union.rec* %4, null
  br i1 %cmp, label %if.then, label %if.end.166

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom2
  %6 = load %union.rec*, %union.rec** %arrayidx3, align 8
  %os1 = bitcast %union.rec* %6 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %7, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.160, %if.then
  %8 = load %union.rec*, %union.rec** %link, align 8
  %9 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom5
  %10 = load %union.rec*, %union.rec** %arrayidx6, align 8
  %cmp7 = icmp ne %union.rec* %8, %10
  br i1 %cmp7, label %for.body, label %for.end.165

for.body:                                         ; preds = %for.cond
  %11 = load %union.rec*, %union.rec** %link, align 8
  %os19 = bitcast %union.rec* %11 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %12, %union.rec** %y, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os113 = bitcast %union.rec* %13 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %14 = load i8, i8* %otype, align 1
  %conv14 = zext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.12
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %15 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %16, %union.rec** %y, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %17 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc25, align 8
  %os126 = bitcast %union.rec* %18 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred29, align 8
  store %union.rec* %19, %union.rec** %z, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.39, %for.end
  %20 = load %union.rec*, %union.rec** %z, align 8
  %os131 = bitcast %union.rec* %20 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %21 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %21 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.30
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.38
  %22 = load %union.rec*, %union.rec** %z, align 8
  %os140 = bitcast %union.rec* %22 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %opred43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred43, align 8
  store %union.rec* %23, %union.rec** %z, align 8
  br label %for.cond.30

for.end.44:                                       ; preds = %for.cond.30
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os145 = bitcast %union.rec* %24 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %25 = load i16, i16* %ofile_num, align 2
  %conv47 = zext i16 %25 to i32
  %26 = load i16, i16* %fnum.addr, align 2
  %conv48 = zext i16 %26 to i32
  %cmp49 = icmp eq i32 %conv47, %conv48
  br i1 %cmp49, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end.44
  %27 = load %union.rec*, %union.rec** %y, align 8
  %os151 = bitcast %union.rec* %27 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  %28 = load i32, i32* %arrayidx52, align 4
  %29 = load i32, i32* %offset.addr, align 4
  %cmp53 = icmp eq i32 %28, %29
  br i1 %cmp53, label %land.lhs.true.55, label %if.end

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os156 = bitcast %union.rec* %30 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %osized, align 2
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %land.lhs.true.55
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os158 = bitcast %union.rec* %31 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %32, %union.rec** @xx_link, align 8
  %33 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %34 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %osucc65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 1
  %35 = load %union.rec*, %union.rec** %osucc65, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp66 = icmp eq %union.rec* %35, %36
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.57
  br label %cond.end

cond.false:                                       ; preds = %if.then.57
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os168 = bitcast %union.rec* %37 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 0
  %osucc71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 1
  %38 = load %union.rec*, %union.rec** %osucc71, align 8
  store %union.rec* %38, %union.rec** @zz_res, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %39 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %opred75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred75, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  %os176 = bitcast %union.rec* %41 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred79, align 8
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os180 = bitcast %union.rec* %43 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred83, align 8
  %os184 = bitcast %union.rec* %44 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 0
  %osucc87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 1
  store %union.rec* %42, %union.rec** %osucc87, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %46 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 0
  %osucc91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc91, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os192 = bitcast %union.rec* %47 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 0
  %opred95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred95, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %48, %cond.false ]
  %49 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %49, %union.rec** @zz_res, align 8
  %50 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %50, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp96 = icmp eq %union.rec* %51, null
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.134

cond.false.99:                                    ; preds = %cond.end
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp100 = icmp eq %union.rec* %53, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.false.99
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.132

cond.false.103:                                   ; preds = %cond.false.99
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1104 = bitcast %union.rec* %55 to %struct.word_type*
  %olist105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist105, i32 0, i64 0
  %opred107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx106, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred107, align 8
  store %union.rec* %56, %union.rec** @zz_tmp, align 8
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1108 = bitcast %union.rec* %57 to %struct.word_type*
  %olist109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist109, i32 0, i64 0
  %opred111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx110, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred111, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %59 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 0
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  store %union.rec* %58, %union.rec** %opred115, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1116 = bitcast %union.rec* %61 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 0
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred119, align 8
  %os1120 = bitcast %union.rec* %62 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 0
  %osucc123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 1
  store %union.rec* %60, %union.rec** %osucc123, align 8
  %63 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1124 = bitcast %union.rec* %64 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  store %union.rec* %63, %union.rec** %opred127, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %66 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1128 = bitcast %union.rec* %66 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc131, align 8
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.103, %cond.true.102
  %cond133 = phi %union.rec* [ %54, %cond.true.102 ], [ %65, %cond.false.103 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.true.98
  %cond135 = phi %union.rec* [ %52, %cond.true.98 ], [ %cond133, %cond.end.132 ]
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os1136 = bitcast %union.rec* %67 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc139, align 8
  %os1140 = bitcast %union.rec* %68 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 1
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred143, align 8
  %70 = load %union.rec**, %union.rec*** %env.addr, align 8
  store %union.rec* %69, %union.rec** %70, align 8
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.153, %cond.end.134
  %71 = load %union.rec**, %union.rec*** %env.addr, align 8
  %72 = load %union.rec*, %union.rec** %71, align 8
  %os1145 = bitcast %union.rec* %72 to %struct.word_type*
  %ou1146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 1
  %os11147 = bitcast %union.FIRST_UNION* %ou1146 to %struct.anon*
  %otype148 = getelementptr inbounds %struct.anon, %struct.anon* %os11147, i32 0, i32 0
  %73 = load i8, i8* %otype148, align 1
  %conv149 = zext i8 %73 to i32
  %cmp150 = icmp eq i32 %conv149, 0
  br i1 %cmp150, label %for.body.152, label %for.end.158

for.body.152:                                     ; preds = %for.cond.144
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.152
  %74 = load %union.rec**, %union.rec*** %env.addr, align 8
  %75 = load %union.rec*, %union.rec** %74, align 8
  %os1154 = bitcast %union.rec* %75 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred157, align 8
  %77 = load %union.rec**, %union.rec*** %env.addr, align 8
  store %union.rec* %76, %union.rec** %77, align 8
  br label %for.cond.144

for.end.158:                                      ; preds = %for.cond.144
  %78 = load i32, i32* @stat_read_hits, align 4
  %inc159 = add nsw i32 %78, 1
  store i32 %inc159, i32* @stat_read_hits, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.55, %land.lhs.true, %for.end.44
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end
  %79 = load %union.rec*, %union.rec** %link, align 8
  %os1161 = bitcast %union.rec* %79 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 0
  %osucc164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 1
  %80 = load %union.rec*, %union.rec** %osucc164, align 8
  store %union.rec* %80, %union.rec** %link, align 8
  br label %for.cond

for.end.165:                                      ; preds = %for.cond
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.166, %for.end.158
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define void @EnvReadInsert(i16 zeroext %fnum, i32 %offset, %union.rec* %env) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %offset.addr = alloca i32, align 4
  %env.addr = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %x = alloca %union.rec*, align 8
  %loser = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32 %offset, i32* %offset.addr, align 4
  store %union.rec* %env, %union.rec** %env.addr, align 8
  %0 = load i32, i32* @cache_count, align 4
  %cmp = icmp sge i32 %0, 180
  br i1 %cmp, label %if.then, label %if.end.251

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** @env_cache, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %2 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %3, %union.rec** %loser, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %union.rec*, %union.rec** %loser, align 8
  %os14 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %5 = load i8, i8* %otype, align 1
  %conv = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.rec*, %union.rec** %loser, align 8
  %os18 = bitcast %union.rec* %6 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred11, align 8
  store %union.rec* %7, %union.rec** %loser, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %loser, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %osucc15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc15, align 8
  store %union.rec* %9, %union.rec** @xx_link, align 8
  %10 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %10, %union.rec** @zz_hold, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %11 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %osucc19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 1
  %12 = load %union.rec*, %union.rec** %osucc19, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp20 = icmp eq %union.rec* %12, %13
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %osucc25, align 8
  store %union.rec* %15, %union.rec** @zz_res, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred29, align 8
  %18 = load %union.rec*, %union.rec** @zz_res, align 8
  %os130 = bitcast %union.rec* %18 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  store %union.rec* %17, %union.rec** %opred33, align 8
  %19 = load %union.rec*, %union.rec** @zz_res, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os134 = bitcast %union.rec* %20 to %struct.word_type*
  %olist35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist35, i32 0, i64 1
  %opred37 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx36, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %opred37, align 8
  %os138 = bitcast %union.rec* %21 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 1
  %osucc41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 1
  store %union.rec* %19, %union.rec** %osucc41, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os142 = bitcast %union.rec* %23 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 1
  %osucc45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 1
  store %union.rec* %22, %union.rec** %osucc45, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %24 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %22, %union.rec** %opred49, align 8
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %25, %cond.false ]
  %26 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %26, %union.rec** @zz_hold, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %27 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc53, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp54 = icmp eq %union.rec* %28, %29
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end
  br label %cond.end.86

cond.false.57:                                    ; preds = %cond.end
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %30 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc61, align 8
  store %union.rec* %31, %union.rec** @zz_res, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %32 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred65, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  %os166 = bitcast %union.rec* %34 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %opred69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred69, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %36 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred73, align 8
  %os174 = bitcast %union.rec* %37 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %osucc77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 1
  store %union.rec* %35, %union.rec** %osucc77, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %39 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %osucc81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc81, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %40 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred85, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.57, %cond.true.56
  %cond87 = phi %union.rec* [ null, %cond.true.56 ], [ %41, %cond.false.57 ]
  %42 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %44 to %struct.word_type*
  %ou189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 1
  %os1190 = bitcast %union.FIRST_UNION* %ou189 to %struct.anon*
  %otype91 = getelementptr inbounds %struct.anon, %struct.anon* %os1190, i32 0, i32 0
  %45 = load i8, i8* %otype91, align 1
  %conv92 = zext i8 %45 to i32
  %cmp93 = icmp eq i32 %conv92, 11
  br i1 %cmp93, label %cond.true.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.86
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %46 to %struct.word_type*
  %ou196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 1
  %os1197 = bitcast %union.FIRST_UNION* %ou196 to %struct.anon*
  %otype98 = getelementptr inbounds %struct.anon, %struct.anon* %os1197, i32 0, i32 0
  %47 = load i8, i8* %otype98, align 1
  %conv99 = zext i8 %47 to i32
  %cmp100 = icmp eq i32 %conv99, 12
  br i1 %cmp100, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %lor.lhs.false, %cond.end.86
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %48 to %struct.word_type*
  %ou1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 1
  %os11105 = bitcast %union.FIRST_UNION* %ou1104 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11105, i32 0, i32 1
  %49 = load i8, i8* %orec_size, align 1
  %conv106 = zext i8 %49 to i32
  br label %cond.end.114

cond.false.107:                                   ; preds = %lor.lhs.false
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1108 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 1
  %os11110 = bitcast %union.FIRST_UNION* %ou1109 to %struct.anon*
  %otype111 = getelementptr inbounds %struct.anon, %struct.anon* %os11110, i32 0, i32 0
  %51 = load i8, i8* %otype111, align 1
  %idxprom = zext i8 %51 to i64
  %arrayidx112 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %52 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %52 to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.107, %cond.true.102
  %cond115 = phi i32 [ %conv106, %cond.true.102 ], [ %conv113, %cond.false.107 ]
  store i32 %cond115, i32* @zz_size, align 4
  %53 = load i32, i32* @zz_size, align 4
  %idxprom116 = sext i32 %53 to i64
  %arrayidx117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom116
  %54 = load %union.rec*, %union.rec** %arrayidx117, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %55 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  store %union.rec* %54, %union.rec** %opred121, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load i32, i32* @zz_size, align 4
  %idxprom122 = sext i32 %57 to i64
  %arrayidx123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom122
  store %union.rec* %56, %union.rec** %arrayidx123, align 8
  %58 = load %union.rec*, %union.rec** %loser, align 8
  %os1124 = bitcast %union.rec* %58 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %osucc127, align 8
  store %union.rec* %59, %union.rec** @xx_link, align 8
  %60 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %61 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  %62 = load %union.rec*, %union.rec** %osucc131, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp132 = icmp eq %union.rec* %62, %63
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %cond.end.114
  br label %cond.end.164

cond.false.135:                                   ; preds = %cond.end.114
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %64 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 1
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %osucc139, align 8
  store %union.rec* %65, %union.rec** @zz_res, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %66 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 1
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred143, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1144 = bitcast %union.rec* %68 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 1
  %opred147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred147, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1148 = bitcast %union.rec* %70 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 1
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %opred151, align 8
  %os1152 = bitcast %union.rec* %71 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 1
  %osucc155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc155, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1156 = bitcast %union.rec* %73 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 1
  %osucc159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc159, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1160 = bitcast %union.rec* %74 to %struct.word_type*
  %olist161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist161, i32 0, i64 1
  %opred163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx162, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred163, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.135, %cond.true.134
  %cond165 = phi %union.rec* [ null, %cond.true.134 ], [ %75, %cond.false.135 ]
  store %union.rec* %cond165, %union.rec** @xx_tmp, align 8
  %76 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %77 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 0
  %osucc169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 1
  %78 = load %union.rec*, %union.rec** %osucc169, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp170 = icmp eq %union.rec* %78, %79
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.end.164
  br label %cond.end.203

cond.false.173:                                   ; preds = %cond.end.164
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %80 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %osucc177, align 8
  store %union.rec* %81, %union.rec** @zz_res, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %82 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 0
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred181, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1182 = bitcast %union.rec* %84 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 0
  %opred185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred185, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1186 = bitcast %union.rec* %86 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 0
  %opred189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred189, align 8
  %os1191 = bitcast %union.rec* %87 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 0
  %osucc194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc194, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1195 = bitcast %union.rec* %89 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 0
  %osucc198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc198, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1199 = bitcast %union.rec* %90 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 0
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred202, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.173, %cond.true.172
  %cond204 = phi %union.rec* [ null, %cond.true.172 ], [ %91, %cond.false.173 ]
  %92 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %92, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %93, %union.rec** @zz_hold, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1205 = bitcast %union.rec* %94 to %struct.word_type*
  %ou1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 1
  %os11207 = bitcast %union.FIRST_UNION* %ou1206 to %struct.anon*
  %otype208 = getelementptr inbounds %struct.anon, %struct.anon* %os11207, i32 0, i32 0
  %95 = load i8, i8* %otype208, align 1
  %conv209 = zext i8 %95 to i32
  %cmp210 = icmp eq i32 %conv209, 11
  br i1 %cmp210, label %cond.true.220, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %cond.end.203
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1213 = bitcast %union.rec* %96 to %struct.word_type*
  %ou1214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 1
  %os11215 = bitcast %union.FIRST_UNION* %ou1214 to %struct.anon*
  %otype216 = getelementptr inbounds %struct.anon, %struct.anon* %os11215, i32 0, i32 0
  %97 = load i8, i8* %otype216, align 1
  %conv217 = zext i8 %97 to i32
  %cmp218 = icmp eq i32 %conv217, 12
  br i1 %cmp218, label %cond.true.220, label %cond.false.226

cond.true.220:                                    ; preds = %lor.lhs.false.212, %cond.end.203
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1221 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 1
  %os11223 = bitcast %union.FIRST_UNION* %ou1222 to %struct.anon*
  %orec_size224 = getelementptr inbounds %struct.anon, %struct.anon* %os11223, i32 0, i32 1
  %99 = load i8, i8* %orec_size224, align 1
  %conv225 = zext i8 %99 to i32
  br label %cond.end.234

cond.false.226:                                   ; preds = %lor.lhs.false.212
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1227 = bitcast %union.rec* %100 to %struct.word_type*
  %ou1228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1227, i32 0, i32 1
  %os11229 = bitcast %union.FIRST_UNION* %ou1228 to %struct.anon*
  %otype230 = getelementptr inbounds %struct.anon, %struct.anon* %os11229, i32 0, i32 0
  %101 = load i8, i8* %otype230, align 1
  %idxprom231 = zext i8 %101 to i64
  %arrayidx232 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom231
  %102 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %102 to i32
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.226, %cond.true.220
  %cond235 = phi i32 [ %conv225, %cond.true.220 ], [ %conv233, %cond.false.226 ]
  store i32 %cond235, i32* @zz_size, align 4
  %103 = load i32, i32* @zz_size, align 4
  %idxprom236 = sext i32 %103 to i64
  %arrayidx237 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom236
  %104 = load %union.rec*, %union.rec** %arrayidx237, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %105 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred241, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = load i32, i32* @zz_size, align 4
  %idxprom242 = sext i32 %107 to i64
  %arrayidx243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom242
  store %union.rec* %106, %union.rec** %arrayidx243, align 8
  %108 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1244 = bitcast %union.rec* %108 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 1
  %osucc247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 1
  %109 = load %union.rec*, %union.rec** %osucc247, align 8
  %110 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp248 = icmp eq %union.rec* %109, %110
  br i1 %cmp248, label %if.then.250, label %if.end

if.then.250:                                      ; preds = %cond.end.234
  %111 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call = call i32 @DisposeObject(%union.rec* %111)
  br label %if.end

if.end:                                           ; preds = %if.then.250, %cond.end.234
  %112 = load i32, i32* @cache_count, align 4
  %dec = add nsw i32 %112, -1
  store i32 %dec, i32* @cache_count, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.end, %entry
  %113 = load i32, i32* %offset.addr, align 4
  %114 = load i16, i16* %fnum.addr, align 2
  %conv252 = zext i16 %114 to i32
  %add = add nsw i32 %113, %conv252
  %rem = srem i32 %add, 211
  store i32 %rem, i32* %pos, align 4
  %115 = load i32, i32* %pos, align 4
  %idxprom253 = sext i32 %115 to i64
  %arrayidx254 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom253
  %116 = load %union.rec*, %union.rec** %arrayidx254, align 8
  %cmp255 = icmp eq %union.rec* %116, null
  br i1 %cmp255, label %if.then.257, label %if.end.303

if.then.257:                                      ; preds = %if.end.251
  %117 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv258 = zext i8 %117 to i32
  store i32 %conv258, i32* @zz_size, align 4
  %conv259 = sext i32 %conv258 to i64
  %cmp260 = icmp uge i64 %conv259, 265
  br i1 %cmp260, label %if.then.262, label %if.else

if.then.262:                                      ; preds = %if.then.257
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call263 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %118)
  br label %if.end.280

if.else:                                          ; preds = %if.then.257
  %119 = load i32, i32* @zz_size, align 4
  %idxprom264 = sext i32 %119 to i64
  %arrayidx265 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom264
  %120 = load %union.rec*, %union.rec** %arrayidx265, align 8
  %cmp266 = icmp eq %union.rec* %120, null
  br i1 %cmp266, label %if.then.268, label %if.else.270

if.then.268:                                      ; preds = %if.else
  %121 = load i32, i32* @zz_size, align 4
  %122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call269 = call %union.rec* @GetMemory(i32 %121, %struct.FILE_POS* %122)
  store %union.rec* %call269, %union.rec** @zz_hold, align 8
  br label %if.end.279

if.else.270:                                      ; preds = %if.else
  %123 = load i32, i32* @zz_size, align 4
  %idxprom271 = sext i32 %123 to i64
  %arrayidx272 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom271
  %124 = load %union.rec*, %union.rec** %arrayidx272, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1273 = bitcast %union.rec* %125 to %struct.word_type*
  %olist274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist274, i32 0, i64 0
  %opred276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx275, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %opred276, align 8
  %127 = load i32, i32* @zz_size, align 4
  %idxprom277 = sext i32 %127 to i64
  %arrayidx278 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom277
  store %union.rec* %126, %union.rec** %arrayidx278, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.270, %if.then.268
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.262
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %os11283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.anon*
  %otype284 = getelementptr inbounds %struct.anon, %struct.anon* %os11283, i32 0, i32 0
  store i8 17, i8* %otype284, align 1
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1285 = bitcast %union.rec* %130 to %struct.word_type*
  %olist286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist286, i32 0, i64 1
  %osucc288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx287, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc288, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %131 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 1
  %opred292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred292, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1293 = bitcast %union.rec* %132 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 0
  %osucc296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc296, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %133 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 0
  %opred300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred300, align 8
  %134 = load i32, i32* %pos, align 4
  %idxprom301 = sext i32 %134 to i64
  %arrayidx302 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom301
  store %union.rec* %129, %union.rec** %arrayidx302, align 8
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.280, %if.end.251
  %135 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv304 = zext i8 %135 to i32
  store i32 %conv304, i32* @zz_size, align 4
  %conv305 = sext i32 %conv304 to i64
  %cmp306 = icmp uge i64 %conv305, 265
  br i1 %cmp306, label %if.then.308, label %if.else.310

if.then.308:                                      ; preds = %if.end.303
  %136 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call309 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %136)
  br label %if.end.327

if.else.310:                                      ; preds = %if.end.303
  %137 = load i32, i32* @zz_size, align 4
  %idxprom311 = sext i32 %137 to i64
  %arrayidx312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom311
  %138 = load %union.rec*, %union.rec** %arrayidx312, align 8
  %cmp313 = icmp eq %union.rec* %138, null
  br i1 %cmp313, label %if.then.315, label %if.else.317

if.then.315:                                      ; preds = %if.else.310
  %139 = load i32, i32* @zz_size, align 4
  %140 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call316 = call %union.rec* @GetMemory(i32 %139, %struct.FILE_POS* %140)
  store %union.rec* %call316, %union.rec** @zz_hold, align 8
  br label %if.end.326

if.else.317:                                      ; preds = %if.else.310
  %141 = load i32, i32* @zz_size, align 4
  %idxprom318 = sext i32 %141 to i64
  %arrayidx319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom318
  %142 = load %union.rec*, %union.rec** %arrayidx319, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %143 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 0
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  %144 = load %union.rec*, %union.rec** %opred323, align 8
  %145 = load i32, i32* @zz_size, align 4
  %idxprom324 = sext i32 %145 to i64
  %arrayidx325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom324
  store %union.rec* %144, %union.rec** %arrayidx325, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.317, %if.then.315
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.308
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %146 to %struct.word_type*
  %ou1329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 1
  %os11330 = bitcast %union.FIRST_UNION* %ou1329 to %struct.anon*
  %otype331 = getelementptr inbounds %struct.anon, %struct.anon* %os11330, i32 0, i32 0
  store i8 17, i8* %otype331, align 1
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %148 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc335, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %149 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred339, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %150 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 0
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc343, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %151 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 0
  %opred347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred347, align 8
  store %union.rec* %147, %union.rec** %x, align 8
  %152 = load i16, i16* %fnum.addr, align 2
  %153 = load %union.rec*, %union.rec** %x, align 8
  %os1348 = bitcast %union.rec* %153 to %struct.word_type*
  %ou1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1349 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %152, i16* %ofile_num, align 2
  %154 = load i32, i32* %offset.addr, align 4
  %155 = load %union.rec*, %union.rec** %x, align 8
  %os1350 = bitcast %union.rec* %155 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  store i32 %154, i32* %arrayidx351, align 4
  %156 = load %union.rec*, %union.rec** %x, align 8
  %os1352 = bitcast %union.rec* %156 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %osized, align 2
  %bf.clear = and i16 %bf.load, -3
  %bf.set = or i16 %bf.clear, 2
  store i16 %bf.set, i16* %osized, align 2
  %157 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv353 = zext i8 %157 to i32
  store i32 %conv353, i32* @zz_size, align 4
  %conv354 = sext i32 %conv353 to i64
  %cmp355 = icmp uge i64 %conv354, 265
  br i1 %cmp355, label %if.then.357, label %if.else.359

if.then.357:                                      ; preds = %if.end.327
  %158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call358 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %158)
  br label %if.end.376

if.else.359:                                      ; preds = %if.end.327
  %159 = load i32, i32* @zz_size, align 4
  %idxprom360 = sext i32 %159 to i64
  %arrayidx361 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom360
  %160 = load %union.rec*, %union.rec** %arrayidx361, align 8
  %cmp362 = icmp eq %union.rec* %160, null
  br i1 %cmp362, label %if.then.364, label %if.else.366

if.then.364:                                      ; preds = %if.else.359
  %161 = load i32, i32* @zz_size, align 4
  %162 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call365 = call %union.rec* @GetMemory(i32 %161, %struct.FILE_POS* %162)
  store %union.rec* %call365, %union.rec** @zz_hold, align 8
  br label %if.end.375

if.else.366:                                      ; preds = %if.else.359
  %163 = load i32, i32* @zz_size, align 4
  %idxprom367 = sext i32 %163 to i64
  %arrayidx368 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom367
  %164 = load %union.rec*, %union.rec** %arrayidx368, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1369 = bitcast %union.rec* %165 to %struct.word_type*
  %olist370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist370, i32 0, i64 0
  %opred372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx371, i32 0, i32 0
  %166 = load %union.rec*, %union.rec** %opred372, align 8
  %167 = load i32, i32* @zz_size, align 4
  %idxprom373 = sext i32 %167 to i64
  %arrayidx374 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom373
  store %union.rec* %166, %union.rec** %arrayidx374, align 8
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.366, %if.then.364
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.357
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1377 = bitcast %union.rec* %168 to %struct.word_type*
  %ou1378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 1
  %os11379 = bitcast %union.FIRST_UNION* %ou1378 to %struct.anon*
  %otype380 = getelementptr inbounds %struct.anon, %struct.anon* %os11379, i32 0, i32 0
  store i8 0, i8* %otype380, align 1
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1381 = bitcast %union.rec* %170 to %struct.word_type*
  %olist382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist382, i32 0, i64 1
  %osucc384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx383, i32 0, i32 1
  store %union.rec* %169, %union.rec** %osucc384, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1385 = bitcast %union.rec* %171 to %struct.word_type*
  %olist386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1385, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist386, i32 0, i64 1
  %opred388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx387, i32 0, i32 0
  store %union.rec* %169, %union.rec** %opred388, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1389 = bitcast %union.rec* %172 to %struct.word_type*
  %olist390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist390, i32 0, i64 0
  %osucc392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx391, i32 0, i32 1
  store %union.rec* %169, %union.rec** %osucc392, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1393 = bitcast %union.rec* %173 to %struct.word_type*
  %olist394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist394, i32 0, i64 0
  %opred396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx395, i32 0, i32 0
  store %union.rec* %169, %union.rec** %opred396, align 8
  store %union.rec* %169, %union.rec** @xx_link, align 8
  %174 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %174, %union.rec** @zz_res, align 8
  %175 = load i32, i32* %pos, align 4
  %idxprom397 = sext i32 %175 to i64
  %arrayidx398 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %idxprom397
  %176 = load %union.rec*, %union.rec** %arrayidx398, align 8
  store %union.rec* %176, %union.rec** @zz_hold, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp399 = icmp eq %union.rec* %177, null
  br i1 %cmp399, label %cond.true.401, label %cond.false.402

cond.true.401:                                    ; preds = %if.end.376
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.437

cond.false.402:                                   ; preds = %if.end.376
  %179 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp403 = icmp eq %union.rec* %179, null
  br i1 %cmp403, label %cond.true.405, label %cond.false.406

cond.true.405:                                    ; preds = %cond.false.402
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.435

cond.false.406:                                   ; preds = %cond.false.402
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1407 = bitcast %union.rec* %181 to %struct.word_type*
  %olist408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist408, i32 0, i64 0
  %opred410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx409, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %opred410, align 8
  store %union.rec* %182, %union.rec** @zz_tmp, align 8
  %183 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1411 = bitcast %union.rec* %183 to %struct.word_type*
  %olist412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 0
  %arrayidx413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist412, i32 0, i64 0
  %opred414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx413, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %opred414, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1415 = bitcast %union.rec* %185 to %struct.word_type*
  %olist416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist416, i32 0, i64 0
  %opred418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx417, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred418, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %187 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1419 = bitcast %union.rec* %187 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 0
  %opred422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred422, align 8
  %os1423 = bitcast %union.rec* %188 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 0
  %osucc426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 1
  store %union.rec* %186, %union.rec** %osucc426, align 8
  %189 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %190 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1427 = bitcast %union.rec* %190 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 0
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  store %union.rec* %189, %union.rec** %opred430, align 8
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  %192 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1431 = bitcast %union.rec* %192 to %struct.word_type*
  %olist432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist432, i32 0, i64 0
  %osucc434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx433, i32 0, i32 1
  store %union.rec* %191, %union.rec** %osucc434, align 8
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.406, %cond.true.405
  %cond436 = phi %union.rec* [ %180, %cond.true.405 ], [ %191, %cond.false.406 ]
  br label %cond.end.437

cond.end.437:                                     ; preds = %cond.end.435, %cond.true.401
  %cond438 = phi %union.rec* [ %178, %cond.true.401 ], [ %cond436, %cond.end.435 ]
  %193 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %193, %union.rec** @zz_res, align 8
  %194 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %194, %union.rec** @zz_hold, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp439 = icmp eq %union.rec* %195, null
  br i1 %cmp439, label %cond.true.441, label %cond.false.442

cond.true.441:                                    ; preds = %cond.end.437
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.477

cond.false.442:                                   ; preds = %cond.end.437
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp443 = icmp eq %union.rec* %197, null
  br i1 %cmp443, label %cond.true.445, label %cond.false.446

cond.true.445:                                    ; preds = %cond.false.442
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.475

cond.false.446:                                   ; preds = %cond.false.442
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1447 = bitcast %union.rec* %199 to %struct.word_type*
  %olist448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1447, i32 0, i32 0
  %arrayidx449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist448, i32 0, i64 1
  %opred450 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx449, i32 0, i32 0
  %200 = load %union.rec*, %union.rec** %opred450, align 8
  store %union.rec* %200, %union.rec** @zz_tmp, align 8
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1451 = bitcast %union.rec* %201 to %struct.word_type*
  %olist452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1451, i32 0, i32 0
  %arrayidx453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist452, i32 0, i64 1
  %opred454 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx453, i32 0, i32 0
  %202 = load %union.rec*, %union.rec** %opred454, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1455 = bitcast %union.rec* %203 to %struct.word_type*
  %olist456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 0
  %arrayidx457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist456, i32 0, i64 1
  %opred458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx457, i32 0, i32 0
  store %union.rec* %202, %union.rec** %opred458, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1459 = bitcast %union.rec* %205 to %struct.word_type*
  %olist460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist460, i32 0, i64 1
  %opred462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx461, i32 0, i32 0
  %206 = load %union.rec*, %union.rec** %opred462, align 8
  %os1463 = bitcast %union.rec* %206 to %struct.word_type*
  %olist464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1463, i32 0, i32 0
  %arrayidx465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist464, i32 0, i64 1
  %osucc466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx465, i32 0, i32 1
  store %union.rec* %204, %union.rec** %osucc466, align 8
  %207 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1467 = bitcast %union.rec* %208 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 1
  %opred470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 0
  store %union.rec* %207, %union.rec** %opred470, align 8
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1471 = bitcast %union.rec* %210 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 1
  %osucc474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 1
  store %union.rec* %209, %union.rec** %osucc474, align 8
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.446, %cond.true.445
  %cond476 = phi %union.rec* [ %198, %cond.true.445 ], [ %209, %cond.false.446 ]
  br label %cond.end.477

cond.end.477:                                     ; preds = %cond.end.475, %cond.true.441
  %cond478 = phi %union.rec* [ %196, %cond.true.441 ], [ %cond476, %cond.end.475 ]
  %211 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv479 = zext i8 %211 to i32
  store i32 %conv479, i32* @zz_size, align 4
  %conv480 = sext i32 %conv479 to i64
  %cmp481 = icmp uge i64 %conv480, 265
  br i1 %cmp481, label %if.then.483, label %if.else.485

if.then.483:                                      ; preds = %cond.end.477
  %212 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call484 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %212)
  br label %if.end.502

if.else.485:                                      ; preds = %cond.end.477
  %213 = load i32, i32* @zz_size, align 4
  %idxprom486 = sext i32 %213 to i64
  %arrayidx487 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom486
  %214 = load %union.rec*, %union.rec** %arrayidx487, align 8
  %cmp488 = icmp eq %union.rec* %214, null
  br i1 %cmp488, label %if.then.490, label %if.else.492

if.then.490:                                      ; preds = %if.else.485
  %215 = load i32, i32* @zz_size, align 4
  %216 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call491 = call %union.rec* @GetMemory(i32 %215, %struct.FILE_POS* %216)
  store %union.rec* %call491, %union.rec** @zz_hold, align 8
  br label %if.end.501

if.else.492:                                      ; preds = %if.else.485
  %217 = load i32, i32* @zz_size, align 4
  %idxprom493 = sext i32 %217 to i64
  %arrayidx494 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom493
  %218 = load %union.rec*, %union.rec** %arrayidx494, align 8
  store %union.rec* %218, %union.rec** @zz_hold, align 8
  store %union.rec* %218, %union.rec** @zz_hold, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1495 = bitcast %union.rec* %219 to %struct.word_type*
  %olist496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist496, i32 0, i64 0
  %opred498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx497, i32 0, i32 0
  %220 = load %union.rec*, %union.rec** %opred498, align 8
  %221 = load i32, i32* @zz_size, align 4
  %idxprom499 = sext i32 %221 to i64
  %arrayidx500 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom499
  store %union.rec* %220, %union.rec** %arrayidx500, align 8
  br label %if.end.501

if.end.501:                                       ; preds = %if.else.492, %if.then.490
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.501, %if.then.483
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1503 = bitcast %union.rec* %222 to %struct.word_type*
  %ou1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 1
  %os11505 = bitcast %union.FIRST_UNION* %ou1504 to %struct.anon*
  %otype506 = getelementptr inbounds %struct.anon, %struct.anon* %os11505, i32 0, i32 0
  store i8 0, i8* %otype506, align 1
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1507 = bitcast %union.rec* %224 to %struct.word_type*
  %olist508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist508, i32 0, i64 1
  %osucc510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx509, i32 0, i32 1
  store %union.rec* %223, %union.rec** %osucc510, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1511 = bitcast %union.rec* %225 to %struct.word_type*
  %olist512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist512, i32 0, i64 1
  %opred514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx513, i32 0, i32 0
  store %union.rec* %223, %union.rec** %opred514, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1515 = bitcast %union.rec* %226 to %struct.word_type*
  %olist516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 0
  %arrayidx517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist516, i32 0, i64 0
  %osucc518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx517, i32 0, i32 1
  store %union.rec* %223, %union.rec** %osucc518, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1519 = bitcast %union.rec* %227 to %struct.word_type*
  %olist520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1519, i32 0, i32 0
  %arrayidx521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist520, i32 0, i64 0
  %opred522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx521, i32 0, i32 0
  store %union.rec* %223, %union.rec** %opred522, align 8
  store %union.rec* %223, %union.rec** @xx_link, align 8
  %228 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %228, %union.rec** @zz_res, align 8
  %229 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %229, %union.rec** @zz_hold, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp523 = icmp eq %union.rec* %230, null
  br i1 %cmp523, label %cond.true.525, label %cond.false.526

cond.true.525:                                    ; preds = %if.end.502
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.561

cond.false.526:                                   ; preds = %if.end.502
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp527 = icmp eq %union.rec* %232, null
  br i1 %cmp527, label %cond.true.529, label %cond.false.530

cond.true.529:                                    ; preds = %cond.false.526
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.559

cond.false.530:                                   ; preds = %cond.false.526
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1531 = bitcast %union.rec* %234 to %struct.word_type*
  %olist532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1531, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist532, i32 0, i64 0
  %opred534 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx533, i32 0, i32 0
  %235 = load %union.rec*, %union.rec** %opred534, align 8
  store %union.rec* %235, %union.rec** @zz_tmp, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1535 = bitcast %union.rec* %236 to %struct.word_type*
  %olist536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1535, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist536, i32 0, i64 0
  %opred538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx537, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %opred538, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1539 = bitcast %union.rec* %238 to %struct.word_type*
  %olist540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist540, i32 0, i64 0
  %opred542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx541, i32 0, i32 0
  store %union.rec* %237, %union.rec** %opred542, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1543 = bitcast %union.rec* %240 to %struct.word_type*
  %olist544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1543, i32 0, i32 0
  %arrayidx545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist544, i32 0, i64 0
  %opred546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx545, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %opred546, align 8
  %os1547 = bitcast %union.rec* %241 to %struct.word_type*
  %olist548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1547, i32 0, i32 0
  %arrayidx549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist548, i32 0, i64 0
  %osucc550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx549, i32 0, i32 1
  store %union.rec* %239, %union.rec** %osucc550, align 8
  %242 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1551 = bitcast %union.rec* %243 to %struct.word_type*
  %olist552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1551, i32 0, i32 0
  %arrayidx553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist552, i32 0, i64 0
  %opred554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx553, i32 0, i32 0
  store %union.rec* %242, %union.rec** %opred554, align 8
  %244 = load %union.rec*, %union.rec** @zz_res, align 8
  %245 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1555 = bitcast %union.rec* %245 to %struct.word_type*
  %olist556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist556, i32 0, i64 0
  %osucc558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx557, i32 0, i32 1
  store %union.rec* %244, %union.rec** %osucc558, align 8
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.530, %cond.true.529
  %cond560 = phi %union.rec* [ %233, %cond.true.529 ], [ %244, %cond.false.530 ]
  br label %cond.end.561

cond.end.561:                                     ; preds = %cond.end.559, %cond.true.525
  %cond562 = phi %union.rec* [ %231, %cond.true.525 ], [ %cond560, %cond.end.559 ]
  %246 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %246, %union.rec** @zz_res, align 8
  %247 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %247, %union.rec** @zz_hold, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp563 = icmp eq %union.rec* %248, null
  br i1 %cmp563, label %cond.true.565, label %cond.false.566

cond.true.565:                                    ; preds = %cond.end.561
  %249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.601

cond.false.566:                                   ; preds = %cond.end.561
  %250 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp567 = icmp eq %union.rec* %250, null
  br i1 %cmp567, label %cond.true.569, label %cond.false.570

cond.true.569:                                    ; preds = %cond.false.566
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.599

cond.false.570:                                   ; preds = %cond.false.566
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1571 = bitcast %union.rec* %252 to %struct.word_type*
  %olist572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist572, i32 0, i64 1
  %opred574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx573, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred574, align 8
  store %union.rec* %253, %union.rec** @zz_tmp, align 8
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1575 = bitcast %union.rec* %254 to %struct.word_type*
  %olist576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist576, i32 0, i64 1
  %opred578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx577, i32 0, i32 0
  %255 = load %union.rec*, %union.rec** %opred578, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1579 = bitcast %union.rec* %256 to %struct.word_type*
  %olist580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1579, i32 0, i32 0
  %arrayidx581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist580, i32 0, i64 1
  %opred582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx581, i32 0, i32 0
  store %union.rec* %255, %union.rec** %opred582, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1583 = bitcast %union.rec* %258 to %struct.word_type*
  %olist584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 0
  %arrayidx585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist584, i32 0, i64 1
  %opred586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx585, i32 0, i32 0
  %259 = load %union.rec*, %union.rec** %opred586, align 8
  %os1587 = bitcast %union.rec* %259 to %struct.word_type*
  %olist588 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1587, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist588, i32 0, i64 1
  %osucc590 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx589, i32 0, i32 1
  store %union.rec* %257, %union.rec** %osucc590, align 8
  %260 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1591 = bitcast %union.rec* %261 to %struct.word_type*
  %olist592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist592, i32 0, i64 1
  %opred594 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx593, i32 0, i32 0
  store %union.rec* %260, %union.rec** %opred594, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1595 = bitcast %union.rec* %263 to %struct.word_type*
  %olist596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1595, i32 0, i32 0
  %arrayidx597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist596, i32 0, i64 1
  %osucc598 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx597, i32 0, i32 1
  store %union.rec* %262, %union.rec** %osucc598, align 8
  br label %cond.end.599

cond.end.599:                                     ; preds = %cond.false.570, %cond.true.569
  %cond600 = phi %union.rec* [ %251, %cond.true.569 ], [ %262, %cond.false.570 ]
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.end.599, %cond.true.565
  %cond602 = phi %union.rec* [ %249, %cond.true.565 ], [ %cond600, %cond.end.599 ]
  %264 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv603 = zext i8 %264 to i32
  store i32 %conv603, i32* @zz_size, align 4
  %conv604 = sext i32 %conv603 to i64
  %cmp605 = icmp uge i64 %conv604, 265
  br i1 %cmp605, label %if.then.607, label %if.else.609

if.then.607:                                      ; preds = %cond.end.601
  %265 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call608 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %265)
  br label %if.end.626

if.else.609:                                      ; preds = %cond.end.601
  %266 = load i32, i32* @zz_size, align 4
  %idxprom610 = sext i32 %266 to i64
  %arrayidx611 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom610
  %267 = load %union.rec*, %union.rec** %arrayidx611, align 8
  %cmp612 = icmp eq %union.rec* %267, null
  br i1 %cmp612, label %if.then.614, label %if.else.616

if.then.614:                                      ; preds = %if.else.609
  %268 = load i32, i32* @zz_size, align 4
  %269 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call615 = call %union.rec* @GetMemory(i32 %268, %struct.FILE_POS* %269)
  store %union.rec* %call615, %union.rec** @zz_hold, align 8
  br label %if.end.625

if.else.616:                                      ; preds = %if.else.609
  %270 = load i32, i32* @zz_size, align 4
  %idxprom617 = sext i32 %270 to i64
  %arrayidx618 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom617
  %271 = load %union.rec*, %union.rec** %arrayidx618, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1619 = bitcast %union.rec* %272 to %struct.word_type*
  %olist620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1619, i32 0, i32 0
  %arrayidx621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist620, i32 0, i64 0
  %opred622 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx621, i32 0, i32 0
  %273 = load %union.rec*, %union.rec** %opred622, align 8
  %274 = load i32, i32* @zz_size, align 4
  %idxprom623 = sext i32 %274 to i64
  %arrayidx624 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom623
  store %union.rec* %273, %union.rec** %arrayidx624, align 8
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.616, %if.then.614
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625, %if.then.607
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1627 = bitcast %union.rec* %275 to %struct.word_type*
  %ou1628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1627, i32 0, i32 1
  %os11629 = bitcast %union.FIRST_UNION* %ou1628 to %struct.anon*
  %otype630 = getelementptr inbounds %struct.anon, %struct.anon* %os11629, i32 0, i32 0
  store i8 0, i8* %otype630, align 1
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1631 = bitcast %union.rec* %277 to %struct.word_type*
  %olist632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1631, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist632, i32 0, i64 1
  %osucc634 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx633, i32 0, i32 1
  store %union.rec* %276, %union.rec** %osucc634, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1635 = bitcast %union.rec* %278 to %struct.word_type*
  %olist636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist636, i32 0, i64 1
  %opred638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx637, i32 0, i32 0
  store %union.rec* %276, %union.rec** %opred638, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1639 = bitcast %union.rec* %279 to %struct.word_type*
  %olist640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist640, i32 0, i64 0
  %osucc642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx641, i32 0, i32 1
  store %union.rec* %276, %union.rec** %osucc642, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1643 = bitcast %union.rec* %280 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 0
  %opred646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 0
  store %union.rec* %276, %union.rec** %opred646, align 8
  store %union.rec* %276, %union.rec** @xx_link, align 8
  %281 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %281, %union.rec** @zz_res, align 8
  %282 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %282, %union.rec** @zz_hold, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp647 = icmp eq %union.rec* %283, null
  br i1 %cmp647, label %cond.true.649, label %cond.false.650

cond.true.649:                                    ; preds = %if.end.626
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.685

cond.false.650:                                   ; preds = %if.end.626
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp651 = icmp eq %union.rec* %285, null
  br i1 %cmp651, label %cond.true.653, label %cond.false.654

cond.true.653:                                    ; preds = %cond.false.650
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.683

cond.false.654:                                   ; preds = %cond.false.650
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1655 = bitcast %union.rec* %287 to %struct.word_type*
  %olist656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist656, i32 0, i64 0
  %opred658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx657, i32 0, i32 0
  %288 = load %union.rec*, %union.rec** %opred658, align 8
  store %union.rec* %288, %union.rec** @zz_tmp, align 8
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1659 = bitcast %union.rec* %289 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 0
  %opred662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred662, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1663 = bitcast %union.rec* %291 to %struct.word_type*
  %olist664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 0
  %arrayidx665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist664, i32 0, i64 0
  %opred666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx665, i32 0, i32 0
  store %union.rec* %290, %union.rec** %opred666, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1667 = bitcast %union.rec* %293 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 0
  %opred670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 0
  %294 = load %union.rec*, %union.rec** %opred670, align 8
  %os1671 = bitcast %union.rec* %294 to %struct.word_type*
  %olist672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist672, i32 0, i64 0
  %osucc674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx673, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc674, align 8
  %295 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1675 = bitcast %union.rec* %296 to %struct.word_type*
  %olist676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist676, i32 0, i64 0
  %opred678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx677, i32 0, i32 0
  store %union.rec* %295, %union.rec** %opred678, align 8
  %297 = load %union.rec*, %union.rec** @zz_res, align 8
  %298 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1679 = bitcast %union.rec* %298 to %struct.word_type*
  %olist680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1679, i32 0, i32 0
  %arrayidx681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist680, i32 0, i64 0
  %osucc682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx681, i32 0, i32 1
  store %union.rec* %297, %union.rec** %osucc682, align 8
  br label %cond.end.683

cond.end.683:                                     ; preds = %cond.false.654, %cond.true.653
  %cond684 = phi %union.rec* [ %286, %cond.true.653 ], [ %297, %cond.false.654 ]
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.end.683, %cond.true.649
  %cond686 = phi %union.rec* [ %284, %cond.true.649 ], [ %cond684, %cond.end.683 ]
  %299 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %299, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** %env.addr, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp687 = icmp eq %union.rec* %301, null
  br i1 %cmp687, label %cond.true.689, label %cond.false.690

cond.true.689:                                    ; preds = %cond.end.685
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.725

cond.false.690:                                   ; preds = %cond.end.685
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp691 = icmp eq %union.rec* %303, null
  br i1 %cmp691, label %cond.true.693, label %cond.false.694

cond.true.693:                                    ; preds = %cond.false.690
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.723

cond.false.694:                                   ; preds = %cond.false.690
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1695 = bitcast %union.rec* %305 to %struct.word_type*
  %olist696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1695, i32 0, i32 0
  %arrayidx697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist696, i32 0, i64 1
  %opred698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx697, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred698, align 8
  store %union.rec* %306, %union.rec** @zz_tmp, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1699 = bitcast %union.rec* %307 to %struct.word_type*
  %olist700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist700, i32 0, i64 1
  %opred702 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx701, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %opred702, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1703 = bitcast %union.rec* %309 to %struct.word_type*
  %olist704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist704, i32 0, i64 1
  %opred706 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx705, i32 0, i32 0
  store %union.rec* %308, %union.rec** %opred706, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1707 = bitcast %union.rec* %311 to %struct.word_type*
  %olist708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1707, i32 0, i32 0
  %arrayidx709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist708, i32 0, i64 1
  %opred710 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx709, i32 0, i32 0
  %312 = load %union.rec*, %union.rec** %opred710, align 8
  %os1711 = bitcast %union.rec* %312 to %struct.word_type*
  %olist712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1711, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist712, i32 0, i64 1
  %osucc714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx713, i32 0, i32 1
  store %union.rec* %310, %union.rec** %osucc714, align 8
  %313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1715 = bitcast %union.rec* %314 to %struct.word_type*
  %olist716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist716, i32 0, i64 1
  %opred718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx717, i32 0, i32 0
  store %union.rec* %313, %union.rec** %opred718, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1719 = bitcast %union.rec* %316 to %struct.word_type*
  %olist720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1719, i32 0, i32 0
  %arrayidx721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist720, i32 0, i64 1
  %osucc722 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx721, i32 0, i32 1
  store %union.rec* %315, %union.rec** %osucc722, align 8
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.694, %cond.true.693
  %cond724 = phi %union.rec* [ %304, %cond.true.693 ], [ %315, %cond.false.694 ]
  br label %cond.end.725

cond.end.725:                                     ; preds = %cond.end.723, %cond.true.689
  %cond726 = phi %union.rec* [ %302, %cond.true.689 ], [ %cond724, %cond.end.723 ]
  %317 = load i32, i32* @cache_count, align 4
  %inc = add nsw i32 %317, 1
  store i32 %inc, i32* @cache_count, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
