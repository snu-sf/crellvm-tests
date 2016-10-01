; ModuleID = './MultiSource.Benchmarks.MiBench/56.consumer-typeset.z02.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i8, i8*, i16, %struct._IO_FILE*, %struct.FILE_POS, i16, %union.rec*, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.0 = type { i8, i8, i32 }
%struct.anon.6 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.1 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }

@chtbl = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\C0\C1\C2\C3\C4\C5\C6\C7\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\C8\C9\CA\CB\CC\CD\CE\CF\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\D0\D1\D2\D3\D4\D5\D6\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\D8\D9\DA\DB\DC\DD\DE\DF\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\E0\E1\E2\E3\E4\E5\E6\E7\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\E8\E9\EA\EB\EC\ED\EE\EF\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\F0\F1\F2\F3\F4\F5\F6\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\F8\F9\FA\FB\FC\FD\FE\FF\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stack_free = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [66 x i8] c"too many open files when opening include file %s; open files are:\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"too many open files when opening database file %s; open files are:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@lex_stack = internal global [10 x %struct.anon] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"exiting now\00", align 1
@chpt = internal global i8* null, align 8
@frst = internal global i8* null, align 8
@limit = internal global i8* null, align 8
@buf = internal global i8* null, align 8
@blksize = internal global i32 0, align 4
@last_char = internal global i8 0, align 1
@startline = internal global i8* null, align 8
@this_file = internal global i16 0, align 2
@fp = internal global %struct._IO_FILE* null, align 8
@ftype = internal global i16 0, align 2
@next_token = internal global %union.rec* null, align 8
@offset = internal global i32 0, align 4
@first_line_num = internal global i32 0, align 4
@same_file = internal global i32 0, align 4
@mem_block = internal global i8* null, align 8
@file_pos = internal global %struct.FILE_POS zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [39 x i8] c"run out of memory when opening file %s\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"LexPop: stack_free <= 0!\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"illegal macro invocation in database\00", align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@StartSym = external global %union.rec*, align 8
@.str.27 = private unnamed_addr constant [35 x i8] c"character %c outside quoted string\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"cannot open file %s\00", align 1
@FilterOutSym = external global %union.rec*, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"unknown file type\00", align 1
@zz_size = external global i32, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@.str.31 = private unnamed_addr constant [19 x i8] c"recursion in macro\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"%s expected (after %s)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"name of include file expected here\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"skipping null character in string\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"LexGetToken: error in quoted string\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"LexGetToken: bad chtbl[]\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"line is too long (or final newline missing)\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"filter parameter in macro\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"end of file reached while reading %s\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"end of file reached while reading filter parameter\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"expected %s here (after %s)\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"expected file name here\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"cannot open include file %s\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"unreadable character (octal %o)\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"LexScanVerbatim: bad chtbl[]\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"a database file must end with a newline; this one doesn't\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.56 = private unnamed_addr constant [4 x i8] c"1vx\00", align 1

; Function Attrs: nounwind uwtable
define i32 @LexLegalName(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = zext i8 %5 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv6, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %res, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.23, %sw.bb.13
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 %idxprom15
  %13 = load i8, i8* %arrayidx16, align 1
  %idxprom17 = zext i8 %13 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom17
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %for.body.22, label %for.end.25

for.body.22:                                      ; preds = %for.cond.14
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.22
  %15 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.14

for.end.25:                                       ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %17, i64 %idxprom26
  %18 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %18 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.25, %for.end
  %19 = load i32, i32* %res, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @LexInit() #0 {
entry:
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  call void @initchtbl(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  call void @initchtbl(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  call void @initchtbl(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  call void @initchtbl(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  call void @initchtbl(i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  call void @initchtbl(i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  call void @initchtbl(i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  call void @initchtbl(i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  store i8 9, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @chtbl, i32 0, i64 0), align 1
  store i32 -1, i32* @stack_free, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initchtbl(i32 %val, i8* %str) #0 {
entry:
  %val.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %val.addr, align 4
  %conv2 = trunc i32 %3 to i8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i8*, i8** %str.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = zext i8 %6 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom5
  store i8 %conv2, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LexPush(i16 zeroext %x, i32 %offs, i32 %ftyp, i32 %lnum, i32 %same) #0 {
entry:
  %x.addr = alloca i16, align 2
  %offs.addr = alloca i32, align 4
  %ftyp.addr = alloca i32, align 4
  %lnum.addr = alloca i32, align 4
  %same.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16 %x, i16* %x.addr, align 2
  store i32 %offs, i32* %offs.addr, align 4
  store i32 %ftyp, i32* %ftyp.addr, align 4
  store i32 %lnum, i32* %lnum.addr, align 4
  store i32 %same, i32* %same.addr, align 4
  %0 = load i32, i32* @stack_free, align 4
  %cmp = icmp sge i32 %0, 9
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ftyp.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i16, i16* %x.addr, align 2
  %call = call %struct.FILE_POS* @PosOfFile(i16 zeroext %2)
  %3 = load i16, i16* %x.addr, align 2
  %call3 = call i8* @FullFileName(i16 zeroext %3)
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %call, i8* %call3)
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load i16, i16* %x.addr, align 2
  %call5 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %4)
  %5 = load i16, i16* %x.addr, align 2
  %call6 = call i8* @FileName(i16 zeroext %5)
  %call7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %call5, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %6 = load i32, i32* @stack_free, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %7, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom
  %this_file = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 7
  %10 = load i16, i16* %this_file, align 2
  %call9 = call i8* @EchoFileSource(i16 zeroext %10)
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %8, i8* %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %12)
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %entry
  %13 = load i32, i32* @stack_free, align 4
  %cmp13 = icmp sge i32 %13, 0
  br i1 %cmp13, label %if.then.14, label %if.end.61

if.then.14:                                       ; preds = %if.end.12
  %14 = load i8*, i8** @chpt, align 8
  %15 = load i32, i32* @stack_free, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom15
  %chpt = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx16, i32 0, i32 0
  store i8* %14, i8** %chpt, align 8
  %16 = load i8*, i8** @frst, align 8
  %17 = load i32, i32* @stack_free, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom17
  %frst = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx18, i32 0, i32 1
  store i8* %16, i8** %frst, align 8
  %18 = load i8*, i8** @limit, align 8
  %19 = load i32, i32* @stack_free, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom19
  %limit = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx20, i32 0, i32 2
  store i8* %18, i8** %limit, align 8
  %20 = load i8*, i8** @buf, align 8
  %21 = load i32, i32* @stack_free, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom21
  %buf = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx22, i32 0, i32 3
  store i8* %20, i8** %buf, align 8
  %22 = load i32, i32* @blksize, align 4
  %23 = load i32, i32* @stack_free, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom23
  %blksize = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx24, i32 0, i32 4
  store i32 %22, i32* %blksize, align 4
  %24 = load i8, i8* @last_char, align 1
  %25 = load i32, i32* @stack_free, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom25
  %last_char = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx26, i32 0, i32 5
  store i8 %24, i8* %last_char, align 1
  %26 = load i8*, i8** @startline, align 8
  %27 = load i32, i32* @stack_free, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom27
  %startline = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx28, i32 0, i32 6
  store i8* %26, i8** %startline, align 8
  %28 = load i16, i16* @this_file, align 2
  %29 = load i32, i32* @stack_free, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom29
  %this_file31 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx30, i32 0, i32 7
  store i16 %28, i16* %this_file31, align 2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %31 = load i32, i32* @stack_free, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom32
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx33, i32 0, i32 8
  store %struct._IO_FILE* %30, %struct._IO_FILE** %fp, align 8
  %32 = load i16, i16* @ftype, align 2
  %33 = load i32, i32* @stack_free, align 4
  %idxprom34 = sext i32 %33 to i64
  %arrayidx35 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom34
  %ftype = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx35, i32 0, i32 10
  store i16 %32, i16* %ftype, align 2
  %34 = load %union.rec*, %union.rec** @next_token, align 8
  %35 = load i32, i32* @stack_free, align 4
  %idxprom36 = sext i32 %35 to i64
  %arrayidx37 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom36
  %next_token = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx37, i32 0, i32 11
  store %union.rec* %34, %union.rec** %next_token, align 8
  %36 = load i32, i32* @offset, align 4
  %37 = load i32, i32* @stack_free, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom38
  %offset = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx39, i32 0, i32 12
  store i32 %36, i32* %offset, align 4
  %38 = load i32, i32* @first_line_num, align 4
  %39 = load i32, i32* @stack_free, align 4
  %idxprom40 = sext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom40
  %first_line_num = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx41, i32 0, i32 13
  store i32 %38, i32* %first_line_num, align 4
  %40 = load i32, i32* @same_file, align 4
  %41 = load i32, i32* @stack_free, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom42
  %same_file = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx43, i32 0, i32 14
  store i32 %40, i32* %same_file, align 4
  %42 = load i8*, i8** @mem_block, align 8
  %43 = load i32, i32* @stack_free, align 4
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom44
  %mem_block = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx45, i32 0, i32 16
  store i8* %42, i8** %mem_block, align 8
  %44 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %45 = load i32, i32* @stack_free, align 4
  %idxprom46 = sext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom46
  %file_pos = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx47, i32 0, i32 9
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %file_pos, i32 0, i32 2
  store i16 %44, i16* %ofile_num, align 2
  %bf.load = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear = and i32 %bf.load, 1048575
  %46 = load i32, i32* @stack_free, align 4
  %idxprom48 = sext i32 %46 to i64
  %arrayidx49 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom48
  %file_pos50 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx49, i32 0, i32 9
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %file_pos50, i32 0, i32 3
  %bf.load51 = load i32, i32* %oline_num, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear52 = and i32 %bf.load51, -1048576
  %bf.set = or i32 %bf.clear52, %bf.value
  store i32 %bf.set, i32* %oline_num, align 4
  %bf.load53 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr = lshr i32 %bf.load53, 20
  %47 = load i32, i32* @stack_free, align 4
  %idxprom54 = sext i32 %47 to i64
  %arrayidx55 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom54
  %file_pos56 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx55, i32 0, i32 9
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %file_pos56, i32 0, i32 3
  %bf.load57 = load i32, i32* %ocol_num, align 4
  %bf.value58 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value58, 20
  %bf.clear59 = and i32 %bf.load57, 1048575
  %bf.set60 = or i32 %bf.clear59, %bf.shl
  store i32 %bf.set60, i32* %ocol_num, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.14, %if.end.12
  %48 = load i32, i32* @stack_free, align 4
  %add = add nsw i32 %48, 1
  store i32 %add, i32* @stack_free, align 4
  %call62 = call noalias i8* @malloc(i64 10242) #4
  store i8* %call62, i8** @mem_block, align 8
  %49 = load i8*, i8** @mem_block, align 8
  %cmp63 = icmp eq i8* %49, null
  br i1 %cmp63, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %if.end.61
  %50 = load i16, i16* %x.addr, align 2
  %call65 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %50)
  %51 = load i16, i16* %x.addr, align 2
  %call66 = call i8* @FullFileName(i16 zeroext %51)
  %call67 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 1, %struct.FILE_POS* %call65, i8* %call66)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %if.end.61
  %52 = load i8*, i8** @mem_block, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %52, i64 2048
  store i8* %arrayidx69, i8** @chpt, align 8
  store i8* %arrayidx69, i8** @buf, align 8
  store i8 10, i8* @last_char, align 1
  %53 = load i16, i16* %x.addr, align 2
  store i16 %53, i16* @this_file, align 2
  %54 = load i32, i32* %offs.addr, align 4
  store i32 %54, i32* @offset, align 4
  %55 = load i32, i32* %lnum.addr, align 4
  store i32 %55, i32* @first_line_num, align 4
  %56 = load i32, i32* %same.addr, align 4
  store i32 %56, i32* @same_file, align 4
  %57 = load i32, i32* %ftyp.addr, align 4
  %conv = trunc i32 %57 to i16
  store i16 %conv, i16* @ftype, align 2
  store %union.rec* null, %union.rec** @next_token, align 8
  %58 = load i8*, i8** @chpt, align 8
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* @same_file, align 4
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.70, label %if.else.75

if.then.70:                                       ; preds = %if.end.68
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call71 = call i64 @ftell(%struct._IO_FILE* %60)
  %61 = load i32, i32* @stack_free, align 4
  %sub72 = sub nsw i32 %61, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom73
  %save_ftell = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx74, i32 0, i32 15
  store i64 %call71, i64* %save_ftell, align 8
  br label %if.end.76

if.else.75:                                       ; preds = %if.end.68
  store %struct._IO_FILE* null, %struct._IO_FILE** @fp, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.70
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #1

declare i8* @FullFileName(i16 zeroext) #1

declare i8* @FileName(i16 zeroext) #1

declare i8* @EchoFileSource(i16 zeroext) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @LexPop() #0 {
entry:
  %0 = load i32, i32* @stack_free, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @stack_free, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @stack_free, align 4
  %3 = load i32, i32* @same_file, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %5 = load i32, i32* @stack_free, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom
  %save_ftell = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 15
  %6 = load i64, i64* %save_ftell, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %4, i64 %6, i32 0)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp3 = icmp ne %struct._IO_FILE* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.1
  %9 = load i8*, i8** @mem_block, align 8
  call void @free(i8* %9) #4
  %10 = load i32, i32* @stack_free, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom8
  %mem_block = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx9, i32 0, i32 16
  %11 = load i8*, i8** %mem_block, align 8
  store i8* %11, i8** @mem_block, align 8
  %12 = load i32, i32* @stack_free, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom10
  %chpt = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx11, i32 0, i32 0
  %13 = load i8*, i8** %chpt, align 8
  store i8* %13, i8** @chpt, align 8
  %14 = load i32, i32* @stack_free, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom12
  %frst = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx13, i32 0, i32 1
  %15 = load i8*, i8** %frst, align 8
  store i8* %15, i8** @frst, align 8
  %16 = load i32, i32* @stack_free, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom14
  %limit = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx15, i32 0, i32 2
  %17 = load i8*, i8** %limit, align 8
  store i8* %17, i8** @limit, align 8
  %18 = load i32, i32* @stack_free, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom16
  %buf = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx17, i32 0, i32 3
  %19 = load i8*, i8** %buf, align 8
  store i8* %19, i8** @buf, align 8
  %20 = load i32, i32* @stack_free, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom18
  %blksize = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx19, i32 0, i32 4
  %21 = load i32, i32* %blksize, align 4
  store i32 %21, i32* @blksize, align 4
  %22 = load i32, i32* @stack_free, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom20
  %last_char = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx21, i32 0, i32 5
  %23 = load i8, i8* %last_char, align 1
  store i8 %23, i8* @last_char, align 1
  %24 = load i32, i32* @stack_free, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom22
  %startline = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx23, i32 0, i32 6
  %25 = load i8*, i8** %startline, align 8
  store i8* %25, i8** @startline, align 8
  %26 = load i32, i32* @stack_free, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom24
  %this_file = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx25, i32 0, i32 7
  %27 = load i16, i16* %this_file, align 2
  store i16 %27, i16* @this_file, align 2
  %28 = load i32, i32* @stack_free, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom26
  %fp = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx27, i32 0, i32 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %29, %struct._IO_FILE** @fp, align 8
  %30 = load i32, i32* @stack_free, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom28
  %ftype = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx29, i32 0, i32 10
  %31 = load i16, i16* %ftype, align 2
  store i16 %31, i16* @ftype, align 2
  %32 = load i32, i32* @stack_free, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom30
  %next_token = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx31, i32 0, i32 11
  %33 = load %union.rec*, %union.rec** %next_token, align 8
  store %union.rec* %33, %union.rec** @next_token, align 8
  %34 = load i32, i32* @stack_free, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom32
  %offset = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx33, i32 0, i32 12
  %35 = load i32, i32* %offset, align 4
  store i32 %35, i32* @offset, align 4
  %36 = load i32, i32* @stack_free, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom34
  %first_line_num = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx35, i32 0, i32 13
  %37 = load i32, i32* %first_line_num, align 4
  store i32 %37, i32* @first_line_num, align 4
  %38 = load i32, i32* @stack_free, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom36
  %same_file = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx37, i32 0, i32 14
  %39 = load i32, i32* %same_file, align 4
  store i32 %39, i32* @same_file, align 4
  %40 = load i32, i32* @stack_free, align 4
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom38
  %file_pos = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx39, i32 0, i32 9
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %file_pos, i32 0, i32 2
  %41 = load i16, i16* %ofile_num, align 2
  store i16 %41, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %42 = load i32, i32* @stack_free, align 4
  %idxprom40 = sext i32 %42 to i64
  %arrayidx41 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom40
  %file_pos42 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx41, i32 0, i32 9
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %file_pos42, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %bf.load43 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear44 = and i32 %bf.load43, -1048576
  %bf.set = or i32 %bf.clear44, %bf.value
  store i32 %bf.set, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %43 = load i32, i32* @stack_free, align 4
  %idxprom45 = sext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @lex_stack, i32 0, i64 %idxprom45
  %file_pos47 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx46, i32 0, i32 9
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %file_pos47, i32 0, i32 3
  %bf.load48 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load48, 20
  %bf.load49 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value50 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value50, 20
  %bf.clear51 = and i32 %bf.load49, 1048575
  %bf.set52 = or i32 %bf.clear51, %bf.shl
  store i32 %bf.set52, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i64 @LexNextTokenPos() #0 {
entry:
  %res = alloca i64, align 8
  %0 = load %union.rec*, %union.rec** @next_token, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** @next_token, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %2)
  %3 = load i8*, i8** @limit, align 8
  %4 = load i8*, i8** @chpt, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %call1, %sub.ptr.sub
  %5 = load i8*, i8** @buf, align 8
  %6 = load i8*, i8** @frst, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %6 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub5 = sub nsw i64 %sub, %sub.ptr.sub4
  store i64 %sub5, i64* %res, align 8
  %7 = load i64, i64* %res, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %union.rec* @LexGetToken() #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %startpos = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  %vcount = alloca i32, align 4
  %hcount = alloca i32, align 4
  %t = alloca %union.rec*, align 8
  %fname = alloca %union.rec*, align 8
  %fnum = alloca i16, align 2
  %len = alloca i32, align 4
  %scope_suppressed = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i32, align 4
  %0 = load %union.rec*, %union.rec** @next_token, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** @next_token, align 8
  store %union.rec* %1, %union.rec** %res, align 8
  store %union.rec* %1, %union.rec** @zz_hold, align 8
  %2 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %3 = load %union.rec*, %union.rec** %osucc, align 8
  %4 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1 = icmp eq %union.rec* %3, %4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12 = bitcast %union.rec* %5 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 1
  %osucc5 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc5, align 8
  store %union.rec* %6, %union.rec** @zz_res, align 8
  %7 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  %9 = load %union.rec*, %union.rec** @zz_res, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 1
  %opred12 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  store %union.rec* %8, %union.rec** %opred12, align 8
  %10 = load %union.rec*, %union.rec** @zz_res, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os113 = bitcast %union.rec* %11 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %opred16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred16, align 8
  %os117 = bitcast %union.rec* %12 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %osucc20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 1
  store %union.rec* %10, %union.rec** %osucc20, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os121 = bitcast %union.rec* %14 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %osucc24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc24, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %15 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred28 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred28, align 8
  %16 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %16, %cond.false ]
  store %union.rec* %cond, %union.rec** @next_token, align 8
  %17 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %17, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %union.rec* null, %union.rec** %res, align 8
  %18 = load i8*, i8** @chpt, align 8
  store i8* %18, i8** %p, align 8
  store i32 0, i32* %hcount, align 4
  store i32 0, i32* %vcount, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.1242, %if.end
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %idxprom = zext i8 %20 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %21 to i32
  switch i32 %conv, label %sw.default.1239 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.53
    i32 5, label %sw.bb.75
    i32 6, label %sw.bb.75
    i32 7, label %sw.bb.77
    i32 8, label %sw.bb.78
    i32 9, label %sw.bb.90
    i32 0, label %sw.bb.162
    i32 1, label %sw.bb.195
    i32 2, label %sw.bb.830
  ]

sw.bb:                                            ; preds = %do.body
  %22 = load i16, i16* @ftype, align 2
  %conv30 = sext i16 %22 to i32
  %cmp31 = icmp eq i32 %conv30, 3
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv33 = zext i8 %24 to i32
  %cmp34 = icmp sge i32 %conv33, 97
  br i1 %cmp34, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv37 = zext i8 %26 to i32
  %cmp38 = icmp sle i32 %conv37, 122
  br i1 %cmp38, label %land.lhs.true.40, label %if.else

land.lhs.true.40:                                 ; preds = %land.lhs.true.36
  %27 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %add.ptr, align 1
  %conv41 = zext i8 %28 to i32
  %cmp42 = icmp eq i32 %conv41, 123
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %land.lhs.true.40
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv45 = zext i8 %30 to i32
  %conv46 = trunc i32 %conv45 to i8
  %31 = load %union.rec*, %union.rec** @StartSym, align 8
  %call = call %union.rec* @NewToken(i8 zeroext 102, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %conv46, %union.rec* %31)
  store %union.rec* %call, %union.rec** %res, align 8
  %32 = load i8*, i8** %p, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr47, i8** %p, align 8
  br label %if.end.52

if.else:                                          ; preds = %land.lhs.true.40, %land.lhs.true.36, %land.lhs.true, %sw.bb
  %33 = load i8*, i8** %p, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %add.ptr48, i8** %startpos, align 8
  %34 = load i8*, i8** @startline, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv49 = trunc i64 %sub.ptr.sub to i32
  %bf.load = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value = and i32 %conv49, 4095
  %bf.shl = shl i32 %bf.value, 20
  %bf.clear = and i32 %bf.load, 1048575
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %35 = load i8*, i8** %startpos, align 8
  %36 = load i8, i8* %35, align 1
  %conv50 = zext i8 %36 to i32
  %call51 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos, i32 %conv50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.44
  br label %sw.epilog.1241

sw.bb.53:                                         ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.53
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  %38 = load i8, i8* %37, align 1
  %conv55 = zext i8 %38 to i32
  store i32 %conv55, i32* %c, align 4
  %cmp56 = icmp ne i32 %conv55, 10
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %39 = load i32, i32* %c, align 4
  %cmp58 = icmp ne i32 %39, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %40 = phi i1 [ false, %while.cond ], [ %cmp58, %land.rhs ]
  br i1 %40, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %41 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %41, 10
  br i1 %cmp60, label %if.then.62, label %if.else.72

if.then.62:                                       ; preds = %while.end
  %42 = load i8*, i8** %p, align 8
  store i8* %42, i8** @chpt, align 8
  call void @srcnext()
  %bf.load63 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear64 = and i32 %bf.load63, 1048575
  %inc = add i32 %bf.clear64, 1
  %bf.load65 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value66 = and i32 %inc, 1048575
  %bf.clear67 = and i32 %bf.load65, -1048576
  %bf.set68 = or i32 %bf.clear67, %bf.value66
  store i32 %bf.set68, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.load69 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear70 = and i32 %bf.load69, 1048575
  store i32 %bf.clear70, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %43 = load i8*, i8** @chpt, align 8
  store i8* %43, i8** %p, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %add.ptr71, i8** @startline, align 8
  br label %if.end.74

if.else.72:                                       ; preds = %while.end
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr73, i8** %p, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.62
  br label %sw.epilog.1241

sw.bb.75:                                         ; preds = %do.body, %do.body
  %45 = load i32, i32* %hcount, align 4
  %inc76 = add nsw i32 %45, 1
  store i32 %inc76, i32* %hcount, align 4
  br label %sw.epilog.1241

sw.bb.77:                                         ; preds = %do.body
  %46 = load i32, i32* %hcount, align 4
  %add = add nsw i32 %46, 8
  store i32 %add, i32* %hcount, align 4
  br label %sw.epilog.1241

sw.bb.78:                                         ; preds = %do.body
  %47 = load i8*, i8** %p, align 8
  store i8* %47, i8** @chpt, align 8
  call void @srcnext()
  %bf.load79 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear80 = and i32 %bf.load79, 1048575
  %inc81 = add i32 %bf.clear80, 1
  %bf.load82 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value83 = and i32 %inc81, 1048575
  %bf.clear84 = and i32 %bf.load82, -1048576
  %bf.set85 = or i32 %bf.clear84, %bf.value83
  store i32 %bf.set85, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.load86 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear87 = and i32 %bf.load86, 1048575
  store i32 %bf.clear87, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %48 = load i32, i32* %vcount, align 4
  %inc88 = add nsw i32 %48, 1
  store i32 %inc88, i32* %vcount, align 4
  store i32 0, i32* %hcount, align 4
  %49 = load i8*, i8** @chpt, align 8
  store i8* %49, i8** %p, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %add.ptr89, i8** @startline, align 8
  br label %sw.epilog.1241

sw.bb.90:                                         ; preds = %do.body
  %50 = load i32, i32* @same_file, align 4
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.end.135, label %if.then.91

if.then.91:                                       ; preds = %sw.bb.90
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp92 = icmp ne %struct._IO_FILE* %51, null
  br i1 %cmp92, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %if.then.91
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call95 = call i32 @fclose(%struct._IO_FILE* %52)
  store %struct._IO_FILE* null, %struct._IO_FILE** @fp, align 8
  %53 = load i16, i16* @ftype, align 2
  %conv96 = sext i16 %53 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %cond.true.99, label %cond.false.102

cond.true.99:                                     ; preds = %if.then.94
  %54 = load i16, i16* @this_file, align 2
  %call100 = call zeroext i16 @NextFile(i16 zeroext %54)
  %conv101 = zext i16 %call100 to i32
  br label %cond.end.103

cond.false.102:                                   ; preds = %if.then.94
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.99
  %cond104 = phi i32 [ %conv101, %cond.true.99 ], [ 0, %cond.false.102 ]
  %conv105 = trunc i32 %cond104 to i16
  store i16 %conv105, i16* @this_file, align 2
  br label %if.end.106

if.end.106:                                       ; preds = %cond.end.103, %if.then.91
  br label %while.cond.107

while.cond.107:                                   ; preds = %cond.end.131, %if.end.106
  %55 = load i16, i16* @this_file, align 2
  %conv108 = zext i16 %55 to i32
  %cmp109 = icmp ne i32 %conv108, 0
  br i1 %cmp109, label %while.body.111, label %while.end.134

while.body.111:                                   ; preds = %while.cond.107
  %56 = load i16, i16* @this_file, align 2
  store i16 %56, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %bf.load112 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear113 = and i32 %bf.load112, -1048576
  %bf.set114 = or i32 %bf.clear113, 1
  store i32 %bf.set114, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.load115 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear116 = and i32 %bf.load115, 1048575
  store i32 %bf.clear116, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %57 = load i16, i16* @this_file, align 2
  %call117 = call %struct._IO_FILE* @OpenFile(i16 zeroext %57, i32 0, i32 1)
  store %struct._IO_FILE* %call117, %struct._IO_FILE** @fp, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp118 = icmp ne %struct._IO_FILE* %58, null
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %while.body.111
  br label %while.end.134

if.end.121:                                       ; preds = %while.body.111
  %59 = load i16, i16* @this_file, align 2
  %call122 = call i8* @FullFileName(i16 zeroext %59)
  %call123 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos, i8* %call122)
  %60 = load i16, i16* @ftype, align 2
  %conv124 = sext i16 %60 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  br i1 %cmp125, label %cond.true.127, label %cond.false.130

cond.true.127:                                    ; preds = %if.end.121
  %61 = load i16, i16* @this_file, align 2
  %call128 = call zeroext i16 @NextFile(i16 zeroext %61)
  %conv129 = zext i16 %call128 to i32
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.end.121
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.127
  %cond132 = phi i32 [ %conv129, %cond.true.127 ], [ 0, %cond.false.130 ]
  %conv133 = trunc i32 %cond132 to i16
  store i16 %conv133, i16* @this_file, align 2
  br label %while.cond.107

while.end.134:                                    ; preds = %if.then.120, %while.cond.107
  br label %if.end.135

if.end.135:                                       ; preds = %while.end.134, %sw.bb.90
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp136 = icmp ne %struct._IO_FILE* %62, null
  br i1 %cmp136, label %if.then.138, label %if.else.150

if.then.138:                                      ; preds = %if.end.135
  %63 = load i32, i32* @offset, align 4
  %cmp139 = icmp ne i32 %63, 0
  br i1 %cmp139, label %if.then.141, label %if.end.148

if.then.141:                                      ; preds = %if.then.138
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %65 = load i32, i32* @offset, align 4
  %conv142 = sext i32 %65 to i64
  %call143 = call i32 @fseek(%struct._IO_FILE* %64, i64 %conv142, i32 0)
  store i32 0, i32* @offset, align 4
  %66 = load i32, i32* @first_line_num, align 4
  %bf.load144 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value145 = and i32 %66, 1048575
  %bf.clear146 = and i32 %bf.load144, -1048576
  %bf.set147 = or i32 %bf.clear146, %bf.value145
  store i32 %bf.set147, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.141, %if.then.138
  %67 = load i8*, i8** @buf, align 8
  store i8* %67, i8** @chpt, align 8
  store i8* %67, i8** @limit, align 8
  store i8* %67, i8** @frst, align 8
  store i32 0, i32* @blksize, align 4
  store i8 10, i8* @last_char, align 1
  call void @srcnext()
  %68 = load i8*, i8** @chpt, align 8
  store i8* %68, i8** %p, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %68, i64 -1
  store i8* %add.ptr149, i8** @startline, align 8
  store i32 0, i32* %hcount, align 4
  br label %if.end.161

if.else.150:                                      ; preds = %if.end.135
  %69 = load i16, i16* @ftype, align 2
  %conv151 = sext i16 %69 to i32
  switch i32 %conv151, label %sw.default [
    i32 0, label %sw.bb.152
    i32 3, label %sw.bb.152
    i32 10, label %sw.bb.156
    i32 1, label %sw.bb.159
  ]

sw.bb.152:                                        ; preds = %if.else.150, %if.else.150
  %70 = load %union.rec*, %union.rec** @StartSym, align 8
  %call153 = call %union.rec* @NewToken(i8 zeroext 105, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext 2, %union.rec* %70)
  store %union.rec* %call153, %union.rec** %res, align 8
  %call154 = call %union.rec* @NewToken(i8 zeroext 111, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext 0, %union.rec* null)
  store %union.rec* %call154, %union.rec** @next_token, align 8
  %71 = load i8*, i8** %p, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %incdec.ptr155, i8** %p, align 8
  %72 = load i8*, i8** %p, align 8
  store i8* %72, i8** @startline, align 8
  br label %sw.epilog

sw.bb.156:                                        ; preds = %if.else.150
  %73 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %call157 = call %union.rec* @NewToken(i8 zeroext 105, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext 2, %union.rec* %73)
  store %union.rec* %call157, %union.rec** %res, align 8
  %74 = load i8*, i8** %p, align 8
  %incdec.ptr158 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr158, i8** %p, align 8
  %75 = load i8*, i8** %p, align 8
  store i8* %75, i8** @startline, align 8
  br label %sw.epilog

sw.bb.159:                                        ; preds = %if.else.150
  call void @LexPop()
  %76 = load i8*, i8** @chpt, align 8
  store i8* %76, i8** %p, align 8
  store i32 0, i32* %hcount, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.150
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call160 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.159, %sw.bb.156, %sw.bb.152
  br label %if.end.161

if.end.161:                                       ; preds = %sw.epilog, %if.end.148
  br label %sw.epilog.1241

sw.bb.162:                                        ; preds = %do.body
  %78 = load i8*, i8** %p, align 8
  %add.ptr163 = getelementptr inbounds i8, i8* %78, i64 -1
  store i8* %add.ptr163, i8** %startpos, align 8
  %79 = load i8*, i8** @startline, align 8
  %sub.ptr.lhs.cast164 = ptrtoint i8* %add.ptr163 to i64
  %sub.ptr.rhs.cast165 = ptrtoint i8* %79 to i64
  %sub.ptr.sub166 = sub i64 %sub.ptr.lhs.cast164, %sub.ptr.rhs.cast165
  %conv167 = trunc i64 %sub.ptr.sub166 to i32
  %bf.load168 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value169 = and i32 %conv167, 4095
  %bf.shl170 = shl i32 %bf.value169, 20
  %bf.clear171 = and i32 %bf.load168, 1048575
  %bf.set172 = or i32 %bf.clear171, %bf.shl170
  store i32 %bf.set172, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %while.cond.173

while.cond.173:                                   ; preds = %while.body.180, %sw.bb.162
  %80 = load i8*, i8** %p, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr174, i8** %p, align 8
  %81 = load i8, i8* %80, align 1
  %idxprom175 = zext i8 %81 to i64
  %arrayidx176 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom175
  %82 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %82 to i32
  %cmp178 = icmp eq i32 %conv177, 0
  br i1 %cmp178, label %while.body.180, label %while.end.181

while.body.180:                                   ; preds = %while.cond.173
  br label %while.cond.173

while.end.181:                                    ; preds = %while.cond.173
  %83 = load i8*, i8** %p, align 8
  %84 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast182 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast183 = ptrtoint i8* %84 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast182, %sub.ptr.rhs.cast183
  %sub = sub nsw i64 %sub.ptr.sub184, 1
  %conv185 = trunc i64 %sub to i32
  store i32 %conv185, i32* %c, align 4
  br label %do.body.186

do.body.186:                                      ; preds = %land.end.194, %while.end.181
  %85 = load i8*, i8** %startpos, align 8
  %86 = load i32, i32* %c, align 4
  %call187 = call %union.rec* @SearchSym(i8* %85, i32 %86)
  store %union.rec* %call187, %union.rec** %res, align 8
  %87 = load i32, i32* %c, align 4
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %c, align 4
  %88 = load i8*, i8** %p, align 8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %incdec.ptr188, i8** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.186
  %89 = load i32, i32* %c, align 4
  %cmp189 = icmp sgt i32 %89, 0
  br i1 %cmp189, label %land.rhs.191, label %land.end.194

land.rhs.191:                                     ; preds = %do.cond
  %90 = load %union.rec*, %union.rec** %res, align 8
  %cmp192 = icmp eq %union.rec* %90, null
  br label %land.end.194

land.end.194:                                     ; preds = %land.rhs.191, %do.cond
  %91 = phi i1 [ false, %do.cond ], [ %cmp192, %land.rhs.191 ]
  br i1 %91, label %do.body.186, label %do.end

do.end:                                           ; preds = %land.end.194
  br label %MORE

sw.bb.195:                                        ; preds = %do.body
  %92 = load i8*, i8** %p, align 8
  %add.ptr196 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8* %add.ptr196, i8** %startpos, align 8
  %93 = load i8*, i8** @startline, align 8
  %sub.ptr.lhs.cast197 = ptrtoint i8* %add.ptr196 to i64
  %sub.ptr.rhs.cast198 = ptrtoint i8* %93 to i64
  %sub.ptr.sub199 = sub i64 %sub.ptr.lhs.cast197, %sub.ptr.rhs.cast198
  %conv200 = trunc i64 %sub.ptr.sub199 to i32
  %bf.load201 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value202 = and i32 %conv200, 4095
  %bf.shl203 = shl i32 %bf.value202, 20
  %bf.clear204 = and i32 %bf.load201, 1048575
  %bf.set205 = or i32 %bf.clear204, %bf.shl203
  store i32 %bf.set205, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %while.cond.206

while.cond.206:                                   ; preds = %while.body.213, %sw.bb.195
  %94 = load i8*, i8** %p, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr207, i8** %p, align 8
  %95 = load i8, i8* %94, align 1
  %idxprom208 = zext i8 %95 to i64
  %arrayidx209 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom208
  %96 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %96 to i32
  %cmp211 = icmp eq i32 %conv210, 1
  br i1 %cmp211, label %while.body.213, label %while.end.214

while.body.213:                                   ; preds = %while.cond.206
  br label %while.cond.206

while.end.214:                                    ; preds = %while.cond.206
  %97 = load i8*, i8** %p, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %incdec.ptr215, i8** %p, align 8
  %98 = load i8*, i8** %startpos, align 8
  %99 = load i8*, i8** %p, align 8
  %100 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast216 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast217 = ptrtoint i8* %100 to i64
  %sub.ptr.sub218 = sub i64 %sub.ptr.lhs.cast216, %sub.ptr.rhs.cast217
  %conv219 = trunc i64 %sub.ptr.sub218 to i32
  %call220 = call %union.rec* @SearchSym(i8* %98, i32 %conv219)
  store %union.rec* %call220, %union.rec** %res, align 8
  br label %MORE

MORE:                                             ; preds = %while.end.214, %do.end
  %101 = load %union.rec*, %union.rec** %res, align 8
  %cmp221 = icmp eq %union.rec* %101, null
  br i1 %cmp221, label %if.then.223, label %if.else.314

if.then.223:                                      ; preds = %MORE
  %102 = load i8*, i8** %p, align 8
  %103 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast224 = ptrtoint i8* %102 to i64
  %sub.ptr.rhs.cast225 = ptrtoint i8* %103 to i64
  %sub.ptr.sub226 = sub i64 %sub.ptr.lhs.cast224, %sub.ptr.rhs.cast225
  %add227 = add nsw i64 %sub.ptr.sub226, 1
  %mul = mul i64 %add227, 1
  %add228 = add i64 68, %mul
  %conv229 = trunc i64 %add228 to i32
  store i32 %conv229, i32* @zz_size, align 4
  %104 = load i32, i32* @zz_size, align 4
  %sub230 = sub nsw i32 %104, 1
  %conv231 = sext i32 %sub230 to i64
  %div = udiv i64 %conv231, 8
  %add232 = add i64 %div, 1
  %conv233 = trunc i64 %add232 to i32
  store i32 %conv233, i32* @zz_size, align 4
  %conv234 = sext i32 %conv233 to i64
  %cmp235 = icmp uge i64 %conv234, 265
  br i1 %cmp235, label %if.then.237, label %if.else.239

if.then.237:                                      ; preds = %if.then.223
  %call238 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.256

if.else.239:                                      ; preds = %if.then.223
  %105 = load i32, i32* @zz_size, align 4
  %idxprom240 = sext i32 %105 to i64
  %arrayidx241 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom240
  %106 = load %union.rec*, %union.rec** %arrayidx241, align 8
  %cmp242 = icmp eq %union.rec* %106, null
  br i1 %cmp242, label %if.then.244, label %if.else.246

if.then.244:                                      ; preds = %if.else.239
  %107 = load i32, i32* @zz_size, align 4
  %call245 = call %union.rec* @GetMemory(i32 %107, %struct.FILE_POS* @file_pos)
  store %union.rec* %call245, %union.rec** @zz_hold, align 8
  br label %if.end.255

if.else.246:                                      ; preds = %if.else.239
  %108 = load i32, i32* @zz_size, align 4
  %idxprom247 = sext i32 %108 to i64
  %arrayidx248 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom247
  %109 = load %union.rec*, %union.rec** %arrayidx248, align 8
  store %union.rec* %109, %union.rec** @zz_hold, align 8
  store %union.rec* %109, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1249 = bitcast %union.rec* %110 to %struct.word_type*
  %olist250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist250, i32 0, i64 0
  %opred252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx251, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred252, align 8
  %112 = load i32, i32* @zz_size, align 4
  %idxprom253 = sext i32 %112 to i64
  %arrayidx254 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom253
  store %union.rec* %111, %union.rec** %arrayidx254, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.246, %if.then.244
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.237
  %113 = load i32, i32* @zz_size, align 4
  %conv257 = trunc i32 %113 to i8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1258 = bitcast %union.rec* %114 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %orec_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 1
  store i8 %conv257, i8* %orec_size, align 1
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1259 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 1
  %os11261 = bitcast %union.FIRST_UNION* %ou1260 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11261, i32 0, i32 0
  store i8 11, i8* %otype, align 1
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1262 = bitcast %union.rec* %117 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 1
  %osucc265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 1
  store %union.rec* %116, %union.rec** %osucc265, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1266 = bitcast %union.rec* %118 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 1
  %opred269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 0
  store %union.rec* %116, %union.rec** %opred269, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1270 = bitcast %union.rec* %119 to %struct.word_type*
  %olist271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist271, i32 0, i64 0
  %osucc273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx272, i32 0, i32 1
  store %union.rec* %116, %union.rec** %osucc273, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1274 = bitcast %union.rec* %120 to %struct.word_type*
  %olist275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist275, i32 0, i64 0
  %opred277 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx276, i32 0, i32 0
  store %union.rec* %116, %union.rec** %opred277, align 8
  store %union.rec* %116, %union.rec** %res, align 8
  %121 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %122 = load %union.rec*, %union.rec** %res, align 8
  %os1278 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1278, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1279 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %121, i16* %ofile_num, align 2
  %bf.load280 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear281 = and i32 %bf.load280, 1048575
  %123 = load %union.rec*, %union.rec** %res, align 8
  %os1282 = bitcast %union.rec* %123 to %struct.word_type*
  %ou1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 1
  %ofpos284 = bitcast %union.FIRST_UNION* %ou1283 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos284, i32 0, i32 3
  %bf.load285 = load i32, i32* %oline_num, align 4
  %bf.value286 = and i32 %bf.clear281, 1048575
  %bf.clear287 = and i32 %bf.load285, -1048576
  %bf.set288 = or i32 %bf.clear287, %bf.value286
  store i32 %bf.set288, i32* %oline_num, align 4
  %bf.load289 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr = lshr i32 %bf.load289, 20
  %124 = load %union.rec*, %union.rec** %res, align 8
  %os1290 = bitcast %union.rec* %124 to %struct.word_type*
  %ou1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1290, i32 0, i32 1
  %ofpos292 = bitcast %union.FIRST_UNION* %ou1291 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos292, i32 0, i32 3
  %bf.load293 = load i32, i32* %ocol_num, align 4
  %bf.value294 = and i32 %bf.lshr, 4095
  %bf.shl295 = shl i32 %bf.value294, 20
  %bf.clear296 = and i32 %bf.load293, 1048575
  %bf.set297 = or i32 %bf.clear296, %bf.shl295
  store i32 %bf.set297, i32* %ocol_num, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.256
  %125 = load i32, i32* %c, align 4
  %conv298 = sext i32 %125 to i64
  %126 = load i8*, i8** %p, align 8
  %127 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast299 = ptrtoint i8* %126 to i64
  %sub.ptr.rhs.cast300 = ptrtoint i8* %127 to i64
  %sub.ptr.sub301 = sub i64 %sub.ptr.lhs.cast299, %sub.ptr.rhs.cast300
  %cmp302 = icmp slt i64 %conv298, %sub.ptr.sub301
  br i1 %cmp302, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %128 = load i32, i32* %c, align 4
  %idxprom304 = sext i32 %128 to i64
  %129 = load i8*, i8** %startpos, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %129, i64 %idxprom304
  %130 = load i8, i8* %arrayidx305, align 1
  %131 = load i32, i32* %c, align 4
  %idxprom306 = sext i32 %131 to i64
  %132 = load %union.rec*, %union.rec** %res, align 8
  %os1307 = bitcast %union.rec* %132 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1307, i32 0, i32 4
  %arrayidx308 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 %idxprom306
  store i8 %130, i8* %arrayidx308, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %133 = load i32, i32* %c, align 4
  %inc309 = add nsw i32 %133, 1
  store i32 %inc309, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %134 = load i32, i32* %c, align 4
  %idxprom310 = sext i32 %134 to i64
  %135 = load %union.rec*, %union.rec** %res, align 8
  %os1311 = bitcast %union.rec* %135 to %struct.word_type*
  %ostring312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 4
  %arrayidx313 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring312, i32 0, i64 %idxprom310
  store i8 0, i8* %arrayidx313, align 1
  br label %if.end.829

if.else.314:                                      ; preds = %MORE
  %136 = load %union.rec*, %union.rec** %res, align 8
  %os1315 = bitcast %union.rec* %136 to %struct.word_type*
  %ou1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1315, i32 0, i32 1
  %os11317 = bitcast %union.FIRST_UNION* %ou1316 to %struct.anon.0*
  %otype318 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11317, i32 0, i32 0
  %137 = load i8, i8* %otype318, align 1
  %conv319 = zext i8 %137 to i32
  %cmp320 = icmp eq i32 %conv319, 142
  br i1 %cmp320, label %if.then.322, label %if.else.482

if.then.322:                                      ; preds = %if.else.314
  %138 = load %union.rec*, %union.rec** %res, align 8
  %os1323 = bitcast %union.rec* %138 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.6*
  %orecursive = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26, i32 0, i32 1
  %139 = bitcast [3 x i8]* %orecursive to i24*
  %bf.load324 = load i24, i24* %139, align 1
  %bf.lshr325 = lshr i24 %bf.load324, 10
  %bf.clear326 = and i24 %bf.lshr325, 1
  %bf.cast = zext i24 %bf.clear326 to i32
  %tobool327 = icmp ne i32 %bf.cast, 0
  br i1 %tobool327, label %if.then.328, label %if.else.436

if.then.328:                                      ; preds = %if.then.322
  %call329 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  %140 = load i8*, i8** %p, align 8
  %141 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast330 = ptrtoint i8* %140 to i64
  %sub.ptr.rhs.cast331 = ptrtoint i8* %141 to i64
  %sub.ptr.sub332 = sub i64 %sub.ptr.lhs.cast330, %sub.ptr.rhs.cast331
  %add333 = add nsw i64 %sub.ptr.sub332, 1
  %mul334 = mul i64 %add333, 1
  %add335 = add i64 68, %mul334
  %conv336 = trunc i64 %add335 to i32
  store i32 %conv336, i32* @zz_size, align 4
  %142 = load i32, i32* @zz_size, align 4
  %sub337 = sub nsw i32 %142, 1
  %conv338 = sext i32 %sub337 to i64
  %div339 = udiv i64 %conv338, 8
  %add340 = add i64 %div339, 1
  %conv341 = trunc i64 %add340 to i32
  store i32 %conv341, i32* @zz_size, align 4
  %conv342 = sext i32 %conv341 to i64
  %cmp343 = icmp uge i64 %conv342, 265
  br i1 %cmp343, label %if.then.345, label %if.else.347

if.then.345:                                      ; preds = %if.then.328
  %call346 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.364

if.else.347:                                      ; preds = %if.then.328
  %143 = load i32, i32* @zz_size, align 4
  %idxprom348 = sext i32 %143 to i64
  %arrayidx349 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom348
  %144 = load %union.rec*, %union.rec** %arrayidx349, align 8
  %cmp350 = icmp eq %union.rec* %144, null
  br i1 %cmp350, label %if.then.352, label %if.else.354

if.then.352:                                      ; preds = %if.else.347
  %145 = load i32, i32* @zz_size, align 4
  %call353 = call %union.rec* @GetMemory(i32 %145, %struct.FILE_POS* @file_pos)
  store %union.rec* %call353, %union.rec** @zz_hold, align 8
  br label %if.end.363

if.else.354:                                      ; preds = %if.else.347
  %146 = load i32, i32* @zz_size, align 4
  %idxprom355 = sext i32 %146 to i64
  %arrayidx356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom355
  %147 = load %union.rec*, %union.rec** %arrayidx356, align 8
  store %union.rec* %147, %union.rec** @zz_hold, align 8
  store %union.rec* %147, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1357 = bitcast %union.rec* %148 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 0
  %opred360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 0
  %149 = load %union.rec*, %union.rec** %opred360, align 8
  %150 = load i32, i32* @zz_size, align 4
  %idxprom361 = sext i32 %150 to i64
  %arrayidx362 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom361
  store %union.rec* %149, %union.rec** %arrayidx362, align 8
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.354, %if.then.352
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.then.345
  %151 = load i32, i32* @zz_size, align 4
  %conv365 = trunc i32 %151 to i8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1366 = bitcast %union.rec* %152 to %struct.word_type*
  %ou1367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 1
  %os11368 = bitcast %union.FIRST_UNION* %ou1367 to %struct.anon.0*
  %orec_size369 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11368, i32 0, i32 1
  store i8 %conv365, i8* %orec_size369, align 1
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1370 = bitcast %union.rec* %153 to %struct.word_type*
  %ou1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 1
  %os11372 = bitcast %union.FIRST_UNION* %ou1371 to %struct.anon.0*
  %otype373 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11372, i32 0, i32 0
  store i8 11, i8* %otype373, align 1
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1374 = bitcast %union.rec* %155 to %struct.word_type*
  %olist375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist375, i32 0, i64 1
  %osucc377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx376, i32 0, i32 1
  store %union.rec* %154, %union.rec** %osucc377, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1378 = bitcast %union.rec* %156 to %struct.word_type*
  %olist379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist379, i32 0, i64 1
  %opred381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx380, i32 0, i32 0
  store %union.rec* %154, %union.rec** %opred381, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1382 = bitcast %union.rec* %157 to %struct.word_type*
  %olist383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist383, i32 0, i64 0
  %osucc385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx384, i32 0, i32 1
  store %union.rec* %154, %union.rec** %osucc385, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1386 = bitcast %union.rec* %158 to %struct.word_type*
  %olist387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist387, i32 0, i64 0
  %opred389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx388, i32 0, i32 0
  store %union.rec* %154, %union.rec** %opred389, align 8
  store %union.rec* %154, %union.rec** %res, align 8
  %159 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %160 = load %union.rec*, %union.rec** %res, align 8
  %os1390 = bitcast %union.rec* %160 to %struct.word_type*
  %ou1391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1390, i32 0, i32 1
  %ofpos392 = bitcast %union.FIRST_UNION* %ou1391 to %struct.FILE_POS*
  %ofile_num393 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos392, i32 0, i32 2
  store i16 %159, i16* %ofile_num393, align 2
  %bf.load394 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear395 = and i32 %bf.load394, 1048575
  %161 = load %union.rec*, %union.rec** %res, align 8
  %os1396 = bitcast %union.rec* %161 to %struct.word_type*
  %ou1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 1
  %ofpos398 = bitcast %union.FIRST_UNION* %ou1397 to %struct.FILE_POS*
  %oline_num399 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos398, i32 0, i32 3
  %bf.load400 = load i32, i32* %oline_num399, align 4
  %bf.value401 = and i32 %bf.clear395, 1048575
  %bf.clear402 = and i32 %bf.load400, -1048576
  %bf.set403 = or i32 %bf.clear402, %bf.value401
  store i32 %bf.set403, i32* %oline_num399, align 4
  %bf.load404 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr405 = lshr i32 %bf.load404, 20
  %162 = load %union.rec*, %union.rec** %res, align 8
  %os1406 = bitcast %union.rec* %162 to %struct.word_type*
  %ou1407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1406, i32 0, i32 1
  %ofpos408 = bitcast %union.FIRST_UNION* %ou1407 to %struct.FILE_POS*
  %ocol_num409 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos408, i32 0, i32 3
  %bf.load410 = load i32, i32* %ocol_num409, align 4
  %bf.value411 = and i32 %bf.lshr405, 4095
  %bf.shl412 = shl i32 %bf.value411, 20
  %bf.clear413 = and i32 %bf.load410, 1048575
  %bf.set414 = or i32 %bf.clear413, %bf.shl412
  store i32 %bf.set414, i32* %ocol_num409, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.415

for.cond.415:                                     ; preds = %for.inc.429, %if.end.364
  %163 = load i32, i32* %c, align 4
  %conv416 = sext i32 %163 to i64
  %164 = load i8*, i8** %p, align 8
  %165 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast417 = ptrtoint i8* %164 to i64
  %sub.ptr.rhs.cast418 = ptrtoint i8* %165 to i64
  %sub.ptr.sub419 = sub i64 %sub.ptr.lhs.cast417, %sub.ptr.rhs.cast418
  %cmp420 = icmp slt i64 %conv416, %sub.ptr.sub419
  br i1 %cmp420, label %for.body.422, label %for.end.431

for.body.422:                                     ; preds = %for.cond.415
  %166 = load i32, i32* %c, align 4
  %idxprom423 = sext i32 %166 to i64
  %167 = load i8*, i8** %startpos, align 8
  %arrayidx424 = getelementptr inbounds i8, i8* %167, i64 %idxprom423
  %168 = load i8, i8* %arrayidx424, align 1
  %169 = load i32, i32* %c, align 4
  %idxprom425 = sext i32 %169 to i64
  %170 = load %union.rec*, %union.rec** %res, align 8
  %os1426 = bitcast %union.rec* %170 to %struct.word_type*
  %ostring427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1426, i32 0, i32 4
  %arrayidx428 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring427, i32 0, i64 %idxprom425
  store i8 %168, i8* %arrayidx428, align 1
  br label %for.inc.429

for.inc.429:                                      ; preds = %for.body.422
  %171 = load i32, i32* %c, align 4
  %inc430 = add nsw i32 %171, 1
  store i32 %inc430, i32* %c, align 4
  br label %for.cond.415

for.end.431:                                      ; preds = %for.cond.415
  %172 = load i32, i32* %c, align 4
  %idxprom432 = sext i32 %172 to i64
  %173 = load %union.rec*, %union.rec** %res, align 8
  %os1433 = bitcast %union.rec* %173 to %struct.word_type*
  %ostring434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1433, i32 0, i32 4
  %arrayidx435 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring434, i32 0, i64 %idxprom432
  store i8 0, i8* %arrayidx435, align 1
  br label %if.end.481

if.else.436:                                      ; preds = %if.then.322
  %174 = load %union.rec*, %union.rec** %res, align 8
  %os6 = bitcast %union.rec* %174 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 4
  %175 = load %union.rec*, %union.rec** %osym_body, align 8
  %call437 = call %union.rec* @CopyTokenList(%union.rec* %175, %struct.FILE_POS* @file_pos)
  store %union.rec* %call437, %union.rec** %res, align 8
  %176 = load %union.rec*, %union.rec** %res, align 8
  %cmp438 = icmp ne %union.rec* %176, null
  br i1 %cmp438, label %if.then.440, label %if.else.479

if.then.440:                                      ; preds = %if.else.436
  %177 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %177, %union.rec** @zz_hold, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1441 = bitcast %union.rec* %178 to %struct.word_type*
  %olist442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1441, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist442, i32 0, i64 1
  %osucc444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx443, i32 0, i32 1
  %179 = load %union.rec*, %union.rec** %osucc444, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp445 = icmp eq %union.rec* %179, %180
  br i1 %cmp445, label %cond.true.447, label %cond.false.448

cond.true.447:                                    ; preds = %if.then.440
  br label %cond.end.477

cond.false.448:                                   ; preds = %if.then.440
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1449 = bitcast %union.rec* %181 to %struct.word_type*
  %olist450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist450, i32 0, i64 1
  %osucc452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx451, i32 0, i32 1
  %182 = load %union.rec*, %union.rec** %osucc452, align 8
  store %union.rec* %182, %union.rec** @zz_res, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1453 = bitcast %union.rec* %183 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 1
  %opred456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %opred456, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1457 = bitcast %union.rec* %185 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 1
  %opred460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred460, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1461 = bitcast %union.rec* %187 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 1
  %opred464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred464, align 8
  %os1465 = bitcast %union.rec* %188 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 1
  %osucc468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 1
  store %union.rec* %186, %union.rec** %osucc468, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1469 = bitcast %union.rec* %190 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 1
  %osucc472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 1
  store %union.rec* %189, %union.rec** %osucc472, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1473 = bitcast %union.rec* %191 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 1
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  store %union.rec* %189, %union.rec** %opred476, align 8
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.477

cond.end.477:                                     ; preds = %cond.false.448, %cond.true.447
  %cond478 = phi %union.rec* [ null, %cond.true.447 ], [ %192, %cond.false.448 ]
  store %union.rec* %cond478, %union.rec** @next_token, align 8
  br label %if.end.480

if.else.479:                                      ; preds = %if.else.436
  store i32 0, i32* %hcount, align 4
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.479, %cond.end.477
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %for.end.431
  br label %if.end.828

if.else.482:                                      ; preds = %if.else.314
  %193 = load %union.rec*, %union.rec** %res, align 8
  %os6483 = bitcast %union.rec* %193 to %struct.symbol_type*
  %opredefined = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6483, i32 0, i32 12
  %194 = load i16, i16* %opredefined, align 2
  %conv484 = zext i16 %194 to i32
  %cmp485 = icmp eq i32 %conv484, 0
  br i1 %cmp485, label %if.then.487, label %if.else.491

if.then.487:                                      ; preds = %if.else.482
  %195 = load %union.rec*, %union.rec** %res, align 8
  %os1488 = bitcast %union.rec* %195 to %struct.word_type*
  %ou2489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2489 to %struct.anon.1*
  %oprecedence = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os21, i32 0, i32 0
  %196 = load i8, i8* %oprecedence, align 1
  %197 = load %union.rec*, %union.rec** %res, align 8
  %call490 = call %union.rec* @NewToken(i8 zeroext 2, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %196, %union.rec* %197)
  store %union.rec* %call490, %union.rec** %res, align 8
  br label %if.end.827

if.else.491:                                      ; preds = %if.else.482
  %198 = load %union.rec*, %union.rec** %res, align 8
  %os6492 = bitcast %union.rec* %198 to %struct.symbol_type*
  %opredefined493 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6492, i32 0, i32 12
  %199 = load i16, i16* %opredefined493, align 2
  %conv494 = zext i16 %199 to i32
  %cmp495 = icmp eq i32 %conv494, 112
  br i1 %cmp495, label %if.then.502, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.491
  %200 = load %union.rec*, %union.rec** %res, align 8
  %os6497 = bitcast %union.rec* %200 to %struct.symbol_type*
  %opredefined498 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6497, i32 0, i32 12
  %201 = load i16, i16* %opredefined498, align 2
  %conv499 = zext i16 %201 to i32
  %cmp500 = icmp eq i32 %conv499, 113
  br i1 %cmp500, label %if.then.502, label %if.else.801

if.then.502:                                      ; preds = %lor.lhs.false, %if.else.491
  %202 = load i8*, i8** %p, align 8
  store i8* %202, i8** @chpt, align 8
  %call503 = call %union.rec* @LexGetToken()
  store %union.rec* %call503, %union.rec** %t, align 8
  %203 = load %union.rec*, %union.rec** %t, align 8
  %os1504 = bitcast %union.rec* %203 to %struct.word_type*
  %ou1505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 1
  %os11506 = bitcast %union.FIRST_UNION* %ou1505 to %struct.anon.0*
  %otype507 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11506, i32 0, i32 0
  %204 = load i8, i8* %otype507, align 1
  %conv508 = zext i8 %204 to i32
  %cmp509 = icmp eq i32 %conv508, 11
  br i1 %cmp509, label %land.rhs.511, label %land.end.517

land.rhs.511:                                     ; preds = %if.then.502
  %205 = load %union.rec*, %union.rec** %t, align 8
  %os1512 = bitcast %union.rec* %205 to %struct.word_type*
  %ostring513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring513, i32 0, i32 0
  %call514 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp515 = icmp eq i32 %call514, 0
  br label %land.end.517

land.end.517:                                     ; preds = %land.rhs.511, %if.then.502
  %206 = phi i1 [ false, %if.then.502 ], [ %cmp515, %land.rhs.511 ]
  %land.ext = zext i1 %206 to i32
  store i32 %land.ext, i32* %scope_suppressed, align 4
  %207 = load %union.rec*, %union.rec** %t, align 8
  %os1518 = bitcast %union.rec* %207 to %struct.word_type*
  %ou1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 1
  %os11520 = bitcast %union.FIRST_UNION* %ou1519 to %struct.anon.0*
  %otype521 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11520, i32 0, i32 0
  %208 = load i8, i8* %otype521, align 1
  %conv522 = zext i8 %208 to i32
  %cmp523 = icmp ne i32 %conv522, 102
  br i1 %cmp523, label %land.lhs.true.525, label %if.end.572

land.lhs.true.525:                                ; preds = %land.end.517
  %209 = load i32, i32* %scope_suppressed, align 4
  %tobool526 = icmp ne i32 %209, 0
  br i1 %tobool526, label %if.end.572, label %if.then.527

if.then.527:                                      ; preds = %land.lhs.true.525
  %210 = load %union.rec*, %union.rec** %t, align 8
  %os1528 = bitcast %union.rec* %210 to %struct.word_type*
  %ou1529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 1
  %ofpos530 = bitcast %union.FIRST_UNION* %ou1529 to %struct.FILE_POS*
  %211 = load %union.rec*, %union.rec** %res, align 8
  %call531 = call i8* @SymName(%union.rec* %211)
  %call532 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos530, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* %call531)
  %212 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %212, %union.rec** @zz_hold, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1533 = bitcast %union.rec* %214 to %struct.word_type*
  %ou1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1533, i32 0, i32 1
  %os11535 = bitcast %union.FIRST_UNION* %ou1534 to %struct.anon.0*
  %otype536 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11535, i32 0, i32 0
  %215 = load i8, i8* %otype536, align 1
  %conv537 = zext i8 %215 to i32
  %cmp538 = icmp eq i32 %conv537, 11
  br i1 %cmp538, label %cond.true.548, label %lor.lhs.false.540

lor.lhs.false.540:                                ; preds = %if.then.527
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1541 = bitcast %union.rec* %216 to %struct.word_type*
  %ou1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1541, i32 0, i32 1
  %os11543 = bitcast %union.FIRST_UNION* %ou1542 to %struct.anon.0*
  %otype544 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11543, i32 0, i32 0
  %217 = load i8, i8* %otype544, align 1
  %conv545 = zext i8 %217 to i32
  %cmp546 = icmp eq i32 %conv545, 12
  br i1 %cmp546, label %cond.true.548, label %cond.false.554

cond.true.548:                                    ; preds = %lor.lhs.false.540, %if.then.527
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1549 = bitcast %union.rec* %218 to %struct.word_type*
  %ou1550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 1
  %os11551 = bitcast %union.FIRST_UNION* %ou1550 to %struct.anon.0*
  %orec_size552 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11551, i32 0, i32 1
  %219 = load i8, i8* %orec_size552, align 1
  %conv553 = zext i8 %219 to i32
  br label %cond.end.562

cond.false.554:                                   ; preds = %lor.lhs.false.540
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1555 = bitcast %union.rec* %220 to %struct.word_type*
  %ou1556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 1
  %os11557 = bitcast %union.FIRST_UNION* %ou1556 to %struct.anon.0*
  %otype558 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11557, i32 0, i32 0
  %221 = load i8, i8* %otype558, align 1
  %idxprom559 = zext i8 %221 to i64
  %arrayidx560 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom559
  %222 = load i8, i8* %arrayidx560, align 1
  %conv561 = zext i8 %222 to i32
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.554, %cond.true.548
  %cond563 = phi i32 [ %conv553, %cond.true.548 ], [ %conv561, %cond.false.554 ]
  store i32 %cond563, i32* @zz_size, align 4
  %223 = load i32, i32* @zz_size, align 4
  %idxprom564 = sext i32 %223 to i64
  %arrayidx565 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom564
  %224 = load %union.rec*, %union.rec** %arrayidx565, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1566 = bitcast %union.rec* %225 to %struct.word_type*
  %olist567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1566, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist567, i32 0, i64 0
  %opred569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx568, i32 0, i32 0
  store %union.rec* %224, %union.rec** %opred569, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %227 = load i32, i32* @zz_size, align 4
  %idxprom570 = sext i32 %227 to i64
  %arrayidx571 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom570
  store %union.rec* %226, %union.rec** %arrayidx571, align 8
  store %union.rec* null, %union.rec** %res, align 8
  br label %sw.epilog.1241

if.end.572:                                       ; preds = %land.lhs.true.525, %land.end.517
  %228 = load i32, i32* %scope_suppressed, align 4
  %tobool573 = icmp ne i32 %228, 0
  br i1 %tobool573, label %if.then.574, label %if.end.658

if.then.574:                                      ; preds = %if.end.572
  call void @UnSuppressScope()
  %229 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %229, %union.rec** @zz_hold, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %230, %union.rec** @zz_hold, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1575 = bitcast %union.rec* %231 to %struct.word_type*
  %ou1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 1
  %os11577 = bitcast %union.FIRST_UNION* %ou1576 to %struct.anon.0*
  %otype578 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11577, i32 0, i32 0
  %232 = load i8, i8* %otype578, align 1
  %conv579 = zext i8 %232 to i32
  %cmp580 = icmp eq i32 %conv579, 11
  br i1 %cmp580, label %cond.true.590, label %lor.lhs.false.582

lor.lhs.false.582:                                ; preds = %if.then.574
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1583 = bitcast %union.rec* %233 to %struct.word_type*
  %ou1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 1
  %os11585 = bitcast %union.FIRST_UNION* %ou1584 to %struct.anon.0*
  %otype586 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11585, i32 0, i32 0
  %234 = load i8, i8* %otype586, align 1
  %conv587 = zext i8 %234 to i32
  %cmp588 = icmp eq i32 %conv587, 12
  br i1 %cmp588, label %cond.true.590, label %cond.false.596

cond.true.590:                                    ; preds = %lor.lhs.false.582, %if.then.574
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1591 = bitcast %union.rec* %235 to %struct.word_type*
  %ou1592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 1
  %os11593 = bitcast %union.FIRST_UNION* %ou1592 to %struct.anon.0*
  %orec_size594 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11593, i32 0, i32 1
  %236 = load i8, i8* %orec_size594, align 1
  %conv595 = zext i8 %236 to i32
  br label %cond.end.604

cond.false.596:                                   ; preds = %lor.lhs.false.582
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1597 = bitcast %union.rec* %237 to %struct.word_type*
  %ou1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1597, i32 0, i32 1
  %os11599 = bitcast %union.FIRST_UNION* %ou1598 to %struct.anon.0*
  %otype600 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11599, i32 0, i32 0
  %238 = load i8, i8* %otype600, align 1
  %idxprom601 = zext i8 %238 to i64
  %arrayidx602 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom601
  %239 = load i8, i8* %arrayidx602, align 1
  %conv603 = zext i8 %239 to i32
  br label %cond.end.604

cond.end.604:                                     ; preds = %cond.false.596, %cond.true.590
  %cond605 = phi i32 [ %conv595, %cond.true.590 ], [ %conv603, %cond.false.596 ]
  store i32 %cond605, i32* @zz_size, align 4
  %240 = load i32, i32* @zz_size, align 4
  %idxprom606 = sext i32 %240 to i64
  %arrayidx607 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom606
  %241 = load %union.rec*, %union.rec** %arrayidx607, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1608 = bitcast %union.rec* %242 to %struct.word_type*
  %olist609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1608, i32 0, i32 0
  %arrayidx610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist609, i32 0, i64 0
  %opred611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx610, i32 0, i32 0
  store %union.rec* %241, %union.rec** %opred611, align 8
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %244 = load i32, i32* @zz_size, align 4
  %idxprom612 = sext i32 %244 to i64
  %arrayidx613 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom612
  store %union.rec* %243, %union.rec** %arrayidx613, align 8
  %245 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 102), align 1
  %conv614 = zext i8 %245 to i32
  store i32 %conv614, i32* @zz_size, align 4
  %conv615 = sext i32 %conv614 to i64
  %cmp616 = icmp uge i64 %conv615, 265
  br i1 %cmp616, label %if.then.618, label %if.else.620

if.then.618:                                      ; preds = %cond.end.604
  %246 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call619 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %246)
  br label %if.end.637

if.else.620:                                      ; preds = %cond.end.604
  %247 = load i32, i32* @zz_size, align 4
  %idxprom621 = sext i32 %247 to i64
  %arrayidx622 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom621
  %248 = load %union.rec*, %union.rec** %arrayidx622, align 8
  %cmp623 = icmp eq %union.rec* %248, null
  br i1 %cmp623, label %if.then.625, label %if.else.627

if.then.625:                                      ; preds = %if.else.620
  %249 = load i32, i32* @zz_size, align 4
  %250 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call626 = call %union.rec* @GetMemory(i32 %249, %struct.FILE_POS* %250)
  store %union.rec* %call626, %union.rec** @zz_hold, align 8
  br label %if.end.636

if.else.627:                                      ; preds = %if.else.620
  %251 = load i32, i32* @zz_size, align 4
  %idxprom628 = sext i32 %251 to i64
  %arrayidx629 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom628
  %252 = load %union.rec*, %union.rec** %arrayidx629, align 8
  store %union.rec* %252, %union.rec** @zz_hold, align 8
  store %union.rec* %252, %union.rec** @zz_hold, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1630 = bitcast %union.rec* %253 to %struct.word_type*
  %olist631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1630, i32 0, i32 0
  %arrayidx632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist631, i32 0, i64 0
  %opred633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx632, i32 0, i32 0
  %254 = load %union.rec*, %union.rec** %opred633, align 8
  %255 = load i32, i32* @zz_size, align 4
  %idxprom634 = sext i32 %255 to i64
  %arrayidx635 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom634
  store %union.rec* %254, %union.rec** %arrayidx635, align 8
  br label %if.end.636

if.end.636:                                       ; preds = %if.else.627, %if.then.625
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.618
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1638 = bitcast %union.rec* %256 to %struct.word_type*
  %ou1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1638, i32 0, i32 1
  %os11640 = bitcast %union.FIRST_UNION* %ou1639 to %struct.anon.0*
  %otype641 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11640, i32 0, i32 0
  store i8 102, i8* %otype641, align 1
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1642 = bitcast %union.rec* %258 to %struct.word_type*
  %olist643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1642, i32 0, i32 0
  %arrayidx644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist643, i32 0, i64 1
  %osucc645 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx644, i32 0, i32 1
  store %union.rec* %257, %union.rec** %osucc645, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1646 = bitcast %union.rec* %259 to %struct.word_type*
  %olist647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 0
  %arrayidx648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist647, i32 0, i64 1
  %opred649 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx648, i32 0, i32 0
  store %union.rec* %257, %union.rec** %opred649, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1650 = bitcast %union.rec* %260 to %struct.word_type*
  %olist651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist651, i32 0, i64 0
  %osucc653 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx652, i32 0, i32 1
  store %union.rec* %257, %union.rec** %osucc653, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1654 = bitcast %union.rec* %261 to %struct.word_type*
  %olist655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1654, i32 0, i32 0
  %arrayidx656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist655, i32 0, i64 0
  %opred657 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx656, i32 0, i32 0
  store %union.rec* %257, %union.rec** %opred657, align 8
  store %union.rec* %257, %union.rec** %t, align 8
  br label %if.end.658

if.end.658:                                       ; preds = %if.end.637, %if.end.572
  %call659 = call %union.rec* @Parse(%union.rec** %t, %union.rec* null, i32 0, i32 0)
  store %union.rec* %call659, %union.rec** %fname, align 8
  %262 = load %union.rec*, %union.rec** %fname, align 8
  %call660 = call %union.rec* @ReplaceWithTidy(%union.rec* %262, i32 0)
  store %union.rec* %call660, %union.rec** %fname, align 8
  %263 = load i32, i32* %scope_suppressed, align 4
  %tobool661 = icmp ne i32 %263, 0
  br i1 %tobool661, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.end.658
  call void @SuppressScope()
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.662, %if.end.658
  %264 = load %union.rec*, %union.rec** %fname, align 8
  %os1664 = bitcast %union.rec* %264 to %struct.word_type*
  %ou1665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 1
  %os11666 = bitcast %union.FIRST_UNION* %ou1665 to %struct.anon.0*
  %otype667 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11666, i32 0, i32 0
  %265 = load i8, i8* %otype667, align 1
  %conv668 = zext i8 %265 to i32
  %cmp669 = icmp eq i32 %conv668, 11
  br i1 %cmp669, label %if.end.723, label %lor.lhs.false.671

lor.lhs.false.671:                                ; preds = %if.end.663
  %266 = load %union.rec*, %union.rec** %fname, align 8
  %os1672 = bitcast %union.rec* %266 to %struct.word_type*
  %ou1673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 1
  %os11674 = bitcast %union.FIRST_UNION* %ou1673 to %struct.anon.0*
  %otype675 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11674, i32 0, i32 0
  %267 = load i8, i8* %otype675, align 1
  %conv676 = zext i8 %267 to i32
  %cmp677 = icmp eq i32 %conv676, 12
  br i1 %cmp677, label %if.end.723, label %if.then.679

if.then.679:                                      ; preds = %lor.lhs.false.671
  %268 = load %union.rec*, %union.rec** %fname, align 8
  %os1680 = bitcast %union.rec* %268 to %struct.word_type*
  %ou1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 1
  %ofpos682 = bitcast %union.FIRST_UNION* %ou1681 to %struct.FILE_POS*
  %call683 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos682)
  %269 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %269, %union.rec** @zz_hold, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %270, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1684 = bitcast %union.rec* %271 to %struct.word_type*
  %ou1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 1
  %os11686 = bitcast %union.FIRST_UNION* %ou1685 to %struct.anon.0*
  %otype687 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11686, i32 0, i32 0
  %272 = load i8, i8* %otype687, align 1
  %conv688 = zext i8 %272 to i32
  %cmp689 = icmp eq i32 %conv688, 11
  br i1 %cmp689, label %cond.true.699, label %lor.lhs.false.691

lor.lhs.false.691:                                ; preds = %if.then.679
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1692 = bitcast %union.rec* %273 to %struct.word_type*
  %ou1693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1692, i32 0, i32 1
  %os11694 = bitcast %union.FIRST_UNION* %ou1693 to %struct.anon.0*
  %otype695 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11694, i32 0, i32 0
  %274 = load i8, i8* %otype695, align 1
  %conv696 = zext i8 %274 to i32
  %cmp697 = icmp eq i32 %conv696, 12
  br i1 %cmp697, label %cond.true.699, label %cond.false.705

cond.true.699:                                    ; preds = %lor.lhs.false.691, %if.then.679
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1700 = bitcast %union.rec* %275 to %struct.word_type*
  %ou1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 1
  %os11702 = bitcast %union.FIRST_UNION* %ou1701 to %struct.anon.0*
  %orec_size703 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11702, i32 0, i32 1
  %276 = load i8, i8* %orec_size703, align 1
  %conv704 = zext i8 %276 to i32
  br label %cond.end.713

cond.false.705:                                   ; preds = %lor.lhs.false.691
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1706 = bitcast %union.rec* %277 to %struct.word_type*
  %ou1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1706, i32 0, i32 1
  %os11708 = bitcast %union.FIRST_UNION* %ou1707 to %struct.anon.0*
  %otype709 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11708, i32 0, i32 0
  %278 = load i8, i8* %otype709, align 1
  %idxprom710 = zext i8 %278 to i64
  %arrayidx711 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom710
  %279 = load i8, i8* %arrayidx711, align 1
  %conv712 = zext i8 %279 to i32
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.705, %cond.true.699
  %cond714 = phi i32 [ %conv704, %cond.true.699 ], [ %conv712, %cond.false.705 ]
  store i32 %cond714, i32* @zz_size, align 4
  %280 = load i32, i32* @zz_size, align 4
  %idxprom715 = sext i32 %280 to i64
  %arrayidx716 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom715
  %281 = load %union.rec*, %union.rec** %arrayidx716, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1717 = bitcast %union.rec* %282 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 0
  %opred720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 0
  store %union.rec* %281, %union.rec** %opred720, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %284 = load i32, i32* @zz_size, align 4
  %idxprom721 = sext i32 %284 to i64
  %arrayidx722 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom721
  store %union.rec* %283, %union.rec** %arrayidx722, align 8
  store %union.rec* null, %union.rec** %res, align 8
  br label %sw.epilog.1241

if.end.723:                                       ; preds = %lor.lhs.false.671, %if.end.663
  %285 = load %union.rec*, %union.rec** %fname, align 8
  %os1724 = bitcast %union.rec* %285 to %struct.word_type*
  %ostring725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 4
  %arraydecay726 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring725, i32 0, i32 0
  %call727 = call i64 @strlen(i8* %arraydecay726) #5
  %sub728 = sub i64 %call727, 3
  %conv729 = trunc i64 %sub728 to i32
  store i32 %conv729, i32* %len, align 4
  %286 = load i32, i32* %len, align 4
  %cmp730 = icmp sge i32 %286, 0
  br i1 %cmp730, label %land.lhs.true.732, label %if.end.746

land.lhs.true.732:                                ; preds = %if.end.723
  %287 = load i32, i32* %len, align 4
  %idxprom733 = sext i32 %287 to i64
  %288 = load %union.rec*, %union.rec** %fname, align 8
  %os1734 = bitcast %union.rec* %288 to %struct.word_type*
  %ostring735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1734, i32 0, i32 4
  %arrayidx736 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring735, i32 0, i64 %idxprom733
  %call737 = call i32 @strcmp(i8* %arrayidx736, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #5
  %cmp738 = icmp eq i32 %call737, 0
  br i1 %cmp738, label %if.then.740, label %if.end.746

if.then.740:                                      ; preds = %land.lhs.true.732
  %289 = load i32, i32* %len, align 4
  %idxprom741 = sext i32 %289 to i64
  %290 = load %union.rec*, %union.rec** %fname, align 8
  %os1742 = bitcast %union.rec* %290 to %struct.word_type*
  %ostring743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 4
  %arrayidx744 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring743, i32 0, i64 %idxprom741
  %call745 = call i8* @strcpy(i8* %arrayidx744, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0)) #4
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.740, %land.lhs.true.732, %if.end.723
  %291 = load %union.rec*, %union.rec** %fname, align 8
  %os1747 = bitcast %union.rec* %291 to %struct.word_type*
  %ostring748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 4
  %arraydecay749 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring748, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %fname, align 8
  %os1750 = bitcast %union.rec* %292 to %struct.word_type*
  %ou1751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1750, i32 0, i32 1
  %ofpos752 = bitcast %union.FIRST_UNION* %ou1751 to %struct.FILE_POS*
  %293 = load %union.rec*, %union.rec** %res, align 8
  %os6753 = bitcast %union.rec* %293 to %struct.symbol_type*
  %opredefined754 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6753, i32 0, i32 12
  %294 = load i16, i16* %opredefined754, align 2
  %conv755 = zext i16 %294 to i32
  %cmp756 = icmp eq i32 %conv755, 112
  %cond758 = select i1 %cmp756, i32 1, i32 2
  %call759 = call zeroext i16 @DefineFile(i8* %arraydecay749, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %ofpos752, i32 1, i32 %cond758)
  store i16 %call759, i16* %fnum, align 2
  %295 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %295, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %296, %union.rec** @zz_hold, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1760 = bitcast %union.rec* %297 to %struct.word_type*
  %ou1761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1760, i32 0, i32 1
  %os11762 = bitcast %union.FIRST_UNION* %ou1761 to %struct.anon.0*
  %otype763 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11762, i32 0, i32 0
  %298 = load i8, i8* %otype763, align 1
  %conv764 = zext i8 %298 to i32
  %cmp765 = icmp eq i32 %conv764, 11
  br i1 %cmp765, label %cond.true.775, label %lor.lhs.false.767

lor.lhs.false.767:                                ; preds = %if.end.746
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1768 = bitcast %union.rec* %299 to %struct.word_type*
  %ou1769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1768, i32 0, i32 1
  %os11770 = bitcast %union.FIRST_UNION* %ou1769 to %struct.anon.0*
  %otype771 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11770, i32 0, i32 0
  %300 = load i8, i8* %otype771, align 1
  %conv772 = zext i8 %300 to i32
  %cmp773 = icmp eq i32 %conv772, 12
  br i1 %cmp773, label %cond.true.775, label %cond.false.781

cond.true.775:                                    ; preds = %lor.lhs.false.767, %if.end.746
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1776 = bitcast %union.rec* %301 to %struct.word_type*
  %ou1777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 1
  %os11778 = bitcast %union.FIRST_UNION* %ou1777 to %struct.anon.0*
  %orec_size779 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11778, i32 0, i32 1
  %302 = load i8, i8* %orec_size779, align 1
  %conv780 = zext i8 %302 to i32
  br label %cond.end.789

cond.false.781:                                   ; preds = %lor.lhs.false.767
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1782 = bitcast %union.rec* %303 to %struct.word_type*
  %ou1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1782, i32 0, i32 1
  %os11784 = bitcast %union.FIRST_UNION* %ou1783 to %struct.anon.0*
  %otype785 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11784, i32 0, i32 0
  %304 = load i8, i8* %otype785, align 1
  %idxprom786 = zext i8 %304 to i64
  %arrayidx787 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom786
  %305 = load i8, i8* %arrayidx787, align 1
  %conv788 = zext i8 %305 to i32
  br label %cond.end.789

cond.end.789:                                     ; preds = %cond.false.781, %cond.true.775
  %cond790 = phi i32 [ %conv780, %cond.true.775 ], [ %conv788, %cond.false.781 ]
  store i32 %cond790, i32* @zz_size, align 4
  %306 = load i32, i32* @zz_size, align 4
  %idxprom791 = sext i32 %306 to i64
  %arrayidx792 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom791
  %307 = load %union.rec*, %union.rec** %arrayidx792, align 8
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1793 = bitcast %union.rec* %308 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 0
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  store %union.rec* %307, %union.rec** %opred796, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %310 = load i32, i32* @zz_size, align 4
  %idxprom797 = sext i32 %310 to i64
  %arrayidx798 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom797
  store %union.rec* %309, %union.rec** %arrayidx798, align 8
  %311 = load i16, i16* %fnum, align 2
  call void @LexPush(i16 zeroext %311, i32 0, i32 1, i32 1, i32 0)
  %call799 = call %union.rec* @LexGetToken()
  store %union.rec* %call799, %union.rec** %res, align 8
  %312 = load i32, i32* %vcount, align 4
  %inc800 = add nsw i32 %312, 1
  store i32 %inc800, i32* %vcount, align 4
  %313 = load i8*, i8** @chpt, align 8
  store i8* %313, i8** %p, align 8
  br label %if.end.826

if.else.801:                                      ; preds = %lor.lhs.false
  %314 = load %union.rec*, %union.rec** %res, align 8
  %os6802 = bitcast %union.rec* %314 to %struct.symbol_type*
  %opredefined803 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6802, i32 0, i32 12
  %315 = load i16, i16* %opredefined803, align 2
  %conv804 = zext i16 %315 to i32
  %cmp805 = icmp eq i32 %conv804, 105
  br i1 %cmp805, label %if.then.807, label %if.else.816

if.then.807:                                      ; preds = %if.else.801
  %316 = load %union.rec*, %union.rec** %res, align 8
  %os6808 = bitcast %union.rec* %316 to %struct.symbol_type*
  %opredefined809 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6808, i32 0, i32 12
  %317 = load i16, i16* %opredefined809, align 2
  %conv810 = trunc i16 %317 to i8
  %318 = load %union.rec*, %union.rec** %res, align 8
  %os1811 = bitcast %union.rec* %318 to %struct.word_type*
  %ou2812 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1811, i32 0, i32 2
  %os21813 = bitcast %union.SECOND_UNION* %ou2812 to %struct.anon.1*
  %oprecedence814 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os21813, i32 0, i32 0
  %319 = load i8, i8* %oprecedence814, align 1
  %call815 = call %union.rec* @NewToken(i8 zeroext %conv810, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %319, %union.rec* null)
  store %union.rec* %call815, %union.rec** %res, align 8
  br label %if.end.825

if.else.816:                                      ; preds = %if.else.801
  %320 = load %union.rec*, %union.rec** %res, align 8
  %os6817 = bitcast %union.rec* %320 to %struct.symbol_type*
  %opredefined818 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6817, i32 0, i32 12
  %321 = load i16, i16* %opredefined818, align 2
  %conv819 = trunc i16 %321 to i8
  %322 = load %union.rec*, %union.rec** %res, align 8
  %os1820 = bitcast %union.rec* %322 to %struct.word_type*
  %ou2821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1820, i32 0, i32 2
  %os21822 = bitcast %union.SECOND_UNION* %ou2821 to %struct.anon.1*
  %oprecedence823 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os21822, i32 0, i32 0
  %323 = load i8, i8* %oprecedence823, align 1
  %324 = load %union.rec*, %union.rec** %res, align 8
  %call824 = call %union.rec* @NewToken(i8 zeroext %conv819, %struct.FILE_POS* @file_pos, i8 zeroext 0, i8 zeroext 0, i8 zeroext %323, %union.rec* %324)
  store %union.rec* %call824, %union.rec** %res, align 8
  br label %if.end.825

if.end.825:                                       ; preds = %if.else.816, %if.then.807
  br label %if.end.826

if.end.826:                                       ; preds = %if.end.825, %cond.end.789
  br label %if.end.827

if.end.827:                                       ; preds = %if.end.826, %if.then.487
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.end.481
  br label %if.end.829

if.end.829:                                       ; preds = %if.end.828, %for.end
  br label %sw.epilog.1241

sw.bb.830:                                        ; preds = %do.body
  %325 = load i8*, i8** %p, align 8
  store i8* %325, i8** %q, align 8
  store i8* %325, i8** %startpos, align 8
  %add.ptr831 = getelementptr inbounds i8, i8* %325, i64 -1
  %326 = load i8*, i8** @startline, align 8
  %sub.ptr.lhs.cast832 = ptrtoint i8* %add.ptr831 to i64
  %sub.ptr.rhs.cast833 = ptrtoint i8* %326 to i64
  %sub.ptr.sub834 = sub i64 %sub.ptr.lhs.cast832, %sub.ptr.rhs.cast833
  %conv835 = trunc i64 %sub.ptr.sub834 to i32
  %bf.load836 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value837 = and i32 %conv835, 4095
  %bf.shl838 = shl i32 %bf.value837, 20
  %bf.clear839 = and i32 %bf.load836, 1048575
  %bf.set840 = or i32 %bf.clear839, %bf.shl838
  store i32 %bf.set840, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  br label %do.body.841

do.body.841:                                      ; preds = %do.cond.1235, %sw.bb.830
  %327 = load i8*, i8** %p, align 8
  %incdec.ptr842 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %incdec.ptr842, i8** %p, align 8
  %328 = load i8, i8* %327, align 1
  %329 = load i8*, i8** %q, align 8
  %incdec.ptr843 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %incdec.ptr843, i8** %q, align 8
  store i8 %328, i8* %329, align 1
  %idxprom844 = zext i8 %328 to i64
  %arrayidx845 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom844
  %330 = load i8, i8* %arrayidx845, align 1
  %conv846 = zext i8 %330 to i32
  switch i32 %conv846, label %sw.default.1232 [
    i32 0, label %sw.bb.847
    i32 1, label %sw.bb.847
    i32 4, label %sw.bb.847
    i32 5, label %sw.bb.847
    i32 6, label %sw.bb.847
    i32 7, label %sw.bb.847
    i32 8, label %sw.bb.848
    i32 9, label %sw.bb.848
    i32 2, label %sw.bb.959
    i32 3, label %sw.bb.1068
  ]

sw.bb.847:                                        ; preds = %do.body.841, %do.body.841, %do.body.841, %do.body.841, %do.body.841, %do.body.841
  br label %sw.epilog.1234

sw.bb.848:                                        ; preds = %do.body.841, %do.body.841
  %331 = load i8*, i8** %p, align 8
  %incdec.ptr849 = getelementptr inbounds i8, i8* %331, i32 -1
  store i8* %incdec.ptr849, i8** %p, align 8
  %call850 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  %332 = load i8*, i8** %q, align 8
  %add.ptr851 = getelementptr inbounds i8, i8* %332, i64 -1
  %333 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast852 = ptrtoint i8* %add.ptr851 to i64
  %sub.ptr.rhs.cast853 = ptrtoint i8* %333 to i64
  %sub.ptr.sub854 = sub i64 %sub.ptr.lhs.cast852, %sub.ptr.rhs.cast853
  %add855 = add nsw i64 %sub.ptr.sub854, 1
  %mul856 = mul i64 %add855, 1
  %add857 = add i64 68, %mul856
  %conv858 = trunc i64 %add857 to i32
  store i32 %conv858, i32* @zz_size, align 4
  %334 = load i32, i32* @zz_size, align 4
  %sub859 = sub nsw i32 %334, 1
  %conv860 = sext i32 %sub859 to i64
  %div861 = udiv i64 %conv860, 8
  %add862 = add i64 %div861, 1
  %conv863 = trunc i64 %add862 to i32
  store i32 %conv863, i32* @zz_size, align 4
  %conv864 = sext i32 %conv863 to i64
  %cmp865 = icmp uge i64 %conv864, 265
  br i1 %cmp865, label %if.then.867, label %if.else.869

if.then.867:                                      ; preds = %sw.bb.848
  %call868 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.886

if.else.869:                                      ; preds = %sw.bb.848
  %335 = load i32, i32* @zz_size, align 4
  %idxprom870 = sext i32 %335 to i64
  %arrayidx871 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom870
  %336 = load %union.rec*, %union.rec** %arrayidx871, align 8
  %cmp872 = icmp eq %union.rec* %336, null
  br i1 %cmp872, label %if.then.874, label %if.else.876

if.then.874:                                      ; preds = %if.else.869
  %337 = load i32, i32* @zz_size, align 4
  %call875 = call %union.rec* @GetMemory(i32 %337, %struct.FILE_POS* @file_pos)
  store %union.rec* %call875, %union.rec** @zz_hold, align 8
  br label %if.end.885

if.else.876:                                      ; preds = %if.else.869
  %338 = load i32, i32* @zz_size, align 4
  %idxprom877 = sext i32 %338 to i64
  %arrayidx878 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom877
  %339 = load %union.rec*, %union.rec** %arrayidx878, align 8
  store %union.rec* %339, %union.rec** @zz_hold, align 8
  store %union.rec* %339, %union.rec** @zz_hold, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1879 = bitcast %union.rec* %340 to %struct.word_type*
  %olist880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1879, i32 0, i32 0
  %arrayidx881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist880, i32 0, i64 0
  %opred882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx881, i32 0, i32 0
  %341 = load %union.rec*, %union.rec** %opred882, align 8
  %342 = load i32, i32* @zz_size, align 4
  %idxprom883 = sext i32 %342 to i64
  %arrayidx884 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom883
  store %union.rec* %341, %union.rec** %arrayidx884, align 8
  br label %if.end.885

if.end.885:                                       ; preds = %if.else.876, %if.then.874
  br label %if.end.886

if.end.886:                                       ; preds = %if.end.885, %if.then.867
  %343 = load i32, i32* @zz_size, align 4
  %conv887 = trunc i32 %343 to i8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1888 = bitcast %union.rec* %344 to %struct.word_type*
  %ou1889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1888, i32 0, i32 1
  %os11890 = bitcast %union.FIRST_UNION* %ou1889 to %struct.anon.0*
  %orec_size891 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11890, i32 0, i32 1
  store i8 %conv887, i8* %orec_size891, align 1
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1892 = bitcast %union.rec* %345 to %struct.word_type*
  %ou1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1892, i32 0, i32 1
  %os11894 = bitcast %union.FIRST_UNION* %ou1893 to %struct.anon.0*
  %otype895 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11894, i32 0, i32 0
  store i8 12, i8* %otype895, align 1
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1896 = bitcast %union.rec* %347 to %struct.word_type*
  %olist897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1896, i32 0, i32 0
  %arrayidx898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist897, i32 0, i64 1
  %osucc899 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx898, i32 0, i32 1
  store %union.rec* %346, %union.rec** %osucc899, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1900 = bitcast %union.rec* %348 to %struct.word_type*
  %olist901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist901, i32 0, i64 1
  %opred903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx902, i32 0, i32 0
  store %union.rec* %346, %union.rec** %opred903, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1904 = bitcast %union.rec* %349 to %struct.word_type*
  %olist905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1904, i32 0, i32 0
  %arrayidx906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist905, i32 0, i64 0
  %osucc907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx906, i32 0, i32 1
  store %union.rec* %346, %union.rec** %osucc907, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1908 = bitcast %union.rec* %350 to %struct.word_type*
  %olist909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1908, i32 0, i32 0
  %arrayidx910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist909, i32 0, i64 0
  %opred911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx910, i32 0, i32 0
  store %union.rec* %346, %union.rec** %opred911, align 8
  store %union.rec* %346, %union.rec** %res, align 8
  %351 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %352 = load %union.rec*, %union.rec** %res, align 8
  %os1912 = bitcast %union.rec* %352 to %struct.word_type*
  %ou1913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1912, i32 0, i32 1
  %ofpos914 = bitcast %union.FIRST_UNION* %ou1913 to %struct.FILE_POS*
  %ofile_num915 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos914, i32 0, i32 2
  store i16 %351, i16* %ofile_num915, align 2
  %bf.load916 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear917 = and i32 %bf.load916, 1048575
  %353 = load %union.rec*, %union.rec** %res, align 8
  %os1918 = bitcast %union.rec* %353 to %struct.word_type*
  %ou1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 1
  %ofpos920 = bitcast %union.FIRST_UNION* %ou1919 to %struct.FILE_POS*
  %oline_num921 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos920, i32 0, i32 3
  %bf.load922 = load i32, i32* %oline_num921, align 4
  %bf.value923 = and i32 %bf.clear917, 1048575
  %bf.clear924 = and i32 %bf.load922, -1048576
  %bf.set925 = or i32 %bf.clear924, %bf.value923
  store i32 %bf.set925, i32* %oline_num921, align 4
  %bf.load926 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr927 = lshr i32 %bf.load926, 20
  %354 = load %union.rec*, %union.rec** %res, align 8
  %os1928 = bitcast %union.rec* %354 to %struct.word_type*
  %ou1929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1928, i32 0, i32 1
  %ofpos930 = bitcast %union.FIRST_UNION* %ou1929 to %struct.FILE_POS*
  %ocol_num931 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos930, i32 0, i32 3
  %bf.load932 = load i32, i32* %ocol_num931, align 4
  %bf.value933 = and i32 %bf.lshr927, 4095
  %bf.shl934 = shl i32 %bf.value933, 20
  %bf.clear935 = and i32 %bf.load932, 1048575
  %bf.set936 = or i32 %bf.clear935, %bf.shl934
  store i32 %bf.set936, i32* %ocol_num931, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.937

for.cond.937:                                     ; preds = %for.inc.952, %if.end.886
  %355 = load i32, i32* %c, align 4
  %conv938 = sext i32 %355 to i64
  %356 = load i8*, i8** %q, align 8
  %add.ptr939 = getelementptr inbounds i8, i8* %356, i64 -1
  %357 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast940 = ptrtoint i8* %add.ptr939 to i64
  %sub.ptr.rhs.cast941 = ptrtoint i8* %357 to i64
  %sub.ptr.sub942 = sub i64 %sub.ptr.lhs.cast940, %sub.ptr.rhs.cast941
  %cmp943 = icmp slt i64 %conv938, %sub.ptr.sub942
  br i1 %cmp943, label %for.body.945, label %for.end.954

for.body.945:                                     ; preds = %for.cond.937
  %358 = load i32, i32* %c, align 4
  %idxprom946 = sext i32 %358 to i64
  %359 = load i8*, i8** %startpos, align 8
  %arrayidx947 = getelementptr inbounds i8, i8* %359, i64 %idxprom946
  %360 = load i8, i8* %arrayidx947, align 1
  %361 = load i32, i32* %c, align 4
  %idxprom948 = sext i32 %361 to i64
  %362 = load %union.rec*, %union.rec** %res, align 8
  %os1949 = bitcast %union.rec* %362 to %struct.word_type*
  %ostring950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1949, i32 0, i32 4
  %arrayidx951 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring950, i32 0, i64 %idxprom948
  store i8 %360, i8* %arrayidx951, align 1
  br label %for.inc.952

for.inc.952:                                      ; preds = %for.body.945
  %363 = load i32, i32* %c, align 4
  %inc953 = add nsw i32 %363, 1
  store i32 %inc953, i32* %c, align 4
  br label %for.cond.937

for.end.954:                                      ; preds = %for.cond.937
  %364 = load i32, i32* %c, align 4
  %idxprom955 = sext i32 %364 to i64
  %365 = load %union.rec*, %union.rec** %res, align 8
  %os1956 = bitcast %union.rec* %365 to %struct.word_type*
  %ostring957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1956, i32 0, i32 4
  %arrayidx958 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring957, i32 0, i64 %idxprom955
  store i8 0, i8* %arrayidx958, align 1
  br label %sw.epilog.1234

sw.bb.959:                                        ; preds = %do.body.841
  %366 = load i8*, i8** %q, align 8
  %add.ptr960 = getelementptr inbounds i8, i8* %366, i64 -1
  %367 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast961 = ptrtoint i8* %add.ptr960 to i64
  %sub.ptr.rhs.cast962 = ptrtoint i8* %367 to i64
  %sub.ptr.sub963 = sub i64 %sub.ptr.lhs.cast961, %sub.ptr.rhs.cast962
  %add964 = add nsw i64 %sub.ptr.sub963, 1
  %mul965 = mul i64 %add964, 1
  %add966 = add i64 68, %mul965
  %conv967 = trunc i64 %add966 to i32
  store i32 %conv967, i32* @zz_size, align 4
  %368 = load i32, i32* @zz_size, align 4
  %sub968 = sub nsw i32 %368, 1
  %conv969 = sext i32 %sub968 to i64
  %div970 = udiv i64 %conv969, 8
  %add971 = add i64 %div970, 1
  %conv972 = trunc i64 %add971 to i32
  store i32 %conv972, i32* @zz_size, align 4
  %conv973 = sext i32 %conv972 to i64
  %cmp974 = icmp uge i64 %conv973, 265
  br i1 %cmp974, label %if.then.976, label %if.else.978

if.then.976:                                      ; preds = %sw.bb.959
  %call977 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.995

if.else.978:                                      ; preds = %sw.bb.959
  %369 = load i32, i32* @zz_size, align 4
  %idxprom979 = sext i32 %369 to i64
  %arrayidx980 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom979
  %370 = load %union.rec*, %union.rec** %arrayidx980, align 8
  %cmp981 = icmp eq %union.rec* %370, null
  br i1 %cmp981, label %if.then.983, label %if.else.985

if.then.983:                                      ; preds = %if.else.978
  %371 = load i32, i32* @zz_size, align 4
  %call984 = call %union.rec* @GetMemory(i32 %371, %struct.FILE_POS* @file_pos)
  store %union.rec* %call984, %union.rec** @zz_hold, align 8
  br label %if.end.994

if.else.985:                                      ; preds = %if.else.978
  %372 = load i32, i32* @zz_size, align 4
  %idxprom986 = sext i32 %372 to i64
  %arrayidx987 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom986
  %373 = load %union.rec*, %union.rec** %arrayidx987, align 8
  store %union.rec* %373, %union.rec** @zz_hold, align 8
  store %union.rec* %373, %union.rec** @zz_hold, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1988 = bitcast %union.rec* %374 to %struct.word_type*
  %olist989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1988, i32 0, i32 0
  %arrayidx990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist989, i32 0, i64 0
  %opred991 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx990, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred991, align 8
  %376 = load i32, i32* @zz_size, align 4
  %idxprom992 = sext i32 %376 to i64
  %arrayidx993 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom992
  store %union.rec* %375, %union.rec** %arrayidx993, align 8
  br label %if.end.994

if.end.994:                                       ; preds = %if.else.985, %if.then.983
  br label %if.end.995

if.end.995:                                       ; preds = %if.end.994, %if.then.976
  %377 = load i32, i32* @zz_size, align 4
  %conv996 = trunc i32 %377 to i8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1997 = bitcast %union.rec* %378 to %struct.word_type*
  %ou1998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1997, i32 0, i32 1
  %os11999 = bitcast %union.FIRST_UNION* %ou1998 to %struct.anon.0*
  %orec_size1000 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11999, i32 0, i32 1
  store i8 %conv996, i8* %orec_size1000, align 1
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11001 = bitcast %union.rec* %379 to %struct.word_type*
  %ou11002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11001, i32 0, i32 1
  %os111003 = bitcast %union.FIRST_UNION* %ou11002 to %struct.anon.0*
  %otype1004 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111003, i32 0, i32 0
  store i8 12, i8* %otype1004, align 1
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11005 = bitcast %union.rec* %381 to %struct.word_type*
  %olist1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11005, i32 0, i32 0
  %arrayidx1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1006, i32 0, i64 1
  %osucc1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1007, i32 0, i32 1
  store %union.rec* %380, %union.rec** %osucc1008, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11009 = bitcast %union.rec* %382 to %struct.word_type*
  %olist1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11009, i32 0, i32 0
  %arrayidx1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1010, i32 0, i64 1
  %opred1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1011, i32 0, i32 0
  store %union.rec* %380, %union.rec** %opred1012, align 8
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11013 = bitcast %union.rec* %383 to %struct.word_type*
  %olist1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11013, i32 0, i32 0
  %arrayidx1015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1014, i32 0, i64 0
  %osucc1016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1015, i32 0, i32 1
  store %union.rec* %380, %union.rec** %osucc1016, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11017 = bitcast %union.rec* %384 to %struct.word_type*
  %olist1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11017, i32 0, i32 0
  %arrayidx1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1018, i32 0, i64 0
  %opred1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1019, i32 0, i32 0
  store %union.rec* %380, %union.rec** %opred1020, align 8
  store %union.rec* %380, %union.rec** %res, align 8
  %385 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %386 = load %union.rec*, %union.rec** %res, align 8
  %os11021 = bitcast %union.rec* %386 to %struct.word_type*
  %ou11022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 1
  %ofpos1023 = bitcast %union.FIRST_UNION* %ou11022 to %struct.FILE_POS*
  %ofile_num1024 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1023, i32 0, i32 2
  store i16 %385, i16* %ofile_num1024, align 2
  %bf.load1025 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear1026 = and i32 %bf.load1025, 1048575
  %387 = load %union.rec*, %union.rec** %res, align 8
  %os11027 = bitcast %union.rec* %387 to %struct.word_type*
  %ou11028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11027, i32 0, i32 1
  %ofpos1029 = bitcast %union.FIRST_UNION* %ou11028 to %struct.FILE_POS*
  %oline_num1030 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1029, i32 0, i32 3
  %bf.load1031 = load i32, i32* %oline_num1030, align 4
  %bf.value1032 = and i32 %bf.clear1026, 1048575
  %bf.clear1033 = and i32 %bf.load1031, -1048576
  %bf.set1034 = or i32 %bf.clear1033, %bf.value1032
  store i32 %bf.set1034, i32* %oline_num1030, align 4
  %bf.load1035 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr1036 = lshr i32 %bf.load1035, 20
  %388 = load %union.rec*, %union.rec** %res, align 8
  %os11037 = bitcast %union.rec* %388 to %struct.word_type*
  %ou11038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 1
  %ofpos1039 = bitcast %union.FIRST_UNION* %ou11038 to %struct.FILE_POS*
  %ocol_num1040 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1039, i32 0, i32 3
  %bf.load1041 = load i32, i32* %ocol_num1040, align 4
  %bf.value1042 = and i32 %bf.lshr1036, 4095
  %bf.shl1043 = shl i32 %bf.value1042, 20
  %bf.clear1044 = and i32 %bf.load1041, 1048575
  %bf.set1045 = or i32 %bf.clear1044, %bf.shl1043
  store i32 %bf.set1045, i32* %ocol_num1040, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.1046

for.cond.1046:                                    ; preds = %for.inc.1061, %if.end.995
  %389 = load i32, i32* %c, align 4
  %conv1047 = sext i32 %389 to i64
  %390 = load i8*, i8** %q, align 8
  %add.ptr1048 = getelementptr inbounds i8, i8* %390, i64 -1
  %391 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast1049 = ptrtoint i8* %add.ptr1048 to i64
  %sub.ptr.rhs.cast1050 = ptrtoint i8* %391 to i64
  %sub.ptr.sub1051 = sub i64 %sub.ptr.lhs.cast1049, %sub.ptr.rhs.cast1050
  %cmp1052 = icmp slt i64 %conv1047, %sub.ptr.sub1051
  br i1 %cmp1052, label %for.body.1054, label %for.end.1063

for.body.1054:                                    ; preds = %for.cond.1046
  %392 = load i32, i32* %c, align 4
  %idxprom1055 = sext i32 %392 to i64
  %393 = load i8*, i8** %startpos, align 8
  %arrayidx1056 = getelementptr inbounds i8, i8* %393, i64 %idxprom1055
  %394 = load i8, i8* %arrayidx1056, align 1
  %395 = load i32, i32* %c, align 4
  %idxprom1057 = sext i32 %395 to i64
  %396 = load %union.rec*, %union.rec** %res, align 8
  %os11058 = bitcast %union.rec* %396 to %struct.word_type*
  %ostring1059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11058, i32 0, i32 4
  %arrayidx1060 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1059, i32 0, i64 %idxprom1057
  store i8 %394, i8* %arrayidx1060, align 1
  br label %for.inc.1061

for.inc.1061:                                     ; preds = %for.body.1054
  %397 = load i32, i32* %c, align 4
  %inc1062 = add nsw i32 %397, 1
  store i32 %inc1062, i32* %c, align 4
  br label %for.cond.1046

for.end.1063:                                     ; preds = %for.cond.1046
  %398 = load i32, i32* %c, align 4
  %idxprom1064 = sext i32 %398 to i64
  %399 = load %union.rec*, %union.rec** %res, align 8
  %os11065 = bitcast %union.rec* %399 to %struct.word_type*
  %ostring1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11065, i32 0, i32 4
  %arrayidx1067 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1066, i32 0, i64 %idxprom1064
  store i8 0, i8* %arrayidx1067, align 1
  br label %sw.epilog.1234

sw.bb.1068:                                       ; preds = %do.body.841
  %400 = load i8*, i8** %q, align 8
  %incdec.ptr1069 = getelementptr inbounds i8, i8* %400, i32 -1
  store i8* %incdec.ptr1069, i8** %q, align 8
  %401 = load i8*, i8** %p, align 8
  %402 = load i8, i8* %401, align 1
  %idxprom1070 = zext i8 %402 to i64
  %arrayidx1071 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom1070
  %403 = load i8, i8* %arrayidx1071, align 1
  %conv1072 = zext i8 %403 to i32
  %cmp1073 = icmp eq i32 %conv1072, 8
  br i1 %cmp1073, label %if.then.1081, label %lor.lhs.false.1075

lor.lhs.false.1075:                               ; preds = %sw.bb.1068
  %404 = load i8*, i8** %p, align 8
  %405 = load i8, i8* %404, align 1
  %idxprom1076 = zext i8 %405 to i64
  %arrayidx1077 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom1076
  %406 = load i8, i8* %arrayidx1077, align 1
  %conv1078 = zext i8 %406 to i32
  %cmp1079 = icmp eq i32 %conv1078, 9
  br i1 %cmp1079, label %if.then.1081, label %if.else.1189

if.then.1081:                                     ; preds = %lor.lhs.false.1075, %sw.bb.1068
  %call1082 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  %407 = load i8*, i8** %q, align 8
  %408 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast1083 = ptrtoint i8* %407 to i64
  %sub.ptr.rhs.cast1084 = ptrtoint i8* %408 to i64
  %sub.ptr.sub1085 = sub i64 %sub.ptr.lhs.cast1083, %sub.ptr.rhs.cast1084
  %add1086 = add nsw i64 %sub.ptr.sub1085, 1
  %mul1087 = mul i64 %add1086, 1
  %add1088 = add i64 68, %mul1087
  %conv1089 = trunc i64 %add1088 to i32
  store i32 %conv1089, i32* @zz_size, align 4
  %409 = load i32, i32* @zz_size, align 4
  %sub1090 = sub nsw i32 %409, 1
  %conv1091 = sext i32 %sub1090 to i64
  %div1092 = udiv i64 %conv1091, 8
  %add1093 = add i64 %div1092, 1
  %conv1094 = trunc i64 %add1093 to i32
  store i32 %conv1094, i32* @zz_size, align 4
  %conv1095 = sext i32 %conv1094 to i64
  %cmp1096 = icmp uge i64 %conv1095, 265
  br i1 %cmp1096, label %if.then.1098, label %if.else.1100

if.then.1098:                                     ; preds = %if.then.1081
  %call1099 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.1117

if.else.1100:                                     ; preds = %if.then.1081
  %410 = load i32, i32* @zz_size, align 4
  %idxprom1101 = sext i32 %410 to i64
  %arrayidx1102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1101
  %411 = load %union.rec*, %union.rec** %arrayidx1102, align 8
  %cmp1103 = icmp eq %union.rec* %411, null
  br i1 %cmp1103, label %if.then.1105, label %if.else.1107

if.then.1105:                                     ; preds = %if.else.1100
  %412 = load i32, i32* @zz_size, align 4
  %call1106 = call %union.rec* @GetMemory(i32 %412, %struct.FILE_POS* @file_pos)
  store %union.rec* %call1106, %union.rec** @zz_hold, align 8
  br label %if.end.1116

if.else.1107:                                     ; preds = %if.else.1100
  %413 = load i32, i32* @zz_size, align 4
  %idxprom1108 = sext i32 %413 to i64
  %arrayidx1109 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1108
  %414 = load %union.rec*, %union.rec** %arrayidx1109, align 8
  store %union.rec* %414, %union.rec** @zz_hold, align 8
  store %union.rec* %414, %union.rec** @zz_hold, align 8
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11110 = bitcast %union.rec* %415 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 0
  %opred1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 0
  %416 = load %union.rec*, %union.rec** %opred1113, align 8
  %417 = load i32, i32* @zz_size, align 4
  %idxprom1114 = sext i32 %417 to i64
  %arrayidx1115 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1114
  store %union.rec* %416, %union.rec** %arrayidx1115, align 8
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.else.1107, %if.then.1105
  br label %if.end.1117

if.end.1117:                                      ; preds = %if.end.1116, %if.then.1098
  %418 = load i32, i32* @zz_size, align 4
  %conv1118 = trunc i32 %418 to i8
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11119 = bitcast %union.rec* %419 to %struct.word_type*
  %ou11120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11119, i32 0, i32 1
  %os111121 = bitcast %union.FIRST_UNION* %ou11120 to %struct.anon.0*
  %orec_size1122 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111121, i32 0, i32 1
  store i8 %conv1118, i8* %orec_size1122, align 1
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11123 = bitcast %union.rec* %420 to %struct.word_type*
  %ou11124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11123, i32 0, i32 1
  %os111125 = bitcast %union.FIRST_UNION* %ou11124 to %struct.anon.0*
  %otype1126 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111125, i32 0, i32 0
  store i8 12, i8* %otype1126, align 1
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11127 = bitcast %union.rec* %422 to %struct.word_type*
  %olist1128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11127, i32 0, i32 0
  %arrayidx1129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1128, i32 0, i64 1
  %osucc1130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1129, i32 0, i32 1
  store %union.rec* %421, %union.rec** %osucc1130, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11131 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11131, i32 0, i32 0
  %arrayidx1133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1132, i32 0, i64 1
  %opred1134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1133, i32 0, i32 0
  store %union.rec* %421, %union.rec** %opred1134, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11135 = bitcast %union.rec* %424 to %struct.word_type*
  %olist1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11135, i32 0, i32 0
  %arrayidx1137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1136, i32 0, i64 0
  %osucc1138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1137, i32 0, i32 1
  store %union.rec* %421, %union.rec** %osucc1138, align 8
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11139 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11139, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1140, i32 0, i64 0
  %opred1142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1141, i32 0, i32 0
  store %union.rec* %421, %union.rec** %opred1142, align 8
  store %union.rec* %421, %union.rec** %res, align 8
  %426 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %427 = load %union.rec*, %union.rec** %res, align 8
  %os11143 = bitcast %union.rec* %427 to %struct.word_type*
  %ou11144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11143, i32 0, i32 1
  %ofpos1145 = bitcast %union.FIRST_UNION* %ou11144 to %struct.FILE_POS*
  %ofile_num1146 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1145, i32 0, i32 2
  store i16 %426, i16* %ofile_num1146, align 2
  %bf.load1147 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear1148 = and i32 %bf.load1147, 1048575
  %428 = load %union.rec*, %union.rec** %res, align 8
  %os11149 = bitcast %union.rec* %428 to %struct.word_type*
  %ou11150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11149, i32 0, i32 1
  %ofpos1151 = bitcast %union.FIRST_UNION* %ou11150 to %struct.FILE_POS*
  %oline_num1152 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1151, i32 0, i32 3
  %bf.load1153 = load i32, i32* %oline_num1152, align 4
  %bf.value1154 = and i32 %bf.clear1148, 1048575
  %bf.clear1155 = and i32 %bf.load1153, -1048576
  %bf.set1156 = or i32 %bf.clear1155, %bf.value1154
  store i32 %bf.set1156, i32* %oline_num1152, align 4
  %bf.load1157 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr1158 = lshr i32 %bf.load1157, 20
  %429 = load %union.rec*, %union.rec** %res, align 8
  %os11159 = bitcast %union.rec* %429 to %struct.word_type*
  %ou11160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11159, i32 0, i32 1
  %ofpos1161 = bitcast %union.FIRST_UNION* %ou11160 to %struct.FILE_POS*
  %ocol_num1162 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1161, i32 0, i32 3
  %bf.load1163 = load i32, i32* %ocol_num1162, align 4
  %bf.value1164 = and i32 %bf.lshr1158, 4095
  %bf.shl1165 = shl i32 %bf.value1164, 20
  %bf.clear1166 = and i32 %bf.load1163, 1048575
  %bf.set1167 = or i32 %bf.clear1166, %bf.shl1165
  store i32 %bf.set1167, i32* %ocol_num1162, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.1168

for.cond.1168:                                    ; preds = %for.inc.1182, %if.end.1117
  %430 = load i32, i32* %c, align 4
  %conv1169 = sext i32 %430 to i64
  %431 = load i8*, i8** %q, align 8
  %432 = load i8*, i8** %startpos, align 8
  %sub.ptr.lhs.cast1170 = ptrtoint i8* %431 to i64
  %sub.ptr.rhs.cast1171 = ptrtoint i8* %432 to i64
  %sub.ptr.sub1172 = sub i64 %sub.ptr.lhs.cast1170, %sub.ptr.rhs.cast1171
  %cmp1173 = icmp slt i64 %conv1169, %sub.ptr.sub1172
  br i1 %cmp1173, label %for.body.1175, label %for.end.1184

for.body.1175:                                    ; preds = %for.cond.1168
  %433 = load i32, i32* %c, align 4
  %idxprom1176 = sext i32 %433 to i64
  %434 = load i8*, i8** %startpos, align 8
  %arrayidx1177 = getelementptr inbounds i8, i8* %434, i64 %idxprom1176
  %435 = load i8, i8* %arrayidx1177, align 1
  %436 = load i32, i32* %c, align 4
  %idxprom1178 = sext i32 %436 to i64
  %437 = load %union.rec*, %union.rec** %res, align 8
  %os11179 = bitcast %union.rec* %437 to %struct.word_type*
  %ostring1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11179, i32 0, i32 4
  %arrayidx1181 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1180, i32 0, i64 %idxprom1178
  store i8 %435, i8* %arrayidx1181, align 1
  br label %for.inc.1182

for.inc.1182:                                     ; preds = %for.body.1175
  %438 = load i32, i32* %c, align 4
  %inc1183 = add nsw i32 %438, 1
  store i32 %inc1183, i32* %c, align 4
  br label %for.cond.1168

for.end.1184:                                     ; preds = %for.cond.1168
  %439 = load i32, i32* %c, align 4
  %idxprom1185 = sext i32 %439 to i64
  %440 = load %union.rec*, %union.rec** %res, align 8
  %os11186 = bitcast %union.rec* %440 to %struct.word_type*
  %ostring1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11186, i32 0, i32 4
  %arrayidx1188 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1187, i32 0, i64 %idxprom1185
  store i8 0, i8* %arrayidx1188, align 1
  br label %if.end.1231

if.else.1189:                                     ; preds = %lor.lhs.false.1075
  %441 = load i8*, i8** %p, align 8
  %442 = load i8, i8* %441, align 1
  %conv1190 = zext i8 %442 to i32
  %cmp1191 = icmp sge i32 %conv1190, 48
  br i1 %cmp1191, label %land.lhs.true.1193, label %if.else.1227

land.lhs.true.1193:                               ; preds = %if.else.1189
  %443 = load i8*, i8** %p, align 8
  %444 = load i8, i8* %443, align 1
  %conv1194 = zext i8 %444 to i32
  %cmp1195 = icmp sle i32 %conv1194, 55
  br i1 %cmp1195, label %if.then.1197, label %if.else.1227

if.then.1197:                                     ; preds = %land.lhs.true.1193
  store i32 0, i32* %ch, align 4
  store i32 0, i32* %count, align 4
  br label %do.body.1198

do.body.1198:                                     ; preds = %land.end.1216, %if.then.1197
  %445 = load i32, i32* %ch, align 4
  %mul1199 = mul nsw i32 %445, 8
  %446 = load i8*, i8** %p, align 8
  %incdec.ptr1200 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %incdec.ptr1200, i8** %p, align 8
  %447 = load i8, i8* %446, align 1
  %conv1201 = zext i8 %447 to i32
  %sub1202 = sub nsw i32 %conv1201, 48
  %add1203 = add nsw i32 %mul1199, %sub1202
  store i32 %add1203, i32* %ch, align 4
  %448 = load i32, i32* %count, align 4
  %inc1204 = add nsw i32 %448, 1
  store i32 %inc1204, i32* %count, align 4
  br label %do.cond.1205

do.cond.1205:                                     ; preds = %do.body.1198
  %449 = load i8*, i8** %p, align 8
  %450 = load i8, i8* %449, align 1
  %conv1206 = zext i8 %450 to i32
  %cmp1207 = icmp sge i32 %conv1206, 48
  br i1 %cmp1207, label %land.lhs.true.1209, label %land.end.1216

land.lhs.true.1209:                               ; preds = %do.cond.1205
  %451 = load i8*, i8** %p, align 8
  %452 = load i8, i8* %451, align 1
  %conv1210 = zext i8 %452 to i32
  %cmp1211 = icmp sle i32 %conv1210, 55
  br i1 %cmp1211, label %land.rhs.1213, label %land.end.1216

land.rhs.1213:                                    ; preds = %land.lhs.true.1209
  %453 = load i32, i32* %count, align 4
  %cmp1214 = icmp slt i32 %453, 3
  br label %land.end.1216

land.end.1216:                                    ; preds = %land.rhs.1213, %land.lhs.true.1209, %do.cond.1205
  %454 = phi i1 [ false, %land.lhs.true.1209 ], [ false, %do.cond.1205 ], [ %cmp1214, %land.rhs.1213 ]
  br i1 %454, label %do.body.1198, label %do.end.1218

do.end.1218:                                      ; preds = %land.end.1216
  %455 = load i32, i32* %ch, align 4
  %cmp1219 = icmp eq i32 %455, 0
  br i1 %cmp1219, label %if.then.1221, label %if.else.1223

if.then.1221:                                     ; preds = %do.end.1218
  %call1222 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i32 2, %struct.FILE_POS* @file_pos)
  br label %if.end.1226

if.else.1223:                                     ; preds = %do.end.1218
  %456 = load i32, i32* %ch, align 4
  %conv1224 = trunc i32 %456 to i8
  %457 = load i8*, i8** %q, align 8
  %incdec.ptr1225 = getelementptr inbounds i8, i8* %457, i32 1
  store i8* %incdec.ptr1225, i8** %q, align 8
  store i8 %conv1224, i8* %457, align 1
  br label %if.end.1226

if.end.1226:                                      ; preds = %if.else.1223, %if.then.1221
  br label %if.end.1230

if.else.1227:                                     ; preds = %land.lhs.true.1193, %if.else.1189
  %458 = load i8*, i8** %p, align 8
  %incdec.ptr1228 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %incdec.ptr1228, i8** %p, align 8
  %459 = load i8, i8* %458, align 1
  %460 = load i8*, i8** %q, align 8
  %incdec.ptr1229 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %incdec.ptr1229, i8** %q, align 8
  store i8 %459, i8* %460, align 1
  br label %if.end.1230

if.end.1230:                                      ; preds = %if.else.1227, %if.end.1226
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.end.1230, %for.end.1184
  br label %sw.epilog.1234

sw.default.1232:                                  ; preds = %do.body.841
  %call1233 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i32 0, %struct.FILE_POS* @file_pos)
  br label %sw.epilog.1234

sw.epilog.1234:                                   ; preds = %sw.default.1232, %if.end.1231, %for.end.1063, %for.end.954, %sw.bb.847
  br label %do.cond.1235

do.cond.1235:                                     ; preds = %sw.epilog.1234
  %461 = load %union.rec*, %union.rec** %res, align 8
  %cmp1236 = icmp eq %union.rec* %461, null
  br i1 %cmp1236, label %do.body.841, label %do.end.1238

do.end.1238:                                      ; preds = %do.cond.1235
  br label %sw.epilog.1241

sw.default.1239:                                  ; preds = %do.body
  %462 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1240 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %462, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0))
  br label %sw.epilog.1241

sw.epilog.1241:                                   ; preds = %sw.default.1239, %do.end.1238, %if.end.829, %cond.end.713, %cond.end.562, %if.end.161, %sw.bb.78, %sw.bb.77, %sw.bb.75, %if.end.74, %if.end.52
  br label %do.cond.1242

do.cond.1242:                                     ; preds = %sw.epilog.1241
  %463 = load %union.rec*, %union.rec** %res, align 8
  %cmp1243 = icmp eq %union.rec* %463, null
  br i1 %cmp1243, label %do.body, label %do.end.1245

do.end.1245:                                      ; preds = %do.cond.1242
  %464 = load i8*, i8** %p, align 8
  %465 = load i8*, i8** @startline, align 8
  %sub.ptr.lhs.cast1246 = ptrtoint i8* %464 to i64
  %sub.ptr.rhs.cast1247 = ptrtoint i8* %465 to i64
  %sub.ptr.sub1248 = sub i64 %sub.ptr.lhs.cast1246, %sub.ptr.rhs.cast1247
  %cmp1249 = icmp sge i64 %sub.ptr.sub1248, 2048
  br i1 %cmp1249, label %if.then.1251, label %if.end.1256

if.then.1251:                                     ; preds = %do.end.1245
  %bf.load1252 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear1253 = and i32 %bf.load1252, 1048575
  %bf.set1254 = or i32 %bf.clear1253, 1048576
  store i32 %bf.set1254, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %call1255 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.1256

if.end.1256:                                      ; preds = %if.then.1251, %do.end.1245
  %466 = load i8*, i8** %p, align 8
  store i8* %466, i8** @chpt, align 8
  %467 = load i32, i32* %vcount, align 4
  %conv1257 = trunc i32 %467 to i8
  %468 = load %union.rec*, %union.rec** %res, align 8
  %os11258 = bitcast %union.rec* %468 to %struct.word_type*
  %ou21259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11258, i32 0, i32 2
  %os211260 = bitcast %union.SECOND_UNION* %ou21259 to %struct.anon.1*
  %ovspace = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os211260, i32 0, i32 2
  store i8 %conv1257, i8* %ovspace, align 1
  %469 = load i32, i32* %hcount, align 4
  %conv1261 = trunc i32 %469 to i8
  %470 = load %union.rec*, %union.rec** %res, align 8
  %os11262 = bitcast %union.rec* %470 to %struct.word_type*
  %ou21263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11262, i32 0, i32 2
  %os211264 = bitcast %union.SECOND_UNION* %ou21263 to %struct.anon.1*
  %ohspace = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os211264, i32 0, i32 1
  store i8 %conv1261, i8* %ohspace, align 1
  %471 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %471, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.1256, %cond.end
  %472 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %472
}

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

; Function Attrs: nounwind uwtable
define internal void @srcnext() #0 {
entry:
  %col = alloca i8*, align 8
  %0 = load i32, i32* @blksize, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** @chpt, align 8
  %2 = load i8*, i8** @limit, align 8
  %cmp1 = icmp ult i8* %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** @buf, align 8
  store i8* %3, i8** %col, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i8*, i8** @limit, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** @limit, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %6 = load i8*, i8** %col, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr2, i8** %col, align 8
  store i8 %5, i8* %incdec.ptr2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 10
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %col, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %add.ptr, i8** @frst, align 8
  %8 = load i8*, i8** @limit, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr5, i8** @limit, align 8
  store i32 0, i32* @blksize, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  %9 = load i8*, i8** @chpt, align 8
  %10 = load i8*, i8** @limit, align 8
  %cmp6 = icmp uge i8* %9, %10
  br i1 %cmp6, label %if.then.8, label %if.end.44

if.then.8:                                        ; preds = %if.end
  %11 = load i8*, i8** @chpt, align 8
  %12 = load i8*, i8** @limit, align 8
  %cmp9 = icmp ugt i8* %11, %12
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %bf.load = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear = and i32 %bf.load, 1048575
  %bf.set = or i32 %bf.clear, 1048576
  store i32 %bf.set, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  %13 = load i8*, i8** @frst, align 8
  store i8* %13, i8** @chpt, align 8
  %14 = load i8*, i8** @buf, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call13 = call i64 @fread(i8* %14, i64 1, i64 8192, %struct._IO_FILE* %15)
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* @blksize, align 4
  %16 = load i32, i32* @blksize, align 4
  %cmp15 = icmp sgt i32 %16, 0
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.12
  %17 = load i8*, i8** @buf, align 8
  %18 = load i32, i32* @blksize, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 -1
  %19 = load i8, i8* %add.ptr19, align 1
  store i8 %19, i8* @last_char, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.12
  %20 = load i32, i32* @blksize, align 4
  %cmp21 = icmp slt i32 %20, 8192
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.41

land.lhs.true.23:                                 ; preds = %if.end.20
  %21 = load i8, i8* @last_char, align 1
  %conv24 = zext i8 %21 to i32
  %cmp25 = icmp ne i32 %conv24, 10
  br i1 %cmp25, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %land.lhs.true.23
  %22 = load i32, i32* @blksize, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @blksize, align 4
  %23 = load i8*, i8** @buf, align 8
  %24 = load i32, i32* @blksize, align 4
  %idx.ext28 = sext i32 %24 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %23, i64 %idx.ext28
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr29, i64 -1
  store i8 10, i8* %add.ptr30, align 1
  store i8 10, i8* @last_char, align 1
  %25 = load i16, i16* @ftype, align 2
  %conv31 = sext i16 %25 to i32
  %cmp32 = icmp eq i32 %conv31, 3
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.then.27
  %bf.load35 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear36 = and i32 %bf.load35, 1048575
  store i32 %bf.clear36, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.load37 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear38 = and i32 %bf.load37, -1048576
  store i32 %bf.clear38, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %call39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.55, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %if.then.27
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true.23, %if.end.20
  %26 = load i8*, i8** @buf, align 8
  store i8* %26, i8** @frst, align 8
  %27 = load i8*, i8** @buf, align 8
  %28 = load i32, i32* @blksize, align 4
  %idx.ext42 = sext i32 %28 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %27, i64 %idx.ext42
  store i8* %add.ptr43, i8** @limit, align 8
  %29 = load i8*, i8** @limit, align 8
  store i8 10, i8* %29, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.41, %if.end
  %30 = load i8*, i8** @chpt, align 8
  %31 = load i8*, i8** @limit, align 8
  %cmp45 = icmp uge i8* %30, %31
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %32 = load i8*, i8** @buf, align 8
  store i8* %32, i8** @limit, align 8
  store i8* %32, i8** @chpt, align 8
  %33 = load i8*, i8** @limit, align 8
  store i8 0, i8* %33, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  ret void
}

declare zeroext i16 @NextFile(i16 zeroext) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare %union.rec* @SearchSym(i8*, i32) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @CopyTokenList(%union.rec*, %struct.FILE_POS*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @SymName(%union.rec*) #1

declare void @UnSuppressScope() #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare void @SuppressScope() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %union.rec* @LexScanVerbatim(%struct._IO_FILE* %fp, i32 %end_stop, %struct.FILE_POS* %err_pos, i32 %lessskip) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %end_stop.addr = alloca i32, align 4
  %err_pos.addr = alloca %struct.FILE_POS*, align 8
  %lessskip.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %depth = alloca i32, align 4
  %finished = alloca i32, align 4
  %skipping = alloca i32, align 4
  %hs_buff = alloca [512 x i8], align 16
  %hs_top = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %bufftop = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %i63 = alloca i32, align 4
  %i113 = alloca i32, align 4
  %i181 = alloca i32, align 4
  %i259 = alloca i32, align 4
  %i326 = alloca i32, align 4
  %incl_fname = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %incl_fp = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %fnum = alloca i16, align 2
  %sysinc = alloca i32, align 4
  %i412 = alloca i32, align 4
  %i567 = alloca i32, align 4
  %i633 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %end_stop, i32* %end_stop.addr, align 4
  store %struct.FILE_POS* %err_pos, %struct.FILE_POS** %err_pos.addr, align 8
  store i32 %lessskip, i32* %lessskip.addr, align 4
  store %union.rec* null, %union.rec** %res, align 8
  %0 = load %union.rec*, %union.rec** @next_token, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** %err_pos.addr, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @chpt, align 8
  store i8* %2, i8** %p, align 8
  store i32 0, i32* %depth, align 4
  store i32 0, i32* %finished, align 4
  store i32 1, i32* %skipping, align 4
  store i32 0, i32* %hs_top, align 4
  store i32 0, i32* %bufftop, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %3 = load i32, i32* %finished, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.703

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb.57
    i32 7, label %sw.bb.57
    i32 6, label %sw.bb.57
    i32 8, label %sw.bb.107
    i32 9, label %sw.bb.166
    i32 0, label %sw.bb.175
    i32 1, label %sw.bb.393
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  store i32 0, i32* %skipping, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %hs_top, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %9, null
  br i1 %cmp3, label %if.then.5, label %if.else.24

if.then.5:                                        ; preds = %for.body
  %10 = load i32, i32* %bufftop, align 4
  %cmp6 = icmp slt i32 %10, 512
  br i1 %cmp6, label %if.then.8, label %if.end.23

if.then.8:                                        ; preds = %if.then.5
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %idxprom11 = zext i8 %12 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 8
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.8
  %14 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call17 = call %union.rec* @BuildLines(%union.rec* %14, i8* %arraydecay, i32* %bufftop)
  store %union.rec* %call17, %union.rec** %res, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.8
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom18
  %16 = load i8, i8* %arrayidx19, align 1
  %17 = load i32, i32* %bufftop, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %bufftop, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom20
  store i8 %16, i8* %arrayidx21, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.5
  br label %if.end.29

if.else.24:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom25
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call28 = call i32 @_IO_putc(i32 %conv27, %struct._IO_FILE* %20)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.24, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %21 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %hs_top, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp31 = icmp eq %struct._IO_FILE* %22, null
  br i1 %cmp31, label %if.then.33, label %if.else.52

if.then.33:                                       ; preds = %for.end
  %23 = load i32, i32* %bufftop, align 4
  %cmp34 = icmp slt i32 %23, 512
  br i1 %cmp34, label %if.then.36, label %if.end.51

if.then.36:                                       ; preds = %if.then.33
  %24 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 -1
  %25 = load i8, i8* %add.ptr, align 1
  %idxprom37 = zext i8 %25 to i64
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom37
  %26 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %26 to i32
  %cmp40 = icmp eq i32 %conv39, 8
  br i1 %cmp40, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.then.36
  %27 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay43 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call44 = call %union.rec* @BuildLines(%union.rec* %27, i8* %arraydecay43, i32* %bufftop)
  store %union.rec* %call44, %union.rec** %res, align 8
  br label %if.end.50

if.else.45:                                       ; preds = %if.then.36
  %28 = load i8*, i8** %p, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %28, i64 -1
  %29 = load i8, i8* %add.ptr46, align 1
  %30 = load i32, i32* %bufftop, align 4
  %inc47 = add nsw i32 %30, 1
  store i32 %inc47, i32* %bufftop, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom48
  store i8 %29, i8* %arrayidx49, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %if.then.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.33
  br label %if.end.56

if.else.52:                                       ; preds = %for.end
  %31 = load i8*, i8** %p, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %31, i64 -1
  %32 = load i8, i8* %add.ptr53, align 1
  %conv54 = zext i8 %32 to i32
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call55 = call i32 @_IO_putc(i32 %conv54, %struct._IO_FILE* %33)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.52, %if.end.51
  br label %sw.epilog

sw.bb.57:                                         ; preds = %while.body, %while.body, %while.body
  %34 = load i32, i32* %skipping, align 4
  %tobool58 = icmp ne i32 %34, 0
  br i1 %tobool58, label %if.end.106, label %if.then.59

if.then.59:                                       ; preds = %sw.bb.57
  %35 = load i32, i32* %hs_top, align 4
  %cmp60 = icmp eq i32 %35, 512
  br i1 %cmp60, label %if.then.62, label %if.end.101

if.then.62:                                       ; preds = %if.then.59
  store i32 0, i32* %i63, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.98, %if.then.62
  %36 = load i32, i32* %i63, align 4
  %37 = load i32, i32* %hs_top, align 4
  %cmp65 = icmp slt i32 %36, %37
  br i1 %cmp65, label %for.body.67, label %for.end.100

for.body.67:                                      ; preds = %for.cond.64
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp68 = icmp eq %struct._IO_FILE* %38, null
  br i1 %cmp68, label %if.then.70, label %if.else.92

if.then.70:                                       ; preds = %for.body.67
  %39 = load i32, i32* %bufftop, align 4
  %cmp71 = icmp slt i32 %39, 512
  br i1 %cmp71, label %if.then.73, label %if.end.91

if.then.73:                                       ; preds = %if.then.70
  %40 = load i32, i32* %i63, align 4
  %idxprom74 = sext i32 %40 to i64
  %arrayidx75 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom74
  %41 = load i8, i8* %arrayidx75, align 1
  %idxprom76 = zext i8 %41 to i64
  %arrayidx77 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom76
  %42 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %42 to i32
  %cmp79 = icmp eq i32 %conv78, 8
  br i1 %cmp79, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %if.then.73
  %43 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay82 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call83 = call %union.rec* @BuildLines(%union.rec* %43, i8* %arraydecay82, i32* %bufftop)
  store %union.rec* %call83, %union.rec** %res, align 8
  br label %if.end.90

if.else.84:                                       ; preds = %if.then.73
  %44 = load i32, i32* %i63, align 4
  %idxprom85 = sext i32 %44 to i64
  %arrayidx86 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom85
  %45 = load i8, i8* %arrayidx86, align 1
  %46 = load i32, i32* %bufftop, align 4
  %inc87 = add nsw i32 %46, 1
  store i32 %inc87, i32* %bufftop, align 4
  %idxprom88 = sext i32 %46 to i64
  %arrayidx89 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom88
  store i8 %45, i8* %arrayidx89, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.84, %if.then.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.70
  br label %if.end.97

if.else.92:                                       ; preds = %for.body.67
  %47 = load i32, i32* %i63, align 4
  %idxprom93 = sext i32 %47 to i64
  %arrayidx94 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom93
  %48 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %48 to i32
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call96 = call i32 @_IO_putc(i32 %conv95, %struct._IO_FILE* %49)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.92, %if.end.91
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %50 = load i32, i32* %i63, align 4
  %inc99 = add nsw i32 %50, 1
  store i32 %inc99, i32* %i63, align 4
  br label %for.cond.64

for.end.100:                                      ; preds = %for.cond.64
  store i32 0, i32* %hs_top, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %if.then.59
  %51 = load i8*, i8** %p, align 8
  %add.ptr102 = getelementptr inbounds i8, i8* %51, i64 -1
  %52 = load i8, i8* %add.ptr102, align 1
  %53 = load i32, i32* %hs_top, align 4
  %inc103 = add nsw i32 %53, 1
  store i32 %inc103, i32* %hs_top, align 4
  %idxprom104 = sext i32 %53 to i64
  %arrayidx105 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom104
  store i8 %52, i8* %arrayidx105, align 1
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.101, %sw.bb.57
  br label %sw.epilog

sw.bb.107:                                        ; preds = %while.body
  %54 = load i32, i32* %skipping, align 4
  %tobool108 = icmp ne i32 %54, 0
  br i1 %tobool108, label %if.end.156, label %if.then.109

if.then.109:                                      ; preds = %sw.bb.107
  %55 = load i32, i32* %hs_top, align 4
  %cmp110 = icmp eq i32 %55, 512
  br i1 %cmp110, label %if.then.112, label %if.end.151

if.then.112:                                      ; preds = %if.then.109
  store i32 0, i32* %i113, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.148, %if.then.112
  %56 = load i32, i32* %i113, align 4
  %57 = load i32, i32* %hs_top, align 4
  %cmp115 = icmp slt i32 %56, %57
  br i1 %cmp115, label %for.body.117, label %for.end.150

for.body.117:                                     ; preds = %for.cond.114
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp118 = icmp eq %struct._IO_FILE* %58, null
  br i1 %cmp118, label %if.then.120, label %if.else.142

if.then.120:                                      ; preds = %for.body.117
  %59 = load i32, i32* %bufftop, align 4
  %cmp121 = icmp slt i32 %59, 512
  br i1 %cmp121, label %if.then.123, label %if.end.141

if.then.123:                                      ; preds = %if.then.120
  %60 = load i32, i32* %i113, align 4
  %idxprom124 = sext i32 %60 to i64
  %arrayidx125 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom124
  %61 = load i8, i8* %arrayidx125, align 1
  %idxprom126 = zext i8 %61 to i64
  %arrayidx127 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom126
  %62 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %62 to i32
  %cmp129 = icmp eq i32 %conv128, 8
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %if.then.123
  %63 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay132 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call133 = call %union.rec* @BuildLines(%union.rec* %63, i8* %arraydecay132, i32* %bufftop)
  store %union.rec* %call133, %union.rec** %res, align 8
  br label %if.end.140

if.else.134:                                      ; preds = %if.then.123
  %64 = load i32, i32* %i113, align 4
  %idxprom135 = sext i32 %64 to i64
  %arrayidx136 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom135
  %65 = load i8, i8* %arrayidx136, align 1
  %66 = load i32, i32* %bufftop, align 4
  %inc137 = add nsw i32 %66, 1
  store i32 %inc137, i32* %bufftop, align 4
  %idxprom138 = sext i32 %66 to i64
  %arrayidx139 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom138
  store i8 %65, i8* %arrayidx139, align 1
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.134, %if.then.131
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.120
  br label %if.end.147

if.else.142:                                      ; preds = %for.body.117
  %67 = load i32, i32* %i113, align 4
  %idxprom143 = sext i32 %67 to i64
  %arrayidx144 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom143
  %68 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %68 to i32
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call146 = call i32 @_IO_putc(i32 %conv145, %struct._IO_FILE* %69)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.142, %if.end.141
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %70 = load i32, i32* %i113, align 4
  %inc149 = add nsw i32 %70, 1
  store i32 %inc149, i32* %i113, align 4
  br label %for.cond.114

for.end.150:                                      ; preds = %for.cond.114
  store i32 0, i32* %hs_top, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %if.then.109
  %71 = load i8*, i8** %p, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %71, i64 -1
  %72 = load i8, i8* %add.ptr152, align 1
  %73 = load i32, i32* %hs_top, align 4
  %inc153 = add nsw i32 %73, 1
  store i32 %inc153, i32* %hs_top, align 4
  %idxprom154 = sext i32 %73 to i64
  %arrayidx155 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom154
  store i8 %72, i8* %arrayidx155, align 1
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.151, %sw.bb.107
  %74 = load i32, i32* %lessskip.addr, align 4
  %tobool157 = icmp ne i32 %74, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.156
  store i32 0, i32* %skipping, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.156
  %75 = load i8*, i8** %p, align 8
  store i8* %75, i8** @chpt, align 8
  call void @srcnext()
  %bf.load = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear = and i32 %bf.load, 1048575
  %inc160 = add i32 %bf.clear, 1
  %bf.load161 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.value = and i32 %inc160, 1048575
  %bf.clear162 = and i32 %bf.load161, -1048576
  %bf.set = or i32 %bf.clear162, %bf.value
  store i32 %bf.set, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.load163 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear164 = and i32 %bf.load163, 1048575
  store i32 %bf.clear164, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %76 = load i8*, i8** @chpt, align 8
  store i8* %76, i8** %p, align 8
  %add.ptr165 = getelementptr inbounds i8, i8* %76, i64 -1
  store i8* %add.ptr165, i8** @startline, align 8
  br label %sw.epilog

sw.bb.166:                                        ; preds = %while.body
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp167 = icmp eq %struct._IO_FILE* %77, null
  br i1 %cmp167, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %sw.bb.166
  %78 = load %struct.FILE_POS*, %struct.FILE_POS** %err_pos.addr, align 8
  %79 = load i32, i32* %lessskip.addr, align 4
  %tobool170 = icmp ne i32 %79, 0
  %cond = select i1 %tobool170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0)
  %call171 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i32 1, %struct.FILE_POS* %78, i8* %cond)
  br label %if.end.174

if.else.172:                                      ; preds = %sw.bb.166
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** %err_pos.addr, align 8
  %call173 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i32 0, i32 0), i32 1, %struct.FILE_POS* %80)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.172, %if.then.169
  br label %sw.epilog

sw.bb.175:                                        ; preds = %while.body
  store i32 0, i32* %skipping, align 4
  %81 = load i8*, i8** %p, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %81, i64 -1
  %82 = load i8, i8* %add.ptr176, align 1
  %conv177 = zext i8 %82 to i32
  %cmp178 = icmp eq i32 %conv177, 123
  br i1 %cmp178, label %if.then.180, label %if.else.247

if.then.180:                                      ; preds = %sw.bb.175
  store i32 0, i32* %i181, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.216, %if.then.180
  %83 = load i32, i32* %i181, align 4
  %84 = load i32, i32* %hs_top, align 4
  %cmp183 = icmp slt i32 %83, %84
  br i1 %cmp183, label %for.body.185, label %for.end.218

for.body.185:                                     ; preds = %for.cond.182
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp186 = icmp eq %struct._IO_FILE* %85, null
  br i1 %cmp186, label %if.then.188, label %if.else.210

if.then.188:                                      ; preds = %for.body.185
  %86 = load i32, i32* %bufftop, align 4
  %cmp189 = icmp slt i32 %86, 512
  br i1 %cmp189, label %if.then.191, label %if.end.209

if.then.191:                                      ; preds = %if.then.188
  %87 = load i32, i32* %i181, align 4
  %idxprom192 = sext i32 %87 to i64
  %arrayidx193 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom192
  %88 = load i8, i8* %arrayidx193, align 1
  %idxprom194 = zext i8 %88 to i64
  %arrayidx195 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom194
  %89 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %89 to i32
  %cmp197 = icmp eq i32 %conv196, 8
  br i1 %cmp197, label %if.then.199, label %if.else.202

if.then.199:                                      ; preds = %if.then.191
  %90 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay200 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call201 = call %union.rec* @BuildLines(%union.rec* %90, i8* %arraydecay200, i32* %bufftop)
  store %union.rec* %call201, %union.rec** %res, align 8
  br label %if.end.208

if.else.202:                                      ; preds = %if.then.191
  %91 = load i32, i32* %i181, align 4
  %idxprom203 = sext i32 %91 to i64
  %arrayidx204 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom203
  %92 = load i8, i8* %arrayidx204, align 1
  %93 = load i32, i32* %bufftop, align 4
  %inc205 = add nsw i32 %93, 1
  store i32 %inc205, i32* %bufftop, align 4
  %idxprom206 = sext i32 %93 to i64
  %arrayidx207 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom206
  store i8 %92, i8* %arrayidx207, align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.202, %if.then.199
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.188
  br label %if.end.215

if.else.210:                                      ; preds = %for.body.185
  %94 = load i32, i32* %i181, align 4
  %idxprom211 = sext i32 %94 to i64
  %arrayidx212 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom211
  %95 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %95 to i32
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call214 = call i32 @_IO_putc(i32 %conv213, %struct._IO_FILE* %96)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.210, %if.end.209
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %97 = load i32, i32* %i181, align 4
  %inc217 = add nsw i32 %97, 1
  store i32 %inc217, i32* %i181, align 4
  br label %for.cond.182

for.end.218:                                      ; preds = %for.cond.182
  store i32 0, i32* %hs_top, align 4
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp219 = icmp eq %struct._IO_FILE* %98, null
  br i1 %cmp219, label %if.then.221, label %if.else.241

if.then.221:                                      ; preds = %for.end.218
  %99 = load i32, i32* %bufftop, align 4
  %cmp222 = icmp slt i32 %99, 512
  br i1 %cmp222, label %if.then.224, label %if.end.240

if.then.224:                                      ; preds = %if.then.221
  %100 = load i8*, i8** %p, align 8
  %add.ptr225 = getelementptr inbounds i8, i8* %100, i64 -1
  %101 = load i8, i8* %add.ptr225, align 1
  %idxprom226 = zext i8 %101 to i64
  %arrayidx227 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom226
  %102 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %102 to i32
  %cmp229 = icmp eq i32 %conv228, 8
  br i1 %cmp229, label %if.then.231, label %if.else.234

if.then.231:                                      ; preds = %if.then.224
  %103 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay232 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call233 = call %union.rec* @BuildLines(%union.rec* %103, i8* %arraydecay232, i32* %bufftop)
  store %union.rec* %call233, %union.rec** %res, align 8
  br label %if.end.239

if.else.234:                                      ; preds = %if.then.224
  %104 = load i8*, i8** %p, align 8
  %add.ptr235 = getelementptr inbounds i8, i8* %104, i64 -1
  %105 = load i8, i8* %add.ptr235, align 1
  %106 = load i32, i32* %bufftop, align 4
  %inc236 = add nsw i32 %106, 1
  store i32 %inc236, i32* %bufftop, align 4
  %idxprom237 = sext i32 %106 to i64
  %arrayidx238 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom237
  store i8 %105, i8* %arrayidx238, align 1
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.234, %if.then.231
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.221
  br label %if.end.245

if.else.241:                                      ; preds = %for.end.218
  %107 = load i8*, i8** %p, align 8
  %add.ptr242 = getelementptr inbounds i8, i8* %107, i64 -1
  %108 = load i8, i8* %add.ptr242, align 1
  %conv243 = zext i8 %108 to i32
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call244 = call i32 @_IO_putc(i32 %conv243, %struct._IO_FILE* %109)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.241, %if.end.240
  %110 = load i32, i32* %depth, align 4
  %inc246 = add nsw i32 %110, 1
  store i32 %inc246, i32* %depth, align 4
  br label %if.end.392

if.else.247:                                      ; preds = %sw.bb.175
  %111 = load i8*, i8** %p, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %111, i64 -1
  %112 = load i8, i8* %add.ptr248, align 1
  %conv249 = zext i8 %112 to i32
  %cmp250 = icmp eq i32 %conv249, 125
  br i1 %cmp250, label %if.then.252, label %if.else.325

if.then.252:                                      ; preds = %if.else.247
  %113 = load i32, i32* %end_stop.addr, align 4
  %tobool253 = icmp ne i32 %113, 0
  br i1 %tobool253, label %if.else.258, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.252
  %114 = load i32, i32* %depth, align 4
  %cmp254 = icmp eq i32 %114, 0
  br i1 %cmp254, label %if.then.256, label %if.else.258

if.then.256:                                      ; preds = %land.lhs.true
  %115 = load i8*, i8** %p, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %incdec.ptr257, i8** %p, align 8
  store i32 1, i32* %finished, align 4
  br label %if.end.324

if.else.258:                                      ; preds = %land.lhs.true, %if.then.252
  store i32 0, i32* %i259, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.294, %if.else.258
  %116 = load i32, i32* %i259, align 4
  %117 = load i32, i32* %hs_top, align 4
  %cmp261 = icmp slt i32 %116, %117
  br i1 %cmp261, label %for.body.263, label %for.end.296

for.body.263:                                     ; preds = %for.cond.260
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp264 = icmp eq %struct._IO_FILE* %118, null
  br i1 %cmp264, label %if.then.266, label %if.else.288

if.then.266:                                      ; preds = %for.body.263
  %119 = load i32, i32* %bufftop, align 4
  %cmp267 = icmp slt i32 %119, 512
  br i1 %cmp267, label %if.then.269, label %if.end.287

if.then.269:                                      ; preds = %if.then.266
  %120 = load i32, i32* %i259, align 4
  %idxprom270 = sext i32 %120 to i64
  %arrayidx271 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom270
  %121 = load i8, i8* %arrayidx271, align 1
  %idxprom272 = zext i8 %121 to i64
  %arrayidx273 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom272
  %122 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %122 to i32
  %cmp275 = icmp eq i32 %conv274, 8
  br i1 %cmp275, label %if.then.277, label %if.else.280

if.then.277:                                      ; preds = %if.then.269
  %123 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay278 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call279 = call %union.rec* @BuildLines(%union.rec* %123, i8* %arraydecay278, i32* %bufftop)
  store %union.rec* %call279, %union.rec** %res, align 8
  br label %if.end.286

if.else.280:                                      ; preds = %if.then.269
  %124 = load i32, i32* %i259, align 4
  %idxprom281 = sext i32 %124 to i64
  %arrayidx282 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom281
  %125 = load i8, i8* %arrayidx282, align 1
  %126 = load i32, i32* %bufftop, align 4
  %inc283 = add nsw i32 %126, 1
  store i32 %inc283, i32* %bufftop, align 4
  %idxprom284 = sext i32 %126 to i64
  %arrayidx285 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom284
  store i8 %125, i8* %arrayidx285, align 1
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.280, %if.then.277
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.then.266
  br label %if.end.293

if.else.288:                                      ; preds = %for.body.263
  %127 = load i32, i32* %i259, align 4
  %idxprom289 = sext i32 %127 to i64
  %arrayidx290 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom289
  %128 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %128 to i32
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call292 = call i32 @_IO_putc(i32 %conv291, %struct._IO_FILE* %129)
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.288, %if.end.287
  br label %for.inc.294

for.inc.294:                                      ; preds = %if.end.293
  %130 = load i32, i32* %i259, align 4
  %inc295 = add nsw i32 %130, 1
  store i32 %inc295, i32* %i259, align 4
  br label %for.cond.260

for.end.296:                                      ; preds = %for.cond.260
  store i32 0, i32* %hs_top, align 4
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp297 = icmp eq %struct._IO_FILE* %131, null
  br i1 %cmp297, label %if.then.299, label %if.else.319

if.then.299:                                      ; preds = %for.end.296
  %132 = load i32, i32* %bufftop, align 4
  %cmp300 = icmp slt i32 %132, 512
  br i1 %cmp300, label %if.then.302, label %if.end.318

if.then.302:                                      ; preds = %if.then.299
  %133 = load i8*, i8** %p, align 8
  %add.ptr303 = getelementptr inbounds i8, i8* %133, i64 -1
  %134 = load i8, i8* %add.ptr303, align 1
  %idxprom304 = zext i8 %134 to i64
  %arrayidx305 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom304
  %135 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %135 to i32
  %cmp307 = icmp eq i32 %conv306, 8
  br i1 %cmp307, label %if.then.309, label %if.else.312

if.then.309:                                      ; preds = %if.then.302
  %136 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay310 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call311 = call %union.rec* @BuildLines(%union.rec* %136, i8* %arraydecay310, i32* %bufftop)
  store %union.rec* %call311, %union.rec** %res, align 8
  br label %if.end.317

if.else.312:                                      ; preds = %if.then.302
  %137 = load i8*, i8** %p, align 8
  %add.ptr313 = getelementptr inbounds i8, i8* %137, i64 -1
  %138 = load i8, i8* %add.ptr313, align 1
  %139 = load i32, i32* %bufftop, align 4
  %inc314 = add nsw i32 %139, 1
  store i32 %inc314, i32* %bufftop, align 4
  %idxprom315 = sext i32 %139 to i64
  %arrayidx316 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom315
  store i8 %138, i8* %arrayidx316, align 1
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.312, %if.then.309
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.then.299
  br label %if.end.323

if.else.319:                                      ; preds = %for.end.296
  %140 = load i8*, i8** %p, align 8
  %add.ptr320 = getelementptr inbounds i8, i8* %140, i64 -1
  %141 = load i8, i8* %add.ptr320, align 1
  %conv321 = zext i8 %141 to i32
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call322 = call i32 @_IO_putc(i32 %conv321, %struct._IO_FILE* %142)
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.319, %if.end.318
  %143 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %143, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.then.256
  br label %if.end.391

if.else.325:                                      ; preds = %if.else.247
  store i32 0, i32* %i326, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.361, %if.else.325
  %144 = load i32, i32* %i326, align 4
  %145 = load i32, i32* %hs_top, align 4
  %cmp328 = icmp slt i32 %144, %145
  br i1 %cmp328, label %for.body.330, label %for.end.363

for.body.330:                                     ; preds = %for.cond.327
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp331 = icmp eq %struct._IO_FILE* %146, null
  br i1 %cmp331, label %if.then.333, label %if.else.355

if.then.333:                                      ; preds = %for.body.330
  %147 = load i32, i32* %bufftop, align 4
  %cmp334 = icmp slt i32 %147, 512
  br i1 %cmp334, label %if.then.336, label %if.end.354

if.then.336:                                      ; preds = %if.then.333
  %148 = load i32, i32* %i326, align 4
  %idxprom337 = sext i32 %148 to i64
  %arrayidx338 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom337
  %149 = load i8, i8* %arrayidx338, align 1
  %idxprom339 = zext i8 %149 to i64
  %arrayidx340 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom339
  %150 = load i8, i8* %arrayidx340, align 1
  %conv341 = zext i8 %150 to i32
  %cmp342 = icmp eq i32 %conv341, 8
  br i1 %cmp342, label %if.then.344, label %if.else.347

if.then.344:                                      ; preds = %if.then.336
  %151 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay345 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call346 = call %union.rec* @BuildLines(%union.rec* %151, i8* %arraydecay345, i32* %bufftop)
  store %union.rec* %call346, %union.rec** %res, align 8
  br label %if.end.353

if.else.347:                                      ; preds = %if.then.336
  %152 = load i32, i32* %i326, align 4
  %idxprom348 = sext i32 %152 to i64
  %arrayidx349 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom348
  %153 = load i8, i8* %arrayidx349, align 1
  %154 = load i32, i32* %bufftop, align 4
  %inc350 = add nsw i32 %154, 1
  store i32 %inc350, i32* %bufftop, align 4
  %idxprom351 = sext i32 %154 to i64
  %arrayidx352 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom351
  store i8 %153, i8* %arrayidx352, align 1
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.347, %if.then.344
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.then.333
  br label %if.end.360

if.else.355:                                      ; preds = %for.body.330
  %155 = load i32, i32* %i326, align 4
  %idxprom356 = sext i32 %155 to i64
  %arrayidx357 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom356
  %156 = load i8, i8* %arrayidx357, align 1
  %conv358 = zext i8 %156 to i32
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call359 = call i32 @_IO_putc(i32 %conv358, %struct._IO_FILE* %157)
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.355, %if.end.354
  br label %for.inc.361

for.inc.361:                                      ; preds = %if.end.360
  %158 = load i32, i32* %i326, align 4
  %inc362 = add nsw i32 %158, 1
  store i32 %inc362, i32* %i326, align 4
  br label %for.cond.327

for.end.363:                                      ; preds = %for.cond.327
  store i32 0, i32* %hs_top, align 4
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp364 = icmp eq %struct._IO_FILE* %159, null
  br i1 %cmp364, label %if.then.366, label %if.else.386

if.then.366:                                      ; preds = %for.end.363
  %160 = load i32, i32* %bufftop, align 4
  %cmp367 = icmp slt i32 %160, 512
  br i1 %cmp367, label %if.then.369, label %if.end.385

if.then.369:                                      ; preds = %if.then.366
  %161 = load i8*, i8** %p, align 8
  %add.ptr370 = getelementptr inbounds i8, i8* %161, i64 -1
  %162 = load i8, i8* %add.ptr370, align 1
  %idxprom371 = zext i8 %162 to i64
  %arrayidx372 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom371
  %163 = load i8, i8* %arrayidx372, align 1
  %conv373 = zext i8 %163 to i32
  %cmp374 = icmp eq i32 %conv373, 8
  br i1 %cmp374, label %if.then.376, label %if.else.379

if.then.376:                                      ; preds = %if.then.369
  %164 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay377 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call378 = call %union.rec* @BuildLines(%union.rec* %164, i8* %arraydecay377, i32* %bufftop)
  store %union.rec* %call378, %union.rec** %res, align 8
  br label %if.end.384

if.else.379:                                      ; preds = %if.then.369
  %165 = load i8*, i8** %p, align 8
  %add.ptr380 = getelementptr inbounds i8, i8* %165, i64 -1
  %166 = load i8, i8* %add.ptr380, align 1
  %167 = load i32, i32* %bufftop, align 4
  %inc381 = add nsw i32 %167, 1
  store i32 %inc381, i32* %bufftop, align 4
  %idxprom382 = sext i32 %167 to i64
  %arrayidx383 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom382
  store i8 %166, i8* %arrayidx383, align 1
  br label %if.end.384

if.end.384:                                       ; preds = %if.else.379, %if.then.376
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.366
  br label %if.end.390

if.else.386:                                      ; preds = %for.end.363
  %168 = load i8*, i8** %p, align 8
  %add.ptr387 = getelementptr inbounds i8, i8* %168, i64 -1
  %169 = load i8, i8* %add.ptr387, align 1
  %conv388 = zext i8 %169 to i32
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call389 = call i32 @_IO_putc(i32 %conv388, %struct._IO_FILE* %170)
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.386, %if.end.385
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390, %if.end.324
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.end.245
  br label %sw.epilog

sw.bb.393:                                        ; preds = %while.body
  store i32 0, i32* %skipping, align 4
  %171 = load i8*, i8** %p, align 8
  %add.ptr394 = getelementptr inbounds i8, i8* %171, i64 -1
  %172 = load i8, i8* %add.ptr394, align 1
  %conv395 = zext i8 %172 to i32
  %cmp396 = icmp eq i32 %conv395, 64
  br i1 %cmp396, label %if.then.398, label %if.else.632

if.then.398:                                      ; preds = %sw.bb.393
  %173 = load i8*, i8** %p, align 8
  %incdec.ptr399 = getelementptr inbounds i8, i8* %173, i32 -1
  store i8* %incdec.ptr399, i8** %p, align 8
  %174 = load i32, i32* %end_stop.addr, align 4
  %tobool400 = icmp ne i32 %174, 0
  br i1 %tobool400, label %land.lhs.true.401, label %if.else.405

land.lhs.true.401:                                ; preds = %if.then.398
  %175 = load i8*, i8** %p, align 8
  %call402 = call i32 @StringBeginsWith(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  %tobool403 = icmp ne i32 %call402, 0
  br i1 %tobool403, label %if.then.404, label %if.else.405

if.then.404:                                      ; preds = %land.lhs.true.401
  store i32 1, i32* %finished, align 4
  br label %if.end.631

if.else.405:                                      ; preds = %land.lhs.true.401, %if.then.398
  %176 = load i8*, i8** %p, align 8
  %call406 = call i32 @StringBeginsWith(i8* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0))
  %tobool407 = icmp ne i32 %call406, 0
  br i1 %tobool407, label %if.then.410, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.405
  %177 = load i8*, i8** %p, align 8
  %call408 = call i32 @StringBeginsWith(i8* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  %tobool409 = icmp ne i32 %call408, 0
  br i1 %tobool409, label %if.then.410, label %if.else.566

if.then.410:                                      ; preds = %lor.lhs.false, %if.else.405
  %178 = load i8*, i8** %p, align 8
  %call411 = call i32 @StringBeginsWith(i8* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0))
  store i32 %call411, i32* %sysinc, align 4
  store i32 0, i32* %i412, align 4
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc.447, %if.then.410
  %179 = load i32, i32* %i412, align 4
  %180 = load i32, i32* %hs_top, align 4
  %cmp414 = icmp slt i32 %179, %180
  br i1 %cmp414, label %for.body.416, label %for.end.449

for.body.416:                                     ; preds = %for.cond.413
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp417 = icmp eq %struct._IO_FILE* %181, null
  br i1 %cmp417, label %if.then.419, label %if.else.441

if.then.419:                                      ; preds = %for.body.416
  %182 = load i32, i32* %bufftop, align 4
  %cmp420 = icmp slt i32 %182, 512
  br i1 %cmp420, label %if.then.422, label %if.end.440

if.then.422:                                      ; preds = %if.then.419
  %183 = load i32, i32* %i412, align 4
  %idxprom423 = sext i32 %183 to i64
  %arrayidx424 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom423
  %184 = load i8, i8* %arrayidx424, align 1
  %idxprom425 = zext i8 %184 to i64
  %arrayidx426 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom425
  %185 = load i8, i8* %arrayidx426, align 1
  %conv427 = zext i8 %185 to i32
  %cmp428 = icmp eq i32 %conv427, 8
  br i1 %cmp428, label %if.then.430, label %if.else.433

if.then.430:                                      ; preds = %if.then.422
  %186 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay431 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call432 = call %union.rec* @BuildLines(%union.rec* %186, i8* %arraydecay431, i32* %bufftop)
  store %union.rec* %call432, %union.rec** %res, align 8
  br label %if.end.439

if.else.433:                                      ; preds = %if.then.422
  %187 = load i32, i32* %i412, align 4
  %idxprom434 = sext i32 %187 to i64
  %arrayidx435 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom434
  %188 = load i8, i8* %arrayidx435, align 1
  %189 = load i32, i32* %bufftop, align 4
  %inc436 = add nsw i32 %189, 1
  store i32 %inc436, i32* %bufftop, align 4
  %idxprom437 = sext i32 %189 to i64
  %arrayidx438 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom437
  store i8 %188, i8* %arrayidx438, align 1
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.433, %if.then.430
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.then.419
  br label %if.end.446

if.else.441:                                      ; preds = %for.body.416
  %190 = load i32, i32* %i412, align 4
  %idxprom442 = sext i32 %190 to i64
  %arrayidx443 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom442
  %191 = load i8, i8* %arrayidx443, align 1
  %conv444 = zext i8 %191 to i32
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call445 = call i32 @_IO_putc(i32 %conv444, %struct._IO_FILE* %192)
  br label %if.end.446

if.end.446:                                       ; preds = %if.else.441, %if.end.440
  br label %for.inc.447

for.inc.447:                                      ; preds = %if.end.446
  %193 = load i32, i32* %i412, align 4
  %inc448 = add nsw i32 %193, 1
  store i32 %inc448, i32* %i412, align 4
  br label %for.cond.413

for.end.449:                                      ; preds = %for.cond.413
  store i32 0, i32* %hs_top, align 4
  %194 = load i32, i32* %sysinc, align 4
  %tobool450 = icmp ne i32 %194, 0
  %cond451 = select i1 %tobool450, i64 11, i64 8
  %195 = load i8*, i8** %p, align 8
  %add.ptr452 = getelementptr inbounds i8, i8* %195, i64 %cond451
  store i8* %add.ptr452, i8** %p, align 8
  %196 = load i8*, i8** %p, align 8
  store i8* %196, i8** @chpt, align 8
  %call453 = call %union.rec* @LexGetToken()
  store %union.rec* %call453, %union.rec** %t, align 8
  %197 = load %union.rec*, %union.rec** %t, align 8
  %os1 = bitcast %union.rec* %197 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %198 = load i8, i8* %otype, align 1
  %conv454 = zext i8 %198 to i32
  %cmp455 = icmp ne i32 %conv454, 102
  br i1 %cmp455, label %if.then.457, label %if.end.463

if.then.457:                                      ; preds = %for.end.449
  %199 = load %union.rec*, %union.rec** %t, align 8
  %os1458 = bitcast %union.rec* %199 to %struct.word_type*
  %ou1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1458, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1459 to %struct.FILE_POS*
  %200 = load i32, i32* %sysinc, align 4
  %tobool460 = icmp ne i32 %200, 0
  %cond461 = select i1 %tobool460, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)
  %call462 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* %cond461)
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.457, %for.end.449
  %call464 = call %union.rec* @Parse(%union.rec** %t, %union.rec* null, i32 0, i32 0)
  store %union.rec* %call464, %union.rec** %incl_fname, align 8
  %201 = load i8*, i8** @chpt, align 8
  store i8* %201, i8** %p, align 8
  %202 = load %union.rec*, %union.rec** %incl_fname, align 8
  %call465 = call %union.rec* @ReplaceWithTidy(%union.rec* %202, i32 0)
  store %union.rec* %call465, %union.rec** %incl_fname, align 8
  %203 = load %union.rec*, %union.rec** %incl_fname, align 8
  %os1466 = bitcast %union.rec* %203 to %struct.word_type*
  %ou1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 1
  %os11468 = bitcast %union.FIRST_UNION* %ou1467 to %struct.anon.0*
  %otype469 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11468, i32 0, i32 0
  %204 = load i8, i8* %otype469, align 1
  %conv470 = zext i8 %204 to i32
  %cmp471 = icmp eq i32 %conv470, 11
  br i1 %cmp471, label %if.end.486, label %lor.lhs.false.473

lor.lhs.false.473:                                ; preds = %if.end.463
  %205 = load %union.rec*, %union.rec** %incl_fname, align 8
  %os1474 = bitcast %union.rec* %205 to %struct.word_type*
  %ou1475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1474, i32 0, i32 1
  %os11476 = bitcast %union.FIRST_UNION* %ou1475 to %struct.anon.0*
  %otype477 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11476, i32 0, i32 0
  %206 = load i8, i8* %otype477, align 1
  %conv478 = zext i8 %206 to i32
  %cmp479 = icmp eq i32 %conv478, 12
  br i1 %cmp479, label %if.end.486, label %if.then.481

if.then.481:                                      ; preds = %lor.lhs.false.473
  %207 = load %union.rec*, %union.rec** %incl_fname, align 8
  %os1482 = bitcast %union.rec* %207 to %struct.word_type*
  %ou1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1482, i32 0, i32 1
  %ofpos484 = bitcast %union.FIRST_UNION* %ou1483 to %struct.FILE_POS*
  %call485 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos484)
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.481, %lor.lhs.false.473, %if.end.463
  %208 = load %union.rec*, %union.rec** %incl_fname, align 8
  %os1487 = bitcast %union.rec* %208 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 4
  %arraydecay488 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %incl_fname, align 8
  %os1489 = bitcast %union.rec* %209 to %struct.word_type*
  %ou1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1489, i32 0, i32 1
  %ofpos491 = bitcast %union.FIRST_UNION* %ou1490 to %struct.FILE_POS*
  %210 = load i32, i32* %sysinc, align 4
  %tobool492 = icmp ne i32 %210, 0
  %cond493 = select i1 %tobool492, i32 2, i32 1
  %call494 = call zeroext i16 @DefineFile(i8* %arraydecay488, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %ofpos491, i32 1, i32 %cond493)
  store i16 %call494, i16* %fnum, align 2
  %211 = load %union.rec*, %union.rec** %incl_fname, align 8
  store %union.rec* %211, %union.rec** @zz_hold, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %212, %union.rec** @zz_hold, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1495 = bitcast %union.rec* %213 to %struct.word_type*
  %ou1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 1
  %os11497 = bitcast %union.FIRST_UNION* %ou1496 to %struct.anon.0*
  %otype498 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11497, i32 0, i32 0
  %214 = load i8, i8* %otype498, align 1
  %conv499 = zext i8 %214 to i32
  %cmp500 = icmp eq i32 %conv499, 11
  br i1 %cmp500, label %cond.true, label %lor.lhs.false.502

lor.lhs.false.502:                                ; preds = %if.end.486
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1503 = bitcast %union.rec* %215 to %struct.word_type*
  %ou1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 1
  %os11505 = bitcast %union.FIRST_UNION* %ou1504 to %struct.anon.0*
  %otype506 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11505, i32 0, i32 0
  %216 = load i8, i8* %otype506, align 1
  %conv507 = zext i8 %216 to i32
  %cmp508 = icmp eq i32 %conv507, 12
  br i1 %cmp508, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.502, %if.end.486
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1510 = bitcast %union.rec* %217 to %struct.word_type*
  %ou1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1510, i32 0, i32 1
  %os11512 = bitcast %union.FIRST_UNION* %ou1511 to %struct.anon.0*
  %orec_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11512, i32 0, i32 1
  %218 = load i8, i8* %orec_size, align 1
  %conv513 = zext i8 %218 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.502
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1514 = bitcast %union.rec* %219 to %struct.word_type*
  %ou1515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1514, i32 0, i32 1
  %os11516 = bitcast %union.FIRST_UNION* %ou1515 to %struct.anon.0*
  %otype517 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11516, i32 0, i32 0
  %220 = load i8, i8* %otype517, align 1
  %idxprom518 = zext i8 %220 to i64
  %arrayidx519 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom518
  %221 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %221 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond521 = phi i32 [ %conv513, %cond.true ], [ %conv520, %cond.false ]
  store i32 %cond521, i32* @zz_size, align 4
  %222 = load i32, i32* @zz_size, align 4
  %idxprom522 = sext i32 %222 to i64
  %arrayidx523 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom522
  %223 = load %union.rec*, %union.rec** %arrayidx523, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1524 = bitcast %union.rec* %224 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 0
  %arrayidx525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx525, i32 0, i32 0
  store %union.rec* %223, %union.rec** %opred, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = load i32, i32* @zz_size, align 4
  %idxprom526 = sext i32 %226 to i64
  %arrayidx527 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom526
  store %union.rec* %225, %union.rec** %arrayidx527, align 8
  %227 = load i16, i16* %fnum, align 2
  %call528 = call %struct._IO_FILE* @OpenFile(i16 zeroext %227, i32 0, i32 1)
  store %struct._IO_FILE* %call528, %struct._IO_FILE** %incl_fp, align 8
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %incl_fp, align 8
  %cmp529 = icmp eq %struct._IO_FILE* %228, null
  br i1 %cmp529, label %if.then.531, label %if.end.535

if.then.531:                                      ; preds = %cond.end
  %229 = load i16, i16* %fnum, align 2
  %call532 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %229)
  %230 = load i16, i16* %fnum, align 2
  %call533 = call i8* @FullFileName(i16 zeroext %230)
  %call534 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i32 0, i32 0), i32 1, %struct.FILE_POS* %call532, i8* %call533)
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.531, %cond.end
  br label %while.cond.536

while.cond.536:                                   ; preds = %if.end.564, %if.end.535
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %incl_fp, align 8
  %call537 = call i32 @_IO_getc(%struct._IO_FILE* %231)
  store i32 %call537, i32* %ch, align 4
  %cmp538 = icmp ne i32 %call537, -1
  br i1 %cmp538, label %while.body.540, label %while.end

while.body.540:                                   ; preds = %while.cond.536
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp541 = icmp eq %struct._IO_FILE* %232, null
  br i1 %cmp541, label %if.then.543, label %if.else.562

if.then.543:                                      ; preds = %while.body.540
  %233 = load i32, i32* %bufftop, align 4
  %cmp544 = icmp slt i32 %233, 512
  br i1 %cmp544, label %if.then.546, label %if.end.561

if.then.546:                                      ; preds = %if.then.543
  %234 = load i32, i32* %ch, align 4
  %idxprom547 = sext i32 %234 to i64
  %arrayidx548 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom547
  %235 = load i8, i8* %arrayidx548, align 1
  %conv549 = zext i8 %235 to i32
  %cmp550 = icmp eq i32 %conv549, 8
  br i1 %cmp550, label %if.then.552, label %if.else.555

if.then.552:                                      ; preds = %if.then.546
  %236 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay553 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call554 = call %union.rec* @BuildLines(%union.rec* %236, i8* %arraydecay553, i32* %bufftop)
  store %union.rec* %call554, %union.rec** %res, align 8
  br label %if.end.560

if.else.555:                                      ; preds = %if.then.546
  %237 = load i32, i32* %ch, align 4
  %conv556 = trunc i32 %237 to i8
  %238 = load i32, i32* %bufftop, align 4
  %inc557 = add nsw i32 %238, 1
  store i32 %inc557, i32* %bufftop, align 4
  %idxprom558 = sext i32 %238 to i64
  %arrayidx559 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom558
  store i8 %conv556, i8* %arrayidx559, align 1
  br label %if.end.560

if.end.560:                                       ; preds = %if.else.555, %if.then.552
  br label %if.end.561

if.end.561:                                       ; preds = %if.end.560, %if.then.543
  br label %if.end.564

if.else.562:                                      ; preds = %while.body.540
  %239 = load i32, i32* %ch, align 4
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call563 = call i32 @_IO_putc(i32 %239, %struct._IO_FILE* %240)
  br label %if.end.564

if.end.564:                                       ; preds = %if.else.562, %if.end.561
  br label %while.cond.536

while.end:                                        ; preds = %while.cond.536
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %incl_fp, align 8
  %call565 = call i32 @fclose(%struct._IO_FILE* %241)
  br label %if.end.630

if.else.566:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %i567, align 4
  br label %for.cond.568

for.cond.568:                                     ; preds = %for.inc.602, %if.else.566
  %242 = load i32, i32* %i567, align 4
  %243 = load i32, i32* %hs_top, align 4
  %cmp569 = icmp slt i32 %242, %243
  br i1 %cmp569, label %for.body.571, label %for.end.604

for.body.571:                                     ; preds = %for.cond.568
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp572 = icmp eq %struct._IO_FILE* %244, null
  br i1 %cmp572, label %if.then.574, label %if.else.596

if.then.574:                                      ; preds = %for.body.571
  %245 = load i32, i32* %bufftop, align 4
  %cmp575 = icmp slt i32 %245, 512
  br i1 %cmp575, label %if.then.577, label %if.end.595

if.then.577:                                      ; preds = %if.then.574
  %246 = load i32, i32* %i567, align 4
  %idxprom578 = sext i32 %246 to i64
  %arrayidx579 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom578
  %247 = load i8, i8* %arrayidx579, align 1
  %idxprom580 = zext i8 %247 to i64
  %arrayidx581 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom580
  %248 = load i8, i8* %arrayidx581, align 1
  %conv582 = zext i8 %248 to i32
  %cmp583 = icmp eq i32 %conv582, 8
  br i1 %cmp583, label %if.then.585, label %if.else.588

if.then.585:                                      ; preds = %if.then.577
  %249 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay586 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call587 = call %union.rec* @BuildLines(%union.rec* %249, i8* %arraydecay586, i32* %bufftop)
  store %union.rec* %call587, %union.rec** %res, align 8
  br label %if.end.594

if.else.588:                                      ; preds = %if.then.577
  %250 = load i32, i32* %i567, align 4
  %idxprom589 = sext i32 %250 to i64
  %arrayidx590 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom589
  %251 = load i8, i8* %arrayidx590, align 1
  %252 = load i32, i32* %bufftop, align 4
  %inc591 = add nsw i32 %252, 1
  store i32 %inc591, i32* %bufftop, align 4
  %idxprom592 = sext i32 %252 to i64
  %arrayidx593 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom592
  store i8 %251, i8* %arrayidx593, align 1
  br label %if.end.594

if.end.594:                                       ; preds = %if.else.588, %if.then.585
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594, %if.then.574
  br label %if.end.601

if.else.596:                                      ; preds = %for.body.571
  %253 = load i32, i32* %i567, align 4
  %idxprom597 = sext i32 %253 to i64
  %arrayidx598 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom597
  %254 = load i8, i8* %arrayidx598, align 1
  %conv599 = zext i8 %254 to i32
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call600 = call i32 @_IO_putc(i32 %conv599, %struct._IO_FILE* %255)
  br label %if.end.601

if.end.601:                                       ; preds = %if.else.596, %if.end.595
  br label %for.inc.602

for.inc.602:                                      ; preds = %if.end.601
  %256 = load i32, i32* %i567, align 4
  %inc603 = add nsw i32 %256, 1
  store i32 %inc603, i32* %i567, align 4
  br label %for.cond.568

for.end.604:                                      ; preds = %for.cond.568
  store i32 0, i32* %hs_top, align 4
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp605 = icmp eq %struct._IO_FILE* %257, null
  br i1 %cmp605, label %if.then.607, label %if.else.625

if.then.607:                                      ; preds = %for.end.604
  %258 = load i32, i32* %bufftop, align 4
  %cmp608 = icmp slt i32 %258, 512
  br i1 %cmp608, label %if.then.610, label %if.end.624

if.then.610:                                      ; preds = %if.then.607
  %259 = load i8*, i8** %p, align 8
  %260 = load i8, i8* %259, align 1
  %idxprom611 = zext i8 %260 to i64
  %arrayidx612 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom611
  %261 = load i8, i8* %arrayidx612, align 1
  %conv613 = zext i8 %261 to i32
  %cmp614 = icmp eq i32 %conv613, 8
  br i1 %cmp614, label %if.then.616, label %if.else.619

if.then.616:                                      ; preds = %if.then.610
  %262 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay617 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call618 = call %union.rec* @BuildLines(%union.rec* %262, i8* %arraydecay617, i32* %bufftop)
  store %union.rec* %call618, %union.rec** %res, align 8
  br label %if.end.623

if.else.619:                                      ; preds = %if.then.610
  %263 = load i8*, i8** %p, align 8
  %264 = load i8, i8* %263, align 1
  %265 = load i32, i32* %bufftop, align 4
  %inc620 = add nsw i32 %265, 1
  store i32 %inc620, i32* %bufftop, align 4
  %idxprom621 = sext i32 %265 to i64
  %arrayidx622 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom621
  store i8 %264, i8* %arrayidx622, align 1
  br label %if.end.623

if.end.623:                                       ; preds = %if.else.619, %if.then.616
  br label %if.end.624

if.end.624:                                       ; preds = %if.end.623, %if.then.607
  br label %if.end.628

if.else.625:                                      ; preds = %for.end.604
  %266 = load i8*, i8** %p, align 8
  %267 = load i8, i8* %266, align 1
  %conv626 = zext i8 %267 to i32
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call627 = call i32 @_IO_putc(i32 %conv626, %struct._IO_FILE* %268)
  br label %if.end.628

if.end.628:                                       ; preds = %if.else.625, %if.end.624
  %269 = load i8*, i8** %p, align 8
  %incdec.ptr629 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr629, i8** %p, align 8
  br label %if.end.630

if.end.630:                                       ; preds = %if.end.628, %while.end
  br label %if.end.631

if.end.631:                                       ; preds = %if.end.630, %if.then.404
  br label %if.end.698

if.else.632:                                      ; preds = %sw.bb.393
  store i32 0, i32* %i633, align 4
  br label %for.cond.634

for.cond.634:                                     ; preds = %for.inc.668, %if.else.632
  %270 = load i32, i32* %i633, align 4
  %271 = load i32, i32* %hs_top, align 4
  %cmp635 = icmp slt i32 %270, %271
  br i1 %cmp635, label %for.body.637, label %for.end.670

for.body.637:                                     ; preds = %for.cond.634
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp638 = icmp eq %struct._IO_FILE* %272, null
  br i1 %cmp638, label %if.then.640, label %if.else.662

if.then.640:                                      ; preds = %for.body.637
  %273 = load i32, i32* %bufftop, align 4
  %cmp641 = icmp slt i32 %273, 512
  br i1 %cmp641, label %if.then.643, label %if.end.661

if.then.643:                                      ; preds = %if.then.640
  %274 = load i32, i32* %i633, align 4
  %idxprom644 = sext i32 %274 to i64
  %arrayidx645 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom644
  %275 = load i8, i8* %arrayidx645, align 1
  %idxprom646 = zext i8 %275 to i64
  %arrayidx647 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom646
  %276 = load i8, i8* %arrayidx647, align 1
  %conv648 = zext i8 %276 to i32
  %cmp649 = icmp eq i32 %conv648, 8
  br i1 %cmp649, label %if.then.651, label %if.else.654

if.then.651:                                      ; preds = %if.then.643
  %277 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay652 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call653 = call %union.rec* @BuildLines(%union.rec* %277, i8* %arraydecay652, i32* %bufftop)
  store %union.rec* %call653, %union.rec** %res, align 8
  br label %if.end.660

if.else.654:                                      ; preds = %if.then.643
  %278 = load i32, i32* %i633, align 4
  %idxprom655 = sext i32 %278 to i64
  %arrayidx656 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom655
  %279 = load i8, i8* %arrayidx656, align 1
  %280 = load i32, i32* %bufftop, align 4
  %inc657 = add nsw i32 %280, 1
  store i32 %inc657, i32* %bufftop, align 4
  %idxprom658 = sext i32 %280 to i64
  %arrayidx659 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom658
  store i8 %279, i8* %arrayidx659, align 1
  br label %if.end.660

if.end.660:                                       ; preds = %if.else.654, %if.then.651
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.660, %if.then.640
  br label %if.end.667

if.else.662:                                      ; preds = %for.body.637
  %281 = load i32, i32* %i633, align 4
  %idxprom663 = sext i32 %281 to i64
  %arrayidx664 = getelementptr inbounds [512 x i8], [512 x i8]* %hs_buff, i32 0, i64 %idxprom663
  %282 = load i8, i8* %arrayidx664, align 1
  %conv665 = zext i8 %282 to i32
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call666 = call i32 @_IO_putc(i32 %conv665, %struct._IO_FILE* %283)
  br label %if.end.667

if.end.667:                                       ; preds = %if.else.662, %if.end.661
  br label %for.inc.668

for.inc.668:                                      ; preds = %if.end.667
  %284 = load i32, i32* %i633, align 4
  %inc669 = add nsw i32 %284, 1
  store i32 %inc669, i32* %i633, align 4
  br label %for.cond.634

for.end.670:                                      ; preds = %for.cond.634
  store i32 0, i32* %hs_top, align 4
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp671 = icmp eq %struct._IO_FILE* %285, null
  br i1 %cmp671, label %if.then.673, label %if.else.693

if.then.673:                                      ; preds = %for.end.670
  %286 = load i32, i32* %bufftop, align 4
  %cmp674 = icmp slt i32 %286, 512
  br i1 %cmp674, label %if.then.676, label %if.end.692

if.then.676:                                      ; preds = %if.then.673
  %287 = load i8*, i8** %p, align 8
  %add.ptr677 = getelementptr inbounds i8, i8* %287, i64 -1
  %288 = load i8, i8* %add.ptr677, align 1
  %idxprom678 = zext i8 %288 to i64
  %arrayidx679 = getelementptr inbounds [256 x i8], [256 x i8]* @chtbl, i32 0, i64 %idxprom678
  %289 = load i8, i8* %arrayidx679, align 1
  %conv680 = zext i8 %289 to i32
  %cmp681 = icmp eq i32 %conv680, 8
  br i1 %cmp681, label %if.then.683, label %if.else.686

if.then.683:                                      ; preds = %if.then.676
  %290 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay684 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call685 = call %union.rec* @BuildLines(%union.rec* %290, i8* %arraydecay684, i32* %bufftop)
  store %union.rec* %call685, %union.rec** %res, align 8
  br label %if.end.691

if.else.686:                                      ; preds = %if.then.676
  %291 = load i8*, i8** %p, align 8
  %add.ptr687 = getelementptr inbounds i8, i8* %291, i64 -1
  %292 = load i8, i8* %add.ptr687, align 1
  %293 = load i32, i32* %bufftop, align 4
  %inc688 = add nsw i32 %293, 1
  store i32 %inc688, i32* %bufftop, align 4
  %idxprom689 = sext i32 %293 to i64
  %arrayidx690 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom689
  store i8 %292, i8* %arrayidx690, align 1
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.686, %if.then.683
  br label %if.end.692

if.end.692:                                       ; preds = %if.end.691, %if.then.673
  br label %if.end.697

if.else.693:                                      ; preds = %for.end.670
  %294 = load i8*, i8** %p, align 8
  %add.ptr694 = getelementptr inbounds i8, i8* %294, i64 -1
  %295 = load i8, i8* %add.ptr694, align 1
  %conv695 = zext i8 %295 to i32
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call696 = call i32 @_IO_putc(i32 %conv695, %struct._IO_FILE* %296)
  br label %if.end.697

if.end.697:                                       ; preds = %if.else.693, %if.end.692
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %if.end.631
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %297 = load i8*, i8** %p, align 8
  %add.ptr699 = getelementptr inbounds i8, i8* %297, i64 -1
  %298 = load i8, i8* %add.ptr699, align 1
  %conv700 = zext i8 %298 to i32
  %call701 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0), i32 0, %struct.FILE_POS* @file_pos, i32 %conv700)
  %299 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call702 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %299, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.698, %if.end.392, %if.end.174, %if.end.159, %if.end.106, %if.end.56
  br label %while.cond

while.end.703:                                    ; preds = %while.cond
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp704 = icmp eq %struct._IO_FILE* %300, null
  br i1 %cmp704, label %if.then.706, label %if.else.722

if.then.706:                                      ; preds = %while.end.703
  %301 = load i32, i32* %bufftop, align 4
  %cmp707 = icmp slt i32 %301, 512
  br i1 %cmp707, label %if.then.709, label %if.end.721

if.then.709:                                      ; preds = %if.then.706
  %302 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @chtbl, i32 0, i64 10), align 1
  %conv710 = zext i8 %302 to i32
  %cmp711 = icmp eq i32 %conv710, 8
  br i1 %cmp711, label %if.then.713, label %if.else.716

if.then.713:                                      ; preds = %if.then.709
  %303 = load %union.rec*, %union.rec** %res, align 8
  %arraydecay714 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call715 = call %union.rec* @BuildLines(%union.rec* %303, i8* %arraydecay714, i32* %bufftop)
  store %union.rec* %call715, %union.rec** %res, align 8
  br label %if.end.720

if.else.716:                                      ; preds = %if.then.709
  %304 = load i32, i32* %bufftop, align 4
  %inc717 = add nsw i32 %304, 1
  store i32 %inc717, i32* %bufftop, align 4
  %idxprom718 = sext i32 %304 to i64
  %arrayidx719 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom718
  store i8 10, i8* %arrayidx719, align 1
  br label %if.end.720

if.end.720:                                       ; preds = %if.else.716, %if.then.713
  br label %if.end.721

if.end.721:                                       ; preds = %if.end.720, %if.then.706
  br label %if.end.724

if.else.722:                                      ; preds = %while.end.703
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call723 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %305)
  br label %if.end.724

if.end.724:                                       ; preds = %if.else.722, %if.end.721
  %306 = load i8*, i8** %p, align 8
  %307 = load i8*, i8** @startline, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %306 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %307 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp725 = icmp sge i64 %sub.ptr.sub, 2048
  br i1 %cmp725, label %if.then.727, label %if.end.732

if.then.727:                                      ; preds = %if.end.724
  %bf.load728 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear729 = and i32 %bf.load728, 1048575
  %bf.set730 = or i32 %bf.clear729, 1048576
  store i32 %bf.set730, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %call731 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 2, i32 21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.732

if.end.732:                                       ; preds = %if.then.727, %if.end.724
  %308 = load i8*, i8** %p, align 8
  store i8* %308, i8** @chpt, align 8
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp733 = icmp eq %struct._IO_FILE* %309, null
  br i1 %cmp733, label %land.lhs.true.735, label %if.end.740

land.lhs.true.735:                                ; preds = %if.end.732
  %310 = load %union.rec*, %union.rec** %res, align 8
  %cmp736 = icmp eq %union.rec* %310, null
  br i1 %cmp736, label %if.then.738, label %if.end.740

if.then.738:                                      ; preds = %land.lhs.true.735
  %call739 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* @file_pos)
  store %union.rec* %call739, %union.rec** %res, align 8
  br label %if.end.740

if.end.740:                                       ; preds = %if.then.738, %land.lhs.true.735, %if.end.732
  %311 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %311
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @BuildLines(%union.rec* %current, i8* %buff, i32* %bufftop) #0 {
entry:
  %current.addr = alloca %union.rec*, align 8
  %buff.addr = alloca i8*, align 8
  %bufftop.addr = alloca i32*, align 8
  %wd = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %gp = alloca %union.rec*, align 8
  %gpword = alloca %union.rec*, align 8
  %c = alloca i32, align 4
  store %union.rec* %current, %union.rec** %current.addr, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i32* %bufftop, i32** %bufftop.addr, align 8
  %0 = load i32*, i32** %bufftop.addr, align 8
  %1 = load i32, i32* %0, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %add1 = add i64 68, %mul
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* @zz_size, align 4
  %2 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %2, 1
  %conv3 = sext i32 %sub to i64
  %div = udiv i64 %conv3, 8
  %add4 = add i64 %div, 1
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* @zz_size, align 4
  %conv6 = sext i32 %conv5 to i64
  %cmp = icmp uge i64 %conv6, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* @file_pos)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %4 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp8 = icmp eq %union.rec* %4, null
  br i1 %cmp8, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %5 = load i32, i32* @zz_size, align 4
  %call11 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* @file_pos)
  store %union.rec* %call11, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom13
  %7 = load %union.rec*, %union.rec** %arrayidx14, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom16
  store %union.rec* %9, %union.rec** %arrayidx17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* @zz_size, align 4
  %conv19 = trunc i32 %11 to i8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %orec_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 1
  store i8 %conv19, i8* %orec_size, align 1
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os121 = bitcast %union.rec* %13 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1123, i32 0, i32 0
  store i8 11, i8* %otype, align 1
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os124 = bitcast %union.rec* %15 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %16 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 1
  %opred30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred30, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os131 = bitcast %union.rec* %17 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 0
  %osucc34 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc34, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %18 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 0
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred38, align 8
  store %union.rec* %14, %union.rec** %wd, align 8
  %19 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %20 = load %union.rec*, %union.rec** %wd, align 8
  %os139 = bitcast %union.rec* %20 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %19, i16* %ofile_num, align 2
  %bf.load = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear = and i32 %bf.load, 1048575
  %21 = load %union.rec*, %union.rec** %wd, align 8
  %os141 = bitcast %union.rec* %21 to %struct.word_type*
  %ou142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 1
  %ofpos43 = bitcast %union.FIRST_UNION* %ou142 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos43, i32 0, i32 3
  %bf.load44 = load i32, i32* %oline_num, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear45 = and i32 %bf.load44, -1048576
  %bf.set = or i32 %bf.clear45, %bf.value
  store i32 %bf.set, i32* %oline_num, align 4
  %bf.load46 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr = lshr i32 %bf.load46, 20
  %22 = load %union.rec*, %union.rec** %wd, align 8
  %os147 = bitcast %union.rec* %22 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %ofpos49 = bitcast %union.FIRST_UNION* %ou148 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos49, i32 0, i32 3
  %bf.load50 = load i32, i32* %ocol_num, align 4
  %bf.value51 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value51, 20
  %bf.clear52 = and i32 %bf.load50, 1048575
  %bf.set53 = or i32 %bf.clear52, %bf.shl
  store i32 %bf.set53, i32* %ocol_num, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %23 = load i32, i32* %c, align 4
  %24 = load i32*, i32** %bufftop.addr, align 8
  %25 = load i32, i32* %24, align 4
  %cmp54 = icmp slt i32 %23, %25
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %c, align 4
  %idxprom56 = sext i32 %26 to i64
  %27 = load i8*, i8** %buff.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %27, i64 %idxprom56
  %28 = load i8, i8* %arrayidx57, align 1
  %29 = load i32, i32* %c, align 4
  %idxprom58 = sext i32 %29 to i64
  %30 = load %union.rec*, %union.rec** %wd, align 8
  %os159 = bitcast %union.rec* %30 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 4
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 %idxprom58
  store i8 %28, i8* %arrayidx60, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %c, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %c, align 4
  %idxprom61 = sext i32 %32 to i64
  %33 = load %union.rec*, %union.rec** %wd, align 8
  %os162 = bitcast %union.rec* %33 to %struct.word_type*
  %ostring63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring63, i32 0, i64 %idxprom61
  store i8 0, i8* %arrayidx64, align 1
  %34 = load i32*, i32** %bufftop.addr, align 8
  store i32 0, i32* %34, align 4
  %35 = load %union.rec*, %union.rec** %current.addr, align 8
  %cmp65 = icmp eq %union.rec* %35, null
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %for.end
  %36 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %36, %union.rec** %res, align 8
  br label %if.end.728

if.else.68:                                       ; preds = %for.end
  %37 = load %union.rec*, %union.rec** %current.addr, align 8
  %os169 = bitcast %union.rec* %37 to %struct.word_type*
  %ou170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 1
  %os1171 = bitcast %union.FIRST_UNION* %ou170 to %struct.anon.0*
  %otype72 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1171, i32 0, i32 0
  %38 = load i8, i8* %otype72, align 1
  %conv73 = zext i8 %38 to i32
  %cmp74 = icmp eq i32 %conv73, 11
  br i1 %cmp74, label %if.then.76, label %if.else.278

if.then.76:                                       ; preds = %if.else.68
  %39 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 19), align 1
  %conv77 = zext i8 %39 to i32
  store i32 %conv77, i32* @zz_size, align 4
  %conv78 = sext i32 %conv77 to i64
  %cmp79 = icmp uge i64 %conv78, 265
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.then.76
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call82 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %40)
  br label %if.end.100

if.else.83:                                       ; preds = %if.then.76
  %41 = load i32, i32* @zz_size, align 4
  %idxprom84 = sext i32 %41 to i64
  %arrayidx85 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom84
  %42 = load %union.rec*, %union.rec** %arrayidx85, align 8
  %cmp86 = icmp eq %union.rec* %42, null
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else.83
  %43 = load i32, i32* @zz_size, align 4
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call89 = call %union.rec* @GetMemory(i32 %43, %struct.FILE_POS* %44)
  store %union.rec* %call89, %union.rec** @zz_hold, align 8
  br label %if.end.99

if.else.90:                                       ; preds = %if.else.83
  %45 = load i32, i32* @zz_size, align 4
  %idxprom91 = sext i32 %45 to i64
  %arrayidx92 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom91
  %46 = load %union.rec*, %union.rec** %arrayidx92, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os193 = bitcast %union.rec* %47 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 0
  %opred96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred96, align 8
  %49 = load i32, i32* @zz_size, align 4
  %idxprom97 = sext i32 %49 to i64
  %arrayidx98 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom97
  store %union.rec* %48, %union.rec** %arrayidx98, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.90, %if.then.88
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.81
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1101 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 1
  %os11103 = bitcast %union.FIRST_UNION* %ou1102 to %struct.anon.0*
  %otype104 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11103, i32 0, i32 0
  store i8 19, i8* %otype104, align 1
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1105 = bitcast %union.rec* %52 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %osucc108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc108, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %53 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 1
  %opred112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred112, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1113 = bitcast %union.rec* %54 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 0
  %osucc116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc116, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %55 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 0
  %opred120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred120, align 8
  store %union.rec* %51, %union.rec** %res, align 8
  %56 = load %union.rec*, %union.rec** %current.addr, align 8
  %os1121 = bitcast %union.rec* %56 to %struct.word_type*
  %ou1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 1
  %ofpos123 = bitcast %union.FIRST_UNION* %ou1122 to %struct.FILE_POS*
  %ofile_num124 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos123, i32 0, i32 2
  %57 = load i16, i16* %ofile_num124, align 2
  %58 = load %union.rec*, %union.rec** %res, align 8
  %os1125 = bitcast %union.rec* %58 to %struct.word_type*
  %ou1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 1
  %ofpos127 = bitcast %union.FIRST_UNION* %ou1126 to %struct.FILE_POS*
  %ofile_num128 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos127, i32 0, i32 2
  store i16 %57, i16* %ofile_num128, align 2
  %59 = load %union.rec*, %union.rec** %current.addr, align 8
  %os1129 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 1
  %ofpos131 = bitcast %union.FIRST_UNION* %ou1130 to %struct.FILE_POS*
  %oline_num132 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos131, i32 0, i32 3
  %bf.load133 = load i32, i32* %oline_num132, align 4
  %bf.clear134 = and i32 %bf.load133, 1048575
  %60 = load %union.rec*, %union.rec** %res, align 8
  %os1135 = bitcast %union.rec* %60 to %struct.word_type*
  %ou1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 1
  %ofpos137 = bitcast %union.FIRST_UNION* %ou1136 to %struct.FILE_POS*
  %oline_num138 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos137, i32 0, i32 3
  %bf.load139 = load i32, i32* %oline_num138, align 4
  %bf.value140 = and i32 %bf.clear134, 1048575
  %bf.clear141 = and i32 %bf.load139, -1048576
  %bf.set142 = or i32 %bf.clear141, %bf.value140
  store i32 %bf.set142, i32* %oline_num138, align 4
  %61 = load %union.rec*, %union.rec** %current.addr, align 8
  %os1143 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %ofpos145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.FILE_POS*
  %ocol_num146 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos145, i32 0, i32 3
  %bf.load147 = load i32, i32* %ocol_num146, align 4
  %bf.lshr148 = lshr i32 %bf.load147, 20
  %62 = load %union.rec*, %union.rec** %res, align 8
  %os1149 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 1
  %ofpos151 = bitcast %union.FIRST_UNION* %ou1150 to %struct.FILE_POS*
  %ocol_num152 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos151, i32 0, i32 3
  %bf.load153 = load i32, i32* %ocol_num152, align 4
  %bf.value154 = and i32 %bf.lshr148, 4095
  %bf.shl155 = shl i32 %bf.value154, 20
  %bf.clear156 = and i32 %bf.load153, 1048575
  %bf.set157 = or i32 %bf.clear156, %bf.shl155
  store i32 %bf.set157, i32* %ocol_num152, align 4
  %63 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv158 = zext i8 %63 to i32
  store i32 %conv158, i32* @zz_size, align 4
  %conv159 = sext i32 %conv158 to i64
  %cmp160 = icmp uge i64 %conv159, 265
  br i1 %cmp160, label %if.then.162, label %if.else.164

if.then.162:                                      ; preds = %if.end.100
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call163 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %64)
  br label %if.end.181

if.else.164:                                      ; preds = %if.end.100
  %65 = load i32, i32* @zz_size, align 4
  %idxprom165 = sext i32 %65 to i64
  %arrayidx166 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom165
  %66 = load %union.rec*, %union.rec** %arrayidx166, align 8
  %cmp167 = icmp eq %union.rec* %66, null
  br i1 %cmp167, label %if.then.169, label %if.else.171

if.then.169:                                      ; preds = %if.else.164
  %67 = load i32, i32* @zz_size, align 4
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call170 = call %union.rec* @GetMemory(i32 %67, %struct.FILE_POS* %68)
  store %union.rec* %call170, %union.rec** @zz_hold, align 8
  br label %if.end.180

if.else.171:                                      ; preds = %if.else.164
  %69 = load i32, i32* @zz_size, align 4
  %idxprom172 = sext i32 %69 to i64
  %arrayidx173 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom172
  %70 = load %union.rec*, %union.rec** %arrayidx173, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %71 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %opred177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 0
  %72 = load %union.rec*, %union.rec** %opred177, align 8
  %73 = load i32, i32* @zz_size, align 4
  %idxprom178 = sext i32 %73 to i64
  %arrayidx179 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom178
  store %union.rec* %72, %union.rec** %arrayidx179, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.171, %if.then.169
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.162
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1182 = bitcast %union.rec* %74 to %struct.word_type*
  %ou1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 1
  %os11184 = bitcast %union.FIRST_UNION* %ou1183 to %struct.anon.0*
  %otype185 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11184, i32 0, i32 0
  store i8 0, i8* %otype185, align 1
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1186 = bitcast %union.rec* %76 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 1
  %osucc189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 1
  store %union.rec* %75, %union.rec** %osucc189, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1190 = bitcast %union.rec* %77 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %opred193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 0
  store %union.rec* %75, %union.rec** %opred193, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1194 = bitcast %union.rec* %78 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 0
  %osucc197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 1
  store %union.rec* %75, %union.rec** %osucc197, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1198 = bitcast %union.rec* %79 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 0
  %opred201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 0
  store %union.rec* %75, %union.rec** %opred201, align 8
  store %union.rec* %75, %union.rec** @xx_link, align 8
  %80 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %80, %union.rec** @zz_res, align 8
  %81 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %81, %union.rec** @zz_hold, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp202 = icmp eq %union.rec* %82, null
  br i1 %cmp202, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.181
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.236

cond.false:                                       ; preds = %if.end.181
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp204 = icmp eq %union.rec* %84, null
  br i1 %cmp204, label %cond.true.206, label %cond.false.207

cond.true.206:                                    ; preds = %cond.false
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.207:                                   ; preds = %cond.false
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1208 = bitcast %union.rec* %86 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 0
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred211, align 8
  store %union.rec* %87, %union.rec** @zz_tmp, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1212 = bitcast %union.rec* %88 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %opred215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %opred215, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1216 = bitcast %union.rec* %90 to %struct.word_type*
  %olist217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist217, i32 0, i64 0
  %opred219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx218, i32 0, i32 0
  store %union.rec* %89, %union.rec** %opred219, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1220 = bitcast %union.rec* %92 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 0
  %opred223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 0
  %93 = load %union.rec*, %union.rec** %opred223, align 8
  %os1224 = bitcast %union.rec* %93 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 0
  %osucc227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 1
  store %union.rec* %91, %union.rec** %osucc227, align 8
  %94 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1228 = bitcast %union.rec* %95 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 0
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  store %union.rec* %94, %union.rec** %opred231, align 8
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  %97 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1232 = bitcast %union.rec* %97 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 0
  %osucc235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 1
  store %union.rec* %96, %union.rec** %osucc235, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.207, %cond.true.206
  %cond = phi %union.rec* [ %85, %cond.true.206 ], [ %96, %cond.false.207 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end, %cond.true
  %cond237 = phi %union.rec* [ %83, %cond.true ], [ %cond, %cond.end ]
  %98 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %98, %union.rec** @zz_res, align 8
  %99 = load %union.rec*, %union.rec** %current.addr, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp238 = icmp eq %union.rec* %100, null
  br i1 %cmp238, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %cond.end.236
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.276

cond.false.241:                                   ; preds = %cond.end.236
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp242 = icmp eq %union.rec* %102, null
  br i1 %cmp242, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %cond.false.241
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.274

cond.false.245:                                   ; preds = %cond.false.241
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1246 = bitcast %union.rec* %104 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 1
  %opred249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 0
  %105 = load %union.rec*, %union.rec** %opred249, align 8
  store %union.rec* %105, %union.rec** @zz_tmp, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1250 = bitcast %union.rec* %106 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 1
  %opred253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %opred253, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1254 = bitcast %union.rec* %108 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 1
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  store %union.rec* %107, %union.rec** %opred257, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1258 = bitcast %union.rec* %110 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 1
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred261, align 8
  %os1262 = bitcast %union.rec* %111 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 1
  %osucc265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc265, align 8
  %112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %113 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1266 = bitcast %union.rec* %113 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 1
  %opred269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 0
  store %union.rec* %112, %union.rec** %opred269, align 8
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  %115 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1270 = bitcast %union.rec* %115 to %struct.word_type*
  %olist271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist271, i32 0, i64 1
  %osucc273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx272, i32 0, i32 1
  store %union.rec* %114, %union.rec** %osucc273, align 8
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.245, %cond.true.244
  %cond275 = phi %union.rec* [ %103, %cond.true.244 ], [ %114, %cond.false.245 ]
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.end.274, %cond.true.240
  %cond277 = phi %union.rec* [ %101, %cond.true.240 ], [ %cond275, %cond.end.274 ]
  br label %if.end.279

if.else.278:                                      ; preds = %if.else.68
  %116 = load %union.rec*, %union.rec** %current.addr, align 8
  store %union.rec* %116, %union.rec** %res, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.278, %cond.end.276
  %117 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv280 = zext i8 %117 to i32
  store i32 %conv280, i32* @zz_size, align 4
  %conv281 = sext i32 %conv280 to i64
  %cmp282 = icmp uge i64 %conv281, 265
  br i1 %cmp282, label %if.then.284, label %if.else.286

if.then.284:                                      ; preds = %if.end.279
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call285 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %118)
  br label %if.end.303

if.else.286:                                      ; preds = %if.end.279
  %119 = load i32, i32* @zz_size, align 4
  %idxprom287 = sext i32 %119 to i64
  %arrayidx288 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom287
  %120 = load %union.rec*, %union.rec** %arrayidx288, align 8
  %cmp289 = icmp eq %union.rec* %120, null
  br i1 %cmp289, label %if.then.291, label %if.else.293

if.then.291:                                      ; preds = %if.else.286
  %121 = load i32, i32* @zz_size, align 4
  %122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call292 = call %union.rec* @GetMemory(i32 %121, %struct.FILE_POS* %122)
  store %union.rec* %call292, %union.rec** @zz_hold, align 8
  br label %if.end.302

if.else.293:                                      ; preds = %if.else.286
  %123 = load i32, i32* @zz_size, align 4
  %idxprom294 = sext i32 %123 to i64
  %arrayidx295 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom294
  %124 = load %union.rec*, %union.rec** %arrayidx295, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1296 = bitcast %union.rec* %125 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 0
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %opred299, align 8
  %127 = load i32, i32* @zz_size, align 4
  %idxprom300 = sext i32 %127 to i64
  %arrayidx301 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom300
  store %union.rec* %126, %union.rec** %arrayidx301, align 8
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.293, %if.then.291
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.then.284
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1304 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 1
  %os11306 = bitcast %union.FIRST_UNION* %ou1305 to %struct.anon.0*
  %otype307 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11306, i32 0, i32 0
  store i8 1, i8* %otype307, align 1
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1308 = bitcast %union.rec* %130 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 1
  %osucc311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc311, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1312 = bitcast %union.rec* %131 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %opred315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred315, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1316 = bitcast %union.rec* %132 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 0
  %osucc319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc319, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %133 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 0
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred323, align 8
  store %union.rec* %129, %union.rec** %gp, align 8
  %134 = load %union.rec*, %union.rec** %gp, align 8
  %os5 = bitcast %union.rec* %134 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %135 = bitcast %struct.GAP* %ogap to i16*
  %bf.load324 = load i16, i16* %135, align 4
  %bf.clear325 = and i16 %bf.load324, -257
  store i16 %bf.clear325, i16* %135, align 4
  %136 = load %union.rec*, %union.rec** %gp, align 8
  %os5326 = bitcast %union.rec* %136 to %struct.gapobj_type*
  %ogap327 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5326, i32 0, i32 3
  %137 = bitcast %struct.GAP* %ogap327 to i16*
  %bf.load328 = load i16, i16* %137, align 4
  %bf.clear329 = and i16 %bf.load328, -513
  store i16 %bf.clear329, i16* %137, align 4
  %138 = load i16, i16* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 2), align 2
  %139 = load %union.rec*, %union.rec** %gp, align 8
  %os1330 = bitcast %union.rec* %139 to %struct.word_type*
  %ou1331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 1
  %ofpos332 = bitcast %union.FIRST_UNION* %ou1331 to %struct.FILE_POS*
  %ofile_num333 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos332, i32 0, i32 2
  store i16 %138, i16* %ofile_num333, align 2
  %bf.load334 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.clear335 = and i32 %bf.load334, 1048575
  %140 = load %union.rec*, %union.rec** %gp, align 8
  %os1336 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 1
  %ofpos338 = bitcast %union.FIRST_UNION* %ou1337 to %struct.FILE_POS*
  %oline_num339 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos338, i32 0, i32 3
  %bf.load340 = load i32, i32* %oline_num339, align 4
  %bf.value341 = and i32 %bf.clear335, 1048575
  %bf.clear342 = and i32 %bf.load340, -1048576
  %bf.set343 = or i32 %bf.clear342, %bf.value341
  store i32 %bf.set343, i32* %oline_num339, align 4
  %bf.load344 = load i32, i32* getelementptr inbounds (%struct.FILE_POS, %struct.FILE_POS* @file_pos, i32 0, i32 3), align 4
  %bf.lshr345 = lshr i32 %bf.load344, 20
  %141 = load %union.rec*, %union.rec** %gp, align 8
  %os1346 = bitcast %union.rec* %141 to %struct.word_type*
  %ou1347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1346, i32 0, i32 1
  %ofpos348 = bitcast %union.FIRST_UNION* %ou1347 to %struct.FILE_POS*
  %ocol_num349 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos348, i32 0, i32 3
  %bf.load350 = load i32, i32* %ocol_num349, align 4
  %bf.value351 = and i32 %bf.lshr345, 4095
  %bf.shl352 = shl i32 %bf.value351, 20
  %bf.clear353 = and i32 %bf.load350, 1048575
  %bf.set354 = or i32 %bf.clear353, %bf.shl352
  store i32 %bf.set354, i32* %ocol_num349, align 4
  %call355 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), %struct.FILE_POS* @file_pos)
  store %union.rec* %call355, %union.rec** %gpword, align 8
  %142 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv356 = zext i8 %142 to i32
  store i32 %conv356, i32* @zz_size, align 4
  %conv357 = sext i32 %conv356 to i64
  %cmp358 = icmp uge i64 %conv357, 265
  br i1 %cmp358, label %if.then.360, label %if.else.362

if.then.360:                                      ; preds = %if.end.303
  %143 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call361 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %143)
  br label %if.end.379

if.else.362:                                      ; preds = %if.end.303
  %144 = load i32, i32* @zz_size, align 4
  %idxprom363 = sext i32 %144 to i64
  %arrayidx364 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom363
  %145 = load %union.rec*, %union.rec** %arrayidx364, align 8
  %cmp365 = icmp eq %union.rec* %145, null
  br i1 %cmp365, label %if.then.367, label %if.else.369

if.then.367:                                      ; preds = %if.else.362
  %146 = load i32, i32* @zz_size, align 4
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call368 = call %union.rec* @GetMemory(i32 %146, %struct.FILE_POS* %147)
  store %union.rec* %call368, %union.rec** @zz_hold, align 8
  br label %if.end.378

if.else.369:                                      ; preds = %if.else.362
  %148 = load i32, i32* @zz_size, align 4
  %idxprom370 = sext i32 %148 to i64
  %arrayidx371 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom370
  %149 = load %union.rec*, %union.rec** %arrayidx371, align 8
  store %union.rec* %149, %union.rec** @zz_hold, align 8
  store %union.rec* %149, %union.rec** @zz_hold, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1372 = bitcast %union.rec* %150 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 0
  %opred375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %opred375, align 8
  %152 = load i32, i32* @zz_size, align 4
  %idxprom376 = sext i32 %152 to i64
  %arrayidx377 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom376
  store %union.rec* %151, %union.rec** %arrayidx377, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.369, %if.then.367
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.360
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %153 to %struct.word_type*
  %ou1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 1
  %os11382 = bitcast %union.FIRST_UNION* %ou1381 to %struct.anon.0*
  %otype383 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11382, i32 0, i32 0
  store i8 0, i8* %otype383, align 1
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1384 = bitcast %union.rec* %155 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 1
  %osucc387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 1
  store %union.rec* %154, %union.rec** %osucc387, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1388 = bitcast %union.rec* %156 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 1
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  store %union.rec* %154, %union.rec** %opred391, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1392 = bitcast %union.rec* %157 to %struct.word_type*
  %olist393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist393, i32 0, i64 0
  %osucc395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx394, i32 0, i32 1
  store %union.rec* %154, %union.rec** %osucc395, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1396 = bitcast %union.rec* %158 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 0
  %opred399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 0
  store %union.rec* %154, %union.rec** %opred399, align 8
  store %union.rec* %154, %union.rec** @xx_link, align 8
  %159 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %159, %union.rec** @zz_res, align 8
  %160 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %160, %union.rec** @zz_hold, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp400 = icmp eq %union.rec* %161, null
  br i1 %cmp400, label %cond.true.402, label %cond.false.403

cond.true.402:                                    ; preds = %if.end.379
  %162 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.438

cond.false.403:                                   ; preds = %if.end.379
  %163 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp404 = icmp eq %union.rec* %163, null
  br i1 %cmp404, label %cond.true.406, label %cond.false.407

cond.true.406:                                    ; preds = %cond.false.403
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.436

cond.false.407:                                   ; preds = %cond.false.403
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1408 = bitcast %union.rec* %165 to %struct.word_type*
  %olist409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist409, i32 0, i64 0
  %opred411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx410, i32 0, i32 0
  %166 = load %union.rec*, %union.rec** %opred411, align 8
  store %union.rec* %166, %union.rec** @zz_tmp, align 8
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1412 = bitcast %union.rec* %167 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 0
  %opred415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 0
  %168 = load %union.rec*, %union.rec** %opred415, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1416 = bitcast %union.rec* %169 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 0
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  store %union.rec* %168, %union.rec** %opred419, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1420 = bitcast %union.rec* %171 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 0
  %opred423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 0
  %172 = load %union.rec*, %union.rec** %opred423, align 8
  %os1424 = bitcast %union.rec* %172 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 0
  %osucc427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 1
  store %union.rec* %170, %union.rec** %osucc427, align 8
  %173 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %174 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1428 = bitcast %union.rec* %174 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 0
  %opred431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 0
  store %union.rec* %173, %union.rec** %opred431, align 8
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %176 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1432 = bitcast %union.rec* %176 to %struct.word_type*
  %olist433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist433, i32 0, i64 0
  %osucc435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx434, i32 0, i32 1
  store %union.rec* %175, %union.rec** %osucc435, align 8
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.407, %cond.true.406
  %cond437 = phi %union.rec* [ %164, %cond.true.406 ], [ %175, %cond.false.407 ]
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.end.436, %cond.true.402
  %cond439 = phi %union.rec* [ %162, %cond.true.402 ], [ %cond437, %cond.end.436 ]
  %177 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %177, %union.rec** @zz_res, align 8
  %178 = load %union.rec*, %union.rec** %gpword, align 8
  store %union.rec* %178, %union.rec** @zz_hold, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp440 = icmp eq %union.rec* %179, null
  br i1 %cmp440, label %cond.true.442, label %cond.false.443

cond.true.442:                                    ; preds = %cond.end.438
  %180 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.478

cond.false.443:                                   ; preds = %cond.end.438
  %181 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp444 = icmp eq %union.rec* %181, null
  br i1 %cmp444, label %cond.true.446, label %cond.false.447

cond.true.446:                                    ; preds = %cond.false.443
  %182 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.476

cond.false.447:                                   ; preds = %cond.false.443
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1448 = bitcast %union.rec* %183 to %struct.word_type*
  %olist449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1448, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist449, i32 0, i64 1
  %opred451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx450, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %opred451, align 8
  store %union.rec* %184, %union.rec** @zz_tmp, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1452 = bitcast %union.rec* %185 to %struct.word_type*
  %olist453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist453, i32 0, i64 1
  %opred455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx454, i32 0, i32 0
  %186 = load %union.rec*, %union.rec** %opred455, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1456 = bitcast %union.rec* %187 to %struct.word_type*
  %olist457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist457, i32 0, i64 1
  %opred459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx458, i32 0, i32 0
  store %union.rec* %186, %union.rec** %opred459, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1460 = bitcast %union.rec* %189 to %struct.word_type*
  %olist461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist461, i32 0, i64 1
  %opred463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx462, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %opred463, align 8
  %os1464 = bitcast %union.rec* %190 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 1
  %osucc467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 1
  store %union.rec* %188, %union.rec** %osucc467, align 8
  %191 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1468 = bitcast %union.rec* %192 to %struct.word_type*
  %olist469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1468, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist469, i32 0, i64 1
  %opred471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx470, i32 0, i32 0
  store %union.rec* %191, %union.rec** %opred471, align 8
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %194 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1472 = bitcast %union.rec* %194 to %struct.word_type*
  %olist473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1472, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist473, i32 0, i64 1
  %osucc475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx474, i32 0, i32 1
  store %union.rec* %193, %union.rec** %osucc475, align 8
  br label %cond.end.476

cond.end.476:                                     ; preds = %cond.false.447, %cond.true.446
  %cond477 = phi %union.rec* [ %182, %cond.true.446 ], [ %193, %cond.false.447 ]
  br label %cond.end.478

cond.end.478:                                     ; preds = %cond.end.476, %cond.true.442
  %cond479 = phi %union.rec* [ %180, %cond.true.442 ], [ %cond477, %cond.end.476 ]
  %195 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv480 = zext i8 %195 to i32
  store i32 %conv480, i32* @zz_size, align 4
  %conv481 = sext i32 %conv480 to i64
  %cmp482 = icmp uge i64 %conv481, 265
  br i1 %cmp482, label %if.then.484, label %if.else.486

if.then.484:                                      ; preds = %cond.end.478
  %196 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call485 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %196)
  br label %if.end.503

if.else.486:                                      ; preds = %cond.end.478
  %197 = load i32, i32* @zz_size, align 4
  %idxprom487 = sext i32 %197 to i64
  %arrayidx488 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom487
  %198 = load %union.rec*, %union.rec** %arrayidx488, align 8
  %cmp489 = icmp eq %union.rec* %198, null
  br i1 %cmp489, label %if.then.491, label %if.else.493

if.then.491:                                      ; preds = %if.else.486
  %199 = load i32, i32* @zz_size, align 4
  %200 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call492 = call %union.rec* @GetMemory(i32 %199, %struct.FILE_POS* %200)
  store %union.rec* %call492, %union.rec** @zz_hold, align 8
  br label %if.end.502

if.else.493:                                      ; preds = %if.else.486
  %201 = load i32, i32* @zz_size, align 4
  %idxprom494 = sext i32 %201 to i64
  %arrayidx495 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom494
  %202 = load %union.rec*, %union.rec** %arrayidx495, align 8
  store %union.rec* %202, %union.rec** @zz_hold, align 8
  store %union.rec* %202, %union.rec** @zz_hold, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1496 = bitcast %union.rec* %203 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 0
  %opred499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 0
  %204 = load %union.rec*, %union.rec** %opred499, align 8
  %205 = load i32, i32* @zz_size, align 4
  %idxprom500 = sext i32 %205 to i64
  %arrayidx501 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom500
  store %union.rec* %204, %union.rec** %arrayidx501, align 8
  br label %if.end.502

if.end.502:                                       ; preds = %if.else.493, %if.then.491
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %if.then.484
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1504 = bitcast %union.rec* %206 to %struct.word_type*
  %ou1505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 1
  %os11506 = bitcast %union.FIRST_UNION* %ou1505 to %struct.anon.0*
  %otype507 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11506, i32 0, i32 0
  store i8 0, i8* %otype507, align 1
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1508 = bitcast %union.rec* %208 to %struct.word_type*
  %olist509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist509, i32 0, i64 1
  %osucc511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx510, i32 0, i32 1
  store %union.rec* %207, %union.rec** %osucc511, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1512 = bitcast %union.rec* %209 to %struct.word_type*
  %olist513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist513, i32 0, i64 1
  %opred515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx514, i32 0, i32 0
  store %union.rec* %207, %union.rec** %opred515, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1516 = bitcast %union.rec* %210 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 0
  %osucc519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 1
  store %union.rec* %207, %union.rec** %osucc519, align 8
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1520 = bitcast %union.rec* %211 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 0
  %opred523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 0
  store %union.rec* %207, %union.rec** %opred523, align 8
  store %union.rec* %207, %union.rec** @xx_link, align 8
  %212 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %212, %union.rec** @zz_res, align 8
  %213 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp524 = icmp eq %union.rec* %214, null
  br i1 %cmp524, label %cond.true.526, label %cond.false.527

cond.true.526:                                    ; preds = %if.end.503
  %215 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.562

cond.false.527:                                   ; preds = %if.end.503
  %216 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp528 = icmp eq %union.rec* %216, null
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %cond.false.527
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.560

cond.false.531:                                   ; preds = %cond.false.527
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %218 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 0
  %opred535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %opred535, align 8
  store %union.rec* %219, %union.rec** @zz_tmp, align 8
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1536 = bitcast %union.rec* %220 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 0
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %opred539, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %222 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 0
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  store %union.rec* %221, %union.rec** %opred543, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1544 = bitcast %union.rec* %224 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 0
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %opred547, align 8
  %os1548 = bitcast %union.rec* %225 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 0
  %osucc551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 1
  store %union.rec* %223, %union.rec** %osucc551, align 8
  %226 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %227 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1552 = bitcast %union.rec* %227 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 0
  %opred555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 0
  store %union.rec* %226, %union.rec** %opred555, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %229 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1556 = bitcast %union.rec* %229 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 0
  %osucc559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 1
  store %union.rec* %228, %union.rec** %osucc559, align 8
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.531, %cond.true.530
  %cond561 = phi %union.rec* [ %217, %cond.true.530 ], [ %228, %cond.false.531 ]
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.end.560, %cond.true.526
  %cond563 = phi %union.rec* [ %215, %cond.true.526 ], [ %cond561, %cond.end.560 ]
  %230 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %230, %union.rec** @zz_res, align 8
  %231 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %231, %union.rec** @zz_hold, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp564 = icmp eq %union.rec* %232, null
  br i1 %cmp564, label %cond.true.566, label %cond.false.567

cond.true.566:                                    ; preds = %cond.end.562
  %233 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.602

cond.false.567:                                   ; preds = %cond.end.562
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp568 = icmp eq %union.rec* %234, null
  br i1 %cmp568, label %cond.true.570, label %cond.false.571

cond.true.570:                                    ; preds = %cond.false.567
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.600

cond.false.571:                                   ; preds = %cond.false.567
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1572 = bitcast %union.rec* %236 to %struct.word_type*
  %olist573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1572, i32 0, i32 0
  %arrayidx574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist573, i32 0, i64 1
  %opred575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx574, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %opred575, align 8
  store %union.rec* %237, %union.rec** @zz_tmp, align 8
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1576 = bitcast %union.rec* %238 to %struct.word_type*
  %olist577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist577, i32 0, i64 1
  %opred579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx578, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %opred579, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1580 = bitcast %union.rec* %240 to %struct.word_type*
  %olist581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist581, i32 0, i64 1
  %opred583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx582, i32 0, i32 0
  store %union.rec* %239, %union.rec** %opred583, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1584 = bitcast %union.rec* %242 to %struct.word_type*
  %olist585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist585, i32 0, i64 1
  %opred587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx586, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %opred587, align 8
  %os1588 = bitcast %union.rec* %243 to %struct.word_type*
  %olist589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 0
  %arrayidx590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist589, i32 0, i64 1
  %osucc591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx590, i32 0, i32 1
  store %union.rec* %241, %union.rec** %osucc591, align 8
  %244 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %245 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1592 = bitcast %union.rec* %245 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 1
  %opred595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 0
  store %union.rec* %244, %union.rec** %opred595, align 8
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  %247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1596 = bitcast %union.rec* %247 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 1
  %osucc599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 1
  store %union.rec* %246, %union.rec** %osucc599, align 8
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.571, %cond.true.570
  %cond601 = phi %union.rec* [ %235, %cond.true.570 ], [ %246, %cond.false.571 ]
  br label %cond.end.602

cond.end.602:                                     ; preds = %cond.end.600, %cond.true.566
  %cond603 = phi %union.rec* [ %233, %cond.true.566 ], [ %cond601, %cond.end.600 ]
  %248 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv604 = zext i8 %248 to i32
  store i32 %conv604, i32* @zz_size, align 4
  %conv605 = sext i32 %conv604 to i64
  %cmp606 = icmp uge i64 %conv605, 265
  br i1 %cmp606, label %if.then.608, label %if.else.610

if.then.608:                                      ; preds = %cond.end.602
  %249 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call609 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %249)
  br label %if.end.627

if.else.610:                                      ; preds = %cond.end.602
  %250 = load i32, i32* @zz_size, align 4
  %idxprom611 = sext i32 %250 to i64
  %arrayidx612 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom611
  %251 = load %union.rec*, %union.rec** %arrayidx612, align 8
  %cmp613 = icmp eq %union.rec* %251, null
  br i1 %cmp613, label %if.then.615, label %if.else.617

if.then.615:                                      ; preds = %if.else.610
  %252 = load i32, i32* @zz_size, align 4
  %253 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call616 = call %union.rec* @GetMemory(i32 %252, %struct.FILE_POS* %253)
  store %union.rec* %call616, %union.rec** @zz_hold, align 8
  br label %if.end.626

if.else.617:                                      ; preds = %if.else.610
  %254 = load i32, i32* @zz_size, align 4
  %idxprom618 = sext i32 %254 to i64
  %arrayidx619 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom618
  %255 = load %union.rec*, %union.rec** %arrayidx619, align 8
  store %union.rec* %255, %union.rec** @zz_hold, align 8
  store %union.rec* %255, %union.rec** @zz_hold, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1620 = bitcast %union.rec* %256 to %struct.word_type*
  %olist621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist621, i32 0, i64 0
  %opred623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx622, i32 0, i32 0
  %257 = load %union.rec*, %union.rec** %opred623, align 8
  %258 = load i32, i32* @zz_size, align 4
  %idxprom624 = sext i32 %258 to i64
  %arrayidx625 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom624
  store %union.rec* %257, %union.rec** %arrayidx625, align 8
  br label %if.end.626

if.end.626:                                       ; preds = %if.else.617, %if.then.615
  br label %if.end.627

if.end.627:                                       ; preds = %if.end.626, %if.then.608
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1628 = bitcast %union.rec* %259 to %struct.word_type*
  %ou1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1628, i32 0, i32 1
  %os11630 = bitcast %union.FIRST_UNION* %ou1629 to %struct.anon.0*
  %otype631 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11630, i32 0, i32 0
  store i8 0, i8* %otype631, align 1
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1632 = bitcast %union.rec* %261 to %struct.word_type*
  %olist633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1632, i32 0, i32 0
  %arrayidx634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist633, i32 0, i64 1
  %osucc635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx634, i32 0, i32 1
  store %union.rec* %260, %union.rec** %osucc635, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1636 = bitcast %union.rec* %262 to %struct.word_type*
  %olist637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 0
  %arrayidx638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist637, i32 0, i64 1
  %opred639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx638, i32 0, i32 0
  store %union.rec* %260, %union.rec** %opred639, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1640 = bitcast %union.rec* %263 to %struct.word_type*
  %olist641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1640, i32 0, i32 0
  %arrayidx642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist641, i32 0, i64 0
  %osucc643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx642, i32 0, i32 1
  store %union.rec* %260, %union.rec** %osucc643, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1644 = bitcast %union.rec* %264 to %struct.word_type*
  %olist645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1644, i32 0, i32 0
  %arrayidx646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist645, i32 0, i64 0
  %opred647 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx646, i32 0, i32 0
  store %union.rec* %260, %union.rec** %opred647, align 8
  store %union.rec* %260, %union.rec** @xx_link, align 8
  %265 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %265, %union.rec** @zz_res, align 8
  %266 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp648 = icmp eq %union.rec* %267, null
  br i1 %cmp648, label %cond.true.650, label %cond.false.651

cond.true.650:                                    ; preds = %if.end.627
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.686

cond.false.651:                                   ; preds = %if.end.627
  %269 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp652 = icmp eq %union.rec* %269, null
  br i1 %cmp652, label %cond.true.654, label %cond.false.655

cond.true.654:                                    ; preds = %cond.false.651
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.684

cond.false.655:                                   ; preds = %cond.false.651
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1656 = bitcast %union.rec* %271 to %struct.word_type*
  %olist657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1656, i32 0, i32 0
  %arrayidx658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist657, i32 0, i64 0
  %opred659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx658, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %opred659, align 8
  store %union.rec* %272, %union.rec** @zz_tmp, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1660 = bitcast %union.rec* %273 to %struct.word_type*
  %olist661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 0
  %arrayidx662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist661, i32 0, i64 0
  %opred663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx662, i32 0, i32 0
  %274 = load %union.rec*, %union.rec** %opred663, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1664 = bitcast %union.rec* %275 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 0
  %opred667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 0
  store %union.rec* %274, %union.rec** %opred667, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1668 = bitcast %union.rec* %277 to %struct.word_type*
  %olist669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist669, i32 0, i64 0
  %opred671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx670, i32 0, i32 0
  %278 = load %union.rec*, %union.rec** %opred671, align 8
  %os1672 = bitcast %union.rec* %278 to %struct.word_type*
  %olist673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 0
  %arrayidx674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist673, i32 0, i64 0
  %osucc675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx674, i32 0, i32 1
  store %union.rec* %276, %union.rec** %osucc675, align 8
  %279 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1676 = bitcast %union.rec* %280 to %struct.word_type*
  %olist677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1676, i32 0, i32 0
  %arrayidx678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist677, i32 0, i64 0
  %opred679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx678, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred679, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1680 = bitcast %union.rec* %282 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 0
  %osucc683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 1
  store %union.rec* %281, %union.rec** %osucc683, align 8
  br label %cond.end.684

cond.end.684:                                     ; preds = %cond.false.655, %cond.true.654
  %cond685 = phi %union.rec* [ %270, %cond.true.654 ], [ %281, %cond.false.655 ]
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.end.684, %cond.true.650
  %cond687 = phi %union.rec* [ %268, %cond.true.650 ], [ %cond685, %cond.end.684 ]
  %283 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %283, %union.rec** @zz_res, align 8
  %284 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp688 = icmp eq %union.rec* %285, null
  br i1 %cmp688, label %cond.true.690, label %cond.false.691

cond.true.690:                                    ; preds = %cond.end.686
  %286 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.726

cond.false.691:                                   ; preds = %cond.end.686
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp692 = icmp eq %union.rec* %287, null
  br i1 %cmp692, label %cond.true.694, label %cond.false.695

cond.true.694:                                    ; preds = %cond.false.691
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.724

cond.false.695:                                   ; preds = %cond.false.691
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1696 = bitcast %union.rec* %289 to %struct.word_type*
  %olist697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1696, i32 0, i32 0
  %arrayidx698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist697, i32 0, i64 1
  %opred699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx698, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred699, align 8
  store %union.rec* %290, %union.rec** @zz_tmp, align 8
  %291 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1700 = bitcast %union.rec* %291 to %struct.word_type*
  %olist701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 0
  %arrayidx702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist701, i32 0, i64 1
  %opred703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx702, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %opred703, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1704 = bitcast %union.rec* %293 to %struct.word_type*
  %olist705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1704, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist705, i32 0, i64 1
  %opred707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx706, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred707, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1708 = bitcast %union.rec* %295 to %struct.word_type*
  %olist709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1708, i32 0, i32 0
  %arrayidx710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist709, i32 0, i64 1
  %opred711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx710, i32 0, i32 0
  %296 = load %union.rec*, %union.rec** %opred711, align 8
  %os1712 = bitcast %union.rec* %296 to %struct.word_type*
  %olist713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1712, i32 0, i32 0
  %arrayidx714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist713, i32 0, i64 1
  %osucc715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx714, i32 0, i32 1
  store %union.rec* %294, %union.rec** %osucc715, align 8
  %297 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %298 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1716 = bitcast %union.rec* %298 to %struct.word_type*
  %olist717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1716, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist717, i32 0, i64 1
  %opred719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx718, i32 0, i32 0
  store %union.rec* %297, %union.rec** %opred719, align 8
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1720 = bitcast %union.rec* %300 to %struct.word_type*
  %olist721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1720, i32 0, i32 0
  %arrayidx722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist721, i32 0, i64 1
  %osucc723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx722, i32 0, i32 1
  store %union.rec* %299, %union.rec** %osucc723, align 8
  br label %cond.end.724

cond.end.724:                                     ; preds = %cond.false.695, %cond.true.694
  %cond725 = phi %union.rec* [ %288, %cond.true.694 ], [ %299, %cond.false.695 ]
  br label %cond.end.726

cond.end.726:                                     ; preds = %cond.end.724, %cond.true.690
  %cond727 = phi %union.rec* [ %286, %cond.true.690 ], [ %cond725, %cond.end.724 ]
  br label %if.end.728

if.end.728:                                       ; preds = %cond.end.726, %if.then.67
  %301 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %301
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
