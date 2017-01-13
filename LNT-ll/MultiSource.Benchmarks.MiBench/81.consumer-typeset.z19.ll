; ModuleID = './MultiSource.Benchmarks.MiBench/81.consumer-typeset.z19.bc'
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
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DetachGalley: precondition!\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"DetachGalley: parent!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"SearchGalley: start!\00", align 1
@InputSym = external global %union.rec*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"AttachGalley: no index!\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"AttachGalley: not UNATTACHED!\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"galley %s deleted from here (no target)\00", align 1
@xx_hold = external global %union.rec*, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"AttachGalley: target_index!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"AttachGalley: target!\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"receptive symbol %s has unconstrained width\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"AttachGalley: dest unconstrained!\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"too little horizontal space for galley %s at %s\00", align 1
@xx_tmp = external global %union.rec*, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"Attach: PRECEDES!\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.1fc\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"%s object too high for %s space; %s inserted\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%s object too wide for %s space; %s inserted\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"%s object too high for %s space; will try elsewhere\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"%s object too wide for %s space; will try elsewhere\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"AttachGalley: is_index(z)!\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"AttachGalley: z size!\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"AttachGalley: z size (perpendicular)!\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"AttachGalley:\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"AttachGalley: type(hd_index)!\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"AttachGalley: type(junk) != ACAT!\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"AttachGalley: target_ind\00", align 1

; Function Attrs: nounwind uwtable
define void @DetachGalley(%union.rec* %hd) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %3 = load %union.rec*, %union.rec** %osucc, align 8
  %4 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp3 = icmp ne %union.rec* %3, %4
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %6 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %osucc8 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %osucc8, align 8
  %os19 = bitcast %union.rec* %7 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %8, %union.rec** %prnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %union.rec*, %union.rec** %prnt, align 8
  %os112 = bitcast %union.rec* %9 to %struct.word_type*
  %ou113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os1114 = bitcast %union.FIRST_UNION* %ou113 to %struct.anon*
  %otype15 = getelementptr inbounds %struct.anon, %struct.anon* %os1114, i32 0, i32 0
  %10 = load i8, i8* %otype15, align 1
  %conv16 = zext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %union.rec*, %union.rec** %prnt, align 8
  %os119 = bitcast %union.rec* %11 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 0
  %opred22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred22, align 8
  store %union.rec* %12, %union.rec** %prnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %union.rec*, %union.rec** %prnt, align 8
  %os123 = bitcast %union.rec* %13 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  %14 = load %union.rec*, %union.rec** %osucc26, align 8
  %15 = load %union.rec*, %union.rec** %prnt, align 8
  %cmp27 = icmp ne %union.rec* %14, %15
  br i1 %cmp27, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.end
  %17 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 120), align 1
  %conv32 = zext i8 %17 to i32
  store i32 %conv32, i32* @zz_size, align 4
  %conv33 = sext i32 %conv32 to i64
  %cmp34 = icmp uge i64 %conv33, 265
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.31
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %18)
  br label %if.end.53

if.else:                                          ; preds = %if.end.31
  %19 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %20 = load %union.rec*, %union.rec** %arrayidx38, align 8
  %cmp39 = icmp eq %union.rec* %20, null
  br i1 %cmp39, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.else
  %21 = load i32, i32* @zz_size, align 4
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call42 = call %union.rec* @GetMemory(i32 %21, %struct.FILE_POS* %22)
  store %union.rec* %call42, %union.rec** @zz_hold, align 8
  br label %if.end.52

if.else.43:                                       ; preds = %if.else
  %23 = load i32, i32* @zz_size, align 4
  %idxprom44 = sext i32 %23 to i64
  %arrayidx45 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom44
  %24 = load %union.rec*, %union.rec** %arrayidx45, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %25 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 0
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred49, align 8
  %27 = load i32, i32* @zz_size, align 4
  %idxprom50 = sext i32 %27 to i64
  %arrayidx51 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom50
  store %union.rec* %26, %union.rec** %arrayidx51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.43, %if.then.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.36
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %28 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %os1156 = bitcast %union.FIRST_UNION* %ou155 to %struct.anon*
  %otype57 = getelementptr inbounds %struct.anon, %struct.anon* %os1156, i32 0, i32 0
  store i8 120, i8* %otype57, align 1
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %30 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc61, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %31 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 1
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred65, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os166 = bitcast %union.rec* %32 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %osucc69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc69, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %33 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred73, align 8
  store %union.rec* %29, %union.rec** %index, align 8
  %34 = load %union.rec*, %union.rec** %index, align 8
  %os2 = bitcast %union.rec* %34 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 6
  %opinpoint = bitcast %union.anon.12* %oux to %union.rec**
  store %union.rec* null, %union.rec** %opinpoint, align 8
  %35 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os174 = bitcast %union.rec* %35 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 1
  %osucc77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %osucc77, align 8
  store %union.rec* %36, %union.rec** @xx_link, align 8
  %37 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %37, %union.rec** @zz_hold, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %38 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %osucc81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %osucc81, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp82 = icmp eq %union.rec* %39, %40
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.53
  br label %cond.end

cond.false:                                       ; preds = %if.end.53
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os184 = bitcast %union.rec* %41 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 0
  %osucc87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %osucc87, align 8
  store %union.rec* %42, %union.rec** @zz_res, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %43 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 0
  %opred91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred91, align 8
  %45 = load %union.rec*, %union.rec** @zz_res, align 8
  %os192 = bitcast %union.rec* %45 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 0
  %opred95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 0
  store %union.rec* %44, %union.rec** %opred95, align 8
  %46 = load %union.rec*, %union.rec** @zz_res, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os196 = bitcast %union.rec* %47 to %struct.word_type*
  %olist97 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist97, i32 0, i64 0
  %opred99 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx98, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred99, align 8
  %os1100 = bitcast %union.rec* %48 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 0
  %osucc103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 1
  store %union.rec* %46, %union.rec** %osucc103, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1104 = bitcast %union.rec* %50 to %struct.word_type*
  %olist105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist105, i32 0, i64 0
  %osucc107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx106, i32 0, i32 1
  store %union.rec* %49, %union.rec** %osucc107, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1108 = bitcast %union.rec* %51 to %struct.word_type*
  %olist109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist109, i32 0, i64 0
  %opred111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx110, i32 0, i32 0
  store %union.rec* %49, %union.rec** %opred111, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %52, %cond.false ]
  %53 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %53, %union.rec** @zz_res, align 8
  %54 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %54, %union.rec** @zz_hold, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp112 = icmp eq %union.rec* %55, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.end
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.150

cond.false.115:                                   ; preds = %cond.end
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp116 = icmp eq %union.rec* %57, null
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %cond.false.115
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.148

cond.false.119:                                   ; preds = %cond.false.115
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %59 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 0
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %opred123, align 8
  store %union.rec* %60, %union.rec** @zz_tmp, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1124 = bitcast %union.rec* %61 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred127, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %63 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  store %union.rec* %62, %union.rec** %opred131, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1132 = bitcast %union.rec* %65 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %opred135, align 8
  %os1136 = bitcast %union.rec* %66 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc139, align 8
  %67 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1140 = bitcast %union.rec* %68 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred143, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1144 = bitcast %union.rec* %70 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc147, align 8
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.119, %cond.true.118
  %cond149 = phi %union.rec* [ %58, %cond.true.118 ], [ %69, %cond.false.119 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.114
  %cond151 = phi %union.rec* [ %56, %cond.true.114 ], [ %cond149, %cond.end.148 ]
  %71 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv152 = zext i8 %71 to i32
  store i32 %conv152, i32* @zz_size, align 4
  %conv153 = sext i32 %conv152 to i64
  %cmp154 = icmp uge i64 %conv153, 265
  br i1 %cmp154, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %cond.end.150
  %72 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %72)
  br label %if.end.175

if.else.158:                                      ; preds = %cond.end.150
  %73 = load i32, i32* @zz_size, align 4
  %idxprom159 = sext i32 %73 to i64
  %arrayidx160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom159
  %74 = load %union.rec*, %union.rec** %arrayidx160, align 8
  %cmp161 = icmp eq %union.rec* %74, null
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.else.158
  %75 = load i32, i32* @zz_size, align 4
  %76 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call164 = call %union.rec* @GetMemory(i32 %75, %struct.FILE_POS* %76)
  store %union.rec* %call164, %union.rec** @zz_hold, align 8
  br label %if.end.174

if.else.165:                                      ; preds = %if.else.158
  %77 = load i32, i32* @zz_size, align 4
  %idxprom166 = sext i32 %77 to i64
  %arrayidx167 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom166
  %78 = load %union.rec*, %union.rec** %arrayidx167, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1168 = bitcast %union.rec* %79 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 0
  %opred171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred171, align 8
  %81 = load i32, i32* @zz_size, align 4
  %idxprom172 = sext i32 %81 to i64
  %arrayidx173 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom172
  store %union.rec* %80, %union.rec** %arrayidx173, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.165, %if.then.163
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.156
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1176 = bitcast %union.rec* %82 to %struct.word_type*
  %ou1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 1
  %os11178 = bitcast %union.FIRST_UNION* %ou1177 to %struct.anon*
  %otype179 = getelementptr inbounds %struct.anon, %struct.anon* %os11178, i32 0, i32 0
  store i8 0, i8* %otype179, align 1
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1180 = bitcast %union.rec* %84 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 1
  %osucc183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc183, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1184 = bitcast %union.rec* %85 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 1
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred187, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %86 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 0
  %osucc191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc191, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1192 = bitcast %union.rec* %87 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 0
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred195, align 8
  store %union.rec* %83, %union.rec** @xx_link, align 8
  %88 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %88, %union.rec** @zz_res, align 8
  %89 = load %union.rec*, %union.rec** %prnt, align 8
  %os1196 = bitcast %union.rec* %89 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 1
  %osucc199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 1
  %90 = load %union.rec*, %union.rec** %osucc199, align 8
  %os1200 = bitcast %union.rec* %90 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 0
  %osucc203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 1
  %91 = load %union.rec*, %union.rec** %osucc203, align 8
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp204 = icmp eq %union.rec* %92, null
  br i1 %cmp204, label %cond.true.206, label %cond.false.207

cond.true.206:                                    ; preds = %if.end.175
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.242

cond.false.207:                                   ; preds = %if.end.175
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp208 = icmp eq %union.rec* %94, null
  br i1 %cmp208, label %cond.true.210, label %cond.false.211

cond.true.210:                                    ; preds = %cond.false.207
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.240

cond.false.211:                                   ; preds = %cond.false.207
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1212 = bitcast %union.rec* %96 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %opred215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred215, align 8
  store %union.rec* %97, %union.rec** @zz_tmp, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1216 = bitcast %union.rec* %98 to %struct.word_type*
  %olist217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist217, i32 0, i64 0
  %opred219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx218, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred219, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %100 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 0
  %opred223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred223, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1224 = bitcast %union.rec* %102 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 0
  %opred227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred227, align 8
  %os1228 = bitcast %union.rec* %103 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 0
  %osucc231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 1
  store %union.rec* %101, %union.rec** %osucc231, align 8
  %104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1232 = bitcast %union.rec* %105 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 0
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred235, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1236 = bitcast %union.rec* %107 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 0
  %osucc239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc239, align 8
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.211, %cond.true.210
  %cond241 = phi %union.rec* [ %95, %cond.true.210 ], [ %106, %cond.false.211 ]
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.end.240, %cond.true.206
  %cond243 = phi %union.rec* [ %93, %cond.true.206 ], [ %cond241, %cond.end.240 ]
  %108 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %108, %union.rec** @zz_res, align 8
  %109 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %109, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp244 = icmp eq %union.rec* %110, null
  br i1 %cmp244, label %cond.true.246, label %cond.false.247

cond.true.246:                                    ; preds = %cond.end.242
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.282

cond.false.247:                                   ; preds = %cond.end.242
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp248 = icmp eq %union.rec* %112, null
  br i1 %cmp248, label %cond.true.250, label %cond.false.251

cond.true.250:                                    ; preds = %cond.false.247
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.280

cond.false.251:                                   ; preds = %cond.false.247
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1252 = bitcast %union.rec* %114 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 1
  %opred255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred255, align 8
  store %union.rec* %115, %union.rec** @zz_tmp, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1256 = bitcast %union.rec* %116 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 1
  %opred259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred259, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1260 = bitcast %union.rec* %118 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 1
  %opred263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 0
  store %union.rec* %117, %union.rec** %opred263, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1264 = bitcast %union.rec* %120 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 1
  %opred267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred267, align 8
  %os1268 = bitcast %union.rec* %121 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 1
  %osucc271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 1
  store %union.rec* %119, %union.rec** %osucc271, align 8
  %122 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1272 = bitcast %union.rec* %123 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 1
  %opred275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 0
  store %union.rec* %122, %union.rec** %opred275, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %125 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1276 = bitcast %union.rec* %125 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 1
  %osucc279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 1
  store %union.rec* %124, %union.rec** %osucc279, align 8
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.251, %cond.true.250
  %cond281 = phi %union.rec* [ %113, %cond.true.250 ], [ %124, %cond.false.251 ]
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.end.280, %cond.true.246
  %cond283 = phi %union.rec* [ %111, %cond.true.246 ], [ %cond281, %cond.end.280 ]
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @SearchGalley(%union.rec* %start, %union.rec* %sym, i32 %forwards, i32 %subgalleys, i32 %closures, i32 %input) #0 {
entry:
  %start.addr = alloca %union.rec*, align 8
  %sym.addr = alloca %union.rec*, align 8
  %forwards.addr = alloca i32, align 4
  %subgalleys.addr = alloca i32, align 4
  %closures.addr = alloca i32, align 4
  %input.addr = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %union.rec* %start, %union.rec** %start.addr, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store i32 %forwards, i32* %forwards.addr, align 4
  store i32 %subgalleys, i32* %subgalleys.addr, align 4
  store i32 %closures, i32* %closures.addr, align 4
  store i32 %input, i32* %input.addr, align 4
  %0 = load %union.rec*, %union.rec** %start.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %start.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 8
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load i32, i32* %forwards.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %union.rec*, %union.rec** %start.addr, align 8
  %os19 = bitcast %union.rec* %6 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %osucc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %start.addr, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %7, %cond.true ], [ %9, %cond.false ]
  store %union.rec* %cond, %union.rec** %link, align 8
  store %union.rec* null, %union.rec** %res, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.144, %cond.end
  %10 = load %union.rec*, %union.rec** %res, align 8
  %cmp13 = icmp eq %union.rec* %10, null
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %union.rec*, %union.rec** %link, align 8
  %os115 = bitcast %union.rec* %11 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %12 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %12 to i32
  %cmp20 = icmp ne i32 %conv19, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %union.rec*, %union.rec** %link, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %opred25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred25, align 8
  store %union.rec* %15, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %ou127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 1
  %os1128 = bitcast %union.FIRST_UNION* %ou127 to %struct.anon*
  %otype29 = getelementptr inbounds %struct.anon, %struct.anon* %os1128, i32 0, i32 0
  %17 = load i8, i8* %otype29, align 1
  %conv30 = zext i8 %17 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os133 = bitcast %union.rec* %18 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred36, align 8
  store %union.rec* %19, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os137 = bitcast %union.rec* %20 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %os1139 = bitcast %union.FIRST_UNION* %ou138 to %struct.anon*
  %otype40 = getelementptr inbounds %struct.anon, %struct.anon* %os1139, i32 0, i32 0
  %21 = load i8, i8* %otype40, align 1
  %conv41 = zext i8 %21 to i32
  switch i32 %conv41, label %sw.default [
    i32 120, label %sw.bb
    i32 122, label %sw.bb
    i32 121, label %sw.bb.101
  ]

sw.bb:                                            ; preds = %for.end, %for.end
  %22 = load i32, i32* %subgalleys.addr, align 4
  %tobool42 = icmp ne i32 %22, 0
  br i1 %tobool42, label %if.then.43, label %if.end.82

if.then.43:                                       ; preds = %sw.bb
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os144 = bitcast %union.rec* %23 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 0
  %osucc47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc47, align 8
  store %union.rec* %24, %union.rec** %zlink, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.76, %if.then.43
  %25 = load %union.rec*, %union.rec** %zlink, align 8
  %26 = load %union.rec*, %union.rec** %y, align 8
  %cmp49 = icmp ne %union.rec* %25, %26
  br i1 %cmp49, label %land.rhs.51, label %land.end.54

land.rhs.51:                                      ; preds = %for.cond.48
  %27 = load %union.rec*, %union.rec** %res, align 8
  %cmp52 = icmp eq %union.rec* %27, null
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.51, %for.cond.48
  %28 = phi i1 [ false, %for.cond.48 ], [ %cmp52, %land.rhs.51 ]
  br i1 %28, label %for.body.55, label %for.end.81

for.body.55:                                      ; preds = %land.end.54
  %29 = load %union.rec*, %union.rec** %zlink, align 8
  %os156 = bitcast %union.rec* %29 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 1
  %opred59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred59, align 8
  store %union.rec* %30, %union.rec** %z, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.69, %for.body.55
  %31 = load %union.rec*, %union.rec** %z, align 8
  %os161 = bitcast %union.rec* %31 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %os1163 = bitcast %union.FIRST_UNION* %ou162 to %struct.anon*
  %otype64 = getelementptr inbounds %struct.anon, %struct.anon* %os1163, i32 0, i32 0
  %32 = load i8, i8* %otype64, align 1
  %conv65 = zext i8 %32 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %for.body.68, label %for.end.74

for.body.68:                                      ; preds = %for.cond.60
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.68
  %33 = load %union.rec*, %union.rec** %z, align 8
  %os170 = bitcast %union.rec* %33 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 1
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred73, align 8
  store %union.rec* %34, %union.rec** %z, align 8
  br label %for.cond.60

for.end.74:                                       ; preds = %for.cond.60
  %35 = load %union.rec*, %union.rec** %z, align 8
  %36 = load %union.rec*, %union.rec** %sym.addr, align 8
  %37 = load i32, i32* %input.addr, align 4
  %call75 = call %union.rec* @SearchGalley(%union.rec* %35, %union.rec* %36, i32 1, i32 1, i32 1, i32 %37)
  store %union.rec* %call75, %union.rec** %res, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.74
  %38 = load %union.rec*, %union.rec** %zlink, align 8
  %os177 = bitcast %union.rec* %38 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 0
  %osucc80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %osucc80, align 8
  store %union.rec* %39, %union.rec** %zlink, align 8
  br label %for.cond.48

for.end.81:                                       ; preds = %land.end.54
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %sw.bb
  %40 = load %union.rec*, %union.rec** %res, align 8
  %cmp83 = icmp eq %union.rec* %40, null
  br i1 %cmp83, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %if.end.82
  %41 = load i32, i32* %input.addr, align 4
  %tobool85 = icmp ne i32 %41, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.100

land.lhs.true.86:                                 ; preds = %land.lhs.true
  %42 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %42 to %struct.word_type*
  %ou188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 1
  %os1189 = bitcast %union.FIRST_UNION* %ou188 to %struct.anon*
  %otype90 = getelementptr inbounds %struct.anon, %struct.anon* %os1189, i32 0, i32 0
  %43 = load i8, i8* %otype90, align 1
  %conv91 = zext i8 %43 to i32
  %cmp92 = icmp eq i32 %conv91, 122
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.100

land.lhs.true.94:                                 ; preds = %land.lhs.true.86
  %44 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %44 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %45 = load %union.rec*, %union.rec** %oactual, align 8
  %os295 = bitcast %union.rec* %45 to %struct.closure_type*
  %oactual96 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os295, i32 0, i32 5
  %46 = load %union.rec*, %union.rec** %oactual96, align 8
  %47 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp97 = icmp eq %union.rec* %46, %47
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.94
  %48 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %48, %union.rec** %res, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %land.lhs.true.94, %land.lhs.true.86, %land.lhs.true, %if.end.82
  br label %sw.epilog

sw.bb.101:                                        ; preds = %for.end
  %49 = load i32, i32* %closures.addr, align 4
  %tobool102 = icmp ne i32 %49, 0
  br i1 %tobool102, label %land.lhs.true.103, label %if.else

land.lhs.true.103:                                ; preds = %sw.bb.101
  %50 = load %union.rec*, %union.rec** %y, align 8
  %os2104 = bitcast %union.rec* %50 to %struct.closure_type*
  %oactual105 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2104, i32 0, i32 5
  %51 = load %union.rec*, %union.rec** %oactual105, align 8
  %os1106 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 1
  %os11108 = bitcast %union.FIRST_UNION* %ou1107 to %struct.anon*
  %otype109 = getelementptr inbounds %struct.anon, %struct.anon* %os11108, i32 0, i32 0
  %52 = load i8, i8* %otype109, align 1
  %conv110 = zext i8 %52 to i32
  %cmp111 = icmp eq i32 %conv110, 2
  br i1 %cmp111, label %land.lhs.true.113, label %if.else

land.lhs.true.113:                                ; preds = %land.lhs.true.103
  %53 = load %union.rec*, %union.rec** %y, align 8
  %os2114 = bitcast %union.rec* %53 to %struct.closure_type*
  %oactual115 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2114, i32 0, i32 5
  %54 = load %union.rec*, %union.rec** %oactual115, align 8
  %os2116 = bitcast %union.rec* %54 to %struct.closure_type*
  %oactual117 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2116, i32 0, i32 5
  %55 = load %union.rec*, %union.rec** %oactual117, align 8
  %56 = load %union.rec*, %union.rec** %sym.addr, align 8
  %call118 = call i32 @SearchUses(%union.rec* %55, %union.rec* %56)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %land.lhs.true.113
  %57 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %57, %union.rec** %res, align 8
  br label %if.end.131

if.else:                                          ; preds = %land.lhs.true.113, %land.lhs.true.103, %sw.bb.101
  %58 = load i32, i32* %input.addr, align 4
  %tobool121 = icmp ne i32 %58, 0
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.130

land.lhs.true.122:                                ; preds = %if.else
  %59 = load %union.rec*, %union.rec** %y, align 8
  %os2123 = bitcast %union.rec* %59 to %struct.closure_type*
  %oactual124 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2123, i32 0, i32 5
  %60 = load %union.rec*, %union.rec** %oactual124, align 8
  %os2125 = bitcast %union.rec* %60 to %struct.closure_type*
  %oactual126 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2125, i32 0, i32 5
  %61 = load %union.rec*, %union.rec** %oactual126, align 8
  %62 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp127 = icmp eq %union.rec* %61, %62
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %land.lhs.true.122
  %63 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %63, %union.rec** %res, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %land.lhs.true.122, %if.else
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.120
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.131, %if.end.100
  %64 = load i32, i32* %forwards.addr, align 4
  %tobool132 = icmp ne i32 %64, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.138

cond.true.133:                                    ; preds = %sw.epilog
  %65 = load %union.rec*, %union.rec** %link, align 8
  %os1134 = bitcast %union.rec* %65 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 0
  %osucc137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 1
  %66 = load %union.rec*, %union.rec** %osucc137, align 8
  br label %cond.end.144

cond.false.138:                                   ; preds = %sw.epilog
  %67 = load %union.rec*, %union.rec** %link, align 8
  %os1140 = bitcast %union.rec* %67 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %opred143, align 8
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.138, %cond.true.133
  %cond145 = phi %union.rec* [ %66, %cond.true.133 ], [ %68, %cond.false.138 ]
  store %union.rec* %cond145, %union.rec** %link, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %69 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %69
}

declare i32 @SearchUses(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define i32 @AttachGalley(%union.rec* %hd, %union.rec** %inners, %union.rec** %suspend_pt) #0 {
entry:
  %retval = alloca i32, align 4
  %hd.addr = alloca %union.rec*, align 8
  %inners.addr = alloca %union.rec**, align 8
  %suspend_pt.addr = alloca %union.rec**, align 8
  %hd_index = alloca %union.rec*, align 8
  %hd_inners = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %target = alloca %union.rec*, align 8
  %target_index = alloca %union.rec*, align 8
  %target_galley = alloca %union.rec*, align 8
  %tg_inners = alloca %union.rec*, align 8
  %need_precedes = alloca i32, align 4
  %recs = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %c = alloca %struct.CONSTRAINT, align 4
  %env = alloca %union.rec*, align 8
  %n1 = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %was_sized = alloca i32, align 4
  %dim = alloca i32, align 4
  %perp_back = alloca i32, align 4
  %perp_fwd = alloca i32, align 4
  %why = alloca %union.rec*, align 8
  %junk = alloca %union.rec*, align 8
  %index1 = alloca %union.rec*, align 8
  %index2 = alloca %union.rec*, align 8
  %scaled = alloca i32, align 4
  %scale_factor = alloca i32, align 4
  %num1 = alloca [20 x i8], align 16
  %num2 = alloca [20 x i8], align 16
  %num13580 = alloca [20 x i8], align 16
  %num23582 = alloca [20 x i8], align 16
  %scaled3691 = alloca i32, align 4
  %scale_factor3707 = alloca i32, align 4
  %num13714 = alloca [20 x i8], align 16
  %num23716 = alloca [20 x i8], align 16
  %scaled3867 = alloca i32, align 4
  %scale_factor3900 = alloca i32, align 4
  %num13919 = alloca [20 x i8], align 16
  %num23921 = alloca [20 x i8], align 16
  %num13970 = alloca [20 x i8], align 16
  %num23972 = alloca [20 x i8], align 16
  %scaled4143 = alloca i32, align 4
  %scale_factor4173 = alloca i32, align 4
  %num14194 = alloca [20 x i8], align 16
  %num24196 = alloca [20 x i8], align 16
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %xxstart6955 = alloca %union.rec*, align 8
  %xxstop6961 = alloca %union.rec*, align 8
  %xxdest6963 = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  store %union.rec** %inners, %union.rec*** %inners.addr, align 8
  store %union.rec** %suspend_pt, %union.rec*** %suspend_pt.addr, align 8
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os110 = bitcast %union.rec* %4 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %osucc13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc13, align 8
  %os114 = bitcast %union.rec* %5 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %6, %union.rec** %hd_index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %union.rec*, %union.rec** %hd_index, align 8
  %os117 = bitcast %union.rec* %7 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %8 = load i8, i8* %otype, align 1
  %conv = zext i8 %8 to i32
  %cmp18 = icmp eq i32 %conv, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %union.rec*, %union.rec** %hd_index, align 8
  %os120 = bitcast %union.rec* %9 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 0
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred23, align 8
  store %union.rec* %10, %union.rec** %hd_index, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %union.rec*, %union.rec** %hd_index, align 8
  %os124 = bitcast %union.rec* %11 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou125 to %struct.anon*
  %otype27 = getelementptr inbounds %struct.anon, %struct.anon* %os1126, i32 0, i32 0
  %12 = load i8, i8* %otype27, align 1
  %conv28 = zext i8 %12 to i32
  %cmp29 = icmp eq i32 %conv28, 120
  br i1 %cmp29, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call32 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %for.end
  store %union.rec* null, %union.rec** %tg_inners, align 8
  store %union.rec* null, %union.rec** %hd_inners, align 8
  %14 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os134 = bitcast %union.rec* %14 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %osized, align 2
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  store i32 %bf.cast, i32* %was_sized, align 4
  %15 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os135 = bitcast %union.rec* %15 to %struct.word_type*
  %ou236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 2
  %os2337 = bitcast %union.SECOND_UNION* %ou236 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2337, i32 0, i32 2
  %bf.load38 = load i16, i16* %ogall_dir, align 2
  %bf.lshr39 = lshr i16 %bf.load38, 8
  %bf.clear40 = and i16 %bf.lshr39, 1
  %bf.cast41 = zext i16 %bf.clear40 to i32
  store i32 %bf.cast41, i32* %dim, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %if.end.5227, %if.end.33
  %16 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2 = bitcast %union.rec* %16 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 6
  %owhereto = bitcast %union.anon.12* %oux to %union.rec**
  %17 = load %union.rec*, %union.rec** %owhereto, align 8
  store %union.rec* %17, %union.rec** %sym, align 8
  %18 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os143 = bitcast %union.rec* %18 to %struct.word_type*
  %ou244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 2
  %os2345 = bitcast %union.SECOND_UNION* %ou244 to %struct.anon.2*
  %osized46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2345, i32 0, i32 2
  %bf.load47 = load i16, i16* %osized46, align 2
  %bf.lshr48 = lshr i16 %bf.load47, 1
  %bf.clear49 = and i16 %bf.lshr48, 1
  %bf.cast50 = zext i16 %bf.clear49 to i32
  %tobool = icmp ne i32 %bf.cast50, 0
  br i1 %tobool, label %if.then.51, label %if.else.588

if.then.51:                                       ; preds = %for.cond.42
  %19 = load %union.rec*, %union.rec** %hd_index, align 8
  %os152 = bitcast %union.rec* %19 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 1
  %osucc55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc55, align 8
  %21 = load %union.rec*, %union.rec** %sym, align 8
  %call56 = call %union.rec* @SearchGalley(%union.rec* %20, %union.rec* %21, i32 1, i32 0, i32 1, i32 1)
  store %union.rec* %call56, %union.rec** %target_index, align 8
  %22 = load %union.rec*, %union.rec** %target_index, align 8
  %cmp57 = icmp eq %union.rec* %22, null
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.then.51
  %23 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os160 = bitcast %union.rec* %23 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %osucc63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc63, align 8
  store %union.rec* %24, %union.rec** %link, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.141, %if.then.59
  %25 = load %union.rec*, %union.rec** %link, align 8
  %26 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp65 = icmp ne %union.rec* %25, %26
  br i1 %cmp65, label %for.body.67, label %for.end.146

for.body.67:                                      ; preds = %for.cond.64
  %27 = load %union.rec*, %union.rec** %link, align 8
  %os168 = bitcast %union.rec* %27 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred71, align 8
  store %union.rec* %28, %union.rec** %y, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.81, %for.body.67
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os173 = bitcast %union.rec* %29 to %struct.word_type*
  %ou174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 1
  %os1175 = bitcast %union.FIRST_UNION* %ou174 to %struct.anon*
  %otype76 = getelementptr inbounds %struct.anon, %struct.anon* %os1175, i32 0, i32 0
  %30 = load i8, i8* %otype76, align 1
  %conv77 = zext i8 %30 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %for.body.80, label %for.end.86

for.body.80:                                      ; preds = %for.cond.72
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.80
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os182 = bitcast %union.rec* %31 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 1
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred85, align 8
  store %union.rec* %32, %union.rec** %y, align 8
  br label %for.cond.72

for.end.86:                                       ; preds = %for.cond.72
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %33 to %struct.word_type*
  %ou188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 1
  %os1189 = bitcast %union.FIRST_UNION* %ou188 to %struct.anon*
  %otype90 = getelementptr inbounds %struct.anon, %struct.anon* %os1189, i32 0, i32 0
  %34 = load i8, i8* %otype90, align 1
  %conv91 = zext i8 %34 to i32
  %cmp92 = icmp eq i32 %conv91, 9
  br i1 %cmp92, label %if.then.94, label %if.end.124

if.then.94:                                       ; preds = %for.end.86
  %35 = load i32, i32* %dim, align 4
  %cmp95 = icmp eq i32 %35, 0
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.94
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os197 = bitcast %union.rec* %36 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc100, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.94
  %38 = load %union.rec*, %union.rec** %y, align 8
  %os1101 = bitcast %union.rec* %38 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 0
  %opred104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred104, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %37, %cond.true ], [ %39, %cond.false ]
  %os1105 = bitcast %union.rec* %cond to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %opred108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred108, align 8
  store %union.rec* %40, %union.rec** %y, align 8
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.118, %cond.end
  %41 = load %union.rec*, %union.rec** %y, align 8
  %os1110 = bitcast %union.rec* %41 to %struct.word_type*
  %ou1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 1
  %os11112 = bitcast %union.FIRST_UNION* %ou1111 to %struct.anon*
  %otype113 = getelementptr inbounds %struct.anon, %struct.anon* %os11112, i32 0, i32 0
  %42 = load i8, i8* %otype113, align 1
  %conv114 = zext i8 %42 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %for.body.117, label %for.end.123

for.body.117:                                     ; preds = %for.cond.109
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.117
  %43 = load %union.rec*, %union.rec** %y, align 8
  %os1119 = bitcast %union.rec* %43 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 1
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred122, align 8
  store %union.rec* %44, %union.rec** %y, align 8
  br label %for.cond.109

for.end.123:                                      ; preds = %for.cond.109
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %for.end.86
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os1125 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 1
  %os11127 = bitcast %union.FIRST_UNION* %ou1126 to %struct.anon*
  %otype128 = getelementptr inbounds %struct.anon, %struct.anon* %os11127, i32 0, i32 0
  %46 = load i8, i8* %otype128, align 1
  %conv129 = zext i8 %46 to i32
  %cmp130 = icmp sge i32 %conv129, 9
  br i1 %cmp130, label %land.lhs.true, label %if.end.140

land.lhs.true:                                    ; preds = %if.end.124
  %47 = load %union.rec*, %union.rec** %y, align 8
  %os1132 = bitcast %union.rec* %47 to %struct.word_type*
  %ou1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 1
  %os11134 = bitcast %union.FIRST_UNION* %ou1133 to %struct.anon*
  %otype135 = getelementptr inbounds %struct.anon, %struct.anon* %os11134, i32 0, i32 0
  %48 = load i8, i8* %otype135, align 1
  %conv136 = zext i8 %48 to i32
  %cmp137 = icmp sle i32 %conv136, 99
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %land.lhs.true
  br label %for.end.146

if.end.140:                                       ; preds = %land.lhs.true, %if.end.124
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %49 = load %union.rec*, %union.rec** %link, align 8
  %os1142 = bitcast %union.rec* %49 to %struct.word_type*
  %olist143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist143, i32 0, i64 0
  %osucc145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx144, i32 0, i32 1
  %50 = load %union.rec*, %union.rec** %osucc145, align 8
  store %union.rec* %50, %union.rec** %link, align 8
  br label %for.cond.64

for.end.146:                                      ; preds = %if.then.139, %for.cond.64
  %51 = load %union.rec*, %union.rec** %link, align 8
  %52 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp147 = icmp ne %union.rec* %51, %52
  br i1 %cmp147, label %if.then.149, label %if.end.155

if.then.149:                                      ; preds = %for.end.146
  %53 = load %union.rec*, %union.rec** %y, align 8
  %os1150 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1151 to %struct.FILE_POS*
  %54 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2152 = bitcast %union.rec* %54 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2152, i32 0, i32 5
  %55 = load %union.rec*, %union.rec** %oactual, align 8
  %call153 = call i8* @SymName(%union.rec* %55)
  %call154 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %call153)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.149, %for.end.146
  %56 = load %union.rec*, %union.rec** %hd_inners, align 8
  %cmp156 = icmp ne %union.rec* %56, null
  br i1 %cmp156, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %if.end.155
  %57 = load %union.rec*, %union.rec** %hd_inners, align 8
  %call159 = call i32 @DisposeObject(%union.rec* %57)
  store %union.rec* null, %union.rec** %hd_inners, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.158, %if.end.155
  %58 = load %union.rec*, %union.rec** %tg_inners, align 8
  %cmp161 = icmp ne %union.rec* %58, null
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.end.160
  %59 = load %union.rec*, %union.rec** %tg_inners, align 8
  %call164 = call i32 @DisposeObject(%union.rec* %59)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.160
  %60 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @KillGalley(%union.rec* %60, i32 0)
  %61 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* null, %union.rec** %61, align 8
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.51
  %62 = load %union.rec*, %union.rec** %target_index, align 8
  %os2166 = bitcast %union.rec* %62 to %struct.closure_type*
  %oactual167 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2166, i32 0, i32 5
  %63 = load %union.rec*, %union.rec** %oactual167, align 8
  %os2168 = bitcast %union.rec* %63 to %struct.closure_type*
  %oactual169 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2168, i32 0, i32 5
  %64 = load %union.rec*, %union.rec** %oactual169, align 8
  %65 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp170 = icmp eq %union.rec* %64, %65
  br i1 %cmp170, label %if.then.172, label %if.end.586

if.then.172:                                      ; preds = %if.else
  %66 = load %union.rec*, %union.rec** %hd_index, align 8
  store %union.rec* %66, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.285, %if.then.172
  %67 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1173 = bitcast %union.rec* %67 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc176, align 8
  %69 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp177 = icmp ne %union.rec* %68, %69
  br i1 %cmp177, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1179 = bitcast %union.rec* %70 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 1
  %osucc182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 1
  %71 = load %union.rec*, %union.rec** %osucc182, align 8
  store %union.rec* %71, %union.rec** @xx_link, align 8
  %72 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %72, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1183 = bitcast %union.rec* %73 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 1
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  %74 = load %union.rec*, %union.rec** %osucc186, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp187 = icmp eq %union.rec* %74, %75
  br i1 %cmp187, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %while.body
  br label %cond.end.219

cond.false.190:                                   ; preds = %while.body
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1191 = bitcast %union.rec* %76 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 1
  %osucc194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 1
  %77 = load %union.rec*, %union.rec** %osucc194, align 8
  store %union.rec* %77, %union.rec** @zz_res, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1195 = bitcast %union.rec* %78 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 1
  %opred198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred198, align 8
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1199 = bitcast %union.rec* %80 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 1
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  store %union.rec* %79, %union.rec** %opred202, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1203 = bitcast %union.rec* %82 to %struct.word_type*
  %olist204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist204, i32 0, i64 1
  %opred206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx205, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred206, align 8
  %os1207 = bitcast %union.rec* %83 to %struct.word_type*
  %olist208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist208, i32 0, i64 1
  %osucc210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx209, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc210, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1211 = bitcast %union.rec* %85 to %struct.word_type*
  %olist212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist212, i32 0, i64 1
  %osucc214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx213, i32 0, i32 1
  store %union.rec* %84, %union.rec** %osucc214, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1215 = bitcast %union.rec* %86 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 1
  %opred218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 0
  store %union.rec* %84, %union.rec** %opred218, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.190, %cond.true.189
  %cond220 = phi %union.rec* [ null, %cond.true.189 ], [ %87, %cond.false.190 ]
  %88 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1221 = bitcast %union.rec* %89 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 0
  %osucc224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 1
  %90 = load %union.rec*, %union.rec** %osucc224, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp225 = icmp eq %union.rec* %90, %91
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %cond.end.219
  br label %cond.end.257

cond.false.228:                                   ; preds = %cond.end.219
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1229 = bitcast %union.rec* %92 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 0
  %osucc232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 1
  %93 = load %union.rec*, %union.rec** %osucc232, align 8
  store %union.rec* %93, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1233 = bitcast %union.rec* %94 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 0
  %opred236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %opred236, align 8
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1237 = bitcast %union.rec* %96 to %struct.word_type*
  %olist238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1237, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist238, i32 0, i64 0
  %opred240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx239, i32 0, i32 0
  store %union.rec* %95, %union.rec** %opred240, align 8
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1241 = bitcast %union.rec* %98 to %struct.word_type*
  %olist242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist242, i32 0, i64 0
  %opred244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx243, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred244, align 8
  %os1245 = bitcast %union.rec* %99 to %struct.word_type*
  %olist246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist246, i32 0, i64 0
  %osucc248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx247, i32 0, i32 1
  store %union.rec* %97, %union.rec** %osucc248, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1249 = bitcast %union.rec* %101 to %struct.word_type*
  %olist250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist250, i32 0, i64 0
  %osucc252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx251, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc252, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1253 = bitcast %union.rec* %102 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 0
  %opred256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred256, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.228, %cond.true.227
  %cond258 = phi %union.rec* [ null, %cond.true.227 ], [ %103, %cond.false.228 ]
  %104 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1259 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 1
  %os11261 = bitcast %union.FIRST_UNION* %ou1260 to %struct.anon*
  %otype262 = getelementptr inbounds %struct.anon, %struct.anon* %os11261, i32 0, i32 0
  %107 = load i8, i8* %otype262, align 1
  %conv263 = zext i8 %107 to i32
  %cmp264 = icmp eq i32 %conv263, 11
  br i1 %cmp264, label %cond.true.273, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.257
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1266 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 1
  %os11268 = bitcast %union.FIRST_UNION* %ou1267 to %struct.anon*
  %otype269 = getelementptr inbounds %struct.anon, %struct.anon* %os11268, i32 0, i32 0
  %109 = load i8, i8* %otype269, align 1
  %conv270 = zext i8 %109 to i32
  %cmp271 = icmp eq i32 %conv270, 12
  br i1 %cmp271, label %cond.true.273, label %cond.false.278

cond.true.273:                                    ; preds = %lor.lhs.false, %cond.end.257
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1274 = bitcast %union.rec* %110 to %struct.word_type*
  %ou1275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 1
  %os11276 = bitcast %union.FIRST_UNION* %ou1275 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11276, i32 0, i32 1
  %111 = load i8, i8* %orec_size, align 1
  %conv277 = zext i8 %111 to i32
  br label %cond.end.285

cond.false.278:                                   ; preds = %lor.lhs.false
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1279 = bitcast %union.rec* %112 to %struct.word_type*
  %ou1280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 1
  %os11281 = bitcast %union.FIRST_UNION* %ou1280 to %struct.anon*
  %otype282 = getelementptr inbounds %struct.anon, %struct.anon* %os11281, i32 0, i32 0
  %113 = load i8, i8* %otype282, align 1
  %idxprom = zext i8 %113 to i64
  %arrayidx283 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %114 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %114 to i32
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.278, %cond.true.273
  %cond286 = phi i32 [ %conv277, %cond.true.273 ], [ %conv284, %cond.false.278 ]
  store i32 %cond286, i32* @zz_size, align 4
  %115 = load i32, i32* @zz_size, align 4
  %idxprom287 = sext i32 %115 to i64
  %arrayidx288 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom287
  %116 = load %union.rec*, %union.rec** %arrayidx288, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %117 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 0
  %opred292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 0
  store %union.rec* %116, %union.rec** %opred292, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = load i32, i32* @zz_size, align 4
  %idxprom293 = sext i32 %119 to i64
  %arrayidx294 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom293
  store %union.rec* %118, %union.rec** %arrayidx294, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.295

while.cond.295:                                   ; preds = %cond.end.412, %while.end
  %120 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1296 = bitcast %union.rec* %120 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 0
  %osucc299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 1
  %121 = load %union.rec*, %union.rec** %osucc299, align 8
  %122 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp300 = icmp ne %union.rec* %121, %122
  br i1 %cmp300, label %while.body.302, label %while.end.422

while.body.302:                                   ; preds = %while.cond.295
  %123 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1303 = bitcast %union.rec* %123 to %struct.word_type*
  %olist304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist304, i32 0, i64 0
  %osucc306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx305, i32 0, i32 1
  %124 = load %union.rec*, %union.rec** %osucc306, align 8
  store %union.rec* %124, %union.rec** @xx_link, align 8
  %125 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %125, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1307 = bitcast %union.rec* %126 to %struct.word_type*
  %olist308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1307, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist308, i32 0, i64 1
  %osucc310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx309, i32 0, i32 1
  %127 = load %union.rec*, %union.rec** %osucc310, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp311 = icmp eq %union.rec* %127, %128
  br i1 %cmp311, label %cond.true.313, label %cond.false.314

cond.true.313:                                    ; preds = %while.body.302
  br label %cond.end.343

cond.false.314:                                   ; preds = %while.body.302
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1315 = bitcast %union.rec* %129 to %struct.word_type*
  %olist316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1315, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist316, i32 0, i64 1
  %osucc318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx317, i32 0, i32 1
  %130 = load %union.rec*, %union.rec** %osucc318, align 8
  store %union.rec* %130, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1319 = bitcast %union.rec* %131 to %struct.word_type*
  %olist320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 0
  %arrayidx321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist320, i32 0, i64 1
  %opred322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx321, i32 0, i32 0
  %132 = load %union.rec*, %union.rec** %opred322, align 8
  %133 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1323 = bitcast %union.rec* %133 to %struct.word_type*
  %olist324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist324, i32 0, i64 1
  %opred326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx325, i32 0, i32 0
  store %union.rec* %132, %union.rec** %opred326, align 8
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1327 = bitcast %union.rec* %135 to %struct.word_type*
  %olist328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1327, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist328, i32 0, i64 1
  %opred330 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx329, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred330, align 8
  %os1331 = bitcast %union.rec* %136 to %struct.word_type*
  %olist332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist332, i32 0, i64 1
  %osucc334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx333, i32 0, i32 1
  store %union.rec* %134, %union.rec** %osucc334, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1335 = bitcast %union.rec* %138 to %struct.word_type*
  %olist336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist336, i32 0, i64 1
  %osucc338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx337, i32 0, i32 1
  store %union.rec* %137, %union.rec** %osucc338, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1339 = bitcast %union.rec* %139 to %struct.word_type*
  %olist340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist340, i32 0, i64 1
  %opred342 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx341, i32 0, i32 0
  store %union.rec* %137, %union.rec** %opred342, align 8
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.314, %cond.true.313
  %cond344 = phi %union.rec* [ null, %cond.true.313 ], [ %140, %cond.false.314 ]
  %141 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %141, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1345 = bitcast %union.rec* %142 to %struct.word_type*
  %olist346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist346, i32 0, i64 0
  %osucc348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx347, i32 0, i32 1
  %143 = load %union.rec*, %union.rec** %osucc348, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp349 = icmp eq %union.rec* %143, %144
  br i1 %cmp349, label %cond.true.351, label %cond.false.352

cond.true.351:                                    ; preds = %cond.end.343
  br label %cond.end.381

cond.false.352:                                   ; preds = %cond.end.343
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1353 = bitcast %union.rec* %145 to %struct.word_type*
  %olist354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1353, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist354, i32 0, i64 0
  %osucc356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx355, i32 0, i32 1
  %146 = load %union.rec*, %union.rec** %osucc356, align 8
  store %union.rec* %146, %union.rec** @zz_res, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1357 = bitcast %union.rec* %147 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 0
  %opred360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %opred360, align 8
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1361 = bitcast %union.rec* %149 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 0
  %opred364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 0
  store %union.rec* %148, %union.rec** %opred364, align 8
  %150 = load %union.rec*, %union.rec** @zz_res, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1365 = bitcast %union.rec* %151 to %struct.word_type*
  %olist366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1365, i32 0, i32 0
  %arrayidx367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist366, i32 0, i64 0
  %opred368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx367, i32 0, i32 0
  %152 = load %union.rec*, %union.rec** %opred368, align 8
  %os1369 = bitcast %union.rec* %152 to %struct.word_type*
  %olist370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist370, i32 0, i64 0
  %osucc372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx371, i32 0, i32 1
  store %union.rec* %150, %union.rec** %osucc372, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1373 = bitcast %union.rec* %154 to %struct.word_type*
  %olist374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1373, i32 0, i32 0
  %arrayidx375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist374, i32 0, i64 0
  %osucc376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx375, i32 0, i32 1
  store %union.rec* %153, %union.rec** %osucc376, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1377 = bitcast %union.rec* %155 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 0
  %opred380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 0
  store %union.rec* %153, %union.rec** %opred380, align 8
  %156 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.352, %cond.true.351
  %cond382 = phi %union.rec* [ null, %cond.true.351 ], [ %156, %cond.false.352 ]
  %157 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %157, %union.rec** @zz_hold, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %158, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1383 = bitcast %union.rec* %159 to %struct.word_type*
  %ou1384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1383, i32 0, i32 1
  %os11385 = bitcast %union.FIRST_UNION* %ou1384 to %struct.anon*
  %otype386 = getelementptr inbounds %struct.anon, %struct.anon* %os11385, i32 0, i32 0
  %160 = load i8, i8* %otype386, align 1
  %conv387 = zext i8 %160 to i32
  %cmp388 = icmp eq i32 %conv387, 11
  br i1 %cmp388, label %cond.true.398, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %cond.end.381
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1391 = bitcast %union.rec* %161 to %struct.word_type*
  %ou1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 1
  %os11393 = bitcast %union.FIRST_UNION* %ou1392 to %struct.anon*
  %otype394 = getelementptr inbounds %struct.anon, %struct.anon* %os11393, i32 0, i32 0
  %162 = load i8, i8* %otype394, align 1
  %conv395 = zext i8 %162 to i32
  %cmp396 = icmp eq i32 %conv395, 12
  br i1 %cmp396, label %cond.true.398, label %cond.false.404

cond.true.398:                                    ; preds = %lor.lhs.false.390, %cond.end.381
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1399 = bitcast %union.rec* %163 to %struct.word_type*
  %ou1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 1
  %os11401 = bitcast %union.FIRST_UNION* %ou1400 to %struct.anon*
  %orec_size402 = getelementptr inbounds %struct.anon, %struct.anon* %os11401, i32 0, i32 1
  %164 = load i8, i8* %orec_size402, align 1
  %conv403 = zext i8 %164 to i32
  br label %cond.end.412

cond.false.404:                                   ; preds = %lor.lhs.false.390
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1405 = bitcast %union.rec* %165 to %struct.word_type*
  %ou1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1405, i32 0, i32 1
  %os11407 = bitcast %union.FIRST_UNION* %ou1406 to %struct.anon*
  %otype408 = getelementptr inbounds %struct.anon, %struct.anon* %os11407, i32 0, i32 0
  %166 = load i8, i8* %otype408, align 1
  %idxprom409 = zext i8 %166 to i64
  %arrayidx410 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom409
  %167 = load i8, i8* %arrayidx410, align 1
  %conv411 = zext i8 %167 to i32
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.404, %cond.true.398
  %cond413 = phi i32 [ %conv403, %cond.true.398 ], [ %conv411, %cond.false.404 ]
  store i32 %cond413, i32* @zz_size, align 4
  %168 = load i32, i32* @zz_size, align 4
  %idxprom414 = sext i32 %168 to i64
  %arrayidx415 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom414
  %169 = load %union.rec*, %union.rec** %arrayidx415, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1416 = bitcast %union.rec* %170 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 0
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  store %union.rec* %169, %union.rec** %opred419, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %172 = load i32, i32* @zz_size, align 4
  %idxprom420 = sext i32 %172 to i64
  %arrayidx421 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom420
  store %union.rec* %171, %union.rec** %arrayidx421, align 8
  br label %while.cond.295

while.end.422:                                    ; preds = %while.cond.295
  %173 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %173, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %174, %union.rec** @zz_hold, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1423 = bitcast %union.rec* %175 to %struct.word_type*
  %ou1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 1
  %os11425 = bitcast %union.FIRST_UNION* %ou1424 to %struct.anon*
  %otype426 = getelementptr inbounds %struct.anon, %struct.anon* %os11425, i32 0, i32 0
  %176 = load i8, i8* %otype426, align 1
  %conv427 = zext i8 %176 to i32
  %cmp428 = icmp eq i32 %conv427, 11
  br i1 %cmp428, label %cond.true.438, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %while.end.422
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1431 = bitcast %union.rec* %177 to %struct.word_type*
  %ou1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 1
  %os11433 = bitcast %union.FIRST_UNION* %ou1432 to %struct.anon*
  %otype434 = getelementptr inbounds %struct.anon, %struct.anon* %os11433, i32 0, i32 0
  %178 = load i8, i8* %otype434, align 1
  %conv435 = zext i8 %178 to i32
  %cmp436 = icmp eq i32 %conv435, 12
  br i1 %cmp436, label %cond.true.438, label %cond.false.444

cond.true.438:                                    ; preds = %lor.lhs.false.430, %while.end.422
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1439 = bitcast %union.rec* %179 to %struct.word_type*
  %ou1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 1
  %os11441 = bitcast %union.FIRST_UNION* %ou1440 to %struct.anon*
  %orec_size442 = getelementptr inbounds %struct.anon, %struct.anon* %os11441, i32 0, i32 1
  %180 = load i8, i8* %orec_size442, align 1
  %conv443 = zext i8 %180 to i32
  br label %cond.end.452

cond.false.444:                                   ; preds = %lor.lhs.false.430
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1445 = bitcast %union.rec* %181 to %struct.word_type*
  %ou1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 1
  %os11447 = bitcast %union.FIRST_UNION* %ou1446 to %struct.anon*
  %otype448 = getelementptr inbounds %struct.anon, %struct.anon* %os11447, i32 0, i32 0
  %182 = load i8, i8* %otype448, align 1
  %idxprom449 = zext i8 %182 to i64
  %arrayidx450 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom449
  %183 = load i8, i8* %arrayidx450, align 1
  %conv451 = zext i8 %183 to i32
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.444, %cond.true.438
  %cond453 = phi i32 [ %conv443, %cond.true.438 ], [ %conv451, %cond.false.444 ]
  store i32 %cond453, i32* @zz_size, align 4
  %184 = load i32, i32* @zz_size, align 4
  %idxprom454 = sext i32 %184 to i64
  %arrayidx455 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom454
  %185 = load %union.rec*, %union.rec** %arrayidx455, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1456 = bitcast %union.rec* %186 to %struct.word_type*
  %olist457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist457, i32 0, i64 0
  %opred459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx458, i32 0, i32 0
  store %union.rec* %185, %union.rec** %opred459, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %188 = load i32, i32* @zz_size, align 4
  %idxprom460 = sext i32 %188 to i64
  %arrayidx461 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom460
  store %union.rec* %187, %union.rec** %arrayidx461, align 8
  %189 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv462 = zext i8 %189 to i32
  store i32 %conv462, i32* @zz_size, align 4
  %conv463 = sext i32 %conv462 to i64
  %cmp464 = icmp uge i64 %conv463, 265
  br i1 %cmp464, label %if.then.466, label %if.else.468

if.then.466:                                      ; preds = %cond.end.452
  %190 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call467 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %190)
  br label %if.end.485

if.else.468:                                      ; preds = %cond.end.452
  %191 = load i32, i32* @zz_size, align 4
  %idxprom469 = sext i32 %191 to i64
  %arrayidx470 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom469
  %192 = load %union.rec*, %union.rec** %arrayidx470, align 8
  %cmp471 = icmp eq %union.rec* %192, null
  br i1 %cmp471, label %if.then.473, label %if.else.475

if.then.473:                                      ; preds = %if.else.468
  %193 = load i32, i32* @zz_size, align 4
  %194 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call474 = call %union.rec* @GetMemory(i32 %193, %struct.FILE_POS* %194)
  store %union.rec* %call474, %union.rec** @zz_hold, align 8
  br label %if.end.484

if.else.475:                                      ; preds = %if.else.468
  %195 = load i32, i32* @zz_size, align 4
  %idxprom476 = sext i32 %195 to i64
  %arrayidx477 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom476
  %196 = load %union.rec*, %union.rec** %arrayidx477, align 8
  store %union.rec* %196, %union.rec** @zz_hold, align 8
  store %union.rec* %196, %union.rec** @zz_hold, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1478 = bitcast %union.rec* %197 to %struct.word_type*
  %olist479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1478, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist479, i32 0, i64 0
  %opred481 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx480, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %opred481, align 8
  %199 = load i32, i32* @zz_size, align 4
  %idxprom482 = sext i32 %199 to i64
  %arrayidx483 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom482
  store %union.rec* %198, %union.rec** %arrayidx483, align 8
  br label %if.end.484

if.end.484:                                       ; preds = %if.else.475, %if.then.473
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.then.466
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1486 = bitcast %union.rec* %200 to %struct.word_type*
  %ou1487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1486, i32 0, i32 1
  %os11488 = bitcast %union.FIRST_UNION* %ou1487 to %struct.anon*
  %otype489 = getelementptr inbounds %struct.anon, %struct.anon* %os11488, i32 0, i32 0
  store i8 0, i8* %otype489, align 1
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1490 = bitcast %union.rec* %202 to %struct.word_type*
  %olist491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1490, i32 0, i32 0
  %arrayidx492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist491, i32 0, i64 1
  %osucc493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx492, i32 0, i32 1
  store %union.rec* %201, %union.rec** %osucc493, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1494 = bitcast %union.rec* %203 to %struct.word_type*
  %olist495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1494, i32 0, i32 0
  %arrayidx496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist495, i32 0, i64 1
  %opred497 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx496, i32 0, i32 0
  store %union.rec* %201, %union.rec** %opred497, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1498 = bitcast %union.rec* %204 to %struct.word_type*
  %olist499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1498, i32 0, i32 0
  %arrayidx500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist499, i32 0, i64 0
  %osucc501 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx500, i32 0, i32 1
  store %union.rec* %201, %union.rec** %osucc501, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1502 = bitcast %union.rec* %205 to %struct.word_type*
  %olist503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1502, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist503, i32 0, i64 0
  %opred505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx504, i32 0, i32 0
  store %union.rec* %201, %union.rec** %opred505, align 8
  store %union.rec* %201, %union.rec** @xx_link, align 8
  %206 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %206, %union.rec** @zz_res, align 8
  %207 = load %union.rec*, %union.rec** %target_index, align 8
  store %union.rec* %207, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp506 = icmp eq %union.rec* %208, null
  br i1 %cmp506, label %cond.true.508, label %cond.false.509

cond.true.508:                                    ; preds = %if.end.485
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.544

cond.false.509:                                   ; preds = %if.end.485
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp510 = icmp eq %union.rec* %210, null
  br i1 %cmp510, label %cond.true.512, label %cond.false.513

cond.true.512:                                    ; preds = %cond.false.509
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.542

cond.false.513:                                   ; preds = %cond.false.509
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1514 = bitcast %union.rec* %212 to %struct.word_type*
  %olist515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1514, i32 0, i32 0
  %arrayidx516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist515, i32 0, i64 0
  %opred517 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx516, i32 0, i32 0
  %213 = load %union.rec*, %union.rec** %opred517, align 8
  store %union.rec* %213, %union.rec** @zz_tmp, align 8
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1518 = bitcast %union.rec* %214 to %struct.word_type*
  %olist519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 0
  %arrayidx520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist519, i32 0, i64 0
  %opred521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx520, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred521, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1522 = bitcast %union.rec* %216 to %struct.word_type*
  %olist523 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1522, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist523, i32 0, i64 0
  %opred525 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx524, i32 0, i32 0
  store %union.rec* %215, %union.rec** %opred525, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1526 = bitcast %union.rec* %218 to %struct.word_type*
  %olist527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1526, i32 0, i32 0
  %arrayidx528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist527, i32 0, i64 0
  %opred529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx528, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %opred529, align 8
  %os1530 = bitcast %union.rec* %219 to %struct.word_type*
  %olist531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1530, i32 0, i32 0
  %arrayidx532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist531, i32 0, i64 0
  %osucc533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx532, i32 0, i32 1
  store %union.rec* %217, %union.rec** %osucc533, align 8
  %220 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1534 = bitcast %union.rec* %221 to %struct.word_type*
  %olist535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1534, i32 0, i32 0
  %arrayidx536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist535, i32 0, i64 0
  %opred537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx536, i32 0, i32 0
  store %union.rec* %220, %union.rec** %opred537, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %223 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1538 = bitcast %union.rec* %223 to %struct.word_type*
  %olist539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1538, i32 0, i32 0
  %arrayidx540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist539, i32 0, i64 0
  %osucc541 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx540, i32 0, i32 1
  store %union.rec* %222, %union.rec** %osucc541, align 8
  br label %cond.end.542

cond.end.542:                                     ; preds = %cond.false.513, %cond.true.512
  %cond543 = phi %union.rec* [ %211, %cond.true.512 ], [ %222, %cond.false.513 ]
  br label %cond.end.544

cond.end.544:                                     ; preds = %cond.end.542, %cond.true.508
  %cond545 = phi %union.rec* [ %209, %cond.true.508 ], [ %cond543, %cond.end.542 ]
  %224 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %224, %union.rec** @zz_res, align 8
  %225 = load %union.rec*, %union.rec** %hd.addr, align 8
  store %union.rec* %225, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp546 = icmp eq %union.rec* %226, null
  br i1 %cmp546, label %cond.true.548, label %cond.false.549

cond.true.548:                                    ; preds = %cond.end.544
  %227 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.584

cond.false.549:                                   ; preds = %cond.end.544
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp550 = icmp eq %union.rec* %228, null
  br i1 %cmp550, label %cond.true.552, label %cond.false.553

cond.true.552:                                    ; preds = %cond.false.549
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.582

cond.false.553:                                   ; preds = %cond.false.549
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1554 = bitcast %union.rec* %230 to %struct.word_type*
  %olist555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1554, i32 0, i32 0
  %arrayidx556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist555, i32 0, i64 1
  %opred557 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx556, i32 0, i32 0
  %231 = load %union.rec*, %union.rec** %opred557, align 8
  store %union.rec* %231, %union.rec** @zz_tmp, align 8
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1558 = bitcast %union.rec* %232 to %struct.word_type*
  %olist559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1558, i32 0, i32 0
  %arrayidx560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist559, i32 0, i64 1
  %opred561 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx560, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %opred561, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1562 = bitcast %union.rec* %234 to %struct.word_type*
  %olist563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1562, i32 0, i32 0
  %arrayidx564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist563, i32 0, i64 1
  %opred565 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx564, i32 0, i32 0
  store %union.rec* %233, %union.rec** %opred565, align 8
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1566 = bitcast %union.rec* %236 to %struct.word_type*
  %olist567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1566, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist567, i32 0, i64 1
  %opred569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx568, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %opred569, align 8
  %os1570 = bitcast %union.rec* %237 to %struct.word_type*
  %olist571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1570, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist571, i32 0, i64 1
  %osucc573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx572, i32 0, i32 1
  store %union.rec* %235, %union.rec** %osucc573, align 8
  %238 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %239 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1574 = bitcast %union.rec* %239 to %struct.word_type*
  %olist575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1574, i32 0, i32 0
  %arrayidx576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist575, i32 0, i64 1
  %opred577 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx576, i32 0, i32 0
  store %union.rec* %238, %union.rec** %opred577, align 8
  %240 = load %union.rec*, %union.rec** @zz_res, align 8
  %241 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1578 = bitcast %union.rec* %241 to %struct.word_type*
  %olist579 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1578, i32 0, i32 0
  %arrayidx580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist579, i32 0, i64 1
  %osucc581 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx580, i32 0, i32 1
  store %union.rec* %240, %union.rec** %osucc581, align 8
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.553, %cond.true.552
  %cond583 = phi %union.rec* [ %229, %cond.true.552 ], [ %240, %cond.false.553 ]
  br label %cond.end.584

cond.end.584:                                     ; preds = %cond.end.582, %cond.true.548
  %cond585 = phi %union.rec* [ %227, %cond.true.548 ], [ %cond583, %cond.end.582 ]
  %242 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* null, %union.rec** %242, align 8
  store i32 1, i32* %retval
  br label %return

if.end.586:                                       ; preds = %if.else
  br label %if.end.587

if.end.587:                                       ; preds = %if.end.586
  br label %if.end.623

if.else.588:                                      ; preds = %for.cond.42
  %243 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1589 = bitcast %union.rec* %243 to %struct.word_type*
  %ou2590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 2
  %os23591 = bitcast %union.SECOND_UNION* %ou2590 to %struct.anon.2*
  %ofoll_or_prec = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23591, i32 0, i32 0
  %244 = load i8, i8* %ofoll_or_prec, align 1
  %conv592 = zext i8 %244 to i32
  %cmp593 = icmp eq i32 %conv592, 133
  br i1 %cmp593, label %if.then.595, label %if.else.601

if.then.595:                                      ; preds = %if.else.588
  %245 = load %union.rec*, %union.rec** %hd_index, align 8
  %os1596 = bitcast %union.rec* %245 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 1
  %osucc599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 1
  %246 = load %union.rec*, %union.rec** %osucc599, align 8
  %247 = load %union.rec*, %union.rec** %sym, align 8
  %call600 = call %union.rec* @SearchGalley(%union.rec* %246, %union.rec* %247, i32 0, i32 1, i32 1, i32 0)
  store %union.rec* %call600, %union.rec** %target_index, align 8
  store i32 0, i32* %need_precedes, align 4
  br label %if.end.618

if.else.601:                                      ; preds = %if.else.588
  %248 = load %union.rec*, %union.rec** %hd_index, align 8
  %os1602 = bitcast %union.rec* %248 to %struct.word_type*
  %olist603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 0
  %arrayidx604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist603, i32 0, i64 1
  %osucc605 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx604, i32 0, i32 1
  %249 = load %union.rec*, %union.rec** %osucc605, align 8
  %250 = load %union.rec*, %union.rec** %sym, align 8
  %call606 = call %union.rec* @SearchGalley(%union.rec* %249, %union.rec* %250, i32 0, i32 1, i32 0, i32 0)
  store %union.rec* %call606, %union.rec** %target_index, align 8
  %251 = load %union.rec*, %union.rec** %target_index, align 8
  %cmp607 = icmp ne %union.rec* %251, null
  %conv608 = zext i1 %cmp607 to i32
  store i32 %conv608, i32* %need_precedes, align 4
  %252 = load %union.rec*, %union.rec** %target_index, align 8
  %cmp609 = icmp eq %union.rec* %252, null
  br i1 %cmp609, label %if.then.611, label %if.end.617

if.then.611:                                      ; preds = %if.else.601
  %253 = load %union.rec*, %union.rec** %hd_index, align 8
  %os1612 = bitcast %union.rec* %253 to %struct.word_type*
  %olist613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1612, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist613, i32 0, i64 1
  %osucc615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx614, i32 0, i32 1
  %254 = load %union.rec*, %union.rec** %osucc615, align 8
  %255 = load %union.rec*, %union.rec** %sym, align 8
  %call616 = call %union.rec* @SearchGalley(%union.rec* %254, %union.rec* %255, i32 1, i32 1, i32 1, i32 0)
  store %union.rec* %call616, %union.rec** %target_index, align 8
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.611, %if.else.601
  br label %if.end.618

if.end.618:                                       ; preds = %if.end.617, %if.then.595
  %256 = load %union.rec*, %union.rec** %target_index, align 8
  %cmp619 = icmp eq %union.rec* %256, null
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %if.end.618
  %257 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* null, %union.rec** %257, align 8
  store i32 2, i32* %retval
  br label %return

if.end.622:                                       ; preds = %if.end.618
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.622, %if.end.587
  %258 = load %union.rec*, %union.rec** %target_index, align 8
  %os1624 = bitcast %union.rec* %258 to %struct.word_type*
  %ou1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 1
  %os11626 = bitcast %union.FIRST_UNION* %ou1625 to %struct.anon*
  %otype627 = getelementptr inbounds %struct.anon, %struct.anon* %os11626, i32 0, i32 0
  %259 = load i8, i8* %otype627, align 1
  %conv628 = zext i8 %259 to i32
  %cmp629 = icmp eq i32 %conv628, 121
  br i1 %cmp629, label %if.end.633, label %if.then.631

if.then.631:                                      ; preds = %if.end.623
  %260 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call632 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %260, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.631, %if.end.623
  %261 = load %union.rec*, %union.rec** %target_index, align 8
  %os2634 = bitcast %union.rec* %261 to %struct.closure_type*
  %oactual635 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2634, i32 0, i32 5
  %262 = load %union.rec*, %union.rec** %oactual635, align 8
  store %union.rec* %262, %union.rec** %target, align 8
  %263 = load %union.rec*, %union.rec** %target, align 8
  %os1636 = bitcast %union.rec* %263 to %struct.word_type*
  %ou1637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 1
  %os11638 = bitcast %union.FIRST_UNION* %ou1637 to %struct.anon*
  %otype639 = getelementptr inbounds %struct.anon, %struct.anon* %os11638, i32 0, i32 0
  %264 = load i8, i8* %otype639, align 1
  %conv640 = zext i8 %264 to i32
  %cmp641 = icmp eq i32 %conv640, 2
  br i1 %cmp641, label %if.end.645, label %if.then.643

if.then.643:                                      ; preds = %if.end.633
  %265 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call644 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %265, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.643, %if.end.633
  call void @EnterErrorBlock(i32 0)
  %266 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv646 = zext i8 %266 to i32
  store i32 %conv646, i32* @zz_size, align 4
  %conv647 = sext i32 %conv646 to i64
  %cmp648 = icmp uge i64 %conv647, 265
  br i1 %cmp648, label %if.then.650, label %if.else.652

if.then.650:                                      ; preds = %if.end.645
  %267 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call651 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %267)
  br label %if.end.669

if.else.652:                                      ; preds = %if.end.645
  %268 = load i32, i32* @zz_size, align 4
  %idxprom653 = sext i32 %268 to i64
  %arrayidx654 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom653
  %269 = load %union.rec*, %union.rec** %arrayidx654, align 8
  %cmp655 = icmp eq %union.rec* %269, null
  br i1 %cmp655, label %if.then.657, label %if.else.659

if.then.657:                                      ; preds = %if.else.652
  %270 = load i32, i32* @zz_size, align 4
  %271 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call658 = call %union.rec* @GetMemory(i32 %270, %struct.FILE_POS* %271)
  store %union.rec* %call658, %union.rec** @zz_hold, align 8
  br label %if.end.668

if.else.659:                                      ; preds = %if.else.652
  %272 = load i32, i32* @zz_size, align 4
  %idxprom660 = sext i32 %272 to i64
  %arrayidx661 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom660
  %273 = load %union.rec*, %union.rec** %arrayidx661, align 8
  store %union.rec* %273, %union.rec** @zz_hold, align 8
  store %union.rec* %273, %union.rec** @zz_hold, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1662 = bitcast %union.rec* %274 to %struct.word_type*
  %olist663 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1662, i32 0, i32 0
  %arrayidx664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist663, i32 0, i64 0
  %opred665 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx664, i32 0, i32 0
  %275 = load %union.rec*, %union.rec** %opred665, align 8
  %276 = load i32, i32* @zz_size, align 4
  %idxprom666 = sext i32 %276 to i64
  %arrayidx667 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom666
  store %union.rec* %275, %union.rec** %arrayidx667, align 8
  br label %if.end.668

if.end.668:                                       ; preds = %if.else.659, %if.then.657
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %if.then.650
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1670 = bitcast %union.rec* %277 to %struct.word_type*
  %ou1671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1670, i32 0, i32 1
  %os11672 = bitcast %union.FIRST_UNION* %ou1671 to %struct.anon*
  %otype673 = getelementptr inbounds %struct.anon, %struct.anon* %os11672, i32 0, i32 0
  store i8 8, i8* %otype673, align 1
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1674 = bitcast %union.rec* %279 to %struct.word_type*
  %olist675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1674, i32 0, i32 0
  %arrayidx676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist675, i32 0, i64 1
  %osucc677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx676, i32 0, i32 1
  store %union.rec* %278, %union.rec** %osucc677, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1678 = bitcast %union.rec* %280 to %struct.word_type*
  %olist679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1678, i32 0, i32 0
  %arrayidx680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist679, i32 0, i64 1
  %opred681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx680, i32 0, i32 0
  store %union.rec* %278, %union.rec** %opred681, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1682 = bitcast %union.rec* %281 to %struct.word_type*
  %olist683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1682, i32 0, i32 0
  %arrayidx684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist683, i32 0, i64 0
  %osucc685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx684, i32 0, i32 1
  store %union.rec* %278, %union.rec** %osucc685, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1686 = bitcast %union.rec* %282 to %struct.word_type*
  %olist687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1686, i32 0, i32 0
  %arrayidx688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist687, i32 0, i64 0
  %opred689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx688, i32 0, i32 0
  store %union.rec* %278, %union.rec** %opred689, align 8
  store %union.rec* %278, %union.rec** %target_galley, align 8
  %283 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1690 = bitcast %union.rec* %283 to %struct.word_type*
  %ou2691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1690, i32 0, i32 2
  %os23692 = bitcast %union.SECOND_UNION* %ou2691 to %struct.anon.2*
  %oforce_gall = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23692, i32 0, i32 2
  %bf.load693 = load i16, i16* %oforce_gall, align 2
  %bf.clear694 = and i16 %bf.load693, -4097
  store i16 %bf.clear694, i16* %oforce_gall, align 2
  %284 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a = bitcast %union.rec* %284 to %struct.head_type*
  %olimiter = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter, align 8
  %285 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a695 = bitcast %union.rec* %285 to %struct.head_type*
  %oenclose_obj = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a695, i32 0, i32 12
  store %union.rec* null, %union.rec** %oenclose_obj, align 8
  %286 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a696 = bitcast %union.rec* %286 to %struct.head_type*
  %odead_headers = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a696, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers, align 8
  %287 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a697 = bitcast %union.rec* %287 to %struct.head_type*
  %oheaders = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a697, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders, align 8
  %288 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a698 = bitcast %union.rec* %288 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a698, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints, align 8
  %289 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a699 = bitcast %union.rec* %289 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a699, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components, align 8
  %290 = load %union.rec*, %union.rec** %target, align 8
  %os1700 = bitcast %union.rec* %290 to %struct.word_type*
  %ou2701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 2
  %os23702 = bitcast %union.SECOND_UNION* %ou2701 to %struct.anon.2*
  %oexternal_hor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23702, i32 0, i32 2
  %bf.load703 = load i16, i16* %oexternal_hor, align 2
  %bf.lshr704 = lshr i16 %bf.load703, 3
  %bf.clear705 = and i16 %bf.lshr704, 1
  %bf.cast706 = zext i16 %bf.clear705 to i32
  %tobool707 = icmp ne i32 %bf.cast706, 0
  %cond708 = select i1 %tobool707, i32 0, i32 1
  %291 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1709 = bitcast %union.rec* %291 to %struct.word_type*
  %ou2710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 2
  %os23711 = bitcast %union.SECOND_UNION* %ou2710 to %struct.anon.2*
  %ogall_dir712 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23711, i32 0, i32 2
  %292 = trunc i32 %cond708 to i16
  %bf.load713 = load i16, i16* %ogall_dir712, align 2
  %bf.value = and i16 %292, 1
  %bf.shl = shl i16 %bf.value, 8
  %bf.clear714 = and i16 %bf.load713, -257
  %bf.set = or i16 %bf.clear714, %bf.shl
  store i16 %bf.set, i16* %ogall_dir712, align 2
  %bf.result.cast = zext i16 %bf.value to i32
  %293 = load %union.rec*, %union.rec** %target, align 8
  %os1715 = bitcast %union.rec* %293 to %struct.word_type*
  %ou1716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 1
  %ofpos717 = bitcast %union.FIRST_UNION* %ou1716 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos717, i32 0, i32 2
  %294 = load i16, i16* %ofile_num, align 2
  %295 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1718 = bitcast %union.rec* %295 to %struct.word_type*
  %ou1719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1718, i32 0, i32 1
  %ofpos720 = bitcast %union.FIRST_UNION* %ou1719 to %struct.FILE_POS*
  %ofile_num721 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos720, i32 0, i32 2
  store i16 %294, i16* %ofile_num721, align 2
  %296 = load %union.rec*, %union.rec** %target, align 8
  %os1722 = bitcast %union.rec* %296 to %struct.word_type*
  %ou1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1722, i32 0, i32 1
  %ofpos724 = bitcast %union.FIRST_UNION* %ou1723 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos724, i32 0, i32 3
  %bf.load725 = load i32, i32* %oline_num, align 4
  %bf.clear726 = and i32 %bf.load725, 1048575
  %297 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1727 = bitcast %union.rec* %297 to %struct.word_type*
  %ou1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1727, i32 0, i32 1
  %ofpos729 = bitcast %union.FIRST_UNION* %ou1728 to %struct.FILE_POS*
  %oline_num730 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos729, i32 0, i32 3
  %bf.load731 = load i32, i32* %oline_num730, align 4
  %bf.value732 = and i32 %bf.clear726, 1048575
  %bf.clear733 = and i32 %bf.load731, -1048576
  %bf.set734 = or i32 %bf.clear733, %bf.value732
  store i32 %bf.set734, i32* %oline_num730, align 4
  %298 = load %union.rec*, %union.rec** %target, align 8
  %os1735 = bitcast %union.rec* %298 to %struct.word_type*
  %ou1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1735, i32 0, i32 1
  %ofpos737 = bitcast %union.FIRST_UNION* %ou1736 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos737, i32 0, i32 3
  %bf.load738 = load i32, i32* %ocol_num, align 4
  %bf.lshr739 = lshr i32 %bf.load738, 20
  %299 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1740 = bitcast %union.rec* %299 to %struct.word_type*
  %ou1741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1740, i32 0, i32 1
  %ofpos742 = bitcast %union.FIRST_UNION* %ou1741 to %struct.FILE_POS*
  %ocol_num743 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos742, i32 0, i32 3
  %bf.load744 = load i32, i32* %ocol_num743, align 4
  %bf.value745 = and i32 %bf.lshr739, 4095
  %bf.shl746 = shl i32 %bf.value745, 20
  %bf.clear747 = and i32 %bf.load744, 1048575
  %bf.set748 = or i32 %bf.clear747, %bf.shl746
  store i32 %bf.set748, i32* %ocol_num743, align 4
  %300 = load %union.rec*, %union.rec** %target, align 8
  %os2749 = bitcast %union.rec* %300 to %struct.closure_type*
  %oactual750 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2749, i32 0, i32 5
  %301 = load %union.rec*, %union.rec** %oactual750, align 8
  %302 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2751 = bitcast %union.rec* %302 to %struct.closure_type*
  %oactual752 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2751, i32 0, i32 5
  store %union.rec* %301, %union.rec** %oactual752, align 8
  %303 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2a753 = bitcast %union.rec* %303 to %struct.head_type*
  %oready_galls = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a753, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls, align 8
  %304 = load %union.rec*, %union.rec** %target_galley, align 8
  %os2754 = bitcast %union.rec* %304 to %struct.closure_type*
  %oux755 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2754, i32 0, i32 6
  %owhereto756 = bitcast %union.anon.12* %oux755 to %union.rec**
  store %union.rec* null, %union.rec** %owhereto756, align 8
  %305 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1757 = bitcast %union.rec* %305 to %struct.word_type*
  %ou2758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 2
  %os23759 = bitcast %union.SECOND_UNION* %ou2758 to %struct.anon.2*
  %ofoll_or_prec760 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23759, i32 0, i32 0
  store i8 -127, i8* %ofoll_or_prec760, align 1
  %306 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1761 = bitcast %union.rec* %306 to %struct.word_type*
  %ou2762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 2
  %os23763 = bitcast %union.SECOND_UNION* %ou2762 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23763, i32 0, i32 2
  %bf.load764 = load i16, i16* %omust_expand, align 2
  %bf.clear765 = and i16 %bf.load764, -129
  store i16 %bf.clear765, i16* %omust_expand, align 2
  %307 = load %union.rec*, %union.rec** %target_galley, align 8
  %os1766 = bitcast %union.rec* %307 to %struct.word_type*
  %ou2767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1766, i32 0, i32 2
  %os23768 = bitcast %union.SECOND_UNION* %ou2767 to %struct.anon.2*
  %osized769 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23768, i32 0, i32 2
  %bf.load770 = load i16, i16* %osized769, align 2
  %bf.clear771 = and i16 %bf.load770, -3
  store i16 %bf.clear771, i16* %osized769, align 2
  %308 = load i32, i32* %dim, align 4
  %cmp772 = icmp eq i32 %308, 1
  br i1 %cmp772, label %if.then.774, label %if.else.805

if.then.774:                                      ; preds = %if.end.669
  %309 = load %union.rec*, %union.rec** %target, align 8
  %310 = load i32, i32* %dim, align 4
  %sub = sub nsw i32 1, %310
  call void @Constrained(%union.rec* %309, %struct.CONSTRAINT* %c, i32 %sub, %union.rec** %junk)
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %311 = load i32, i32* %obc, align 4
  %cmp775 = icmp ne i32 %311, 8388607
  br i1 %cmp775, label %if.end.791, label %lor.lhs.false.777

lor.lhs.false.777:                                ; preds = %if.then.774
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %312 = load i32, i32* %obfc, align 4
  %cmp778 = icmp ne i32 %312, 8388607
  br i1 %cmp778, label %if.end.791, label %lor.lhs.false.780

lor.lhs.false.780:                                ; preds = %lor.lhs.false.777
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %313 = load i32, i32* %ofc, align 4
  %cmp781 = icmp ne i32 %313, 8388607
  br i1 %cmp781, label %if.end.791, label %if.then.783

if.then.783:                                      ; preds = %lor.lhs.false.780
  %314 = load %union.rec*, %union.rec** %target, align 8
  %os1784 = bitcast %union.rec* %314 to %struct.word_type*
  %ou1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 1
  %ofpos786 = bitcast %union.FIRST_UNION* %ou1785 to %struct.FILE_POS*
  %315 = load %union.rec*, %union.rec** %target, align 8
  %os2787 = bitcast %union.rec* %315 to %struct.closure_type*
  %oactual788 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2787, i32 0, i32 5
  %316 = load %union.rec*, %union.rec** %oactual788, align 8
  %call789 = call i8* @SymName(%union.rec* %316)
  %call790 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos786, i8* %call789)
  br label %if.end.791

if.end.791:                                       ; preds = %if.then.783, %lor.lhs.false.780, %lor.lhs.false.777, %if.then.774
  %obc792 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %317 = load i32, i32* %obc792, align 4
  %cmp793 = icmp sle i32 0, %317
  br i1 %cmp793, label %land.lhs.true.795, label %if.then.803

land.lhs.true.795:                                ; preds = %if.end.791
  %obfc796 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %318 = load i32, i32* %obfc796, align 4
  %cmp797 = icmp sle i32 0, %318
  br i1 %cmp797, label %land.lhs.true.799, label %if.then.803

land.lhs.true.799:                                ; preds = %land.lhs.true.795
  %ofc800 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %319 = load i32, i32* %ofc800, align 4
  %cmp801 = icmp sle i32 0, %319
  br i1 %cmp801, label %if.end.804, label %if.then.803

if.then.803:                                      ; preds = %land.lhs.true.799, %land.lhs.true.795, %if.end.791
  store %union.rec* null, %union.rec** %y, align 8
  br label %REJECT

if.end.804:                                       ; preds = %land.lhs.true.799
  br label %if.end.809

if.else.805:                                      ; preds = %if.end.669
  %obc806 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  store i32 8388607, i32* %obc806, align 4
  %obfc807 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  store i32 8388607, i32* %obfc807, align 4
  %ofc808 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  store i32 8388607, i32* %ofc808, align 4
  br label %if.end.809

if.end.809:                                       ; preds = %if.else.805, %if.end.804
  %320 = load %union.rec*, %union.rec** %target, align 8
  %321 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call810 = call %union.rec* @CopyObject(%union.rec* %320, %struct.FILE_POS* %321)
  store %union.rec* %call810, %union.rec** %tmp, align 8
  %322 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv811 = zext i8 %322 to i32
  store i32 %conv811, i32* @zz_size, align 4
  %conv812 = sext i32 %conv811 to i64
  %cmp813 = icmp uge i64 %conv812, 265
  br i1 %cmp813, label %if.then.815, label %if.else.817

if.then.815:                                      ; preds = %if.end.809
  %323 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call816 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %323)
  br label %if.end.834

if.else.817:                                      ; preds = %if.end.809
  %324 = load i32, i32* @zz_size, align 4
  %idxprom818 = sext i32 %324 to i64
  %arrayidx819 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom818
  %325 = load %union.rec*, %union.rec** %arrayidx819, align 8
  %cmp820 = icmp eq %union.rec* %325, null
  br i1 %cmp820, label %if.then.822, label %if.else.824

if.then.822:                                      ; preds = %if.else.817
  %326 = load i32, i32* @zz_size, align 4
  %327 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call823 = call %union.rec* @GetMemory(i32 %326, %struct.FILE_POS* %327)
  store %union.rec* %call823, %union.rec** @zz_hold, align 8
  br label %if.end.833

if.else.824:                                      ; preds = %if.else.817
  %328 = load i32, i32* @zz_size, align 4
  %idxprom825 = sext i32 %328 to i64
  %arrayidx826 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom825
  %329 = load %union.rec*, %union.rec** %arrayidx826, align 8
  store %union.rec* %329, %union.rec** @zz_hold, align 8
  store %union.rec* %329, %union.rec** @zz_hold, align 8
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1827 = bitcast %union.rec* %330 to %struct.word_type*
  %olist828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1827, i32 0, i32 0
  %arrayidx829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist828, i32 0, i64 0
  %opred830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx829, i32 0, i32 0
  %331 = load %union.rec*, %union.rec** %opred830, align 8
  %332 = load i32, i32* @zz_size, align 4
  %idxprom831 = sext i32 %332 to i64
  %arrayidx832 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom831
  store %union.rec* %331, %union.rec** %arrayidx832, align 8
  br label %if.end.833

if.end.833:                                       ; preds = %if.else.824, %if.then.822
  br label %if.end.834

if.end.834:                                       ; preds = %if.end.833, %if.then.815
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1835 = bitcast %union.rec* %333 to %struct.word_type*
  %ou1836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 1
  %os11837 = bitcast %union.FIRST_UNION* %ou1836 to %struct.anon*
  %otype838 = getelementptr inbounds %struct.anon, %struct.anon* %os11837, i32 0, i32 0
  store i8 0, i8* %otype838, align 1
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1839 = bitcast %union.rec* %335 to %struct.word_type*
  %olist840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1839, i32 0, i32 0
  %arrayidx841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist840, i32 0, i64 1
  %osucc842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx841, i32 0, i32 1
  store %union.rec* %334, %union.rec** %osucc842, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1843 = bitcast %union.rec* %336 to %struct.word_type*
  %olist844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1843, i32 0, i32 0
  %arrayidx845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist844, i32 0, i64 1
  %opred846 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx845, i32 0, i32 0
  store %union.rec* %334, %union.rec** %opred846, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1847 = bitcast %union.rec* %337 to %struct.word_type*
  %olist848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 0
  %arrayidx849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist848, i32 0, i64 0
  %osucc850 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx849, i32 0, i32 1
  store %union.rec* %334, %union.rec** %osucc850, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1851 = bitcast %union.rec* %338 to %struct.word_type*
  %olist852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 0
  %arrayidx853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist852, i32 0, i64 0
  %opred854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx853, i32 0, i32 0
  store %union.rec* %334, %union.rec** %opred854, align 8
  store %union.rec* %334, %union.rec** @xx_link, align 8
  %339 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %339, %union.rec** @zz_res, align 8
  %340 = load %union.rec*, %union.rec** %target_galley, align 8
  store %union.rec* %340, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp855 = icmp eq %union.rec* %341, null
  br i1 %cmp855, label %cond.true.857, label %cond.false.858

cond.true.857:                                    ; preds = %if.end.834
  %342 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.893

cond.false.858:                                   ; preds = %if.end.834
  %343 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp859 = icmp eq %union.rec* %343, null
  br i1 %cmp859, label %cond.true.861, label %cond.false.862

cond.true.861:                                    ; preds = %cond.false.858
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.891

cond.false.862:                                   ; preds = %cond.false.858
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1863 = bitcast %union.rec* %345 to %struct.word_type*
  %olist864 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1863, i32 0, i32 0
  %arrayidx865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist864, i32 0, i64 0
  %opred866 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx865, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %opred866, align 8
  store %union.rec* %346, %union.rec** @zz_tmp, align 8
  %347 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1867 = bitcast %union.rec* %347 to %struct.word_type*
  %olist868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1867, i32 0, i32 0
  %arrayidx869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist868, i32 0, i64 0
  %opred870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx869, i32 0, i32 0
  %348 = load %union.rec*, %union.rec** %opred870, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1871 = bitcast %union.rec* %349 to %struct.word_type*
  %olist872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1871, i32 0, i32 0
  %arrayidx873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist872, i32 0, i64 0
  %opred874 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx873, i32 0, i32 0
  store %union.rec* %348, %union.rec** %opred874, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1875 = bitcast %union.rec* %351 to %struct.word_type*
  %olist876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1875, i32 0, i32 0
  %arrayidx877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist876, i32 0, i64 0
  %opred878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx877, i32 0, i32 0
  %352 = load %union.rec*, %union.rec** %opred878, align 8
  %os1879 = bitcast %union.rec* %352 to %struct.word_type*
  %olist880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1879, i32 0, i32 0
  %arrayidx881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist880, i32 0, i64 0
  %osucc882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx881, i32 0, i32 1
  store %union.rec* %350, %union.rec** %osucc882, align 8
  %353 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %354 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1883 = bitcast %union.rec* %354 to %struct.word_type*
  %olist884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1883, i32 0, i32 0
  %arrayidx885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist884, i32 0, i64 0
  %opred886 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx885, i32 0, i32 0
  store %union.rec* %353, %union.rec** %opred886, align 8
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  %356 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1887 = bitcast %union.rec* %356 to %struct.word_type*
  %olist888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1887, i32 0, i32 0
  %arrayidx889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist888, i32 0, i64 0
  %osucc890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx889, i32 0, i32 1
  store %union.rec* %355, %union.rec** %osucc890, align 8
  br label %cond.end.891

cond.end.891:                                     ; preds = %cond.false.862, %cond.true.861
  %cond892 = phi %union.rec* [ %344, %cond.true.861 ], [ %355, %cond.false.862 ]
  br label %cond.end.893

cond.end.893:                                     ; preds = %cond.end.891, %cond.true.857
  %cond894 = phi %union.rec* [ %342, %cond.true.857 ], [ %cond892, %cond.end.891 ]
  %357 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %357, %union.rec** @zz_res, align 8
  %358 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp895 = icmp eq %union.rec* %359, null
  br i1 %cmp895, label %cond.true.897, label %cond.false.898

cond.true.897:                                    ; preds = %cond.end.893
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.933

cond.false.898:                                   ; preds = %cond.end.893
  %361 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp899 = icmp eq %union.rec* %361, null
  br i1 %cmp899, label %cond.true.901, label %cond.false.902

cond.true.901:                                    ; preds = %cond.false.898
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.931

cond.false.902:                                   ; preds = %cond.false.898
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1903 = bitcast %union.rec* %363 to %struct.word_type*
  %olist904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1903, i32 0, i32 0
  %arrayidx905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist904, i32 0, i64 1
  %opred906 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx905, i32 0, i32 0
  %364 = load %union.rec*, %union.rec** %opred906, align 8
  store %union.rec* %364, %union.rec** @zz_tmp, align 8
  %365 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1907 = bitcast %union.rec* %365 to %struct.word_type*
  %olist908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1907, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist908, i32 0, i64 1
  %opred910 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx909, i32 0, i32 0
  %366 = load %union.rec*, %union.rec** %opred910, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1911 = bitcast %union.rec* %367 to %struct.word_type*
  %olist912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1911, i32 0, i32 0
  %arrayidx913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist912, i32 0, i64 1
  %opred914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx913, i32 0, i32 0
  store %union.rec* %366, %union.rec** %opred914, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1915 = bitcast %union.rec* %369 to %struct.word_type*
  %olist916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1915, i32 0, i32 0
  %arrayidx917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist916, i32 0, i64 1
  %opred918 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx917, i32 0, i32 0
  %370 = load %union.rec*, %union.rec** %opred918, align 8
  %os1919 = bitcast %union.rec* %370 to %struct.word_type*
  %olist920 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1919, i32 0, i32 0
  %arrayidx921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist920, i32 0, i64 1
  %osucc922 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx921, i32 0, i32 1
  store %union.rec* %368, %union.rec** %osucc922, align 8
  %371 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1923 = bitcast %union.rec* %372 to %struct.word_type*
  %olist924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1923, i32 0, i32 0
  %arrayidx925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist924, i32 0, i64 1
  %opred926 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx925, i32 0, i32 0
  store %union.rec* %371, %union.rec** %opred926, align 8
  %373 = load %union.rec*, %union.rec** @zz_res, align 8
  %374 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1927 = bitcast %union.rec* %374 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 1
  %osucc930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 1
  store %union.rec* %373, %union.rec** %osucc930, align 8
  br label %cond.end.931

cond.end.931:                                     ; preds = %cond.false.902, %cond.true.901
  %cond932 = phi %union.rec* [ %362, %cond.true.901 ], [ %373, %cond.false.902 ]
  br label %cond.end.933

cond.end.933:                                     ; preds = %cond.end.931, %cond.true.897
  %cond934 = phi %union.rec* [ %360, %cond.true.897 ], [ %cond932, %cond.end.931 ]
  %375 = load %union.rec*, %union.rec** %tmp, align 8
  %call935 = call %union.rec* @DetachEnv(%union.rec* %375)
  store %union.rec* %call935, %union.rec** %env, align 8
  %376 = load %union.rec*, %union.rec** %target_galley, align 8
  %377 = load %union.rec*, %union.rec** %env, align 8
  %378 = load %union.rec*, %union.rec** %target, align 8
  %os1936 = bitcast %union.rec* %378 to %struct.word_type*
  %ou2937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1936, i32 0, i32 2
  %os23938 = bitcast %union.SECOND_UNION* %ou2937 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23938, i32 0, i32 2
  %bf.load939 = load i16, i16* %oexternal_ver, align 2
  %bf.lshr940 = lshr i16 %bf.load939, 4
  %bf.clear941 = and i16 %bf.lshr940, 1
  %bf.cast942 = zext i16 %bf.clear941 to i32
  %tobool943 = icmp ne i32 %bf.cast942, 0
  br i1 %tobool943, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.933
  %379 = load %union.rec*, %union.rec** %target, align 8
  %os1944 = bitcast %union.rec* %379 to %struct.word_type*
  %ou2945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1944, i32 0, i32 2
  %os23946 = bitcast %union.SECOND_UNION* %ou2945 to %struct.anon.2*
  %oexternal_hor947 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23946, i32 0, i32 2
  %bf.load948 = load i16, i16* %oexternal_hor947, align 2
  %bf.lshr949 = lshr i16 %bf.load948, 3
  %bf.clear950 = and i16 %bf.lshr949, 1
  %bf.cast951 = zext i16 %bf.clear950 to i32
  %tobool952 = icmp ne i32 %bf.cast951, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.933
  %380 = phi i1 [ true, %cond.end.933 ], [ %tobool952, %lor.rhs ]
  %lor.ext = zext i1 %380 to i32
  %381 = load %union.rec*, %union.rec** %target, align 8
  %os1953 = bitcast %union.rec* %381 to %struct.word_type*
  %ou2954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1953, i32 0, i32 2
  %os23955 = bitcast %union.SECOND_UNION* %ou2954 to %struct.anon.2*
  %othreaded = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23955, i32 0, i32 2
  %bf.load956 = load i16, i16* %othreaded, align 2
  %bf.lshr957 = lshr i16 %bf.load956, 2
  %bf.clear958 = and i16 %bf.lshr957, 1
  %bf.cast959 = zext i16 %bf.clear958 to i32
  %382 = load %union.rec*, %union.rec** %target_index, align 8
  %os1960 = bitcast %union.rec* %382 to %struct.word_type*
  %ou2961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1960, i32 0, i32 2
  %os23962 = bitcast %union.SECOND_UNION* %ou2961 to %struct.anon.2*
  %onon_blocking = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23962, i32 0, i32 2
  %bf.load963 = load i16, i16* %onon_blocking, align 2
  %bf.clear964 = and i16 %bf.load963, 1
  %bf.cast965 = zext i16 %bf.clear964 to i32
  %383 = load %union.rec*, %union.rec** %target_index, align 8
  %os1966 = bitcast %union.rec* %383 to %struct.word_type*
  %ou2967 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1966, i32 0, i32 2
  %os23968 = bitcast %union.SECOND_UNION* %ou2967 to %struct.anon.2*
  %otrigger_ext = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23968, i32 0, i32 2
  %bf.load969 = load i16, i16* %otrigger_ext, align 2
  %bf.lshr970 = lshr i16 %bf.load969, 6
  %bf.clear971 = and i16 %bf.lshr970, 1
  %bf.cast972 = zext i16 %bf.clear971 to i32
  %384 = load %union.rec*, %union.rec** %target, align 8
  %os2973 = bitcast %union.rec* %384 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2973, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %385 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2974 = bitcast %union.rec* %385 to %struct.closure_type*
  %oux975 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2974, i32 0, i32 6
  %owhereto976 = bitcast %union.anon.12* %oux975 to %union.rec**
  %386 = load %union.rec*, %union.rec** %owhereto976, align 8
  %387 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a977 = bitcast %union.rec* %387 to %struct.head_type*
  %oenclose_obj978 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a977, i32 0, i32 12
  %388 = load %union.rec*, %union.rec** %oenclose_obj978, align 8
  %cmp979 = icmp ne %union.rec* %388, null
  br i1 %cmp979, label %cond.true.981, label %cond.false.985

cond.true.981:                                    ; preds = %lor.end
  %389 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a982 = bitcast %union.rec* %389 to %struct.head_type*
  %oenclose_obj983 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a982, i32 0, i32 12
  %390 = load %union.rec*, %union.rec** %oenclose_obj983, align 8
  %391 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call984 = call %union.rec* @CopyObject(%union.rec* %390, %struct.FILE_POS* %391)
  br label %cond.end.986

cond.false.985:                                   ; preds = %lor.end
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.false.985, %cond.true.981
  %cond987 = phi %union.rec* [ %call984, %cond.true.981 ], [ null, %cond.false.985 ]
  call void @SizeGalley(%union.rec* %376, %union.rec* %377, i32 %lor.ext, i32 %bf.cast959, i32 %bf.cast965, i32 %bf.cast972, %struct.STYLE* %osave_style, %struct.CONSTRAINT* %c, %union.rec* %386, %union.rec** %dest_index, %union.rec** %recs, %union.rec** %tg_inners, %union.rec* %cond987)
  %392 = load %union.rec*, %union.rec** %recs, align 8
  %cmp988 = icmp ne %union.rec* %392, null
  br i1 %cmp988, label %if.then.990, label %if.end.991

if.then.990:                                      ; preds = %cond.end.986
  %393 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %393)
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.990, %cond.end.986
  %394 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2992 = bitcast %union.rec* %394 to %struct.closure_type*
  %oactual993 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2992, i32 0, i32 5
  %395 = load %union.rec*, %union.rec** %oactual993, align 8
  store %union.rec* %395, %union.rec** %dest, align 8
  %396 = load %union.rec*, %union.rec** %dest, align 8
  %os1994 = bitcast %union.rec* %396 to %struct.word_type*
  %ou2995 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1994, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2995 to %struct.anon.1*
  %397 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load996 = load i32, i32* %397, align 4
  %bf.lshr997 = lshr i32 %bf.load996, 29
  %bf.clear998 = and i32 %bf.lshr997, 3
  %cmp999 = icmp eq i32 %bf.clear998, 0
  br i1 %cmp999, label %if.then.1001, label %if.end.1008

if.then.1001:                                     ; preds = %if.end.991
  %398 = load %union.rec*, %union.rec** %dest, align 8
  %os11002 = bitcast %union.rec* %398 to %struct.word_type*
  %ou21003 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11002, i32 0, i32 2
  %os221004 = bitcast %union.SECOND_UNION* %ou21003 to %struct.anon.1*
  %399 = bitcast %struct.anon.1* %os221004 to i32*
  %bf.load1005 = load i32, i32* %399, align 4
  %bf.clear1006 = and i32 %bf.load1005, -1610612737
  %bf.set1007 = or i32 %bf.clear1006, 536870912
  store i32 %bf.set1007, i32* %399, align 4
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.then.1001, %if.end.991
  %400 = load i32, i32* %dim, align 4
  %cmp1009 = icmp eq i32 %400, 1
  br i1 %cmp1009, label %if.then.1011, label %if.end.1040

if.then.1011:                                     ; preds = %if.end.1008
  %401 = load %union.rec*, %union.rec** %dest, align 8
  %402 = load i32, i32* %dim, align 4
  %sub1012 = sub nsw i32 1, %402
  call void @Constrained(%union.rec* %401, %struct.CONSTRAINT* %c, i32 %sub1012, %union.rec** %junk)
  %obc1013 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %403 = load i32, i32* %obc1013, align 4
  %cmp1014 = icmp ne i32 %403, 8388607
  br i1 %cmp1014, label %if.end.1026, label %lor.lhs.false.1016

lor.lhs.false.1016:                               ; preds = %if.then.1011
  %obfc1017 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %404 = load i32, i32* %obfc1017, align 4
  %cmp1018 = icmp ne i32 %404, 8388607
  br i1 %cmp1018, label %if.end.1026, label %lor.lhs.false.1020

lor.lhs.false.1020:                               ; preds = %lor.lhs.false.1016
  %ofc1021 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %405 = load i32, i32* %ofc1021, align 4
  %cmp1022 = icmp ne i32 %405, 8388607
  br i1 %cmp1022, label %if.end.1026, label %if.then.1024

if.then.1024:                                     ; preds = %lor.lhs.false.1020
  %406 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1025 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %406, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.then.1024, %lor.lhs.false.1020, %lor.lhs.false.1016, %if.then.1011
  %obc1027 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %407 = load i32, i32* %obc1027, align 4
  %cmp1028 = icmp sle i32 0, %407
  br i1 %cmp1028, label %land.lhs.true.1030, label %if.then.1038

land.lhs.true.1030:                               ; preds = %if.end.1026
  %obfc1031 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %408 = load i32, i32* %obfc1031, align 4
  %cmp1032 = icmp sle i32 0, %408
  br i1 %cmp1032, label %land.lhs.true.1034, label %if.then.1038

land.lhs.true.1034:                               ; preds = %land.lhs.true.1030
  %ofc1035 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %409 = load i32, i32* %ofc1035, align 4
  %cmp1036 = icmp sle i32 0, %409
  br i1 %cmp1036, label %if.end.1039, label %if.then.1038

if.then.1038:                                     ; preds = %land.lhs.true.1034, %land.lhs.true.1030, %if.end.1026
  store %union.rec* null, %union.rec** %y, align 8
  br label %REJECT

if.end.1039:                                      ; preds = %land.lhs.true.1034
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.end.1039, %if.end.1008
  %410 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11041 = bitcast %union.rec* %410 to %struct.word_type*
  %ou21042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11041, i32 0, i32 2
  %os231043 = bitcast %union.SECOND_UNION* %ou21042 to %struct.anon.2*
  %osized1044 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231043, i32 0, i32 2
  %bf.load1045 = load i16, i16* %osized1044, align 2
  %bf.lshr1046 = lshr i16 %bf.load1045, 1
  %bf.clear1047 = and i16 %bf.lshr1046, 1
  %bf.cast1048 = zext i16 %bf.clear1047 to i32
  %tobool1049 = icmp ne i32 %bf.cast1048, 0
  br i1 %tobool1049, label %if.end.1708, label %if.then.1050

if.then.1050:                                     ; preds = %if.end.1040
  call void @EnterErrorBlock(i32 1)
  store %union.rec* null, %union.rec** %n1, align 8
  %411 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11051 = bitcast %union.rec* %411 to %struct.word_type*
  %olist1052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11051, i32 0, i32 0
  %arrayidx1053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1052, i32 0, i64 0
  %osucc1054 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1053, i32 0, i32 1
  %412 = load %union.rec*, %union.rec** %osucc1054, align 8
  %os11055 = bitcast %union.rec* %412 to %struct.word_type*
  %olist1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11055, i32 0, i32 0
  %arrayidx1057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1056, i32 0, i64 1
  %opred1058 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1057, i32 0, i32 0
  %413 = load %union.rec*, %union.rec** %opred1058, align 8
  store %union.rec* %413, %union.rec** %y, align 8
  br label %for.cond.1059

for.cond.1059:                                    ; preds = %for.inc.1068, %if.then.1050
  %414 = load %union.rec*, %union.rec** %y, align 8
  %os11060 = bitcast %union.rec* %414 to %struct.word_type*
  %ou11061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 1
  %os111062 = bitcast %union.FIRST_UNION* %ou11061 to %struct.anon*
  %otype1063 = getelementptr inbounds %struct.anon, %struct.anon* %os111062, i32 0, i32 0
  %415 = load i8, i8* %otype1063, align 1
  %conv1064 = zext i8 %415 to i32
  %cmp1065 = icmp eq i32 %conv1064, 0
  br i1 %cmp1065, label %for.body.1067, label %for.end.1073

for.body.1067:                                    ; preds = %for.cond.1059
  br label %for.inc.1068

for.inc.1068:                                     ; preds = %for.body.1067
  %416 = load %union.rec*, %union.rec** %y, align 8
  %os11069 = bitcast %union.rec* %416 to %struct.word_type*
  %olist1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 0
  %arrayidx1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1070, i32 0, i64 1
  %opred1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1071, i32 0, i32 0
  %417 = load %union.rec*, %union.rec** %opred1072, align 8
  store %union.rec* %417, %union.rec** %y, align 8
  br label %for.cond.1059

for.end.1073:                                     ; preds = %for.cond.1059
  %418 = load %union.rec*, %union.rec** %y, align 8
  %call1074 = call %union.rec* @DetachEnv(%union.rec* %418)
  store %union.rec* %call1074, %union.rec** %env, align 8
  %419 = load %union.rec*, %union.rec** %hd.addr, align 8
  %420 = load %union.rec*, %union.rec** %env, align 8
  %421 = load i32, i32* %dim, align 4
  %cmp1075 = icmp eq i32 %421, 1
  br i1 %cmp1075, label %cond.true.1077, label %cond.false.1086

cond.true.1077:                                   ; preds = %for.end.1073
  %422 = load %union.rec*, %union.rec** %dest, align 8
  %os11078 = bitcast %union.rec* %422 to %struct.word_type*
  %ou21079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11078, i32 0, i32 2
  %os231080 = bitcast %union.SECOND_UNION* %ou21079 to %struct.anon.2*
  %othreaded1081 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231080, i32 0, i32 2
  %bf.load1082 = load i16, i16* %othreaded1081, align 2
  %bf.lshr1083 = lshr i16 %bf.load1082, 2
  %bf.clear1084 = and i16 %bf.lshr1083, 1
  %bf.cast1085 = zext i16 %bf.clear1084 to i32
  br label %cond.end.1087

cond.false.1086:                                  ; preds = %for.end.1073
  br label %cond.end.1087

cond.end.1087:                                    ; preds = %cond.false.1086, %cond.true.1077
  %cond1088 = phi i32 [ %bf.cast1085, %cond.true.1077 ], [ 0, %cond.false.1086 ]
  %423 = load %union.rec*, %union.rec** %target_index, align 8
  %os11089 = bitcast %union.rec* %423 to %struct.word_type*
  %ou21090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11089, i32 0, i32 2
  %os231091 = bitcast %union.SECOND_UNION* %ou21090 to %struct.anon.2*
  %onon_blocking1092 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231091, i32 0, i32 2
  %bf.load1093 = load i16, i16* %onon_blocking1092, align 2
  %bf.clear1094 = and i16 %bf.load1093, 1
  %bf.cast1095 = zext i16 %bf.clear1094 to i32
  %424 = load %union.rec*, %union.rec** %dest, align 8
  %os21096 = bitcast %union.rec* %424 to %struct.closure_type*
  %ou41097 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21096, i32 0, i32 4
  %osave_style1098 = bitcast %union.FOURTH_UNION* %ou41097 to %struct.STYLE*
  call void @SizeGalley(%union.rec* %419, %union.rec* %420, i32 1, i32 %cond1088, i32 %bf.cast1095, i32 1, %struct.STYLE* %osave_style1098, %struct.CONSTRAINT* %c, %union.rec* null, %union.rec** %n1, %union.rec** %recs, %union.rec** %hd_inners, %union.rec* null)
  %425 = load %union.rec*, %union.rec** %recs, align 8
  %cmp1099 = icmp ne %union.rec* %425, null
  br i1 %cmp1099, label %if.then.1101, label %if.end.1102

if.then.1101:                                     ; preds = %cond.end.1087
  %426 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %426)
  br label %if.end.1102

if.end.1102:                                      ; preds = %if.then.1101, %cond.end.1087
  %427 = load i32, i32* %need_precedes, align 4
  %tobool1103 = icmp ne i32 %427, 0
  br i1 %tobool1103, label %if.then.1104, label %if.end.1707

if.then.1104:                                     ; preds = %if.end.1102
  %428 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 124), align 1
  %conv1107 = zext i8 %428 to i32
  store i32 %conv1107, i32* @zz_size, align 4
  %conv1108 = sext i32 %conv1107 to i64
  %cmp1109 = icmp uge i64 %conv1108, 265
  br i1 %cmp1109, label %if.then.1111, label %if.else.1113

if.then.1111:                                     ; preds = %if.then.1104
  %429 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1112 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %429)
  br label %if.end.1130

if.else.1113:                                     ; preds = %if.then.1104
  %430 = load i32, i32* @zz_size, align 4
  %idxprom1114 = sext i32 %430 to i64
  %arrayidx1115 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1114
  %431 = load %union.rec*, %union.rec** %arrayidx1115, align 8
  %cmp1116 = icmp eq %union.rec* %431, null
  br i1 %cmp1116, label %if.then.1118, label %if.else.1120

if.then.1118:                                     ; preds = %if.else.1113
  %432 = load i32, i32* @zz_size, align 4
  %433 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1119 = call %union.rec* @GetMemory(i32 %432, %struct.FILE_POS* %433)
  store %union.rec* %call1119, %union.rec** @zz_hold, align 8
  br label %if.end.1129

if.else.1120:                                     ; preds = %if.else.1113
  %434 = load i32, i32* @zz_size, align 4
  %idxprom1121 = sext i32 %434 to i64
  %arrayidx1122 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1121
  %435 = load %union.rec*, %union.rec** %arrayidx1122, align 8
  store %union.rec* %435, %union.rec** @zz_hold, align 8
  store %union.rec* %435, %union.rec** @zz_hold, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11123 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11123, i32 0, i32 0
  %arrayidx1125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1124, i32 0, i64 0
  %opred1126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1125, i32 0, i32 0
  %437 = load %union.rec*, %union.rec** %opred1126, align 8
  %438 = load i32, i32* @zz_size, align 4
  %idxprom1127 = sext i32 %438 to i64
  %arrayidx1128 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1127
  store %union.rec* %437, %union.rec** %arrayidx1128, align 8
  br label %if.end.1129

if.end.1129:                                      ; preds = %if.else.1120, %if.then.1118
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.end.1129, %if.then.1111
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11131 = bitcast %union.rec* %439 to %struct.word_type*
  %ou11132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11131, i32 0, i32 1
  %os111133 = bitcast %union.FIRST_UNION* %ou11132 to %struct.anon*
  %otype1134 = getelementptr inbounds %struct.anon, %struct.anon* %os111133, i32 0, i32 0
  store i8 124, i8* %otype1134, align 1
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11135 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11135, i32 0, i32 0
  %arrayidx1137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1136, i32 0, i64 1
  %osucc1138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1137, i32 0, i32 1
  store %union.rec* %440, %union.rec** %osucc1138, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11139 = bitcast %union.rec* %442 to %struct.word_type*
  %olist1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11139, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1140, i32 0, i64 1
  %opred1142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1141, i32 0, i32 0
  store %union.rec* %440, %union.rec** %opred1142, align 8
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11143 = bitcast %union.rec* %443 to %struct.word_type*
  %olist1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11143, i32 0, i32 0
  %arrayidx1145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1144, i32 0, i64 0
  %osucc1146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1145, i32 0, i32 1
  store %union.rec* %440, %union.rec** %osucc1146, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11147 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11147, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1148, i32 0, i64 0
  %opred1150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1149, i32 0, i32 0
  store %union.rec* %440, %union.rec** %opred1150, align 8
  store %union.rec* %440, %union.rec** %index1, align 8
  %445 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 125), align 1
  %conv1151 = zext i8 %445 to i32
  store i32 %conv1151, i32* @zz_size, align 4
  %conv1152 = sext i32 %conv1151 to i64
  %cmp1153 = icmp uge i64 %conv1152, 265
  br i1 %cmp1153, label %if.then.1155, label %if.else.1157

if.then.1155:                                     ; preds = %if.end.1130
  %446 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1156 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %446)
  br label %if.end.1174

if.else.1157:                                     ; preds = %if.end.1130
  %447 = load i32, i32* @zz_size, align 4
  %idxprom1158 = sext i32 %447 to i64
  %arrayidx1159 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1158
  %448 = load %union.rec*, %union.rec** %arrayidx1159, align 8
  %cmp1160 = icmp eq %union.rec* %448, null
  br i1 %cmp1160, label %if.then.1162, label %if.else.1164

if.then.1162:                                     ; preds = %if.else.1157
  %449 = load i32, i32* @zz_size, align 4
  %450 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1163 = call %union.rec* @GetMemory(i32 %449, %struct.FILE_POS* %450)
  store %union.rec* %call1163, %union.rec** @zz_hold, align 8
  br label %if.end.1173

if.else.1164:                                     ; preds = %if.else.1157
  %451 = load i32, i32* @zz_size, align 4
  %idxprom1165 = sext i32 %451 to i64
  %arrayidx1166 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1165
  %452 = load %union.rec*, %union.rec** %arrayidx1166, align 8
  store %union.rec* %452, %union.rec** @zz_hold, align 8
  store %union.rec* %452, %union.rec** @zz_hold, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11167 = bitcast %union.rec* %453 to %struct.word_type*
  %olist1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11167, i32 0, i32 0
  %arrayidx1169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1168, i32 0, i64 0
  %opred1170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1169, i32 0, i32 0
  %454 = load %union.rec*, %union.rec** %opred1170, align 8
  %455 = load i32, i32* @zz_size, align 4
  %idxprom1171 = sext i32 %455 to i64
  %arrayidx1172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1171
  store %union.rec* %454, %union.rec** %arrayidx1172, align 8
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.else.1164, %if.then.1162
  br label %if.end.1174

if.end.1174:                                      ; preds = %if.end.1173, %if.then.1155
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11175 = bitcast %union.rec* %456 to %struct.word_type*
  %ou11176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 1
  %os111177 = bitcast %union.FIRST_UNION* %ou11176 to %struct.anon*
  %otype1178 = getelementptr inbounds %struct.anon, %struct.anon* %os111177, i32 0, i32 0
  store i8 125, i8* %otype1178, align 1
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11179 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11179, i32 0, i32 0
  %arrayidx1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1180, i32 0, i64 1
  %osucc1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1181, i32 0, i32 1
  store %union.rec* %457, %union.rec** %osucc1182, align 8
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11183 = bitcast %union.rec* %459 to %struct.word_type*
  %olist1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 0
  %arrayidx1185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1184, i32 0, i64 1
  %opred1186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1185, i32 0, i32 0
  store %union.rec* %457, %union.rec** %opred1186, align 8
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11187 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 0
  %osucc1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 1
  store %union.rec* %457, %union.rec** %osucc1190, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11191 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11191, i32 0, i32 0
  %arrayidx1193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1192, i32 0, i64 0
  %opred1194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1193, i32 0, i32 0
  store %union.rec* %457, %union.rec** %opred1194, align 8
  store %union.rec* %457, %union.rec** %index2, align 8
  %462 = load %union.rec*, %union.rec** %index2, align 8
  %os11195 = bitcast %union.rec* %462 to %struct.word_type*
  %ou21196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11195, i32 0, i32 2
  %os231197 = bitcast %union.SECOND_UNION* %ou21196 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231197, i32 0, i32 2
  %bf.load1198 = load i16, i16* %oblocked, align 2
  %bf.clear1199 = and i16 %bf.load1198, -33
  store i16 %bf.clear1199, i16* %oblocked, align 2
  %463 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1200 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), %struct.FILE_POS* %463)
  store %union.rec* %call1200, %union.rec** %tmp, align 8
  %464 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1201 = zext i8 %464 to i32
  store i32 %conv1201, i32* @zz_size, align 4
  %conv1202 = sext i32 %conv1201 to i64
  %cmp1203 = icmp uge i64 %conv1202, 265
  br i1 %cmp1203, label %if.then.1205, label %if.else.1207

if.then.1205:                                     ; preds = %if.end.1174
  %465 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1206 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %465)
  br label %if.end.1224

if.else.1207:                                     ; preds = %if.end.1174
  %466 = load i32, i32* @zz_size, align 4
  %idxprom1208 = sext i32 %466 to i64
  %arrayidx1209 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1208
  %467 = load %union.rec*, %union.rec** %arrayidx1209, align 8
  %cmp1210 = icmp eq %union.rec* %467, null
  br i1 %cmp1210, label %if.then.1212, label %if.else.1214

if.then.1212:                                     ; preds = %if.else.1207
  %468 = load i32, i32* @zz_size, align 4
  %469 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1213 = call %union.rec* @GetMemory(i32 %468, %struct.FILE_POS* %469)
  store %union.rec* %call1213, %union.rec** @zz_hold, align 8
  br label %if.end.1223

if.else.1214:                                     ; preds = %if.else.1207
  %470 = load i32, i32* @zz_size, align 4
  %idxprom1215 = sext i32 %470 to i64
  %arrayidx1216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1215
  %471 = load %union.rec*, %union.rec** %arrayidx1216, align 8
  store %union.rec* %471, %union.rec** @zz_hold, align 8
  store %union.rec* %471, %union.rec** @zz_hold, align 8
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11217 = bitcast %union.rec* %472 to %struct.word_type*
  %olist1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11217, i32 0, i32 0
  %arrayidx1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1218, i32 0, i64 0
  %opred1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1219, i32 0, i32 0
  %473 = load %union.rec*, %union.rec** %opred1220, align 8
  %474 = load i32, i32* @zz_size, align 4
  %idxprom1221 = sext i32 %474 to i64
  %arrayidx1222 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1221
  store %union.rec* %473, %union.rec** %arrayidx1222, align 8
  br label %if.end.1223

if.end.1223:                                      ; preds = %if.else.1214, %if.then.1212
  br label %if.end.1224

if.end.1224:                                      ; preds = %if.end.1223, %if.then.1205
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11225 = bitcast %union.rec* %475 to %struct.word_type*
  %ou11226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 1
  %os111227 = bitcast %union.FIRST_UNION* %ou11226 to %struct.anon*
  %otype1228 = getelementptr inbounds %struct.anon, %struct.anon* %os111227, i32 0, i32 0
  store i8 0, i8* %otype1228, align 1
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11229 = bitcast %union.rec* %477 to %struct.word_type*
  %olist1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11229, i32 0, i32 0
  %arrayidx1231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1230, i32 0, i64 1
  %osucc1232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1231, i32 0, i32 1
  store %union.rec* %476, %union.rec** %osucc1232, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11233 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11233, i32 0, i32 0
  %arrayidx1235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1234, i32 0, i64 1
  %opred1236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1235, i32 0, i32 0
  store %union.rec* %476, %union.rec** %opred1236, align 8
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11237 = bitcast %union.rec* %479 to %struct.word_type*
  %olist1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11237, i32 0, i32 0
  %arrayidx1239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1238, i32 0, i64 0
  %osucc1240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1239, i32 0, i32 1
  store %union.rec* %476, %union.rec** %osucc1240, align 8
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11241 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11241, i32 0, i32 0
  %arrayidx1243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1242, i32 0, i64 0
  %opred1244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1243, i32 0, i32 0
  store %union.rec* %476, %union.rec** %opred1244, align 8
  store %union.rec* %476, %union.rec** @xx_link, align 8
  %481 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %481, %union.rec** @zz_res, align 8
  %482 = load %union.rec*, %union.rec** %index1, align 8
  store %union.rec* %482, %union.rec** @zz_hold, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1245 = icmp eq %union.rec* %483, null
  br i1 %cmp1245, label %cond.true.1247, label %cond.false.1248

cond.true.1247:                                   ; preds = %if.end.1224
  %484 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1284

cond.false.1248:                                  ; preds = %if.end.1224
  %485 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1249 = icmp eq %union.rec* %485, null
  br i1 %cmp1249, label %cond.true.1251, label %cond.false.1252

cond.true.1251:                                   ; preds = %cond.false.1248
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1282

cond.false.1252:                                  ; preds = %cond.false.1248
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11253 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11253, i32 0, i32 0
  %arrayidx1255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1254, i32 0, i64 0
  %opred1256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1255, i32 0, i32 0
  %488 = load %union.rec*, %union.rec** %opred1256, align 8
  store %union.rec* %488, %union.rec** @zz_tmp, align 8
  %489 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11257 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11257, i32 0, i32 0
  %arrayidx1259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1258, i32 0, i64 0
  %opred1260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1259, i32 0, i32 0
  %490 = load %union.rec*, %union.rec** %opred1260, align 8
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11262 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11262, i32 0, i32 0
  %arrayidx1264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1263, i32 0, i64 0
  %opred1265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1264, i32 0, i32 0
  store %union.rec* %490, %union.rec** %opred1265, align 8
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %493 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11266 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11266, i32 0, i32 0
  %arrayidx1268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1267, i32 0, i64 0
  %opred1269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1268, i32 0, i32 0
  %494 = load %union.rec*, %union.rec** %opred1269, align 8
  %os11270 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11270, i32 0, i32 0
  %arrayidx1272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1271, i32 0, i64 0
  %osucc1273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1272, i32 0, i32 1
  store %union.rec* %492, %union.rec** %osucc1273, align 8
  %495 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %496 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11274 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11274, i32 0, i32 0
  %arrayidx1276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1275, i32 0, i64 0
  %opred1277 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1276, i32 0, i32 0
  store %union.rec* %495, %union.rec** %opred1277, align 8
  %497 = load %union.rec*, %union.rec** @zz_res, align 8
  %498 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11278 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11278, i32 0, i32 0
  %arrayidx1280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1279, i32 0, i64 0
  %osucc1281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1280, i32 0, i32 1
  store %union.rec* %497, %union.rec** %osucc1281, align 8
  br label %cond.end.1282

cond.end.1282:                                    ; preds = %cond.false.1252, %cond.true.1251
  %cond1283 = phi %union.rec* [ %486, %cond.true.1251 ], [ %497, %cond.false.1252 ]
  br label %cond.end.1284

cond.end.1284:                                    ; preds = %cond.end.1282, %cond.true.1247
  %cond1285 = phi %union.rec* [ %484, %cond.true.1247 ], [ %cond1283, %cond.end.1282 ]
  %499 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %499, %union.rec** @zz_res, align 8
  %500 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %500, %union.rec** @zz_hold, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1286 = icmp eq %union.rec* %501, null
  br i1 %cmp1286, label %cond.true.1288, label %cond.false.1289

cond.true.1288:                                   ; preds = %cond.end.1284
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1324

cond.false.1289:                                  ; preds = %cond.end.1284
  %503 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1290 = icmp eq %union.rec* %503, null
  br i1 %cmp1290, label %cond.true.1292, label %cond.false.1293

cond.true.1292:                                   ; preds = %cond.false.1289
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1322

cond.false.1293:                                  ; preds = %cond.false.1289
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11294 = bitcast %union.rec* %505 to %struct.word_type*
  %olist1295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11294, i32 0, i32 0
  %arrayidx1296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1295, i32 0, i64 1
  %opred1297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1296, i32 0, i32 0
  %506 = load %union.rec*, %union.rec** %opred1297, align 8
  store %union.rec* %506, %union.rec** @zz_tmp, align 8
  %507 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11298 = bitcast %union.rec* %507 to %struct.word_type*
  %olist1299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11298, i32 0, i32 0
  %arrayidx1300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1299, i32 0, i64 1
  %opred1301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1300, i32 0, i32 0
  %508 = load %union.rec*, %union.rec** %opred1301, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11302 = bitcast %union.rec* %509 to %struct.word_type*
  %olist1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11302, i32 0, i32 0
  %arrayidx1304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1303, i32 0, i64 1
  %opred1305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1304, i32 0, i32 0
  store %union.rec* %508, %union.rec** %opred1305, align 8
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11306 = bitcast %union.rec* %511 to %struct.word_type*
  %olist1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1307, i32 0, i64 1
  %opred1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1308, i32 0, i32 0
  %512 = load %union.rec*, %union.rec** %opred1309, align 8
  %os11310 = bitcast %union.rec* %512 to %struct.word_type*
  %olist1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11310, i32 0, i32 0
  %arrayidx1312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1311, i32 0, i64 1
  %osucc1313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1312, i32 0, i32 1
  store %union.rec* %510, %union.rec** %osucc1313, align 8
  %513 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %514 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11314 = bitcast %union.rec* %514 to %struct.word_type*
  %olist1315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11314, i32 0, i32 0
  %arrayidx1316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1315, i32 0, i64 1
  %opred1317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1316, i32 0, i32 0
  store %union.rec* %513, %union.rec** %opred1317, align 8
  %515 = load %union.rec*, %union.rec** @zz_res, align 8
  %516 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11318 = bitcast %union.rec* %516 to %struct.word_type*
  %olist1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11318, i32 0, i32 0
  %arrayidx1320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1319, i32 0, i64 1
  %osucc1321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1320, i32 0, i32 1
  store %union.rec* %515, %union.rec** %osucc1321, align 8
  br label %cond.end.1322

cond.end.1322:                                    ; preds = %cond.false.1293, %cond.true.1292
  %cond1323 = phi %union.rec* [ %504, %cond.true.1292 ], [ %515, %cond.false.1293 ]
  br label %cond.end.1324

cond.end.1324:                                    ; preds = %cond.end.1322, %cond.true.1288
  %cond1325 = phi %union.rec* [ %502, %cond.true.1288 ], [ %cond1323, %cond.end.1322 ]
  %517 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1326 = zext i8 %517 to i32
  store i32 %conv1326, i32* @zz_size, align 4
  %conv1327 = sext i32 %conv1326 to i64
  %cmp1328 = icmp uge i64 %conv1327, 265
  br i1 %cmp1328, label %if.then.1330, label %if.else.1332

if.then.1330:                                     ; preds = %cond.end.1324
  %518 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1331 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %518)
  br label %if.end.1349

if.else.1332:                                     ; preds = %cond.end.1324
  %519 = load i32, i32* @zz_size, align 4
  %idxprom1333 = sext i32 %519 to i64
  %arrayidx1334 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1333
  %520 = load %union.rec*, %union.rec** %arrayidx1334, align 8
  %cmp1335 = icmp eq %union.rec* %520, null
  br i1 %cmp1335, label %if.then.1337, label %if.else.1339

if.then.1337:                                     ; preds = %if.else.1332
  %521 = load i32, i32* @zz_size, align 4
  %522 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1338 = call %union.rec* @GetMemory(i32 %521, %struct.FILE_POS* %522)
  store %union.rec* %call1338, %union.rec** @zz_hold, align 8
  br label %if.end.1348

if.else.1339:                                     ; preds = %if.else.1332
  %523 = load i32, i32* @zz_size, align 4
  %idxprom1340 = sext i32 %523 to i64
  %arrayidx1341 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1340
  %524 = load %union.rec*, %union.rec** %arrayidx1341, align 8
  store %union.rec* %524, %union.rec** @zz_hold, align 8
  store %union.rec* %524, %union.rec** @zz_hold, align 8
  %525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11342 = bitcast %union.rec* %525 to %struct.word_type*
  %olist1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11342, i32 0, i32 0
  %arrayidx1344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1343, i32 0, i64 0
  %opred1345 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1344, i32 0, i32 0
  %526 = load %union.rec*, %union.rec** %opred1345, align 8
  %527 = load i32, i32* @zz_size, align 4
  %idxprom1346 = sext i32 %527 to i64
  %arrayidx1347 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1346
  store %union.rec* %526, %union.rec** %arrayidx1347, align 8
  br label %if.end.1348

if.end.1348:                                      ; preds = %if.else.1339, %if.then.1337
  br label %if.end.1349

if.end.1349:                                      ; preds = %if.end.1348, %if.then.1330
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11350 = bitcast %union.rec* %528 to %struct.word_type*
  %ou11351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11350, i32 0, i32 1
  %os111352 = bitcast %union.FIRST_UNION* %ou11351 to %struct.anon*
  %otype1353 = getelementptr inbounds %struct.anon, %struct.anon* %os111352, i32 0, i32 0
  store i8 0, i8* %otype1353, align 1
  %529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11354 = bitcast %union.rec* %530 to %struct.word_type*
  %olist1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11354, i32 0, i32 0
  %arrayidx1356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1355, i32 0, i64 1
  %osucc1357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1356, i32 0, i32 1
  store %union.rec* %529, %union.rec** %osucc1357, align 8
  %531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11358 = bitcast %union.rec* %531 to %struct.word_type*
  %olist1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1359, i32 0, i64 1
  %opred1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1360, i32 0, i32 0
  store %union.rec* %529, %union.rec** %opred1361, align 8
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11362 = bitcast %union.rec* %532 to %struct.word_type*
  %olist1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11362, i32 0, i32 0
  %arrayidx1364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1363, i32 0, i64 0
  %osucc1365 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1364, i32 0, i32 1
  store %union.rec* %529, %union.rec** %osucc1365, align 8
  %533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11366 = bitcast %union.rec* %533 to %struct.word_type*
  %olist1367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11366, i32 0, i32 0
  %arrayidx1368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1367, i32 0, i64 0
  %opred1369 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1368, i32 0, i32 0
  store %union.rec* %529, %union.rec** %opred1369, align 8
  store %union.rec* %529, %union.rec** @xx_link, align 8
  %534 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %534, %union.rec** @zz_res, align 8
  %535 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %535, %union.rec** @zz_hold, align 8
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1370 = icmp eq %union.rec* %536, null
  br i1 %cmp1370, label %cond.true.1372, label %cond.false.1373

cond.true.1372:                                   ; preds = %if.end.1349
  %537 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1408

cond.false.1373:                                  ; preds = %if.end.1349
  %538 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1374 = icmp eq %union.rec* %538, null
  br i1 %cmp1374, label %cond.true.1376, label %cond.false.1377

cond.true.1376:                                   ; preds = %cond.false.1373
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1406

cond.false.1377:                                  ; preds = %cond.false.1373
  %540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11378 = bitcast %union.rec* %540 to %struct.word_type*
  %olist1379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11378, i32 0, i32 0
  %arrayidx1380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1379, i32 0, i64 0
  %opred1381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1380, i32 0, i32 0
  %541 = load %union.rec*, %union.rec** %opred1381, align 8
  store %union.rec* %541, %union.rec** @zz_tmp, align 8
  %542 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11382 = bitcast %union.rec* %542 to %struct.word_type*
  %olist1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11382, i32 0, i32 0
  %arrayidx1384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1383, i32 0, i64 0
  %opred1385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1384, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %opred1385, align 8
  %544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11386 = bitcast %union.rec* %544 to %struct.word_type*
  %olist1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11386, i32 0, i32 0
  %arrayidx1388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1387, i32 0, i64 0
  %opred1389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1388, i32 0, i32 0
  store %union.rec* %543, %union.rec** %opred1389, align 8
  %545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %546 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11390 = bitcast %union.rec* %546 to %struct.word_type*
  %olist1391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11390, i32 0, i32 0
  %arrayidx1392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1391, i32 0, i64 0
  %opred1393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1392, i32 0, i32 0
  %547 = load %union.rec*, %union.rec** %opred1393, align 8
  %os11394 = bitcast %union.rec* %547 to %struct.word_type*
  %olist1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11394, i32 0, i32 0
  %arrayidx1396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1395, i32 0, i64 0
  %osucc1397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1396, i32 0, i32 1
  store %union.rec* %545, %union.rec** %osucc1397, align 8
  %548 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11398 = bitcast %union.rec* %549 to %struct.word_type*
  %olist1399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11398, i32 0, i32 0
  %arrayidx1400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1399, i32 0, i64 0
  %opred1401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1400, i32 0, i32 0
  store %union.rec* %548, %union.rec** %opred1401, align 8
  %550 = load %union.rec*, %union.rec** @zz_res, align 8
  %551 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11402 = bitcast %union.rec* %551 to %struct.word_type*
  %olist1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11402, i32 0, i32 0
  %arrayidx1404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1403, i32 0, i64 0
  %osucc1405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1404, i32 0, i32 1
  store %union.rec* %550, %union.rec** %osucc1405, align 8
  br label %cond.end.1406

cond.end.1406:                                    ; preds = %cond.false.1377, %cond.true.1376
  %cond1407 = phi %union.rec* [ %539, %cond.true.1376 ], [ %550, %cond.false.1377 ]
  br label %cond.end.1408

cond.end.1408:                                    ; preds = %cond.end.1406, %cond.true.1372
  %cond1409 = phi %union.rec* [ %537, %cond.true.1372 ], [ %cond1407, %cond.end.1406 ]
  %552 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %552, %union.rec** @zz_res, align 8
  %553 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %553, %union.rec** @zz_hold, align 8
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1410 = icmp eq %union.rec* %554, null
  br i1 %cmp1410, label %cond.true.1412, label %cond.false.1413

cond.true.1412:                                   ; preds = %cond.end.1408
  %555 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1448

cond.false.1413:                                  ; preds = %cond.end.1408
  %556 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1414 = icmp eq %union.rec* %556, null
  br i1 %cmp1414, label %cond.true.1416, label %cond.false.1417

cond.true.1416:                                   ; preds = %cond.false.1413
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1446

cond.false.1417:                                  ; preds = %cond.false.1413
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11418 = bitcast %union.rec* %558 to %struct.word_type*
  %olist1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11418, i32 0, i32 0
  %arrayidx1420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1419, i32 0, i64 1
  %opred1421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1420, i32 0, i32 0
  %559 = load %union.rec*, %union.rec** %opred1421, align 8
  store %union.rec* %559, %union.rec** @zz_tmp, align 8
  %560 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11422 = bitcast %union.rec* %560 to %struct.word_type*
  %olist1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11422, i32 0, i32 0
  %arrayidx1424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1423, i32 0, i64 1
  %opred1425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1424, i32 0, i32 0
  %561 = load %union.rec*, %union.rec** %opred1425, align 8
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11426 = bitcast %union.rec* %562 to %struct.word_type*
  %olist1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11426, i32 0, i32 0
  %arrayidx1428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1427, i32 0, i64 1
  %opred1429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1428, i32 0, i32 0
  store %union.rec* %561, %union.rec** %opred1429, align 8
  %563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %564 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11430 = bitcast %union.rec* %564 to %struct.word_type*
  %olist1431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11430, i32 0, i32 0
  %arrayidx1432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1431, i32 0, i64 1
  %opred1433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1432, i32 0, i32 0
  %565 = load %union.rec*, %union.rec** %opred1433, align 8
  %os11434 = bitcast %union.rec* %565 to %struct.word_type*
  %olist1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11434, i32 0, i32 0
  %arrayidx1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1435, i32 0, i64 1
  %osucc1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1436, i32 0, i32 1
  store %union.rec* %563, %union.rec** %osucc1437, align 8
  %566 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %567 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11438 = bitcast %union.rec* %567 to %struct.word_type*
  %olist1439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11438, i32 0, i32 0
  %arrayidx1440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1439, i32 0, i64 1
  %opred1441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1440, i32 0, i32 0
  store %union.rec* %566, %union.rec** %opred1441, align 8
  %568 = load %union.rec*, %union.rec** @zz_res, align 8
  %569 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11442 = bitcast %union.rec* %569 to %struct.word_type*
  %olist1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11442, i32 0, i32 0
  %arrayidx1444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1443, i32 0, i64 1
  %osucc1445 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1444, i32 0, i32 1
  store %union.rec* %568, %union.rec** %osucc1445, align 8
  br label %cond.end.1446

cond.end.1446:                                    ; preds = %cond.false.1417, %cond.true.1416
  %cond1447 = phi %union.rec* [ %557, %cond.true.1416 ], [ %568, %cond.false.1417 ]
  br label %cond.end.1448

cond.end.1448:                                    ; preds = %cond.end.1446, %cond.true.1412
  %cond1449 = phi %union.rec* [ %555, %cond.true.1412 ], [ %cond1447, %cond.end.1446 ]
  %570 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1450 = zext i8 %570 to i32
  store i32 %conv1450, i32* @zz_size, align 4
  %conv1451 = sext i32 %conv1450 to i64
  %cmp1452 = icmp uge i64 %conv1451, 265
  br i1 %cmp1452, label %if.then.1454, label %if.else.1456

if.then.1454:                                     ; preds = %cond.end.1448
  %571 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1455 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %571)
  br label %if.end.1473

if.else.1456:                                     ; preds = %cond.end.1448
  %572 = load i32, i32* @zz_size, align 4
  %idxprom1457 = sext i32 %572 to i64
  %arrayidx1458 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1457
  %573 = load %union.rec*, %union.rec** %arrayidx1458, align 8
  %cmp1459 = icmp eq %union.rec* %573, null
  br i1 %cmp1459, label %if.then.1461, label %if.else.1463

if.then.1461:                                     ; preds = %if.else.1456
  %574 = load i32, i32* @zz_size, align 4
  %575 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1462 = call %union.rec* @GetMemory(i32 %574, %struct.FILE_POS* %575)
  store %union.rec* %call1462, %union.rec** @zz_hold, align 8
  br label %if.end.1472

if.else.1463:                                     ; preds = %if.else.1456
  %576 = load i32, i32* @zz_size, align 4
  %idxprom1464 = sext i32 %576 to i64
  %arrayidx1465 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1464
  %577 = load %union.rec*, %union.rec** %arrayidx1465, align 8
  store %union.rec* %577, %union.rec** @zz_hold, align 8
  store %union.rec* %577, %union.rec** @zz_hold, align 8
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11466 = bitcast %union.rec* %578 to %struct.word_type*
  %olist1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11466, i32 0, i32 0
  %arrayidx1468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1467, i32 0, i64 0
  %opred1469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1468, i32 0, i32 0
  %579 = load %union.rec*, %union.rec** %opred1469, align 8
  %580 = load i32, i32* @zz_size, align 4
  %idxprom1470 = sext i32 %580 to i64
  %arrayidx1471 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1470
  store %union.rec* %579, %union.rec** %arrayidx1471, align 8
  br label %if.end.1472

if.end.1472:                                      ; preds = %if.else.1463, %if.then.1461
  br label %if.end.1473

if.end.1473:                                      ; preds = %if.end.1472, %if.then.1454
  %581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11474 = bitcast %union.rec* %581 to %struct.word_type*
  %ou11475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11474, i32 0, i32 1
  %os111476 = bitcast %union.FIRST_UNION* %ou11475 to %struct.anon*
  %otype1477 = getelementptr inbounds %struct.anon, %struct.anon* %os111476, i32 0, i32 0
  store i8 0, i8* %otype1477, align 1
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11478 = bitcast %union.rec* %583 to %struct.word_type*
  %olist1479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11478, i32 0, i32 0
  %arrayidx1480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1479, i32 0, i64 1
  %osucc1481 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1480, i32 0, i32 1
  store %union.rec* %582, %union.rec** %osucc1481, align 8
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11482 = bitcast %union.rec* %584 to %struct.word_type*
  %olist1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11482, i32 0, i32 0
  %arrayidx1484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1483, i32 0, i64 1
  %opred1485 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1484, i32 0, i32 0
  store %union.rec* %582, %union.rec** %opred1485, align 8
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11486 = bitcast %union.rec* %585 to %struct.word_type*
  %olist1487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11486, i32 0, i32 0
  %arrayidx1488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1487, i32 0, i64 0
  %osucc1489 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1488, i32 0, i32 1
  store %union.rec* %582, %union.rec** %osucc1489, align 8
  %586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11490 = bitcast %union.rec* %586 to %struct.word_type*
  %olist1491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11490, i32 0, i32 0
  %arrayidx1492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1491, i32 0, i64 0
  %opred1493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1492, i32 0, i32 0
  store %union.rec* %582, %union.rec** %opred1493, align 8
  store %union.rec* %582, %union.rec** @xx_link, align 8
  %587 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %587, %union.rec** @zz_res, align 8
  %588 = load %union.rec*, %union.rec** %hd_index, align 8
  %os11494 = bitcast %union.rec* %588 to %struct.word_type*
  %olist1495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11494, i32 0, i32 0
  %arrayidx1496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1495, i32 0, i64 1
  %osucc1497 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1496, i32 0, i32 1
  %589 = load %union.rec*, %union.rec** %osucc1497, align 8
  store %union.rec* %589, %union.rec** @zz_hold, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1498 = icmp eq %union.rec* %590, null
  br i1 %cmp1498, label %cond.true.1500, label %cond.false.1501

cond.true.1500:                                   ; preds = %if.end.1473
  %591 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1536

cond.false.1501:                                  ; preds = %if.end.1473
  %592 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1502 = icmp eq %union.rec* %592, null
  br i1 %cmp1502, label %cond.true.1504, label %cond.false.1505

cond.true.1504:                                   ; preds = %cond.false.1501
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1534

cond.false.1505:                                  ; preds = %cond.false.1501
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11506 = bitcast %union.rec* %594 to %struct.word_type*
  %olist1507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11506, i32 0, i32 0
  %arrayidx1508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1507, i32 0, i64 0
  %opred1509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1508, i32 0, i32 0
  %595 = load %union.rec*, %union.rec** %opred1509, align 8
  store %union.rec* %595, %union.rec** @zz_tmp, align 8
  %596 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11510 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11510, i32 0, i32 0
  %arrayidx1512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1511, i32 0, i64 0
  %opred1513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1512, i32 0, i32 0
  %597 = load %union.rec*, %union.rec** %opred1513, align 8
  %598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11514 = bitcast %union.rec* %598 to %struct.word_type*
  %olist1515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11514, i32 0, i32 0
  %arrayidx1516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1515, i32 0, i64 0
  %opred1517 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1516, i32 0, i32 0
  store %union.rec* %597, %union.rec** %opred1517, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11518 = bitcast %union.rec* %600 to %struct.word_type*
  %olist1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11518, i32 0, i32 0
  %arrayidx1520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1519, i32 0, i64 0
  %opred1521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1520, i32 0, i32 0
  %601 = load %union.rec*, %union.rec** %opred1521, align 8
  %os11522 = bitcast %union.rec* %601 to %struct.word_type*
  %olist1523 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11522, i32 0, i32 0
  %arrayidx1524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1523, i32 0, i64 0
  %osucc1525 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1524, i32 0, i32 1
  store %union.rec* %599, %union.rec** %osucc1525, align 8
  %602 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %603 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11526 = bitcast %union.rec* %603 to %struct.word_type*
  %olist1527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11526, i32 0, i32 0
  %arrayidx1528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1527, i32 0, i64 0
  %opred1529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1528, i32 0, i32 0
  store %union.rec* %602, %union.rec** %opred1529, align 8
  %604 = load %union.rec*, %union.rec** @zz_res, align 8
  %605 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11530 = bitcast %union.rec* %605 to %struct.word_type*
  %olist1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11530, i32 0, i32 0
  %arrayidx1532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1531, i32 0, i64 0
  %osucc1533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1532, i32 0, i32 1
  store %union.rec* %604, %union.rec** %osucc1533, align 8
  br label %cond.end.1534

cond.end.1534:                                    ; preds = %cond.false.1505, %cond.true.1504
  %cond1535 = phi %union.rec* [ %593, %cond.true.1504 ], [ %604, %cond.false.1505 ]
  br label %cond.end.1536

cond.end.1536:                                    ; preds = %cond.end.1534, %cond.true.1500
  %cond1537 = phi %union.rec* [ %591, %cond.true.1500 ], [ %cond1535, %cond.end.1534 ]
  %606 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %606, %union.rec** @zz_res, align 8
  %607 = load %union.rec*, %union.rec** %index1, align 8
  store %union.rec* %607, %union.rec** @zz_hold, align 8
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1538 = icmp eq %union.rec* %608, null
  br i1 %cmp1538, label %cond.true.1540, label %cond.false.1541

cond.true.1540:                                   ; preds = %cond.end.1536
  %609 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1576

cond.false.1541:                                  ; preds = %cond.end.1536
  %610 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1542 = icmp eq %union.rec* %610, null
  br i1 %cmp1542, label %cond.true.1544, label %cond.false.1545

cond.true.1544:                                   ; preds = %cond.false.1541
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1574

cond.false.1545:                                  ; preds = %cond.false.1541
  %612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11546 = bitcast %union.rec* %612 to %struct.word_type*
  %olist1547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11546, i32 0, i32 0
  %arrayidx1548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1547, i32 0, i64 1
  %opred1549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1548, i32 0, i32 0
  %613 = load %union.rec*, %union.rec** %opred1549, align 8
  store %union.rec* %613, %union.rec** @zz_tmp, align 8
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11550 = bitcast %union.rec* %614 to %struct.word_type*
  %olist1551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11550, i32 0, i32 0
  %arrayidx1552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1551, i32 0, i64 1
  %opred1553 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1552, i32 0, i32 0
  %615 = load %union.rec*, %union.rec** %opred1553, align 8
  %616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11554 = bitcast %union.rec* %616 to %struct.word_type*
  %olist1555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11554, i32 0, i32 0
  %arrayidx1556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1555, i32 0, i64 1
  %opred1557 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1556, i32 0, i32 0
  store %union.rec* %615, %union.rec** %opred1557, align 8
  %617 = load %union.rec*, %union.rec** @zz_hold, align 8
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11558 = bitcast %union.rec* %618 to %struct.word_type*
  %olist1559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11558, i32 0, i32 0
  %arrayidx1560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1559, i32 0, i64 1
  %opred1561 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1560, i32 0, i32 0
  %619 = load %union.rec*, %union.rec** %opred1561, align 8
  %os11562 = bitcast %union.rec* %619 to %struct.word_type*
  %olist1563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11562, i32 0, i32 0
  %arrayidx1564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1563, i32 0, i64 1
  %osucc1565 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1564, i32 0, i32 1
  store %union.rec* %617, %union.rec** %osucc1565, align 8
  %620 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %621 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11566 = bitcast %union.rec* %621 to %struct.word_type*
  %olist1567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11566, i32 0, i32 0
  %arrayidx1568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1567, i32 0, i64 1
  %opred1569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1568, i32 0, i32 0
  store %union.rec* %620, %union.rec** %opred1569, align 8
  %622 = load %union.rec*, %union.rec** @zz_res, align 8
  %623 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11570 = bitcast %union.rec* %623 to %struct.word_type*
  %olist1571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11570, i32 0, i32 0
  %arrayidx1572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1571, i32 0, i64 1
  %osucc1573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1572, i32 0, i32 1
  store %union.rec* %622, %union.rec** %osucc1573, align 8
  br label %cond.end.1574

cond.end.1574:                                    ; preds = %cond.false.1545, %cond.true.1544
  %cond1575 = phi %union.rec* [ %611, %cond.true.1544 ], [ %622, %cond.false.1545 ]
  br label %cond.end.1576

cond.end.1576:                                    ; preds = %cond.end.1574, %cond.true.1540
  %cond1577 = phi %union.rec* [ %609, %cond.true.1540 ], [ %cond1575, %cond.end.1574 ]
  %624 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1578 = zext i8 %624 to i32
  store i32 %conv1578, i32* @zz_size, align 4
  %conv1579 = sext i32 %conv1578 to i64
  %cmp1580 = icmp uge i64 %conv1579, 265
  br i1 %cmp1580, label %if.then.1582, label %if.else.1584

if.then.1582:                                     ; preds = %cond.end.1576
  %625 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1583 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %625)
  br label %if.end.1601

if.else.1584:                                     ; preds = %cond.end.1576
  %626 = load i32, i32* @zz_size, align 4
  %idxprom1585 = sext i32 %626 to i64
  %arrayidx1586 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1585
  %627 = load %union.rec*, %union.rec** %arrayidx1586, align 8
  %cmp1587 = icmp eq %union.rec* %627, null
  br i1 %cmp1587, label %if.then.1589, label %if.else.1591

if.then.1589:                                     ; preds = %if.else.1584
  %628 = load i32, i32* @zz_size, align 4
  %629 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1590 = call %union.rec* @GetMemory(i32 %628, %struct.FILE_POS* %629)
  store %union.rec* %call1590, %union.rec** @zz_hold, align 8
  br label %if.end.1600

if.else.1591:                                     ; preds = %if.else.1584
  %630 = load i32, i32* @zz_size, align 4
  %idxprom1592 = sext i32 %630 to i64
  %arrayidx1593 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1592
  %631 = load %union.rec*, %union.rec** %arrayidx1593, align 8
  store %union.rec* %631, %union.rec** @zz_hold, align 8
  store %union.rec* %631, %union.rec** @zz_hold, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11594 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11594, i32 0, i32 0
  %arrayidx1596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1595, i32 0, i64 0
  %opred1597 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1596, i32 0, i32 0
  %633 = load %union.rec*, %union.rec** %opred1597, align 8
  %634 = load i32, i32* @zz_size, align 4
  %idxprom1598 = sext i32 %634 to i64
  %arrayidx1599 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1598
  store %union.rec* %633, %union.rec** %arrayidx1599, align 8
  br label %if.end.1600

if.end.1600:                                      ; preds = %if.else.1591, %if.then.1589
  br label %if.end.1601

if.end.1601:                                      ; preds = %if.end.1600, %if.then.1582
  %635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11602 = bitcast %union.rec* %635 to %struct.word_type*
  %ou11603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11602, i32 0, i32 1
  %os111604 = bitcast %union.FIRST_UNION* %ou11603 to %struct.anon*
  %otype1605 = getelementptr inbounds %struct.anon, %struct.anon* %os111604, i32 0, i32 0
  store i8 0, i8* %otype1605, align 1
  %636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11606 = bitcast %union.rec* %637 to %struct.word_type*
  %olist1607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11606, i32 0, i32 0
  %arrayidx1608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1607, i32 0, i64 1
  %osucc1609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1608, i32 0, i32 1
  store %union.rec* %636, %union.rec** %osucc1609, align 8
  %638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11610 = bitcast %union.rec* %638 to %struct.word_type*
  %olist1611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11610, i32 0, i32 0
  %arrayidx1612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1611, i32 0, i64 1
  %opred1613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1612, i32 0, i32 0
  store %union.rec* %636, %union.rec** %opred1613, align 8
  %639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11614 = bitcast %union.rec* %639 to %struct.word_type*
  %olist1615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11614, i32 0, i32 0
  %arrayidx1616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1615, i32 0, i64 0
  %osucc1617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1616, i32 0, i32 1
  store %union.rec* %636, %union.rec** %osucc1617, align 8
  %640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11618 = bitcast %union.rec* %640 to %struct.word_type*
  %olist1619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11618, i32 0, i32 0
  %arrayidx1620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1619, i32 0, i64 0
  %opred1621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1620, i32 0, i32 0
  store %union.rec* %636, %union.rec** %opred1621, align 8
  store %union.rec* %636, %union.rec** @xx_link, align 8
  %641 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %641, %union.rec** @zz_res, align 8
  %642 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11622 = bitcast %union.rec* %642 to %struct.word_type*
  %olist1623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11622, i32 0, i32 0
  %arrayidx1624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1623, i32 0, i64 0
  %osucc1625 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1624, i32 0, i32 1
  %643 = load %union.rec*, %union.rec** %osucc1625, align 8
  store %union.rec* %643, %union.rec** @zz_hold, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1626 = icmp eq %union.rec* %644, null
  br i1 %cmp1626, label %cond.true.1628, label %cond.false.1629

cond.true.1628:                                   ; preds = %if.end.1601
  %645 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1665

cond.false.1629:                                  ; preds = %if.end.1601
  %646 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1630 = icmp eq %union.rec* %646, null
  br i1 %cmp1630, label %cond.true.1632, label %cond.false.1633

cond.true.1632:                                   ; preds = %cond.false.1629
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1663

cond.false.1633:                                  ; preds = %cond.false.1629
  %648 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11634 = bitcast %union.rec* %648 to %struct.word_type*
  %olist1635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11634, i32 0, i32 0
  %arrayidx1636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1635, i32 0, i64 0
  %opred1637 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1636, i32 0, i32 0
  %649 = load %union.rec*, %union.rec** %opred1637, align 8
  store %union.rec* %649, %union.rec** @zz_tmp, align 8
  %650 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11639 = bitcast %union.rec* %650 to %struct.word_type*
  %olist1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11639, i32 0, i32 0
  %arrayidx1641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1640, i32 0, i64 0
  %opred1642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1641, i32 0, i32 0
  %651 = load %union.rec*, %union.rec** %opred1642, align 8
  %652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11643 = bitcast %union.rec* %652 to %struct.word_type*
  %olist1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11643, i32 0, i32 0
  %arrayidx1645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1644, i32 0, i64 0
  %opred1646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1645, i32 0, i32 0
  store %union.rec* %651, %union.rec** %opred1646, align 8
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %654 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11647 = bitcast %union.rec* %654 to %struct.word_type*
  %olist1648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11647, i32 0, i32 0
  %arrayidx1649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1648, i32 0, i64 0
  %opred1650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1649, i32 0, i32 0
  %655 = load %union.rec*, %union.rec** %opred1650, align 8
  %os11651 = bitcast %union.rec* %655 to %struct.word_type*
  %olist1652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11651, i32 0, i32 0
  %arrayidx1653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1652, i32 0, i64 0
  %osucc1654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1653, i32 0, i32 1
  store %union.rec* %653, %union.rec** %osucc1654, align 8
  %656 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %657 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11655 = bitcast %union.rec* %657 to %struct.word_type*
  %olist1656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11655, i32 0, i32 0
  %arrayidx1657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1656, i32 0, i64 0
  %opred1658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1657, i32 0, i32 0
  store %union.rec* %656, %union.rec** %opred1658, align 8
  %658 = load %union.rec*, %union.rec** @zz_res, align 8
  %659 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11659 = bitcast %union.rec* %659 to %struct.word_type*
  %olist1660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11659, i32 0, i32 0
  %arrayidx1661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1660, i32 0, i64 0
  %osucc1662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1661, i32 0, i32 1
  store %union.rec* %658, %union.rec** %osucc1662, align 8
  br label %cond.end.1663

cond.end.1663:                                    ; preds = %cond.false.1633, %cond.true.1632
  %cond1664 = phi %union.rec* [ %647, %cond.true.1632 ], [ %658, %cond.false.1633 ]
  br label %cond.end.1665

cond.end.1665:                                    ; preds = %cond.end.1663, %cond.true.1628
  %cond1666 = phi %union.rec* [ %645, %cond.true.1628 ], [ %cond1664, %cond.end.1663 ]
  %660 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %660, %union.rec** @zz_res, align 8
  %661 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %661, %union.rec** @zz_hold, align 8
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1667 = icmp eq %union.rec* %662, null
  br i1 %cmp1667, label %cond.true.1669, label %cond.false.1670

cond.true.1669:                                   ; preds = %cond.end.1665
  %663 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1705

cond.false.1670:                                  ; preds = %cond.end.1665
  %664 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1671 = icmp eq %union.rec* %664, null
  br i1 %cmp1671, label %cond.true.1673, label %cond.false.1674

cond.true.1673:                                   ; preds = %cond.false.1670
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1703

cond.false.1674:                                  ; preds = %cond.false.1670
  %666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11675 = bitcast %union.rec* %666 to %struct.word_type*
  %olist1676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11675, i32 0, i32 0
  %arrayidx1677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1676, i32 0, i64 1
  %opred1678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1677, i32 0, i32 0
  %667 = load %union.rec*, %union.rec** %opred1678, align 8
  store %union.rec* %667, %union.rec** @zz_tmp, align 8
  %668 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11679 = bitcast %union.rec* %668 to %struct.word_type*
  %olist1680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11679, i32 0, i32 0
  %arrayidx1681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1680, i32 0, i64 1
  %opred1682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1681, i32 0, i32 0
  %669 = load %union.rec*, %union.rec** %opred1682, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11683 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11683, i32 0, i32 0
  %arrayidx1685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1684, i32 0, i64 1
  %opred1686 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1685, i32 0, i32 0
  store %union.rec* %669, %union.rec** %opred1686, align 8
  %671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %672 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11687 = bitcast %union.rec* %672 to %struct.word_type*
  %olist1688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11687, i32 0, i32 0
  %arrayidx1689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1688, i32 0, i64 1
  %opred1690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1689, i32 0, i32 0
  %673 = load %union.rec*, %union.rec** %opred1690, align 8
  %os11691 = bitcast %union.rec* %673 to %struct.word_type*
  %olist1692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11691, i32 0, i32 0
  %arrayidx1693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1692, i32 0, i64 1
  %osucc1694 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1693, i32 0, i32 1
  store %union.rec* %671, %union.rec** %osucc1694, align 8
  %674 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %675 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11695 = bitcast %union.rec* %675 to %struct.word_type*
  %olist1696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11695, i32 0, i32 0
  %arrayidx1697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1696, i32 0, i64 1
  %opred1698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1697, i32 0, i32 0
  store %union.rec* %674, %union.rec** %opred1698, align 8
  %676 = load %union.rec*, %union.rec** @zz_res, align 8
  %677 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11699 = bitcast %union.rec* %677 to %struct.word_type*
  %olist1700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11699, i32 0, i32 0
  %arrayidx1701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1700, i32 0, i64 1
  %osucc1702 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1701, i32 0, i32 1
  store %union.rec* %676, %union.rec** %osucc1702, align 8
  br label %cond.end.1703

cond.end.1703:                                    ; preds = %cond.false.1674, %cond.true.1673
  %cond1704 = phi %union.rec* [ %665, %cond.true.1673 ], [ %676, %cond.false.1674 ]
  br label %cond.end.1705

cond.end.1705:                                    ; preds = %cond.end.1703, %cond.true.1669
  %cond1706 = phi %union.rec* [ %663, %cond.true.1669 ], [ %cond1704, %cond.end.1703 ]
  br label %if.end.1707

if.end.1707:                                      ; preds = %cond.end.1705, %if.end.1102
  call void @LeaveErrorBlock(i32 1)
  br label %if.end.1708

if.end.1708:                                      ; preds = %if.end.1707, %if.end.1040
  %678 = load i32, i32* %dim, align 4
  %cmp1709 = icmp eq i32 %678, 1
  br i1 %cmp1709, label %if.then.1711, label %if.end.1759

if.then.1711:                                     ; preds = %if.end.1708
  %679 = load i32, i32* %dim, align 4
  %sub1712 = sub nsw i32 1, %679
  %idxprom1713 = sext i32 %sub1712 to i64
  %680 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11714 = bitcast %union.rec* %680 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11714, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx1715 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom1713
  %681 = load i32, i32* %arrayidx1715, align 4
  %obc1716 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %682 = load i32, i32* %obc1716, align 4
  %cmp1717 = icmp sle i32 %681, %682
  br i1 %cmp1717, label %land.lhs.true.1719, label %if.then.1747

land.lhs.true.1719:                               ; preds = %if.then.1711
  %683 = load i32, i32* %dim, align 4
  %sub1720 = sub nsw i32 1, %683
  %idxprom1721 = sext i32 %sub1720 to i64
  %684 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11722 = bitcast %union.rec* %684 to %struct.word_type*
  %ou31723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11722, i32 0, i32 3
  %os311724 = bitcast %union.THIRD_UNION* %ou31723 to %struct.anon.6*
  %oback1725 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311724, i32 0, i32 0
  %arrayidx1726 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1725, i32 0, i64 %idxprom1721
  %685 = load i32, i32* %arrayidx1726, align 4
  %686 = load i32, i32* %dim, align 4
  %sub1727 = sub nsw i32 1, %686
  %idxprom1728 = sext i32 %sub1727 to i64
  %687 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11729 = bitcast %union.rec* %687 to %struct.word_type*
  %ou31730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11729, i32 0, i32 3
  %os311731 = bitcast %union.THIRD_UNION* %ou31730 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311731, i32 0, i32 1
  %arrayidx1732 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom1728
  %688 = load i32, i32* %arrayidx1732, align 4
  %add = add nsw i32 %685, %688
  %obfc1733 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %689 = load i32, i32* %obfc1733, align 4
  %cmp1734 = icmp sle i32 %add, %689
  br i1 %cmp1734, label %land.lhs.true.1736, label %if.then.1747

land.lhs.true.1736:                               ; preds = %land.lhs.true.1719
  %690 = load i32, i32* %dim, align 4
  %sub1737 = sub nsw i32 1, %690
  %idxprom1738 = sext i32 %sub1737 to i64
  %691 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11739 = bitcast %union.rec* %691 to %struct.word_type*
  %ou31740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11739, i32 0, i32 3
  %os311741 = bitcast %union.THIRD_UNION* %ou31740 to %struct.anon.6*
  %ofwd1742 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311741, i32 0, i32 1
  %arrayidx1743 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1742, i32 0, i64 %idxprom1738
  %692 = load i32, i32* %arrayidx1743, align 4
  %ofc1744 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %693 = load i32, i32* %ofc1744, align 4
  %cmp1745 = icmp sle i32 %692, %693
  br i1 %cmp1745, label %if.end.1758, label %if.then.1747

if.then.1747:                                     ; preds = %land.lhs.true.1736, %land.lhs.true.1719, %if.then.1711
  %694 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11748 = bitcast %union.rec* %694 to %struct.word_type*
  %ou11749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11748, i32 0, i32 1
  %ofpos1750 = bitcast %union.FIRST_UNION* %ou11749 to %struct.FILE_POS*
  %695 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os21751 = bitcast %union.rec* %695 to %struct.closure_type*
  %oactual1752 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21751, i32 0, i32 5
  %696 = load %union.rec*, %union.rec** %oactual1752, align 8
  %call1753 = call i8* @SymName(%union.rec* %696)
  %697 = load %union.rec*, %union.rec** %dest, align 8
  %os21754 = bitcast %union.rec* %697 to %struct.closure_type*
  %oactual1755 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21754, i32 0, i32 5
  %698 = load %union.rec*, %union.rec** %oactual1755, align 8
  %call1756 = call i8* @SymName(%union.rec* %698)
  %call1757 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1750, i8* %call1753, i8* %call1756)
  br label %REJECT

if.end.1758:                                      ; preds = %land.lhs.true.1736
  br label %if.end.1759

if.end.1759:                                      ; preds = %if.end.1758, %if.end.1708
  %699 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11760 = bitcast %union.rec* %699 to %struct.word_type*
  %olist1761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11760, i32 0, i32 0
  %arrayidx1762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1761, i32 0, i64 0
  %osucc1763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1762, i32 0, i32 1
  %700 = load %union.rec*, %union.rec** %osucc1763, align 8
  store %union.rec* %700, %union.rec** %link, align 8
  br label %for.cond.1764

for.cond.1764:                                    ; preds = %for.inc.4349, %if.end.1759
  %701 = load %union.rec*, %union.rec** %link, align 8
  %702 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp1765 = icmp ne %union.rec* %701, %702
  br i1 %cmp1765, label %for.body.1767, label %for.end.4354

for.body.1767:                                    ; preds = %for.cond.1764
  %703 = load %union.rec*, %union.rec** %link, align 8
  %os11768 = bitcast %union.rec* %703 to %struct.word_type*
  %olist1769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11768, i32 0, i32 0
  %arrayidx1770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1769, i32 0, i64 1
  %opred1771 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1770, i32 0, i32 0
  %704 = load %union.rec*, %union.rec** %opred1771, align 8
  store %union.rec* %704, %union.rec** %y, align 8
  br label %for.cond.1772

for.cond.1772:                                    ; preds = %for.inc.1781, %for.body.1767
  %705 = load %union.rec*, %union.rec** %y, align 8
  %os11773 = bitcast %union.rec* %705 to %struct.word_type*
  %ou11774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11773, i32 0, i32 1
  %os111775 = bitcast %union.FIRST_UNION* %ou11774 to %struct.anon*
  %otype1776 = getelementptr inbounds %struct.anon, %struct.anon* %os111775, i32 0, i32 0
  %706 = load i8, i8* %otype1776, align 1
  %conv1777 = zext i8 %706 to i32
  %cmp1778 = icmp eq i32 %conv1777, 0
  br i1 %cmp1778, label %for.body.1780, label %for.end.1786

for.body.1780:                                    ; preds = %for.cond.1772
  br label %for.inc.1781

for.inc.1781:                                     ; preds = %for.body.1780
  %707 = load %union.rec*, %union.rec** %y, align 8
  %os11782 = bitcast %union.rec* %707 to %struct.word_type*
  %olist1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11782, i32 0, i32 0
  %arrayidx1784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1783, i32 0, i64 1
  %opred1785 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1784, i32 0, i32 0
  %708 = load %union.rec*, %union.rec** %opred1785, align 8
  store %union.rec* %708, %union.rec** %y, align 8
  br label %for.cond.1772

for.end.1786:                                     ; preds = %for.cond.1772
  %709 = load %union.rec*, %union.rec** %y, align 8
  %os11787 = bitcast %union.rec* %709 to %struct.word_type*
  %ou11788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11787, i32 0, i32 1
  %os111789 = bitcast %union.FIRST_UNION* %ou11788 to %struct.anon*
  %otype1790 = getelementptr inbounds %struct.anon, %struct.anon* %os111789, i32 0, i32 0
  %710 = load i8, i8* %otype1790, align 1
  %conv1791 = zext i8 %710 to i32
  %cmp1792 = icmp eq i32 %conv1791, 9
  br i1 %cmp1792, label %if.then.1794, label %if.end.1828

if.then.1794:                                     ; preds = %for.end.1786
  %711 = load i32, i32* %dim, align 4
  %cmp1795 = icmp eq i32 %711, 0
  br i1 %cmp1795, label %cond.true.1797, label %cond.false.1802

cond.true.1797:                                   ; preds = %if.then.1794
  %712 = load %union.rec*, %union.rec** %y, align 8
  %os11798 = bitcast %union.rec* %712 to %struct.word_type*
  %olist1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11798, i32 0, i32 0
  %arrayidx1800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1799, i32 0, i64 0
  %osucc1801 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1800, i32 0, i32 1
  %713 = load %union.rec*, %union.rec** %osucc1801, align 8
  br label %cond.end.1807

cond.false.1802:                                  ; preds = %if.then.1794
  %714 = load %union.rec*, %union.rec** %y, align 8
  %os11803 = bitcast %union.rec* %714 to %struct.word_type*
  %olist1804 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11803, i32 0, i32 0
  %arrayidx1805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1804, i32 0, i64 0
  %opred1806 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1805, i32 0, i32 0
  %715 = load %union.rec*, %union.rec** %opred1806, align 8
  br label %cond.end.1807

cond.end.1807:                                    ; preds = %cond.false.1802, %cond.true.1797
  %cond1808 = phi %union.rec* [ %713, %cond.true.1797 ], [ %715, %cond.false.1802 ]
  %os11809 = bitcast %union.rec* %cond1808 to %struct.word_type*
  %olist1810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11809, i32 0, i32 0
  %arrayidx1811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1810, i32 0, i64 1
  %opred1812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1811, i32 0, i32 0
  %716 = load %union.rec*, %union.rec** %opred1812, align 8
  store %union.rec* %716, %union.rec** %y, align 8
  br label %for.cond.1813

for.cond.1813:                                    ; preds = %for.inc.1822, %cond.end.1807
  %717 = load %union.rec*, %union.rec** %y, align 8
  %os11814 = bitcast %union.rec* %717 to %struct.word_type*
  %ou11815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11814, i32 0, i32 1
  %os111816 = bitcast %union.FIRST_UNION* %ou11815 to %struct.anon*
  %otype1817 = getelementptr inbounds %struct.anon, %struct.anon* %os111816, i32 0, i32 0
  %718 = load i8, i8* %otype1817, align 1
  %conv1818 = zext i8 %718 to i32
  %cmp1819 = icmp eq i32 %conv1818, 0
  br i1 %cmp1819, label %for.body.1821, label %for.end.1827

for.body.1821:                                    ; preds = %for.cond.1813
  br label %for.inc.1822

for.inc.1822:                                     ; preds = %for.body.1821
  %719 = load %union.rec*, %union.rec** %y, align 8
  %os11823 = bitcast %union.rec* %719 to %struct.word_type*
  %olist1824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11823, i32 0, i32 0
  %arrayidx1825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1824, i32 0, i64 1
  %opred1826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1825, i32 0, i32 0
  %720 = load %union.rec*, %union.rec** %opred1826, align 8
  store %union.rec* %720, %union.rec** %y, align 8
  br label %for.cond.1813

for.end.1827:                                     ; preds = %for.cond.1813
  br label %if.end.1828

if.end.1828:                                      ; preds = %for.end.1827, %for.end.1786
  %721 = load %union.rec*, %union.rec** %y, align 8
  %os11829 = bitcast %union.rec* %721 to %struct.word_type*
  %ou11830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11829, i32 0, i32 1
  %os111831 = bitcast %union.FIRST_UNION* %ou11830 to %struct.anon*
  %otype1832 = getelementptr inbounds %struct.anon, %struct.anon* %os111831, i32 0, i32 0
  %722 = load i8, i8* %otype1832, align 1
  %conv1833 = zext i8 %722 to i32
  switch i32 %conv1833, label %sw.default.4340 [
    i32 138, label %sw.bb
    i32 136, label %sw.bb
    i32 137, label %sw.bb
    i32 133, label %sw.bb
    i32 129, label %sw.bb
    i32 130, label %sw.bb
    i32 132, label %sw.bb
    i32 134, label %sw.bb
    i32 127, label %sw.bb
    i32 128, label %sw.bb
    i32 131, label %sw.bb
    i32 135, label %sw.bb
    i32 124, label %sw.bb.1834
    i32 120, label %sw.bb.1834
    i32 121, label %sw.bb.2010
    i32 122, label %sw.bb.2011
    i32 125, label %sw.bb.2012
    i32 1, label %sw.bb.2645
    i32 20, label %sw.bb.2674
    i32 21, label %sw.bb.2674
    i32 22, label %sw.bb.2674
    i32 23, label %sw.bb.2674
    i32 2, label %sw.bb.2689
    i32 6, label %sw.bb.2689
    i32 7, label %sw.bb.2689
    i32 5, label %sw.bb.2689
    i32 4, label %sw.bb.2689
    i32 11, label %sw.bb.2704
    i32 12, label %sw.bb.2704
    i32 24, label %sw.bb.2704
    i32 25, label %sw.bb.2704
    i32 26, label %sw.bb.2704
    i32 27, label %sw.bb.2704
    i32 28, label %sw.bb.2704
    i32 29, label %sw.bb.2704
    i32 30, label %sw.bb.2704
    i32 31, label %sw.bb.2704
    i32 32, label %sw.bb.2704
    i32 33, label %sw.bb.2704
    i32 36, label %sw.bb.2704
    i32 37, label %sw.bb.2704
    i32 38, label %sw.bb.2704
    i32 39, label %sw.bb.2704
    i32 40, label %sw.bb.2704
    i32 41, label %sw.bb.2704
    i32 44, label %sw.bb.2704
    i32 42, label %sw.bb.2704
    i32 43, label %sw.bb.2704
    i32 45, label %sw.bb.2704
    i32 46, label %sw.bb.2704
    i32 50, label %sw.bb.2704
    i32 51, label %sw.bb.2704
    i32 34, label %sw.bb.2704
    i32 35, label %sw.bb.2704
    i32 94, label %sw.bb.2704
    i32 95, label %sw.bb.2704
    i32 96, label %sw.bb.2704
    i32 97, label %sw.bb.2704
    i32 98, label %sw.bb.2704
    i32 99, label %sw.bb.2704
    i32 17, label %sw.bb.2704
    i32 18, label %sw.bb.2704
    i32 19, label %sw.bb.2704
    i32 15, label %sw.bb.2704
    i32 16, label %sw.bb.2704
  ]

sw.bb:                                            ; preds = %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828
  br label %sw.epilog.4348

sw.bb.1834:                                       ; preds = %if.end.1828, %if.end.1828
  %723 = load i32, i32* %was_sized, align 4
  %tobool1835 = icmp ne i32 %723, 0
  br i1 %tobool1835, label %if.then.1836, label %if.end.2009

if.then.1836:                                     ; preds = %sw.bb.1834
  %724 = load %union.rec*, %union.rec** %hd_inners, align 8
  %cmp1837 = icmp eq %union.rec* %724, null
  br i1 %cmp1837, label %if.then.1839, label %if.end.1884

if.then.1839:                                     ; preds = %if.then.1836
  %725 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv1840 = zext i8 %725 to i32
  store i32 %conv1840, i32* @zz_size, align 4
  %conv1841 = sext i32 %conv1840 to i64
  %cmp1842 = icmp uge i64 %conv1841, 265
  br i1 %cmp1842, label %if.then.1844, label %if.else.1846

if.then.1844:                                     ; preds = %if.then.1839
  %726 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1845 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %726)
  br label %if.end.1863

if.else.1846:                                     ; preds = %if.then.1839
  %727 = load i32, i32* @zz_size, align 4
  %idxprom1847 = sext i32 %727 to i64
  %arrayidx1848 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1847
  %728 = load %union.rec*, %union.rec** %arrayidx1848, align 8
  %cmp1849 = icmp eq %union.rec* %728, null
  br i1 %cmp1849, label %if.then.1851, label %if.else.1853

if.then.1851:                                     ; preds = %if.else.1846
  %729 = load i32, i32* @zz_size, align 4
  %730 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1852 = call %union.rec* @GetMemory(i32 %729, %struct.FILE_POS* %730)
  store %union.rec* %call1852, %union.rec** @zz_hold, align 8
  br label %if.end.1862

if.else.1853:                                     ; preds = %if.else.1846
  %731 = load i32, i32* @zz_size, align 4
  %idxprom1854 = sext i32 %731 to i64
  %arrayidx1855 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1854
  %732 = load %union.rec*, %union.rec** %arrayidx1855, align 8
  store %union.rec* %732, %union.rec** @zz_hold, align 8
  store %union.rec* %732, %union.rec** @zz_hold, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11856 = bitcast %union.rec* %733 to %struct.word_type*
  %olist1857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11856, i32 0, i32 0
  %arrayidx1858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1857, i32 0, i64 0
  %opred1859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1858, i32 0, i32 0
  %734 = load %union.rec*, %union.rec** %opred1859, align 8
  %735 = load i32, i32* @zz_size, align 4
  %idxprom1860 = sext i32 %735 to i64
  %arrayidx1861 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1860
  store %union.rec* %734, %union.rec** %arrayidx1861, align 8
  br label %if.end.1862

if.end.1862:                                      ; preds = %if.else.1853, %if.then.1851
  br label %if.end.1863

if.end.1863:                                      ; preds = %if.end.1862, %if.then.1844
  %736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11864 = bitcast %union.rec* %736 to %struct.word_type*
  %ou11865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11864, i32 0, i32 1
  %os111866 = bitcast %union.FIRST_UNION* %ou11865 to %struct.anon*
  %otype1867 = getelementptr inbounds %struct.anon, %struct.anon* %os111866, i32 0, i32 0
  store i8 17, i8* %otype1867, align 1
  %737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11868 = bitcast %union.rec* %738 to %struct.word_type*
  %olist1869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11868, i32 0, i32 0
  %arrayidx1870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1869, i32 0, i64 1
  %osucc1871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1870, i32 0, i32 1
  store %union.rec* %737, %union.rec** %osucc1871, align 8
  %739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11872 = bitcast %union.rec* %739 to %struct.word_type*
  %olist1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11872, i32 0, i32 0
  %arrayidx1874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1873, i32 0, i64 1
  %opred1875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1874, i32 0, i32 0
  store %union.rec* %737, %union.rec** %opred1875, align 8
  %740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11876 = bitcast %union.rec* %740 to %struct.word_type*
  %olist1877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11876, i32 0, i32 0
  %arrayidx1878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1877, i32 0, i64 0
  %osucc1879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1878, i32 0, i32 1
  store %union.rec* %737, %union.rec** %osucc1879, align 8
  %741 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11880 = bitcast %union.rec* %741 to %struct.word_type*
  %olist1881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11880, i32 0, i32 0
  %arrayidx1882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1881, i32 0, i64 0
  %opred1883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1882, i32 0, i32 0
  store %union.rec* %737, %union.rec** %opred1883, align 8
  store %union.rec* %737, %union.rec** %hd_inners, align 8
  br label %if.end.1884

if.end.1884:                                      ; preds = %if.end.1863, %if.then.1836
  %742 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1885 = zext i8 %742 to i32
  store i32 %conv1885, i32* @zz_size, align 4
  %conv1886 = sext i32 %conv1885 to i64
  %cmp1887 = icmp uge i64 %conv1886, 265
  br i1 %cmp1887, label %if.then.1889, label %if.else.1891

if.then.1889:                                     ; preds = %if.end.1884
  %743 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1890 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %743)
  br label %if.end.1908

if.else.1891:                                     ; preds = %if.end.1884
  %744 = load i32, i32* @zz_size, align 4
  %idxprom1892 = sext i32 %744 to i64
  %arrayidx1893 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1892
  %745 = load %union.rec*, %union.rec** %arrayidx1893, align 8
  %cmp1894 = icmp eq %union.rec* %745, null
  br i1 %cmp1894, label %if.then.1896, label %if.else.1898

if.then.1896:                                     ; preds = %if.else.1891
  %746 = load i32, i32* @zz_size, align 4
  %747 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1897 = call %union.rec* @GetMemory(i32 %746, %struct.FILE_POS* %747)
  store %union.rec* %call1897, %union.rec** @zz_hold, align 8
  br label %if.end.1907

if.else.1898:                                     ; preds = %if.else.1891
  %748 = load i32, i32* @zz_size, align 4
  %idxprom1899 = sext i32 %748 to i64
  %arrayidx1900 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1899
  %749 = load %union.rec*, %union.rec** %arrayidx1900, align 8
  store %union.rec* %749, %union.rec** @zz_hold, align 8
  store %union.rec* %749, %union.rec** @zz_hold, align 8
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11901 = bitcast %union.rec* %750 to %struct.word_type*
  %olist1902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11901, i32 0, i32 0
  %arrayidx1903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1902, i32 0, i64 0
  %opred1904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1903, i32 0, i32 0
  %751 = load %union.rec*, %union.rec** %opred1904, align 8
  %752 = load i32, i32* @zz_size, align 4
  %idxprom1905 = sext i32 %752 to i64
  %arrayidx1906 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1905
  store %union.rec* %751, %union.rec** %arrayidx1906, align 8
  br label %if.end.1907

if.end.1907:                                      ; preds = %if.else.1898, %if.then.1896
  br label %if.end.1908

if.end.1908:                                      ; preds = %if.end.1907, %if.then.1889
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11909 = bitcast %union.rec* %753 to %struct.word_type*
  %ou11910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11909, i32 0, i32 1
  %os111911 = bitcast %union.FIRST_UNION* %ou11910 to %struct.anon*
  %otype1912 = getelementptr inbounds %struct.anon, %struct.anon* %os111911, i32 0, i32 0
  store i8 0, i8* %otype1912, align 1
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11913 = bitcast %union.rec* %755 to %struct.word_type*
  %olist1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11913, i32 0, i32 0
  %arrayidx1915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1914, i32 0, i64 1
  %osucc1916 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1915, i32 0, i32 1
  store %union.rec* %754, %union.rec** %osucc1916, align 8
  %756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11917 = bitcast %union.rec* %756 to %struct.word_type*
  %olist1918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11917, i32 0, i32 0
  %arrayidx1919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1918, i32 0, i64 1
  %opred1920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1919, i32 0, i32 0
  store %union.rec* %754, %union.rec** %opred1920, align 8
  %757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11921 = bitcast %union.rec* %757 to %struct.word_type*
  %olist1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11921, i32 0, i32 0
  %arrayidx1923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1922, i32 0, i64 0
  %osucc1924 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1923, i32 0, i32 1
  store %union.rec* %754, %union.rec** %osucc1924, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11925 = bitcast %union.rec* %758 to %struct.word_type*
  %olist1926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11925, i32 0, i32 0
  %arrayidx1927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1926, i32 0, i64 0
  %opred1928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1927, i32 0, i32 0
  store %union.rec* %754, %union.rec** %opred1928, align 8
  store %union.rec* %754, %union.rec** @xx_link, align 8
  %759 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %759, %union.rec** @zz_res, align 8
  %760 = load %union.rec*, %union.rec** %hd_inners, align 8
  store %union.rec* %760, %union.rec** @zz_hold, align 8
  %761 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1929 = icmp eq %union.rec* %761, null
  br i1 %cmp1929, label %cond.true.1931, label %cond.false.1932

cond.true.1931:                                   ; preds = %if.end.1908
  %762 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1967

cond.false.1932:                                  ; preds = %if.end.1908
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1933 = icmp eq %union.rec* %763, null
  br i1 %cmp1933, label %cond.true.1935, label %cond.false.1936

cond.true.1935:                                   ; preds = %cond.false.1932
  %764 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1965

cond.false.1936:                                  ; preds = %cond.false.1932
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11937 = bitcast %union.rec* %765 to %struct.word_type*
  %olist1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11937, i32 0, i32 0
  %arrayidx1939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1938, i32 0, i64 0
  %opred1940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1939, i32 0, i32 0
  %766 = load %union.rec*, %union.rec** %opred1940, align 8
  store %union.rec* %766, %union.rec** @zz_tmp, align 8
  %767 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11941 = bitcast %union.rec* %767 to %struct.word_type*
  %olist1942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11941, i32 0, i32 0
  %arrayidx1943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1942, i32 0, i64 0
  %opred1944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1943, i32 0, i32 0
  %768 = load %union.rec*, %union.rec** %opred1944, align 8
  %769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11945 = bitcast %union.rec* %769 to %struct.word_type*
  %olist1946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11945, i32 0, i32 0
  %arrayidx1947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1946, i32 0, i64 0
  %opred1948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1947, i32 0, i32 0
  store %union.rec* %768, %union.rec** %opred1948, align 8
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %771 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11949 = bitcast %union.rec* %771 to %struct.word_type*
  %olist1950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11949, i32 0, i32 0
  %arrayidx1951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1950, i32 0, i64 0
  %opred1952 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1951, i32 0, i32 0
  %772 = load %union.rec*, %union.rec** %opred1952, align 8
  %os11953 = bitcast %union.rec* %772 to %struct.word_type*
  %olist1954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11953, i32 0, i32 0
  %arrayidx1955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1954, i32 0, i64 0
  %osucc1956 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1955, i32 0, i32 1
  store %union.rec* %770, %union.rec** %osucc1956, align 8
  %773 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %774 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11957 = bitcast %union.rec* %774 to %struct.word_type*
  %olist1958 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11957, i32 0, i32 0
  %arrayidx1959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1958, i32 0, i64 0
  %opred1960 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1959, i32 0, i32 0
  store %union.rec* %773, %union.rec** %opred1960, align 8
  %775 = load %union.rec*, %union.rec** @zz_res, align 8
  %776 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11961 = bitcast %union.rec* %776 to %struct.word_type*
  %olist1962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11961, i32 0, i32 0
  %arrayidx1963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1962, i32 0, i64 0
  %osucc1964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1963, i32 0, i32 1
  store %union.rec* %775, %union.rec** %osucc1964, align 8
  br label %cond.end.1965

cond.end.1965:                                    ; preds = %cond.false.1936, %cond.true.1935
  %cond1966 = phi %union.rec* [ %764, %cond.true.1935 ], [ %775, %cond.false.1936 ]
  br label %cond.end.1967

cond.end.1967:                                    ; preds = %cond.end.1965, %cond.true.1931
  %cond1968 = phi %union.rec* [ %762, %cond.true.1931 ], [ %cond1966, %cond.end.1965 ]
  %777 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %777, %union.rec** @zz_res, align 8
  %778 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %778, %union.rec** @zz_hold, align 8
  %779 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1969 = icmp eq %union.rec* %779, null
  br i1 %cmp1969, label %cond.true.1971, label %cond.false.1972

cond.true.1971:                                   ; preds = %cond.end.1967
  %780 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2007

cond.false.1972:                                  ; preds = %cond.end.1967
  %781 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1973 = icmp eq %union.rec* %781, null
  br i1 %cmp1973, label %cond.true.1975, label %cond.false.1976

cond.true.1975:                                   ; preds = %cond.false.1972
  %782 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2005

cond.false.1976:                                  ; preds = %cond.false.1972
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11977 = bitcast %union.rec* %783 to %struct.word_type*
  %olist1978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11977, i32 0, i32 0
  %arrayidx1979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1978, i32 0, i64 1
  %opred1980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1979, i32 0, i32 0
  %784 = load %union.rec*, %union.rec** %opred1980, align 8
  store %union.rec* %784, %union.rec** @zz_tmp, align 8
  %785 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11981 = bitcast %union.rec* %785 to %struct.word_type*
  %olist1982 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11981, i32 0, i32 0
  %arrayidx1983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1982, i32 0, i64 1
  %opred1984 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1983, i32 0, i32 0
  %786 = load %union.rec*, %union.rec** %opred1984, align 8
  %787 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11985 = bitcast %union.rec* %787 to %struct.word_type*
  %olist1986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11985, i32 0, i32 0
  %arrayidx1987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1986, i32 0, i64 1
  %opred1988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1987, i32 0, i32 0
  store %union.rec* %786, %union.rec** %opred1988, align 8
  %788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %789 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11989 = bitcast %union.rec* %789 to %struct.word_type*
  %olist1990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11989, i32 0, i32 0
  %arrayidx1991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1990, i32 0, i64 1
  %opred1992 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1991, i32 0, i32 0
  %790 = load %union.rec*, %union.rec** %opred1992, align 8
  %os11993 = bitcast %union.rec* %790 to %struct.word_type*
  %olist1994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11993, i32 0, i32 0
  %arrayidx1995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1994, i32 0, i64 1
  %osucc1996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1995, i32 0, i32 1
  store %union.rec* %788, %union.rec** %osucc1996, align 8
  %791 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %792 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11997 = bitcast %union.rec* %792 to %struct.word_type*
  %olist1998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11997, i32 0, i32 0
  %arrayidx1999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1998, i32 0, i64 1
  %opred2000 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1999, i32 0, i32 0
  store %union.rec* %791, %union.rec** %opred2000, align 8
  %793 = load %union.rec*, %union.rec** @zz_res, align 8
  %794 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12001 = bitcast %union.rec* %794 to %struct.word_type*
  %olist2002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12001, i32 0, i32 0
  %arrayidx2003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2002, i32 0, i64 1
  %osucc2004 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2003, i32 0, i32 1
  store %union.rec* %793, %union.rec** %osucc2004, align 8
  br label %cond.end.2005

cond.end.2005:                                    ; preds = %cond.false.1976, %cond.true.1975
  %cond2006 = phi %union.rec* [ %782, %cond.true.1975 ], [ %793, %cond.false.1976 ]
  br label %cond.end.2007

cond.end.2007:                                    ; preds = %cond.end.2005, %cond.true.1971
  %cond2008 = phi %union.rec* [ %780, %cond.true.1971 ], [ %cond2006, %cond.end.2005 ]
  br label %if.end.2009

if.end.2009:                                      ; preds = %cond.end.2007, %sw.bb.1834
  br label %sw.epilog.4348

sw.bb.2010:                                       ; preds = %if.end.1828
  br label %SUSPEND

sw.bb.2011:                                       ; preds = %if.end.1828
  br label %SUSPEND

sw.bb.2012:                                       ; preds = %if.end.1828
  %795 = load %union.rec*, %union.rec** %y, align 8
  %os12013 = bitcast %union.rec* %795 to %struct.word_type*
  %olist2014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12013, i32 0, i32 0
  %arrayidx2015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2014, i32 0, i64 0
  %osucc2016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2015, i32 0, i32 1
  %796 = load %union.rec*, %union.rec** %osucc2016, align 8
  %os12017 = bitcast %union.rec* %796 to %struct.word_type*
  %olist2018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12017, i32 0, i32 0
  %arrayidx2019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2018, i32 0, i64 1
  %opred2020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2019, i32 0, i32 0
  %797 = load %union.rec*, %union.rec** %opred2020, align 8
  store %union.rec* %797, %union.rec** %tmp, align 8
  br label %for.cond.2021

for.cond.2021:                                    ; preds = %for.inc.2030, %sw.bb.2012
  %798 = load %union.rec*, %union.rec** %tmp, align 8
  %os12022 = bitcast %union.rec* %798 to %struct.word_type*
  %ou12023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12022, i32 0, i32 1
  %os112024 = bitcast %union.FIRST_UNION* %ou12023 to %struct.anon*
  %otype2025 = getelementptr inbounds %struct.anon, %struct.anon* %os112024, i32 0, i32 0
  %799 = load i8, i8* %otype2025, align 1
  %conv2026 = zext i8 %799 to i32
  %cmp2027 = icmp eq i32 %conv2026, 0
  br i1 %cmp2027, label %for.body.2029, label %for.end.2035

for.body.2029:                                    ; preds = %for.cond.2021
  br label %for.inc.2030

for.inc.2030:                                     ; preds = %for.body.2029
  %800 = load %union.rec*, %union.rec** %tmp, align 8
  %os12031 = bitcast %union.rec* %800 to %struct.word_type*
  %olist2032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12031, i32 0, i32 0
  %arrayidx2033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2032, i32 0, i64 1
  %opred2034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2033, i32 0, i32 0
  %801 = load %union.rec*, %union.rec** %opred2034, align 8
  store %union.rec* %801, %union.rec** %tmp, align 8
  br label %for.cond.2021

for.end.2035:                                     ; preds = %for.cond.2021
  %802 = load %union.rec*, %union.rec** %tmp, align 8
  %os12036 = bitcast %union.rec* %802 to %struct.word_type*
  %olist2037 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12036, i32 0, i32 0
  %arrayidx2038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2037, i32 0, i64 1
  %osucc2039 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2038, i32 0, i32 1
  %803 = load %union.rec*, %union.rec** %osucc2039, align 8
  %804 = load %union.rec*, %union.rec** %tmp, align 8
  %os12040 = bitcast %union.rec* %804 to %struct.word_type*
  %olist2041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12040, i32 0, i32 0
  %arrayidx2042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2041, i32 0, i64 1
  %opred2043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2042, i32 0, i32 0
  %805 = load %union.rec*, %union.rec** %opred2043, align 8
  %cmp2044 = icmp eq %union.rec* %803, %805
  br i1 %cmp2044, label %if.then.2046, label %if.end.2179

if.then.2046:                                     ; preds = %for.end.2035
  %806 = load %union.rec*, %union.rec** %link, align 8
  %os12047 = bitcast %union.rec* %806 to %struct.word_type*
  %olist2048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12047, i32 0, i32 0
  %arrayidx2049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2048, i32 0, i64 0
  %opred2050 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2049, i32 0, i32 0
  %807 = load %union.rec*, %union.rec** %opred2050, align 8
  store %union.rec* %807, %union.rec** %link, align 8
  %808 = load %union.rec*, %union.rec** %link, align 8
  %os12051 = bitcast %union.rec* %808 to %struct.word_type*
  %olist2052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12051, i32 0, i32 0
  %arrayidx2053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2052, i32 0, i64 0
  %osucc2054 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2053, i32 0, i32 1
  %809 = load %union.rec*, %union.rec** %osucc2054, align 8
  store %union.rec* %809, %union.rec** @xx_link, align 8
  %810 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %810, %union.rec** @zz_hold, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12055 = bitcast %union.rec* %811 to %struct.word_type*
  %olist2056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12055, i32 0, i32 0
  %arrayidx2057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2056, i32 0, i64 1
  %osucc2058 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2057, i32 0, i32 1
  %812 = load %union.rec*, %union.rec** %osucc2058, align 8
  %813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2059 = icmp eq %union.rec* %812, %813
  br i1 %cmp2059, label %cond.true.2061, label %cond.false.2062

cond.true.2061:                                   ; preds = %if.then.2046
  br label %cond.end.2091

cond.false.2062:                                  ; preds = %if.then.2046
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12063 = bitcast %union.rec* %814 to %struct.word_type*
  %olist2064 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12063, i32 0, i32 0
  %arrayidx2065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2064, i32 0, i64 1
  %osucc2066 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2065, i32 0, i32 1
  %815 = load %union.rec*, %union.rec** %osucc2066, align 8
  store %union.rec* %815, %union.rec** @zz_res, align 8
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12067 = bitcast %union.rec* %816 to %struct.word_type*
  %olist2068 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12067, i32 0, i32 0
  %arrayidx2069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2068, i32 0, i64 1
  %opred2070 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2069, i32 0, i32 0
  %817 = load %union.rec*, %union.rec** %opred2070, align 8
  %818 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12071 = bitcast %union.rec* %818 to %struct.word_type*
  %olist2072 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12071, i32 0, i32 0
  %arrayidx2073 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2072, i32 0, i64 1
  %opred2074 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2073, i32 0, i32 0
  store %union.rec* %817, %union.rec** %opred2074, align 8
  %819 = load %union.rec*, %union.rec** @zz_res, align 8
  %820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12075 = bitcast %union.rec* %820 to %struct.word_type*
  %olist2076 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12075, i32 0, i32 0
  %arrayidx2077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2076, i32 0, i64 1
  %opred2078 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2077, i32 0, i32 0
  %821 = load %union.rec*, %union.rec** %opred2078, align 8
  %os12079 = bitcast %union.rec* %821 to %struct.word_type*
  %olist2080 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12079, i32 0, i32 0
  %arrayidx2081 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2080, i32 0, i64 1
  %osucc2082 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2081, i32 0, i32 1
  store %union.rec* %819, %union.rec** %osucc2082, align 8
  %822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12083 = bitcast %union.rec* %823 to %struct.word_type*
  %olist2084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12083, i32 0, i32 0
  %arrayidx2085 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2084, i32 0, i64 1
  %osucc2086 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2085, i32 0, i32 1
  store %union.rec* %822, %union.rec** %osucc2086, align 8
  %824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12087 = bitcast %union.rec* %824 to %struct.word_type*
  %olist2088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12087, i32 0, i32 0
  %arrayidx2089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2088, i32 0, i64 1
  %opred2090 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2089, i32 0, i32 0
  store %union.rec* %822, %union.rec** %opred2090, align 8
  %825 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2091

cond.end.2091:                                    ; preds = %cond.false.2062, %cond.true.2061
  %cond2092 = phi %union.rec* [ null, %cond.true.2061 ], [ %825, %cond.false.2062 ]
  store %union.rec* %cond2092, %union.rec** @xx_tmp, align 8
  %826 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %826, %union.rec** @zz_hold, align 8
  %827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12093 = bitcast %union.rec* %827 to %struct.word_type*
  %olist2094 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12093, i32 0, i32 0
  %arrayidx2095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2094, i32 0, i64 0
  %osucc2096 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2095, i32 0, i32 1
  %828 = load %union.rec*, %union.rec** %osucc2096, align 8
  %829 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2097 = icmp eq %union.rec* %828, %829
  br i1 %cmp2097, label %cond.true.2099, label %cond.false.2100

cond.true.2099:                                   ; preds = %cond.end.2091
  br label %cond.end.2129

cond.false.2100:                                  ; preds = %cond.end.2091
  %830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12101 = bitcast %union.rec* %830 to %struct.word_type*
  %olist2102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12101, i32 0, i32 0
  %arrayidx2103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2102, i32 0, i64 0
  %osucc2104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2103, i32 0, i32 1
  %831 = load %union.rec*, %union.rec** %osucc2104, align 8
  store %union.rec* %831, %union.rec** @zz_res, align 8
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12105 = bitcast %union.rec* %832 to %struct.word_type*
  %olist2106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12105, i32 0, i32 0
  %arrayidx2107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2106, i32 0, i64 0
  %opred2108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2107, i32 0, i32 0
  %833 = load %union.rec*, %union.rec** %opred2108, align 8
  %834 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12109 = bitcast %union.rec* %834 to %struct.word_type*
  %olist2110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12109, i32 0, i32 0
  %arrayidx2111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2110, i32 0, i64 0
  %opred2112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2111, i32 0, i32 0
  store %union.rec* %833, %union.rec** %opred2112, align 8
  %835 = load %union.rec*, %union.rec** @zz_res, align 8
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12113 = bitcast %union.rec* %836 to %struct.word_type*
  %olist2114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12113, i32 0, i32 0
  %arrayidx2115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2114, i32 0, i64 0
  %opred2116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2115, i32 0, i32 0
  %837 = load %union.rec*, %union.rec** %opred2116, align 8
  %os12117 = bitcast %union.rec* %837 to %struct.word_type*
  %olist2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12117, i32 0, i32 0
  %arrayidx2119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2118, i32 0, i64 0
  %osucc2120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2119, i32 0, i32 1
  store %union.rec* %835, %union.rec** %osucc2120, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12121 = bitcast %union.rec* %839 to %struct.word_type*
  %olist2122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12121, i32 0, i32 0
  %arrayidx2123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2122, i32 0, i64 0
  %osucc2124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2123, i32 0, i32 1
  store %union.rec* %838, %union.rec** %osucc2124, align 8
  %840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12125 = bitcast %union.rec* %840 to %struct.word_type*
  %olist2126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12125, i32 0, i32 0
  %arrayidx2127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2126, i32 0, i64 0
  %opred2128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2127, i32 0, i32 0
  store %union.rec* %838, %union.rec** %opred2128, align 8
  %841 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2129

cond.end.2129:                                    ; preds = %cond.false.2100, %cond.true.2099
  %cond2130 = phi %union.rec* [ null, %cond.true.2099 ], [ %841, %cond.false.2100 ]
  %842 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %842, %union.rec** @zz_hold, align 8
  %843 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %843, %union.rec** @zz_hold, align 8
  %844 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12131 = bitcast %union.rec* %844 to %struct.word_type*
  %ou12132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12131, i32 0, i32 1
  %os112133 = bitcast %union.FIRST_UNION* %ou12132 to %struct.anon*
  %otype2134 = getelementptr inbounds %struct.anon, %struct.anon* %os112133, i32 0, i32 0
  %845 = load i8, i8* %otype2134, align 1
  %conv2135 = zext i8 %845 to i32
  %cmp2136 = icmp eq i32 %conv2135, 11
  br i1 %cmp2136, label %cond.true.2146, label %lor.lhs.false.2138

lor.lhs.false.2138:                               ; preds = %cond.end.2129
  %846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12139 = bitcast %union.rec* %846 to %struct.word_type*
  %ou12140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12139, i32 0, i32 1
  %os112141 = bitcast %union.FIRST_UNION* %ou12140 to %struct.anon*
  %otype2142 = getelementptr inbounds %struct.anon, %struct.anon* %os112141, i32 0, i32 0
  %847 = load i8, i8* %otype2142, align 1
  %conv2143 = zext i8 %847 to i32
  %cmp2144 = icmp eq i32 %conv2143, 12
  br i1 %cmp2144, label %cond.true.2146, label %cond.false.2152

cond.true.2146:                                   ; preds = %lor.lhs.false.2138, %cond.end.2129
  %848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12147 = bitcast %union.rec* %848 to %struct.word_type*
  %ou12148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12147, i32 0, i32 1
  %os112149 = bitcast %union.FIRST_UNION* %ou12148 to %struct.anon*
  %orec_size2150 = getelementptr inbounds %struct.anon, %struct.anon* %os112149, i32 0, i32 1
  %849 = load i8, i8* %orec_size2150, align 1
  %conv2151 = zext i8 %849 to i32
  br label %cond.end.2160

cond.false.2152:                                  ; preds = %lor.lhs.false.2138
  %850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12153 = bitcast %union.rec* %850 to %struct.word_type*
  %ou12154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12153, i32 0, i32 1
  %os112155 = bitcast %union.FIRST_UNION* %ou12154 to %struct.anon*
  %otype2156 = getelementptr inbounds %struct.anon, %struct.anon* %os112155, i32 0, i32 0
  %851 = load i8, i8* %otype2156, align 1
  %idxprom2157 = zext i8 %851 to i64
  %arrayidx2158 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2157
  %852 = load i8, i8* %arrayidx2158, align 1
  %conv2159 = zext i8 %852 to i32
  br label %cond.end.2160

cond.end.2160:                                    ; preds = %cond.false.2152, %cond.true.2146
  %cond2161 = phi i32 [ %conv2151, %cond.true.2146 ], [ %conv2159, %cond.false.2152 ]
  store i32 %cond2161, i32* @zz_size, align 4
  %853 = load i32, i32* @zz_size, align 4
  %idxprom2162 = sext i32 %853 to i64
  %arrayidx2163 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2162
  %854 = load %union.rec*, %union.rec** %arrayidx2163, align 8
  %855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12164 = bitcast %union.rec* %855 to %struct.word_type*
  %olist2165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12164, i32 0, i32 0
  %arrayidx2166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2165, i32 0, i64 0
  %opred2167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2166, i32 0, i32 0
  store %union.rec* %854, %union.rec** %opred2167, align 8
  %856 = load %union.rec*, %union.rec** @zz_hold, align 8
  %857 = load i32, i32* @zz_size, align 4
  %idxprom2168 = sext i32 %857 to i64
  %arrayidx2169 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2168
  store %union.rec* %856, %union.rec** %arrayidx2169, align 8
  %858 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os12170 = bitcast %union.rec* %858 to %struct.word_type*
  %olist2171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12170, i32 0, i32 0
  %arrayidx2172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2171, i32 0, i64 1
  %osucc2173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2172, i32 0, i32 1
  %859 = load %union.rec*, %union.rec** %osucc2173, align 8
  %860 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp2174 = icmp eq %union.rec* %859, %860
  br i1 %cmp2174, label %if.then.2176, label %if.end.2178

if.then.2176:                                     ; preds = %cond.end.2160
  %861 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call2177 = call i32 @DisposeObject(%union.rec* %861)
  br label %if.end.2178

if.end.2178:                                      ; preds = %if.then.2176, %cond.end.2160
  br label %sw.epilog.4348

if.end.2179:                                      ; preds = %for.end.2035
  %862 = load %union.rec*, %union.rec** %tmp, align 8
  %os12180 = bitcast %union.rec* %862 to %struct.word_type*
  %olist2181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12180, i32 0, i32 0
  %arrayidx2182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2181, i32 0, i64 1
  %osucc2183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2182, i32 0, i32 1
  %863 = load %union.rec*, %union.rec** %osucc2183, align 8
  %os12184 = bitcast %union.rec* %863 to %struct.word_type*
  %olist2185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12184, i32 0, i32 0
  %arrayidx2186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2185, i32 0, i64 0
  %opred2187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2186, i32 0, i32 0
  %864 = load %union.rec*, %union.rec** %opred2187, align 8
  store %union.rec* %864, %union.rec** %tmp, align 8
  br label %for.cond.2188

for.cond.2188:                                    ; preds = %for.inc.2197, %if.end.2179
  %865 = load %union.rec*, %union.rec** %tmp, align 8
  %os12189 = bitcast %union.rec* %865 to %struct.word_type*
  %ou12190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12189, i32 0, i32 1
  %os112191 = bitcast %union.FIRST_UNION* %ou12190 to %struct.anon*
  %otype2192 = getelementptr inbounds %struct.anon, %struct.anon* %os112191, i32 0, i32 0
  %866 = load i8, i8* %otype2192, align 1
  %conv2193 = zext i8 %866 to i32
  %cmp2194 = icmp eq i32 %conv2193, 0
  br i1 %cmp2194, label %for.body.2196, label %for.end.2202

for.body.2196:                                    ; preds = %for.cond.2188
  br label %for.inc.2197

for.inc.2197:                                     ; preds = %for.body.2196
  %867 = load %union.rec*, %union.rec** %tmp, align 8
  %os12198 = bitcast %union.rec* %867 to %struct.word_type*
  %olist2199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12198, i32 0, i32 0
  %arrayidx2200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2199, i32 0, i64 0
  %opred2201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2200, i32 0, i32 0
  %868 = load %union.rec*, %union.rec** %opred2201, align 8
  store %union.rec* %868, %union.rec** %tmp, align 8
  br label %for.cond.2188

for.end.2202:                                     ; preds = %for.cond.2188
  %869 = load %union.rec*, %union.rec** %tmp, align 8
  %os12203 = bitcast %union.rec* %869 to %struct.word_type*
  %ou12204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12203, i32 0, i32 1
  %os112205 = bitcast %union.FIRST_UNION* %ou12204 to %struct.anon*
  %otype2206 = getelementptr inbounds %struct.anon, %struct.anon* %os112205, i32 0, i32 0
  %870 = load i8, i8* %otype2206, align 1
  %conv2207 = zext i8 %870 to i32
  %cmp2208 = icmp eq i32 %conv2207, 124
  br i1 %cmp2208, label %if.end.2212, label %if.then.2210

if.then.2210:                                     ; preds = %for.end.2202
  %871 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2211 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %871, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.2212

if.end.2212:                                      ; preds = %if.then.2210, %for.end.2202
  %872 = load %union.rec*, %union.rec** %tmp, align 8
  %873 = load %union.rec*, %union.rec** %target_index, align 8
  %call2213 = call i32 @CheckComponentOrder(%union.rec* %872, %union.rec* %873)
  switch i32 %call2213, label %sw.epilog [
    i32 157, label %sw.bb.2214
    i32 154, label %sw.bb.2642
    i32 156, label %sw.bb.2643
    i32 155, label %sw.bb.2644
  ]

sw.bb.2214:                                       ; preds = %if.end.2212
  %874 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %874, %union.rec** @xx_hold, align 8
  br label %while.cond.2215

while.cond.2215:                                  ; preds = %cond.end.2332, %sw.bb.2214
  %875 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12216 = bitcast %union.rec* %875 to %struct.word_type*
  %olist2217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12216, i32 0, i32 0
  %arrayidx2218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2217, i32 0, i64 1
  %osucc2219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2218, i32 0, i32 1
  %876 = load %union.rec*, %union.rec** %osucc2219, align 8
  %877 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp2220 = icmp ne %union.rec* %876, %877
  br i1 %cmp2220, label %while.body.2222, label %while.end.2342

while.body.2222:                                  ; preds = %while.cond.2215
  %878 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12223 = bitcast %union.rec* %878 to %struct.word_type*
  %olist2224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12223, i32 0, i32 0
  %arrayidx2225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2224, i32 0, i64 1
  %osucc2226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2225, i32 0, i32 1
  %879 = load %union.rec*, %union.rec** %osucc2226, align 8
  store %union.rec* %879, %union.rec** @xx_link, align 8
  %880 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %880, %union.rec** @zz_hold, align 8
  %881 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12227 = bitcast %union.rec* %881 to %struct.word_type*
  %olist2228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12227, i32 0, i32 0
  %arrayidx2229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2228, i32 0, i64 1
  %osucc2230 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2229, i32 0, i32 1
  %882 = load %union.rec*, %union.rec** %osucc2230, align 8
  %883 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2231 = icmp eq %union.rec* %882, %883
  br i1 %cmp2231, label %cond.true.2233, label %cond.false.2234

cond.true.2233:                                   ; preds = %while.body.2222
  br label %cond.end.2263

cond.false.2234:                                  ; preds = %while.body.2222
  %884 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12235 = bitcast %union.rec* %884 to %struct.word_type*
  %olist2236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12235, i32 0, i32 0
  %arrayidx2237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2236, i32 0, i64 1
  %osucc2238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2237, i32 0, i32 1
  %885 = load %union.rec*, %union.rec** %osucc2238, align 8
  store %union.rec* %885, %union.rec** @zz_res, align 8
  %886 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12239 = bitcast %union.rec* %886 to %struct.word_type*
  %olist2240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12239, i32 0, i32 0
  %arrayidx2241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2240, i32 0, i64 1
  %opred2242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2241, i32 0, i32 0
  %887 = load %union.rec*, %union.rec** %opred2242, align 8
  %888 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12243 = bitcast %union.rec* %888 to %struct.word_type*
  %olist2244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12243, i32 0, i32 0
  %arrayidx2245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2244, i32 0, i64 1
  %opred2246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2245, i32 0, i32 0
  store %union.rec* %887, %union.rec** %opred2246, align 8
  %889 = load %union.rec*, %union.rec** @zz_res, align 8
  %890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12247 = bitcast %union.rec* %890 to %struct.word_type*
  %olist2248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12247, i32 0, i32 0
  %arrayidx2249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2248, i32 0, i64 1
  %opred2250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2249, i32 0, i32 0
  %891 = load %union.rec*, %union.rec** %opred2250, align 8
  %os12251 = bitcast %union.rec* %891 to %struct.word_type*
  %olist2252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12251, i32 0, i32 0
  %arrayidx2253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2252, i32 0, i64 1
  %osucc2254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2253, i32 0, i32 1
  store %union.rec* %889, %union.rec** %osucc2254, align 8
  %892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12255 = bitcast %union.rec* %893 to %struct.word_type*
  %olist2256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12255, i32 0, i32 0
  %arrayidx2257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2256, i32 0, i64 1
  %osucc2258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2257, i32 0, i32 1
  store %union.rec* %892, %union.rec** %osucc2258, align 8
  %894 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12259 = bitcast %union.rec* %894 to %struct.word_type*
  %olist2260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12259, i32 0, i32 0
  %arrayidx2261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2260, i32 0, i64 1
  %opred2262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2261, i32 0, i32 0
  store %union.rec* %892, %union.rec** %opred2262, align 8
  %895 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2263

cond.end.2263:                                    ; preds = %cond.false.2234, %cond.true.2233
  %cond2264 = phi %union.rec* [ null, %cond.true.2233 ], [ %895, %cond.false.2234 ]
  %896 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %896, %union.rec** @zz_hold, align 8
  %897 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12265 = bitcast %union.rec* %897 to %struct.word_type*
  %olist2266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12265, i32 0, i32 0
  %arrayidx2267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2266, i32 0, i64 0
  %osucc2268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2267, i32 0, i32 1
  %898 = load %union.rec*, %union.rec** %osucc2268, align 8
  %899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2269 = icmp eq %union.rec* %898, %899
  br i1 %cmp2269, label %cond.true.2271, label %cond.false.2272

cond.true.2271:                                   ; preds = %cond.end.2263
  br label %cond.end.2301

cond.false.2272:                                  ; preds = %cond.end.2263
  %900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12273 = bitcast %union.rec* %900 to %struct.word_type*
  %olist2274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12273, i32 0, i32 0
  %arrayidx2275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2274, i32 0, i64 0
  %osucc2276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2275, i32 0, i32 1
  %901 = load %union.rec*, %union.rec** %osucc2276, align 8
  store %union.rec* %901, %union.rec** @zz_res, align 8
  %902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12277 = bitcast %union.rec* %902 to %struct.word_type*
  %olist2278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12277, i32 0, i32 0
  %arrayidx2279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2278, i32 0, i64 0
  %opred2280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2279, i32 0, i32 0
  %903 = load %union.rec*, %union.rec** %opred2280, align 8
  %904 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12281 = bitcast %union.rec* %904 to %struct.word_type*
  %olist2282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12281, i32 0, i32 0
  %arrayidx2283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2282, i32 0, i64 0
  %opred2284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2283, i32 0, i32 0
  store %union.rec* %903, %union.rec** %opred2284, align 8
  %905 = load %union.rec*, %union.rec** @zz_res, align 8
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12285 = bitcast %union.rec* %906 to %struct.word_type*
  %olist2286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12285, i32 0, i32 0
  %arrayidx2287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2286, i32 0, i64 0
  %opred2288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2287, i32 0, i32 0
  %907 = load %union.rec*, %union.rec** %opred2288, align 8
  %os12289 = bitcast %union.rec* %907 to %struct.word_type*
  %olist2290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12289, i32 0, i32 0
  %arrayidx2291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2290, i32 0, i64 0
  %osucc2292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2291, i32 0, i32 1
  store %union.rec* %905, %union.rec** %osucc2292, align 8
  %908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12293 = bitcast %union.rec* %909 to %struct.word_type*
  %olist2294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12293, i32 0, i32 0
  %arrayidx2295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2294, i32 0, i64 0
  %osucc2296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2295, i32 0, i32 1
  store %union.rec* %908, %union.rec** %osucc2296, align 8
  %910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12297 = bitcast %union.rec* %910 to %struct.word_type*
  %olist2298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12297, i32 0, i32 0
  %arrayidx2299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2298, i32 0, i64 0
  %opred2300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2299, i32 0, i32 0
  store %union.rec* %908, %union.rec** %opred2300, align 8
  %911 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2301

cond.end.2301:                                    ; preds = %cond.false.2272, %cond.true.2271
  %cond2302 = phi %union.rec* [ null, %cond.true.2271 ], [ %911, %cond.false.2272 ]
  %912 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %912, %union.rec** @zz_hold, align 8
  %913 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %913, %union.rec** @zz_hold, align 8
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12303 = bitcast %union.rec* %914 to %struct.word_type*
  %ou12304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12303, i32 0, i32 1
  %os112305 = bitcast %union.FIRST_UNION* %ou12304 to %struct.anon*
  %otype2306 = getelementptr inbounds %struct.anon, %struct.anon* %os112305, i32 0, i32 0
  %915 = load i8, i8* %otype2306, align 1
  %conv2307 = zext i8 %915 to i32
  %cmp2308 = icmp eq i32 %conv2307, 11
  br i1 %cmp2308, label %cond.true.2318, label %lor.lhs.false.2310

lor.lhs.false.2310:                               ; preds = %cond.end.2301
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12311 = bitcast %union.rec* %916 to %struct.word_type*
  %ou12312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12311, i32 0, i32 1
  %os112313 = bitcast %union.FIRST_UNION* %ou12312 to %struct.anon*
  %otype2314 = getelementptr inbounds %struct.anon, %struct.anon* %os112313, i32 0, i32 0
  %917 = load i8, i8* %otype2314, align 1
  %conv2315 = zext i8 %917 to i32
  %cmp2316 = icmp eq i32 %conv2315, 12
  br i1 %cmp2316, label %cond.true.2318, label %cond.false.2324

cond.true.2318:                                   ; preds = %lor.lhs.false.2310, %cond.end.2301
  %918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12319 = bitcast %union.rec* %918 to %struct.word_type*
  %ou12320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12319, i32 0, i32 1
  %os112321 = bitcast %union.FIRST_UNION* %ou12320 to %struct.anon*
  %orec_size2322 = getelementptr inbounds %struct.anon, %struct.anon* %os112321, i32 0, i32 1
  %919 = load i8, i8* %orec_size2322, align 1
  %conv2323 = zext i8 %919 to i32
  br label %cond.end.2332

cond.false.2324:                                  ; preds = %lor.lhs.false.2310
  %920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12325 = bitcast %union.rec* %920 to %struct.word_type*
  %ou12326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12325, i32 0, i32 1
  %os112327 = bitcast %union.FIRST_UNION* %ou12326 to %struct.anon*
  %otype2328 = getelementptr inbounds %struct.anon, %struct.anon* %os112327, i32 0, i32 0
  %921 = load i8, i8* %otype2328, align 1
  %idxprom2329 = zext i8 %921 to i64
  %arrayidx2330 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2329
  %922 = load i8, i8* %arrayidx2330, align 1
  %conv2331 = zext i8 %922 to i32
  br label %cond.end.2332

cond.end.2332:                                    ; preds = %cond.false.2324, %cond.true.2318
  %cond2333 = phi i32 [ %conv2323, %cond.true.2318 ], [ %conv2331, %cond.false.2324 ]
  store i32 %cond2333, i32* @zz_size, align 4
  %923 = load i32, i32* @zz_size, align 4
  %idxprom2334 = sext i32 %923 to i64
  %arrayidx2335 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2334
  %924 = load %union.rec*, %union.rec** %arrayidx2335, align 8
  %925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12336 = bitcast %union.rec* %925 to %struct.word_type*
  %olist2337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12336, i32 0, i32 0
  %arrayidx2338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2337, i32 0, i64 0
  %opred2339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2338, i32 0, i32 0
  store %union.rec* %924, %union.rec** %opred2339, align 8
  %926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %927 = load i32, i32* @zz_size, align 4
  %idxprom2340 = sext i32 %927 to i64
  %arrayidx2341 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2340
  store %union.rec* %926, %union.rec** %arrayidx2341, align 8
  br label %while.cond.2215

while.end.2342:                                   ; preds = %while.cond.2215
  br label %while.cond.2343

while.cond.2343:                                  ; preds = %cond.end.2460, %while.end.2342
  %928 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12344 = bitcast %union.rec* %928 to %struct.word_type*
  %olist2345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12344, i32 0, i32 0
  %arrayidx2346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2345, i32 0, i64 0
  %osucc2347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2346, i32 0, i32 1
  %929 = load %union.rec*, %union.rec** %osucc2347, align 8
  %930 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp2348 = icmp ne %union.rec* %929, %930
  br i1 %cmp2348, label %while.body.2350, label %while.end.2470

while.body.2350:                                  ; preds = %while.cond.2343
  %931 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12351 = bitcast %union.rec* %931 to %struct.word_type*
  %olist2352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12351, i32 0, i32 0
  %arrayidx2353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2352, i32 0, i64 0
  %osucc2354 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2353, i32 0, i32 1
  %932 = load %union.rec*, %union.rec** %osucc2354, align 8
  store %union.rec* %932, %union.rec** @xx_link, align 8
  %933 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %933, %union.rec** @zz_hold, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12355 = bitcast %union.rec* %934 to %struct.word_type*
  %olist2356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12355, i32 0, i32 0
  %arrayidx2357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2356, i32 0, i64 1
  %osucc2358 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2357, i32 0, i32 1
  %935 = load %union.rec*, %union.rec** %osucc2358, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2359 = icmp eq %union.rec* %935, %936
  br i1 %cmp2359, label %cond.true.2361, label %cond.false.2362

cond.true.2361:                                   ; preds = %while.body.2350
  br label %cond.end.2391

cond.false.2362:                                  ; preds = %while.body.2350
  %937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12363 = bitcast %union.rec* %937 to %struct.word_type*
  %olist2364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12363, i32 0, i32 0
  %arrayidx2365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2364, i32 0, i64 1
  %osucc2366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2365, i32 0, i32 1
  %938 = load %union.rec*, %union.rec** %osucc2366, align 8
  store %union.rec* %938, %union.rec** @zz_res, align 8
  %939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12367 = bitcast %union.rec* %939 to %struct.word_type*
  %olist2368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12367, i32 0, i32 0
  %arrayidx2369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2368, i32 0, i64 1
  %opred2370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2369, i32 0, i32 0
  %940 = load %union.rec*, %union.rec** %opred2370, align 8
  %941 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12371 = bitcast %union.rec* %941 to %struct.word_type*
  %olist2372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12371, i32 0, i32 0
  %arrayidx2373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2372, i32 0, i64 1
  %opred2374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2373, i32 0, i32 0
  store %union.rec* %940, %union.rec** %opred2374, align 8
  %942 = load %union.rec*, %union.rec** @zz_res, align 8
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12375 = bitcast %union.rec* %943 to %struct.word_type*
  %olist2376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12375, i32 0, i32 0
  %arrayidx2377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2376, i32 0, i64 1
  %opred2378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2377, i32 0, i32 0
  %944 = load %union.rec*, %union.rec** %opred2378, align 8
  %os12379 = bitcast %union.rec* %944 to %struct.word_type*
  %olist2380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12379, i32 0, i32 0
  %arrayidx2381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2380, i32 0, i64 1
  %osucc2382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2381, i32 0, i32 1
  store %union.rec* %942, %union.rec** %osucc2382, align 8
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12383 = bitcast %union.rec* %946 to %struct.word_type*
  %olist2384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12383, i32 0, i32 0
  %arrayidx2385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2384, i32 0, i64 1
  %osucc2386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2385, i32 0, i32 1
  store %union.rec* %945, %union.rec** %osucc2386, align 8
  %947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12387 = bitcast %union.rec* %947 to %struct.word_type*
  %olist2388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12387, i32 0, i32 0
  %arrayidx2389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2388, i32 0, i64 1
  %opred2390 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2389, i32 0, i32 0
  store %union.rec* %945, %union.rec** %opred2390, align 8
  %948 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2391

cond.end.2391:                                    ; preds = %cond.false.2362, %cond.true.2361
  %cond2392 = phi %union.rec* [ null, %cond.true.2361 ], [ %948, %cond.false.2362 ]
  %949 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %949, %union.rec** @zz_hold, align 8
  %950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12393 = bitcast %union.rec* %950 to %struct.word_type*
  %olist2394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12393, i32 0, i32 0
  %arrayidx2395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2394, i32 0, i64 0
  %osucc2396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2395, i32 0, i32 1
  %951 = load %union.rec*, %union.rec** %osucc2396, align 8
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2397 = icmp eq %union.rec* %951, %952
  br i1 %cmp2397, label %cond.true.2399, label %cond.false.2400

cond.true.2399:                                   ; preds = %cond.end.2391
  br label %cond.end.2429

cond.false.2400:                                  ; preds = %cond.end.2391
  %953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12401 = bitcast %union.rec* %953 to %struct.word_type*
  %olist2402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12401, i32 0, i32 0
  %arrayidx2403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2402, i32 0, i64 0
  %osucc2404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2403, i32 0, i32 1
  %954 = load %union.rec*, %union.rec** %osucc2404, align 8
  store %union.rec* %954, %union.rec** @zz_res, align 8
  %955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12405 = bitcast %union.rec* %955 to %struct.word_type*
  %olist2406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12405, i32 0, i32 0
  %arrayidx2407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2406, i32 0, i64 0
  %opred2408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2407, i32 0, i32 0
  %956 = load %union.rec*, %union.rec** %opred2408, align 8
  %957 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12409 = bitcast %union.rec* %957 to %struct.word_type*
  %olist2410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12409, i32 0, i32 0
  %arrayidx2411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2410, i32 0, i64 0
  %opred2412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2411, i32 0, i32 0
  store %union.rec* %956, %union.rec** %opred2412, align 8
  %958 = load %union.rec*, %union.rec** @zz_res, align 8
  %959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12413 = bitcast %union.rec* %959 to %struct.word_type*
  %olist2414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12413, i32 0, i32 0
  %arrayidx2415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2414, i32 0, i64 0
  %opred2416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2415, i32 0, i32 0
  %960 = load %union.rec*, %union.rec** %opred2416, align 8
  %os12417 = bitcast %union.rec* %960 to %struct.word_type*
  %olist2418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12417, i32 0, i32 0
  %arrayidx2419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2418, i32 0, i64 0
  %osucc2420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2419, i32 0, i32 1
  store %union.rec* %958, %union.rec** %osucc2420, align 8
  %961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12421 = bitcast %union.rec* %962 to %struct.word_type*
  %olist2422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12421, i32 0, i32 0
  %arrayidx2423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2422, i32 0, i64 0
  %osucc2424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2423, i32 0, i32 1
  store %union.rec* %961, %union.rec** %osucc2424, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12425 = bitcast %union.rec* %963 to %struct.word_type*
  %olist2426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12425, i32 0, i32 0
  %arrayidx2427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2426, i32 0, i64 0
  %opred2428 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2427, i32 0, i32 0
  store %union.rec* %961, %union.rec** %opred2428, align 8
  %964 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2429

cond.end.2429:                                    ; preds = %cond.false.2400, %cond.true.2399
  %cond2430 = phi %union.rec* [ null, %cond.true.2399 ], [ %964, %cond.false.2400 ]
  %965 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %965, %union.rec** @zz_hold, align 8
  %966 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %966, %union.rec** @zz_hold, align 8
  %967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12431 = bitcast %union.rec* %967 to %struct.word_type*
  %ou12432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12431, i32 0, i32 1
  %os112433 = bitcast %union.FIRST_UNION* %ou12432 to %struct.anon*
  %otype2434 = getelementptr inbounds %struct.anon, %struct.anon* %os112433, i32 0, i32 0
  %968 = load i8, i8* %otype2434, align 1
  %conv2435 = zext i8 %968 to i32
  %cmp2436 = icmp eq i32 %conv2435, 11
  br i1 %cmp2436, label %cond.true.2446, label %lor.lhs.false.2438

lor.lhs.false.2438:                               ; preds = %cond.end.2429
  %969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12439 = bitcast %union.rec* %969 to %struct.word_type*
  %ou12440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12439, i32 0, i32 1
  %os112441 = bitcast %union.FIRST_UNION* %ou12440 to %struct.anon*
  %otype2442 = getelementptr inbounds %struct.anon, %struct.anon* %os112441, i32 0, i32 0
  %970 = load i8, i8* %otype2442, align 1
  %conv2443 = zext i8 %970 to i32
  %cmp2444 = icmp eq i32 %conv2443, 12
  br i1 %cmp2444, label %cond.true.2446, label %cond.false.2452

cond.true.2446:                                   ; preds = %lor.lhs.false.2438, %cond.end.2429
  %971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12447 = bitcast %union.rec* %971 to %struct.word_type*
  %ou12448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12447, i32 0, i32 1
  %os112449 = bitcast %union.FIRST_UNION* %ou12448 to %struct.anon*
  %orec_size2450 = getelementptr inbounds %struct.anon, %struct.anon* %os112449, i32 0, i32 1
  %972 = load i8, i8* %orec_size2450, align 1
  %conv2451 = zext i8 %972 to i32
  br label %cond.end.2460

cond.false.2452:                                  ; preds = %lor.lhs.false.2438
  %973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12453 = bitcast %union.rec* %973 to %struct.word_type*
  %ou12454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12453, i32 0, i32 1
  %os112455 = bitcast %union.FIRST_UNION* %ou12454 to %struct.anon*
  %otype2456 = getelementptr inbounds %struct.anon, %struct.anon* %os112455, i32 0, i32 0
  %974 = load i8, i8* %otype2456, align 1
  %idxprom2457 = zext i8 %974 to i64
  %arrayidx2458 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2457
  %975 = load i8, i8* %arrayidx2458, align 1
  %conv2459 = zext i8 %975 to i32
  br label %cond.end.2460

cond.end.2460:                                    ; preds = %cond.false.2452, %cond.true.2446
  %cond2461 = phi i32 [ %conv2451, %cond.true.2446 ], [ %conv2459, %cond.false.2452 ]
  store i32 %cond2461, i32* @zz_size, align 4
  %976 = load i32, i32* @zz_size, align 4
  %idxprom2462 = sext i32 %976 to i64
  %arrayidx2463 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2462
  %977 = load %union.rec*, %union.rec** %arrayidx2463, align 8
  %978 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12464 = bitcast %union.rec* %978 to %struct.word_type*
  %olist2465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12464, i32 0, i32 0
  %arrayidx2466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2465, i32 0, i64 0
  %opred2467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2466, i32 0, i32 0
  store %union.rec* %977, %union.rec** %opred2467, align 8
  %979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %980 = load i32, i32* @zz_size, align 4
  %idxprom2468 = sext i32 %980 to i64
  %arrayidx2469 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2468
  store %union.rec* %979, %union.rec** %arrayidx2469, align 8
  br label %while.cond.2343

while.end.2470:                                   ; preds = %while.cond.2343
  %981 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %981, %union.rec** @zz_hold, align 8
  %982 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %982, %union.rec** @zz_hold, align 8
  %983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12471 = bitcast %union.rec* %983 to %struct.word_type*
  %ou12472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12471, i32 0, i32 1
  %os112473 = bitcast %union.FIRST_UNION* %ou12472 to %struct.anon*
  %otype2474 = getelementptr inbounds %struct.anon, %struct.anon* %os112473, i32 0, i32 0
  %984 = load i8, i8* %otype2474, align 1
  %conv2475 = zext i8 %984 to i32
  %cmp2476 = icmp eq i32 %conv2475, 11
  br i1 %cmp2476, label %cond.true.2486, label %lor.lhs.false.2478

lor.lhs.false.2478:                               ; preds = %while.end.2470
  %985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12479 = bitcast %union.rec* %985 to %struct.word_type*
  %ou12480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12479, i32 0, i32 1
  %os112481 = bitcast %union.FIRST_UNION* %ou12480 to %struct.anon*
  %otype2482 = getelementptr inbounds %struct.anon, %struct.anon* %os112481, i32 0, i32 0
  %986 = load i8, i8* %otype2482, align 1
  %conv2483 = zext i8 %986 to i32
  %cmp2484 = icmp eq i32 %conv2483, 12
  br i1 %cmp2484, label %cond.true.2486, label %cond.false.2492

cond.true.2486:                                   ; preds = %lor.lhs.false.2478, %while.end.2470
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12487 = bitcast %union.rec* %987 to %struct.word_type*
  %ou12488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12487, i32 0, i32 1
  %os112489 = bitcast %union.FIRST_UNION* %ou12488 to %struct.anon*
  %orec_size2490 = getelementptr inbounds %struct.anon, %struct.anon* %os112489, i32 0, i32 1
  %988 = load i8, i8* %orec_size2490, align 1
  %conv2491 = zext i8 %988 to i32
  br label %cond.end.2500

cond.false.2492:                                  ; preds = %lor.lhs.false.2478
  %989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12493 = bitcast %union.rec* %989 to %struct.word_type*
  %ou12494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12493, i32 0, i32 1
  %os112495 = bitcast %union.FIRST_UNION* %ou12494 to %struct.anon*
  %otype2496 = getelementptr inbounds %struct.anon, %struct.anon* %os112495, i32 0, i32 0
  %990 = load i8, i8* %otype2496, align 1
  %idxprom2497 = zext i8 %990 to i64
  %arrayidx2498 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2497
  %991 = load i8, i8* %arrayidx2498, align 1
  %conv2499 = zext i8 %991 to i32
  br label %cond.end.2500

cond.end.2500:                                    ; preds = %cond.false.2492, %cond.true.2486
  %cond2501 = phi i32 [ %conv2491, %cond.true.2486 ], [ %conv2499, %cond.false.2492 ]
  store i32 %cond2501, i32* @zz_size, align 4
  %992 = load i32, i32* @zz_size, align 4
  %idxprom2502 = sext i32 %992 to i64
  %arrayidx2503 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2502
  %993 = load %union.rec*, %union.rec** %arrayidx2503, align 8
  %994 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12504 = bitcast %union.rec* %994 to %struct.word_type*
  %olist2505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12504, i32 0, i32 0
  %arrayidx2506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2505, i32 0, i64 0
  %opred2507 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2506, i32 0, i32 0
  store %union.rec* %993, %union.rec** %opred2507, align 8
  %995 = load %union.rec*, %union.rec** @zz_hold, align 8
  %996 = load i32, i32* @zz_size, align 4
  %idxprom2508 = sext i32 %996 to i64
  %arrayidx2509 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2508
  store %union.rec* %995, %union.rec** %arrayidx2509, align 8
  %997 = load %union.rec*, %union.rec** %link, align 8
  %os12510 = bitcast %union.rec* %997 to %struct.word_type*
  %olist2511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12510, i32 0, i32 0
  %arrayidx2512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2511, i32 0, i64 0
  %opred2513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2512, i32 0, i32 0
  %998 = load %union.rec*, %union.rec** %opred2513, align 8
  store %union.rec* %998, %union.rec** %link, align 8
  %999 = load %union.rec*, %union.rec** %link, align 8
  %os12514 = bitcast %union.rec* %999 to %struct.word_type*
  %olist2515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12514, i32 0, i32 0
  %arrayidx2516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2515, i32 0, i64 0
  %osucc2517 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2516, i32 0, i32 1
  %1000 = load %union.rec*, %union.rec** %osucc2517, align 8
  store %union.rec* %1000, %union.rec** @xx_link, align 8
  %1001 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1001, %union.rec** @zz_hold, align 8
  %1002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12518 = bitcast %union.rec* %1002 to %struct.word_type*
  %olist2519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12518, i32 0, i32 0
  %arrayidx2520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2519, i32 0, i64 1
  %osucc2521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2520, i32 0, i32 1
  %1003 = load %union.rec*, %union.rec** %osucc2521, align 8
  %1004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2522 = icmp eq %union.rec* %1003, %1004
  br i1 %cmp2522, label %cond.true.2524, label %cond.false.2525

cond.true.2524:                                   ; preds = %cond.end.2500
  br label %cond.end.2554

cond.false.2525:                                  ; preds = %cond.end.2500
  %1005 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12526 = bitcast %union.rec* %1005 to %struct.word_type*
  %olist2527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12526, i32 0, i32 0
  %arrayidx2528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2527, i32 0, i64 1
  %osucc2529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2528, i32 0, i32 1
  %1006 = load %union.rec*, %union.rec** %osucc2529, align 8
  store %union.rec* %1006, %union.rec** @zz_res, align 8
  %1007 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12530 = bitcast %union.rec* %1007 to %struct.word_type*
  %olist2531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12530, i32 0, i32 0
  %arrayidx2532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2531, i32 0, i64 1
  %opred2533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2532, i32 0, i32 0
  %1008 = load %union.rec*, %union.rec** %opred2533, align 8
  %1009 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12534 = bitcast %union.rec* %1009 to %struct.word_type*
  %olist2535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12534, i32 0, i32 0
  %arrayidx2536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2535, i32 0, i64 1
  %opred2537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2536, i32 0, i32 0
  store %union.rec* %1008, %union.rec** %opred2537, align 8
  %1010 = load %union.rec*, %union.rec** @zz_res, align 8
  %1011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12538 = bitcast %union.rec* %1011 to %struct.word_type*
  %olist2539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12538, i32 0, i32 0
  %arrayidx2540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2539, i32 0, i64 1
  %opred2541 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2540, i32 0, i32 0
  %1012 = load %union.rec*, %union.rec** %opred2541, align 8
  %os12542 = bitcast %union.rec* %1012 to %struct.word_type*
  %olist2543 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12542, i32 0, i32 0
  %arrayidx2544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2543, i32 0, i64 1
  %osucc2545 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2544, i32 0, i32 1
  store %union.rec* %1010, %union.rec** %osucc2545, align 8
  %1013 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12546 = bitcast %union.rec* %1014 to %struct.word_type*
  %olist2547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12546, i32 0, i32 0
  %arrayidx2548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2547, i32 0, i64 1
  %osucc2549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2548, i32 0, i32 1
  store %union.rec* %1013, %union.rec** %osucc2549, align 8
  %1015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12550 = bitcast %union.rec* %1015 to %struct.word_type*
  %olist2551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12550, i32 0, i32 0
  %arrayidx2552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2551, i32 0, i64 1
  %opred2553 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2552, i32 0, i32 0
  store %union.rec* %1013, %union.rec** %opred2553, align 8
  %1016 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2554

cond.end.2554:                                    ; preds = %cond.false.2525, %cond.true.2524
  %cond2555 = phi %union.rec* [ null, %cond.true.2524 ], [ %1016, %cond.false.2525 ]
  store %union.rec* %cond2555, %union.rec** @xx_tmp, align 8
  %1017 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1017, %union.rec** @zz_hold, align 8
  %1018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12556 = bitcast %union.rec* %1018 to %struct.word_type*
  %olist2557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12556, i32 0, i32 0
  %arrayidx2558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2557, i32 0, i64 0
  %osucc2559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2558, i32 0, i32 1
  %1019 = load %union.rec*, %union.rec** %osucc2559, align 8
  %1020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2560 = icmp eq %union.rec* %1019, %1020
  br i1 %cmp2560, label %cond.true.2562, label %cond.false.2563

cond.true.2562:                                   ; preds = %cond.end.2554
  br label %cond.end.2592

cond.false.2563:                                  ; preds = %cond.end.2554
  %1021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12564 = bitcast %union.rec* %1021 to %struct.word_type*
  %olist2565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12564, i32 0, i32 0
  %arrayidx2566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2565, i32 0, i64 0
  %osucc2567 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2566, i32 0, i32 1
  %1022 = load %union.rec*, %union.rec** %osucc2567, align 8
  store %union.rec* %1022, %union.rec** @zz_res, align 8
  %1023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12568 = bitcast %union.rec* %1023 to %struct.word_type*
  %olist2569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12568, i32 0, i32 0
  %arrayidx2570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2569, i32 0, i64 0
  %opred2571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2570, i32 0, i32 0
  %1024 = load %union.rec*, %union.rec** %opred2571, align 8
  %1025 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12572 = bitcast %union.rec* %1025 to %struct.word_type*
  %olist2573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12572, i32 0, i32 0
  %arrayidx2574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2573, i32 0, i64 0
  %opred2575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2574, i32 0, i32 0
  store %union.rec* %1024, %union.rec** %opred2575, align 8
  %1026 = load %union.rec*, %union.rec** @zz_res, align 8
  %1027 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12576 = bitcast %union.rec* %1027 to %struct.word_type*
  %olist2577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12576, i32 0, i32 0
  %arrayidx2578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2577, i32 0, i64 0
  %opred2579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2578, i32 0, i32 0
  %1028 = load %union.rec*, %union.rec** %opred2579, align 8
  %os12580 = bitcast %union.rec* %1028 to %struct.word_type*
  %olist2581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12580, i32 0, i32 0
  %arrayidx2582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2581, i32 0, i64 0
  %osucc2583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2582, i32 0, i32 1
  store %union.rec* %1026, %union.rec** %osucc2583, align 8
  %1029 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12584 = bitcast %union.rec* %1030 to %struct.word_type*
  %olist2585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12584, i32 0, i32 0
  %arrayidx2586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2585, i32 0, i64 0
  %osucc2587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2586, i32 0, i32 1
  store %union.rec* %1029, %union.rec** %osucc2587, align 8
  %1031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12588 = bitcast %union.rec* %1031 to %struct.word_type*
  %olist2589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12588, i32 0, i32 0
  %arrayidx2590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2589, i32 0, i64 0
  %opred2591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2590, i32 0, i32 0
  store %union.rec* %1029, %union.rec** %opred2591, align 8
  %1032 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2592

cond.end.2592:                                    ; preds = %cond.false.2563, %cond.true.2562
  %cond2593 = phi %union.rec* [ null, %cond.true.2562 ], [ %1032, %cond.false.2563 ]
  %1033 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1033, %union.rec** @zz_hold, align 8
  %1034 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1034, %union.rec** @zz_hold, align 8
  %1035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12594 = bitcast %union.rec* %1035 to %struct.word_type*
  %ou12595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12594, i32 0, i32 1
  %os112596 = bitcast %union.FIRST_UNION* %ou12595 to %struct.anon*
  %otype2597 = getelementptr inbounds %struct.anon, %struct.anon* %os112596, i32 0, i32 0
  %1036 = load i8, i8* %otype2597, align 1
  %conv2598 = zext i8 %1036 to i32
  %cmp2599 = icmp eq i32 %conv2598, 11
  br i1 %cmp2599, label %cond.true.2609, label %lor.lhs.false.2601

lor.lhs.false.2601:                               ; preds = %cond.end.2592
  %1037 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12602 = bitcast %union.rec* %1037 to %struct.word_type*
  %ou12603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12602, i32 0, i32 1
  %os112604 = bitcast %union.FIRST_UNION* %ou12603 to %struct.anon*
  %otype2605 = getelementptr inbounds %struct.anon, %struct.anon* %os112604, i32 0, i32 0
  %1038 = load i8, i8* %otype2605, align 1
  %conv2606 = zext i8 %1038 to i32
  %cmp2607 = icmp eq i32 %conv2606, 12
  br i1 %cmp2607, label %cond.true.2609, label %cond.false.2615

cond.true.2609:                                   ; preds = %lor.lhs.false.2601, %cond.end.2592
  %1039 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12610 = bitcast %union.rec* %1039 to %struct.word_type*
  %ou12611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12610, i32 0, i32 1
  %os112612 = bitcast %union.FIRST_UNION* %ou12611 to %struct.anon*
  %orec_size2613 = getelementptr inbounds %struct.anon, %struct.anon* %os112612, i32 0, i32 1
  %1040 = load i8, i8* %orec_size2613, align 1
  %conv2614 = zext i8 %1040 to i32
  br label %cond.end.2623

cond.false.2615:                                  ; preds = %lor.lhs.false.2601
  %1041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12616 = bitcast %union.rec* %1041 to %struct.word_type*
  %ou12617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12616, i32 0, i32 1
  %os112618 = bitcast %union.FIRST_UNION* %ou12617 to %struct.anon*
  %otype2619 = getelementptr inbounds %struct.anon, %struct.anon* %os112618, i32 0, i32 0
  %1042 = load i8, i8* %otype2619, align 1
  %idxprom2620 = zext i8 %1042 to i64
  %arrayidx2621 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2620
  %1043 = load i8, i8* %arrayidx2621, align 1
  %conv2622 = zext i8 %1043 to i32
  br label %cond.end.2623

cond.end.2623:                                    ; preds = %cond.false.2615, %cond.true.2609
  %cond2624 = phi i32 [ %conv2614, %cond.true.2609 ], [ %conv2622, %cond.false.2615 ]
  store i32 %cond2624, i32* @zz_size, align 4
  %1044 = load i32, i32* @zz_size, align 4
  %idxprom2625 = sext i32 %1044 to i64
  %arrayidx2626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2625
  %1045 = load %union.rec*, %union.rec** %arrayidx2626, align 8
  %1046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12627 = bitcast %union.rec* %1046 to %struct.word_type*
  %olist2628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12627, i32 0, i32 0
  %arrayidx2629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2628, i32 0, i64 0
  %opred2630 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2629, i32 0, i32 0
  store %union.rec* %1045, %union.rec** %opred2630, align 8
  %1047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1048 = load i32, i32* @zz_size, align 4
  %idxprom2631 = sext i32 %1048 to i64
  %arrayidx2632 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2631
  store %union.rec* %1047, %union.rec** %arrayidx2632, align 8
  %1049 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os12633 = bitcast %union.rec* %1049 to %struct.word_type*
  %olist2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12633, i32 0, i32 0
  %arrayidx2635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2634, i32 0, i64 1
  %osucc2636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2635, i32 0, i32 1
  %1050 = load %union.rec*, %union.rec** %osucc2636, align 8
  %1051 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp2637 = icmp eq %union.rec* %1050, %1051
  br i1 %cmp2637, label %if.then.2639, label %if.end.2641

if.then.2639:                                     ; preds = %cond.end.2623
  %1052 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call2640 = call i32 @DisposeObject(%union.rec* %1052)
  br label %if.end.2641

if.end.2641:                                      ; preds = %if.then.2639, %cond.end.2623
  br label %sw.epilog

sw.bb.2642:                                       ; preds = %if.end.2212
  br label %sw.epilog

sw.bb.2643:                                       ; preds = %if.end.2212
  br label %SUSPEND

sw.bb.2644:                                       ; preds = %if.end.2212
  br label %REJECT

sw.epilog:                                        ; preds = %if.end.2212, %sw.bb.2642, %if.end.2641
  br label %sw.epilog.4348

sw.bb.2645:                                       ; preds = %if.end.1828
  %1053 = load %union.rec*, %union.rec** %dest, align 8
  %os12646 = bitcast %union.rec* %1053 to %struct.word_type*
  %ou22647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12646, i32 0, i32 2
  %os222648 = bitcast %union.SECOND_UNION* %ou22647 to %struct.anon.1*
  %1054 = bitcast %struct.anon.1* %os222648 to i32*
  %bf.load2649 = load i32, i32* %1054, align 4
  %bf.lshr2650 = lshr i32 %bf.load2649, 29
  %bf.clear2651 = and i32 %bf.lshr2650, 3
  %1055 = load %union.rec*, %union.rec** %y, align 8
  %os12652 = bitcast %union.rec* %1055 to %struct.word_type*
  %ou22653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12652, i32 0, i32 2
  %os222654 = bitcast %union.SECOND_UNION* %ou22653 to %struct.anon.1*
  %1056 = bitcast %struct.anon.1* %os222654 to i32*
  %bf.load2655 = load i32, i32* %1056, align 4
  %bf.value2656 = and i32 %bf.clear2651, 3
  %bf.shl2657 = shl i32 %bf.value2656, 29
  %bf.clear2658 = and i32 %bf.load2655, -1610612737
  %bf.set2659 = or i32 %bf.clear2658, %bf.shl2657
  store i32 %bf.set2659, i32* %1056, align 4
  %1057 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %1057 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %1058 = bitcast %struct.GAP* %ogap to i16*
  %bf.load2660 = load i16, i16* %1058, align 4
  %bf.lshr2661 = lshr i16 %bf.load2660, 9
  %bf.clear2662 = and i16 %bf.lshr2661, 1
  %bf.cast2663 = zext i16 %bf.clear2662 to i32
  %tobool2664 = icmp ne i32 %bf.cast2663, 0
  br i1 %tobool2664, label %if.end.2673, label %if.then.2665

if.then.2665:                                     ; preds = %sw.bb.2645
  %1059 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12666 = bitcast %union.rec* %1059 to %struct.word_type*
  %ou22667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12666, i32 0, i32 2
  %os232668 = bitcast %union.SECOND_UNION* %ou22667 to %struct.anon.2*
  %oblocked2669 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232668, i32 0, i32 2
  %bf.load2670 = load i16, i16* %oblocked2669, align 2
  %bf.clear2671 = and i16 %bf.load2670, -33
  %bf.set2672 = or i16 %bf.clear2671, 32
  store i16 %bf.set2672, i16* %oblocked2669, align 2
  br label %if.end.2673

if.end.2673:                                      ; preds = %if.then.2665, %sw.bb.2645
  br label %sw.epilog.4348

sw.bb.2674:                                       ; preds = %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828
  %1060 = load %union.rec*, %union.rec** %dest, align 8
  %os12675 = bitcast %union.rec* %1060 to %struct.word_type*
  %ou22676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12675, i32 0, i32 2
  %os222677 = bitcast %union.SECOND_UNION* %ou22676 to %struct.anon.1*
  %1061 = bitcast %struct.anon.1* %os222677 to i32*
  %bf.load2678 = load i32, i32* %1061, align 4
  %bf.lshr2679 = lshr i32 %bf.load2678, 29
  %bf.clear2680 = and i32 %bf.lshr2679, 3
  %1062 = load %union.rec*, %union.rec** %y, align 8
  %os12681 = bitcast %union.rec* %1062 to %struct.word_type*
  %ou22682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12681, i32 0, i32 2
  %os222683 = bitcast %union.SECOND_UNION* %ou22682 to %struct.anon.1*
  %1063 = bitcast %struct.anon.1* %os222683 to i32*
  %bf.load2684 = load i32, i32* %1063, align 4
  %bf.value2685 = and i32 %bf.clear2680, 3
  %bf.shl2686 = shl i32 %bf.value2685, 29
  %bf.clear2687 = and i32 %bf.load2684, -1610612737
  %bf.set2688 = or i32 %bf.clear2687, %bf.shl2686
  store i32 %bf.set2688, i32* %1063, align 4
  br label %sw.epilog.4348

sw.bb.2689:                                       ; preds = %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828
  %1064 = load %union.rec*, %union.rec** %dest, align 8
  %os12690 = bitcast %union.rec* %1064 to %struct.word_type*
  %ou22691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12690, i32 0, i32 2
  %os222692 = bitcast %union.SECOND_UNION* %ou22691 to %struct.anon.1*
  %1065 = bitcast %struct.anon.1* %os222692 to i32*
  %bf.load2693 = load i32, i32* %1065, align 4
  %bf.lshr2694 = lshr i32 %bf.load2693, 29
  %bf.clear2695 = and i32 %bf.lshr2694, 3
  %1066 = load %union.rec*, %union.rec** %y, align 8
  %os12696 = bitcast %union.rec* %1066 to %struct.word_type*
  %ou22697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12696, i32 0, i32 2
  %os222698 = bitcast %union.SECOND_UNION* %ou22697 to %struct.anon.1*
  %1067 = bitcast %struct.anon.1* %os222698 to i32*
  %bf.load2699 = load i32, i32* %1067, align 4
  %bf.value2700 = and i32 %bf.clear2695, 3
  %bf.shl2701 = shl i32 %bf.value2700, 29
  %bf.clear2702 = and i32 %bf.load2699, -1610612737
  %bf.set2703 = or i32 %bf.clear2702, %bf.shl2701
  store i32 %bf.set2703, i32* %1067, align 4
  br label %sw.epilog.4348

sw.bb.2704:                                       ; preds = %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828, %if.end.1828
  %1068 = load %union.rec*, %union.rec** %dest, align 8
  %os12705 = bitcast %union.rec* %1068 to %struct.word_type*
  %ou22706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12705, i32 0, i32 2
  %os222707 = bitcast %union.SECOND_UNION* %ou22706 to %struct.anon.1*
  %1069 = bitcast %struct.anon.1* %os222707 to i32*
  %bf.load2708 = load i32, i32* %1069, align 4
  %bf.lshr2709 = lshr i32 %bf.load2708, 29
  %bf.clear2710 = and i32 %bf.lshr2709, 3
  %1070 = load %union.rec*, %union.rec** %y, align 8
  %os12711 = bitcast %union.rec* %1070 to %struct.word_type*
  %ou22712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12711, i32 0, i32 2
  %os222713 = bitcast %union.SECOND_UNION* %ou22712 to %struct.anon.1*
  %1071 = bitcast %struct.anon.1* %os222713 to i32*
  %bf.load2714 = load i32, i32* %1071, align 4
  %bf.value2715 = and i32 %bf.clear2710, 3
  %bf.shl2716 = shl i32 %bf.value2715, 29
  %bf.clear2717 = and i32 %bf.load2714, -1610612737
  %bf.set2718 = or i32 %bf.clear2717, %bf.shl2716
  store i32 %bf.set2718, i32* %1071, align 4
  %1072 = load i32, i32* %dim, align 4
  %cmp2719 = icmp eq i32 %1072, 1
  br i1 %cmp2719, label %if.then.2721, label %if.end.3450

if.then.2721:                                     ; preds = %sw.bb.2704
  %1073 = load %union.rec*, %union.rec** %link, align 8
  %os12722 = bitcast %union.rec* %1073 to %struct.word_type*
  %olist2723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12722, i32 0, i32 0
  %arrayidx2724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2723, i32 0, i64 0
  %osucc2725 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2724, i32 0, i32 1
  %1074 = load %union.rec*, %union.rec** %osucc2725, align 8
  store %union.rec* %1074, %union.rec** %zlink, align 8
  br label %for.cond.2726

for.cond.2726:                                    ; preds = %for.inc.3434, %if.then.2721
  %1075 = load %union.rec*, %union.rec** %zlink, align 8
  %1076 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp2727 = icmp ne %union.rec* %1075, %1076
  br i1 %cmp2727, label %for.body.2729, label %for.end.3439

for.body.2729:                                    ; preds = %for.cond.2726
  %1077 = load %union.rec*, %union.rec** %zlink, align 8
  %os12730 = bitcast %union.rec* %1077 to %struct.word_type*
  %olist2731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12730, i32 0, i32 0
  %arrayidx2732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2731, i32 0, i64 1
  %opred2733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2732, i32 0, i32 0
  %1078 = load %union.rec*, %union.rec** %opred2733, align 8
  store %union.rec* %1078, %union.rec** %z, align 8
  br label %for.cond.2734

for.cond.2734:                                    ; preds = %for.inc.2743, %for.body.2729
  %1079 = load %union.rec*, %union.rec** %z, align 8
  %os12735 = bitcast %union.rec* %1079 to %struct.word_type*
  %ou12736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12735, i32 0, i32 1
  %os112737 = bitcast %union.FIRST_UNION* %ou12736 to %struct.anon*
  %otype2738 = getelementptr inbounds %struct.anon, %struct.anon* %os112737, i32 0, i32 0
  %1080 = load i8, i8* %otype2738, align 1
  %conv2739 = zext i8 %1080 to i32
  %cmp2740 = icmp eq i32 %conv2739, 0
  br i1 %cmp2740, label %for.body.2742, label %for.end.2748

for.body.2742:                                    ; preds = %for.cond.2734
  br label %for.inc.2743

for.inc.2743:                                     ; preds = %for.body.2742
  %1081 = load %union.rec*, %union.rec** %z, align 8
  %os12744 = bitcast %union.rec* %1081 to %struct.word_type*
  %olist2745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12744, i32 0, i32 0
  %arrayidx2746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2745, i32 0, i64 1
  %opred2747 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2746, i32 0, i32 0
  %1082 = load %union.rec*, %union.rec** %opred2747, align 8
  store %union.rec* %1082, %union.rec** %z, align 8
  br label %for.cond.2734

for.end.2748:                                     ; preds = %for.cond.2734
  %1083 = load %union.rec*, %union.rec** %z, align 8
  %os12749 = bitcast %union.rec* %1083 to %struct.word_type*
  %ou12750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12749, i32 0, i32 1
  %os112751 = bitcast %union.FIRST_UNION* %ou12750 to %struct.anon*
  %otype2752 = getelementptr inbounds %struct.anon, %struct.anon* %os112751, i32 0, i32 0
  %1084 = load i8, i8* %otype2752, align 1
  %conv2753 = zext i8 %1084 to i32
  switch i32 %conv2753, label %sw.default [
    i32 121, label %sw.bb.2754
    i32 122, label %sw.bb.3065
    i32 1, label %sw.bb.3419
  ]

sw.bb.2754:                                       ; preds = %for.end.2748
  %1085 = load %union.rec*, %union.rec** %z, align 8
  %os12755 = bitcast %union.rec* %1085 to %struct.word_type*
  %ou22756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12755, i32 0, i32 2
  %os232757 = bitcast %union.SECOND_UNION* %ou22756 to %struct.anon.2*
  %onon_blocking2758 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232757, i32 0, i32 2
  %bf.load2759 = load i16, i16* %onon_blocking2758, align 2
  %bf.clear2760 = and i16 %bf.load2759, 1
  %bf.cast2761 = zext i16 %bf.clear2760 to i32
  %tobool2762 = icmp ne i32 %bf.cast2761, 0
  br i1 %tobool2762, label %if.then.2763, label %if.else.3063

if.then.2763:                                     ; preds = %sw.bb.2754
  %1086 = load %union.rec*, %union.rec** %zlink, align 8
  %os12764 = bitcast %union.rec* %1086 to %struct.word_type*
  %olist2765 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12764, i32 0, i32 0
  %arrayidx2766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2765, i32 0, i64 0
  %opred2767 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2766, i32 0, i32 0
  %1087 = load %union.rec*, %union.rec** %opred2767, align 8
  store %union.rec* %1087, %union.rec** %zlink, align 8
  %1088 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1088, %union.rec** @xx_hold, align 8
  br label %while.cond.2768

while.cond.2768:                                  ; preds = %cond.end.2885, %if.then.2763
  %1089 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12769 = bitcast %union.rec* %1089 to %struct.word_type*
  %olist2770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12769, i32 0, i32 0
  %arrayidx2771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2770, i32 0, i64 1
  %osucc2772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2771, i32 0, i32 1
  %1090 = load %union.rec*, %union.rec** %osucc2772, align 8
  %1091 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp2773 = icmp ne %union.rec* %1090, %1091
  br i1 %cmp2773, label %while.body.2775, label %while.end.2895

while.body.2775:                                  ; preds = %while.cond.2768
  %1092 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12776 = bitcast %union.rec* %1092 to %struct.word_type*
  %olist2777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12776, i32 0, i32 0
  %arrayidx2778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2777, i32 0, i64 1
  %osucc2779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2778, i32 0, i32 1
  %1093 = load %union.rec*, %union.rec** %osucc2779, align 8
  store %union.rec* %1093, %union.rec** @xx_link, align 8
  %1094 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1094, %union.rec** @zz_hold, align 8
  %1095 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12780 = bitcast %union.rec* %1095 to %struct.word_type*
  %olist2781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12780, i32 0, i32 0
  %arrayidx2782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2781, i32 0, i64 1
  %osucc2783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2782, i32 0, i32 1
  %1096 = load %union.rec*, %union.rec** %osucc2783, align 8
  %1097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2784 = icmp eq %union.rec* %1096, %1097
  br i1 %cmp2784, label %cond.true.2786, label %cond.false.2787

cond.true.2786:                                   ; preds = %while.body.2775
  br label %cond.end.2816

cond.false.2787:                                  ; preds = %while.body.2775
  %1098 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12788 = bitcast %union.rec* %1098 to %struct.word_type*
  %olist2789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12788, i32 0, i32 0
  %arrayidx2790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2789, i32 0, i64 1
  %osucc2791 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2790, i32 0, i32 1
  %1099 = load %union.rec*, %union.rec** %osucc2791, align 8
  store %union.rec* %1099, %union.rec** @zz_res, align 8
  %1100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12792 = bitcast %union.rec* %1100 to %struct.word_type*
  %olist2793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12792, i32 0, i32 0
  %arrayidx2794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2793, i32 0, i64 1
  %opred2795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2794, i32 0, i32 0
  %1101 = load %union.rec*, %union.rec** %opred2795, align 8
  %1102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12796 = bitcast %union.rec* %1102 to %struct.word_type*
  %olist2797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12796, i32 0, i32 0
  %arrayidx2798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2797, i32 0, i64 1
  %opred2799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2798, i32 0, i32 0
  store %union.rec* %1101, %union.rec** %opred2799, align 8
  %1103 = load %union.rec*, %union.rec** @zz_res, align 8
  %1104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12800 = bitcast %union.rec* %1104 to %struct.word_type*
  %olist2801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12800, i32 0, i32 0
  %arrayidx2802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2801, i32 0, i64 1
  %opred2803 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2802, i32 0, i32 0
  %1105 = load %union.rec*, %union.rec** %opred2803, align 8
  %os12804 = bitcast %union.rec* %1105 to %struct.word_type*
  %olist2805 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12804, i32 0, i32 0
  %arrayidx2806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2805, i32 0, i64 1
  %osucc2807 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2806, i32 0, i32 1
  store %union.rec* %1103, %union.rec** %osucc2807, align 8
  %1106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12808 = bitcast %union.rec* %1107 to %struct.word_type*
  %olist2809 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12808, i32 0, i32 0
  %arrayidx2810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2809, i32 0, i64 1
  %osucc2811 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2810, i32 0, i32 1
  store %union.rec* %1106, %union.rec** %osucc2811, align 8
  %1108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12812 = bitcast %union.rec* %1108 to %struct.word_type*
  %olist2813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12812, i32 0, i32 0
  %arrayidx2814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2813, i32 0, i64 1
  %opred2815 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2814, i32 0, i32 0
  store %union.rec* %1106, %union.rec** %opred2815, align 8
  %1109 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2816

cond.end.2816:                                    ; preds = %cond.false.2787, %cond.true.2786
  %cond2817 = phi %union.rec* [ null, %cond.true.2786 ], [ %1109, %cond.false.2787 ]
  %1110 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1110, %union.rec** @zz_hold, align 8
  %1111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12818 = bitcast %union.rec* %1111 to %struct.word_type*
  %olist2819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12818, i32 0, i32 0
  %arrayidx2820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2819, i32 0, i64 0
  %osucc2821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2820, i32 0, i32 1
  %1112 = load %union.rec*, %union.rec** %osucc2821, align 8
  %1113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2822 = icmp eq %union.rec* %1112, %1113
  br i1 %cmp2822, label %cond.true.2824, label %cond.false.2825

cond.true.2824:                                   ; preds = %cond.end.2816
  br label %cond.end.2854

cond.false.2825:                                  ; preds = %cond.end.2816
  %1114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12826 = bitcast %union.rec* %1114 to %struct.word_type*
  %olist2827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12826, i32 0, i32 0
  %arrayidx2828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2827, i32 0, i64 0
  %osucc2829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2828, i32 0, i32 1
  %1115 = load %union.rec*, %union.rec** %osucc2829, align 8
  store %union.rec* %1115, %union.rec** @zz_res, align 8
  %1116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12830 = bitcast %union.rec* %1116 to %struct.word_type*
  %olist2831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12830, i32 0, i32 0
  %arrayidx2832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2831, i32 0, i64 0
  %opred2833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2832, i32 0, i32 0
  %1117 = load %union.rec*, %union.rec** %opred2833, align 8
  %1118 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12834 = bitcast %union.rec* %1118 to %struct.word_type*
  %olist2835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12834, i32 0, i32 0
  %arrayidx2836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2835, i32 0, i64 0
  %opred2837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2836, i32 0, i32 0
  store %union.rec* %1117, %union.rec** %opred2837, align 8
  %1119 = load %union.rec*, %union.rec** @zz_res, align 8
  %1120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12838 = bitcast %union.rec* %1120 to %struct.word_type*
  %olist2839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12838, i32 0, i32 0
  %arrayidx2840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2839, i32 0, i64 0
  %opred2841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2840, i32 0, i32 0
  %1121 = load %union.rec*, %union.rec** %opred2841, align 8
  %os12842 = bitcast %union.rec* %1121 to %struct.word_type*
  %olist2843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12842, i32 0, i32 0
  %arrayidx2844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2843, i32 0, i64 0
  %osucc2845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2844, i32 0, i32 1
  store %union.rec* %1119, %union.rec** %osucc2845, align 8
  %1122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12846 = bitcast %union.rec* %1123 to %struct.word_type*
  %olist2847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12846, i32 0, i32 0
  %arrayidx2848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2847, i32 0, i64 0
  %osucc2849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2848, i32 0, i32 1
  store %union.rec* %1122, %union.rec** %osucc2849, align 8
  %1124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12850 = bitcast %union.rec* %1124 to %struct.word_type*
  %olist2851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12850, i32 0, i32 0
  %arrayidx2852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2851, i32 0, i64 0
  %opred2853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2852, i32 0, i32 0
  store %union.rec* %1122, %union.rec** %opred2853, align 8
  %1125 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2854

cond.end.2854:                                    ; preds = %cond.false.2825, %cond.true.2824
  %cond2855 = phi %union.rec* [ null, %cond.true.2824 ], [ %1125, %cond.false.2825 ]
  %1126 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1126, %union.rec** @zz_hold, align 8
  %1127 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1127, %union.rec** @zz_hold, align 8
  %1128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12856 = bitcast %union.rec* %1128 to %struct.word_type*
  %ou12857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12856, i32 0, i32 1
  %os112858 = bitcast %union.FIRST_UNION* %ou12857 to %struct.anon*
  %otype2859 = getelementptr inbounds %struct.anon, %struct.anon* %os112858, i32 0, i32 0
  %1129 = load i8, i8* %otype2859, align 1
  %conv2860 = zext i8 %1129 to i32
  %cmp2861 = icmp eq i32 %conv2860, 11
  br i1 %cmp2861, label %cond.true.2871, label %lor.lhs.false.2863

lor.lhs.false.2863:                               ; preds = %cond.end.2854
  %1130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12864 = bitcast %union.rec* %1130 to %struct.word_type*
  %ou12865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12864, i32 0, i32 1
  %os112866 = bitcast %union.FIRST_UNION* %ou12865 to %struct.anon*
  %otype2867 = getelementptr inbounds %struct.anon, %struct.anon* %os112866, i32 0, i32 0
  %1131 = load i8, i8* %otype2867, align 1
  %conv2868 = zext i8 %1131 to i32
  %cmp2869 = icmp eq i32 %conv2868, 12
  br i1 %cmp2869, label %cond.true.2871, label %cond.false.2877

cond.true.2871:                                   ; preds = %lor.lhs.false.2863, %cond.end.2854
  %1132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12872 = bitcast %union.rec* %1132 to %struct.word_type*
  %ou12873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12872, i32 0, i32 1
  %os112874 = bitcast %union.FIRST_UNION* %ou12873 to %struct.anon*
  %orec_size2875 = getelementptr inbounds %struct.anon, %struct.anon* %os112874, i32 0, i32 1
  %1133 = load i8, i8* %orec_size2875, align 1
  %conv2876 = zext i8 %1133 to i32
  br label %cond.end.2885

cond.false.2877:                                  ; preds = %lor.lhs.false.2863
  %1134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12878 = bitcast %union.rec* %1134 to %struct.word_type*
  %ou12879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12878, i32 0, i32 1
  %os112880 = bitcast %union.FIRST_UNION* %ou12879 to %struct.anon*
  %otype2881 = getelementptr inbounds %struct.anon, %struct.anon* %os112880, i32 0, i32 0
  %1135 = load i8, i8* %otype2881, align 1
  %idxprom2882 = zext i8 %1135 to i64
  %arrayidx2883 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2882
  %1136 = load i8, i8* %arrayidx2883, align 1
  %conv2884 = zext i8 %1136 to i32
  br label %cond.end.2885

cond.end.2885:                                    ; preds = %cond.false.2877, %cond.true.2871
  %cond2886 = phi i32 [ %conv2876, %cond.true.2871 ], [ %conv2884, %cond.false.2877 ]
  store i32 %cond2886, i32* @zz_size, align 4
  %1137 = load i32, i32* @zz_size, align 4
  %idxprom2887 = sext i32 %1137 to i64
  %arrayidx2888 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2887
  %1138 = load %union.rec*, %union.rec** %arrayidx2888, align 8
  %1139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12889 = bitcast %union.rec* %1139 to %struct.word_type*
  %olist2890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12889, i32 0, i32 0
  %arrayidx2891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2890, i32 0, i64 0
  %opred2892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2891, i32 0, i32 0
  store %union.rec* %1138, %union.rec** %opred2892, align 8
  %1140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1141 = load i32, i32* @zz_size, align 4
  %idxprom2893 = sext i32 %1141 to i64
  %arrayidx2894 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2893
  store %union.rec* %1140, %union.rec** %arrayidx2894, align 8
  br label %while.cond.2768

while.end.2895:                                   ; preds = %while.cond.2768
  br label %while.cond.2896

while.cond.2896:                                  ; preds = %cond.end.3013, %while.end.2895
  %1142 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12897 = bitcast %union.rec* %1142 to %struct.word_type*
  %olist2898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12897, i32 0, i32 0
  %arrayidx2899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2898, i32 0, i64 0
  %osucc2900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2899, i32 0, i32 1
  %1143 = load %union.rec*, %union.rec** %osucc2900, align 8
  %1144 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp2901 = icmp ne %union.rec* %1143, %1144
  br i1 %cmp2901, label %while.body.2903, label %while.end.3023

while.body.2903:                                  ; preds = %while.cond.2896
  %1145 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12904 = bitcast %union.rec* %1145 to %struct.word_type*
  %olist2905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12904, i32 0, i32 0
  %arrayidx2906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2905, i32 0, i64 0
  %osucc2907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2906, i32 0, i32 1
  %1146 = load %union.rec*, %union.rec** %osucc2907, align 8
  store %union.rec* %1146, %union.rec** @xx_link, align 8
  %1147 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1147, %union.rec** @zz_hold, align 8
  %1148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12908 = bitcast %union.rec* %1148 to %struct.word_type*
  %olist2909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12908, i32 0, i32 0
  %arrayidx2910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2909, i32 0, i64 1
  %osucc2911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2910, i32 0, i32 1
  %1149 = load %union.rec*, %union.rec** %osucc2911, align 8
  %1150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2912 = icmp eq %union.rec* %1149, %1150
  br i1 %cmp2912, label %cond.true.2914, label %cond.false.2915

cond.true.2914:                                   ; preds = %while.body.2903
  br label %cond.end.2944

cond.false.2915:                                  ; preds = %while.body.2903
  %1151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12916 = bitcast %union.rec* %1151 to %struct.word_type*
  %olist2917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12916, i32 0, i32 0
  %arrayidx2918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2917, i32 0, i64 1
  %osucc2919 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2918, i32 0, i32 1
  %1152 = load %union.rec*, %union.rec** %osucc2919, align 8
  store %union.rec* %1152, %union.rec** @zz_res, align 8
  %1153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12920 = bitcast %union.rec* %1153 to %struct.word_type*
  %olist2921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12920, i32 0, i32 0
  %arrayidx2922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2921, i32 0, i64 1
  %opred2923 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2922, i32 0, i32 0
  %1154 = load %union.rec*, %union.rec** %opred2923, align 8
  %1155 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12924 = bitcast %union.rec* %1155 to %struct.word_type*
  %olist2925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12924, i32 0, i32 0
  %arrayidx2926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2925, i32 0, i64 1
  %opred2927 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2926, i32 0, i32 0
  store %union.rec* %1154, %union.rec** %opred2927, align 8
  %1156 = load %union.rec*, %union.rec** @zz_res, align 8
  %1157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12928 = bitcast %union.rec* %1157 to %struct.word_type*
  %olist2929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12928, i32 0, i32 0
  %arrayidx2930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2929, i32 0, i64 1
  %opred2931 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2930, i32 0, i32 0
  %1158 = load %union.rec*, %union.rec** %opred2931, align 8
  %os12932 = bitcast %union.rec* %1158 to %struct.word_type*
  %olist2933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12932, i32 0, i32 0
  %arrayidx2934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2933, i32 0, i64 1
  %osucc2935 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2934, i32 0, i32 1
  store %union.rec* %1156, %union.rec** %osucc2935, align 8
  %1159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12936 = bitcast %union.rec* %1160 to %struct.word_type*
  %olist2937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12936, i32 0, i32 0
  %arrayidx2938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2937, i32 0, i64 1
  %osucc2939 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2938, i32 0, i32 1
  store %union.rec* %1159, %union.rec** %osucc2939, align 8
  %1161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12940 = bitcast %union.rec* %1161 to %struct.word_type*
  %olist2941 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12940, i32 0, i32 0
  %arrayidx2942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2941, i32 0, i64 1
  %opred2943 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2942, i32 0, i32 0
  store %union.rec* %1159, %union.rec** %opred2943, align 8
  %1162 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2944

cond.end.2944:                                    ; preds = %cond.false.2915, %cond.true.2914
  %cond2945 = phi %union.rec* [ null, %cond.true.2914 ], [ %1162, %cond.false.2915 ]
  %1163 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1163, %union.rec** @zz_hold, align 8
  %1164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12946 = bitcast %union.rec* %1164 to %struct.word_type*
  %olist2947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12946, i32 0, i32 0
  %arrayidx2948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2947, i32 0, i64 0
  %osucc2949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2948, i32 0, i32 1
  %1165 = load %union.rec*, %union.rec** %osucc2949, align 8
  %1166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2950 = icmp eq %union.rec* %1165, %1166
  br i1 %cmp2950, label %cond.true.2952, label %cond.false.2953

cond.true.2952:                                   ; preds = %cond.end.2944
  br label %cond.end.2982

cond.false.2953:                                  ; preds = %cond.end.2944
  %1167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12954 = bitcast %union.rec* %1167 to %struct.word_type*
  %olist2955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12954, i32 0, i32 0
  %arrayidx2956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2955, i32 0, i64 0
  %osucc2957 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2956, i32 0, i32 1
  %1168 = load %union.rec*, %union.rec** %osucc2957, align 8
  store %union.rec* %1168, %union.rec** @zz_res, align 8
  %1169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12958 = bitcast %union.rec* %1169 to %struct.word_type*
  %olist2959 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12958, i32 0, i32 0
  %arrayidx2960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2959, i32 0, i64 0
  %opred2961 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2960, i32 0, i32 0
  %1170 = load %union.rec*, %union.rec** %opred2961, align 8
  %1171 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12962 = bitcast %union.rec* %1171 to %struct.word_type*
  %olist2963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12962, i32 0, i32 0
  %arrayidx2964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2963, i32 0, i64 0
  %opred2965 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2964, i32 0, i32 0
  store %union.rec* %1170, %union.rec** %opred2965, align 8
  %1172 = load %union.rec*, %union.rec** @zz_res, align 8
  %1173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12966 = bitcast %union.rec* %1173 to %struct.word_type*
  %olist2967 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12966, i32 0, i32 0
  %arrayidx2968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2967, i32 0, i64 0
  %opred2969 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2968, i32 0, i32 0
  %1174 = load %union.rec*, %union.rec** %opred2969, align 8
  %os12970 = bitcast %union.rec* %1174 to %struct.word_type*
  %olist2971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12970, i32 0, i32 0
  %arrayidx2972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2971, i32 0, i64 0
  %osucc2973 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2972, i32 0, i32 1
  store %union.rec* %1172, %union.rec** %osucc2973, align 8
  %1175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12974 = bitcast %union.rec* %1176 to %struct.word_type*
  %olist2975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12974, i32 0, i32 0
  %arrayidx2976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2975, i32 0, i64 0
  %osucc2977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2976, i32 0, i32 1
  store %union.rec* %1175, %union.rec** %osucc2977, align 8
  %1177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12978 = bitcast %union.rec* %1177 to %struct.word_type*
  %olist2979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12978, i32 0, i32 0
  %arrayidx2980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2979, i32 0, i64 0
  %opred2981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2980, i32 0, i32 0
  store %union.rec* %1175, %union.rec** %opred2981, align 8
  %1178 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2982

cond.end.2982:                                    ; preds = %cond.false.2953, %cond.true.2952
  %cond2983 = phi %union.rec* [ null, %cond.true.2952 ], [ %1178, %cond.false.2953 ]
  %1179 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1179, %union.rec** @zz_hold, align 8
  %1180 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1180, %union.rec** @zz_hold, align 8
  %1181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12984 = bitcast %union.rec* %1181 to %struct.word_type*
  %ou12985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12984, i32 0, i32 1
  %os112986 = bitcast %union.FIRST_UNION* %ou12985 to %struct.anon*
  %otype2987 = getelementptr inbounds %struct.anon, %struct.anon* %os112986, i32 0, i32 0
  %1182 = load i8, i8* %otype2987, align 1
  %conv2988 = zext i8 %1182 to i32
  %cmp2989 = icmp eq i32 %conv2988, 11
  br i1 %cmp2989, label %cond.true.2999, label %lor.lhs.false.2991

lor.lhs.false.2991:                               ; preds = %cond.end.2982
  %1183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12992 = bitcast %union.rec* %1183 to %struct.word_type*
  %ou12993 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12992, i32 0, i32 1
  %os112994 = bitcast %union.FIRST_UNION* %ou12993 to %struct.anon*
  %otype2995 = getelementptr inbounds %struct.anon, %struct.anon* %os112994, i32 0, i32 0
  %1184 = load i8, i8* %otype2995, align 1
  %conv2996 = zext i8 %1184 to i32
  %cmp2997 = icmp eq i32 %conv2996, 12
  br i1 %cmp2997, label %cond.true.2999, label %cond.false.3005

cond.true.2999:                                   ; preds = %lor.lhs.false.2991, %cond.end.2982
  %1185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13000 = bitcast %union.rec* %1185 to %struct.word_type*
  %ou13001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13000, i32 0, i32 1
  %os113002 = bitcast %union.FIRST_UNION* %ou13001 to %struct.anon*
  %orec_size3003 = getelementptr inbounds %struct.anon, %struct.anon* %os113002, i32 0, i32 1
  %1186 = load i8, i8* %orec_size3003, align 1
  %conv3004 = zext i8 %1186 to i32
  br label %cond.end.3013

cond.false.3005:                                  ; preds = %lor.lhs.false.2991
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13006 = bitcast %union.rec* %1187 to %struct.word_type*
  %ou13007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13006, i32 0, i32 1
  %os113008 = bitcast %union.FIRST_UNION* %ou13007 to %struct.anon*
  %otype3009 = getelementptr inbounds %struct.anon, %struct.anon* %os113008, i32 0, i32 0
  %1188 = load i8, i8* %otype3009, align 1
  %idxprom3010 = zext i8 %1188 to i64
  %arrayidx3011 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3010
  %1189 = load i8, i8* %arrayidx3011, align 1
  %conv3012 = zext i8 %1189 to i32
  br label %cond.end.3013

cond.end.3013:                                    ; preds = %cond.false.3005, %cond.true.2999
  %cond3014 = phi i32 [ %conv3004, %cond.true.2999 ], [ %conv3012, %cond.false.3005 ]
  store i32 %cond3014, i32* @zz_size, align 4
  %1190 = load i32, i32* @zz_size, align 4
  %idxprom3015 = sext i32 %1190 to i64
  %arrayidx3016 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3015
  %1191 = load %union.rec*, %union.rec** %arrayidx3016, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13017 = bitcast %union.rec* %1192 to %struct.word_type*
  %olist3018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13017, i32 0, i32 0
  %arrayidx3019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3018, i32 0, i64 0
  %opred3020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3019, i32 0, i32 0
  store %union.rec* %1191, %union.rec** %opred3020, align 8
  %1193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1194 = load i32, i32* @zz_size, align 4
  %idxprom3021 = sext i32 %1194 to i64
  %arrayidx3022 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3021
  store %union.rec* %1193, %union.rec** %arrayidx3022, align 8
  br label %while.cond.2896

while.end.3023:                                   ; preds = %while.cond.2896
  %1195 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1195, %union.rec** @zz_hold, align 8
  %1196 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1196, %union.rec** @zz_hold, align 8
  %1197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13024 = bitcast %union.rec* %1197 to %struct.word_type*
  %ou13025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13024, i32 0, i32 1
  %os113026 = bitcast %union.FIRST_UNION* %ou13025 to %struct.anon*
  %otype3027 = getelementptr inbounds %struct.anon, %struct.anon* %os113026, i32 0, i32 0
  %1198 = load i8, i8* %otype3027, align 1
  %conv3028 = zext i8 %1198 to i32
  %cmp3029 = icmp eq i32 %conv3028, 11
  br i1 %cmp3029, label %cond.true.3039, label %lor.lhs.false.3031

lor.lhs.false.3031:                               ; preds = %while.end.3023
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13032 = bitcast %union.rec* %1199 to %struct.word_type*
  %ou13033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13032, i32 0, i32 1
  %os113034 = bitcast %union.FIRST_UNION* %ou13033 to %struct.anon*
  %otype3035 = getelementptr inbounds %struct.anon, %struct.anon* %os113034, i32 0, i32 0
  %1200 = load i8, i8* %otype3035, align 1
  %conv3036 = zext i8 %1200 to i32
  %cmp3037 = icmp eq i32 %conv3036, 12
  br i1 %cmp3037, label %cond.true.3039, label %cond.false.3045

cond.true.3039:                                   ; preds = %lor.lhs.false.3031, %while.end.3023
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13040 = bitcast %union.rec* %1201 to %struct.word_type*
  %ou13041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13040, i32 0, i32 1
  %os113042 = bitcast %union.FIRST_UNION* %ou13041 to %struct.anon*
  %orec_size3043 = getelementptr inbounds %struct.anon, %struct.anon* %os113042, i32 0, i32 1
  %1202 = load i8, i8* %orec_size3043, align 1
  %conv3044 = zext i8 %1202 to i32
  br label %cond.end.3053

cond.false.3045:                                  ; preds = %lor.lhs.false.3031
  %1203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13046 = bitcast %union.rec* %1203 to %struct.word_type*
  %ou13047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13046, i32 0, i32 1
  %os113048 = bitcast %union.FIRST_UNION* %ou13047 to %struct.anon*
  %otype3049 = getelementptr inbounds %struct.anon, %struct.anon* %os113048, i32 0, i32 0
  %1204 = load i8, i8* %otype3049, align 1
  %idxprom3050 = zext i8 %1204 to i64
  %arrayidx3051 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3050
  %1205 = load i8, i8* %arrayidx3051, align 1
  %conv3052 = zext i8 %1205 to i32
  br label %cond.end.3053

cond.end.3053:                                    ; preds = %cond.false.3045, %cond.true.3039
  %cond3054 = phi i32 [ %conv3044, %cond.true.3039 ], [ %conv3052, %cond.false.3045 ]
  store i32 %cond3054, i32* @zz_size, align 4
  %1206 = load i32, i32* @zz_size, align 4
  %idxprom3055 = sext i32 %1206 to i64
  %arrayidx3056 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3055
  %1207 = load %union.rec*, %union.rec** %arrayidx3056, align 8
  %1208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13057 = bitcast %union.rec* %1208 to %struct.word_type*
  %olist3058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13057, i32 0, i32 0
  %arrayidx3059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3058, i32 0, i64 0
  %opred3060 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3059, i32 0, i32 0
  store %union.rec* %1207, %union.rec** %opred3060, align 8
  %1209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1210 = load i32, i32* @zz_size, align 4
  %idxprom3061 = sext i32 %1210 to i64
  %arrayidx3062 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3061
  store %union.rec* %1209, %union.rec** %arrayidx3062, align 8
  br label %if.end.3064

if.else.3063:                                     ; preds = %sw.bb.2754
  %1211 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1211, %union.rec** %y, align 8
  br label %SUSPEND

if.end.3064:                                      ; preds = %cond.end.3053
  br label %sw.epilog.3433

sw.bb.3065:                                       ; preds = %for.end.2748
  %1212 = load %union.rec*, %union.rec** %z, align 8
  %os13066 = bitcast %union.rec* %1212 to %struct.word_type*
  %ou23067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13066, i32 0, i32 2
  %os233068 = bitcast %union.SECOND_UNION* %ou23067 to %struct.anon.2*
  %onon_blocking3069 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233068, i32 0, i32 2
  %bf.load3070 = load i16, i16* %onon_blocking3069, align 2
  %bf.clear3071 = and i16 %bf.load3070, 1
  %bf.cast3072 = zext i16 %bf.clear3071 to i32
  %tobool3073 = icmp ne i32 %bf.cast3072, 0
  br i1 %tobool3073, label %if.then.3074, label %if.else.3417

if.then.3074:                                     ; preds = %sw.bb.3065
  %1213 = load %union.rec*, %union.rec** %zlink, align 8
  %os13075 = bitcast %union.rec* %1213 to %struct.word_type*
  %olist3076 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13075, i32 0, i32 0
  %arrayidx3077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3076, i32 0, i64 0
  %opred3078 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3077, i32 0, i32 0
  %1214 = load %union.rec*, %union.rec** %opred3078, align 8
  store %union.rec* %1214, %union.rec** %zlink, align 8
  br label %while.cond.3079

while.cond.3079:                                  ; preds = %if.end.3120, %if.then.3074
  %1215 = load %union.rec*, %union.rec** %z, align 8
  %os13080 = bitcast %union.rec* %1215 to %struct.word_type*
  %olist3081 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13080, i32 0, i32 0
  %arrayidx3082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3081, i32 0, i64 0
  %osucc3083 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3082, i32 0, i32 1
  %1216 = load %union.rec*, %union.rec** %osucc3083, align 8
  %1217 = load %union.rec*, %union.rec** %z, align 8
  %cmp3084 = icmp ne %union.rec* %1216, %1217
  br i1 %cmp3084, label %while.body.3086, label %while.end.3121

while.body.3086:                                  ; preds = %while.cond.3079
  %1218 = load %union.rec*, %union.rec** %y, align 8
  %os13087 = bitcast %union.rec* %1218 to %struct.word_type*
  %olist3088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13087, i32 0, i32 0
  %arrayidx3089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3088, i32 0, i64 0
  %osucc3090 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3089, i32 0, i32 1
  %1219 = load %union.rec*, %union.rec** %osucc3090, align 8
  %os13091 = bitcast %union.rec* %1219 to %struct.word_type*
  %olist3092 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13091, i32 0, i32 0
  %arrayidx3093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3092, i32 0, i64 1
  %opred3094 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3093, i32 0, i32 0
  %1220 = load %union.rec*, %union.rec** %opred3094, align 8
  store %union.rec* %1220, %union.rec** %tmp, align 8
  br label %for.cond.3095

for.cond.3095:                                    ; preds = %for.inc.3104, %while.body.3086
  %1221 = load %union.rec*, %union.rec** %tmp, align 8
  %os13096 = bitcast %union.rec* %1221 to %struct.word_type*
  %ou13097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13096, i32 0, i32 1
  %os113098 = bitcast %union.FIRST_UNION* %ou13097 to %struct.anon*
  %otype3099 = getelementptr inbounds %struct.anon, %struct.anon* %os113098, i32 0, i32 0
  %1222 = load i8, i8* %otype3099, align 1
  %conv3100 = zext i8 %1222 to i32
  %cmp3101 = icmp eq i32 %conv3100, 0
  br i1 %cmp3101, label %for.body.3103, label %for.end.3109

for.body.3103:                                    ; preds = %for.cond.3095
  br label %for.inc.3104

for.inc.3104:                                     ; preds = %for.body.3103
  %1223 = load %union.rec*, %union.rec** %tmp, align 8
  %os13105 = bitcast %union.rec* %1223 to %struct.word_type*
  %olist3106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13105, i32 0, i32 0
  %arrayidx3107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3106, i32 0, i64 1
  %opred3108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3107, i32 0, i32 0
  %1224 = load %union.rec*, %union.rec** %opred3108, align 8
  store %union.rec* %1224, %union.rec** %tmp, align 8
  br label %for.cond.3095

for.end.3109:                                     ; preds = %for.cond.3095
  %1225 = load %union.rec*, %union.rec** %tmp, align 8
  %os2a3110 = bitcast %union.rec* %1225 to %struct.head_type*
  %oopt_components3111 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3110, i32 0, i32 8
  %1226 = load %union.rec*, %union.rec** %oopt_components3111, align 8
  %cmp3112 = icmp ne %union.rec* %1226, null
  br i1 %cmp3112, label %if.then.3114, label %if.end.3120

if.then.3114:                                     ; preds = %for.end.3109
  %1227 = load %union.rec*, %union.rec** %tmp, align 8
  %os2a3115 = bitcast %union.rec* %1227 to %struct.head_type*
  %oopt_components3116 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3115, i32 0, i32 8
  %1228 = load %union.rec*, %union.rec** %oopt_components3116, align 8
  %call3117 = call i32 @DisposeObject(%union.rec* %1228)
  %1229 = load %union.rec*, %union.rec** %tmp, align 8
  %os2a3118 = bitcast %union.rec* %1229 to %struct.head_type*
  %oopt_components3119 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3118, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components3119, align 8
  br label %if.end.3120

if.end.3120:                                      ; preds = %if.then.3114, %for.end.3109
  %1230 = load %union.rec*, %union.rec** %tmp, align 8
  call void @DetachGalley(%union.rec* %1230)
  %1231 = load %union.rec*, %union.rec** %tmp, align 8
  call void @KillGalley(%union.rec* %1231, i32 0)
  br label %while.cond.3079

while.end.3121:                                   ; preds = %while.cond.3079
  %1232 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1232, %union.rec** @xx_hold, align 8
  br label %while.cond.3122

while.cond.3122:                                  ; preds = %cond.end.3239, %while.end.3121
  %1233 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os13123 = bitcast %union.rec* %1233 to %struct.word_type*
  %olist3124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13123, i32 0, i32 0
  %arrayidx3125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3124, i32 0, i64 1
  %osucc3126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3125, i32 0, i32 1
  %1234 = load %union.rec*, %union.rec** %osucc3126, align 8
  %1235 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp3127 = icmp ne %union.rec* %1234, %1235
  br i1 %cmp3127, label %while.body.3129, label %while.end.3249

while.body.3129:                                  ; preds = %while.cond.3122
  %1236 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os13130 = bitcast %union.rec* %1236 to %struct.word_type*
  %olist3131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13130, i32 0, i32 0
  %arrayidx3132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3131, i32 0, i64 1
  %osucc3133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3132, i32 0, i32 1
  %1237 = load %union.rec*, %union.rec** %osucc3133, align 8
  store %union.rec* %1237, %union.rec** @xx_link, align 8
  %1238 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1238, %union.rec** @zz_hold, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13134 = bitcast %union.rec* %1239 to %struct.word_type*
  %olist3135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13134, i32 0, i32 0
  %arrayidx3136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3135, i32 0, i64 1
  %osucc3137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3136, i32 0, i32 1
  %1240 = load %union.rec*, %union.rec** %osucc3137, align 8
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3138 = icmp eq %union.rec* %1240, %1241
  br i1 %cmp3138, label %cond.true.3140, label %cond.false.3141

cond.true.3140:                                   ; preds = %while.body.3129
  br label %cond.end.3170

cond.false.3141:                                  ; preds = %while.body.3129
  %1242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13142 = bitcast %union.rec* %1242 to %struct.word_type*
  %olist3143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13142, i32 0, i32 0
  %arrayidx3144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3143, i32 0, i64 1
  %osucc3145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3144, i32 0, i32 1
  %1243 = load %union.rec*, %union.rec** %osucc3145, align 8
  store %union.rec* %1243, %union.rec** @zz_res, align 8
  %1244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13146 = bitcast %union.rec* %1244 to %struct.word_type*
  %olist3147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13146, i32 0, i32 0
  %arrayidx3148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3147, i32 0, i64 1
  %opred3149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3148, i32 0, i32 0
  %1245 = load %union.rec*, %union.rec** %opred3149, align 8
  %1246 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13150 = bitcast %union.rec* %1246 to %struct.word_type*
  %olist3151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13150, i32 0, i32 0
  %arrayidx3152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3151, i32 0, i64 1
  %opred3153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3152, i32 0, i32 0
  store %union.rec* %1245, %union.rec** %opred3153, align 8
  %1247 = load %union.rec*, %union.rec** @zz_res, align 8
  %1248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13154 = bitcast %union.rec* %1248 to %struct.word_type*
  %olist3155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13154, i32 0, i32 0
  %arrayidx3156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3155, i32 0, i64 1
  %opred3157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3156, i32 0, i32 0
  %1249 = load %union.rec*, %union.rec** %opred3157, align 8
  %os13158 = bitcast %union.rec* %1249 to %struct.word_type*
  %olist3159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13158, i32 0, i32 0
  %arrayidx3160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3159, i32 0, i64 1
  %osucc3161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3160, i32 0, i32 1
  store %union.rec* %1247, %union.rec** %osucc3161, align 8
  %1250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13162 = bitcast %union.rec* %1251 to %struct.word_type*
  %olist3163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13162, i32 0, i32 0
  %arrayidx3164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3163, i32 0, i64 1
  %osucc3165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3164, i32 0, i32 1
  store %union.rec* %1250, %union.rec** %osucc3165, align 8
  %1252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13166 = bitcast %union.rec* %1252 to %struct.word_type*
  %olist3167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13166, i32 0, i32 0
  %arrayidx3168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3167, i32 0, i64 1
  %opred3169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3168, i32 0, i32 0
  store %union.rec* %1250, %union.rec** %opred3169, align 8
  %1253 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3170

cond.end.3170:                                    ; preds = %cond.false.3141, %cond.true.3140
  %cond3171 = phi %union.rec* [ null, %cond.true.3140 ], [ %1253, %cond.false.3141 ]
  %1254 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1254, %union.rec** @zz_hold, align 8
  %1255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13172 = bitcast %union.rec* %1255 to %struct.word_type*
  %olist3173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13172, i32 0, i32 0
  %arrayidx3174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3173, i32 0, i64 0
  %osucc3175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3174, i32 0, i32 1
  %1256 = load %union.rec*, %union.rec** %osucc3175, align 8
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3176 = icmp eq %union.rec* %1256, %1257
  br i1 %cmp3176, label %cond.true.3178, label %cond.false.3179

cond.true.3178:                                   ; preds = %cond.end.3170
  br label %cond.end.3208

cond.false.3179:                                  ; preds = %cond.end.3170
  %1258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13180 = bitcast %union.rec* %1258 to %struct.word_type*
  %olist3181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13180, i32 0, i32 0
  %arrayidx3182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3181, i32 0, i64 0
  %osucc3183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3182, i32 0, i32 1
  %1259 = load %union.rec*, %union.rec** %osucc3183, align 8
  store %union.rec* %1259, %union.rec** @zz_res, align 8
  %1260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13184 = bitcast %union.rec* %1260 to %struct.word_type*
  %olist3185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13184, i32 0, i32 0
  %arrayidx3186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3185, i32 0, i64 0
  %opred3187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3186, i32 0, i32 0
  %1261 = load %union.rec*, %union.rec** %opred3187, align 8
  %1262 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13188 = bitcast %union.rec* %1262 to %struct.word_type*
  %olist3189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13188, i32 0, i32 0
  %arrayidx3190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3189, i32 0, i64 0
  %opred3191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3190, i32 0, i32 0
  store %union.rec* %1261, %union.rec** %opred3191, align 8
  %1263 = load %union.rec*, %union.rec** @zz_res, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13192 = bitcast %union.rec* %1264 to %struct.word_type*
  %olist3193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13192, i32 0, i32 0
  %arrayidx3194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3193, i32 0, i64 0
  %opred3195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3194, i32 0, i32 0
  %1265 = load %union.rec*, %union.rec** %opred3195, align 8
  %os13196 = bitcast %union.rec* %1265 to %struct.word_type*
  %olist3197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13196, i32 0, i32 0
  %arrayidx3198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3197, i32 0, i64 0
  %osucc3199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3198, i32 0, i32 1
  store %union.rec* %1263, %union.rec** %osucc3199, align 8
  %1266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13200 = bitcast %union.rec* %1267 to %struct.word_type*
  %olist3201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13200, i32 0, i32 0
  %arrayidx3202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3201, i32 0, i64 0
  %osucc3203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3202, i32 0, i32 1
  store %union.rec* %1266, %union.rec** %osucc3203, align 8
  %1268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13204 = bitcast %union.rec* %1268 to %struct.word_type*
  %olist3205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13204, i32 0, i32 0
  %arrayidx3206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3205, i32 0, i64 0
  %opred3207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3206, i32 0, i32 0
  store %union.rec* %1266, %union.rec** %opred3207, align 8
  %1269 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3208

cond.end.3208:                                    ; preds = %cond.false.3179, %cond.true.3178
  %cond3209 = phi %union.rec* [ null, %cond.true.3178 ], [ %1269, %cond.false.3179 ]
  %1270 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1270, %union.rec** @zz_hold, align 8
  %1271 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1271, %union.rec** @zz_hold, align 8
  %1272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13210 = bitcast %union.rec* %1272 to %struct.word_type*
  %ou13211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13210, i32 0, i32 1
  %os113212 = bitcast %union.FIRST_UNION* %ou13211 to %struct.anon*
  %otype3213 = getelementptr inbounds %struct.anon, %struct.anon* %os113212, i32 0, i32 0
  %1273 = load i8, i8* %otype3213, align 1
  %conv3214 = zext i8 %1273 to i32
  %cmp3215 = icmp eq i32 %conv3214, 11
  br i1 %cmp3215, label %cond.true.3225, label %lor.lhs.false.3217

lor.lhs.false.3217:                               ; preds = %cond.end.3208
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13218 = bitcast %union.rec* %1274 to %struct.word_type*
  %ou13219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13218, i32 0, i32 1
  %os113220 = bitcast %union.FIRST_UNION* %ou13219 to %struct.anon*
  %otype3221 = getelementptr inbounds %struct.anon, %struct.anon* %os113220, i32 0, i32 0
  %1275 = load i8, i8* %otype3221, align 1
  %conv3222 = zext i8 %1275 to i32
  %cmp3223 = icmp eq i32 %conv3222, 12
  br i1 %cmp3223, label %cond.true.3225, label %cond.false.3231

cond.true.3225:                                   ; preds = %lor.lhs.false.3217, %cond.end.3208
  %1276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13226 = bitcast %union.rec* %1276 to %struct.word_type*
  %ou13227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13226, i32 0, i32 1
  %os113228 = bitcast %union.FIRST_UNION* %ou13227 to %struct.anon*
  %orec_size3229 = getelementptr inbounds %struct.anon, %struct.anon* %os113228, i32 0, i32 1
  %1277 = load i8, i8* %orec_size3229, align 1
  %conv3230 = zext i8 %1277 to i32
  br label %cond.end.3239

cond.false.3231:                                  ; preds = %lor.lhs.false.3217
  %1278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13232 = bitcast %union.rec* %1278 to %struct.word_type*
  %ou13233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13232, i32 0, i32 1
  %os113234 = bitcast %union.FIRST_UNION* %ou13233 to %struct.anon*
  %otype3235 = getelementptr inbounds %struct.anon, %struct.anon* %os113234, i32 0, i32 0
  %1279 = load i8, i8* %otype3235, align 1
  %idxprom3236 = zext i8 %1279 to i64
  %arrayidx3237 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3236
  %1280 = load i8, i8* %arrayidx3237, align 1
  %conv3238 = zext i8 %1280 to i32
  br label %cond.end.3239

cond.end.3239:                                    ; preds = %cond.false.3231, %cond.true.3225
  %cond3240 = phi i32 [ %conv3230, %cond.true.3225 ], [ %conv3238, %cond.false.3231 ]
  store i32 %cond3240, i32* @zz_size, align 4
  %1281 = load i32, i32* @zz_size, align 4
  %idxprom3241 = sext i32 %1281 to i64
  %arrayidx3242 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3241
  %1282 = load %union.rec*, %union.rec** %arrayidx3242, align 8
  %1283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13243 = bitcast %union.rec* %1283 to %struct.word_type*
  %olist3244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13243, i32 0, i32 0
  %arrayidx3245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3244, i32 0, i64 0
  %opred3246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3245, i32 0, i32 0
  store %union.rec* %1282, %union.rec** %opred3246, align 8
  %1284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1285 = load i32, i32* @zz_size, align 4
  %idxprom3247 = sext i32 %1285 to i64
  %arrayidx3248 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3247
  store %union.rec* %1284, %union.rec** %arrayidx3248, align 8
  br label %while.cond.3122

while.end.3249:                                   ; preds = %while.cond.3122
  br label %while.cond.3250

while.cond.3250:                                  ; preds = %cond.end.3367, %while.end.3249
  %1286 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os13251 = bitcast %union.rec* %1286 to %struct.word_type*
  %olist3252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13251, i32 0, i32 0
  %arrayidx3253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3252, i32 0, i64 0
  %osucc3254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3253, i32 0, i32 1
  %1287 = load %union.rec*, %union.rec** %osucc3254, align 8
  %1288 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp3255 = icmp ne %union.rec* %1287, %1288
  br i1 %cmp3255, label %while.body.3257, label %while.end.3377

while.body.3257:                                  ; preds = %while.cond.3250
  %1289 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os13258 = bitcast %union.rec* %1289 to %struct.word_type*
  %olist3259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13258, i32 0, i32 0
  %arrayidx3260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3259, i32 0, i64 0
  %osucc3261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3260, i32 0, i32 1
  %1290 = load %union.rec*, %union.rec** %osucc3261, align 8
  store %union.rec* %1290, %union.rec** @xx_link, align 8
  %1291 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1291, %union.rec** @zz_hold, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13262 = bitcast %union.rec* %1292 to %struct.word_type*
  %olist3263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13262, i32 0, i32 0
  %arrayidx3264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3263, i32 0, i64 1
  %osucc3265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3264, i32 0, i32 1
  %1293 = load %union.rec*, %union.rec** %osucc3265, align 8
  %1294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3266 = icmp eq %union.rec* %1293, %1294
  br i1 %cmp3266, label %cond.true.3268, label %cond.false.3269

cond.true.3268:                                   ; preds = %while.body.3257
  br label %cond.end.3298

cond.false.3269:                                  ; preds = %while.body.3257
  %1295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13270 = bitcast %union.rec* %1295 to %struct.word_type*
  %olist3271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13270, i32 0, i32 0
  %arrayidx3272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3271, i32 0, i64 1
  %osucc3273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3272, i32 0, i32 1
  %1296 = load %union.rec*, %union.rec** %osucc3273, align 8
  store %union.rec* %1296, %union.rec** @zz_res, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13274 = bitcast %union.rec* %1297 to %struct.word_type*
  %olist3275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13274, i32 0, i32 0
  %arrayidx3276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3275, i32 0, i64 1
  %opred3277 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3276, i32 0, i32 0
  %1298 = load %union.rec*, %union.rec** %opred3277, align 8
  %1299 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13278 = bitcast %union.rec* %1299 to %struct.word_type*
  %olist3279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13278, i32 0, i32 0
  %arrayidx3280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3279, i32 0, i64 1
  %opred3281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3280, i32 0, i32 0
  store %union.rec* %1298, %union.rec** %opred3281, align 8
  %1300 = load %union.rec*, %union.rec** @zz_res, align 8
  %1301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13282 = bitcast %union.rec* %1301 to %struct.word_type*
  %olist3283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13282, i32 0, i32 0
  %arrayidx3284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3283, i32 0, i64 1
  %opred3285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3284, i32 0, i32 0
  %1302 = load %union.rec*, %union.rec** %opred3285, align 8
  %os13286 = bitcast %union.rec* %1302 to %struct.word_type*
  %olist3287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13286, i32 0, i32 0
  %arrayidx3288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3287, i32 0, i64 1
  %osucc3289 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3288, i32 0, i32 1
  store %union.rec* %1300, %union.rec** %osucc3289, align 8
  %1303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13290 = bitcast %union.rec* %1304 to %struct.word_type*
  %olist3291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13290, i32 0, i32 0
  %arrayidx3292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3291, i32 0, i64 1
  %osucc3293 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3292, i32 0, i32 1
  store %union.rec* %1303, %union.rec** %osucc3293, align 8
  %1305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13294 = bitcast %union.rec* %1305 to %struct.word_type*
  %olist3295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13294, i32 0, i32 0
  %arrayidx3296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3295, i32 0, i64 1
  %opred3297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3296, i32 0, i32 0
  store %union.rec* %1303, %union.rec** %opred3297, align 8
  %1306 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3298

cond.end.3298:                                    ; preds = %cond.false.3269, %cond.true.3268
  %cond3299 = phi %union.rec* [ null, %cond.true.3268 ], [ %1306, %cond.false.3269 ]
  %1307 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1307, %union.rec** @zz_hold, align 8
  %1308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13300 = bitcast %union.rec* %1308 to %struct.word_type*
  %olist3301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13300, i32 0, i32 0
  %arrayidx3302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3301, i32 0, i64 0
  %osucc3303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3302, i32 0, i32 1
  %1309 = load %union.rec*, %union.rec** %osucc3303, align 8
  %1310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3304 = icmp eq %union.rec* %1309, %1310
  br i1 %cmp3304, label %cond.true.3306, label %cond.false.3307

cond.true.3306:                                   ; preds = %cond.end.3298
  br label %cond.end.3336

cond.false.3307:                                  ; preds = %cond.end.3298
  %1311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13308 = bitcast %union.rec* %1311 to %struct.word_type*
  %olist3309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13308, i32 0, i32 0
  %arrayidx3310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3309, i32 0, i64 0
  %osucc3311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3310, i32 0, i32 1
  %1312 = load %union.rec*, %union.rec** %osucc3311, align 8
  store %union.rec* %1312, %union.rec** @zz_res, align 8
  %1313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13312 = bitcast %union.rec* %1313 to %struct.word_type*
  %olist3313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13312, i32 0, i32 0
  %arrayidx3314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3313, i32 0, i64 0
  %opred3315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3314, i32 0, i32 0
  %1314 = load %union.rec*, %union.rec** %opred3315, align 8
  %1315 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13316 = bitcast %union.rec* %1315 to %struct.word_type*
  %olist3317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13316, i32 0, i32 0
  %arrayidx3318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3317, i32 0, i64 0
  %opred3319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3318, i32 0, i32 0
  store %union.rec* %1314, %union.rec** %opred3319, align 8
  %1316 = load %union.rec*, %union.rec** @zz_res, align 8
  %1317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13320 = bitcast %union.rec* %1317 to %struct.word_type*
  %olist3321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13320, i32 0, i32 0
  %arrayidx3322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3321, i32 0, i64 0
  %opred3323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3322, i32 0, i32 0
  %1318 = load %union.rec*, %union.rec** %opred3323, align 8
  %os13324 = bitcast %union.rec* %1318 to %struct.word_type*
  %olist3325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13324, i32 0, i32 0
  %arrayidx3326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3325, i32 0, i64 0
  %osucc3327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3326, i32 0, i32 1
  store %union.rec* %1316, %union.rec** %osucc3327, align 8
  %1319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13328 = bitcast %union.rec* %1320 to %struct.word_type*
  %olist3329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13328, i32 0, i32 0
  %arrayidx3330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3329, i32 0, i64 0
  %osucc3331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3330, i32 0, i32 1
  store %union.rec* %1319, %union.rec** %osucc3331, align 8
  %1321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13332 = bitcast %union.rec* %1321 to %struct.word_type*
  %olist3333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13332, i32 0, i32 0
  %arrayidx3334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3333, i32 0, i64 0
  %opred3335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3334, i32 0, i32 0
  store %union.rec* %1319, %union.rec** %opred3335, align 8
  %1322 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3336

cond.end.3336:                                    ; preds = %cond.false.3307, %cond.true.3306
  %cond3337 = phi %union.rec* [ null, %cond.true.3306 ], [ %1322, %cond.false.3307 ]
  %1323 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1323, %union.rec** @zz_hold, align 8
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1324, %union.rec** @zz_hold, align 8
  %1325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13338 = bitcast %union.rec* %1325 to %struct.word_type*
  %ou13339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13338, i32 0, i32 1
  %os113340 = bitcast %union.FIRST_UNION* %ou13339 to %struct.anon*
  %otype3341 = getelementptr inbounds %struct.anon, %struct.anon* %os113340, i32 0, i32 0
  %1326 = load i8, i8* %otype3341, align 1
  %conv3342 = zext i8 %1326 to i32
  %cmp3343 = icmp eq i32 %conv3342, 11
  br i1 %cmp3343, label %cond.true.3353, label %lor.lhs.false.3345

lor.lhs.false.3345:                               ; preds = %cond.end.3336
  %1327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13346 = bitcast %union.rec* %1327 to %struct.word_type*
  %ou13347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13346, i32 0, i32 1
  %os113348 = bitcast %union.FIRST_UNION* %ou13347 to %struct.anon*
  %otype3349 = getelementptr inbounds %struct.anon, %struct.anon* %os113348, i32 0, i32 0
  %1328 = load i8, i8* %otype3349, align 1
  %conv3350 = zext i8 %1328 to i32
  %cmp3351 = icmp eq i32 %conv3350, 12
  br i1 %cmp3351, label %cond.true.3353, label %cond.false.3359

cond.true.3353:                                   ; preds = %lor.lhs.false.3345, %cond.end.3336
  %1329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13354 = bitcast %union.rec* %1329 to %struct.word_type*
  %ou13355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13354, i32 0, i32 1
  %os113356 = bitcast %union.FIRST_UNION* %ou13355 to %struct.anon*
  %orec_size3357 = getelementptr inbounds %struct.anon, %struct.anon* %os113356, i32 0, i32 1
  %1330 = load i8, i8* %orec_size3357, align 1
  %conv3358 = zext i8 %1330 to i32
  br label %cond.end.3367

cond.false.3359:                                  ; preds = %lor.lhs.false.3345
  %1331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13360 = bitcast %union.rec* %1331 to %struct.word_type*
  %ou13361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13360, i32 0, i32 1
  %os113362 = bitcast %union.FIRST_UNION* %ou13361 to %struct.anon*
  %otype3363 = getelementptr inbounds %struct.anon, %struct.anon* %os113362, i32 0, i32 0
  %1332 = load i8, i8* %otype3363, align 1
  %idxprom3364 = zext i8 %1332 to i64
  %arrayidx3365 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3364
  %1333 = load i8, i8* %arrayidx3365, align 1
  %conv3366 = zext i8 %1333 to i32
  br label %cond.end.3367

cond.end.3367:                                    ; preds = %cond.false.3359, %cond.true.3353
  %cond3368 = phi i32 [ %conv3358, %cond.true.3353 ], [ %conv3366, %cond.false.3359 ]
  store i32 %cond3368, i32* @zz_size, align 4
  %1334 = load i32, i32* @zz_size, align 4
  %idxprom3369 = sext i32 %1334 to i64
  %arrayidx3370 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3369
  %1335 = load %union.rec*, %union.rec** %arrayidx3370, align 8
  %1336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13371 = bitcast %union.rec* %1336 to %struct.word_type*
  %olist3372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13371, i32 0, i32 0
  %arrayidx3373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3372, i32 0, i64 0
  %opred3374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3373, i32 0, i32 0
  store %union.rec* %1335, %union.rec** %opred3374, align 8
  %1337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1338 = load i32, i32* @zz_size, align 4
  %idxprom3375 = sext i32 %1338 to i64
  %arrayidx3376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3375
  store %union.rec* %1337, %union.rec** %arrayidx3376, align 8
  br label %while.cond.3250

while.end.3377:                                   ; preds = %while.cond.3250
  %1339 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1339, %union.rec** @zz_hold, align 8
  %1340 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1340, %union.rec** @zz_hold, align 8
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13378 = bitcast %union.rec* %1341 to %struct.word_type*
  %ou13379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13378, i32 0, i32 1
  %os113380 = bitcast %union.FIRST_UNION* %ou13379 to %struct.anon*
  %otype3381 = getelementptr inbounds %struct.anon, %struct.anon* %os113380, i32 0, i32 0
  %1342 = load i8, i8* %otype3381, align 1
  %conv3382 = zext i8 %1342 to i32
  %cmp3383 = icmp eq i32 %conv3382, 11
  br i1 %cmp3383, label %cond.true.3393, label %lor.lhs.false.3385

lor.lhs.false.3385:                               ; preds = %while.end.3377
  %1343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13386 = bitcast %union.rec* %1343 to %struct.word_type*
  %ou13387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13386, i32 0, i32 1
  %os113388 = bitcast %union.FIRST_UNION* %ou13387 to %struct.anon*
  %otype3389 = getelementptr inbounds %struct.anon, %struct.anon* %os113388, i32 0, i32 0
  %1344 = load i8, i8* %otype3389, align 1
  %conv3390 = zext i8 %1344 to i32
  %cmp3391 = icmp eq i32 %conv3390, 12
  br i1 %cmp3391, label %cond.true.3393, label %cond.false.3399

cond.true.3393:                                   ; preds = %lor.lhs.false.3385, %while.end.3377
  %1345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13394 = bitcast %union.rec* %1345 to %struct.word_type*
  %ou13395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13394, i32 0, i32 1
  %os113396 = bitcast %union.FIRST_UNION* %ou13395 to %struct.anon*
  %orec_size3397 = getelementptr inbounds %struct.anon, %struct.anon* %os113396, i32 0, i32 1
  %1346 = load i8, i8* %orec_size3397, align 1
  %conv3398 = zext i8 %1346 to i32
  br label %cond.end.3407

cond.false.3399:                                  ; preds = %lor.lhs.false.3385
  %1347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13400 = bitcast %union.rec* %1347 to %struct.word_type*
  %ou13401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13400, i32 0, i32 1
  %os113402 = bitcast %union.FIRST_UNION* %ou13401 to %struct.anon*
  %otype3403 = getelementptr inbounds %struct.anon, %struct.anon* %os113402, i32 0, i32 0
  %1348 = load i8, i8* %otype3403, align 1
  %idxprom3404 = zext i8 %1348 to i64
  %arrayidx3405 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3404
  %1349 = load i8, i8* %arrayidx3405, align 1
  %conv3406 = zext i8 %1349 to i32
  br label %cond.end.3407

cond.end.3407:                                    ; preds = %cond.false.3399, %cond.true.3393
  %cond3408 = phi i32 [ %conv3398, %cond.true.3393 ], [ %conv3406, %cond.false.3399 ]
  store i32 %cond3408, i32* @zz_size, align 4
  %1350 = load i32, i32* @zz_size, align 4
  %idxprom3409 = sext i32 %1350 to i64
  %arrayidx3410 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3409
  %1351 = load %union.rec*, %union.rec** %arrayidx3410, align 8
  %1352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13411 = bitcast %union.rec* %1352 to %struct.word_type*
  %olist3412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13411, i32 0, i32 0
  %arrayidx3413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3412, i32 0, i64 0
  %opred3414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3413, i32 0, i32 0
  store %union.rec* %1351, %union.rec** %opred3414, align 8
  %1353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1354 = load i32, i32* @zz_size, align 4
  %idxprom3415 = sext i32 %1354 to i64
  %arrayidx3416 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3415
  store %union.rec* %1353, %union.rec** %arrayidx3416, align 8
  br label %if.end.3418

if.else.3417:                                     ; preds = %sw.bb.3065
  %1355 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1355, %union.rec** %y, align 8
  br label %SUSPEND

if.end.3418:                                      ; preds = %cond.end.3407
  br label %sw.epilog.3433

sw.bb.3419:                                       ; preds = %for.end.2748
  %1356 = load %union.rec*, %union.rec** %z, align 8
  %os53420 = bitcast %union.rec* %1356 to %struct.gapobj_type*
  %ogap3421 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53420, i32 0, i32 3
  %1357 = bitcast %struct.GAP* %ogap3421 to i16*
  %bf.load3422 = load i16, i16* %1357, align 4
  %bf.lshr3423 = lshr i16 %bf.load3422, 9
  %bf.clear3424 = and i16 %bf.lshr3423, 1
  %bf.cast3425 = zext i16 %bf.clear3424 to i32
  %tobool3426 = icmp ne i32 %bf.cast3425, 0
  br i1 %tobool3426, label %if.end.3432, label %if.then.3427

if.then.3427:                                     ; preds = %sw.bb.3419
  %1358 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13428 = bitcast %union.rec* %1358 to %struct.word_type*
  %olist3429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13428, i32 0, i32 0
  %arrayidx3430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3429, i32 0, i64 0
  %opred3431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3430, i32 0, i32 0
  %1359 = load %union.rec*, %union.rec** %opred3431, align 8
  store %union.rec* %1359, %union.rec** %zlink, align 8
  br label %if.end.3432

if.end.3432:                                      ; preds = %if.then.3427, %sw.bb.3419
  br label %sw.epilog.3433

sw.default:                                       ; preds = %for.end.2748
  br label %sw.epilog.3433

sw.epilog.3433:                                   ; preds = %sw.default, %if.end.3432, %if.end.3418, %if.end.3064
  br label %for.inc.3434

for.inc.3434:                                     ; preds = %sw.epilog.3433
  %1360 = load %union.rec*, %union.rec** %zlink, align 8
  %os13435 = bitcast %union.rec* %1360 to %struct.word_type*
  %olist3436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13435, i32 0, i32 0
  %arrayidx3437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3436, i32 0, i64 0
  %osucc3438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3437, i32 0, i32 1
  %1361 = load %union.rec*, %union.rec** %osucc3438, align 8
  store %union.rec* %1361, %union.rec** %zlink, align 8
  br label %for.cond.2726

for.end.3439:                                     ; preds = %for.cond.2726
  %1362 = load %union.rec*, %union.rec** %y, align 8
  %os13440 = bitcast %union.rec* %1362 to %struct.word_type*
  %ou13441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13440, i32 0, i32 1
  %os113442 = bitcast %union.FIRST_UNION* %ou13441 to %struct.anon*
  %otype3443 = getelementptr inbounds %struct.anon, %struct.anon* %os113442, i32 0, i32 0
  %1363 = load i8, i8* %otype3443, align 1
  %conv3444 = zext i8 %1363 to i32
  %cmp3445 = icmp eq i32 %conv3444, 18
  br i1 %cmp3445, label %if.then.3447, label %if.end.3449

if.then.3447:                                     ; preds = %for.end.3439
  %1364 = load %union.rec*, %union.rec** %y, align 8
  %call3448 = call i32 @VerticalHyphenate(%union.rec* %1364)
  br label %if.end.3449

if.end.3449:                                      ; preds = %if.then.3447, %for.end.3439
  br label %if.end.3450

if.end.3450:                                      ; preds = %if.end.3449, %sw.bb.2704
  store %union.rec* null, %union.rec** %why, align 8
  %1365 = load %union.rec*, %union.rec** %dest, align 8
  %1366 = load i32, i32* %dim, align 4
  call void @Constrained(%union.rec* %1365, %struct.CONSTRAINT* %c, i32 %1366, %union.rec** %why)
  %1367 = load i32, i32* %dim, align 4
  %idxprom3451 = sext i32 %1367 to i64
  %1368 = load %union.rec*, %union.rec** %y, align 8
  %os13452 = bitcast %union.rec* %1368 to %struct.word_type*
  %ou33453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13452, i32 0, i32 3
  %os313454 = bitcast %union.THIRD_UNION* %ou33453 to %struct.anon.6*
  %oback3455 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313454, i32 0, i32 0
  %arrayidx3456 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3455, i32 0, i64 %idxprom3451
  %1369 = load i32, i32* %arrayidx3456, align 4
  %obc3457 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1370 = load i32, i32* %obc3457, align 4
  %cmp3458 = icmp sle i32 %1369, %1370
  br i1 %cmp3458, label %land.lhs.true.3460, label %if.then.3487

land.lhs.true.3460:                               ; preds = %if.end.3450
  %1371 = load i32, i32* %dim, align 4
  %idxprom3461 = sext i32 %1371 to i64
  %1372 = load %union.rec*, %union.rec** %y, align 8
  %os13462 = bitcast %union.rec* %1372 to %struct.word_type*
  %ou33463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13462, i32 0, i32 3
  %os313464 = bitcast %union.THIRD_UNION* %ou33463 to %struct.anon.6*
  %oback3465 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313464, i32 0, i32 0
  %arrayidx3466 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3465, i32 0, i64 %idxprom3461
  %1373 = load i32, i32* %arrayidx3466, align 4
  %1374 = load i32, i32* %dim, align 4
  %idxprom3467 = sext i32 %1374 to i64
  %1375 = load %union.rec*, %union.rec** %y, align 8
  %os13468 = bitcast %union.rec* %1375 to %struct.word_type*
  %ou33469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13468, i32 0, i32 3
  %os313470 = bitcast %union.THIRD_UNION* %ou33469 to %struct.anon.6*
  %ofwd3471 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313470, i32 0, i32 1
  %arrayidx3472 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3471, i32 0, i64 %idxprom3467
  %1376 = load i32, i32* %arrayidx3472, align 4
  %add3473 = add nsw i32 %1373, %1376
  %obfc3474 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1377 = load i32, i32* %obfc3474, align 4
  %cmp3475 = icmp sle i32 %add3473, %1377
  br i1 %cmp3475, label %land.lhs.true.3477, label %if.then.3487

land.lhs.true.3477:                               ; preds = %land.lhs.true.3460
  %1378 = load i32, i32* %dim, align 4
  %idxprom3478 = sext i32 %1378 to i64
  %1379 = load %union.rec*, %union.rec** %y, align 8
  %os13479 = bitcast %union.rec* %1379 to %struct.word_type*
  %ou33480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13479, i32 0, i32 3
  %os313481 = bitcast %union.THIRD_UNION* %ou33480 to %struct.anon.6*
  %ofwd3482 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313481, i32 0, i32 1
  %arrayidx3483 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3482, i32 0, i64 %idxprom3478
  %1380 = load i32, i32* %arrayidx3483, align 4
  %ofc3484 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1381 = load i32, i32* %ofc3484, align 4
  %cmp3485 = icmp sle i32 %1380, %1381
  br i1 %cmp3485, label %if.end.3642, label %if.then.3487

if.then.3487:                                     ; preds = %land.lhs.true.3477, %land.lhs.true.3460, %if.end.3450
  store i32 0, i32* %scaled, align 4
  %1382 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13489 = bitcast %union.rec* %1382 to %struct.word_type*
  %ou23490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13489, i32 0, i32 2
  %os233491 = bitcast %union.SECOND_UNION* %ou23490 to %struct.anon.2*
  %oforce_gall3492 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233491, i32 0, i32 2
  %bf.load3493 = load i16, i16* %oforce_gall3492, align 2
  %bf.lshr3494 = lshr i16 %bf.load3493, 12
  %bf.clear3495 = and i16 %bf.lshr3494, 1
  %bf.cast3496 = zext i16 %bf.clear3495 to i32
  %tobool3497 = icmp ne i32 %bf.cast3496, 0
  br i1 %tobool3497, label %land.lhs.true.3498, label %if.end.3576

land.lhs.true.3498:                               ; preds = %if.then.3487
  %1383 = load i32, i32* %dim, align 4
  %idxprom3499 = sext i32 %1383 to i64
  %1384 = load %union.rec*, %union.rec** %y, align 8
  %os13500 = bitcast %union.rec* %1384 to %struct.word_type*
  %ou33501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13500, i32 0, i32 3
  %os313502 = bitcast %union.THIRD_UNION* %ou33501 to %struct.anon.6*
  %oback3503 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313502, i32 0, i32 0
  %arrayidx3504 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3503, i32 0, i64 %idxprom3499
  %1385 = load i32, i32* %arrayidx3504, align 4
  %1386 = load i32, i32* %dim, align 4
  %idxprom3505 = sext i32 %1386 to i64
  %1387 = load %union.rec*, %union.rec** %y, align 8
  %os13506 = bitcast %union.rec* %1387 to %struct.word_type*
  %ou33507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13506, i32 0, i32 3
  %os313508 = bitcast %union.THIRD_UNION* %ou33507 to %struct.anon.6*
  %ofwd3509 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313508, i32 0, i32 1
  %arrayidx3510 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3509, i32 0, i64 %idxprom3505
  %1388 = load i32, i32* %arrayidx3510, align 4
  %add3511 = add nsw i32 %1385, %1388
  %cmp3512 = icmp sgt i32 %add3511, 0
  br i1 %cmp3512, label %if.then.3514, label %if.end.3576

if.then.3514:                                     ; preds = %land.lhs.true.3498
  %1389 = load i32, i32* %dim, align 4
  %idxprom3516 = sext i32 %1389 to i64
  %1390 = load %union.rec*, %union.rec** %y, align 8
  %os13517 = bitcast %union.rec* %1390 to %struct.word_type*
  %ou33518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13517, i32 0, i32 3
  %os313519 = bitcast %union.THIRD_UNION* %ou33518 to %struct.anon.6*
  %oback3520 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313519, i32 0, i32 0
  %arrayidx3521 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3520, i32 0, i64 %idxprom3516
  %1391 = load i32, i32* %arrayidx3521, align 4
  %1392 = load i32, i32* %dim, align 4
  %idxprom3522 = sext i32 %1392 to i64
  %1393 = load %union.rec*, %union.rec** %y, align 8
  %os13523 = bitcast %union.rec* %1393 to %struct.word_type*
  %ou33524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13523, i32 0, i32 3
  %os313525 = bitcast %union.THIRD_UNION* %ou33524 to %struct.anon.6*
  %ofwd3526 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313525, i32 0, i32 1
  %arrayidx3527 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3526, i32 0, i64 %idxprom3522
  %1394 = load i32, i32* %arrayidx3527, align 4
  %call3528 = call i32 @ScaleToConstraint(i32 %1391, i32 %1394, %struct.CONSTRAINT* %c)
  store i32 %call3528, i32* %scale_factor, align 4
  %1395 = load i32, i32* %scale_factor, align 4
  %conv3529 = sitofp i32 %1395 to double
  %cmp3530 = fcmp ogt double %conv3529, 6.400000e+01
  br i1 %cmp3530, label %if.then.3532, label %if.end.3575

if.then.3532:                                     ; preds = %if.then.3514
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %num1, i32 0, i32 0
  %1396 = load i32, i32* %dim, align 4
  %idxprom3535 = sext i32 %1396 to i64
  %1397 = load %union.rec*, %union.rec** %y, align 8
  %os13536 = bitcast %union.rec* %1397 to %struct.word_type*
  %ou33537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13536, i32 0, i32 3
  %os313538 = bitcast %union.THIRD_UNION* %ou33537 to %struct.anon.6*
  %oback3539 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313538, i32 0, i32 0
  %arrayidx3540 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3539, i32 0, i64 %idxprom3535
  %1398 = load i32, i32* %arrayidx3540, align 4
  %1399 = load i32, i32* %dim, align 4
  %idxprom3541 = sext i32 %1399 to i64
  %1400 = load %union.rec*, %union.rec** %y, align 8
  %os13542 = bitcast %union.rec* %1400 to %struct.word_type*
  %ou33543 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13542, i32 0, i32 3
  %os313544 = bitcast %union.THIRD_UNION* %ou33543 to %struct.anon.6*
  %ofwd3545 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313544, i32 0, i32 1
  %arrayidx3546 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3545, i32 0, i64 %idxprom3541
  %1401 = load i32, i32* %arrayidx3546, align 4
  %add3547 = add nsw i32 %1398, %1401
  %conv3548 = sitofp i32 %add3547 to float
  %div = fdiv float %conv3548, 5.670000e+02
  %conv3549 = fpext float %div to double
  %call3550 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3549) #3
  %arraydecay3551 = getelementptr inbounds [20 x i8], [20 x i8]* %num2, i32 0, i32 0
  %obfc3552 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1402 = load i32, i32* %obfc3552, align 4
  %conv3553 = sitofp i32 %1402 to float
  %div3554 = fdiv float %conv3553, 5.670000e+02
  %conv3555 = fpext float %div3554 to double
  %call3556 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3551, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3555) #3
  %1403 = load i32, i32* %dim, align 4
  %cmp3557 = icmp eq i32 %1403, 1
  br i1 %cmp3557, label %if.then.3559, label %if.else.3566

if.then.3559:                                     ; preds = %if.then.3532
  %1404 = load %union.rec*, %union.rec** %y, align 8
  %os13560 = bitcast %union.rec* %1404 to %struct.word_type*
  %ou13561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13560, i32 0, i32 1
  %ofpos3562 = bitcast %union.FIRST_UNION* %ou13561 to %struct.FILE_POS*
  %arraydecay3563 = getelementptr inbounds [20 x i8], [20 x i8]* %num1, i32 0, i32 0
  %arraydecay3564 = getelementptr inbounds [20 x i8], [20 x i8]* %num2, i32 0, i32 0
  %call3565 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3562, i8* %arraydecay3563, i8* %arraydecay3564, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.3573

if.else.3566:                                     ; preds = %if.then.3532
  %1405 = load %union.rec*, %union.rec** %y, align 8
  %os13567 = bitcast %union.rec* %1405 to %struct.word_type*
  %ou13568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13567, i32 0, i32 1
  %ofpos3569 = bitcast %union.FIRST_UNION* %ou13568 to %struct.FILE_POS*
  %arraydecay3570 = getelementptr inbounds [20 x i8], [20 x i8]* %num1, i32 0, i32 0
  %arraydecay3571 = getelementptr inbounds [20 x i8], [20 x i8]* %num2, i32 0, i32 0
  %call3572 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3569, i8* %arraydecay3570, i8* %arraydecay3571, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.3573

if.end.3573:                                      ; preds = %if.else.3566, %if.then.3559
  %1406 = load %union.rec*, %union.rec** %y, align 8
  %1407 = load i32, i32* %scale_factor, align 4
  %1408 = load i32, i32* %dim, align 4
  %call3574 = call %union.rec* @InterposeScale(%union.rec* %1406, i32 %1407, i32 %1408)
  store %union.rec* %call3574, %union.rec** %y, align 8
  store i32 1, i32* %scaled, align 4
  br label %if.end.3575

if.end.3575:                                      ; preds = %if.end.3573, %if.then.3514
  br label %if.end.3576

if.end.3576:                                      ; preds = %if.end.3575, %land.lhs.true.3498, %if.then.3487
  %1409 = load i32, i32* %scaled, align 4
  %tobool3577 = icmp ne i32 %1409, 0
  br i1 %tobool3577, label %if.end.3641, label %if.then.3578

if.then.3578:                                     ; preds = %if.end.3576
  %1410 = load i32, i32* %dim, align 4
  %idxprom3583 = sext i32 %1410 to i64
  %1411 = load %union.rec*, %union.rec** %y, align 8
  %os13584 = bitcast %union.rec* %1411 to %struct.word_type*
  %ou33585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13584, i32 0, i32 3
  %os313586 = bitcast %union.THIRD_UNION* %ou33585 to %struct.anon.6*
  %oback3587 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313586, i32 0, i32 0
  %arrayidx3588 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3587, i32 0, i64 %idxprom3583
  %1412 = load i32, i32* %arrayidx3588, align 4
  %1413 = load i32, i32* %dim, align 4
  %idxprom3589 = sext i32 %1413 to i64
  %1414 = load %union.rec*, %union.rec** %y, align 8
  %os13590 = bitcast %union.rec* %1414 to %struct.word_type*
  %ou33591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13590, i32 0, i32 3
  %os313592 = bitcast %union.THIRD_UNION* %ou33591 to %struct.anon.6*
  %ofwd3593 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313592, i32 0, i32 1
  %arrayidx3594 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3593, i32 0, i64 %idxprom3589
  %1415 = load i32, i32* %arrayidx3594, align 4
  %add3595 = add nsw i32 %1412, %1415
  %cmp3596 = icmp sgt i32 %add3595, 0
  br i1 %cmp3596, label %if.then.3598, label %if.end.3640

if.then.3598:                                     ; preds = %if.then.3578
  %arraydecay3599 = getelementptr inbounds [20 x i8], [20 x i8]* %num13580, i32 0, i32 0
  %1416 = load i32, i32* %dim, align 4
  %idxprom3600 = sext i32 %1416 to i64
  %1417 = load %union.rec*, %union.rec** %y, align 8
  %os13601 = bitcast %union.rec* %1417 to %struct.word_type*
  %ou33602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13601, i32 0, i32 3
  %os313603 = bitcast %union.THIRD_UNION* %ou33602 to %struct.anon.6*
  %oback3604 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313603, i32 0, i32 0
  %arrayidx3605 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3604, i32 0, i64 %idxprom3600
  %1418 = load i32, i32* %arrayidx3605, align 4
  %1419 = load i32, i32* %dim, align 4
  %idxprom3606 = sext i32 %1419 to i64
  %1420 = load %union.rec*, %union.rec** %y, align 8
  %os13607 = bitcast %union.rec* %1420 to %struct.word_type*
  %ou33608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13607, i32 0, i32 3
  %os313609 = bitcast %union.THIRD_UNION* %ou33608 to %struct.anon.6*
  %ofwd3610 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313609, i32 0, i32 1
  %arrayidx3611 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3610, i32 0, i64 %idxprom3606
  %1421 = load i32, i32* %arrayidx3611, align 4
  %add3612 = add nsw i32 %1418, %1421
  %conv3613 = sitofp i32 %add3612 to float
  %div3614 = fdiv float %conv3613, 5.670000e+02
  %conv3615 = fpext float %div3614 to double
  %call3616 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3599, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3615) #3
  %arraydecay3617 = getelementptr inbounds [20 x i8], [20 x i8]* %num23582, i32 0, i32 0
  %obfc3618 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1422 = load i32, i32* %obfc3618, align 4
  %conv3619 = sitofp i32 %1422 to float
  %div3620 = fdiv float %conv3619, 5.670000e+02
  %conv3621 = fpext float %div3620 to double
  %call3622 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3617, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3621) #3
  %1423 = load i32, i32* %dim, align 4
  %cmp3623 = icmp eq i32 %1423, 1
  br i1 %cmp3623, label %if.then.3625, label %if.else.3632

if.then.3625:                                     ; preds = %if.then.3598
  %1424 = load %union.rec*, %union.rec** %y, align 8
  %os13626 = bitcast %union.rec* %1424 to %struct.word_type*
  %ou13627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13626, i32 0, i32 1
  %ofpos3628 = bitcast %union.FIRST_UNION* %ou13627 to %struct.FILE_POS*
  %arraydecay3629 = getelementptr inbounds [20 x i8], [20 x i8]* %num13580, i32 0, i32 0
  %arraydecay3630 = getelementptr inbounds [20 x i8], [20 x i8]* %num23582, i32 0, i32 0
  %call3631 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3628, i8* %arraydecay3629, i8* %arraydecay3630)
  br label %if.end.3639

if.else.3632:                                     ; preds = %if.then.3598
  %1425 = load %union.rec*, %union.rec** %y, align 8
  %os13633 = bitcast %union.rec* %1425 to %struct.word_type*
  %ou13634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13633, i32 0, i32 1
  %ofpos3635 = bitcast %union.FIRST_UNION* %ou13634 to %struct.FILE_POS*
  %arraydecay3636 = getelementptr inbounds [20 x i8], [20 x i8]* %num13580, i32 0, i32 0
  %arraydecay3637 = getelementptr inbounds [20 x i8], [20 x i8]* %num23582, i32 0, i32 0
  %call3638 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3635, i8* %arraydecay3636, i8* %arraydecay3637)
  br label %if.end.3639

if.end.3639:                                      ; preds = %if.else.3632, %if.then.3625
  br label %if.end.3640

if.end.3640:                                      ; preds = %if.end.3639, %if.then.3578
  br label %REJECT

if.end.3641:                                      ; preds = %if.end.3576
  br label %if.end.3642

if.end.3642:                                      ; preds = %if.end.3641, %land.lhs.true.3477
  %1426 = load i32, i32* %dim, align 4
  %cmp3643 = icmp eq i32 %1426, 1
  br i1 %cmp3643, label %if.then.3645, label %if.else.3660

if.then.3645:                                     ; preds = %if.end.3642
  %1427 = load i32, i32* %dim, align 4
  %sub3646 = sub nsw i32 1, %1427
  %idxprom3647 = sext i32 %sub3646 to i64
  %1428 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13648 = bitcast %union.rec* %1428 to %struct.word_type*
  %ou33649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13648, i32 0, i32 3
  %os313650 = bitcast %union.THIRD_UNION* %ou33649 to %struct.anon.6*
  %oback3651 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313650, i32 0, i32 0
  %arrayidx3652 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3651, i32 0, i64 %idxprom3647
  %1429 = load i32, i32* %arrayidx3652, align 4
  store i32 %1429, i32* %perp_back, align 4
  %1430 = load i32, i32* %dim, align 4
  %sub3653 = sub nsw i32 1, %1430
  %idxprom3654 = sext i32 %sub3653 to i64
  %1431 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13655 = bitcast %union.rec* %1431 to %struct.word_type*
  %ou33656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13655, i32 0, i32 3
  %os313657 = bitcast %union.THIRD_UNION* %ou33656 to %struct.anon.6*
  %ofwd3658 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313657, i32 0, i32 1
  %arrayidx3659 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3658, i32 0, i64 %idxprom3654
  %1432 = load i32, i32* %arrayidx3659, align 4
  store i32 %1432, i32* %perp_fwd, align 4
  br label %if.end.3675

if.else.3660:                                     ; preds = %if.end.3642
  %1433 = load i32, i32* %dim, align 4
  %sub3661 = sub nsw i32 1, %1433
  %idxprom3662 = sext i32 %sub3661 to i64
  %1434 = load %union.rec*, %union.rec** %y, align 8
  %os13663 = bitcast %union.rec* %1434 to %struct.word_type*
  %ou33664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13663, i32 0, i32 3
  %os313665 = bitcast %union.THIRD_UNION* %ou33664 to %struct.anon.6*
  %oback3666 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313665, i32 0, i32 0
  %arrayidx3667 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3666, i32 0, i64 %idxprom3662
  %1435 = load i32, i32* %arrayidx3667, align 4
  store i32 %1435, i32* %perp_back, align 4
  %1436 = load i32, i32* %dim, align 4
  %sub3668 = sub nsw i32 1, %1436
  %idxprom3669 = sext i32 %sub3668 to i64
  %1437 = load %union.rec*, %union.rec** %y, align 8
  %os13670 = bitcast %union.rec* %1437 to %struct.word_type*
  %ou33671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13670, i32 0, i32 3
  %os313672 = bitcast %union.THIRD_UNION* %ou33671 to %struct.anon.6*
  %ofwd3673 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313672, i32 0, i32 1
  %arrayidx3674 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3673, i32 0, i64 %idxprom3669
  %1438 = load i32, i32* %arrayidx3674, align 4
  store i32 %1438, i32* %perp_fwd, align 4
  br label %if.end.3675

if.end.3675:                                      ; preds = %if.else.3660, %if.then.3645
  %1439 = load %union.rec*, %union.rec** %dest, align 8
  %1440 = load i32, i32* %dim, align 4
  %sub3676 = sub nsw i32 1, %1440
  call void @Constrained(%union.rec* %1439, %struct.CONSTRAINT* %c, i32 %sub3676, %union.rec** %junk)
  %1441 = load i32, i32* %perp_back, align 4
  %obc3677 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1442 = load i32, i32* %obc3677, align 4
  %cmp3678 = icmp sle i32 %1441, %1442
  br i1 %cmp3678, label %land.lhs.true.3680, label %if.then.3689

land.lhs.true.3680:                               ; preds = %if.end.3675
  %1443 = load i32, i32* %perp_back, align 4
  %1444 = load i32, i32* %perp_fwd, align 4
  %add3681 = add nsw i32 %1443, %1444
  %obfc3682 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1445 = load i32, i32* %obfc3682, align 4
  %cmp3683 = icmp sle i32 %add3681, %1445
  br i1 %cmp3683, label %land.lhs.true.3685, label %if.then.3689

land.lhs.true.3685:                               ; preds = %land.lhs.true.3680
  %1446 = load i32, i32* %perp_fwd, align 4
  %ofc3686 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1447 = load i32, i32* %ofc3686, align 4
  %cmp3687 = icmp sle i32 %1446, %1447
  br i1 %cmp3687, label %if.end.3754, label %if.then.3689

if.then.3689:                                     ; preds = %land.lhs.true.3685, %land.lhs.true.3680, %if.end.3675
  store i32 0, i32* %scaled3691, align 4
  %1448 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13692 = bitcast %union.rec* %1448 to %struct.word_type*
  %ou23693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13692, i32 0, i32 2
  %os233694 = bitcast %union.SECOND_UNION* %ou23693 to %struct.anon.2*
  %oforce_gall3695 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233694, i32 0, i32 2
  %bf.load3696 = load i16, i16* %oforce_gall3695, align 2
  %bf.lshr3697 = lshr i16 %bf.load3696, 12
  %bf.clear3698 = and i16 %bf.lshr3697, 1
  %bf.cast3699 = zext i16 %bf.clear3698 to i32
  %tobool3700 = icmp ne i32 %bf.cast3699, 0
  br i1 %tobool3700, label %land.lhs.true.3701, label %if.end.3750

land.lhs.true.3701:                               ; preds = %if.then.3689
  %1449 = load i32, i32* %perp_back, align 4
  %1450 = load i32, i32* %perp_fwd, align 4
  %add3702 = add nsw i32 %1449, %1450
  %cmp3703 = icmp sgt i32 %add3702, 0
  br i1 %cmp3703, label %if.then.3705, label %if.end.3750

if.then.3705:                                     ; preds = %land.lhs.true.3701
  %1451 = load i32, i32* %perp_back, align 4
  %1452 = load i32, i32* %perp_fwd, align 4
  %call3708 = call i32 @ScaleToConstraint(i32 %1451, i32 %1452, %struct.CONSTRAINT* %c)
  store i32 %call3708, i32* %scale_factor3707, align 4
  %1453 = load i32, i32* %scale_factor3707, align 4
  %conv3709 = sitofp i32 %1453 to double
  %cmp3710 = fcmp ogt double %conv3709, 6.400000e+01
  br i1 %cmp3710, label %if.then.3712, label %if.end.3749

if.then.3712:                                     ; preds = %if.then.3705
  %arraydecay3717 = getelementptr inbounds [20 x i8], [20 x i8]* %num13714, i32 0, i32 0
  %1454 = load i32, i32* %perp_back, align 4
  %1455 = load i32, i32* %perp_fwd, align 4
  %add3718 = add nsw i32 %1454, %1455
  %conv3719 = sitofp i32 %add3718 to float
  %div3720 = fdiv float %conv3719, 5.670000e+02
  %conv3721 = fpext float %div3720 to double
  %call3722 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3717, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3721) #3
  %arraydecay3723 = getelementptr inbounds [20 x i8], [20 x i8]* %num23716, i32 0, i32 0
  %obfc3724 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1456 = load i32, i32* %obfc3724, align 4
  %conv3725 = sitofp i32 %1456 to float
  %div3726 = fdiv float %conv3725, 5.670000e+02
  %conv3727 = fpext float %div3726 to double
  %call3728 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3723, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3727) #3
  %1457 = load i32, i32* %dim, align 4
  %sub3729 = sub nsw i32 1, %1457
  %cmp3730 = icmp eq i32 %sub3729, 1
  br i1 %cmp3730, label %if.then.3732, label %if.else.3739

if.then.3732:                                     ; preds = %if.then.3712
  %1458 = load %union.rec*, %union.rec** %y, align 8
  %os13733 = bitcast %union.rec* %1458 to %struct.word_type*
  %ou13734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13733, i32 0, i32 1
  %ofpos3735 = bitcast %union.FIRST_UNION* %ou13734 to %struct.FILE_POS*
  %arraydecay3736 = getelementptr inbounds [20 x i8], [20 x i8]* %num13714, i32 0, i32 0
  %arraydecay3737 = getelementptr inbounds [20 x i8], [20 x i8]* %num23716, i32 0, i32 0
  %call3738 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3735, i8* %arraydecay3736, i8* %arraydecay3737, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.3746

if.else.3739:                                     ; preds = %if.then.3712
  %1459 = load %union.rec*, %union.rec** %y, align 8
  %os13740 = bitcast %union.rec* %1459 to %struct.word_type*
  %ou13741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13740, i32 0, i32 1
  %ofpos3742 = bitcast %union.FIRST_UNION* %ou13741 to %struct.FILE_POS*
  %arraydecay3743 = getelementptr inbounds [20 x i8], [20 x i8]* %num13714, i32 0, i32 0
  %arraydecay3744 = getelementptr inbounds [20 x i8], [20 x i8]* %num23716, i32 0, i32 0
  %call3745 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3742, i8* %arraydecay3743, i8* %arraydecay3744, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.3746

if.end.3746:                                      ; preds = %if.else.3739, %if.then.3732
  %1460 = load %union.rec*, %union.rec** %y, align 8
  %1461 = load i32, i32* %scale_factor3707, align 4
  %1462 = load i32, i32* %dim, align 4
  %sub3747 = sub nsw i32 1, %1462
  %call3748 = call %union.rec* @InterposeScale(%union.rec* %1460, i32 %1461, i32 %sub3747)
  store %union.rec* %call3748, %union.rec** %y, align 8
  store i32 1, i32* %scaled3691, align 4
  br label %if.end.3749

if.end.3749:                                      ; preds = %if.end.3746, %if.then.3705
  br label %if.end.3750

if.end.3750:                                      ; preds = %if.end.3749, %land.lhs.true.3701, %if.then.3689
  %1463 = load i32, i32* %scaled3691, align 4
  %tobool3751 = icmp ne i32 %1463, 0
  br i1 %tobool3751, label %if.end.3753, label %if.then.3752

if.then.3752:                                     ; preds = %if.end.3750
  br label %REJECT

if.end.3753:                                      ; preds = %if.end.3750
  br label %if.end.3754

if.end.3754:                                      ; preds = %if.end.3753, %land.lhs.true.3685
  %1464 = load %union.rec*, %union.rec** %dest, align 8
  %1465 = load i32, i32* %dim, align 4
  %idxprom3755 = sext i32 %1465 to i64
  %1466 = load %union.rec*, %union.rec** %y, align 8
  %os13756 = bitcast %union.rec* %1466 to %struct.word_type*
  %ou33757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13756, i32 0, i32 3
  %os313758 = bitcast %union.THIRD_UNION* %ou33757 to %struct.anon.6*
  %oback3759 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313758, i32 0, i32 0
  %arrayidx3760 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3759, i32 0, i64 %idxprom3755
  %1467 = load i32, i32* %arrayidx3760, align 4
  %1468 = load i32, i32* %dim, align 4
  %idxprom3761 = sext i32 %1468 to i64
  %1469 = load %union.rec*, %union.rec** %y, align 8
  %os13762 = bitcast %union.rec* %1469 to %struct.word_type*
  %ou33763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13762, i32 0, i32 3
  %os313764 = bitcast %union.THIRD_UNION* %ou33763 to %struct.anon.6*
  %ofwd3765 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313764, i32 0, i32 1
  %arrayidx3766 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3765, i32 0, i64 %idxprom3761
  %1470 = load i32, i32* %arrayidx3766, align 4
  %1471 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %1464, i32 %1467, i32 %1470, i32 %1471)
  %1472 = load %union.rec*, %union.rec** %dest, align 8
  %1473 = load i32, i32* %perp_back, align 4
  %1474 = load i32, i32* %perp_fwd, align 4
  %1475 = load i32, i32* %dim, align 4
  %sub3767 = sub nsw i32 1, %1475
  call void @AdjustSize(%union.rec* %1472, i32 %1473, i32 %1474, i32 %sub3767)
  %1476 = load %union.rec*, %union.rec** %target, align 8
  %1477 = load i32, i32* %dim, align 4
  call void @Constrained(%union.rec* %1476, %struct.CONSTRAINT* %c, i32 %1477, %union.rec** %why)
  %1478 = load %union.rec*, %union.rec** %target_galley, align 8
  %os13768 = bitcast %union.rec* %1478 to %struct.word_type*
  %olist3769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13768, i32 0, i32 0
  %arrayidx3770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3769, i32 0, i64 0
  %opred3771 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3770, i32 0, i32 0
  %1479 = load %union.rec*, %union.rec** %opred3771, align 8
  %os13772 = bitcast %union.rec* %1479 to %struct.word_type*
  %olist3773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13772, i32 0, i32 0
  %arrayidx3774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3773, i32 0, i64 1
  %opred3775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3774, i32 0, i32 0
  %1480 = load %union.rec*, %union.rec** %opred3775, align 8
  store %union.rec* %1480, %union.rec** %z, align 8
  br label %for.cond.3776

for.cond.3776:                                    ; preds = %for.inc.3785, %if.end.3754
  %1481 = load %union.rec*, %union.rec** %z, align 8
  %os13777 = bitcast %union.rec* %1481 to %struct.word_type*
  %ou13778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13777, i32 0, i32 1
  %os113779 = bitcast %union.FIRST_UNION* %ou13778 to %struct.anon*
  %otype3780 = getelementptr inbounds %struct.anon, %struct.anon* %os113779, i32 0, i32 0
  %1482 = load i8, i8* %otype3780, align 1
  %conv3781 = zext i8 %1482 to i32
  %cmp3782 = icmp eq i32 %conv3781, 0
  br i1 %cmp3782, label %for.body.3784, label %for.end.3790

for.body.3784:                                    ; preds = %for.cond.3776
  br label %for.inc.3785

for.inc.3785:                                     ; preds = %for.body.3784
  %1483 = load %union.rec*, %union.rec** %z, align 8
  %os13786 = bitcast %union.rec* %1483 to %struct.word_type*
  %olist3787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13786, i32 0, i32 0
  %arrayidx3788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3787, i32 0, i64 1
  %opred3789 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3788, i32 0, i32 0
  %1484 = load %union.rec*, %union.rec** %opred3789, align 8
  store %union.rec* %1484, %union.rec** %z, align 8
  br label %for.cond.3776

for.end.3790:                                     ; preds = %for.cond.3776
  %1485 = load %union.rec*, %union.rec** %z, align 8
  %os13791 = bitcast %union.rec* %1485 to %struct.word_type*
  %ou13792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13791, i32 0, i32 1
  %os113793 = bitcast %union.FIRST_UNION* %ou13792 to %struct.anon*
  %otype3794 = getelementptr inbounds %struct.anon, %struct.anon* %os113793, i32 0, i32 0
  %1486 = load i8, i8* %otype3794, align 1
  %conv3795 = zext i8 %1486 to i32
  %cmp3796 = icmp sge i32 %conv3795, 119
  br i1 %cmp3796, label %land.lhs.true.3798, label %if.end.3808

land.lhs.true.3798:                               ; preds = %for.end.3790
  %1487 = load %union.rec*, %union.rec** %z, align 8
  %os13799 = bitcast %union.rec* %1487 to %struct.word_type*
  %ou13800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13799, i32 0, i32 1
  %os113801 = bitcast %union.FIRST_UNION* %ou13800 to %struct.anon*
  %otype3802 = getelementptr inbounds %struct.anon, %struct.anon* %os113801, i32 0, i32 0
  %1488 = load i8, i8* %otype3802, align 1
  %conv3803 = zext i8 %1488 to i32
  %cmp3804 = icmp sle i32 %conv3803, 138
  br i1 %cmp3804, label %if.then.3806, label %if.end.3808

if.then.3806:                                     ; preds = %land.lhs.true.3798
  %1489 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3807 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1489, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.3808

if.end.3808:                                      ; preds = %if.then.3806, %land.lhs.true.3798, %for.end.3790
  %1490 = load i32, i32* %dim, align 4
  %idxprom3809 = sext i32 %1490 to i64
  %1491 = load %union.rec*, %union.rec** %z, align 8
  %os13810 = bitcast %union.rec* %1491 to %struct.word_type*
  %ou33811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13810, i32 0, i32 3
  %os313812 = bitcast %union.THIRD_UNION* %ou33811 to %struct.anon.6*
  %oback3813 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313812, i32 0, i32 0
  %arrayidx3814 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3813, i32 0, i64 %idxprom3809
  %1492 = load i32, i32* %arrayidx3814, align 4
  %cmp3815 = icmp sge i32 %1492, 0
  br i1 %cmp3815, label %land.lhs.true.3817, label %if.then.3826

land.lhs.true.3817:                               ; preds = %if.end.3808
  %1493 = load i32, i32* %dim, align 4
  %idxprom3818 = sext i32 %1493 to i64
  %1494 = load %union.rec*, %union.rec** %z, align 8
  %os13819 = bitcast %union.rec* %1494 to %struct.word_type*
  %ou33820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13819, i32 0, i32 3
  %os313821 = bitcast %union.THIRD_UNION* %ou33820 to %struct.anon.6*
  %ofwd3822 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313821, i32 0, i32 1
  %arrayidx3823 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3822, i32 0, i64 %idxprom3818
  %1495 = load i32, i32* %arrayidx3823, align 4
  %cmp3824 = icmp sge i32 %1495, 0
  br i1 %cmp3824, label %if.end.3828, label %if.then.3826

if.then.3826:                                     ; preds = %land.lhs.true.3817, %if.end.3808
  %1496 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3827 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.3828

if.end.3828:                                      ; preds = %if.then.3826, %land.lhs.true.3817
  %1497 = load i32, i32* %dim, align 4
  %idxprom3829 = sext i32 %1497 to i64
  %1498 = load %union.rec*, %union.rec** %z, align 8
  %os13830 = bitcast %union.rec* %1498 to %struct.word_type*
  %ou33831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13830, i32 0, i32 3
  %os313832 = bitcast %union.THIRD_UNION* %ou33831 to %struct.anon.6*
  %oback3833 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313832, i32 0, i32 0
  %arrayidx3834 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3833, i32 0, i64 %idxprom3829
  %1499 = load i32, i32* %arrayidx3834, align 4
  %obc3835 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1500 = load i32, i32* %obc3835, align 4
  %cmp3836 = icmp sle i32 %1499, %1500
  br i1 %cmp3836, label %land.lhs.true.3838, label %if.then.3865

land.lhs.true.3838:                               ; preds = %if.end.3828
  %1501 = load i32, i32* %dim, align 4
  %idxprom3839 = sext i32 %1501 to i64
  %1502 = load %union.rec*, %union.rec** %z, align 8
  %os13840 = bitcast %union.rec* %1502 to %struct.word_type*
  %ou33841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13840, i32 0, i32 3
  %os313842 = bitcast %union.THIRD_UNION* %ou33841 to %struct.anon.6*
  %oback3843 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313842, i32 0, i32 0
  %arrayidx3844 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3843, i32 0, i64 %idxprom3839
  %1503 = load i32, i32* %arrayidx3844, align 4
  %1504 = load i32, i32* %dim, align 4
  %idxprom3845 = sext i32 %1504 to i64
  %1505 = load %union.rec*, %union.rec** %z, align 8
  %os13846 = bitcast %union.rec* %1505 to %struct.word_type*
  %ou33847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13846, i32 0, i32 3
  %os313848 = bitcast %union.THIRD_UNION* %ou33847 to %struct.anon.6*
  %ofwd3849 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313848, i32 0, i32 1
  %arrayidx3850 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3849, i32 0, i64 %idxprom3845
  %1506 = load i32, i32* %arrayidx3850, align 4
  %add3851 = add nsw i32 %1503, %1506
  %obfc3852 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1507 = load i32, i32* %obfc3852, align 4
  %cmp3853 = icmp sle i32 %add3851, %1507
  br i1 %cmp3853, label %land.lhs.true.3855, label %if.then.3865

land.lhs.true.3855:                               ; preds = %land.lhs.true.3838
  %1508 = load i32, i32* %dim, align 4
  %idxprom3856 = sext i32 %1508 to i64
  %1509 = load %union.rec*, %union.rec** %z, align 8
  %os13857 = bitcast %union.rec* %1509 to %struct.word_type*
  %ou33858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13857, i32 0, i32 3
  %os313859 = bitcast %union.THIRD_UNION* %ou33858 to %struct.anon.6*
  %ofwd3860 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313859, i32 0, i32 1
  %arrayidx3861 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3860, i32 0, i64 %idxprom3856
  %1510 = load i32, i32* %arrayidx3861, align 4
  %ofc3862 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1511 = load i32, i32* %ofc3862, align 4
  %cmp3863 = icmp sle i32 %1510, %1511
  br i1 %cmp3863, label %if.end.4034, label %if.then.3865

if.then.3865:                                     ; preds = %land.lhs.true.3855, %land.lhs.true.3838, %if.end.3828
  store i32 0, i32* %scaled3867, align 4
  %1512 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13868 = bitcast %union.rec* %1512 to %struct.word_type*
  %ou23869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13868, i32 0, i32 2
  %os233870 = bitcast %union.SECOND_UNION* %ou23869 to %struct.anon.2*
  %oforce_gall3871 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233870, i32 0, i32 2
  %bf.load3872 = load i16, i16* %oforce_gall3871, align 2
  %bf.lshr3873 = lshr i16 %bf.load3872, 12
  %bf.clear3874 = and i16 %bf.lshr3873, 1
  %bf.cast3875 = zext i16 %bf.clear3874 to i32
  %tobool3876 = icmp ne i32 %bf.cast3875, 0
  br i1 %tobool3876, label %land.lhs.true.3877, label %if.end.3966

land.lhs.true.3877:                               ; preds = %if.then.3865
  %1513 = load i32, i32* %dim, align 4
  %idxprom3878 = sext i32 %1513 to i64
  %1514 = load %union.rec*, %union.rec** %z, align 8
  %os13879 = bitcast %union.rec* %1514 to %struct.word_type*
  %ou33880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13879, i32 0, i32 3
  %os313881 = bitcast %union.THIRD_UNION* %ou33880 to %struct.anon.6*
  %oback3882 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313881, i32 0, i32 0
  %arrayidx3883 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3882, i32 0, i64 %idxprom3878
  %1515 = load i32, i32* %arrayidx3883, align 4
  %1516 = load i32, i32* %dim, align 4
  %idxprom3884 = sext i32 %1516 to i64
  %1517 = load %union.rec*, %union.rec** %z, align 8
  %os13885 = bitcast %union.rec* %1517 to %struct.word_type*
  %ou33886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13885, i32 0, i32 3
  %os313887 = bitcast %union.THIRD_UNION* %ou33886 to %struct.anon.6*
  %ofwd3888 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313887, i32 0, i32 1
  %arrayidx3889 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3888, i32 0, i64 %idxprom3884
  %1518 = load i32, i32* %arrayidx3889, align 4
  %add3890 = add nsw i32 %1515, %1518
  %cmp3891 = icmp sgt i32 %add3890, 0
  br i1 %cmp3891, label %land.lhs.true.3893, label %if.end.3966

land.lhs.true.3893:                               ; preds = %land.lhs.true.3877
  %1519 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a3894 = bitcast %union.rec* %1519 to %struct.head_type*
  %olimiter3895 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3894, i32 0, i32 11
  %1520 = load %union.rec*, %union.rec** %olimiter3895, align 8
  %1521 = load %union.rec*, %union.rec** %why, align 8
  %cmp3896 = icmp ne %union.rec* %1520, %1521
  br i1 %cmp3896, label %if.then.3898, label %if.end.3966

if.then.3898:                                     ; preds = %land.lhs.true.3893
  %1522 = load i32, i32* %dim, align 4
  %idxprom3901 = sext i32 %1522 to i64
  %1523 = load %union.rec*, %union.rec** %z, align 8
  %os13902 = bitcast %union.rec* %1523 to %struct.word_type*
  %ou33903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13902, i32 0, i32 3
  %os313904 = bitcast %union.THIRD_UNION* %ou33903 to %struct.anon.6*
  %oback3905 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313904, i32 0, i32 0
  %arrayidx3906 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3905, i32 0, i64 %idxprom3901
  %1524 = load i32, i32* %arrayidx3906, align 4
  %1525 = load i32, i32* %dim, align 4
  %idxprom3907 = sext i32 %1525 to i64
  %1526 = load %union.rec*, %union.rec** %z, align 8
  %os13908 = bitcast %union.rec* %1526 to %struct.word_type*
  %ou33909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13908, i32 0, i32 3
  %os313910 = bitcast %union.THIRD_UNION* %ou33909 to %struct.anon.6*
  %ofwd3911 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313910, i32 0, i32 1
  %arrayidx3912 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3911, i32 0, i64 %idxprom3907
  %1527 = load i32, i32* %arrayidx3912, align 4
  %call3913 = call i32 @ScaleToConstraint(i32 %1524, i32 %1527, %struct.CONSTRAINT* %c)
  store i32 %call3913, i32* %scale_factor3900, align 4
  %1528 = load i32, i32* %scale_factor3900, align 4
  %conv3914 = sitofp i32 %1528 to double
  %cmp3915 = fcmp ogt double %conv3914, 6.400000e+01
  br i1 %cmp3915, label %if.then.3917, label %if.end.3965

if.then.3917:                                     ; preds = %if.then.3898
  %arraydecay3922 = getelementptr inbounds [20 x i8], [20 x i8]* %num13919, i32 0, i32 0
  %1529 = load i32, i32* %dim, align 4
  %idxprom3923 = sext i32 %1529 to i64
  %1530 = load %union.rec*, %union.rec** %z, align 8
  %os13924 = bitcast %union.rec* %1530 to %struct.word_type*
  %ou33925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13924, i32 0, i32 3
  %os313926 = bitcast %union.THIRD_UNION* %ou33925 to %struct.anon.6*
  %oback3927 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313926, i32 0, i32 0
  %arrayidx3928 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3927, i32 0, i64 %idxprom3923
  %1531 = load i32, i32* %arrayidx3928, align 4
  %1532 = load i32, i32* %dim, align 4
  %idxprom3929 = sext i32 %1532 to i64
  %1533 = load %union.rec*, %union.rec** %z, align 8
  %os13930 = bitcast %union.rec* %1533 to %struct.word_type*
  %ou33931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13930, i32 0, i32 3
  %os313932 = bitcast %union.THIRD_UNION* %ou33931 to %struct.anon.6*
  %ofwd3933 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313932, i32 0, i32 1
  %arrayidx3934 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3933, i32 0, i64 %idxprom3929
  %1534 = load i32, i32* %arrayidx3934, align 4
  %add3935 = add nsw i32 %1531, %1534
  %conv3936 = sitofp i32 %add3935 to float
  %div3937 = fdiv float %conv3936, 5.670000e+02
  %conv3938 = fpext float %div3937 to double
  %call3939 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3922, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3938) #3
  %arraydecay3940 = getelementptr inbounds [20 x i8], [20 x i8]* %num23921, i32 0, i32 0
  %obfc3941 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1535 = load i32, i32* %obfc3941, align 4
  %conv3942 = sitofp i32 %1535 to float
  %div3943 = fdiv float %conv3942, 5.670000e+02
  %conv3944 = fpext float %div3943 to double
  %call3945 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3940, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv3944) #3
  %1536 = load i32, i32* %dim, align 4
  %cmp3946 = icmp eq i32 %1536, 1
  br i1 %cmp3946, label %if.then.3948, label %if.else.3955

if.then.3948:                                     ; preds = %if.then.3917
  %1537 = load %union.rec*, %union.rec** %y, align 8
  %os13949 = bitcast %union.rec* %1537 to %struct.word_type*
  %ou13950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13949, i32 0, i32 1
  %ofpos3951 = bitcast %union.FIRST_UNION* %ou13950 to %struct.FILE_POS*
  %arraydecay3952 = getelementptr inbounds [20 x i8], [20 x i8]* %num13919, i32 0, i32 0
  %arraydecay3953 = getelementptr inbounds [20 x i8], [20 x i8]* %num23921, i32 0, i32 0
  %call3954 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3951, i8* %arraydecay3952, i8* %arraydecay3953, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.3962

if.else.3955:                                     ; preds = %if.then.3917
  %1538 = load %union.rec*, %union.rec** %y, align 8
  %os13956 = bitcast %union.rec* %1538 to %struct.word_type*
  %ou13957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13956, i32 0, i32 1
  %ofpos3958 = bitcast %union.FIRST_UNION* %ou13957 to %struct.FILE_POS*
  %arraydecay3959 = getelementptr inbounds [20 x i8], [20 x i8]* %num13919, i32 0, i32 0
  %arraydecay3960 = getelementptr inbounds [20 x i8], [20 x i8]* %num23921, i32 0, i32 0
  %call3961 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3958, i8* %arraydecay3959, i8* %arraydecay3960, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.3962

if.end.3962:                                      ; preds = %if.else.3955, %if.then.3948
  %1539 = load %union.rec*, %union.rec** %z, align 8
  %1540 = load i32, i32* %dim, align 4
  %call3963 = call %union.rec* @InterposeWideOrHigh(%union.rec* %1539, i32 %1540)
  store %union.rec* %call3963, %union.rec** %z, align 8
  %1541 = load %union.rec*, %union.rec** %z, align 8
  %1542 = load i32, i32* %scale_factor3900, align 4
  %1543 = load i32, i32* %dim, align 4
  %call3964 = call %union.rec* @InterposeScale(%union.rec* %1541, i32 %1542, i32 %1543)
  store %union.rec* %call3964, %union.rec** %z, align 8
  store i32 1, i32* %scaled3867, align 4
  br label %if.end.3965

if.end.3965:                                      ; preds = %if.end.3962, %if.then.3898
  br label %if.end.3966

if.end.3966:                                      ; preds = %if.end.3965, %land.lhs.true.3893, %land.lhs.true.3877, %if.then.3865
  %1544 = load i32, i32* %scaled3867, align 4
  %tobool3967 = icmp ne i32 %1544, 0
  br i1 %tobool3967, label %if.end.4033, label %if.then.3968

if.then.3968:                                     ; preds = %if.end.3966
  %1545 = load %union.rec*, %union.rec** %why, align 8
  %1546 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a3973 = bitcast %union.rec* %1546 to %struct.head_type*
  %olimiter3974 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3973, i32 0, i32 11
  store %union.rec* %1545, %union.rec** %olimiter3974, align 8
  %1547 = load i32, i32* %dim, align 4
  %idxprom3975 = sext i32 %1547 to i64
  %1548 = load %union.rec*, %union.rec** %z, align 8
  %os13976 = bitcast %union.rec* %1548 to %struct.word_type*
  %ou33977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13976, i32 0, i32 3
  %os313978 = bitcast %union.THIRD_UNION* %ou33977 to %struct.anon.6*
  %oback3979 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313978, i32 0, i32 0
  %arrayidx3980 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3979, i32 0, i64 %idxprom3975
  %1549 = load i32, i32* %arrayidx3980, align 4
  %1550 = load i32, i32* %dim, align 4
  %idxprom3981 = sext i32 %1550 to i64
  %1551 = load %union.rec*, %union.rec** %z, align 8
  %os13982 = bitcast %union.rec* %1551 to %struct.word_type*
  %ou33983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13982, i32 0, i32 3
  %os313984 = bitcast %union.THIRD_UNION* %ou33983 to %struct.anon.6*
  %ofwd3985 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313984, i32 0, i32 1
  %arrayidx3986 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3985, i32 0, i64 %idxprom3981
  %1552 = load i32, i32* %arrayidx3986, align 4
  %add3987 = add nsw i32 %1549, %1552
  %cmp3988 = icmp sgt i32 %add3987, 0
  br i1 %cmp3988, label %if.then.3990, label %if.end.4032

if.then.3990:                                     ; preds = %if.then.3968
  %arraydecay3991 = getelementptr inbounds [20 x i8], [20 x i8]* %num13970, i32 0, i32 0
  %1553 = load i32, i32* %dim, align 4
  %idxprom3992 = sext i32 %1553 to i64
  %1554 = load %union.rec*, %union.rec** %z, align 8
  %os13993 = bitcast %union.rec* %1554 to %struct.word_type*
  %ou33994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13993, i32 0, i32 3
  %os313995 = bitcast %union.THIRD_UNION* %ou33994 to %struct.anon.6*
  %oback3996 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313995, i32 0, i32 0
  %arrayidx3997 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3996, i32 0, i64 %idxprom3992
  %1555 = load i32, i32* %arrayidx3997, align 4
  %1556 = load i32, i32* %dim, align 4
  %idxprom3998 = sext i32 %1556 to i64
  %1557 = load %union.rec*, %union.rec** %z, align 8
  %os13999 = bitcast %union.rec* %1557 to %struct.word_type*
  %ou34000 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13999, i32 0, i32 3
  %os314001 = bitcast %union.THIRD_UNION* %ou34000 to %struct.anon.6*
  %ofwd4002 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314001, i32 0, i32 1
  %arrayidx4003 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4002, i32 0, i64 %idxprom3998
  %1558 = load i32, i32* %arrayidx4003, align 4
  %add4004 = add nsw i32 %1555, %1558
  %conv4005 = sitofp i32 %add4004 to float
  %div4006 = fdiv float %conv4005, 5.670000e+02
  %conv4007 = fpext float %div4006 to double
  %call4008 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3991, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv4007) #3
  %arraydecay4009 = getelementptr inbounds [20 x i8], [20 x i8]* %num23972, i32 0, i32 0
  %obfc4010 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1559 = load i32, i32* %obfc4010, align 4
  %conv4011 = sitofp i32 %1559 to float
  %div4012 = fdiv float %conv4011, 5.670000e+02
  %conv4013 = fpext float %div4012 to double
  %call4014 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4009, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv4013) #3
  %1560 = load i32, i32* %dim, align 4
  %cmp4015 = icmp eq i32 %1560, 1
  br i1 %cmp4015, label %if.then.4017, label %if.else.4024

if.then.4017:                                     ; preds = %if.then.3990
  %1561 = load %union.rec*, %union.rec** %y, align 8
  %os14018 = bitcast %union.rec* %1561 to %struct.word_type*
  %ou14019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14018, i32 0, i32 1
  %ofpos4020 = bitcast %union.FIRST_UNION* %ou14019 to %struct.FILE_POS*
  %arraydecay4021 = getelementptr inbounds [20 x i8], [20 x i8]* %num13970, i32 0, i32 0
  %arraydecay4022 = getelementptr inbounds [20 x i8], [20 x i8]* %num23972, i32 0, i32 0
  %call4023 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos4020, i8* %arraydecay4021, i8* %arraydecay4022)
  br label %if.end.4031

if.else.4024:                                     ; preds = %if.then.3990
  %1562 = load %union.rec*, %union.rec** %y, align 8
  %os14025 = bitcast %union.rec* %1562 to %struct.word_type*
  %ou14026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14025, i32 0, i32 1
  %ofpos4027 = bitcast %union.FIRST_UNION* %ou14026 to %struct.FILE_POS*
  %arraydecay4028 = getelementptr inbounds [20 x i8], [20 x i8]* %num13970, i32 0, i32 0
  %arraydecay4029 = getelementptr inbounds [20 x i8], [20 x i8]* %num23972, i32 0, i32 0
  %call4030 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos4027, i8* %arraydecay4028, i8* %arraydecay4029)
  br label %if.end.4031

if.end.4031:                                      ; preds = %if.else.4024, %if.then.4017
  br label %if.end.4032

if.end.4032:                                      ; preds = %if.end.4031, %if.then.3968
  br label %REJECT

if.end.4033:                                      ; preds = %if.end.3966
  br label %if.end.4034

if.end.4034:                                      ; preds = %if.end.4033, %land.lhs.true.3855
  %1563 = load %union.rec*, %union.rec** %why, align 8
  %1564 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a4035 = bitcast %union.rec* %1564 to %struct.head_type*
  %olimiter4036 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a4035, i32 0, i32 11
  store %union.rec* %1563, %union.rec** %olimiter4036, align 8
  %1565 = load %union.rec*, %union.rec** %target, align 8
  %1566 = load i32, i32* %dim, align 4
  %sub4037 = sub nsw i32 1, %1566
  call void @Constrained(%union.rec* %1565, %struct.CONSTRAINT* %c, i32 %sub4037, %union.rec** %junk)
  %1567 = load %union.rec*, %union.rec** %target_galley, align 8
  %os14038 = bitcast %union.rec* %1567 to %struct.word_type*
  %olist4039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14038, i32 0, i32 0
  %arrayidx4040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4039, i32 0, i64 0
  %opred4041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4040, i32 0, i32 0
  %1568 = load %union.rec*, %union.rec** %opred4041, align 8
  %os14042 = bitcast %union.rec* %1568 to %struct.word_type*
  %olist4043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14042, i32 0, i32 0
  %arrayidx4044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4043, i32 0, i64 1
  %opred4045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4044, i32 0, i32 0
  %1569 = load %union.rec*, %union.rec** %opred4045, align 8
  store %union.rec* %1569, %union.rec** %z, align 8
  br label %for.cond.4046

for.cond.4046:                                    ; preds = %for.inc.4055, %if.end.4034
  %1570 = load %union.rec*, %union.rec** %z, align 8
  %os14047 = bitcast %union.rec* %1570 to %struct.word_type*
  %ou14048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14047, i32 0, i32 1
  %os114049 = bitcast %union.FIRST_UNION* %ou14048 to %struct.anon*
  %otype4050 = getelementptr inbounds %struct.anon, %struct.anon* %os114049, i32 0, i32 0
  %1571 = load i8, i8* %otype4050, align 1
  %conv4051 = zext i8 %1571 to i32
  %cmp4052 = icmp eq i32 %conv4051, 0
  br i1 %cmp4052, label %for.body.4054, label %for.end.4060

for.body.4054:                                    ; preds = %for.cond.4046
  br label %for.inc.4055

for.inc.4055:                                     ; preds = %for.body.4054
  %1572 = load %union.rec*, %union.rec** %z, align 8
  %os14056 = bitcast %union.rec* %1572 to %struct.word_type*
  %olist4057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14056, i32 0, i32 0
  %arrayidx4058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4057, i32 0, i64 1
  %opred4059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4058, i32 0, i32 0
  %1573 = load %union.rec*, %union.rec** %opred4059, align 8
  store %union.rec* %1573, %union.rec** %z, align 8
  br label %for.cond.4046

for.end.4060:                                     ; preds = %for.cond.4046
  %1574 = load %union.rec*, %union.rec** %z, align 8
  %os14061 = bitcast %union.rec* %1574 to %struct.word_type*
  %ou14062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14061, i32 0, i32 1
  %os114063 = bitcast %union.FIRST_UNION* %ou14062 to %struct.anon*
  %otype4064 = getelementptr inbounds %struct.anon, %struct.anon* %os114063, i32 0, i32 0
  %1575 = load i8, i8* %otype4064, align 1
  %conv4065 = zext i8 %1575 to i32
  %cmp4066 = icmp sge i32 %conv4065, 119
  br i1 %cmp4066, label %land.lhs.true.4068, label %if.end.4078

land.lhs.true.4068:                               ; preds = %for.end.4060
  %1576 = load %union.rec*, %union.rec** %z, align 8
  %os14069 = bitcast %union.rec* %1576 to %struct.word_type*
  %ou14070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14069, i32 0, i32 1
  %os114071 = bitcast %union.FIRST_UNION* %ou14070 to %struct.anon*
  %otype4072 = getelementptr inbounds %struct.anon, %struct.anon* %os114071, i32 0, i32 0
  %1577 = load i8, i8* %otype4072, align 1
  %conv4073 = zext i8 %1577 to i32
  %cmp4074 = icmp sle i32 %conv4073, 138
  br i1 %cmp4074, label %if.then.4076, label %if.end.4078

if.then.4076:                                     ; preds = %land.lhs.true.4068
  %1578 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4077 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1578, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.4078

if.end.4078:                                      ; preds = %if.then.4076, %land.lhs.true.4068, %for.end.4060
  %1579 = load i32, i32* %dim, align 4
  %sub4079 = sub nsw i32 1, %1579
  %idxprom4080 = sext i32 %sub4079 to i64
  %1580 = load %union.rec*, %union.rec** %z, align 8
  %os14081 = bitcast %union.rec* %1580 to %struct.word_type*
  %ou34082 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14081, i32 0, i32 3
  %os314083 = bitcast %union.THIRD_UNION* %ou34082 to %struct.anon.6*
  %oback4084 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314083, i32 0, i32 0
  %arrayidx4085 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4084, i32 0, i64 %idxprom4080
  %1581 = load i32, i32* %arrayidx4085, align 4
  %cmp4086 = icmp sge i32 %1581, 0
  br i1 %cmp4086, label %land.lhs.true.4088, label %if.then.4098

land.lhs.true.4088:                               ; preds = %if.end.4078
  %1582 = load i32, i32* %dim, align 4
  %sub4089 = sub nsw i32 1, %1582
  %idxprom4090 = sext i32 %sub4089 to i64
  %1583 = load %union.rec*, %union.rec** %z, align 8
  %os14091 = bitcast %union.rec* %1583 to %struct.word_type*
  %ou34092 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14091, i32 0, i32 3
  %os314093 = bitcast %union.THIRD_UNION* %ou34092 to %struct.anon.6*
  %ofwd4094 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314093, i32 0, i32 1
  %arrayidx4095 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4094, i32 0, i64 %idxprom4090
  %1584 = load i32, i32* %arrayidx4095, align 4
  %cmp4096 = icmp sge i32 %1584, 0
  br i1 %cmp4096, label %if.end.4100, label %if.then.4098

if.then.4098:                                     ; preds = %land.lhs.true.4088, %if.end.4078
  %1585 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4099 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1585, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.4100

if.end.4100:                                      ; preds = %if.then.4098, %land.lhs.true.4088
  %1586 = load i32, i32* %dim, align 4
  %sub4101 = sub nsw i32 1, %1586
  %idxprom4102 = sext i32 %sub4101 to i64
  %1587 = load %union.rec*, %union.rec** %z, align 8
  %os14103 = bitcast %union.rec* %1587 to %struct.word_type*
  %ou34104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14103, i32 0, i32 3
  %os314105 = bitcast %union.THIRD_UNION* %ou34104 to %struct.anon.6*
  %oback4106 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314105, i32 0, i32 0
  %arrayidx4107 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4106, i32 0, i64 %idxprom4102
  %1588 = load i32, i32* %arrayidx4107, align 4
  %obc4108 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %1589 = load i32, i32* %obc4108, align 4
  %cmp4109 = icmp sle i32 %1588, %1589
  br i1 %cmp4109, label %land.lhs.true.4111, label %if.then.4141

land.lhs.true.4111:                               ; preds = %if.end.4100
  %1590 = load i32, i32* %dim, align 4
  %sub4112 = sub nsw i32 1, %1590
  %idxprom4113 = sext i32 %sub4112 to i64
  %1591 = load %union.rec*, %union.rec** %z, align 8
  %os14114 = bitcast %union.rec* %1591 to %struct.word_type*
  %ou34115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14114, i32 0, i32 3
  %os314116 = bitcast %union.THIRD_UNION* %ou34115 to %struct.anon.6*
  %oback4117 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314116, i32 0, i32 0
  %arrayidx4118 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4117, i32 0, i64 %idxprom4113
  %1592 = load i32, i32* %arrayidx4118, align 4
  %1593 = load i32, i32* %dim, align 4
  %sub4119 = sub nsw i32 1, %1593
  %idxprom4120 = sext i32 %sub4119 to i64
  %1594 = load %union.rec*, %union.rec** %z, align 8
  %os14121 = bitcast %union.rec* %1594 to %struct.word_type*
  %ou34122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14121, i32 0, i32 3
  %os314123 = bitcast %union.THIRD_UNION* %ou34122 to %struct.anon.6*
  %ofwd4124 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314123, i32 0, i32 1
  %arrayidx4125 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4124, i32 0, i64 %idxprom4120
  %1595 = load i32, i32* %arrayidx4125, align 4
  %add4126 = add nsw i32 %1592, %1595
  %obfc4127 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1596 = load i32, i32* %obfc4127, align 4
  %cmp4128 = icmp sle i32 %add4126, %1596
  br i1 %cmp4128, label %land.lhs.true.4130, label %if.then.4141

land.lhs.true.4130:                               ; preds = %land.lhs.true.4111
  %1597 = load i32, i32* %dim, align 4
  %sub4131 = sub nsw i32 1, %1597
  %idxprom4132 = sext i32 %sub4131 to i64
  %1598 = load %union.rec*, %union.rec** %z, align 8
  %os14133 = bitcast %union.rec* %1598 to %struct.word_type*
  %ou34134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14133, i32 0, i32 3
  %os314135 = bitcast %union.THIRD_UNION* %ou34134 to %struct.anon.6*
  %ofwd4136 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314135, i32 0, i32 1
  %arrayidx4137 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4136, i32 0, i64 %idxprom4132
  %1599 = load i32, i32* %arrayidx4137, align 4
  %ofc4138 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %1600 = load i32, i32* %ofc4138, align 4
  %cmp4139 = icmp sle i32 %1599, %1600
  br i1 %cmp4139, label %if.end.4250, label %if.then.4141

if.then.4141:                                     ; preds = %land.lhs.true.4130, %land.lhs.true.4111, %if.end.4100
  store i32 0, i32* %scaled4143, align 4
  %1601 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os14144 = bitcast %union.rec* %1601 to %struct.word_type*
  %ou24145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14144, i32 0, i32 2
  %os234146 = bitcast %union.SECOND_UNION* %ou24145 to %struct.anon.2*
  %oforce_gall4147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234146, i32 0, i32 2
  %bf.load4148 = load i16, i16* %oforce_gall4147, align 2
  %bf.lshr4149 = lshr i16 %bf.load4148, 12
  %bf.clear4150 = and i16 %bf.lshr4149, 1
  %bf.cast4151 = zext i16 %bf.clear4150 to i32
  %tobool4152 = icmp ne i32 %bf.cast4151, 0
  br i1 %tobool4152, label %land.lhs.true.4153, label %if.end.4246

land.lhs.true.4153:                               ; preds = %if.then.4141
  %1602 = load i32, i32* %dim, align 4
  %sub4154 = sub nsw i32 1, %1602
  %idxprom4155 = sext i32 %sub4154 to i64
  %1603 = load %union.rec*, %union.rec** %z, align 8
  %os14156 = bitcast %union.rec* %1603 to %struct.word_type*
  %ou34157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14156, i32 0, i32 3
  %os314158 = bitcast %union.THIRD_UNION* %ou34157 to %struct.anon.6*
  %oback4159 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314158, i32 0, i32 0
  %arrayidx4160 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4159, i32 0, i64 %idxprom4155
  %1604 = load i32, i32* %arrayidx4160, align 4
  %1605 = load i32, i32* %dim, align 4
  %sub4161 = sub nsw i32 1, %1605
  %idxprom4162 = sext i32 %sub4161 to i64
  %1606 = load %union.rec*, %union.rec** %z, align 8
  %os14163 = bitcast %union.rec* %1606 to %struct.word_type*
  %ou34164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14163, i32 0, i32 3
  %os314165 = bitcast %union.THIRD_UNION* %ou34164 to %struct.anon.6*
  %ofwd4166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314165, i32 0, i32 1
  %arrayidx4167 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4166, i32 0, i64 %idxprom4162
  %1607 = load i32, i32* %arrayidx4167, align 4
  %add4168 = add nsw i32 %1604, %1607
  %cmp4169 = icmp sgt i32 %add4168, 0
  br i1 %cmp4169, label %if.then.4171, label %if.end.4246

if.then.4171:                                     ; preds = %land.lhs.true.4153
  %1608 = load i32, i32* %dim, align 4
  %sub4174 = sub nsw i32 1, %1608
  %idxprom4175 = sext i32 %sub4174 to i64
  %1609 = load %union.rec*, %union.rec** %z, align 8
  %os14176 = bitcast %union.rec* %1609 to %struct.word_type*
  %ou34177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14176, i32 0, i32 3
  %os314178 = bitcast %union.THIRD_UNION* %ou34177 to %struct.anon.6*
  %oback4179 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314178, i32 0, i32 0
  %arrayidx4180 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4179, i32 0, i64 %idxprom4175
  %1610 = load i32, i32* %arrayidx4180, align 4
  %1611 = load i32, i32* %dim, align 4
  %sub4181 = sub nsw i32 1, %1611
  %idxprom4182 = sext i32 %sub4181 to i64
  %1612 = load %union.rec*, %union.rec** %z, align 8
  %os14183 = bitcast %union.rec* %1612 to %struct.word_type*
  %ou34184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14183, i32 0, i32 3
  %os314185 = bitcast %union.THIRD_UNION* %ou34184 to %struct.anon.6*
  %ofwd4186 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314185, i32 0, i32 1
  %arrayidx4187 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4186, i32 0, i64 %idxprom4182
  %1613 = load i32, i32* %arrayidx4187, align 4
  %call4188 = call i32 @ScaleToConstraint(i32 %1610, i32 %1613, %struct.CONSTRAINT* %c)
  store i32 %call4188, i32* %scale_factor4173, align 4
  %1614 = load i32, i32* %scale_factor4173, align 4
  %conv4189 = sitofp i32 %1614 to double
  %cmp4190 = fcmp ogt double %conv4189, 6.400000e+01
  br i1 %cmp4190, label %if.then.4192, label %if.end.4245

if.then.4192:                                     ; preds = %if.then.4171
  %arraydecay4197 = getelementptr inbounds [20 x i8], [20 x i8]* %num14194, i32 0, i32 0
  %1615 = load i32, i32* %dim, align 4
  %sub4198 = sub nsw i32 1, %1615
  %idxprom4199 = sext i32 %sub4198 to i64
  %1616 = load %union.rec*, %union.rec** %z, align 8
  %os14200 = bitcast %union.rec* %1616 to %struct.word_type*
  %ou34201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14200, i32 0, i32 3
  %os314202 = bitcast %union.THIRD_UNION* %ou34201 to %struct.anon.6*
  %oback4203 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314202, i32 0, i32 0
  %arrayidx4204 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4203, i32 0, i64 %idxprom4199
  %1617 = load i32, i32* %arrayidx4204, align 4
  %1618 = load i32, i32* %dim, align 4
  %sub4205 = sub nsw i32 1, %1618
  %idxprom4206 = sext i32 %sub4205 to i64
  %1619 = load %union.rec*, %union.rec** %z, align 8
  %os14207 = bitcast %union.rec* %1619 to %struct.word_type*
  %ou34208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14207, i32 0, i32 3
  %os314209 = bitcast %union.THIRD_UNION* %ou34208 to %struct.anon.6*
  %ofwd4210 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314209, i32 0, i32 1
  %arrayidx4211 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4210, i32 0, i64 %idxprom4206
  %1620 = load i32, i32* %arrayidx4211, align 4
  %add4212 = add nsw i32 %1617, %1620
  %conv4213 = sitofp i32 %add4212 to float
  %div4214 = fdiv float %conv4213, 5.670000e+02
  %conv4215 = fpext float %div4214 to double
  %call4216 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv4215) #3
  %arraydecay4217 = getelementptr inbounds [20 x i8], [20 x i8]* %num24196, i32 0, i32 0
  %obfc4218 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %1621 = load i32, i32* %obfc4218, align 4
  %conv4219 = sitofp i32 %1621 to float
  %div4220 = fdiv float %conv4219, 5.670000e+02
  %conv4221 = fpext float %div4220 to double
  %call4222 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %conv4221) #3
  %1622 = load i32, i32* %dim, align 4
  %sub4223 = sub nsw i32 1, %1622
  %cmp4224 = icmp eq i32 %sub4223, 1
  br i1 %cmp4224, label %if.then.4226, label %if.else.4233

if.then.4226:                                     ; preds = %if.then.4192
  %1623 = load %union.rec*, %union.rec** %y, align 8
  %os14227 = bitcast %union.rec* %1623 to %struct.word_type*
  %ou14228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14227, i32 0, i32 1
  %ofpos4229 = bitcast %union.FIRST_UNION* %ou14228 to %struct.FILE_POS*
  %arraydecay4230 = getelementptr inbounds [20 x i8], [20 x i8]* %num14194, i32 0, i32 0
  %arraydecay4231 = getelementptr inbounds [20 x i8], [20 x i8]* %num24196, i32 0, i32 0
  %call4232 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos4229, i8* %arraydecay4230, i8* %arraydecay4231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.4240

if.else.4233:                                     ; preds = %if.then.4192
  %1624 = load %union.rec*, %union.rec** %y, align 8
  %os14234 = bitcast %union.rec* %1624 to %struct.word_type*
  %ou14235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14234, i32 0, i32 1
  %ofpos4236 = bitcast %union.FIRST_UNION* %ou14235 to %struct.FILE_POS*
  %arraydecay4237 = getelementptr inbounds [20 x i8], [20 x i8]* %num14194, i32 0, i32 0
  %arraydecay4238 = getelementptr inbounds [20 x i8], [20 x i8]* %num24196, i32 0, i32 0
  %call4239 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 19, i32 11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos4236, i8* %arraydecay4237, i8* %arraydecay4238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.4240

if.end.4240:                                      ; preds = %if.else.4233, %if.then.4226
  %1625 = load %union.rec*, %union.rec** %z, align 8
  %1626 = load i32, i32* %dim, align 4
  %sub4241 = sub nsw i32 1, %1626
  %call4242 = call %union.rec* @InterposeWideOrHigh(%union.rec* %1625, i32 %sub4241)
  store %union.rec* %call4242, %union.rec** %z, align 8
  %1627 = load %union.rec*, %union.rec** %z, align 8
  %1628 = load i32, i32* %scale_factor4173, align 4
  %1629 = load i32, i32* %dim, align 4
  %sub4243 = sub nsw i32 1, %1629
  %call4244 = call %union.rec* @InterposeScale(%union.rec* %1627, i32 %1628, i32 %sub4243)
  store %union.rec* %call4244, %union.rec** %z, align 8
  store i32 1, i32* %scaled4143, align 4
  br label %if.end.4245

if.end.4245:                                      ; preds = %if.end.4240, %if.then.4171
  br label %if.end.4246

if.end.4246:                                      ; preds = %if.end.4245, %land.lhs.true.4153, %if.then.4141
  %1630 = load i32, i32* %scaled4143, align 4
  %tobool4247 = icmp ne i32 %1630, 0
  br i1 %tobool4247, label %if.end.4249, label %if.then.4248

if.then.4248:                                     ; preds = %if.end.4246
  br label %REJECT

if.end.4249:                                      ; preds = %if.end.4246
  br label %if.end.4250

if.end.4250:                                      ; preds = %if.end.4249, %land.lhs.true.4130
  %1631 = load %union.rec*, %union.rec** %target, align 8
  %os14251 = bitcast %union.rec* %1631 to %struct.word_type*
  %ou24252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14251, i32 0, i32 2
  %os234253 = bitcast %union.SECOND_UNION* %ou24252 to %struct.anon.2*
  %oexternal_hor4254 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234253, i32 0, i32 2
  %bf.load4255 = load i16, i16* %oexternal_hor4254, align 2
  %bf.lshr4256 = lshr i16 %bf.load4255, 3
  %bf.clear4257 = and i16 %bf.lshr4256, 1
  %bf.cast4258 = zext i16 %bf.clear4257 to i32
  %tobool4259 = icmp ne i32 %bf.cast4258, 0
  br i1 %tobool4259, label %if.then.4260, label %if.else.4261

if.then.4260:                                     ; preds = %if.end.4250
  br label %if.end.4339

if.else.4261:                                     ; preds = %if.end.4250
  %1632 = load %union.rec*, %union.rec** %target, align 8
  %os14262 = bitcast %union.rec* %1632 to %struct.word_type*
  %ou24263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14262, i32 0, i32 2
  %os234264 = bitcast %union.SECOND_UNION* %ou24263 to %struct.anon.2*
  %oexternal_ver4265 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234264, i32 0, i32 2
  %bf.load4266 = load i16, i16* %oexternal_ver4265, align 2
  %bf.lshr4267 = lshr i16 %bf.load4266, 4
  %bf.clear4268 = and i16 %bf.lshr4267, 1
  %bf.cast4269 = zext i16 %bf.clear4268 to i32
  %tobool4270 = icmp ne i32 %bf.cast4269, 0
  br i1 %tobool4270, label %if.then.4271, label %if.else.4287

if.then.4271:                                     ; preds = %if.else.4261
  %1633 = load %union.rec*, %union.rec** %target, align 8
  %1634 = load i32, i32* %dim, align 4
  %sub4272 = sub nsw i32 1, %1634
  %idxprom4273 = sext i32 %sub4272 to i64
  %1635 = load %union.rec*, %union.rec** %target_galley, align 8
  %os14274 = bitcast %union.rec* %1635 to %struct.word_type*
  %ou34275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14274, i32 0, i32 3
  %os314276 = bitcast %union.THIRD_UNION* %ou34275 to %struct.anon.6*
  %oback4277 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314276, i32 0, i32 0
  %arrayidx4278 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4277, i32 0, i64 %idxprom4273
  %1636 = load i32, i32* %arrayidx4278, align 4
  %1637 = load i32, i32* %dim, align 4
  %sub4279 = sub nsw i32 1, %1637
  %idxprom4280 = sext i32 %sub4279 to i64
  %1638 = load %union.rec*, %union.rec** %target_galley, align 8
  %os14281 = bitcast %union.rec* %1638 to %struct.word_type*
  %ou34282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14281, i32 0, i32 3
  %os314283 = bitcast %union.THIRD_UNION* %ou34282 to %struct.anon.6*
  %ofwd4284 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314283, i32 0, i32 1
  %arrayidx4285 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4284, i32 0, i64 %idxprom4280
  %1639 = load i32, i32* %arrayidx4285, align 4
  %1640 = load i32, i32* %dim, align 4
  %sub4286 = sub nsw i32 1, %1640
  call void @AdjustSize(%union.rec* %1633, i32 %1636, i32 %1639, i32 %sub4286)
  br label %if.end.4338

if.else.4287:                                     ; preds = %if.else.4261
  %1641 = load %union.rec*, %union.rec** %target_galley, align 8
  %os14288 = bitcast %union.rec* %1641 to %struct.word_type*
  %olist4289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14288, i32 0, i32 0
  %arrayidx4290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4289, i32 0, i64 0
  %opred4291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4290, i32 0, i32 0
  %1642 = load %union.rec*, %union.rec** %opred4291, align 8
  %os14292 = bitcast %union.rec* %1642 to %struct.word_type*
  %olist4293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14292, i32 0, i32 0
  %arrayidx4294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4293, i32 0, i64 1
  %opred4295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4294, i32 0, i32 0
  %1643 = load %union.rec*, %union.rec** %opred4295, align 8
  store %union.rec* %1643, %union.rec** %z, align 8
  br label %for.cond.4296

for.cond.4296:                                    ; preds = %for.inc.4305, %if.else.4287
  %1644 = load %union.rec*, %union.rec** %z, align 8
  %os14297 = bitcast %union.rec* %1644 to %struct.word_type*
  %ou14298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14297, i32 0, i32 1
  %os114299 = bitcast %union.FIRST_UNION* %ou14298 to %struct.anon*
  %otype4300 = getelementptr inbounds %struct.anon, %struct.anon* %os114299, i32 0, i32 0
  %1645 = load i8, i8* %otype4300, align 1
  %conv4301 = zext i8 %1645 to i32
  %cmp4302 = icmp eq i32 %conv4301, 0
  br i1 %cmp4302, label %for.body.4304, label %for.end.4310

for.body.4304:                                    ; preds = %for.cond.4296
  br label %for.inc.4305

for.inc.4305:                                     ; preds = %for.body.4304
  %1646 = load %union.rec*, %union.rec** %z, align 8
  %os14306 = bitcast %union.rec* %1646 to %struct.word_type*
  %olist4307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14306, i32 0, i32 0
  %arrayidx4308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4307, i32 0, i64 1
  %opred4309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4308, i32 0, i32 0
  %1647 = load %union.rec*, %union.rec** %opred4309, align 8
  store %union.rec* %1647, %union.rec** %z, align 8
  br label %for.cond.4296

for.end.4310:                                     ; preds = %for.cond.4296
  %1648 = load %union.rec*, %union.rec** %target, align 8
  %1649 = load i32, i32* %dim, align 4
  %idxprom4311 = sext i32 %1649 to i64
  %1650 = load %union.rec*, %union.rec** %z, align 8
  %os14312 = bitcast %union.rec* %1650 to %struct.word_type*
  %ou34313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14312, i32 0, i32 3
  %os314314 = bitcast %union.THIRD_UNION* %ou34313 to %struct.anon.6*
  %oback4315 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314314, i32 0, i32 0
  %arrayidx4316 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4315, i32 0, i64 %idxprom4311
  %1651 = load i32, i32* %arrayidx4316, align 4
  %1652 = load i32, i32* %dim, align 4
  %idxprom4317 = sext i32 %1652 to i64
  %1653 = load %union.rec*, %union.rec** %z, align 8
  %os14318 = bitcast %union.rec* %1653 to %struct.word_type*
  %ou34319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14318, i32 0, i32 3
  %os314320 = bitcast %union.THIRD_UNION* %ou34319 to %struct.anon.6*
  %ofwd4321 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314320, i32 0, i32 1
  %arrayidx4322 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4321, i32 0, i64 %idxprom4317
  %1654 = load i32, i32* %arrayidx4322, align 4
  %1655 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %1648, i32 %1651, i32 %1654, i32 %1655)
  %1656 = load %union.rec*, %union.rec** %target, align 8
  %1657 = load i32, i32* %dim, align 4
  %sub4323 = sub nsw i32 1, %1657
  %idxprom4324 = sext i32 %sub4323 to i64
  %1658 = load %union.rec*, %union.rec** %z, align 8
  %os14325 = bitcast %union.rec* %1658 to %struct.word_type*
  %ou34326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14325, i32 0, i32 3
  %os314327 = bitcast %union.THIRD_UNION* %ou34326 to %struct.anon.6*
  %oback4328 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314327, i32 0, i32 0
  %arrayidx4329 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4328, i32 0, i64 %idxprom4324
  %1659 = load i32, i32* %arrayidx4329, align 4
  %1660 = load i32, i32* %dim, align 4
  %sub4330 = sub nsw i32 1, %1660
  %idxprom4331 = sext i32 %sub4330 to i64
  %1661 = load %union.rec*, %union.rec** %z, align 8
  %os14332 = bitcast %union.rec* %1661 to %struct.word_type*
  %ou34333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14332, i32 0, i32 3
  %os314334 = bitcast %union.THIRD_UNION* %ou34333 to %struct.anon.6*
  %ofwd4335 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314334, i32 0, i32 1
  %arrayidx4336 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4335, i32 0, i64 %idxprom4331
  %1662 = load i32, i32* %arrayidx4336, align 4
  %1663 = load i32, i32* %dim, align 4
  %sub4337 = sub nsw i32 1, %1663
  call void @AdjustSize(%union.rec* %1656, i32 %1659, i32 %1662, i32 %sub4337)
  br label %if.end.4338

if.end.4338:                                      ; preds = %for.end.4310, %if.then.4271
  br label %if.end.4339

if.end.4339:                                      ; preds = %if.end.4338, %if.then.4260
  br label %ACCEPT

sw.default.4340:                                  ; preds = %if.end.1828
  %1664 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1665 = load %union.rec*, %union.rec** %y, align 8
  %os14341 = bitcast %union.rec* %1665 to %struct.word_type*
  %ou14342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14341, i32 0, i32 1
  %os114343 = bitcast %union.FIRST_UNION* %ou14342 to %struct.anon*
  %otype4344 = getelementptr inbounds %struct.anon, %struct.anon* %os114343, i32 0, i32 0
  %1666 = load i8, i8* %otype4344, align 1
  %conv4345 = zext i8 %1666 to i32
  %call4346 = call i8* @Image(i32 %conv4345)
  %call4347 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct.FILE_POS* %1664, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* %call4346)
  br label %sw.epilog.4348

sw.epilog.4348:                                   ; preds = %sw.default.4340, %sw.bb.2689, %sw.bb.2674, %if.end.2673, %sw.epilog, %if.end.2178, %if.end.2009, %sw.bb
  br label %for.inc.4349

for.inc.4349:                                     ; preds = %sw.epilog.4348
  %1667 = load %union.rec*, %union.rec** %link, align 8
  %os14350 = bitcast %union.rec* %1667 to %struct.word_type*
  %olist4351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14350, i32 0, i32 0
  %arrayidx4352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4351, i32 0, i64 0
  %osucc4353 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4352, i32 0, i32 1
  %1668 = load %union.rec*, %union.rec** %osucc4353, align 8
  store %union.rec* %1668, %union.rec** %link, align 8
  br label %for.cond.1764

for.end.4354:                                     ; preds = %for.cond.1764
  %1669 = load %union.rec*, %union.rec** %tg_inners, align 8
  %cmp4355 = icmp ne %union.rec* %1669, null
  br i1 %cmp4355, label %if.then.4357, label %if.end.4359

if.then.4357:                                     ; preds = %for.end.4354
  %1670 = load %union.rec*, %union.rec** %tg_inners, align 8
  %call4358 = call i32 @DisposeObject(%union.rec* %1670)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %if.end.4359

if.end.4359:                                      ; preds = %if.then.4357, %for.end.4354
  %1671 = load %union.rec*, %union.rec** %target_galley, align 8
  %call4360 = call i32 @DisposeObject(%union.rec* %1671)
  call void @LeaveErrorBlock(i32 0)
  %1672 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os14361 = bitcast %union.rec* %1672 to %struct.word_type*
  %olist4362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14361, i32 0, i32 0
  %arrayidx4363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4362, i32 0, i64 0
  %osucc4364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4363, i32 0, i32 1
  %1673 = load %union.rec*, %union.rec** %osucc4364, align 8
  store %union.rec* %1673, %union.rec** %link, align 8
  br label %for.cond.4365

for.cond.4365:                                    ; preds = %for.inc.4528, %if.end.4359
  %1674 = load %union.rec*, %union.rec** %link, align 8
  %1675 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp4366 = icmp ne %union.rec* %1674, %1675
  br i1 %cmp4366, label %for.body.4368, label %for.end.4533

for.body.4368:                                    ; preds = %for.cond.4365
  %1676 = load %union.rec*, %union.rec** %link, align 8
  %os14369 = bitcast %union.rec* %1676 to %struct.word_type*
  %olist4370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14369, i32 0, i32 0
  %arrayidx4371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4370, i32 0, i64 1
  %opred4372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4371, i32 0, i32 0
  %1677 = load %union.rec*, %union.rec** %opred4372, align 8
  store %union.rec* %1677, %union.rec** %y, align 8
  br label %for.cond.4373

for.cond.4373:                                    ; preds = %for.inc.4382, %for.body.4368
  %1678 = load %union.rec*, %union.rec** %y, align 8
  %os14374 = bitcast %union.rec* %1678 to %struct.word_type*
  %ou14375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14374, i32 0, i32 1
  %os114376 = bitcast %union.FIRST_UNION* %ou14375 to %struct.anon*
  %otype4377 = getelementptr inbounds %struct.anon, %struct.anon* %os114376, i32 0, i32 0
  %1679 = load i8, i8* %otype4377, align 1
  %conv4378 = zext i8 %1679 to i32
  %cmp4379 = icmp eq i32 %conv4378, 0
  br i1 %cmp4379, label %for.body.4381, label %for.end.4387

for.body.4381:                                    ; preds = %for.cond.4373
  br label %for.inc.4382

for.inc.4382:                                     ; preds = %for.body.4381
  %1680 = load %union.rec*, %union.rec** %y, align 8
  %os14383 = bitcast %union.rec* %1680 to %struct.word_type*
  %olist4384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14383, i32 0, i32 0
  %arrayidx4385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4384, i32 0, i64 1
  %opred4386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4385, i32 0, i32 0
  %1681 = load %union.rec*, %union.rec** %opred4386, align 8
  store %union.rec* %1681, %union.rec** %y, align 8
  br label %for.cond.4373

for.end.4387:                                     ; preds = %for.cond.4373
  %1682 = load %union.rec*, %union.rec** %y, align 8
  %os14388 = bitcast %union.rec* %1682 to %struct.word_type*
  %ou14389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14388, i32 0, i32 1
  %os114390 = bitcast %union.FIRST_UNION* %ou14389 to %struct.anon*
  %otype4391 = getelementptr inbounds %struct.anon, %struct.anon* %os114390, i32 0, i32 0
  %1683 = load i8, i8* %otype4391, align 1
  %conv4392 = zext i8 %1683 to i32
  switch i32 %conv4392, label %sw.default.4526 [
    i32 1, label %sw.bb.4393
    i32 2, label %sw.bb.4393
    i32 6, label %sw.bb.4393
    i32 7, label %sw.bb.4393
    i32 5, label %sw.bb.4393
    i32 4, label %sw.bb.4393
  ]

sw.bb.4393:                                       ; preds = %for.end.4387, %for.end.4387, %for.end.4387, %for.end.4387, %for.end.4387, %for.end.4387
  %1684 = load %union.rec*, %union.rec** %link, align 8
  %os14394 = bitcast %union.rec* %1684 to %struct.word_type*
  %olist4395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14394, i32 0, i32 0
  %arrayidx4396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4395, i32 0, i64 0
  %opred4397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4396, i32 0, i32 0
  %1685 = load %union.rec*, %union.rec** %opred4397, align 8
  store %union.rec* %1685, %union.rec** %link, align 8
  %1686 = load %union.rec*, %union.rec** %link, align 8
  %os14398 = bitcast %union.rec* %1686 to %struct.word_type*
  %olist4399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14398, i32 0, i32 0
  %arrayidx4400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4399, i32 0, i64 0
  %osucc4401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4400, i32 0, i32 1
  %1687 = load %union.rec*, %union.rec** %osucc4401, align 8
  store %union.rec* %1687, %union.rec** @xx_link, align 8
  %1688 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1688, %union.rec** @zz_hold, align 8
  %1689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14402 = bitcast %union.rec* %1689 to %struct.word_type*
  %olist4403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14402, i32 0, i32 0
  %arrayidx4404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4403, i32 0, i64 1
  %osucc4405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4404, i32 0, i32 1
  %1690 = load %union.rec*, %union.rec** %osucc4405, align 8
  %1691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4406 = icmp eq %union.rec* %1690, %1691
  br i1 %cmp4406, label %cond.true.4408, label %cond.false.4409

cond.true.4408:                                   ; preds = %sw.bb.4393
  br label %cond.end.4438

cond.false.4409:                                  ; preds = %sw.bb.4393
  %1692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14410 = bitcast %union.rec* %1692 to %struct.word_type*
  %olist4411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14410, i32 0, i32 0
  %arrayidx4412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4411, i32 0, i64 1
  %osucc4413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4412, i32 0, i32 1
  %1693 = load %union.rec*, %union.rec** %osucc4413, align 8
  store %union.rec* %1693, %union.rec** @zz_res, align 8
  %1694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14414 = bitcast %union.rec* %1694 to %struct.word_type*
  %olist4415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14414, i32 0, i32 0
  %arrayidx4416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4415, i32 0, i64 1
  %opred4417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4416, i32 0, i32 0
  %1695 = load %union.rec*, %union.rec** %opred4417, align 8
  %1696 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14418 = bitcast %union.rec* %1696 to %struct.word_type*
  %olist4419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14418, i32 0, i32 0
  %arrayidx4420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4419, i32 0, i64 1
  %opred4421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4420, i32 0, i32 0
  store %union.rec* %1695, %union.rec** %opred4421, align 8
  %1697 = load %union.rec*, %union.rec** @zz_res, align 8
  %1698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14422 = bitcast %union.rec* %1698 to %struct.word_type*
  %olist4423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14422, i32 0, i32 0
  %arrayidx4424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4423, i32 0, i64 1
  %opred4425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4424, i32 0, i32 0
  %1699 = load %union.rec*, %union.rec** %opred4425, align 8
  %os14426 = bitcast %union.rec* %1699 to %struct.word_type*
  %olist4427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14426, i32 0, i32 0
  %arrayidx4428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4427, i32 0, i64 1
  %osucc4429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4428, i32 0, i32 1
  store %union.rec* %1697, %union.rec** %osucc4429, align 8
  %1700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14430 = bitcast %union.rec* %1701 to %struct.word_type*
  %olist4431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14430, i32 0, i32 0
  %arrayidx4432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4431, i32 0, i64 1
  %osucc4433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4432, i32 0, i32 1
  store %union.rec* %1700, %union.rec** %osucc4433, align 8
  %1702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14434 = bitcast %union.rec* %1702 to %struct.word_type*
  %olist4435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14434, i32 0, i32 0
  %arrayidx4436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4435, i32 0, i64 1
  %opred4437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4436, i32 0, i32 0
  store %union.rec* %1700, %union.rec** %opred4437, align 8
  %1703 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4438

cond.end.4438:                                    ; preds = %cond.false.4409, %cond.true.4408
  %cond4439 = phi %union.rec* [ null, %cond.true.4408 ], [ %1703, %cond.false.4409 ]
  store %union.rec* %cond4439, %union.rec** @xx_tmp, align 8
  %1704 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1704, %union.rec** @zz_hold, align 8
  %1705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14440 = bitcast %union.rec* %1705 to %struct.word_type*
  %olist4441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14440, i32 0, i32 0
  %arrayidx4442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4441, i32 0, i64 0
  %osucc4443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4442, i32 0, i32 1
  %1706 = load %union.rec*, %union.rec** %osucc4443, align 8
  %1707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4444 = icmp eq %union.rec* %1706, %1707
  br i1 %cmp4444, label %cond.true.4446, label %cond.false.4447

cond.true.4446:                                   ; preds = %cond.end.4438
  br label %cond.end.4476

cond.false.4447:                                  ; preds = %cond.end.4438
  %1708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14448 = bitcast %union.rec* %1708 to %struct.word_type*
  %olist4449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14448, i32 0, i32 0
  %arrayidx4450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4449, i32 0, i64 0
  %osucc4451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4450, i32 0, i32 1
  %1709 = load %union.rec*, %union.rec** %osucc4451, align 8
  store %union.rec* %1709, %union.rec** @zz_res, align 8
  %1710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14452 = bitcast %union.rec* %1710 to %struct.word_type*
  %olist4453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14452, i32 0, i32 0
  %arrayidx4454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4453, i32 0, i64 0
  %opred4455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4454, i32 0, i32 0
  %1711 = load %union.rec*, %union.rec** %opred4455, align 8
  %1712 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14456 = bitcast %union.rec* %1712 to %struct.word_type*
  %olist4457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14456, i32 0, i32 0
  %arrayidx4458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4457, i32 0, i64 0
  %opred4459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4458, i32 0, i32 0
  store %union.rec* %1711, %union.rec** %opred4459, align 8
  %1713 = load %union.rec*, %union.rec** @zz_res, align 8
  %1714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14460 = bitcast %union.rec* %1714 to %struct.word_type*
  %olist4461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14460, i32 0, i32 0
  %arrayidx4462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4461, i32 0, i64 0
  %opred4463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4462, i32 0, i32 0
  %1715 = load %union.rec*, %union.rec** %opred4463, align 8
  %os14464 = bitcast %union.rec* %1715 to %struct.word_type*
  %olist4465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14464, i32 0, i32 0
  %arrayidx4466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4465, i32 0, i64 0
  %osucc4467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4466, i32 0, i32 1
  store %union.rec* %1713, %union.rec** %osucc4467, align 8
  %1716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14468 = bitcast %union.rec* %1717 to %struct.word_type*
  %olist4469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14468, i32 0, i32 0
  %arrayidx4470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4469, i32 0, i64 0
  %osucc4471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4470, i32 0, i32 1
  store %union.rec* %1716, %union.rec** %osucc4471, align 8
  %1718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14472 = bitcast %union.rec* %1718 to %struct.word_type*
  %olist4473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14472, i32 0, i32 0
  %arrayidx4474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4473, i32 0, i64 0
  %opred4475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4474, i32 0, i32 0
  store %union.rec* %1716, %union.rec** %opred4475, align 8
  %1719 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4476

cond.end.4476:                                    ; preds = %cond.false.4447, %cond.true.4446
  %cond4477 = phi %union.rec* [ null, %cond.true.4446 ], [ %1719, %cond.false.4447 ]
  %1720 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1720, %union.rec** @zz_hold, align 8
  %1721 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1721, %union.rec** @zz_hold, align 8
  %1722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14478 = bitcast %union.rec* %1722 to %struct.word_type*
  %ou14479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14478, i32 0, i32 1
  %os114480 = bitcast %union.FIRST_UNION* %ou14479 to %struct.anon*
  %otype4481 = getelementptr inbounds %struct.anon, %struct.anon* %os114480, i32 0, i32 0
  %1723 = load i8, i8* %otype4481, align 1
  %conv4482 = zext i8 %1723 to i32
  %cmp4483 = icmp eq i32 %conv4482, 11
  br i1 %cmp4483, label %cond.true.4493, label %lor.lhs.false.4485

lor.lhs.false.4485:                               ; preds = %cond.end.4476
  %1724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14486 = bitcast %union.rec* %1724 to %struct.word_type*
  %ou14487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14486, i32 0, i32 1
  %os114488 = bitcast %union.FIRST_UNION* %ou14487 to %struct.anon*
  %otype4489 = getelementptr inbounds %struct.anon, %struct.anon* %os114488, i32 0, i32 0
  %1725 = load i8, i8* %otype4489, align 1
  %conv4490 = zext i8 %1725 to i32
  %cmp4491 = icmp eq i32 %conv4490, 12
  br i1 %cmp4491, label %cond.true.4493, label %cond.false.4499

cond.true.4493:                                   ; preds = %lor.lhs.false.4485, %cond.end.4476
  %1726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14494 = bitcast %union.rec* %1726 to %struct.word_type*
  %ou14495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14494, i32 0, i32 1
  %os114496 = bitcast %union.FIRST_UNION* %ou14495 to %struct.anon*
  %orec_size4497 = getelementptr inbounds %struct.anon, %struct.anon* %os114496, i32 0, i32 1
  %1727 = load i8, i8* %orec_size4497, align 1
  %conv4498 = zext i8 %1727 to i32
  br label %cond.end.4507

cond.false.4499:                                  ; preds = %lor.lhs.false.4485
  %1728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14500 = bitcast %union.rec* %1728 to %struct.word_type*
  %ou14501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14500, i32 0, i32 1
  %os114502 = bitcast %union.FIRST_UNION* %ou14501 to %struct.anon*
  %otype4503 = getelementptr inbounds %struct.anon, %struct.anon* %os114502, i32 0, i32 0
  %1729 = load i8, i8* %otype4503, align 1
  %idxprom4504 = zext i8 %1729 to i64
  %arrayidx4505 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4504
  %1730 = load i8, i8* %arrayidx4505, align 1
  %conv4506 = zext i8 %1730 to i32
  br label %cond.end.4507

cond.end.4507:                                    ; preds = %cond.false.4499, %cond.true.4493
  %cond4508 = phi i32 [ %conv4498, %cond.true.4493 ], [ %conv4506, %cond.false.4499 ]
  store i32 %cond4508, i32* @zz_size, align 4
  %1731 = load i32, i32* @zz_size, align 4
  %idxprom4509 = sext i32 %1731 to i64
  %arrayidx4510 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4509
  %1732 = load %union.rec*, %union.rec** %arrayidx4510, align 8
  %1733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14511 = bitcast %union.rec* %1733 to %struct.word_type*
  %olist4512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14511, i32 0, i32 0
  %arrayidx4513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4512, i32 0, i64 0
  %opred4514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4513, i32 0, i32 0
  store %union.rec* %1732, %union.rec** %opred4514, align 8
  %1734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1735 = load i32, i32* @zz_size, align 4
  %idxprom4515 = sext i32 %1735 to i64
  %arrayidx4516 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4515
  store %union.rec* %1734, %union.rec** %arrayidx4516, align 8
  %1736 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os14517 = bitcast %union.rec* %1736 to %struct.word_type*
  %olist4518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14517, i32 0, i32 0
  %arrayidx4519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4518, i32 0, i64 1
  %osucc4520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4519, i32 0, i32 1
  %1737 = load %union.rec*, %union.rec** %osucc4520, align 8
  %1738 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp4521 = icmp eq %union.rec* %1737, %1738
  br i1 %cmp4521, label %if.then.4523, label %if.end.4525

if.then.4523:                                     ; preds = %cond.end.4507
  %1739 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call4524 = call i32 @DisposeObject(%union.rec* %1739)
  br label %if.end.4525

if.end.4525:                                      ; preds = %if.then.4523, %cond.end.4507
  br label %sw.epilog.4527

sw.default.4526:                                  ; preds = %for.end.4387
  br label %sw.epilog.4527

sw.epilog.4527:                                   ; preds = %sw.default.4526, %if.end.4525
  br label %for.inc.4528

for.inc.4528:                                     ; preds = %sw.epilog.4527
  %1740 = load %union.rec*, %union.rec** %link, align 8
  %os14529 = bitcast %union.rec* %1740 to %struct.word_type*
  %olist4530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14529, i32 0, i32 0
  %arrayidx4531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4530, i32 0, i64 0
  %osucc4532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4531, i32 0, i32 1
  %1741 = load %union.rec*, %union.rec** %osucc4532, align 8
  store %union.rec* %1741, %union.rec** %link, align 8
  br label %for.cond.4365

for.end.4533:                                     ; preds = %for.cond.4365
  %1742 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os14535 = bitcast %union.rec* %1742 to %struct.word_type*
  %olist4536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14535, i32 0, i32 0
  %arrayidx4537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4536, i32 0, i64 0
  %osucc4538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4537, i32 0, i32 1
  %1743 = load %union.rec*, %union.rec** %osucc4538, align 8
  store %union.rec* %1743, %union.rec** %xxstart, align 8
  %1744 = load %union.rec*, %union.rec** %hd.addr, align 8
  store %union.rec* %1744, %union.rec** %xxstop, align 8
  %1745 = load %union.rec*, %union.rec** %target_index, align 8
  %os14541 = bitcast %union.rec* %1745 to %struct.word_type*
  %olist4542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14541, i32 0, i32 0
  %arrayidx4543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4542, i32 0, i64 1
  %osucc4544 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4543, i32 0, i32 1
  %1746 = load %union.rec*, %union.rec** %osucc4544, align 8
  store %union.rec* %1746, %union.rec** %xxdest, align 8
  %1747 = load %union.rec*, %union.rec** %xxstart, align 8
  %1748 = load %union.rec*, %union.rec** %xxstop, align 8
  %cmp4545 = icmp ne %union.rec* %1747, %1748
  br i1 %cmp4545, label %if.then.4547, label %if.end.4638

if.then.4547:                                     ; preds = %for.end.4533
  %1749 = load %union.rec*, %union.rec** %xxstart, align 8
  %os14548 = bitcast %union.rec* %1749 to %struct.word_type*
  %ou14549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14548, i32 0, i32 1
  %os114550 = bitcast %union.FIRST_UNION* %ou14549 to %struct.anon*
  %otype4551 = getelementptr inbounds %struct.anon, %struct.anon* %os114550, i32 0, i32 0
  %1750 = load i8, i8* %otype4551, align 1
  %conv4552 = zext i8 %1750 to i32
  %cmp4553 = icmp eq i32 %conv4552, 0
  br i1 %cmp4553, label %if.end.4557, label %if.then.4555

if.then.4555:                                     ; preds = %if.then.4547
  %1751 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4556 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1751, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.4557

if.end.4557:                                      ; preds = %if.then.4555, %if.then.4547
  %1752 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %1752, %union.rec** @zz_res, align 8
  %1753 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %1753, %union.rec** @zz_hold, align 8
  %1754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4558 = icmp eq %union.rec* %1754, null
  br i1 %cmp4558, label %cond.true.4560, label %cond.false.4561

cond.true.4560:                                   ; preds = %if.end.4557
  %1755 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4596

cond.false.4561:                                  ; preds = %if.end.4557
  %1756 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4562 = icmp eq %union.rec* %1756, null
  br i1 %cmp4562, label %cond.true.4564, label %cond.false.4565

cond.true.4564:                                   ; preds = %cond.false.4561
  %1757 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4594

cond.false.4565:                                  ; preds = %cond.false.4561
  %1758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14566 = bitcast %union.rec* %1758 to %struct.word_type*
  %olist4567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14566, i32 0, i32 0
  %arrayidx4568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4567, i32 0, i64 0
  %opred4569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4568, i32 0, i32 0
  %1759 = load %union.rec*, %union.rec** %opred4569, align 8
  store %union.rec* %1759, %union.rec** @zz_tmp, align 8
  %1760 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14570 = bitcast %union.rec* %1760 to %struct.word_type*
  %olist4571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14570, i32 0, i32 0
  %arrayidx4572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4571, i32 0, i64 0
  %opred4573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4572, i32 0, i32 0
  %1761 = load %union.rec*, %union.rec** %opred4573, align 8
  %1762 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14574 = bitcast %union.rec* %1762 to %struct.word_type*
  %olist4575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14574, i32 0, i32 0
  %arrayidx4576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4575, i32 0, i64 0
  %opred4577 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4576, i32 0, i32 0
  store %union.rec* %1761, %union.rec** %opred4577, align 8
  %1763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1764 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14578 = bitcast %union.rec* %1764 to %struct.word_type*
  %olist4579 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14578, i32 0, i32 0
  %arrayidx4580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4579, i32 0, i64 0
  %opred4581 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4580, i32 0, i32 0
  %1765 = load %union.rec*, %union.rec** %opred4581, align 8
  %os14582 = bitcast %union.rec* %1765 to %struct.word_type*
  %olist4583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14582, i32 0, i32 0
  %arrayidx4584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4583, i32 0, i64 0
  %osucc4585 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4584, i32 0, i32 1
  store %union.rec* %1763, %union.rec** %osucc4585, align 8
  %1766 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1767 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14586 = bitcast %union.rec* %1767 to %struct.word_type*
  %olist4587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14586, i32 0, i32 0
  %arrayidx4588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4587, i32 0, i64 0
  %opred4589 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4588, i32 0, i32 0
  store %union.rec* %1766, %union.rec** %opred4589, align 8
  %1768 = load %union.rec*, %union.rec** @zz_res, align 8
  %1769 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14590 = bitcast %union.rec* %1769 to %struct.word_type*
  %olist4591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14590, i32 0, i32 0
  %arrayidx4592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4591, i32 0, i64 0
  %osucc4593 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4592, i32 0, i32 1
  store %union.rec* %1768, %union.rec** %osucc4593, align 8
  br label %cond.end.4594

cond.end.4594:                                    ; preds = %cond.false.4565, %cond.true.4564
  %cond4595 = phi %union.rec* [ %1757, %cond.true.4564 ], [ %1768, %cond.false.4565 ]
  br label %cond.end.4596

cond.end.4596:                                    ; preds = %cond.end.4594, %cond.true.4560
  %cond4597 = phi %union.rec* [ %1755, %cond.true.4560 ], [ %cond4595, %cond.end.4594 ]
  %1770 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %1770, %union.rec** @zz_res, align 8
  %1771 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %1771, %union.rec** @zz_hold, align 8
  %1772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4598 = icmp eq %union.rec* %1772, null
  br i1 %cmp4598, label %cond.true.4600, label %cond.false.4601

cond.true.4600:                                   ; preds = %cond.end.4596
  %1773 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4636

cond.false.4601:                                  ; preds = %cond.end.4596
  %1774 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4602 = icmp eq %union.rec* %1774, null
  br i1 %cmp4602, label %cond.true.4604, label %cond.false.4605

cond.true.4604:                                   ; preds = %cond.false.4601
  %1775 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4634

cond.false.4605:                                  ; preds = %cond.false.4601
  %1776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14606 = bitcast %union.rec* %1776 to %struct.word_type*
  %olist4607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14606, i32 0, i32 0
  %arrayidx4608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4607, i32 0, i64 0
  %opred4609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4608, i32 0, i32 0
  %1777 = load %union.rec*, %union.rec** %opred4609, align 8
  store %union.rec* %1777, %union.rec** @zz_tmp, align 8
  %1778 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14610 = bitcast %union.rec* %1778 to %struct.word_type*
  %olist4611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14610, i32 0, i32 0
  %arrayidx4612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4611, i32 0, i64 0
  %opred4613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4612, i32 0, i32 0
  %1779 = load %union.rec*, %union.rec** %opred4613, align 8
  %1780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14614 = bitcast %union.rec* %1780 to %struct.word_type*
  %olist4615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14614, i32 0, i32 0
  %arrayidx4616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4615, i32 0, i64 0
  %opred4617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4616, i32 0, i32 0
  store %union.rec* %1779, %union.rec** %opred4617, align 8
  %1781 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1782 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14618 = bitcast %union.rec* %1782 to %struct.word_type*
  %olist4619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14618, i32 0, i32 0
  %arrayidx4620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4619, i32 0, i64 0
  %opred4621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4620, i32 0, i32 0
  %1783 = load %union.rec*, %union.rec** %opred4621, align 8
  %os14622 = bitcast %union.rec* %1783 to %struct.word_type*
  %olist4623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14622, i32 0, i32 0
  %arrayidx4624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4623, i32 0, i64 0
  %osucc4625 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4624, i32 0, i32 1
  store %union.rec* %1781, %union.rec** %osucc4625, align 8
  %1784 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1785 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14626 = bitcast %union.rec* %1785 to %struct.word_type*
  %olist4627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14626, i32 0, i32 0
  %arrayidx4628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4627, i32 0, i64 0
  %opred4629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4628, i32 0, i32 0
  store %union.rec* %1784, %union.rec** %opred4629, align 8
  %1786 = load %union.rec*, %union.rec** @zz_res, align 8
  %1787 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14630 = bitcast %union.rec* %1787 to %struct.word_type*
  %olist4631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14630, i32 0, i32 0
  %arrayidx4632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4631, i32 0, i64 0
  %osucc4633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4632, i32 0, i32 1
  store %union.rec* %1786, %union.rec** %osucc4633, align 8
  br label %cond.end.4634

cond.end.4634:                                    ; preds = %cond.false.4605, %cond.true.4604
  %cond4635 = phi %union.rec* [ %1775, %cond.true.4604 ], [ %1786, %cond.false.4605 ]
  br label %cond.end.4636

cond.end.4636:                                    ; preds = %cond.end.4634, %cond.true.4600
  %cond4637 = phi %union.rec* [ %1773, %cond.true.4600 ], [ %cond4635, %cond.end.4634 ]
  br label %if.end.4638

if.end.4638:                                      ; preds = %cond.end.4636, %for.end.4533
  %1788 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os14639 = bitcast %union.rec* %1788 to %struct.word_type*
  %olist4640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14639, i32 0, i32 0
  %arrayidx4641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4640, i32 0, i64 1
  %osucc4642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4641, i32 0, i32 1
  %1789 = load %union.rec*, %union.rec** %osucc4642, align 8
  store %union.rec* %1789, %union.rec** @xx_link, align 8
  %1790 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1790, %union.rec** @zz_hold, align 8
  %1791 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14643 = bitcast %union.rec* %1791 to %struct.word_type*
  %olist4644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14643, i32 0, i32 0
  %arrayidx4645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4644, i32 0, i64 0
  %osucc4646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4645, i32 0, i32 1
  %1792 = load %union.rec*, %union.rec** %osucc4646, align 8
  %1793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4647 = icmp eq %union.rec* %1792, %1793
  br i1 %cmp4647, label %cond.true.4649, label %cond.false.4650

cond.true.4649:                                   ; preds = %if.end.4638
  br label %cond.end.4679

cond.false.4650:                                  ; preds = %if.end.4638
  %1794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14651 = bitcast %union.rec* %1794 to %struct.word_type*
  %olist4652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14651, i32 0, i32 0
  %arrayidx4653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4652, i32 0, i64 0
  %osucc4654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4653, i32 0, i32 1
  %1795 = load %union.rec*, %union.rec** %osucc4654, align 8
  store %union.rec* %1795, %union.rec** @zz_res, align 8
  %1796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14655 = bitcast %union.rec* %1796 to %struct.word_type*
  %olist4656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14655, i32 0, i32 0
  %arrayidx4657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4656, i32 0, i64 0
  %opred4658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4657, i32 0, i32 0
  %1797 = load %union.rec*, %union.rec** %opred4658, align 8
  %1798 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14659 = bitcast %union.rec* %1798 to %struct.word_type*
  %olist4660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14659, i32 0, i32 0
  %arrayidx4661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4660, i32 0, i64 0
  %opred4662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4661, i32 0, i32 0
  store %union.rec* %1797, %union.rec** %opred4662, align 8
  %1799 = load %union.rec*, %union.rec** @zz_res, align 8
  %1800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14663 = bitcast %union.rec* %1800 to %struct.word_type*
  %olist4664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14663, i32 0, i32 0
  %arrayidx4665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4664, i32 0, i64 0
  %opred4666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4665, i32 0, i32 0
  %1801 = load %union.rec*, %union.rec** %opred4666, align 8
  %os14667 = bitcast %union.rec* %1801 to %struct.word_type*
  %olist4668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14667, i32 0, i32 0
  %arrayidx4669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4668, i32 0, i64 0
  %osucc4670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4669, i32 0, i32 1
  store %union.rec* %1799, %union.rec** %osucc4670, align 8
  %1802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14671 = bitcast %union.rec* %1803 to %struct.word_type*
  %olist4672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14671, i32 0, i32 0
  %arrayidx4673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4672, i32 0, i64 0
  %osucc4674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4673, i32 0, i32 1
  store %union.rec* %1802, %union.rec** %osucc4674, align 8
  %1804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14675 = bitcast %union.rec* %1804 to %struct.word_type*
  %olist4676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14675, i32 0, i32 0
  %arrayidx4677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4676, i32 0, i64 0
  %opred4678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4677, i32 0, i32 0
  store %union.rec* %1802, %union.rec** %opred4678, align 8
  %1805 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4679

cond.end.4679:                                    ; preds = %cond.false.4650, %cond.true.4649
  %cond4680 = phi %union.rec* [ null, %cond.true.4649 ], [ %1805, %cond.false.4650 ]
  %1806 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1806, %union.rec** @zz_res, align 8
  %1807 = load %union.rec*, %union.rec** %target_index, align 8
  store %union.rec* %1807, %union.rec** @zz_hold, align 8
  %1808 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4681 = icmp eq %union.rec* %1808, null
  br i1 %cmp4681, label %cond.true.4683, label %cond.false.4684

cond.true.4683:                                   ; preds = %cond.end.4679
  %1809 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4719

cond.false.4684:                                  ; preds = %cond.end.4679
  %1810 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4685 = icmp eq %union.rec* %1810, null
  br i1 %cmp4685, label %cond.true.4687, label %cond.false.4688

cond.true.4687:                                   ; preds = %cond.false.4684
  %1811 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4717

cond.false.4688:                                  ; preds = %cond.false.4684
  %1812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14689 = bitcast %union.rec* %1812 to %struct.word_type*
  %olist4690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14689, i32 0, i32 0
  %arrayidx4691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4690, i32 0, i64 0
  %opred4692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4691, i32 0, i32 0
  %1813 = load %union.rec*, %union.rec** %opred4692, align 8
  store %union.rec* %1813, %union.rec** @zz_tmp, align 8
  %1814 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14693 = bitcast %union.rec* %1814 to %struct.word_type*
  %olist4694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14693, i32 0, i32 0
  %arrayidx4695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4694, i32 0, i64 0
  %opred4696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4695, i32 0, i32 0
  %1815 = load %union.rec*, %union.rec** %opred4696, align 8
  %1816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14697 = bitcast %union.rec* %1816 to %struct.word_type*
  %olist4698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14697, i32 0, i32 0
  %arrayidx4699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4698, i32 0, i64 0
  %opred4700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4699, i32 0, i32 0
  store %union.rec* %1815, %union.rec** %opred4700, align 8
  %1817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1818 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14701 = bitcast %union.rec* %1818 to %struct.word_type*
  %olist4702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14701, i32 0, i32 0
  %arrayidx4703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4702, i32 0, i64 0
  %opred4704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4703, i32 0, i32 0
  %1819 = load %union.rec*, %union.rec** %opred4704, align 8
  %os14705 = bitcast %union.rec* %1819 to %struct.word_type*
  %olist4706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14705, i32 0, i32 0
  %arrayidx4707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4706, i32 0, i64 0
  %osucc4708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4707, i32 0, i32 1
  store %union.rec* %1817, %union.rec** %osucc4708, align 8
  %1820 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1821 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14709 = bitcast %union.rec* %1821 to %struct.word_type*
  %olist4710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14709, i32 0, i32 0
  %arrayidx4711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4710, i32 0, i64 0
  %opred4712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4711, i32 0, i32 0
  store %union.rec* %1820, %union.rec** %opred4712, align 8
  %1822 = load %union.rec*, %union.rec** @zz_res, align 8
  %1823 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14713 = bitcast %union.rec* %1823 to %struct.word_type*
  %olist4714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14713, i32 0, i32 0
  %arrayidx4715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4714, i32 0, i64 0
  %osucc4716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4715, i32 0, i32 1
  store %union.rec* %1822, %union.rec** %osucc4716, align 8
  br label %cond.end.4717

cond.end.4717:                                    ; preds = %cond.false.4688, %cond.true.4687
  %cond4718 = phi %union.rec* [ %1811, %cond.true.4687 ], [ %1822, %cond.false.4688 ]
  br label %cond.end.4719

cond.end.4719:                                    ; preds = %cond.end.4717, %cond.true.4683
  %cond4720 = phi %union.rec* [ %1809, %cond.true.4683 ], [ %cond4718, %cond.end.4717 ]
  %1824 = load %union.rec*, %union.rec** %hd_index, align 8
  %os14721 = bitcast %union.rec* %1824 to %struct.word_type*
  %ou14722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14721, i32 0, i32 1
  %os114723 = bitcast %union.FIRST_UNION* %ou14722 to %struct.anon*
  %otype4724 = getelementptr inbounds %struct.anon, %struct.anon* %os114723, i32 0, i32 0
  %1825 = load i8, i8* %otype4724, align 1
  %conv4725 = zext i8 %1825 to i32
  %cmp4726 = icmp eq i32 %conv4725, 120
  br i1 %cmp4726, label %if.end.4730, label %if.then.4728

if.then.4728:                                     ; preds = %cond.end.4719
  %1826 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4729 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1826, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.4730

if.end.4730:                                      ; preds = %if.then.4728, %cond.end.4719
  %1827 = load %union.rec*, %union.rec** %hd_index, align 8
  store %union.rec* %1827, %union.rec** @xx_hold, align 8
  br label %while.cond.4731

while.cond.4731:                                  ; preds = %cond.end.4848, %if.end.4730
  %1828 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os14732 = bitcast %union.rec* %1828 to %struct.word_type*
  %olist4733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14732, i32 0, i32 0
  %arrayidx4734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4733, i32 0, i64 1
  %osucc4735 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4734, i32 0, i32 1
  %1829 = load %union.rec*, %union.rec** %osucc4735, align 8
  %1830 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp4736 = icmp ne %union.rec* %1829, %1830
  br i1 %cmp4736, label %while.body.4738, label %while.end.4858

while.body.4738:                                  ; preds = %while.cond.4731
  %1831 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os14739 = bitcast %union.rec* %1831 to %struct.word_type*
  %olist4740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14739, i32 0, i32 0
  %arrayidx4741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4740, i32 0, i64 1
  %osucc4742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4741, i32 0, i32 1
  %1832 = load %union.rec*, %union.rec** %osucc4742, align 8
  store %union.rec* %1832, %union.rec** @xx_link, align 8
  %1833 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1833, %union.rec** @zz_hold, align 8
  %1834 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14743 = bitcast %union.rec* %1834 to %struct.word_type*
  %olist4744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14743, i32 0, i32 0
  %arrayidx4745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4744, i32 0, i64 1
  %osucc4746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4745, i32 0, i32 1
  %1835 = load %union.rec*, %union.rec** %osucc4746, align 8
  %1836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4747 = icmp eq %union.rec* %1835, %1836
  br i1 %cmp4747, label %cond.true.4749, label %cond.false.4750

cond.true.4749:                                   ; preds = %while.body.4738
  br label %cond.end.4779

cond.false.4750:                                  ; preds = %while.body.4738
  %1837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14751 = bitcast %union.rec* %1837 to %struct.word_type*
  %olist4752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14751, i32 0, i32 0
  %arrayidx4753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4752, i32 0, i64 1
  %osucc4754 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4753, i32 0, i32 1
  %1838 = load %union.rec*, %union.rec** %osucc4754, align 8
  store %union.rec* %1838, %union.rec** @zz_res, align 8
  %1839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14755 = bitcast %union.rec* %1839 to %struct.word_type*
  %olist4756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14755, i32 0, i32 0
  %arrayidx4757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4756, i32 0, i64 1
  %opred4758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4757, i32 0, i32 0
  %1840 = load %union.rec*, %union.rec** %opred4758, align 8
  %1841 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14759 = bitcast %union.rec* %1841 to %struct.word_type*
  %olist4760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14759, i32 0, i32 0
  %arrayidx4761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4760, i32 0, i64 1
  %opred4762 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4761, i32 0, i32 0
  store %union.rec* %1840, %union.rec** %opred4762, align 8
  %1842 = load %union.rec*, %union.rec** @zz_res, align 8
  %1843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14763 = bitcast %union.rec* %1843 to %struct.word_type*
  %olist4764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14763, i32 0, i32 0
  %arrayidx4765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4764, i32 0, i64 1
  %opred4766 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4765, i32 0, i32 0
  %1844 = load %union.rec*, %union.rec** %opred4766, align 8
  %os14767 = bitcast %union.rec* %1844 to %struct.word_type*
  %olist4768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14767, i32 0, i32 0
  %arrayidx4769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4768, i32 0, i64 1
  %osucc4770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4769, i32 0, i32 1
  store %union.rec* %1842, %union.rec** %osucc4770, align 8
  %1845 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14771 = bitcast %union.rec* %1846 to %struct.word_type*
  %olist4772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14771, i32 0, i32 0
  %arrayidx4773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4772, i32 0, i64 1
  %osucc4774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4773, i32 0, i32 1
  store %union.rec* %1845, %union.rec** %osucc4774, align 8
  %1847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14775 = bitcast %union.rec* %1847 to %struct.word_type*
  %olist4776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14775, i32 0, i32 0
  %arrayidx4777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4776, i32 0, i64 1
  %opred4778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4777, i32 0, i32 0
  store %union.rec* %1845, %union.rec** %opred4778, align 8
  %1848 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4779

cond.end.4779:                                    ; preds = %cond.false.4750, %cond.true.4749
  %cond4780 = phi %union.rec* [ null, %cond.true.4749 ], [ %1848, %cond.false.4750 ]
  %1849 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1849, %union.rec** @zz_hold, align 8
  %1850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14781 = bitcast %union.rec* %1850 to %struct.word_type*
  %olist4782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14781, i32 0, i32 0
  %arrayidx4783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4782, i32 0, i64 0
  %osucc4784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4783, i32 0, i32 1
  %1851 = load %union.rec*, %union.rec** %osucc4784, align 8
  %1852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4785 = icmp eq %union.rec* %1851, %1852
  br i1 %cmp4785, label %cond.true.4787, label %cond.false.4788

cond.true.4787:                                   ; preds = %cond.end.4779
  br label %cond.end.4817

cond.false.4788:                                  ; preds = %cond.end.4779
  %1853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14789 = bitcast %union.rec* %1853 to %struct.word_type*
  %olist4790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14789, i32 0, i32 0
  %arrayidx4791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4790, i32 0, i64 0
  %osucc4792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4791, i32 0, i32 1
  %1854 = load %union.rec*, %union.rec** %osucc4792, align 8
  store %union.rec* %1854, %union.rec** @zz_res, align 8
  %1855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14793 = bitcast %union.rec* %1855 to %struct.word_type*
  %olist4794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14793, i32 0, i32 0
  %arrayidx4795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4794, i32 0, i64 0
  %opred4796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4795, i32 0, i32 0
  %1856 = load %union.rec*, %union.rec** %opred4796, align 8
  %1857 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14797 = bitcast %union.rec* %1857 to %struct.word_type*
  %olist4798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14797, i32 0, i32 0
  %arrayidx4799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4798, i32 0, i64 0
  %opred4800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4799, i32 0, i32 0
  store %union.rec* %1856, %union.rec** %opred4800, align 8
  %1858 = load %union.rec*, %union.rec** @zz_res, align 8
  %1859 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14801 = bitcast %union.rec* %1859 to %struct.word_type*
  %olist4802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14801, i32 0, i32 0
  %arrayidx4803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4802, i32 0, i64 0
  %opred4804 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4803, i32 0, i32 0
  %1860 = load %union.rec*, %union.rec** %opred4804, align 8
  %os14805 = bitcast %union.rec* %1860 to %struct.word_type*
  %olist4806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14805, i32 0, i32 0
  %arrayidx4807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4806, i32 0, i64 0
  %osucc4808 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4807, i32 0, i32 1
  store %union.rec* %1858, %union.rec** %osucc4808, align 8
  %1861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14809 = bitcast %union.rec* %1862 to %struct.word_type*
  %olist4810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14809, i32 0, i32 0
  %arrayidx4811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4810, i32 0, i64 0
  %osucc4812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4811, i32 0, i32 1
  store %union.rec* %1861, %union.rec** %osucc4812, align 8
  %1863 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14813 = bitcast %union.rec* %1863 to %struct.word_type*
  %olist4814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14813, i32 0, i32 0
  %arrayidx4815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4814, i32 0, i64 0
  %opred4816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4815, i32 0, i32 0
  store %union.rec* %1861, %union.rec** %opred4816, align 8
  %1864 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4817

cond.end.4817:                                    ; preds = %cond.false.4788, %cond.true.4787
  %cond4818 = phi %union.rec* [ null, %cond.true.4787 ], [ %1864, %cond.false.4788 ]
  %1865 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1865, %union.rec** @zz_hold, align 8
  %1866 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1866, %union.rec** @zz_hold, align 8
  %1867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14819 = bitcast %union.rec* %1867 to %struct.word_type*
  %ou14820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14819, i32 0, i32 1
  %os114821 = bitcast %union.FIRST_UNION* %ou14820 to %struct.anon*
  %otype4822 = getelementptr inbounds %struct.anon, %struct.anon* %os114821, i32 0, i32 0
  %1868 = load i8, i8* %otype4822, align 1
  %conv4823 = zext i8 %1868 to i32
  %cmp4824 = icmp eq i32 %conv4823, 11
  br i1 %cmp4824, label %cond.true.4834, label %lor.lhs.false.4826

lor.lhs.false.4826:                               ; preds = %cond.end.4817
  %1869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14827 = bitcast %union.rec* %1869 to %struct.word_type*
  %ou14828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14827, i32 0, i32 1
  %os114829 = bitcast %union.FIRST_UNION* %ou14828 to %struct.anon*
  %otype4830 = getelementptr inbounds %struct.anon, %struct.anon* %os114829, i32 0, i32 0
  %1870 = load i8, i8* %otype4830, align 1
  %conv4831 = zext i8 %1870 to i32
  %cmp4832 = icmp eq i32 %conv4831, 12
  br i1 %cmp4832, label %cond.true.4834, label %cond.false.4840

cond.true.4834:                                   ; preds = %lor.lhs.false.4826, %cond.end.4817
  %1871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14835 = bitcast %union.rec* %1871 to %struct.word_type*
  %ou14836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14835, i32 0, i32 1
  %os114837 = bitcast %union.FIRST_UNION* %ou14836 to %struct.anon*
  %orec_size4838 = getelementptr inbounds %struct.anon, %struct.anon* %os114837, i32 0, i32 1
  %1872 = load i8, i8* %orec_size4838, align 1
  %conv4839 = zext i8 %1872 to i32
  br label %cond.end.4848

cond.false.4840:                                  ; preds = %lor.lhs.false.4826
  %1873 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14841 = bitcast %union.rec* %1873 to %struct.word_type*
  %ou14842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14841, i32 0, i32 1
  %os114843 = bitcast %union.FIRST_UNION* %ou14842 to %struct.anon*
  %otype4844 = getelementptr inbounds %struct.anon, %struct.anon* %os114843, i32 0, i32 0
  %1874 = load i8, i8* %otype4844, align 1
  %idxprom4845 = zext i8 %1874 to i64
  %arrayidx4846 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4845
  %1875 = load i8, i8* %arrayidx4846, align 1
  %conv4847 = zext i8 %1875 to i32
  br label %cond.end.4848

cond.end.4848:                                    ; preds = %cond.false.4840, %cond.true.4834
  %cond4849 = phi i32 [ %conv4839, %cond.true.4834 ], [ %conv4847, %cond.false.4840 ]
  store i32 %cond4849, i32* @zz_size, align 4
  %1876 = load i32, i32* @zz_size, align 4
  %idxprom4850 = sext i32 %1876 to i64
  %arrayidx4851 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4850
  %1877 = load %union.rec*, %union.rec** %arrayidx4851, align 8
  %1878 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14852 = bitcast %union.rec* %1878 to %struct.word_type*
  %olist4853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14852, i32 0, i32 0
  %arrayidx4854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4853, i32 0, i64 0
  %opred4855 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4854, i32 0, i32 0
  store %union.rec* %1877, %union.rec** %opred4855, align 8
  %1879 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1880 = load i32, i32* @zz_size, align 4
  %idxprom4856 = sext i32 %1880 to i64
  %arrayidx4857 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4856
  store %union.rec* %1879, %union.rec** %arrayidx4857, align 8
  br label %while.cond.4731

while.end.4858:                                   ; preds = %while.cond.4731
  br label %while.cond.4859

while.cond.4859:                                  ; preds = %cond.end.4976, %while.end.4858
  %1881 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os14860 = bitcast %union.rec* %1881 to %struct.word_type*
  %olist4861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14860, i32 0, i32 0
  %arrayidx4862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4861, i32 0, i64 0
  %osucc4863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4862, i32 0, i32 1
  %1882 = load %union.rec*, %union.rec** %osucc4863, align 8
  %1883 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp4864 = icmp ne %union.rec* %1882, %1883
  br i1 %cmp4864, label %while.body.4866, label %while.end.4986

while.body.4866:                                  ; preds = %while.cond.4859
  %1884 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os14867 = bitcast %union.rec* %1884 to %struct.word_type*
  %olist4868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14867, i32 0, i32 0
  %arrayidx4869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4868, i32 0, i64 0
  %osucc4870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4869, i32 0, i32 1
  %1885 = load %union.rec*, %union.rec** %osucc4870, align 8
  store %union.rec* %1885, %union.rec** @xx_link, align 8
  %1886 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1886, %union.rec** @zz_hold, align 8
  %1887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14871 = bitcast %union.rec* %1887 to %struct.word_type*
  %olist4872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14871, i32 0, i32 0
  %arrayidx4873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4872, i32 0, i64 1
  %osucc4874 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4873, i32 0, i32 1
  %1888 = load %union.rec*, %union.rec** %osucc4874, align 8
  %1889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4875 = icmp eq %union.rec* %1888, %1889
  br i1 %cmp4875, label %cond.true.4877, label %cond.false.4878

cond.true.4877:                                   ; preds = %while.body.4866
  br label %cond.end.4907

cond.false.4878:                                  ; preds = %while.body.4866
  %1890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14879 = bitcast %union.rec* %1890 to %struct.word_type*
  %olist4880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14879, i32 0, i32 0
  %arrayidx4881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4880, i32 0, i64 1
  %osucc4882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4881, i32 0, i32 1
  %1891 = load %union.rec*, %union.rec** %osucc4882, align 8
  store %union.rec* %1891, %union.rec** @zz_res, align 8
  %1892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14883 = bitcast %union.rec* %1892 to %struct.word_type*
  %olist4884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14883, i32 0, i32 0
  %arrayidx4885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4884, i32 0, i64 1
  %opred4886 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4885, i32 0, i32 0
  %1893 = load %union.rec*, %union.rec** %opred4886, align 8
  %1894 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14887 = bitcast %union.rec* %1894 to %struct.word_type*
  %olist4888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14887, i32 0, i32 0
  %arrayidx4889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4888, i32 0, i64 1
  %opred4890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4889, i32 0, i32 0
  store %union.rec* %1893, %union.rec** %opred4890, align 8
  %1895 = load %union.rec*, %union.rec** @zz_res, align 8
  %1896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14891 = bitcast %union.rec* %1896 to %struct.word_type*
  %olist4892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14891, i32 0, i32 0
  %arrayidx4893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4892, i32 0, i64 1
  %opred4894 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4893, i32 0, i32 0
  %1897 = load %union.rec*, %union.rec** %opred4894, align 8
  %os14895 = bitcast %union.rec* %1897 to %struct.word_type*
  %olist4896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14895, i32 0, i32 0
  %arrayidx4897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4896, i32 0, i64 1
  %osucc4898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4897, i32 0, i32 1
  store %union.rec* %1895, %union.rec** %osucc4898, align 8
  %1898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14899 = bitcast %union.rec* %1899 to %struct.word_type*
  %olist4900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14899, i32 0, i32 0
  %arrayidx4901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4900, i32 0, i64 1
  %osucc4902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4901, i32 0, i32 1
  store %union.rec* %1898, %union.rec** %osucc4902, align 8
  %1900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14903 = bitcast %union.rec* %1900 to %struct.word_type*
  %olist4904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14903, i32 0, i32 0
  %arrayidx4905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4904, i32 0, i64 1
  %opred4906 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4905, i32 0, i32 0
  store %union.rec* %1898, %union.rec** %opred4906, align 8
  %1901 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4907

cond.end.4907:                                    ; preds = %cond.false.4878, %cond.true.4877
  %cond4908 = phi %union.rec* [ null, %cond.true.4877 ], [ %1901, %cond.false.4878 ]
  %1902 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1902, %union.rec** @zz_hold, align 8
  %1903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14909 = bitcast %union.rec* %1903 to %struct.word_type*
  %olist4910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14909, i32 0, i32 0
  %arrayidx4911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4910, i32 0, i64 0
  %osucc4912 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4911, i32 0, i32 1
  %1904 = load %union.rec*, %union.rec** %osucc4912, align 8
  %1905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4913 = icmp eq %union.rec* %1904, %1905
  br i1 %cmp4913, label %cond.true.4915, label %cond.false.4916

cond.true.4915:                                   ; preds = %cond.end.4907
  br label %cond.end.4945

cond.false.4916:                                  ; preds = %cond.end.4907
  %1906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14917 = bitcast %union.rec* %1906 to %struct.word_type*
  %olist4918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14917, i32 0, i32 0
  %arrayidx4919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4918, i32 0, i64 0
  %osucc4920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4919, i32 0, i32 1
  %1907 = load %union.rec*, %union.rec** %osucc4920, align 8
  store %union.rec* %1907, %union.rec** @zz_res, align 8
  %1908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14921 = bitcast %union.rec* %1908 to %struct.word_type*
  %olist4922 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14921, i32 0, i32 0
  %arrayidx4923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4922, i32 0, i64 0
  %opred4924 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4923, i32 0, i32 0
  %1909 = load %union.rec*, %union.rec** %opred4924, align 8
  %1910 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14925 = bitcast %union.rec* %1910 to %struct.word_type*
  %olist4926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14925, i32 0, i32 0
  %arrayidx4927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4926, i32 0, i64 0
  %opred4928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4927, i32 0, i32 0
  store %union.rec* %1909, %union.rec** %opred4928, align 8
  %1911 = load %union.rec*, %union.rec** @zz_res, align 8
  %1912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14929 = bitcast %union.rec* %1912 to %struct.word_type*
  %olist4930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14929, i32 0, i32 0
  %arrayidx4931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4930, i32 0, i64 0
  %opred4932 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4931, i32 0, i32 0
  %1913 = load %union.rec*, %union.rec** %opred4932, align 8
  %os14933 = bitcast %union.rec* %1913 to %struct.word_type*
  %olist4934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14933, i32 0, i32 0
  %arrayidx4935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4934, i32 0, i64 0
  %osucc4936 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4935, i32 0, i32 1
  store %union.rec* %1911, %union.rec** %osucc4936, align 8
  %1914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14937 = bitcast %union.rec* %1915 to %struct.word_type*
  %olist4938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14937, i32 0, i32 0
  %arrayidx4939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4938, i32 0, i64 0
  %osucc4940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4939, i32 0, i32 1
  store %union.rec* %1914, %union.rec** %osucc4940, align 8
  %1916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14941 = bitcast %union.rec* %1916 to %struct.word_type*
  %olist4942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14941, i32 0, i32 0
  %arrayidx4943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4942, i32 0, i64 0
  %opred4944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4943, i32 0, i32 0
  store %union.rec* %1914, %union.rec** %opred4944, align 8
  %1917 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4945

cond.end.4945:                                    ; preds = %cond.false.4916, %cond.true.4915
  %cond4946 = phi %union.rec* [ null, %cond.true.4915 ], [ %1917, %cond.false.4916 ]
  %1918 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1918, %union.rec** @zz_hold, align 8
  %1919 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1919, %union.rec** @zz_hold, align 8
  %1920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14947 = bitcast %union.rec* %1920 to %struct.word_type*
  %ou14948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14947, i32 0, i32 1
  %os114949 = bitcast %union.FIRST_UNION* %ou14948 to %struct.anon*
  %otype4950 = getelementptr inbounds %struct.anon, %struct.anon* %os114949, i32 0, i32 0
  %1921 = load i8, i8* %otype4950, align 1
  %conv4951 = zext i8 %1921 to i32
  %cmp4952 = icmp eq i32 %conv4951, 11
  br i1 %cmp4952, label %cond.true.4962, label %lor.lhs.false.4954

lor.lhs.false.4954:                               ; preds = %cond.end.4945
  %1922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14955 = bitcast %union.rec* %1922 to %struct.word_type*
  %ou14956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14955, i32 0, i32 1
  %os114957 = bitcast %union.FIRST_UNION* %ou14956 to %struct.anon*
  %otype4958 = getelementptr inbounds %struct.anon, %struct.anon* %os114957, i32 0, i32 0
  %1923 = load i8, i8* %otype4958, align 1
  %conv4959 = zext i8 %1923 to i32
  %cmp4960 = icmp eq i32 %conv4959, 12
  br i1 %cmp4960, label %cond.true.4962, label %cond.false.4968

cond.true.4962:                                   ; preds = %lor.lhs.false.4954, %cond.end.4945
  %1924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14963 = bitcast %union.rec* %1924 to %struct.word_type*
  %ou14964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14963, i32 0, i32 1
  %os114965 = bitcast %union.FIRST_UNION* %ou14964 to %struct.anon*
  %orec_size4966 = getelementptr inbounds %struct.anon, %struct.anon* %os114965, i32 0, i32 1
  %1925 = load i8, i8* %orec_size4966, align 1
  %conv4967 = zext i8 %1925 to i32
  br label %cond.end.4976

cond.false.4968:                                  ; preds = %lor.lhs.false.4954
  %1926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14969 = bitcast %union.rec* %1926 to %struct.word_type*
  %ou14970 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14969, i32 0, i32 1
  %os114971 = bitcast %union.FIRST_UNION* %ou14970 to %struct.anon*
  %otype4972 = getelementptr inbounds %struct.anon, %struct.anon* %os114971, i32 0, i32 0
  %1927 = load i8, i8* %otype4972, align 1
  %idxprom4973 = zext i8 %1927 to i64
  %arrayidx4974 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4973
  %1928 = load i8, i8* %arrayidx4974, align 1
  %conv4975 = zext i8 %1928 to i32
  br label %cond.end.4976

cond.end.4976:                                    ; preds = %cond.false.4968, %cond.true.4962
  %cond4977 = phi i32 [ %conv4967, %cond.true.4962 ], [ %conv4975, %cond.false.4968 ]
  store i32 %cond4977, i32* @zz_size, align 4
  %1929 = load i32, i32* @zz_size, align 4
  %idxprom4978 = sext i32 %1929 to i64
  %arrayidx4979 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4978
  %1930 = load %union.rec*, %union.rec** %arrayidx4979, align 8
  %1931 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14980 = bitcast %union.rec* %1931 to %struct.word_type*
  %olist4981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14980, i32 0, i32 0
  %arrayidx4982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4981, i32 0, i64 0
  %opred4983 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4982, i32 0, i32 0
  store %union.rec* %1930, %union.rec** %opred4983, align 8
  %1932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1933 = load i32, i32* @zz_size, align 4
  %idxprom4984 = sext i32 %1933 to i64
  %arrayidx4985 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4984
  store %union.rec* %1932, %union.rec** %arrayidx4985, align 8
  br label %while.cond.4859

while.end.4986:                                   ; preds = %while.cond.4859
  %1934 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1934, %union.rec** @zz_hold, align 8
  %1935 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1935, %union.rec** @zz_hold, align 8
  %1936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14987 = bitcast %union.rec* %1936 to %struct.word_type*
  %ou14988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14987, i32 0, i32 1
  %os114989 = bitcast %union.FIRST_UNION* %ou14988 to %struct.anon*
  %otype4990 = getelementptr inbounds %struct.anon, %struct.anon* %os114989, i32 0, i32 0
  %1937 = load i8, i8* %otype4990, align 1
  %conv4991 = zext i8 %1937 to i32
  %cmp4992 = icmp eq i32 %conv4991, 11
  br i1 %cmp4992, label %cond.true.5002, label %lor.lhs.false.4994

lor.lhs.false.4994:                               ; preds = %while.end.4986
  %1938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14995 = bitcast %union.rec* %1938 to %struct.word_type*
  %ou14996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14995, i32 0, i32 1
  %os114997 = bitcast %union.FIRST_UNION* %ou14996 to %struct.anon*
  %otype4998 = getelementptr inbounds %struct.anon, %struct.anon* %os114997, i32 0, i32 0
  %1939 = load i8, i8* %otype4998, align 1
  %conv4999 = zext i8 %1939 to i32
  %cmp5000 = icmp eq i32 %conv4999, 12
  br i1 %cmp5000, label %cond.true.5002, label %cond.false.5008

cond.true.5002:                                   ; preds = %lor.lhs.false.4994, %while.end.4986
  %1940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15003 = bitcast %union.rec* %1940 to %struct.word_type*
  %ou15004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15003, i32 0, i32 1
  %os115005 = bitcast %union.FIRST_UNION* %ou15004 to %struct.anon*
  %orec_size5006 = getelementptr inbounds %struct.anon, %struct.anon* %os115005, i32 0, i32 1
  %1941 = load i8, i8* %orec_size5006, align 1
  %conv5007 = zext i8 %1941 to i32
  br label %cond.end.5016

cond.false.5008:                                  ; preds = %lor.lhs.false.4994
  %1942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15009 = bitcast %union.rec* %1942 to %struct.word_type*
  %ou15010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15009, i32 0, i32 1
  %os115011 = bitcast %union.FIRST_UNION* %ou15010 to %struct.anon*
  %otype5012 = getelementptr inbounds %struct.anon, %struct.anon* %os115011, i32 0, i32 0
  %1943 = load i8, i8* %otype5012, align 1
  %idxprom5013 = zext i8 %1943 to i64
  %arrayidx5014 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5013
  %1944 = load i8, i8* %arrayidx5014, align 1
  %conv5015 = zext i8 %1944 to i32
  br label %cond.end.5016

cond.end.5016:                                    ; preds = %cond.false.5008, %cond.true.5002
  %cond5017 = phi i32 [ %conv5007, %cond.true.5002 ], [ %conv5015, %cond.false.5008 ]
  store i32 %cond5017, i32* @zz_size, align 4
  %1945 = load i32, i32* @zz_size, align 4
  %idxprom5018 = sext i32 %1945 to i64
  %arrayidx5019 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5018
  %1946 = load %union.rec*, %union.rec** %arrayidx5019, align 8
  %1947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15020 = bitcast %union.rec* %1947 to %struct.word_type*
  %olist5021 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15020, i32 0, i32 0
  %arrayidx5022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5021, i32 0, i64 0
  %opred5023 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5022, i32 0, i32 0
  store %union.rec* %1946, %union.rec** %opred5023, align 8
  %1948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1949 = load i32, i32* @zz_size, align 4
  %idxprom5024 = sext i32 %1949 to i64
  %arrayidx5025 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5024
  store %union.rec* %1948, %union.rec** %arrayidx5025, align 8
  %1950 = load %union.rec*, %union.rec** %hd_inners, align 8
  %1951 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* %1950, %union.rec** %1951, align 8
  store i32 4, i32* %retval
  br label %return

REJECT:                                           ; preds = %if.then.4248, %if.end.4032, %if.then.3752, %if.end.3640, %sw.bb.2644, %if.then.1747, %if.then.1038, %if.then.803
  call void @LeaveErrorBlock(i32 1)
  %1952 = load %union.rec*, %union.rec** %tg_inners, align 8
  %cmp5026 = icmp ne %union.rec* %1952, null
  br i1 %cmp5026, label %if.then.5028, label %if.end.5030

if.then.5028:                                     ; preds = %REJECT
  %1953 = load %union.rec*, %union.rec** %tg_inners, align 8
  %call5029 = call i32 @DisposeObject(%union.rec* %1953)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %if.end.5030

if.end.5030:                                      ; preds = %if.then.5028, %REJECT
  %1954 = load %union.rec*, %union.rec** %target_galley, align 8
  %call5031 = call i32 @DisposeObject(%union.rec* %1954)
  %1955 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os15032 = bitcast %union.rec* %1955 to %struct.word_type*
  %ou25033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15032, i32 0, i32 2
  %os235034 = bitcast %union.SECOND_UNION* %ou25033 to %struct.anon.2*
  %ofoll_or_prec5035 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235034, i32 0, i32 0
  %1956 = load i8, i8* %ofoll_or_prec5035, align 1
  %conv5036 = zext i8 %1956 to i32
  %cmp5037 = icmp eq i32 %conv5036, 133
  br i1 %cmp5037, label %land.lhs.true.5039, label %if.else.5136

land.lhs.true.5039:                               ; preds = %if.end.5030
  %1957 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os15040 = bitcast %union.rec* %1957 to %struct.word_type*
  %ou25041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15040, i32 0, i32 2
  %os235042 = bitcast %union.SECOND_UNION* %ou25041 to %struct.anon.2*
  %osized5043 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235042, i32 0, i32 2
  %bf.load5044 = load i16, i16* %osized5043, align 2
  %bf.lshr5045 = lshr i16 %bf.load5044, 1
  %bf.clear5046 = and i16 %bf.lshr5045, 1
  %bf.cast5047 = zext i16 %bf.clear5046 to i32
  %tobool5048 = icmp ne i32 %bf.cast5047, 0
  br i1 %tobool5048, label %if.else.5136, label %if.then.5049

if.then.5049:                                     ; preds = %land.lhs.true.5039
  %1958 = load %union.rec*, %union.rec** %hd_index, align 8
  %os15050 = bitcast %union.rec* %1958 to %struct.word_type*
  %olist5051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15050, i32 0, i32 0
  %arrayidx5052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5051, i32 0, i64 1
  %osucc5053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5052, i32 0, i32 1
  %1959 = load %union.rec*, %union.rec** %osucc5053, align 8
  store %union.rec* %1959, %union.rec** @xx_link, align 8
  %1960 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1960, %union.rec** @zz_hold, align 8
  %1961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15054 = bitcast %union.rec* %1961 to %struct.word_type*
  %olist5055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15054, i32 0, i32 0
  %arrayidx5056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5055, i32 0, i64 0
  %osucc5057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5056, i32 0, i32 1
  %1962 = load %union.rec*, %union.rec** %osucc5057, align 8
  %1963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5058 = icmp eq %union.rec* %1962, %1963
  br i1 %cmp5058, label %cond.true.5060, label %cond.false.5061

cond.true.5060:                                   ; preds = %if.then.5049
  br label %cond.end.5090

cond.false.5061:                                  ; preds = %if.then.5049
  %1964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15062 = bitcast %union.rec* %1964 to %struct.word_type*
  %olist5063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15062, i32 0, i32 0
  %arrayidx5064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5063, i32 0, i64 0
  %osucc5065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5064, i32 0, i32 1
  %1965 = load %union.rec*, %union.rec** %osucc5065, align 8
  store %union.rec* %1965, %union.rec** @zz_res, align 8
  %1966 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15066 = bitcast %union.rec* %1966 to %struct.word_type*
  %olist5067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15066, i32 0, i32 0
  %arrayidx5068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5067, i32 0, i64 0
  %opred5069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5068, i32 0, i32 0
  %1967 = load %union.rec*, %union.rec** %opred5069, align 8
  %1968 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15070 = bitcast %union.rec* %1968 to %struct.word_type*
  %olist5071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15070, i32 0, i32 0
  %arrayidx5072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5071, i32 0, i64 0
  %opred5073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5072, i32 0, i32 0
  store %union.rec* %1967, %union.rec** %opred5073, align 8
  %1969 = load %union.rec*, %union.rec** @zz_res, align 8
  %1970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15074 = bitcast %union.rec* %1970 to %struct.word_type*
  %olist5075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15074, i32 0, i32 0
  %arrayidx5076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5075, i32 0, i64 0
  %opred5077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5076, i32 0, i32 0
  %1971 = load %union.rec*, %union.rec** %opred5077, align 8
  %os15078 = bitcast %union.rec* %1971 to %struct.word_type*
  %olist5079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15078, i32 0, i32 0
  %arrayidx5080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5079, i32 0, i64 0
  %osucc5081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5080, i32 0, i32 1
  store %union.rec* %1969, %union.rec** %osucc5081, align 8
  %1972 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15082 = bitcast %union.rec* %1973 to %struct.word_type*
  %olist5083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15082, i32 0, i32 0
  %arrayidx5084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5083, i32 0, i64 0
  %osucc5085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5084, i32 0, i32 1
  store %union.rec* %1972, %union.rec** %osucc5085, align 8
  %1974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15086 = bitcast %union.rec* %1974 to %struct.word_type*
  %olist5087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15086, i32 0, i32 0
  %arrayidx5088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5087, i32 0, i64 0
  %opred5089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5088, i32 0, i32 0
  store %union.rec* %1972, %union.rec** %opred5089, align 8
  %1975 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5090

cond.end.5090:                                    ; preds = %cond.false.5061, %cond.true.5060
  %cond5091 = phi %union.rec* [ null, %cond.true.5060 ], [ %1975, %cond.false.5061 ]
  %1976 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1976, %union.rec** @zz_res, align 8
  %1977 = load %union.rec*, %union.rec** %target_index, align 8
  %os15092 = bitcast %union.rec* %1977 to %struct.word_type*
  %olist5093 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15092, i32 0, i32 0
  %arrayidx5094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5093, i32 0, i64 1
  %osucc5095 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5094, i32 0, i32 1
  %1978 = load %union.rec*, %union.rec** %osucc5095, align 8
  store %union.rec* %1978, %union.rec** @zz_hold, align 8
  %1979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5096 = icmp eq %union.rec* %1979, null
  br i1 %cmp5096, label %cond.true.5098, label %cond.false.5099

cond.true.5098:                                   ; preds = %cond.end.5090
  %1980 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5134

cond.false.5099:                                  ; preds = %cond.end.5090
  %1981 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5100 = icmp eq %union.rec* %1981, null
  br i1 %cmp5100, label %cond.true.5102, label %cond.false.5103

cond.true.5102:                                   ; preds = %cond.false.5099
  %1982 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5132

cond.false.5103:                                  ; preds = %cond.false.5099
  %1983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15104 = bitcast %union.rec* %1983 to %struct.word_type*
  %olist5105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15104, i32 0, i32 0
  %arrayidx5106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5105, i32 0, i64 0
  %opred5107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5106, i32 0, i32 0
  %1984 = load %union.rec*, %union.rec** %opred5107, align 8
  store %union.rec* %1984, %union.rec** @zz_tmp, align 8
  %1985 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15108 = bitcast %union.rec* %1985 to %struct.word_type*
  %olist5109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15108, i32 0, i32 0
  %arrayidx5110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5109, i32 0, i64 0
  %opred5111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5110, i32 0, i32 0
  %1986 = load %union.rec*, %union.rec** %opred5111, align 8
  %1987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15112 = bitcast %union.rec* %1987 to %struct.word_type*
  %olist5113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15112, i32 0, i32 0
  %arrayidx5114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5113, i32 0, i64 0
  %opred5115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5114, i32 0, i32 0
  store %union.rec* %1986, %union.rec** %opred5115, align 8
  %1988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1989 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15116 = bitcast %union.rec* %1989 to %struct.word_type*
  %olist5117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15116, i32 0, i32 0
  %arrayidx5118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5117, i32 0, i64 0
  %opred5119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5118, i32 0, i32 0
  %1990 = load %union.rec*, %union.rec** %opred5119, align 8
  %os15120 = bitcast %union.rec* %1990 to %struct.word_type*
  %olist5121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15120, i32 0, i32 0
  %arrayidx5122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5121, i32 0, i64 0
  %osucc5123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5122, i32 0, i32 1
  store %union.rec* %1988, %union.rec** %osucc5123, align 8
  %1991 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1992 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15124 = bitcast %union.rec* %1992 to %struct.word_type*
  %olist5125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15124, i32 0, i32 0
  %arrayidx5126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5125, i32 0, i64 0
  %opred5127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5126, i32 0, i32 0
  store %union.rec* %1991, %union.rec** %opred5127, align 8
  %1993 = load %union.rec*, %union.rec** @zz_res, align 8
  %1994 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15128 = bitcast %union.rec* %1994 to %struct.word_type*
  %olist5129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15128, i32 0, i32 0
  %arrayidx5130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5129, i32 0, i64 0
  %osucc5131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5130, i32 0, i32 1
  store %union.rec* %1993, %union.rec** %osucc5131, align 8
  br label %cond.end.5132

cond.end.5132:                                    ; preds = %cond.false.5103, %cond.true.5102
  %cond5133 = phi %union.rec* [ %1982, %cond.true.5102 ], [ %1993, %cond.false.5103 ]
  br label %cond.end.5134

cond.end.5134:                                    ; preds = %cond.end.5132, %cond.true.5098
  %cond5135 = phi %union.rec* [ %1980, %cond.true.5098 ], [ %cond5133, %cond.end.5132 ]
  br label %if.end.5227

if.else.5136:                                     ; preds = %land.lhs.true.5039, %if.end.5030
  %1995 = load %union.rec*, %union.rec** %hd_index, align 8
  %os15137 = bitcast %union.rec* %1995 to %struct.word_type*
  %olist5138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15137, i32 0, i32 0
  %arrayidx5139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5138, i32 0, i64 1
  %osucc5140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5139, i32 0, i32 1
  %1996 = load %union.rec*, %union.rec** %osucc5140, align 8
  store %union.rec* %1996, %union.rec** @xx_link, align 8
  %1997 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1997, %union.rec** @zz_hold, align 8
  %1998 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15141 = bitcast %union.rec* %1998 to %struct.word_type*
  %olist5142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15141, i32 0, i32 0
  %arrayidx5143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5142, i32 0, i64 0
  %osucc5144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5143, i32 0, i32 1
  %1999 = load %union.rec*, %union.rec** %osucc5144, align 8
  %2000 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5145 = icmp eq %union.rec* %1999, %2000
  br i1 %cmp5145, label %cond.true.5147, label %cond.false.5148

cond.true.5147:                                   ; preds = %if.else.5136
  br label %cond.end.5177

cond.false.5148:                                  ; preds = %if.else.5136
  %2001 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15149 = bitcast %union.rec* %2001 to %struct.word_type*
  %olist5150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15149, i32 0, i32 0
  %arrayidx5151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5150, i32 0, i64 0
  %osucc5152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5151, i32 0, i32 1
  %2002 = load %union.rec*, %union.rec** %osucc5152, align 8
  store %union.rec* %2002, %union.rec** @zz_res, align 8
  %2003 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15153 = bitcast %union.rec* %2003 to %struct.word_type*
  %olist5154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15153, i32 0, i32 0
  %arrayidx5155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5154, i32 0, i64 0
  %opred5156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5155, i32 0, i32 0
  %2004 = load %union.rec*, %union.rec** %opred5156, align 8
  %2005 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15157 = bitcast %union.rec* %2005 to %struct.word_type*
  %olist5158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15157, i32 0, i32 0
  %arrayidx5159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5158, i32 0, i64 0
  %opred5160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5159, i32 0, i32 0
  store %union.rec* %2004, %union.rec** %opred5160, align 8
  %2006 = load %union.rec*, %union.rec** @zz_res, align 8
  %2007 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15161 = bitcast %union.rec* %2007 to %struct.word_type*
  %olist5162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15161, i32 0, i32 0
  %arrayidx5163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5162, i32 0, i64 0
  %opred5164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5163, i32 0, i32 0
  %2008 = load %union.rec*, %union.rec** %opred5164, align 8
  %os15165 = bitcast %union.rec* %2008 to %struct.word_type*
  %olist5166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15165, i32 0, i32 0
  %arrayidx5167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5166, i32 0, i64 0
  %osucc5168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5167, i32 0, i32 1
  store %union.rec* %2006, %union.rec** %osucc5168, align 8
  %2009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15169 = bitcast %union.rec* %2010 to %struct.word_type*
  %olist5170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15169, i32 0, i32 0
  %arrayidx5171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5170, i32 0, i64 0
  %osucc5172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5171, i32 0, i32 1
  store %union.rec* %2009, %union.rec** %osucc5172, align 8
  %2011 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15173 = bitcast %union.rec* %2011 to %struct.word_type*
  %olist5174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15173, i32 0, i32 0
  %arrayidx5175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5174, i32 0, i64 0
  %opred5176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5175, i32 0, i32 0
  store %union.rec* %2009, %union.rec** %opred5176, align 8
  %2012 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5177

cond.end.5177:                                    ; preds = %cond.false.5148, %cond.true.5147
  %cond5178 = phi %union.rec* [ null, %cond.true.5147 ], [ %2012, %cond.false.5148 ]
  %2013 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2013, %union.rec** @zz_res, align 8
  %2014 = load %union.rec*, %union.rec** %target_index, align 8
  %os15179 = bitcast %union.rec* %2014 to %struct.word_type*
  %olist5180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15179, i32 0, i32 0
  %arrayidx5181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5180, i32 0, i64 1
  %osucc5182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5181, i32 0, i32 1
  %2015 = load %union.rec*, %union.rec** %osucc5182, align 8
  %os15183 = bitcast %union.rec* %2015 to %struct.word_type*
  %olist5184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15183, i32 0, i32 0
  %arrayidx5185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5184, i32 0, i64 0
  %osucc5186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5185, i32 0, i32 1
  %2016 = load %union.rec*, %union.rec** %osucc5186, align 8
  store %union.rec* %2016, %union.rec** @zz_hold, align 8
  %2017 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5187 = icmp eq %union.rec* %2017, null
  br i1 %cmp5187, label %cond.true.5189, label %cond.false.5190

cond.true.5189:                                   ; preds = %cond.end.5177
  %2018 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5225

cond.false.5190:                                  ; preds = %cond.end.5177
  %2019 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5191 = icmp eq %union.rec* %2019, null
  br i1 %cmp5191, label %cond.true.5193, label %cond.false.5194

cond.true.5193:                                   ; preds = %cond.false.5190
  %2020 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5223

cond.false.5194:                                  ; preds = %cond.false.5190
  %2021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15195 = bitcast %union.rec* %2021 to %struct.word_type*
  %olist5196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15195, i32 0, i32 0
  %arrayidx5197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5196, i32 0, i64 0
  %opred5198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5197, i32 0, i32 0
  %2022 = load %union.rec*, %union.rec** %opred5198, align 8
  store %union.rec* %2022, %union.rec** @zz_tmp, align 8
  %2023 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15199 = bitcast %union.rec* %2023 to %struct.word_type*
  %olist5200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15199, i32 0, i32 0
  %arrayidx5201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5200, i32 0, i64 0
  %opred5202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5201, i32 0, i32 0
  %2024 = load %union.rec*, %union.rec** %opred5202, align 8
  %2025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15203 = bitcast %union.rec* %2025 to %struct.word_type*
  %olist5204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15203, i32 0, i32 0
  %arrayidx5205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5204, i32 0, i64 0
  %opred5206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5205, i32 0, i32 0
  store %union.rec* %2024, %union.rec** %opred5206, align 8
  %2026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2027 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15207 = bitcast %union.rec* %2027 to %struct.word_type*
  %olist5208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15207, i32 0, i32 0
  %arrayidx5209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5208, i32 0, i64 0
  %opred5210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5209, i32 0, i32 0
  %2028 = load %union.rec*, %union.rec** %opred5210, align 8
  %os15211 = bitcast %union.rec* %2028 to %struct.word_type*
  %olist5212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15211, i32 0, i32 0
  %arrayidx5213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5212, i32 0, i64 0
  %osucc5214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5213, i32 0, i32 1
  store %union.rec* %2026, %union.rec** %osucc5214, align 8
  %2029 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2030 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15215 = bitcast %union.rec* %2030 to %struct.word_type*
  %olist5216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15215, i32 0, i32 0
  %arrayidx5217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5216, i32 0, i64 0
  %opred5218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5217, i32 0, i32 0
  store %union.rec* %2029, %union.rec** %opred5218, align 8
  %2031 = load %union.rec*, %union.rec** @zz_res, align 8
  %2032 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15219 = bitcast %union.rec* %2032 to %struct.word_type*
  %olist5220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15219, i32 0, i32 0
  %arrayidx5221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5220, i32 0, i64 0
  %osucc5222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5221, i32 0, i32 1
  store %union.rec* %2031, %union.rec** %osucc5222, align 8
  br label %cond.end.5223

cond.end.5223:                                    ; preds = %cond.false.5194, %cond.true.5193
  %cond5224 = phi %union.rec* [ %2020, %cond.true.5193 ], [ %2031, %cond.false.5194 ]
  br label %cond.end.5225

cond.end.5225:                                    ; preds = %cond.end.5223, %cond.true.5189
  %cond5226 = phi %union.rec* [ %2018, %cond.true.5189 ], [ %cond5224, %cond.end.5223 ]
  br label %if.end.5227

if.end.5227:                                      ; preds = %cond.end.5225, %cond.end.5134
  br label %for.cond.42

SUSPEND:                                          ; preds = %if.else.3417, %if.else.3063, %sw.bb.2643, %sw.bb.2011, %sw.bb.2010
  %2033 = load %union.rec*, %union.rec** %y, align 8
  %os15228 = bitcast %union.rec* %2033 to %struct.word_type*
  %ou25229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15228, i32 0, i32 2
  %os235230 = bitcast %union.SECOND_UNION* %ou25229 to %struct.anon.2*
  %oblocked5231 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235230, i32 0, i32 2
  %bf.load5232 = load i16, i16* %oblocked5231, align 2
  %bf.clear5233 = and i16 %bf.load5232, -33
  %bf.set5234 = or i16 %bf.clear5233, 32
  store i16 %bf.set5234, i16* %oblocked5231, align 2
  call void @LeaveErrorBlock(i32 0)
  %2034 = load %union.rec*, %union.rec** %tg_inners, align 8
  %cmp5235 = icmp ne %union.rec* %2034, null
  br i1 %cmp5235, label %if.then.5237, label %if.end.5239

if.then.5237:                                     ; preds = %SUSPEND
  %2035 = load %union.rec*, %union.rec** %tg_inners, align 8
  %call5238 = call i32 @DisposeObject(%union.rec* %2035)
  store %union.rec* null, %union.rec** %tg_inners, align 8
  br label %if.end.5239

if.end.5239:                                      ; preds = %if.then.5237, %SUSPEND
  %2036 = load %union.rec*, %union.rec** %target_galley, align 8
  %call5240 = call i32 @DisposeObject(%union.rec* %2036)
  %2037 = load %union.rec*, %union.rec** %hd_index, align 8
  %os15241 = bitcast %union.rec* %2037 to %struct.word_type*
  %olist5242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15241, i32 0, i32 0
  %arrayidx5243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5242, i32 0, i64 1
  %osucc5244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5243, i32 0, i32 1
  %2038 = load %union.rec*, %union.rec** %osucc5244, align 8
  store %union.rec* %2038, %union.rec** @xx_link, align 8
  %2039 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2039, %union.rec** @zz_hold, align 8
  %2040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15245 = bitcast %union.rec* %2040 to %struct.word_type*
  %olist5246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15245, i32 0, i32 0
  %arrayidx5247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5246, i32 0, i64 0
  %osucc5248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5247, i32 0, i32 1
  %2041 = load %union.rec*, %union.rec** %osucc5248, align 8
  %2042 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5249 = icmp eq %union.rec* %2041, %2042
  br i1 %cmp5249, label %cond.true.5251, label %cond.false.5252

cond.true.5251:                                   ; preds = %if.end.5239
  br label %cond.end.5281

cond.false.5252:                                  ; preds = %if.end.5239
  %2043 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15253 = bitcast %union.rec* %2043 to %struct.word_type*
  %olist5254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15253, i32 0, i32 0
  %arrayidx5255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5254, i32 0, i64 0
  %osucc5256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5255, i32 0, i32 1
  %2044 = load %union.rec*, %union.rec** %osucc5256, align 8
  store %union.rec* %2044, %union.rec** @zz_res, align 8
  %2045 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15257 = bitcast %union.rec* %2045 to %struct.word_type*
  %olist5258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15257, i32 0, i32 0
  %arrayidx5259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5258, i32 0, i64 0
  %opred5260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5259, i32 0, i32 0
  %2046 = load %union.rec*, %union.rec** %opred5260, align 8
  %2047 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15261 = bitcast %union.rec* %2047 to %struct.word_type*
  %olist5262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15261, i32 0, i32 0
  %arrayidx5263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5262, i32 0, i64 0
  %opred5264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5263, i32 0, i32 0
  store %union.rec* %2046, %union.rec** %opred5264, align 8
  %2048 = load %union.rec*, %union.rec** @zz_res, align 8
  %2049 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15265 = bitcast %union.rec* %2049 to %struct.word_type*
  %olist5266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15265, i32 0, i32 0
  %arrayidx5267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5266, i32 0, i64 0
  %opred5268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5267, i32 0, i32 0
  %2050 = load %union.rec*, %union.rec** %opred5268, align 8
  %os15269 = bitcast %union.rec* %2050 to %struct.word_type*
  %olist5270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15269, i32 0, i32 0
  %arrayidx5271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5270, i32 0, i64 0
  %osucc5272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5271, i32 0, i32 1
  store %union.rec* %2048, %union.rec** %osucc5272, align 8
  %2051 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15273 = bitcast %union.rec* %2052 to %struct.word_type*
  %olist5274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15273, i32 0, i32 0
  %arrayidx5275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5274, i32 0, i64 0
  %osucc5276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5275, i32 0, i32 1
  store %union.rec* %2051, %union.rec** %osucc5276, align 8
  %2053 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15277 = bitcast %union.rec* %2053 to %struct.word_type*
  %olist5278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15277, i32 0, i32 0
  %arrayidx5279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5278, i32 0, i64 0
  %opred5280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5279, i32 0, i32 0
  store %union.rec* %2051, %union.rec** %opred5280, align 8
  %2054 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5281

cond.end.5281:                                    ; preds = %cond.false.5252, %cond.true.5251
  %cond5282 = phi %union.rec* [ null, %cond.true.5251 ], [ %2054, %cond.false.5252 ]
  %2055 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2055, %union.rec** @zz_res, align 8
  %2056 = load %union.rec*, %union.rec** %target_index, align 8
  %os15283 = bitcast %union.rec* %2056 to %struct.word_type*
  %olist5284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15283, i32 0, i32 0
  %arrayidx5285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5284, i32 0, i64 1
  %osucc5286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5285, i32 0, i32 1
  %2057 = load %union.rec*, %union.rec** %osucc5286, align 8
  store %union.rec* %2057, %union.rec** @zz_hold, align 8
  %2058 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5287 = icmp eq %union.rec* %2058, null
  br i1 %cmp5287, label %cond.true.5289, label %cond.false.5290

cond.true.5289:                                   ; preds = %cond.end.5281
  %2059 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5325

cond.false.5290:                                  ; preds = %cond.end.5281
  %2060 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5291 = icmp eq %union.rec* %2060, null
  br i1 %cmp5291, label %cond.true.5293, label %cond.false.5294

cond.true.5293:                                   ; preds = %cond.false.5290
  %2061 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5323

cond.false.5294:                                  ; preds = %cond.false.5290
  %2062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15295 = bitcast %union.rec* %2062 to %struct.word_type*
  %olist5296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15295, i32 0, i32 0
  %arrayidx5297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5296, i32 0, i64 0
  %opred5298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5297, i32 0, i32 0
  %2063 = load %union.rec*, %union.rec** %opred5298, align 8
  store %union.rec* %2063, %union.rec** @zz_tmp, align 8
  %2064 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15299 = bitcast %union.rec* %2064 to %struct.word_type*
  %olist5300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15299, i32 0, i32 0
  %arrayidx5301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5300, i32 0, i64 0
  %opred5302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5301, i32 0, i32 0
  %2065 = load %union.rec*, %union.rec** %opred5302, align 8
  %2066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15303 = bitcast %union.rec* %2066 to %struct.word_type*
  %olist5304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15303, i32 0, i32 0
  %arrayidx5305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5304, i32 0, i64 0
  %opred5306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5305, i32 0, i32 0
  store %union.rec* %2065, %union.rec** %opred5306, align 8
  %2067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2068 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15307 = bitcast %union.rec* %2068 to %struct.word_type*
  %olist5308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15307, i32 0, i32 0
  %arrayidx5309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5308, i32 0, i64 0
  %opred5310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5309, i32 0, i32 0
  %2069 = load %union.rec*, %union.rec** %opred5310, align 8
  %os15311 = bitcast %union.rec* %2069 to %struct.word_type*
  %olist5312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15311, i32 0, i32 0
  %arrayidx5313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5312, i32 0, i64 0
  %osucc5314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5313, i32 0, i32 1
  store %union.rec* %2067, %union.rec** %osucc5314, align 8
  %2070 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2071 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15315 = bitcast %union.rec* %2071 to %struct.word_type*
  %olist5316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15315, i32 0, i32 0
  %arrayidx5317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5316, i32 0, i64 0
  %opred5318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5317, i32 0, i32 0
  store %union.rec* %2070, %union.rec** %opred5318, align 8
  %2072 = load %union.rec*, %union.rec** @zz_res, align 8
  %2073 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15319 = bitcast %union.rec* %2073 to %struct.word_type*
  %olist5320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15319, i32 0, i32 0
  %arrayidx5321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5320, i32 0, i64 0
  %osucc5322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5321, i32 0, i32 1
  store %union.rec* %2072, %union.rec** %osucc5322, align 8
  br label %cond.end.5323

cond.end.5323:                                    ; preds = %cond.false.5294, %cond.true.5293
  %cond5324 = phi %union.rec* [ %2061, %cond.true.5293 ], [ %2072, %cond.false.5294 ]
  br label %cond.end.5325

cond.end.5325:                                    ; preds = %cond.end.5323, %cond.true.5289
  %cond5326 = phi %union.rec* [ %2059, %cond.true.5289 ], [ %cond5324, %cond.end.5323 ]
  %2074 = load i32, i32* %was_sized, align 4
  %tobool5327 = icmp ne i32 %2074, 0
  br i1 %tobool5327, label %if.then.5328, label %if.else.5334

if.then.5328:                                     ; preds = %cond.end.5325
  %2075 = load %union.rec*, %union.rec** %hd_inners, align 8
  %cmp5329 = icmp ne %union.rec* %2075, null
  br i1 %cmp5329, label %if.then.5331, label %if.end.5333

if.then.5331:                                     ; preds = %if.then.5328
  %2076 = load %union.rec*, %union.rec** %hd_inners, align 8
  %call5332 = call i32 @DisposeObject(%union.rec* %2076)
  store %union.rec* null, %union.rec** %hd_inners, align 8
  br label %if.end.5333

if.end.5333:                                      ; preds = %if.then.5331, %if.then.5328
  %2077 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* null, %union.rec** %2077, align 8
  br label %if.end.5335

if.else.5334:                                     ; preds = %cond.end.5325
  %2078 = load %union.rec*, %union.rec** %hd_inners, align 8
  %2079 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* %2078, %union.rec** %2079, align 8
  br label %if.end.5335

if.end.5335:                                      ; preds = %if.else.5334, %if.end.5333
  %2080 = load %union.rec*, %union.rec** %y, align 8
  %2081 = load %union.rec**, %union.rec*** %suspend_pt.addr, align 8
  store %union.rec* %2080, %union.rec** %2081, align 8
  store i32 3, i32* %retval
  br label %return

ACCEPT:                                           ; preds = %if.end.4339
  call void @LeaveErrorBlock(i32 1)
  %2082 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os15336 = bitcast %union.rec* %2082 to %struct.word_type*
  %olist5337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15336, i32 0, i32 0
  %arrayidx5338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5337, i32 0, i64 1
  %osucc5339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5338, i32 0, i32 1
  %2083 = load %union.rec*, %union.rec** %osucc5339, align 8
  store %union.rec* %2083, %union.rec** @xx_link, align 8
  %2084 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2084, %union.rec** @zz_hold, align 8
  %2085 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15340 = bitcast %union.rec* %2085 to %struct.word_type*
  %olist5341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15340, i32 0, i32 0
  %arrayidx5342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5341, i32 0, i64 0
  %osucc5343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5342, i32 0, i32 1
  %2086 = load %union.rec*, %union.rec** %osucc5343, align 8
  %2087 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5344 = icmp eq %union.rec* %2086, %2087
  br i1 %cmp5344, label %cond.true.5346, label %cond.false.5347

cond.true.5346:                                   ; preds = %ACCEPT
  br label %cond.end.5376

cond.false.5347:                                  ; preds = %ACCEPT
  %2088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15348 = bitcast %union.rec* %2088 to %struct.word_type*
  %olist5349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15348, i32 0, i32 0
  %arrayidx5350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5349, i32 0, i64 0
  %osucc5351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5350, i32 0, i32 1
  %2089 = load %union.rec*, %union.rec** %osucc5351, align 8
  store %union.rec* %2089, %union.rec** @zz_res, align 8
  %2090 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15352 = bitcast %union.rec* %2090 to %struct.word_type*
  %olist5353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15352, i32 0, i32 0
  %arrayidx5354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5353, i32 0, i64 0
  %opred5355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5354, i32 0, i32 0
  %2091 = load %union.rec*, %union.rec** %opred5355, align 8
  %2092 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15356 = bitcast %union.rec* %2092 to %struct.word_type*
  %olist5357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15356, i32 0, i32 0
  %arrayidx5358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5357, i32 0, i64 0
  %opred5359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5358, i32 0, i32 0
  store %union.rec* %2091, %union.rec** %opred5359, align 8
  %2093 = load %union.rec*, %union.rec** @zz_res, align 8
  %2094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15360 = bitcast %union.rec* %2094 to %struct.word_type*
  %olist5361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15360, i32 0, i32 0
  %arrayidx5362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5361, i32 0, i64 0
  %opred5363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5362, i32 0, i32 0
  %2095 = load %union.rec*, %union.rec** %opred5363, align 8
  %os15364 = bitcast %union.rec* %2095 to %struct.word_type*
  %olist5365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15364, i32 0, i32 0
  %arrayidx5366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5365, i32 0, i64 0
  %osucc5367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5366, i32 0, i32 1
  store %union.rec* %2093, %union.rec** %osucc5367, align 8
  %2096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15368 = bitcast %union.rec* %2097 to %struct.word_type*
  %olist5369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15368, i32 0, i32 0
  %arrayidx5370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5369, i32 0, i64 0
  %osucc5371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5370, i32 0, i32 1
  store %union.rec* %2096, %union.rec** %osucc5371, align 8
  %2098 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15372 = bitcast %union.rec* %2098 to %struct.word_type*
  %olist5373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15372, i32 0, i32 0
  %arrayidx5374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5373, i32 0, i64 0
  %opred5375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5374, i32 0, i32 0
  store %union.rec* %2096, %union.rec** %opred5375, align 8
  %2099 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5376

cond.end.5376:                                    ; preds = %cond.false.5347, %cond.true.5346
  %cond5377 = phi %union.rec* [ null, %cond.true.5346 ], [ %2099, %cond.false.5347 ]
  %2100 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2100, %union.rec** @zz_res, align 8
  %2101 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %2101, %union.rec** @zz_hold, align 8
  %2102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5378 = icmp eq %union.rec* %2102, null
  br i1 %cmp5378, label %cond.true.5380, label %cond.false.5381

cond.true.5380:                                   ; preds = %cond.end.5376
  %2103 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5416

cond.false.5381:                                  ; preds = %cond.end.5376
  %2104 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5382 = icmp eq %union.rec* %2104, null
  br i1 %cmp5382, label %cond.true.5384, label %cond.false.5385

cond.true.5384:                                   ; preds = %cond.false.5381
  %2105 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5414

cond.false.5385:                                  ; preds = %cond.false.5381
  %2106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15386 = bitcast %union.rec* %2106 to %struct.word_type*
  %olist5387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15386, i32 0, i32 0
  %arrayidx5388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5387, i32 0, i64 0
  %opred5389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5388, i32 0, i32 0
  %2107 = load %union.rec*, %union.rec** %opred5389, align 8
  store %union.rec* %2107, %union.rec** @zz_tmp, align 8
  %2108 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15390 = bitcast %union.rec* %2108 to %struct.word_type*
  %olist5391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15390, i32 0, i32 0
  %arrayidx5392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5391, i32 0, i64 0
  %opred5393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5392, i32 0, i32 0
  %2109 = load %union.rec*, %union.rec** %opred5393, align 8
  %2110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15394 = bitcast %union.rec* %2110 to %struct.word_type*
  %olist5395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15394, i32 0, i32 0
  %arrayidx5396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5395, i32 0, i64 0
  %opred5397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5396, i32 0, i32 0
  store %union.rec* %2109, %union.rec** %opred5397, align 8
  %2111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15398 = bitcast %union.rec* %2112 to %struct.word_type*
  %olist5399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15398, i32 0, i32 0
  %arrayidx5400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5399, i32 0, i64 0
  %opred5401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5400, i32 0, i32 0
  %2113 = load %union.rec*, %union.rec** %opred5401, align 8
  %os15402 = bitcast %union.rec* %2113 to %struct.word_type*
  %olist5403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15402, i32 0, i32 0
  %arrayidx5404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5403, i32 0, i64 0
  %osucc5405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5404, i32 0, i32 1
  store %union.rec* %2111, %union.rec** %osucc5405, align 8
  %2114 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2115 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15406 = bitcast %union.rec* %2115 to %struct.word_type*
  %olist5407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15406, i32 0, i32 0
  %arrayidx5408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5407, i32 0, i64 0
  %opred5409 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5408, i32 0, i32 0
  store %union.rec* %2114, %union.rec** %opred5409, align 8
  %2116 = load %union.rec*, %union.rec** @zz_res, align 8
  %2117 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15410 = bitcast %union.rec* %2117 to %struct.word_type*
  %olist5411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15410, i32 0, i32 0
  %arrayidx5412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5411, i32 0, i64 0
  %osucc5413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5412, i32 0, i32 1
  store %union.rec* %2116, %union.rec** %osucc5413, align 8
  br label %cond.end.5414

cond.end.5414:                                    ; preds = %cond.false.5385, %cond.true.5384
  %cond5415 = phi %union.rec* [ %2105, %cond.true.5384 ], [ %2116, %cond.false.5385 ]
  br label %cond.end.5416

cond.end.5416:                                    ; preds = %cond.end.5414, %cond.true.5380
  %cond5417 = phi %union.rec* [ %2103, %cond.true.5380 ], [ %cond5415, %cond.end.5414 ]
  %2118 = load %union.rec*, %union.rec** %hd_index, align 8
  %os15418 = bitcast %union.rec* %2118 to %struct.word_type*
  %ou15419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15418, i32 0, i32 1
  %os115420 = bitcast %union.FIRST_UNION* %ou15419 to %struct.anon*
  %otype5421 = getelementptr inbounds %struct.anon, %struct.anon* %os115420, i32 0, i32 0
  %2119 = load i8, i8* %otype5421, align 1
  %conv5422 = zext i8 %2119 to i32
  %cmp5423 = icmp eq i32 %conv5422, 120
  br i1 %cmp5423, label %if.end.5427, label %if.then.5425

if.then.5425:                                     ; preds = %cond.end.5416
  %2120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5426 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.5427

if.end.5427:                                      ; preds = %if.then.5425, %cond.end.5416
  %2121 = load %union.rec*, %union.rec** %hd_index, align 8
  store %union.rec* %2121, %union.rec** @xx_hold, align 8
  br label %while.cond.5428

while.cond.5428:                                  ; preds = %cond.end.5545, %if.end.5427
  %2122 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15429 = bitcast %union.rec* %2122 to %struct.word_type*
  %olist5430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15429, i32 0, i32 0
  %arrayidx5431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5430, i32 0, i64 1
  %osucc5432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5431, i32 0, i32 1
  %2123 = load %union.rec*, %union.rec** %osucc5432, align 8
  %2124 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp5433 = icmp ne %union.rec* %2123, %2124
  br i1 %cmp5433, label %while.body.5435, label %while.end.5555

while.body.5435:                                  ; preds = %while.cond.5428
  %2125 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15436 = bitcast %union.rec* %2125 to %struct.word_type*
  %olist5437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15436, i32 0, i32 0
  %arrayidx5438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5437, i32 0, i64 1
  %osucc5439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5438, i32 0, i32 1
  %2126 = load %union.rec*, %union.rec** %osucc5439, align 8
  store %union.rec* %2126, %union.rec** @xx_link, align 8
  %2127 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2127, %union.rec** @zz_hold, align 8
  %2128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15440 = bitcast %union.rec* %2128 to %struct.word_type*
  %olist5441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15440, i32 0, i32 0
  %arrayidx5442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5441, i32 0, i64 1
  %osucc5443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5442, i32 0, i32 1
  %2129 = load %union.rec*, %union.rec** %osucc5443, align 8
  %2130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5444 = icmp eq %union.rec* %2129, %2130
  br i1 %cmp5444, label %cond.true.5446, label %cond.false.5447

cond.true.5446:                                   ; preds = %while.body.5435
  br label %cond.end.5476

cond.false.5447:                                  ; preds = %while.body.5435
  %2131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15448 = bitcast %union.rec* %2131 to %struct.word_type*
  %olist5449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15448, i32 0, i32 0
  %arrayidx5450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5449, i32 0, i64 1
  %osucc5451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5450, i32 0, i32 1
  %2132 = load %union.rec*, %union.rec** %osucc5451, align 8
  store %union.rec* %2132, %union.rec** @zz_res, align 8
  %2133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15452 = bitcast %union.rec* %2133 to %struct.word_type*
  %olist5453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15452, i32 0, i32 0
  %arrayidx5454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5453, i32 0, i64 1
  %opred5455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5454, i32 0, i32 0
  %2134 = load %union.rec*, %union.rec** %opred5455, align 8
  %2135 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15456 = bitcast %union.rec* %2135 to %struct.word_type*
  %olist5457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15456, i32 0, i32 0
  %arrayidx5458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5457, i32 0, i64 1
  %opred5459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5458, i32 0, i32 0
  store %union.rec* %2134, %union.rec** %opred5459, align 8
  %2136 = load %union.rec*, %union.rec** @zz_res, align 8
  %2137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15460 = bitcast %union.rec* %2137 to %struct.word_type*
  %olist5461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15460, i32 0, i32 0
  %arrayidx5462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5461, i32 0, i64 1
  %opred5463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5462, i32 0, i32 0
  %2138 = load %union.rec*, %union.rec** %opred5463, align 8
  %os15464 = bitcast %union.rec* %2138 to %struct.word_type*
  %olist5465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15464, i32 0, i32 0
  %arrayidx5466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5465, i32 0, i64 1
  %osucc5467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5466, i32 0, i32 1
  store %union.rec* %2136, %union.rec** %osucc5467, align 8
  %2139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15468 = bitcast %union.rec* %2140 to %struct.word_type*
  %olist5469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15468, i32 0, i32 0
  %arrayidx5470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5469, i32 0, i64 1
  %osucc5471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5470, i32 0, i32 1
  store %union.rec* %2139, %union.rec** %osucc5471, align 8
  %2141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15472 = bitcast %union.rec* %2141 to %struct.word_type*
  %olist5473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15472, i32 0, i32 0
  %arrayidx5474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5473, i32 0, i64 1
  %opred5475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5474, i32 0, i32 0
  store %union.rec* %2139, %union.rec** %opred5475, align 8
  %2142 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5476

cond.end.5476:                                    ; preds = %cond.false.5447, %cond.true.5446
  %cond5477 = phi %union.rec* [ null, %cond.true.5446 ], [ %2142, %cond.false.5447 ]
  %2143 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2143, %union.rec** @zz_hold, align 8
  %2144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15478 = bitcast %union.rec* %2144 to %struct.word_type*
  %olist5479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15478, i32 0, i32 0
  %arrayidx5480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5479, i32 0, i64 0
  %osucc5481 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5480, i32 0, i32 1
  %2145 = load %union.rec*, %union.rec** %osucc5481, align 8
  %2146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5482 = icmp eq %union.rec* %2145, %2146
  br i1 %cmp5482, label %cond.true.5484, label %cond.false.5485

cond.true.5484:                                   ; preds = %cond.end.5476
  br label %cond.end.5514

cond.false.5485:                                  ; preds = %cond.end.5476
  %2147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15486 = bitcast %union.rec* %2147 to %struct.word_type*
  %olist5487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15486, i32 0, i32 0
  %arrayidx5488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5487, i32 0, i64 0
  %osucc5489 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5488, i32 0, i32 1
  %2148 = load %union.rec*, %union.rec** %osucc5489, align 8
  store %union.rec* %2148, %union.rec** @zz_res, align 8
  %2149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15490 = bitcast %union.rec* %2149 to %struct.word_type*
  %olist5491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15490, i32 0, i32 0
  %arrayidx5492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5491, i32 0, i64 0
  %opred5493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5492, i32 0, i32 0
  %2150 = load %union.rec*, %union.rec** %opred5493, align 8
  %2151 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15494 = bitcast %union.rec* %2151 to %struct.word_type*
  %olist5495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15494, i32 0, i32 0
  %arrayidx5496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5495, i32 0, i64 0
  %opred5497 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5496, i32 0, i32 0
  store %union.rec* %2150, %union.rec** %opred5497, align 8
  %2152 = load %union.rec*, %union.rec** @zz_res, align 8
  %2153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15498 = bitcast %union.rec* %2153 to %struct.word_type*
  %olist5499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15498, i32 0, i32 0
  %arrayidx5500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5499, i32 0, i64 0
  %opred5501 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5500, i32 0, i32 0
  %2154 = load %union.rec*, %union.rec** %opred5501, align 8
  %os15502 = bitcast %union.rec* %2154 to %struct.word_type*
  %olist5503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15502, i32 0, i32 0
  %arrayidx5504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5503, i32 0, i64 0
  %osucc5505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5504, i32 0, i32 1
  store %union.rec* %2152, %union.rec** %osucc5505, align 8
  %2155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15506 = bitcast %union.rec* %2156 to %struct.word_type*
  %olist5507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15506, i32 0, i32 0
  %arrayidx5508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5507, i32 0, i64 0
  %osucc5509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5508, i32 0, i32 1
  store %union.rec* %2155, %union.rec** %osucc5509, align 8
  %2157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15510 = bitcast %union.rec* %2157 to %struct.word_type*
  %olist5511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15510, i32 0, i32 0
  %arrayidx5512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5511, i32 0, i64 0
  %opred5513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5512, i32 0, i32 0
  store %union.rec* %2155, %union.rec** %opred5513, align 8
  %2158 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5514

cond.end.5514:                                    ; preds = %cond.false.5485, %cond.true.5484
  %cond5515 = phi %union.rec* [ null, %cond.true.5484 ], [ %2158, %cond.false.5485 ]
  %2159 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2159, %union.rec** @zz_hold, align 8
  %2160 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2160, %union.rec** @zz_hold, align 8
  %2161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15516 = bitcast %union.rec* %2161 to %struct.word_type*
  %ou15517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15516, i32 0, i32 1
  %os115518 = bitcast %union.FIRST_UNION* %ou15517 to %struct.anon*
  %otype5519 = getelementptr inbounds %struct.anon, %struct.anon* %os115518, i32 0, i32 0
  %2162 = load i8, i8* %otype5519, align 1
  %conv5520 = zext i8 %2162 to i32
  %cmp5521 = icmp eq i32 %conv5520, 11
  br i1 %cmp5521, label %cond.true.5531, label %lor.lhs.false.5523

lor.lhs.false.5523:                               ; preds = %cond.end.5514
  %2163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15524 = bitcast %union.rec* %2163 to %struct.word_type*
  %ou15525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15524, i32 0, i32 1
  %os115526 = bitcast %union.FIRST_UNION* %ou15525 to %struct.anon*
  %otype5527 = getelementptr inbounds %struct.anon, %struct.anon* %os115526, i32 0, i32 0
  %2164 = load i8, i8* %otype5527, align 1
  %conv5528 = zext i8 %2164 to i32
  %cmp5529 = icmp eq i32 %conv5528, 12
  br i1 %cmp5529, label %cond.true.5531, label %cond.false.5537

cond.true.5531:                                   ; preds = %lor.lhs.false.5523, %cond.end.5514
  %2165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15532 = bitcast %union.rec* %2165 to %struct.word_type*
  %ou15533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15532, i32 0, i32 1
  %os115534 = bitcast %union.FIRST_UNION* %ou15533 to %struct.anon*
  %orec_size5535 = getelementptr inbounds %struct.anon, %struct.anon* %os115534, i32 0, i32 1
  %2166 = load i8, i8* %orec_size5535, align 1
  %conv5536 = zext i8 %2166 to i32
  br label %cond.end.5545

cond.false.5537:                                  ; preds = %lor.lhs.false.5523
  %2167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15538 = bitcast %union.rec* %2167 to %struct.word_type*
  %ou15539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15538, i32 0, i32 1
  %os115540 = bitcast %union.FIRST_UNION* %ou15539 to %struct.anon*
  %otype5541 = getelementptr inbounds %struct.anon, %struct.anon* %os115540, i32 0, i32 0
  %2168 = load i8, i8* %otype5541, align 1
  %idxprom5542 = zext i8 %2168 to i64
  %arrayidx5543 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5542
  %2169 = load i8, i8* %arrayidx5543, align 1
  %conv5544 = zext i8 %2169 to i32
  br label %cond.end.5545

cond.end.5545:                                    ; preds = %cond.false.5537, %cond.true.5531
  %cond5546 = phi i32 [ %conv5536, %cond.true.5531 ], [ %conv5544, %cond.false.5537 ]
  store i32 %cond5546, i32* @zz_size, align 4
  %2170 = load i32, i32* @zz_size, align 4
  %idxprom5547 = sext i32 %2170 to i64
  %arrayidx5548 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5547
  %2171 = load %union.rec*, %union.rec** %arrayidx5548, align 8
  %2172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15549 = bitcast %union.rec* %2172 to %struct.word_type*
  %olist5550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15549, i32 0, i32 0
  %arrayidx5551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5550, i32 0, i64 0
  %opred5552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5551, i32 0, i32 0
  store %union.rec* %2171, %union.rec** %opred5552, align 8
  %2173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2174 = load i32, i32* @zz_size, align 4
  %idxprom5553 = sext i32 %2174 to i64
  %arrayidx5554 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5553
  store %union.rec* %2173, %union.rec** %arrayidx5554, align 8
  br label %while.cond.5428

while.end.5555:                                   ; preds = %while.cond.5428
  br label %while.cond.5556

while.cond.5556:                                  ; preds = %cond.end.5673, %while.end.5555
  %2175 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15557 = bitcast %union.rec* %2175 to %struct.word_type*
  %olist5558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15557, i32 0, i32 0
  %arrayidx5559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5558, i32 0, i64 0
  %osucc5560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5559, i32 0, i32 1
  %2176 = load %union.rec*, %union.rec** %osucc5560, align 8
  %2177 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp5561 = icmp ne %union.rec* %2176, %2177
  br i1 %cmp5561, label %while.body.5563, label %while.end.5683

while.body.5563:                                  ; preds = %while.cond.5556
  %2178 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15564 = bitcast %union.rec* %2178 to %struct.word_type*
  %olist5565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15564, i32 0, i32 0
  %arrayidx5566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5565, i32 0, i64 0
  %osucc5567 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5566, i32 0, i32 1
  %2179 = load %union.rec*, %union.rec** %osucc5567, align 8
  store %union.rec* %2179, %union.rec** @xx_link, align 8
  %2180 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2180, %union.rec** @zz_hold, align 8
  %2181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15568 = bitcast %union.rec* %2181 to %struct.word_type*
  %olist5569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15568, i32 0, i32 0
  %arrayidx5570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5569, i32 0, i64 1
  %osucc5571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5570, i32 0, i32 1
  %2182 = load %union.rec*, %union.rec** %osucc5571, align 8
  %2183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5572 = icmp eq %union.rec* %2182, %2183
  br i1 %cmp5572, label %cond.true.5574, label %cond.false.5575

cond.true.5574:                                   ; preds = %while.body.5563
  br label %cond.end.5604

cond.false.5575:                                  ; preds = %while.body.5563
  %2184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15576 = bitcast %union.rec* %2184 to %struct.word_type*
  %olist5577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15576, i32 0, i32 0
  %arrayidx5578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5577, i32 0, i64 1
  %osucc5579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5578, i32 0, i32 1
  %2185 = load %union.rec*, %union.rec** %osucc5579, align 8
  store %union.rec* %2185, %union.rec** @zz_res, align 8
  %2186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15580 = bitcast %union.rec* %2186 to %struct.word_type*
  %olist5581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15580, i32 0, i32 0
  %arrayidx5582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5581, i32 0, i64 1
  %opred5583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5582, i32 0, i32 0
  %2187 = load %union.rec*, %union.rec** %opred5583, align 8
  %2188 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15584 = bitcast %union.rec* %2188 to %struct.word_type*
  %olist5585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15584, i32 0, i32 0
  %arrayidx5586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5585, i32 0, i64 1
  %opred5587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5586, i32 0, i32 0
  store %union.rec* %2187, %union.rec** %opred5587, align 8
  %2189 = load %union.rec*, %union.rec** @zz_res, align 8
  %2190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15588 = bitcast %union.rec* %2190 to %struct.word_type*
  %olist5589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15588, i32 0, i32 0
  %arrayidx5590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5589, i32 0, i64 1
  %opred5591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5590, i32 0, i32 0
  %2191 = load %union.rec*, %union.rec** %opred5591, align 8
  %os15592 = bitcast %union.rec* %2191 to %struct.word_type*
  %olist5593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15592, i32 0, i32 0
  %arrayidx5594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5593, i32 0, i64 1
  %osucc5595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5594, i32 0, i32 1
  store %union.rec* %2189, %union.rec** %osucc5595, align 8
  %2192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15596 = bitcast %union.rec* %2193 to %struct.word_type*
  %olist5597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15596, i32 0, i32 0
  %arrayidx5598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5597, i32 0, i64 1
  %osucc5599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5598, i32 0, i32 1
  store %union.rec* %2192, %union.rec** %osucc5599, align 8
  %2194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15600 = bitcast %union.rec* %2194 to %struct.word_type*
  %olist5601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15600, i32 0, i32 0
  %arrayidx5602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5601, i32 0, i64 1
  %opred5603 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5602, i32 0, i32 0
  store %union.rec* %2192, %union.rec** %opred5603, align 8
  %2195 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5604

cond.end.5604:                                    ; preds = %cond.false.5575, %cond.true.5574
  %cond5605 = phi %union.rec* [ null, %cond.true.5574 ], [ %2195, %cond.false.5575 ]
  %2196 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2196, %union.rec** @zz_hold, align 8
  %2197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15606 = bitcast %union.rec* %2197 to %struct.word_type*
  %olist5607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15606, i32 0, i32 0
  %arrayidx5608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5607, i32 0, i64 0
  %osucc5609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5608, i32 0, i32 1
  %2198 = load %union.rec*, %union.rec** %osucc5609, align 8
  %2199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5610 = icmp eq %union.rec* %2198, %2199
  br i1 %cmp5610, label %cond.true.5612, label %cond.false.5613

cond.true.5612:                                   ; preds = %cond.end.5604
  br label %cond.end.5642

cond.false.5613:                                  ; preds = %cond.end.5604
  %2200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15614 = bitcast %union.rec* %2200 to %struct.word_type*
  %olist5615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15614, i32 0, i32 0
  %arrayidx5616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5615, i32 0, i64 0
  %osucc5617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5616, i32 0, i32 1
  %2201 = load %union.rec*, %union.rec** %osucc5617, align 8
  store %union.rec* %2201, %union.rec** @zz_res, align 8
  %2202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15618 = bitcast %union.rec* %2202 to %struct.word_type*
  %olist5619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15618, i32 0, i32 0
  %arrayidx5620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5619, i32 0, i64 0
  %opred5621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5620, i32 0, i32 0
  %2203 = load %union.rec*, %union.rec** %opred5621, align 8
  %2204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15622 = bitcast %union.rec* %2204 to %struct.word_type*
  %olist5623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15622, i32 0, i32 0
  %arrayidx5624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5623, i32 0, i64 0
  %opred5625 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5624, i32 0, i32 0
  store %union.rec* %2203, %union.rec** %opred5625, align 8
  %2205 = load %union.rec*, %union.rec** @zz_res, align 8
  %2206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15626 = bitcast %union.rec* %2206 to %struct.word_type*
  %olist5627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15626, i32 0, i32 0
  %arrayidx5628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5627, i32 0, i64 0
  %opred5629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5628, i32 0, i32 0
  %2207 = load %union.rec*, %union.rec** %opred5629, align 8
  %os15630 = bitcast %union.rec* %2207 to %struct.word_type*
  %olist5631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15630, i32 0, i32 0
  %arrayidx5632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5631, i32 0, i64 0
  %osucc5633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5632, i32 0, i32 1
  store %union.rec* %2205, %union.rec** %osucc5633, align 8
  %2208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15634 = bitcast %union.rec* %2209 to %struct.word_type*
  %olist5635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15634, i32 0, i32 0
  %arrayidx5636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5635, i32 0, i64 0
  %osucc5637 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5636, i32 0, i32 1
  store %union.rec* %2208, %union.rec** %osucc5637, align 8
  %2210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15638 = bitcast %union.rec* %2210 to %struct.word_type*
  %olist5639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15638, i32 0, i32 0
  %arrayidx5640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5639, i32 0, i64 0
  %opred5641 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5640, i32 0, i32 0
  store %union.rec* %2208, %union.rec** %opred5641, align 8
  %2211 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5642

cond.end.5642:                                    ; preds = %cond.false.5613, %cond.true.5612
  %cond5643 = phi %union.rec* [ null, %cond.true.5612 ], [ %2211, %cond.false.5613 ]
  %2212 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2212, %union.rec** @zz_hold, align 8
  %2213 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2213, %union.rec** @zz_hold, align 8
  %2214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15644 = bitcast %union.rec* %2214 to %struct.word_type*
  %ou15645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15644, i32 0, i32 1
  %os115646 = bitcast %union.FIRST_UNION* %ou15645 to %struct.anon*
  %otype5647 = getelementptr inbounds %struct.anon, %struct.anon* %os115646, i32 0, i32 0
  %2215 = load i8, i8* %otype5647, align 1
  %conv5648 = zext i8 %2215 to i32
  %cmp5649 = icmp eq i32 %conv5648, 11
  br i1 %cmp5649, label %cond.true.5659, label %lor.lhs.false.5651

lor.lhs.false.5651:                               ; preds = %cond.end.5642
  %2216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15652 = bitcast %union.rec* %2216 to %struct.word_type*
  %ou15653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15652, i32 0, i32 1
  %os115654 = bitcast %union.FIRST_UNION* %ou15653 to %struct.anon*
  %otype5655 = getelementptr inbounds %struct.anon, %struct.anon* %os115654, i32 0, i32 0
  %2217 = load i8, i8* %otype5655, align 1
  %conv5656 = zext i8 %2217 to i32
  %cmp5657 = icmp eq i32 %conv5656, 12
  br i1 %cmp5657, label %cond.true.5659, label %cond.false.5665

cond.true.5659:                                   ; preds = %lor.lhs.false.5651, %cond.end.5642
  %2218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15660 = bitcast %union.rec* %2218 to %struct.word_type*
  %ou15661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15660, i32 0, i32 1
  %os115662 = bitcast %union.FIRST_UNION* %ou15661 to %struct.anon*
  %orec_size5663 = getelementptr inbounds %struct.anon, %struct.anon* %os115662, i32 0, i32 1
  %2219 = load i8, i8* %orec_size5663, align 1
  %conv5664 = zext i8 %2219 to i32
  br label %cond.end.5673

cond.false.5665:                                  ; preds = %lor.lhs.false.5651
  %2220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15666 = bitcast %union.rec* %2220 to %struct.word_type*
  %ou15667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15666, i32 0, i32 1
  %os115668 = bitcast %union.FIRST_UNION* %ou15667 to %struct.anon*
  %otype5669 = getelementptr inbounds %struct.anon, %struct.anon* %os115668, i32 0, i32 0
  %2221 = load i8, i8* %otype5669, align 1
  %idxprom5670 = zext i8 %2221 to i64
  %arrayidx5671 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5670
  %2222 = load i8, i8* %arrayidx5671, align 1
  %conv5672 = zext i8 %2222 to i32
  br label %cond.end.5673

cond.end.5673:                                    ; preds = %cond.false.5665, %cond.true.5659
  %cond5674 = phi i32 [ %conv5664, %cond.true.5659 ], [ %conv5672, %cond.false.5665 ]
  store i32 %cond5674, i32* @zz_size, align 4
  %2223 = load i32, i32* @zz_size, align 4
  %idxprom5675 = sext i32 %2223 to i64
  %arrayidx5676 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5675
  %2224 = load %union.rec*, %union.rec** %arrayidx5676, align 8
  %2225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15677 = bitcast %union.rec* %2225 to %struct.word_type*
  %olist5678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15677, i32 0, i32 0
  %arrayidx5679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5678, i32 0, i64 0
  %opred5680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5679, i32 0, i32 0
  store %union.rec* %2224, %union.rec** %opred5680, align 8
  %2226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2227 = load i32, i32* @zz_size, align 4
  %idxprom5681 = sext i32 %2227 to i64
  %arrayidx5682 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5681
  store %union.rec* %2226, %union.rec** %arrayidx5682, align 8
  br label %while.cond.5556

while.end.5683:                                   ; preds = %while.cond.5556
  %2228 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2228, %union.rec** @zz_hold, align 8
  %2229 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2229, %union.rec** @zz_hold, align 8
  %2230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15684 = bitcast %union.rec* %2230 to %struct.word_type*
  %ou15685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15684, i32 0, i32 1
  %os115686 = bitcast %union.FIRST_UNION* %ou15685 to %struct.anon*
  %otype5687 = getelementptr inbounds %struct.anon, %struct.anon* %os115686, i32 0, i32 0
  %2231 = load i8, i8* %otype5687, align 1
  %conv5688 = zext i8 %2231 to i32
  %cmp5689 = icmp eq i32 %conv5688, 11
  br i1 %cmp5689, label %cond.true.5699, label %lor.lhs.false.5691

lor.lhs.false.5691:                               ; preds = %while.end.5683
  %2232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15692 = bitcast %union.rec* %2232 to %struct.word_type*
  %ou15693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15692, i32 0, i32 1
  %os115694 = bitcast %union.FIRST_UNION* %ou15693 to %struct.anon*
  %otype5695 = getelementptr inbounds %struct.anon, %struct.anon* %os115694, i32 0, i32 0
  %2233 = load i8, i8* %otype5695, align 1
  %conv5696 = zext i8 %2233 to i32
  %cmp5697 = icmp eq i32 %conv5696, 12
  br i1 %cmp5697, label %cond.true.5699, label %cond.false.5705

cond.true.5699:                                   ; preds = %lor.lhs.false.5691, %while.end.5683
  %2234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15700 = bitcast %union.rec* %2234 to %struct.word_type*
  %ou15701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15700, i32 0, i32 1
  %os115702 = bitcast %union.FIRST_UNION* %ou15701 to %struct.anon*
  %orec_size5703 = getelementptr inbounds %struct.anon, %struct.anon* %os115702, i32 0, i32 1
  %2235 = load i8, i8* %orec_size5703, align 1
  %conv5704 = zext i8 %2235 to i32
  br label %cond.end.5713

cond.false.5705:                                  ; preds = %lor.lhs.false.5691
  %2236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15706 = bitcast %union.rec* %2236 to %struct.word_type*
  %ou15707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15706, i32 0, i32 1
  %os115708 = bitcast %union.FIRST_UNION* %ou15707 to %struct.anon*
  %otype5709 = getelementptr inbounds %struct.anon, %struct.anon* %os115708, i32 0, i32 0
  %2237 = load i8, i8* %otype5709, align 1
  %idxprom5710 = zext i8 %2237 to i64
  %arrayidx5711 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5710
  %2238 = load i8, i8* %arrayidx5711, align 1
  %conv5712 = zext i8 %2238 to i32
  br label %cond.end.5713

cond.end.5713:                                    ; preds = %cond.false.5705, %cond.true.5699
  %cond5714 = phi i32 [ %conv5704, %cond.true.5699 ], [ %conv5712, %cond.false.5705 ]
  store i32 %cond5714, i32* @zz_size, align 4
  %2239 = load i32, i32* @zz_size, align 4
  %idxprom5715 = sext i32 %2239 to i64
  %arrayidx5716 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5715
  %2240 = load %union.rec*, %union.rec** %arrayidx5716, align 8
  %2241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15717 = bitcast %union.rec* %2241 to %struct.word_type*
  %olist5718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15717, i32 0, i32 0
  %arrayidx5719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5718, i32 0, i64 0
  %opred5720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5719, i32 0, i32 0
  store %union.rec* %2240, %union.rec** %opred5720, align 8
  %2242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2243 = load i32, i32* @zz_size, align 4
  %idxprom5721 = sext i32 %2243 to i64
  %arrayidx5722 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5721
  store %union.rec* %2242, %union.rec** %arrayidx5722, align 8
  %2244 = load i32, i32* %dim, align 4
  %cmp5723 = icmp eq i32 %2244, 1
  br i1 %cmp5723, label %land.lhs.true.5725, label %if.else.5736

land.lhs.true.5725:                               ; preds = %cond.end.5713
  %2245 = load %union.rec*, %union.rec** %dest, align 8
  %os15726 = bitcast %union.rec* %2245 to %struct.word_type*
  %ou25727 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15726, i32 0, i32 2
  %os235728 = bitcast %union.SECOND_UNION* %ou25727 to %struct.anon.2*
  %oexternal_ver5729 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235728, i32 0, i32 2
  %bf.load5730 = load i16, i16* %oexternal_ver5729, align 2
  %bf.lshr5731 = lshr i16 %bf.load5730, 4
  %bf.clear5732 = and i16 %bf.lshr5731, 1
  %bf.cast5733 = zext i16 %bf.clear5732 to i32
  %tobool5734 = icmp ne i32 %bf.cast5733, 0
  br i1 %tobool5734, label %if.else.5736, label %if.then.5735

if.then.5735:                                     ; preds = %land.lhs.true.5725
  %2246 = load %union.rec*, %union.rec** %dest, align 8
  %2247 = load %union.rec*, %union.rec** %hd.addr, align 8
  %2248 = load %union.rec*, %union.rec** %y, align 8
  call void @Interpose(%union.rec* %2246, i32 19, %union.rec* %2247, %union.rec* %2248)
  br label %if.end.6274

if.else.5736:                                     ; preds = %land.lhs.true.5725, %cond.end.5713
  %2249 = load i32, i32* %dim, align 4
  %cmp5737 = icmp eq i32 %2249, 0
  br i1 %cmp5737, label %land.lhs.true.5739, label %if.end.6273

land.lhs.true.5739:                               ; preds = %if.else.5736
  %2250 = load %union.rec*, %union.rec** %dest, align 8
  %os15740 = bitcast %union.rec* %2250 to %struct.word_type*
  %ou25741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15740, i32 0, i32 2
  %os235742 = bitcast %union.SECOND_UNION* %ou25741 to %struct.anon.2*
  %oexternal_hor5743 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235742, i32 0, i32 2
  %bf.load5744 = load i16, i16* %oexternal_hor5743, align 2
  %bf.lshr5745 = lshr i16 %bf.load5744, 3
  %bf.clear5746 = and i16 %bf.lshr5745, 1
  %bf.cast5747 = zext i16 %bf.clear5746 to i32
  %tobool5748 = icmp ne i32 %bf.cast5747, 0
  br i1 %tobool5748, label %if.end.6273, label %if.then.5749

if.then.5749:                                     ; preds = %land.lhs.true.5739
  %2251 = load %union.rec*, %union.rec** %dest, align 8
  %2252 = load %union.rec*, %union.rec** %y, align 8
  %2253 = load %union.rec*, %union.rec** %y, align 8
  call void @Interpose(%union.rec* %2251, i32 17, %union.rec* %2252, %union.rec* %2253)
  %2254 = load %union.rec*, %union.rec** %dest, align 8
  %os15750 = bitcast %union.rec* %2254 to %struct.word_type*
  %olist5751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15750, i32 0, i32 0
  %arrayidx5752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5751, i32 0, i64 1
  %osucc5753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5752, i32 0, i32 1
  %2255 = load %union.rec*, %union.rec** %osucc5753, align 8
  %os15754 = bitcast %union.rec* %2255 to %struct.word_type*
  %olist5755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15754, i32 0, i32 0
  %arrayidx5756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5755, i32 0, i64 0
  %opred5757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5756, i32 0, i32 0
  %2256 = load %union.rec*, %union.rec** %opred5757, align 8
  store %union.rec* %2256, %union.rec** %junk, align 8
  br label %for.cond.5758

for.cond.5758:                                    ; preds = %for.inc.5767, %if.then.5749
  %2257 = load %union.rec*, %union.rec** %junk, align 8
  %os15759 = bitcast %union.rec* %2257 to %struct.word_type*
  %ou15760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15759, i32 0, i32 1
  %os115761 = bitcast %union.FIRST_UNION* %ou15760 to %struct.anon*
  %otype5762 = getelementptr inbounds %struct.anon, %struct.anon* %os115761, i32 0, i32 0
  %2258 = load i8, i8* %otype5762, align 1
  %conv5763 = zext i8 %2258 to i32
  %cmp5764 = icmp eq i32 %conv5763, 0
  br i1 %cmp5764, label %for.body.5766, label %for.end.5772

for.body.5766:                                    ; preds = %for.cond.5758
  br label %for.inc.5767

for.inc.5767:                                     ; preds = %for.body.5766
  %2259 = load %union.rec*, %union.rec** %junk, align 8
  %os15768 = bitcast %union.rec* %2259 to %struct.word_type*
  %olist5769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15768, i32 0, i32 0
  %arrayidx5770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5769, i32 0, i64 0
  %opred5771 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5770, i32 0, i32 0
  %2260 = load %union.rec*, %union.rec** %opred5771, align 8
  store %union.rec* %2260, %union.rec** %junk, align 8
  br label %for.cond.5758

for.end.5772:                                     ; preds = %for.cond.5758
  %2261 = load %union.rec*, %union.rec** %junk, align 8
  %os15773 = bitcast %union.rec* %2261 to %struct.word_type*
  %ou15774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15773, i32 0, i32 1
  %os115775 = bitcast %union.FIRST_UNION* %ou15774 to %struct.anon*
  %otype5776 = getelementptr inbounds %struct.anon, %struct.anon* %os115775, i32 0, i32 0
  %2262 = load i8, i8* %otype5776, align 1
  %conv5777 = zext i8 %2262 to i32
  %cmp5778 = icmp eq i32 %conv5777, 17
  br i1 %cmp5778, label %if.end.5782, label %if.then.5780

if.then.5780:                                     ; preds = %for.end.5772
  %2263 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5781 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2263, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.5782

if.end.5782:                                      ; preds = %if.then.5780, %for.end.5772
  %2264 = load %union.rec*, %union.rec** %dest, align 8
  %os25783 = bitcast %union.rec* %2264 to %struct.closure_type*
  %ou45784 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25783, i32 0, i32 4
  %osave_style5785 = bitcast %union.FOURTH_UNION* %ou45784 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5785, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %2265 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load5786 = load i16, i16* %2265, align 4
  %bf.lshr5787 = lshr i16 %bf.load5786, 7
  %bf.clear5788 = and i16 %bf.lshr5787, 1
  %bf.cast5789 = zext i16 %bf.clear5788 to i32
  %2266 = load %union.rec*, %union.rec** %junk, align 8
  %os25790 = bitcast %union.rec* %2266 to %struct.closure_type*
  %ou45791 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25790, i32 0, i32 4
  %osave_style5792 = bitcast %union.FOURTH_UNION* %ou45791 to %struct.STYLE*
  %osu15793 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5792, i32 0, i32 0
  %oline_gap5794 = bitcast %union.anon* %osu15793 to %struct.GAP*
  %2267 = bitcast %struct.GAP* %oline_gap5794 to i16*
  %2268 = trunc i32 %bf.cast5789 to i16
  %bf.load5795 = load i16, i16* %2267, align 4
  %bf.value5796 = and i16 %2268, 1
  %bf.shl5797 = shl i16 %bf.value5796, 7
  %bf.clear5798 = and i16 %bf.load5795, -129
  %bf.set5799 = or i16 %bf.clear5798, %bf.shl5797
  store i16 %bf.set5799, i16* %2267, align 4
  %bf.result.cast5800 = zext i16 %bf.value5796 to i32
  %2269 = load %union.rec*, %union.rec** %dest, align 8
  %os25801 = bitcast %union.rec* %2269 to %struct.closure_type*
  %ou45802 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25801, i32 0, i32 4
  %osave_style5803 = bitcast %union.FOURTH_UNION* %ou45802 to %struct.STYLE*
  %osu15804 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5803, i32 0, i32 0
  %oline_gap5805 = bitcast %union.anon* %osu15804 to %struct.GAP*
  %2270 = bitcast %struct.GAP* %oline_gap5805 to i16*
  %bf.load5806 = load i16, i16* %2270, align 4
  %bf.lshr5807 = lshr i16 %bf.load5806, 8
  %bf.clear5808 = and i16 %bf.lshr5807, 1
  %bf.cast5809 = zext i16 %bf.clear5808 to i32
  %2271 = load %union.rec*, %union.rec** %junk, align 8
  %os25810 = bitcast %union.rec* %2271 to %struct.closure_type*
  %ou45811 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25810, i32 0, i32 4
  %osave_style5812 = bitcast %union.FOURTH_UNION* %ou45811 to %struct.STYLE*
  %osu15813 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5812, i32 0, i32 0
  %oline_gap5814 = bitcast %union.anon* %osu15813 to %struct.GAP*
  %2272 = bitcast %struct.GAP* %oline_gap5814 to i16*
  %2273 = trunc i32 %bf.cast5809 to i16
  %bf.load5815 = load i16, i16* %2272, align 4
  %bf.value5816 = and i16 %2273, 1
  %bf.shl5817 = shl i16 %bf.value5816, 8
  %bf.clear5818 = and i16 %bf.load5815, -257
  %bf.set5819 = or i16 %bf.clear5818, %bf.shl5817
  store i16 %bf.set5819, i16* %2272, align 4
  %bf.result.cast5820 = zext i16 %bf.value5816 to i32
  %2274 = load %union.rec*, %union.rec** %dest, align 8
  %os25821 = bitcast %union.rec* %2274 to %struct.closure_type*
  %ou45822 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25821, i32 0, i32 4
  %osave_style5823 = bitcast %union.FOURTH_UNION* %ou45822 to %struct.STYLE*
  %osu15824 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5823, i32 0, i32 0
  %oline_gap5825 = bitcast %union.anon* %osu15824 to %struct.GAP*
  %2275 = bitcast %struct.GAP* %oline_gap5825 to i16*
  %bf.load5826 = load i16, i16* %2275, align 4
  %bf.lshr5827 = lshr i16 %bf.load5826, 9
  %bf.clear5828 = and i16 %bf.lshr5827, 1
  %bf.cast5829 = zext i16 %bf.clear5828 to i32
  %2276 = load %union.rec*, %union.rec** %junk, align 8
  %os25830 = bitcast %union.rec* %2276 to %struct.closure_type*
  %ou45831 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25830, i32 0, i32 4
  %osave_style5832 = bitcast %union.FOURTH_UNION* %ou45831 to %struct.STYLE*
  %osu15833 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5832, i32 0, i32 0
  %oline_gap5834 = bitcast %union.anon* %osu15833 to %struct.GAP*
  %2277 = bitcast %struct.GAP* %oline_gap5834 to i16*
  %2278 = trunc i32 %bf.cast5829 to i16
  %bf.load5835 = load i16, i16* %2277, align 4
  %bf.value5836 = and i16 %2278, 1
  %bf.shl5837 = shl i16 %bf.value5836, 9
  %bf.clear5838 = and i16 %bf.load5835, -513
  %bf.set5839 = or i16 %bf.clear5838, %bf.shl5837
  store i16 %bf.set5839, i16* %2277, align 4
  %bf.result.cast5840 = zext i16 %bf.value5836 to i32
  %2279 = load %union.rec*, %union.rec** %dest, align 8
  %os25841 = bitcast %union.rec* %2279 to %struct.closure_type*
  %ou45842 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25841, i32 0, i32 4
  %osave_style5843 = bitcast %union.FOURTH_UNION* %ou45842 to %struct.STYLE*
  %osu15844 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5843, i32 0, i32 0
  %oline_gap5845 = bitcast %union.anon* %osu15844 to %struct.GAP*
  %2280 = bitcast %struct.GAP* %oline_gap5845 to i16*
  %bf.load5846 = load i16, i16* %2280, align 4
  %bf.lshr5847 = lshr i16 %bf.load5846, 10
  %bf.clear5848 = and i16 %bf.lshr5847, 7
  %bf.cast5849 = zext i16 %bf.clear5848 to i32
  %2281 = load %union.rec*, %union.rec** %junk, align 8
  %os25850 = bitcast %union.rec* %2281 to %struct.closure_type*
  %ou45851 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25850, i32 0, i32 4
  %osave_style5852 = bitcast %union.FOURTH_UNION* %ou45851 to %struct.STYLE*
  %osu15853 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5852, i32 0, i32 0
  %oline_gap5854 = bitcast %union.anon* %osu15853 to %struct.GAP*
  %2282 = bitcast %struct.GAP* %oline_gap5854 to i16*
  %2283 = trunc i32 %bf.cast5849 to i16
  %bf.load5855 = load i16, i16* %2282, align 4
  %bf.value5856 = and i16 %2283, 7
  %bf.shl5857 = shl i16 %bf.value5856, 10
  %bf.clear5858 = and i16 %bf.load5855, -7169
  %bf.set5859 = or i16 %bf.clear5858, %bf.shl5857
  store i16 %bf.set5859, i16* %2282, align 4
  %bf.result.cast5860 = zext i16 %bf.value5856 to i32
  %2284 = load %union.rec*, %union.rec** %dest, align 8
  %os25861 = bitcast %union.rec* %2284 to %struct.closure_type*
  %ou45862 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25861, i32 0, i32 4
  %osave_style5863 = bitcast %union.FOURTH_UNION* %ou45862 to %struct.STYLE*
  %osu15864 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5863, i32 0, i32 0
  %oline_gap5865 = bitcast %union.anon* %osu15864 to %struct.GAP*
  %2285 = bitcast %struct.GAP* %oline_gap5865 to i16*
  %bf.load5866 = load i16, i16* %2285, align 4
  %bf.lshr5867 = lshr i16 %bf.load5866, 13
  %bf.cast5868 = zext i16 %bf.lshr5867 to i32
  %2286 = load %union.rec*, %union.rec** %junk, align 8
  %os25869 = bitcast %union.rec* %2286 to %struct.closure_type*
  %ou45870 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25869, i32 0, i32 4
  %osave_style5871 = bitcast %union.FOURTH_UNION* %ou45870 to %struct.STYLE*
  %osu15872 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5871, i32 0, i32 0
  %oline_gap5873 = bitcast %union.anon* %osu15872 to %struct.GAP*
  %2287 = bitcast %struct.GAP* %oline_gap5873 to i16*
  %2288 = trunc i32 %bf.cast5868 to i16
  %bf.load5874 = load i16, i16* %2287, align 4
  %bf.value5875 = and i16 %2288, 7
  %bf.shl5876 = shl i16 %bf.value5875, 13
  %bf.clear5877 = and i16 %bf.load5874, 8191
  %bf.set5878 = or i16 %bf.clear5877, %bf.shl5876
  store i16 %bf.set5878, i16* %2287, align 4
  %bf.result.cast5879 = zext i16 %bf.value5875 to i32
  %2289 = load %union.rec*, %union.rec** %dest, align 8
  %os25880 = bitcast %union.rec* %2289 to %struct.closure_type*
  %ou45881 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25880, i32 0, i32 4
  %osave_style5882 = bitcast %union.FOURTH_UNION* %ou45881 to %struct.STYLE*
  %osu15883 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5882, i32 0, i32 0
  %oline_gap5884 = bitcast %union.anon* %osu15883 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap5884, i32 0, i32 1
  %2290 = load i16, i16* %owidth, align 2
  %2291 = load %union.rec*, %union.rec** %junk, align 8
  %os25885 = bitcast %union.rec* %2291 to %struct.closure_type*
  %ou45886 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25885, i32 0, i32 4
  %osave_style5887 = bitcast %union.FOURTH_UNION* %ou45886 to %struct.STYLE*
  %osu15888 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5887, i32 0, i32 0
  %oline_gap5889 = bitcast %union.anon* %osu15888 to %struct.GAP*
  %owidth5890 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap5889, i32 0, i32 1
  store i16 %2290, i16* %owidth5890, align 2
  %2292 = load %union.rec*, %union.rec** %dest, align 8
  %os25891 = bitcast %union.rec* %2292 to %struct.closure_type*
  %ou45892 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25891, i32 0, i32 4
  %osave_style5893 = bitcast %union.FOURTH_UNION* %ou45892 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5893, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %2293 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load5894 = load i8, i8* %2293, align 4
  %bf.clear5895 = and i8 %bf.load5894, 3
  %bf.cast5896 = zext i8 %bf.clear5895 to i32
  %2294 = load %union.rec*, %union.rec** %junk, align 8
  %os25897 = bitcast %union.rec* %2294 to %struct.closure_type*
  %ou45898 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25897, i32 0, i32 4
  %osave_style5899 = bitcast %union.FOURTH_UNION* %ou45898 to %struct.STYLE*
  %osu25900 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5899, i32 0, i32 1
  %oss25901 = bitcast %union.anon.10* %osu25900 to %struct.anon.11*
  %2295 = bitcast %struct.anon.11* %oss25901 to i8*
  %2296 = trunc i32 %bf.cast5896 to i8
  %bf.load5902 = load i8, i8* %2295, align 4
  %bf.value5903 = and i8 %2296, 3
  %bf.clear5904 = and i8 %bf.load5902, -4
  %bf.set5905 = or i8 %bf.clear5904, %bf.value5903
  store i8 %bf.set5905, i8* %2295, align 4
  %bf.result.cast5906 = zext i8 %bf.value5903 to i32
  %2297 = load %union.rec*, %union.rec** %dest, align 8
  %os25907 = bitcast %union.rec* %2297 to %struct.closure_type*
  %ou45908 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25907, i32 0, i32 4
  %osave_style5909 = bitcast %union.FOURTH_UNION* %ou45908 to %struct.STYLE*
  %osu25910 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5909, i32 0, i32 1
  %oss25911 = bitcast %union.anon.10* %osu25910 to %struct.anon.11*
  %2298 = bitcast %struct.anon.11* %oss25911 to i8*
  %bf.load5912 = load i8, i8* %2298, align 4
  %bf.lshr5913 = lshr i8 %bf.load5912, 2
  %bf.clear5914 = and i8 %bf.lshr5913, 3
  %bf.cast5915 = zext i8 %bf.clear5914 to i32
  %2299 = load %union.rec*, %union.rec** %junk, align 8
  %os25916 = bitcast %union.rec* %2299 to %struct.closure_type*
  %ou45917 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25916, i32 0, i32 4
  %osave_style5918 = bitcast %union.FOURTH_UNION* %ou45917 to %struct.STYLE*
  %osu25919 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5918, i32 0, i32 1
  %oss25920 = bitcast %union.anon.10* %osu25919 to %struct.anon.11*
  %2300 = bitcast %struct.anon.11* %oss25920 to i8*
  %2301 = trunc i32 %bf.cast5915 to i8
  %bf.load5921 = load i8, i8* %2300, align 4
  %bf.value5922 = and i8 %2301, 3
  %bf.shl5923 = shl i8 %bf.value5922, 2
  %bf.clear5924 = and i8 %bf.load5921, -13
  %bf.set5925 = or i8 %bf.clear5924, %bf.shl5923
  store i8 %bf.set5925, i8* %2300, align 4
  %bf.result.cast5926 = zext i8 %bf.value5922 to i32
  %2302 = load %union.rec*, %union.rec** %dest, align 8
  %os25927 = bitcast %union.rec* %2302 to %struct.closure_type*
  %ou45928 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25927, i32 0, i32 4
  %osave_style5929 = bitcast %union.FOURTH_UNION* %ou45928 to %struct.STYLE*
  %osu25930 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5929, i32 0, i32 1
  %oss25931 = bitcast %union.anon.10* %osu25930 to %struct.anon.11*
  %2303 = bitcast %struct.anon.11* %oss25931 to i8*
  %bf.load5932 = load i8, i8* %2303, align 4
  %bf.lshr5933 = lshr i8 %bf.load5932, 4
  %bf.clear5934 = and i8 %bf.lshr5933, 7
  %bf.cast5935 = zext i8 %bf.clear5934 to i32
  %2304 = load %union.rec*, %union.rec** %junk, align 8
  %os25936 = bitcast %union.rec* %2304 to %struct.closure_type*
  %ou45937 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25936, i32 0, i32 4
  %osave_style5938 = bitcast %union.FOURTH_UNION* %ou45937 to %struct.STYLE*
  %osu25939 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5938, i32 0, i32 1
  %oss25940 = bitcast %union.anon.10* %osu25939 to %struct.anon.11*
  %2305 = bitcast %struct.anon.11* %oss25940 to i8*
  %2306 = trunc i32 %bf.cast5935 to i8
  %bf.load5941 = load i8, i8* %2305, align 4
  %bf.value5942 = and i8 %2306, 7
  %bf.shl5943 = shl i8 %bf.value5942, 4
  %bf.clear5944 = and i8 %bf.load5941, -113
  %bf.set5945 = or i8 %bf.clear5944, %bf.shl5943
  store i8 %bf.set5945, i8* %2305, align 4
  %bf.result.cast5946 = zext i8 %bf.value5942 to i32
  %2307 = load %union.rec*, %union.rec** %dest, align 8
  %os25947 = bitcast %union.rec* %2307 to %struct.closure_type*
  %ou45948 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25947, i32 0, i32 4
  %osave_style5949 = bitcast %union.FOURTH_UNION* %ou45948 to %struct.STYLE*
  %osu15950 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5949, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu15950 to %struct.anon.9*
  %2308 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load5951 = load i8, i8* %2308, align 4
  %bf.lshr5952 = lshr i8 %bf.load5951, 3
  %bf.clear5953 = and i8 %bf.lshr5952, 1
  %bf.cast5954 = zext i8 %bf.clear5953 to i32
  %2309 = load %union.rec*, %union.rec** %junk, align 8
  %os25955 = bitcast %union.rec* %2309 to %struct.closure_type*
  %ou45956 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25955, i32 0, i32 4
  %osave_style5957 = bitcast %union.FOURTH_UNION* %ou45956 to %struct.STYLE*
  %osu15958 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5957, i32 0, i32 0
  %oss15959 = bitcast %union.anon* %osu15958 to %struct.anon.9*
  %2310 = bitcast %struct.anon.9* %oss15959 to i8*
  %2311 = trunc i32 %bf.cast5954 to i8
  %bf.load5960 = load i8, i8* %2310, align 4
  %bf.value5961 = and i8 %2311, 1
  %bf.shl5962 = shl i8 %bf.value5961, 3
  %bf.clear5963 = and i8 %bf.load5960, -9
  %bf.set5964 = or i8 %bf.clear5963, %bf.shl5962
  store i8 %bf.set5964, i8* %2310, align 4
  %bf.result.cast5965 = zext i8 %bf.value5961 to i32
  %2312 = load %union.rec*, %union.rec** %dest, align 8
  %os25966 = bitcast %union.rec* %2312 to %struct.closure_type*
  %ou45967 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25966, i32 0, i32 4
  %osave_style5968 = bitcast %union.FOURTH_UNION* %ou45967 to %struct.STYLE*
  %osu25969 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5968, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu25969 to %struct.GAP*
  %2313 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load5970 = load i16, i16* %2313, align 4
  %bf.lshr5971 = lshr i16 %bf.load5970, 7
  %bf.clear5972 = and i16 %bf.lshr5971, 1
  %bf.cast5973 = zext i16 %bf.clear5972 to i32
  %2314 = load %union.rec*, %union.rec** %junk, align 8
  %os25974 = bitcast %union.rec* %2314 to %struct.closure_type*
  %ou45975 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25974, i32 0, i32 4
  %osave_style5976 = bitcast %union.FOURTH_UNION* %ou45975 to %struct.STYLE*
  %osu25977 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5976, i32 0, i32 1
  %ospace_gap5978 = bitcast %union.anon.10* %osu25977 to %struct.GAP*
  %2315 = bitcast %struct.GAP* %ospace_gap5978 to i16*
  %2316 = trunc i32 %bf.cast5973 to i16
  %bf.load5979 = load i16, i16* %2315, align 4
  %bf.value5980 = and i16 %2316, 1
  %bf.shl5981 = shl i16 %bf.value5980, 7
  %bf.clear5982 = and i16 %bf.load5979, -129
  %bf.set5983 = or i16 %bf.clear5982, %bf.shl5981
  store i16 %bf.set5983, i16* %2315, align 4
  %bf.result.cast5984 = zext i16 %bf.value5980 to i32
  %2317 = load %union.rec*, %union.rec** %dest, align 8
  %os25985 = bitcast %union.rec* %2317 to %struct.closure_type*
  %ou45986 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25985, i32 0, i32 4
  %osave_style5987 = bitcast %union.FOURTH_UNION* %ou45986 to %struct.STYLE*
  %osu25988 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5987, i32 0, i32 1
  %ospace_gap5989 = bitcast %union.anon.10* %osu25988 to %struct.GAP*
  %2318 = bitcast %struct.GAP* %ospace_gap5989 to i16*
  %bf.load5990 = load i16, i16* %2318, align 4
  %bf.lshr5991 = lshr i16 %bf.load5990, 8
  %bf.clear5992 = and i16 %bf.lshr5991, 1
  %bf.cast5993 = zext i16 %bf.clear5992 to i32
  %2319 = load %union.rec*, %union.rec** %junk, align 8
  %os25994 = bitcast %union.rec* %2319 to %struct.closure_type*
  %ou45995 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25994, i32 0, i32 4
  %osave_style5996 = bitcast %union.FOURTH_UNION* %ou45995 to %struct.STYLE*
  %osu25997 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5996, i32 0, i32 1
  %ospace_gap5998 = bitcast %union.anon.10* %osu25997 to %struct.GAP*
  %2320 = bitcast %struct.GAP* %ospace_gap5998 to i16*
  %2321 = trunc i32 %bf.cast5993 to i16
  %bf.load5999 = load i16, i16* %2320, align 4
  %bf.value6000 = and i16 %2321, 1
  %bf.shl6001 = shl i16 %bf.value6000, 8
  %bf.clear6002 = and i16 %bf.load5999, -257
  %bf.set6003 = or i16 %bf.clear6002, %bf.shl6001
  store i16 %bf.set6003, i16* %2320, align 4
  %bf.result.cast6004 = zext i16 %bf.value6000 to i32
  %2322 = load %union.rec*, %union.rec** %dest, align 8
  %os26005 = bitcast %union.rec* %2322 to %struct.closure_type*
  %ou46006 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26005, i32 0, i32 4
  %osave_style6007 = bitcast %union.FOURTH_UNION* %ou46006 to %struct.STYLE*
  %osu26008 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6007, i32 0, i32 1
  %ospace_gap6009 = bitcast %union.anon.10* %osu26008 to %struct.GAP*
  %2323 = bitcast %struct.GAP* %ospace_gap6009 to i16*
  %bf.load6010 = load i16, i16* %2323, align 4
  %bf.lshr6011 = lshr i16 %bf.load6010, 9
  %bf.clear6012 = and i16 %bf.lshr6011, 1
  %bf.cast6013 = zext i16 %bf.clear6012 to i32
  %2324 = load %union.rec*, %union.rec** %junk, align 8
  %os26014 = bitcast %union.rec* %2324 to %struct.closure_type*
  %ou46015 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26014, i32 0, i32 4
  %osave_style6016 = bitcast %union.FOURTH_UNION* %ou46015 to %struct.STYLE*
  %osu26017 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6016, i32 0, i32 1
  %ospace_gap6018 = bitcast %union.anon.10* %osu26017 to %struct.GAP*
  %2325 = bitcast %struct.GAP* %ospace_gap6018 to i16*
  %2326 = trunc i32 %bf.cast6013 to i16
  %bf.load6019 = load i16, i16* %2325, align 4
  %bf.value6020 = and i16 %2326, 1
  %bf.shl6021 = shl i16 %bf.value6020, 9
  %bf.clear6022 = and i16 %bf.load6019, -513
  %bf.set6023 = or i16 %bf.clear6022, %bf.shl6021
  store i16 %bf.set6023, i16* %2325, align 4
  %bf.result.cast6024 = zext i16 %bf.value6020 to i32
  %2327 = load %union.rec*, %union.rec** %dest, align 8
  %os26025 = bitcast %union.rec* %2327 to %struct.closure_type*
  %ou46026 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26025, i32 0, i32 4
  %osave_style6027 = bitcast %union.FOURTH_UNION* %ou46026 to %struct.STYLE*
  %osu26028 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6027, i32 0, i32 1
  %ospace_gap6029 = bitcast %union.anon.10* %osu26028 to %struct.GAP*
  %2328 = bitcast %struct.GAP* %ospace_gap6029 to i16*
  %bf.load6030 = load i16, i16* %2328, align 4
  %bf.lshr6031 = lshr i16 %bf.load6030, 10
  %bf.clear6032 = and i16 %bf.lshr6031, 7
  %bf.cast6033 = zext i16 %bf.clear6032 to i32
  %2329 = load %union.rec*, %union.rec** %junk, align 8
  %os26034 = bitcast %union.rec* %2329 to %struct.closure_type*
  %ou46035 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26034, i32 0, i32 4
  %osave_style6036 = bitcast %union.FOURTH_UNION* %ou46035 to %struct.STYLE*
  %osu26037 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6036, i32 0, i32 1
  %ospace_gap6038 = bitcast %union.anon.10* %osu26037 to %struct.GAP*
  %2330 = bitcast %struct.GAP* %ospace_gap6038 to i16*
  %2331 = trunc i32 %bf.cast6033 to i16
  %bf.load6039 = load i16, i16* %2330, align 4
  %bf.value6040 = and i16 %2331, 7
  %bf.shl6041 = shl i16 %bf.value6040, 10
  %bf.clear6042 = and i16 %bf.load6039, -7169
  %bf.set6043 = or i16 %bf.clear6042, %bf.shl6041
  store i16 %bf.set6043, i16* %2330, align 4
  %bf.result.cast6044 = zext i16 %bf.value6040 to i32
  %2332 = load %union.rec*, %union.rec** %dest, align 8
  %os26045 = bitcast %union.rec* %2332 to %struct.closure_type*
  %ou46046 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26045, i32 0, i32 4
  %osave_style6047 = bitcast %union.FOURTH_UNION* %ou46046 to %struct.STYLE*
  %osu26048 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6047, i32 0, i32 1
  %ospace_gap6049 = bitcast %union.anon.10* %osu26048 to %struct.GAP*
  %2333 = bitcast %struct.GAP* %ospace_gap6049 to i16*
  %bf.load6050 = load i16, i16* %2333, align 4
  %bf.lshr6051 = lshr i16 %bf.load6050, 13
  %bf.cast6052 = zext i16 %bf.lshr6051 to i32
  %2334 = load %union.rec*, %union.rec** %junk, align 8
  %os26053 = bitcast %union.rec* %2334 to %struct.closure_type*
  %ou46054 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26053, i32 0, i32 4
  %osave_style6055 = bitcast %union.FOURTH_UNION* %ou46054 to %struct.STYLE*
  %osu26056 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6055, i32 0, i32 1
  %ospace_gap6057 = bitcast %union.anon.10* %osu26056 to %struct.GAP*
  %2335 = bitcast %struct.GAP* %ospace_gap6057 to i16*
  %2336 = trunc i32 %bf.cast6052 to i16
  %bf.load6058 = load i16, i16* %2335, align 4
  %bf.value6059 = and i16 %2336, 7
  %bf.shl6060 = shl i16 %bf.value6059, 13
  %bf.clear6061 = and i16 %bf.load6058, 8191
  %bf.set6062 = or i16 %bf.clear6061, %bf.shl6060
  store i16 %bf.set6062, i16* %2335, align 4
  %bf.result.cast6063 = zext i16 %bf.value6059 to i32
  %2337 = load %union.rec*, %union.rec** %dest, align 8
  %os26064 = bitcast %union.rec* %2337 to %struct.closure_type*
  %ou46065 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26064, i32 0, i32 4
  %osave_style6066 = bitcast %union.FOURTH_UNION* %ou46065 to %struct.STYLE*
  %osu26067 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6066, i32 0, i32 1
  %ospace_gap6068 = bitcast %union.anon.10* %osu26067 to %struct.GAP*
  %owidth6069 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap6068, i32 0, i32 1
  %2338 = load i16, i16* %owidth6069, align 2
  %2339 = load %union.rec*, %union.rec** %junk, align 8
  %os26070 = bitcast %union.rec* %2339 to %struct.closure_type*
  %ou46071 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26070, i32 0, i32 4
  %osave_style6072 = bitcast %union.FOURTH_UNION* %ou46071 to %struct.STYLE*
  %osu26073 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6072, i32 0, i32 1
  %ospace_gap6074 = bitcast %union.anon.10* %osu26073 to %struct.GAP*
  %owidth6075 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap6074, i32 0, i32 1
  store i16 %2338, i16* %owidth6075, align 2
  %2340 = load %union.rec*, %union.rec** %dest, align 8
  %os26076 = bitcast %union.rec* %2340 to %struct.closure_type*
  %ou46077 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26076, i32 0, i32 4
  %osave_style6078 = bitcast %union.FOURTH_UNION* %ou46077 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6078, i32 0, i32 4
  %bf.load6079 = load i32, i32* %ofont, align 4
  %bf.clear6080 = and i32 %bf.load6079, 4095
  %2341 = load %union.rec*, %union.rec** %junk, align 8
  %os26081 = bitcast %union.rec* %2341 to %struct.closure_type*
  %ou46082 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26081, i32 0, i32 4
  %osave_style6083 = bitcast %union.FOURTH_UNION* %ou46082 to %struct.STYLE*
  %ofont6084 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6083, i32 0, i32 4
  %bf.load6085 = load i32, i32* %ofont6084, align 4
  %bf.value6086 = and i32 %bf.clear6080, 4095
  %bf.clear6087 = and i32 %bf.load6085, -4096
  %bf.set6088 = or i32 %bf.clear6087, %bf.value6086
  store i32 %bf.set6088, i32* %ofont6084, align 4
  %2342 = load %union.rec*, %union.rec** %dest, align 8
  %os26089 = bitcast %union.rec* %2342 to %struct.closure_type*
  %ou46090 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26089, i32 0, i32 4
  %osave_style6091 = bitcast %union.FOURTH_UNION* %ou46090 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6091, i32 0, i32 4
  %bf.load6092 = load i32, i32* %ocolour, align 4
  %bf.lshr6093 = lshr i32 %bf.load6092, 12
  %bf.clear6094 = and i32 %bf.lshr6093, 1023
  %2343 = load %union.rec*, %union.rec** %junk, align 8
  %os26095 = bitcast %union.rec* %2343 to %struct.closure_type*
  %ou46096 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26095, i32 0, i32 4
  %osave_style6097 = bitcast %union.FOURTH_UNION* %ou46096 to %struct.STYLE*
  %ocolour6098 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6097, i32 0, i32 4
  %bf.load6099 = load i32, i32* %ocolour6098, align 4
  %bf.value6100 = and i32 %bf.clear6094, 1023
  %bf.shl6101 = shl i32 %bf.value6100, 12
  %bf.clear6102 = and i32 %bf.load6099, -4190209
  %bf.set6103 = or i32 %bf.clear6102, %bf.shl6101
  store i32 %bf.set6103, i32* %ocolour6098, align 4
  %2344 = load %union.rec*, %union.rec** %dest, align 8
  %os26104 = bitcast %union.rec* %2344 to %struct.closure_type*
  %ou46105 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26104, i32 0, i32 4
  %osave_style6106 = bitcast %union.FOURTH_UNION* %ou46105 to %struct.STYLE*
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6106, i32 0, i32 4
  %bf.load6107 = load i32, i32* %ooutline, align 4
  %bf.lshr6108 = lshr i32 %bf.load6107, 22
  %bf.clear6109 = and i32 %bf.lshr6108, 3
  %2345 = load %union.rec*, %union.rec** %junk, align 8
  %os26110 = bitcast %union.rec* %2345 to %struct.closure_type*
  %ou46111 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26110, i32 0, i32 4
  %osave_style6112 = bitcast %union.FOURTH_UNION* %ou46111 to %struct.STYLE*
  %ooutline6113 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6112, i32 0, i32 4
  %bf.load6114 = load i32, i32* %ooutline6113, align 4
  %bf.value6115 = and i32 %bf.clear6109, 3
  %bf.shl6116 = shl i32 %bf.value6115, 22
  %bf.clear6117 = and i32 %bf.load6114, -12582913
  %bf.set6118 = or i32 %bf.clear6117, %bf.shl6116
  store i32 %bf.set6118, i32* %ooutline6113, align 4
  %2346 = load %union.rec*, %union.rec** %dest, align 8
  %os26119 = bitcast %union.rec* %2346 to %struct.closure_type*
  %ou46120 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26119, i32 0, i32 4
  %osave_style6121 = bitcast %union.FOURTH_UNION* %ou46120 to %struct.STYLE*
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6121, i32 0, i32 4
  %bf.load6122 = load i32, i32* %olanguage, align 4
  %bf.lshr6123 = lshr i32 %bf.load6122, 24
  %bf.clear6124 = and i32 %bf.lshr6123, 63
  %2347 = load %union.rec*, %union.rec** %junk, align 8
  %os26125 = bitcast %union.rec* %2347 to %struct.closure_type*
  %ou46126 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26125, i32 0, i32 4
  %osave_style6127 = bitcast %union.FOURTH_UNION* %ou46126 to %struct.STYLE*
  %olanguage6128 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6127, i32 0, i32 4
  %bf.load6129 = load i32, i32* %olanguage6128, align 4
  %bf.value6130 = and i32 %bf.clear6124, 63
  %bf.shl6131 = shl i32 %bf.value6130, 24
  %bf.clear6132 = and i32 %bf.load6129, -1056964609
  %bf.set6133 = or i32 %bf.clear6132, %bf.shl6131
  store i32 %bf.set6133, i32* %olanguage6128, align 4
  %2348 = load %union.rec*, %union.rec** %dest, align 8
  %os26134 = bitcast %union.rec* %2348 to %struct.closure_type*
  %ou46135 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26134, i32 0, i32 4
  %osave_style6136 = bitcast %union.FOURTH_UNION* %ou46135 to %struct.STYLE*
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6136, i32 0, i32 4
  %bf.load6137 = load i32, i32* %onobreaklast, align 4
  %bf.lshr6138 = lshr i32 %bf.load6137, 31
  %2349 = load %union.rec*, %union.rec** %junk, align 8
  %os26139 = bitcast %union.rec* %2349 to %struct.closure_type*
  %ou46140 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26139, i32 0, i32 4
  %osave_style6141 = bitcast %union.FOURTH_UNION* %ou46140 to %struct.STYLE*
  %onobreaklast6142 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6141, i32 0, i32 4
  %bf.load6143 = load i32, i32* %onobreaklast6142, align 4
  %bf.value6144 = and i32 %bf.lshr6138, 1
  %bf.shl6145 = shl i32 %bf.value6144, 31
  %bf.clear6146 = and i32 %bf.load6143, 2147483647
  %bf.set6147 = or i32 %bf.clear6146, %bf.shl6145
  store i32 %bf.set6147, i32* %onobreaklast6142, align 4
  %2350 = load %union.rec*, %union.rec** %dest, align 8
  %os26148 = bitcast %union.rec* %2350 to %struct.closure_type*
  %ou46149 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26148, i32 0, i32 4
  %osave_style6150 = bitcast %union.FOURTH_UNION* %ou46149 to %struct.STYLE*
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6150, i32 0, i32 4
  %bf.load6151 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr6152 = lshr i32 %bf.load6151, 30
  %bf.clear6153 = and i32 %bf.lshr6152, 1
  %2351 = load %union.rec*, %union.rec** %junk, align 8
  %os26154 = bitcast %union.rec* %2351 to %struct.closure_type*
  %ou46155 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26154, i32 0, i32 4
  %osave_style6156 = bitcast %union.FOURTH_UNION* %ou46155 to %struct.STYLE*
  %onobreakfirst6157 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6156, i32 0, i32 4
  %bf.load6158 = load i32, i32* %onobreakfirst6157, align 4
  %bf.value6159 = and i32 %bf.clear6153, 1
  %bf.shl6160 = shl i32 %bf.value6159, 30
  %bf.clear6161 = and i32 %bf.load6158, -1073741825
  %bf.set6162 = or i32 %bf.clear6161, %bf.shl6160
  store i32 %bf.set6162, i32* %onobreakfirst6157, align 4
  %2352 = load %union.rec*, %union.rec** %dest, align 8
  %os26163 = bitcast %union.rec* %2352 to %struct.closure_type*
  %ou46164 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26163, i32 0, i32 4
  %osave_style6165 = bitcast %union.FOURTH_UNION* %ou46164 to %struct.STYLE*
  %osu16166 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6165, i32 0, i32 0
  %oss16167 = bitcast %union.anon* %osu16166 to %struct.anon.9*
  %2353 = bitcast %struct.anon.9* %oss16167 to i8*
  %bf.load6168 = load i8, i8* %2353, align 4
  %bf.clear6169 = and i8 %bf.load6168, 1
  %bf.cast6170 = zext i8 %bf.clear6169 to i32
  %2354 = load %union.rec*, %union.rec** %junk, align 8
  %os26171 = bitcast %union.rec* %2354 to %struct.closure_type*
  %ou46172 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26171, i32 0, i32 4
  %osave_style6173 = bitcast %union.FOURTH_UNION* %ou46172 to %struct.STYLE*
  %osu16174 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6173, i32 0, i32 0
  %oss16175 = bitcast %union.anon* %osu16174 to %struct.anon.9*
  %2355 = bitcast %struct.anon.9* %oss16175 to i8*
  %2356 = trunc i32 %bf.cast6170 to i8
  %bf.load6176 = load i8, i8* %2355, align 4
  %bf.value6177 = and i8 %2356, 1
  %bf.clear6178 = and i8 %bf.load6176, -2
  %bf.set6179 = or i8 %bf.clear6178, %bf.value6177
  store i8 %bf.set6179, i8* %2355, align 4
  %bf.result.cast6180 = zext i8 %bf.value6177 to i32
  %2357 = load %union.rec*, %union.rec** %dest, align 8
  %os26181 = bitcast %union.rec* %2357 to %struct.closure_type*
  %ou46182 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26181, i32 0, i32 4
  %osave_style6183 = bitcast %union.FOURTH_UNION* %ou46182 to %struct.STYLE*
  %osu16184 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6183, i32 0, i32 0
  %oss16185 = bitcast %union.anon* %osu16184 to %struct.anon.9*
  %2358 = bitcast %struct.anon.9* %oss16185 to i8*
  %bf.load6186 = load i8, i8* %2358, align 4
  %bf.lshr6187 = lshr i8 %bf.load6186, 1
  %bf.clear6188 = and i8 %bf.lshr6187, 1
  %bf.cast6189 = zext i8 %bf.clear6188 to i32
  %2359 = load %union.rec*, %union.rec** %junk, align 8
  %os26190 = bitcast %union.rec* %2359 to %struct.closure_type*
  %ou46191 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26190, i32 0, i32 4
  %osave_style6192 = bitcast %union.FOURTH_UNION* %ou46191 to %struct.STYLE*
  %osu16193 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6192, i32 0, i32 0
  %oss16194 = bitcast %union.anon* %osu16193 to %struct.anon.9*
  %2360 = bitcast %struct.anon.9* %oss16194 to i8*
  %2361 = trunc i32 %bf.cast6189 to i8
  %bf.load6195 = load i8, i8* %2360, align 4
  %bf.value6196 = and i8 %2361, 1
  %bf.shl6197 = shl i8 %bf.value6196, 1
  %bf.clear6198 = and i8 %bf.load6195, -3
  %bf.set6199 = or i8 %bf.clear6198, %bf.shl6197
  store i8 %bf.set6199, i8* %2360, align 4
  %bf.result.cast6200 = zext i8 %bf.value6196 to i32
  %2362 = load %union.rec*, %union.rec** %dest, align 8
  %os26201 = bitcast %union.rec* %2362 to %struct.closure_type*
  %ou46202 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26201, i32 0, i32 4
  %osave_style6203 = bitcast %union.FOURTH_UNION* %ou46202 to %struct.STYLE*
  %osu16204 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6203, i32 0, i32 0
  %oss16205 = bitcast %union.anon* %osu16204 to %struct.anon.9*
  %2363 = bitcast %struct.anon.9* %oss16205 to i8*
  %bf.load6206 = load i8, i8* %2363, align 4
  %bf.lshr6207 = lshr i8 %bf.load6206, 2
  %bf.clear6208 = and i8 %bf.lshr6207, 1
  %bf.cast6209 = zext i8 %bf.clear6208 to i32
  %2364 = load %union.rec*, %union.rec** %junk, align 8
  %os26210 = bitcast %union.rec* %2364 to %struct.closure_type*
  %ou46211 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26210, i32 0, i32 4
  %osave_style6212 = bitcast %union.FOURTH_UNION* %ou46211 to %struct.STYLE*
  %osu16213 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6212, i32 0, i32 0
  %oss16214 = bitcast %union.anon* %osu16213 to %struct.anon.9*
  %2365 = bitcast %struct.anon.9* %oss16214 to i8*
  %2366 = trunc i32 %bf.cast6209 to i8
  %bf.load6215 = load i8, i8* %2365, align 4
  %bf.value6216 = and i8 %2366, 1
  %bf.shl6217 = shl i8 %bf.value6216, 2
  %bf.clear6218 = and i8 %bf.load6215, -5
  %bf.set6219 = or i8 %bf.clear6218, %bf.shl6217
  store i8 %bf.set6219, i8* %2365, align 4
  %bf.result.cast6220 = zext i8 %bf.value6216 to i32
  %2367 = load %union.rec*, %union.rec** %dest, align 8
  %os26221 = bitcast %union.rec* %2367 to %struct.closure_type*
  %ou46222 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26221, i32 0, i32 4
  %osave_style6223 = bitcast %union.FOURTH_UNION* %ou46222 to %struct.STYLE*
  %osu16224 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6223, i32 0, i32 0
  %oss16225 = bitcast %union.anon* %osu16224 to %struct.anon.9*
  %2368 = bitcast %struct.anon.9* %oss16225 to i8*
  %bf.load6226 = load i8, i8* %2368, align 4
  %bf.lshr6227 = lshr i8 %bf.load6226, 4
  %bf.clear6228 = and i8 %bf.lshr6227, 7
  %bf.cast6229 = zext i8 %bf.clear6228 to i32
  %2369 = load %union.rec*, %union.rec** %junk, align 8
  %os26230 = bitcast %union.rec* %2369 to %struct.closure_type*
  %ou46231 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26230, i32 0, i32 4
  %osave_style6232 = bitcast %union.FOURTH_UNION* %ou46231 to %struct.STYLE*
  %osu16233 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6232, i32 0, i32 0
  %oss16234 = bitcast %union.anon* %osu16233 to %struct.anon.9*
  %2370 = bitcast %struct.anon.9* %oss16234 to i8*
  %2371 = trunc i32 %bf.cast6229 to i8
  %bf.load6235 = load i8, i8* %2370, align 4
  %bf.value6236 = and i8 %2371, 7
  %bf.shl6237 = shl i8 %bf.value6236, 4
  %bf.clear6238 = and i8 %bf.load6235, -113
  %bf.set6239 = or i8 %bf.clear6238, %bf.shl6237
  store i8 %bf.set6239, i8* %2370, align 4
  %bf.result.cast6240 = zext i8 %bf.value6236 to i32
  %2372 = load %union.rec*, %union.rec** %dest, align 8
  %os26241 = bitcast %union.rec* %2372 to %struct.closure_type*
  %ou46242 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26241, i32 0, i32 4
  %osave_style6243 = bitcast %union.FOURTH_UNION* %ou46242 to %struct.STYLE*
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6243, i32 0, i32 2
  %2373 = load i16, i16* %oyunit, align 2
  %2374 = load %union.rec*, %union.rec** %junk, align 8
  %os26244 = bitcast %union.rec* %2374 to %struct.closure_type*
  %ou46245 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26244, i32 0, i32 4
  %osave_style6246 = bitcast %union.FOURTH_UNION* %ou46245 to %struct.STYLE*
  %oyunit6247 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6246, i32 0, i32 2
  store i16 %2373, i16* %oyunit6247, align 2
  %2375 = load %union.rec*, %union.rec** %dest, align 8
  %os26248 = bitcast %union.rec* %2375 to %struct.closure_type*
  %ou46249 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26248, i32 0, i32 4
  %osave_style6250 = bitcast %union.FOURTH_UNION* %ou46249 to %struct.STYLE*
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6250, i32 0, i32 3
  %2376 = load i16, i16* %ozunit, align 2
  %2377 = load %union.rec*, %union.rec** %junk, align 8
  %os26251 = bitcast %union.rec* %2377 to %struct.closure_type*
  %ou46252 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26251, i32 0, i32 4
  %osave_style6253 = bitcast %union.FOURTH_UNION* %ou46252 to %struct.STYLE*
  %ozunit6254 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6253, i32 0, i32 3
  store i16 %2376, i16* %ozunit6254, align 2
  %2378 = load %union.rec*, %union.rec** %junk, align 8
  %os26255 = bitcast %union.rec* %2378 to %struct.closure_type*
  %ou46256 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26255, i32 0, i32 4
  %osave_style6257 = bitcast %union.FOURTH_UNION* %ou46256 to %struct.STYLE*
  %osu16258 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6257, i32 0, i32 0
  %oss16259 = bitcast %union.anon* %osu16258 to %struct.anon.9*
  %2379 = bitcast %struct.anon.9* %oss16259 to i8*
  %bf.load6260 = load i8, i8* %2379, align 4
  %bf.lshr6261 = lshr i8 %bf.load6260, 2
  %bf.clear6262 = and i8 %bf.lshr6261, 1
  %bf.cast6263 = zext i8 %bf.clear6262 to i32
  %2380 = load %union.rec*, %union.rec** %junk, align 8
  %os16264 = bitcast %union.rec* %2380 to %struct.word_type*
  %ou26265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16264, i32 0, i32 2
  %os236266 = bitcast %union.SECOND_UNION* %ou26265 to %struct.anon.2*
  %oadjust_cat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236266, i32 0, i32 2
  %2381 = trunc i32 %bf.cast6263 to i16
  %bf.load6267 = load i16, i16* %oadjust_cat, align 2
  %bf.value6268 = and i16 %2381, 1
  %bf.shl6269 = shl i16 %bf.value6268, 11
  %bf.clear6270 = and i16 %bf.load6267, -2049
  %bf.set6271 = or i16 %bf.clear6270, %bf.shl6269
  store i16 %bf.set6271, i16* %oadjust_cat, align 2
  %bf.result.cast6272 = zext i16 %bf.value6268 to i32
  br label %if.end.6273

if.end.6273:                                      ; preds = %if.end.5782, %land.lhs.true.5739, %if.else.5736
  br label %if.end.6274

if.end.6274:                                      ; preds = %if.end.6273, %if.then.5735
  %2382 = load %union.rec*, %union.rec** %hd.addr, align 8
  %2383 = load %union.rec*, %union.rec** %link, align 8
  %2384 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp6275 = icmp eq %union.rec* %2383, %2384
  br i1 %cmp6275, label %cond.true.6277, label %cond.false.6278

cond.true.6277:                                   ; preds = %if.end.6274
  %2385 = load %union.rec*, %union.rec** %hd.addr, align 8
  br label %cond.end.6283

cond.false.6278:                                  ; preds = %if.end.6274
  %2386 = load %union.rec*, %union.rec** %link, align 8
  %os16279 = bitcast %union.rec* %2386 to %struct.word_type*
  %olist6280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16279, i32 0, i32 0
  %arrayidx6281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6280, i32 0, i64 0
  %osucc6282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6281, i32 0, i32 1
  %2387 = load %union.rec*, %union.rec** %osucc6282, align 8
  br label %cond.end.6283

cond.end.6283:                                    ; preds = %cond.false.6278, %cond.true.6277
  %cond6284 = phi %union.rec* [ %2385, %cond.true.6277 ], [ %2387, %cond.false.6278 ]
  %2388 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %2382, %union.rec* %cond6284, %union.rec* %2388, i32 1)
  %2389 = load %union.rec*, %union.rec** %target, align 8
  %os16285 = bitcast %union.rec* %2389 to %struct.word_type*
  %ou26286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16285, i32 0, i32 2
  %os236287 = bitcast %union.SECOND_UNION* %ou26286 to %struct.anon.2*
  %oexternal_ver6288 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236287, i32 0, i32 2
  %bf.load6289 = load i16, i16* %oexternal_ver6288, align 2
  %bf.lshr6290 = lshr i16 %bf.load6289, 4
  %bf.clear6291 = and i16 %bf.lshr6290, 1
  %bf.cast6292 = zext i16 %bf.clear6291 to i32
  %tobool6293 = icmp ne i32 %bf.cast6292, 0
  br i1 %tobool6293, label %if.end.6328, label %lor.lhs.false.6294

lor.lhs.false.6294:                               ; preds = %cond.end.6283
  %2390 = load %union.rec*, %union.rec** %target, align 8
  %os16295 = bitcast %union.rec* %2390 to %struct.word_type*
  %ou26296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16295, i32 0, i32 2
  %os236297 = bitcast %union.SECOND_UNION* %ou26296 to %struct.anon.2*
  %oexternal_hor6298 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236297, i32 0, i32 2
  %bf.load6299 = load i16, i16* %oexternal_hor6298, align 2
  %bf.lshr6300 = lshr i16 %bf.load6299, 3
  %bf.clear6301 = and i16 %bf.lshr6300, 1
  %bf.cast6302 = zext i16 %bf.clear6301 to i32
  %tobool6303 = icmp ne i32 %bf.cast6302, 0
  br i1 %tobool6303, label %if.end.6328, label %if.then.6304

if.then.6304:                                     ; preds = %lor.lhs.false.6294
  %2391 = load %union.rec*, %union.rec** %target_galley, align 8
  %os16305 = bitcast %union.rec* %2391 to %struct.word_type*
  %olist6306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16305, i32 0, i32 0
  %arrayidx6307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6306, i32 0, i64 0
  %opred6308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6307, i32 0, i32 0
  %2392 = load %union.rec*, %union.rec** %opred6308, align 8
  %os16309 = bitcast %union.rec* %2392 to %struct.word_type*
  %olist6310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16309, i32 0, i32 0
  %arrayidx6311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6310, i32 0, i64 1
  %opred6312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6311, i32 0, i32 0
  %2393 = load %union.rec*, %union.rec** %opred6312, align 8
  store %union.rec* %2393, %union.rec** %z, align 8
  br label %for.cond.6313

for.cond.6313:                                    ; preds = %for.inc.6322, %if.then.6304
  %2394 = load %union.rec*, %union.rec** %z, align 8
  %os16314 = bitcast %union.rec* %2394 to %struct.word_type*
  %ou16315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16314, i32 0, i32 1
  %os116316 = bitcast %union.FIRST_UNION* %ou16315 to %struct.anon*
  %otype6317 = getelementptr inbounds %struct.anon, %struct.anon* %os116316, i32 0, i32 0
  %2395 = load i8, i8* %otype6317, align 1
  %conv6318 = zext i8 %2395 to i32
  %cmp6319 = icmp eq i32 %conv6318, 0
  br i1 %cmp6319, label %for.body.6321, label %for.end.6327

for.body.6321:                                    ; preds = %for.cond.6313
  br label %for.inc.6322

for.inc.6322:                                     ; preds = %for.body.6321
  %2396 = load %union.rec*, %union.rec** %z, align 8
  %os16323 = bitcast %union.rec* %2396 to %struct.word_type*
  %olist6324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16323, i32 0, i32 0
  %arrayidx6325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6324, i32 0, i64 1
  %opred6326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6325, i32 0, i32 0
  %2397 = load %union.rec*, %union.rec** %opred6326, align 8
  store %union.rec* %2397, %union.rec** %z, align 8
  br label %for.cond.6313

for.end.6327:                                     ; preds = %for.cond.6313
  %2398 = load %union.rec*, %union.rec** %target, align 8
  %2399 = load %union.rec*, %union.rec** %z, align 8
  %2400 = load %union.rec*, %union.rec** %z, align 8
  call void @Interpose(%union.rec* %2398, i32 19, %union.rec* %2399, %union.rec* %2400)
  br label %if.end.6328

if.end.6328:                                      ; preds = %for.end.6327, %lor.lhs.false.6294, %cond.end.6283
  %2401 = load %union.rec*, %union.rec** %target_galley, align 8
  %2402 = load %union.rec*, %union.rec** %target_galley, align 8
  %2403 = load %union.rec*, %union.rec** %target_index, align 8
  call void @Promote(%union.rec* %2401, %union.rec* %2402, %union.rec* %2403, i32 1)
  %2404 = load %union.rec*, %union.rec** %target_galley, align 8
  store %union.rec* %2404, %union.rec** @xx_hold, align 8
  br label %while.cond.6329

while.cond.6329:                                  ; preds = %cond.end.6446, %if.end.6328
  %2405 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16330 = bitcast %union.rec* %2405 to %struct.word_type*
  %olist6331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16330, i32 0, i32 0
  %arrayidx6332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6331, i32 0, i64 1
  %osucc6333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6332, i32 0, i32 1
  %2406 = load %union.rec*, %union.rec** %osucc6333, align 8
  %2407 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp6334 = icmp ne %union.rec* %2406, %2407
  br i1 %cmp6334, label %while.body.6336, label %while.end.6456

while.body.6336:                                  ; preds = %while.cond.6329
  %2408 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16337 = bitcast %union.rec* %2408 to %struct.word_type*
  %olist6338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16337, i32 0, i32 0
  %arrayidx6339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6338, i32 0, i64 1
  %osucc6340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6339, i32 0, i32 1
  %2409 = load %union.rec*, %union.rec** %osucc6340, align 8
  store %union.rec* %2409, %union.rec** @xx_link, align 8
  %2410 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2410, %union.rec** @zz_hold, align 8
  %2411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16341 = bitcast %union.rec* %2411 to %struct.word_type*
  %olist6342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16341, i32 0, i32 0
  %arrayidx6343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6342, i32 0, i64 1
  %osucc6344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6343, i32 0, i32 1
  %2412 = load %union.rec*, %union.rec** %osucc6344, align 8
  %2413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6345 = icmp eq %union.rec* %2412, %2413
  br i1 %cmp6345, label %cond.true.6347, label %cond.false.6348

cond.true.6347:                                   ; preds = %while.body.6336
  br label %cond.end.6377

cond.false.6348:                                  ; preds = %while.body.6336
  %2414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16349 = bitcast %union.rec* %2414 to %struct.word_type*
  %olist6350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16349, i32 0, i32 0
  %arrayidx6351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6350, i32 0, i64 1
  %osucc6352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6351, i32 0, i32 1
  %2415 = load %union.rec*, %union.rec** %osucc6352, align 8
  store %union.rec* %2415, %union.rec** @zz_res, align 8
  %2416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16353 = bitcast %union.rec* %2416 to %struct.word_type*
  %olist6354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16353, i32 0, i32 0
  %arrayidx6355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6354, i32 0, i64 1
  %opred6356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6355, i32 0, i32 0
  %2417 = load %union.rec*, %union.rec** %opred6356, align 8
  %2418 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16357 = bitcast %union.rec* %2418 to %struct.word_type*
  %olist6358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16357, i32 0, i32 0
  %arrayidx6359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6358, i32 0, i64 1
  %opred6360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6359, i32 0, i32 0
  store %union.rec* %2417, %union.rec** %opred6360, align 8
  %2419 = load %union.rec*, %union.rec** @zz_res, align 8
  %2420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16361 = bitcast %union.rec* %2420 to %struct.word_type*
  %olist6362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16361, i32 0, i32 0
  %arrayidx6363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6362, i32 0, i64 1
  %opred6364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6363, i32 0, i32 0
  %2421 = load %union.rec*, %union.rec** %opred6364, align 8
  %os16365 = bitcast %union.rec* %2421 to %struct.word_type*
  %olist6366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16365, i32 0, i32 0
  %arrayidx6367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6366, i32 0, i64 1
  %osucc6368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6367, i32 0, i32 1
  store %union.rec* %2419, %union.rec** %osucc6368, align 8
  %2422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16369 = bitcast %union.rec* %2423 to %struct.word_type*
  %olist6370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16369, i32 0, i32 0
  %arrayidx6371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6370, i32 0, i64 1
  %osucc6372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6371, i32 0, i32 1
  store %union.rec* %2422, %union.rec** %osucc6372, align 8
  %2424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16373 = bitcast %union.rec* %2424 to %struct.word_type*
  %olist6374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16373, i32 0, i32 0
  %arrayidx6375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6374, i32 0, i64 1
  %opred6376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6375, i32 0, i32 0
  store %union.rec* %2422, %union.rec** %opred6376, align 8
  %2425 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6377

cond.end.6377:                                    ; preds = %cond.false.6348, %cond.true.6347
  %cond6378 = phi %union.rec* [ null, %cond.true.6347 ], [ %2425, %cond.false.6348 ]
  %2426 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2426, %union.rec** @zz_hold, align 8
  %2427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16379 = bitcast %union.rec* %2427 to %struct.word_type*
  %olist6380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16379, i32 0, i32 0
  %arrayidx6381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6380, i32 0, i64 0
  %osucc6382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6381, i32 0, i32 1
  %2428 = load %union.rec*, %union.rec** %osucc6382, align 8
  %2429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6383 = icmp eq %union.rec* %2428, %2429
  br i1 %cmp6383, label %cond.true.6385, label %cond.false.6386

cond.true.6385:                                   ; preds = %cond.end.6377
  br label %cond.end.6415

cond.false.6386:                                  ; preds = %cond.end.6377
  %2430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16387 = bitcast %union.rec* %2430 to %struct.word_type*
  %olist6388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16387, i32 0, i32 0
  %arrayidx6389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6388, i32 0, i64 0
  %osucc6390 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6389, i32 0, i32 1
  %2431 = load %union.rec*, %union.rec** %osucc6390, align 8
  store %union.rec* %2431, %union.rec** @zz_res, align 8
  %2432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16391 = bitcast %union.rec* %2432 to %struct.word_type*
  %olist6392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16391, i32 0, i32 0
  %arrayidx6393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6392, i32 0, i64 0
  %opred6394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6393, i32 0, i32 0
  %2433 = load %union.rec*, %union.rec** %opred6394, align 8
  %2434 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16395 = bitcast %union.rec* %2434 to %struct.word_type*
  %olist6396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16395, i32 0, i32 0
  %arrayidx6397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6396, i32 0, i64 0
  %opred6398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6397, i32 0, i32 0
  store %union.rec* %2433, %union.rec** %opred6398, align 8
  %2435 = load %union.rec*, %union.rec** @zz_res, align 8
  %2436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16399 = bitcast %union.rec* %2436 to %struct.word_type*
  %olist6400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16399, i32 0, i32 0
  %arrayidx6401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6400, i32 0, i64 0
  %opred6402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6401, i32 0, i32 0
  %2437 = load %union.rec*, %union.rec** %opred6402, align 8
  %os16403 = bitcast %union.rec* %2437 to %struct.word_type*
  %olist6404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16403, i32 0, i32 0
  %arrayidx6405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6404, i32 0, i64 0
  %osucc6406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6405, i32 0, i32 1
  store %union.rec* %2435, %union.rec** %osucc6406, align 8
  %2438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16407 = bitcast %union.rec* %2439 to %struct.word_type*
  %olist6408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16407, i32 0, i32 0
  %arrayidx6409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6408, i32 0, i64 0
  %osucc6410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6409, i32 0, i32 1
  store %union.rec* %2438, %union.rec** %osucc6410, align 8
  %2440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16411 = bitcast %union.rec* %2440 to %struct.word_type*
  %olist6412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16411, i32 0, i32 0
  %arrayidx6413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6412, i32 0, i64 0
  %opred6414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6413, i32 0, i32 0
  store %union.rec* %2438, %union.rec** %opred6414, align 8
  %2441 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6415

cond.end.6415:                                    ; preds = %cond.false.6386, %cond.true.6385
  %cond6416 = phi %union.rec* [ null, %cond.true.6385 ], [ %2441, %cond.false.6386 ]
  %2442 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2442, %union.rec** @zz_hold, align 8
  %2443 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2443, %union.rec** @zz_hold, align 8
  %2444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16417 = bitcast %union.rec* %2444 to %struct.word_type*
  %ou16418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16417, i32 0, i32 1
  %os116419 = bitcast %union.FIRST_UNION* %ou16418 to %struct.anon*
  %otype6420 = getelementptr inbounds %struct.anon, %struct.anon* %os116419, i32 0, i32 0
  %2445 = load i8, i8* %otype6420, align 1
  %conv6421 = zext i8 %2445 to i32
  %cmp6422 = icmp eq i32 %conv6421, 11
  br i1 %cmp6422, label %cond.true.6432, label %lor.lhs.false.6424

lor.lhs.false.6424:                               ; preds = %cond.end.6415
  %2446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16425 = bitcast %union.rec* %2446 to %struct.word_type*
  %ou16426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16425, i32 0, i32 1
  %os116427 = bitcast %union.FIRST_UNION* %ou16426 to %struct.anon*
  %otype6428 = getelementptr inbounds %struct.anon, %struct.anon* %os116427, i32 0, i32 0
  %2447 = load i8, i8* %otype6428, align 1
  %conv6429 = zext i8 %2447 to i32
  %cmp6430 = icmp eq i32 %conv6429, 12
  br i1 %cmp6430, label %cond.true.6432, label %cond.false.6438

cond.true.6432:                                   ; preds = %lor.lhs.false.6424, %cond.end.6415
  %2448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16433 = bitcast %union.rec* %2448 to %struct.word_type*
  %ou16434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16433, i32 0, i32 1
  %os116435 = bitcast %union.FIRST_UNION* %ou16434 to %struct.anon*
  %orec_size6436 = getelementptr inbounds %struct.anon, %struct.anon* %os116435, i32 0, i32 1
  %2449 = load i8, i8* %orec_size6436, align 1
  %conv6437 = zext i8 %2449 to i32
  br label %cond.end.6446

cond.false.6438:                                  ; preds = %lor.lhs.false.6424
  %2450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16439 = bitcast %union.rec* %2450 to %struct.word_type*
  %ou16440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16439, i32 0, i32 1
  %os116441 = bitcast %union.FIRST_UNION* %ou16440 to %struct.anon*
  %otype6442 = getelementptr inbounds %struct.anon, %struct.anon* %os116441, i32 0, i32 0
  %2451 = load i8, i8* %otype6442, align 1
  %idxprom6443 = zext i8 %2451 to i64
  %arrayidx6444 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6443
  %2452 = load i8, i8* %arrayidx6444, align 1
  %conv6445 = zext i8 %2452 to i32
  br label %cond.end.6446

cond.end.6446:                                    ; preds = %cond.false.6438, %cond.true.6432
  %cond6447 = phi i32 [ %conv6437, %cond.true.6432 ], [ %conv6445, %cond.false.6438 ]
  store i32 %cond6447, i32* @zz_size, align 4
  %2453 = load i32, i32* @zz_size, align 4
  %idxprom6448 = sext i32 %2453 to i64
  %arrayidx6449 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6448
  %2454 = load %union.rec*, %union.rec** %arrayidx6449, align 8
  %2455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16450 = bitcast %union.rec* %2455 to %struct.word_type*
  %olist6451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16450, i32 0, i32 0
  %arrayidx6452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6451, i32 0, i64 0
  %opred6453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6452, i32 0, i32 0
  store %union.rec* %2454, %union.rec** %opred6453, align 8
  %2456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2457 = load i32, i32* @zz_size, align 4
  %idxprom6454 = sext i32 %2457 to i64
  %arrayidx6455 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6454
  store %union.rec* %2456, %union.rec** %arrayidx6455, align 8
  br label %while.cond.6329

while.end.6456:                                   ; preds = %while.cond.6329
  br label %while.cond.6457

while.cond.6457:                                  ; preds = %cond.end.6574, %while.end.6456
  %2458 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16458 = bitcast %union.rec* %2458 to %struct.word_type*
  %olist6459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16458, i32 0, i32 0
  %arrayidx6460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6459, i32 0, i64 0
  %osucc6461 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6460, i32 0, i32 1
  %2459 = load %union.rec*, %union.rec** %osucc6461, align 8
  %2460 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp6462 = icmp ne %union.rec* %2459, %2460
  br i1 %cmp6462, label %while.body.6464, label %while.end.6584

while.body.6464:                                  ; preds = %while.cond.6457
  %2461 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16465 = bitcast %union.rec* %2461 to %struct.word_type*
  %olist6466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16465, i32 0, i32 0
  %arrayidx6467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6466, i32 0, i64 0
  %osucc6468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6467, i32 0, i32 1
  %2462 = load %union.rec*, %union.rec** %osucc6468, align 8
  store %union.rec* %2462, %union.rec** @xx_link, align 8
  %2463 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2463, %union.rec** @zz_hold, align 8
  %2464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16469 = bitcast %union.rec* %2464 to %struct.word_type*
  %olist6470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16469, i32 0, i32 0
  %arrayidx6471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6470, i32 0, i64 1
  %osucc6472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6471, i32 0, i32 1
  %2465 = load %union.rec*, %union.rec** %osucc6472, align 8
  %2466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6473 = icmp eq %union.rec* %2465, %2466
  br i1 %cmp6473, label %cond.true.6475, label %cond.false.6476

cond.true.6475:                                   ; preds = %while.body.6464
  br label %cond.end.6505

cond.false.6476:                                  ; preds = %while.body.6464
  %2467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16477 = bitcast %union.rec* %2467 to %struct.word_type*
  %olist6478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16477, i32 0, i32 0
  %arrayidx6479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6478, i32 0, i64 1
  %osucc6480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6479, i32 0, i32 1
  %2468 = load %union.rec*, %union.rec** %osucc6480, align 8
  store %union.rec* %2468, %union.rec** @zz_res, align 8
  %2469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16481 = bitcast %union.rec* %2469 to %struct.word_type*
  %olist6482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16481, i32 0, i32 0
  %arrayidx6483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6482, i32 0, i64 1
  %opred6484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6483, i32 0, i32 0
  %2470 = load %union.rec*, %union.rec** %opred6484, align 8
  %2471 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16485 = bitcast %union.rec* %2471 to %struct.word_type*
  %olist6486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16485, i32 0, i32 0
  %arrayidx6487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6486, i32 0, i64 1
  %opred6488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6487, i32 0, i32 0
  store %union.rec* %2470, %union.rec** %opred6488, align 8
  %2472 = load %union.rec*, %union.rec** @zz_res, align 8
  %2473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16489 = bitcast %union.rec* %2473 to %struct.word_type*
  %olist6490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16489, i32 0, i32 0
  %arrayidx6491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6490, i32 0, i64 1
  %opred6492 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6491, i32 0, i32 0
  %2474 = load %union.rec*, %union.rec** %opred6492, align 8
  %os16493 = bitcast %union.rec* %2474 to %struct.word_type*
  %olist6494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16493, i32 0, i32 0
  %arrayidx6495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6494, i32 0, i64 1
  %osucc6496 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6495, i32 0, i32 1
  store %union.rec* %2472, %union.rec** %osucc6496, align 8
  %2475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16497 = bitcast %union.rec* %2476 to %struct.word_type*
  %olist6498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16497, i32 0, i32 0
  %arrayidx6499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6498, i32 0, i64 1
  %osucc6500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6499, i32 0, i32 1
  store %union.rec* %2475, %union.rec** %osucc6500, align 8
  %2477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16501 = bitcast %union.rec* %2477 to %struct.word_type*
  %olist6502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16501, i32 0, i32 0
  %arrayidx6503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6502, i32 0, i64 1
  %opred6504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6503, i32 0, i32 0
  store %union.rec* %2475, %union.rec** %opred6504, align 8
  %2478 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6505

cond.end.6505:                                    ; preds = %cond.false.6476, %cond.true.6475
  %cond6506 = phi %union.rec* [ null, %cond.true.6475 ], [ %2478, %cond.false.6476 ]
  %2479 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2479, %union.rec** @zz_hold, align 8
  %2480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16507 = bitcast %union.rec* %2480 to %struct.word_type*
  %olist6508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16507, i32 0, i32 0
  %arrayidx6509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6508, i32 0, i64 0
  %osucc6510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6509, i32 0, i32 1
  %2481 = load %union.rec*, %union.rec** %osucc6510, align 8
  %2482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6511 = icmp eq %union.rec* %2481, %2482
  br i1 %cmp6511, label %cond.true.6513, label %cond.false.6514

cond.true.6513:                                   ; preds = %cond.end.6505
  br label %cond.end.6543

cond.false.6514:                                  ; preds = %cond.end.6505
  %2483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16515 = bitcast %union.rec* %2483 to %struct.word_type*
  %olist6516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16515, i32 0, i32 0
  %arrayidx6517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6516, i32 0, i64 0
  %osucc6518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6517, i32 0, i32 1
  %2484 = load %union.rec*, %union.rec** %osucc6518, align 8
  store %union.rec* %2484, %union.rec** @zz_res, align 8
  %2485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16519 = bitcast %union.rec* %2485 to %struct.word_type*
  %olist6520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16519, i32 0, i32 0
  %arrayidx6521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6520, i32 0, i64 0
  %opred6522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6521, i32 0, i32 0
  %2486 = load %union.rec*, %union.rec** %opred6522, align 8
  %2487 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16523 = bitcast %union.rec* %2487 to %struct.word_type*
  %olist6524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16523, i32 0, i32 0
  %arrayidx6525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6524, i32 0, i64 0
  %opred6526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6525, i32 0, i32 0
  store %union.rec* %2486, %union.rec** %opred6526, align 8
  %2488 = load %union.rec*, %union.rec** @zz_res, align 8
  %2489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16527 = bitcast %union.rec* %2489 to %struct.word_type*
  %olist6528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16527, i32 0, i32 0
  %arrayidx6529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6528, i32 0, i64 0
  %opred6530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6529, i32 0, i32 0
  %2490 = load %union.rec*, %union.rec** %opred6530, align 8
  %os16531 = bitcast %union.rec* %2490 to %struct.word_type*
  %olist6532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16531, i32 0, i32 0
  %arrayidx6533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6532, i32 0, i64 0
  %osucc6534 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6533, i32 0, i32 1
  store %union.rec* %2488, %union.rec** %osucc6534, align 8
  %2491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16535 = bitcast %union.rec* %2492 to %struct.word_type*
  %olist6536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16535, i32 0, i32 0
  %arrayidx6537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6536, i32 0, i64 0
  %osucc6538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6537, i32 0, i32 1
  store %union.rec* %2491, %union.rec** %osucc6538, align 8
  %2493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16539 = bitcast %union.rec* %2493 to %struct.word_type*
  %olist6540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16539, i32 0, i32 0
  %arrayidx6541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6540, i32 0, i64 0
  %opred6542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6541, i32 0, i32 0
  store %union.rec* %2491, %union.rec** %opred6542, align 8
  %2494 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6543

cond.end.6543:                                    ; preds = %cond.false.6514, %cond.true.6513
  %cond6544 = phi %union.rec* [ null, %cond.true.6513 ], [ %2494, %cond.false.6514 ]
  %2495 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2495, %union.rec** @zz_hold, align 8
  %2496 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2496, %union.rec** @zz_hold, align 8
  %2497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16545 = bitcast %union.rec* %2497 to %struct.word_type*
  %ou16546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16545, i32 0, i32 1
  %os116547 = bitcast %union.FIRST_UNION* %ou16546 to %struct.anon*
  %otype6548 = getelementptr inbounds %struct.anon, %struct.anon* %os116547, i32 0, i32 0
  %2498 = load i8, i8* %otype6548, align 1
  %conv6549 = zext i8 %2498 to i32
  %cmp6550 = icmp eq i32 %conv6549, 11
  br i1 %cmp6550, label %cond.true.6560, label %lor.lhs.false.6552

lor.lhs.false.6552:                               ; preds = %cond.end.6543
  %2499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16553 = bitcast %union.rec* %2499 to %struct.word_type*
  %ou16554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16553, i32 0, i32 1
  %os116555 = bitcast %union.FIRST_UNION* %ou16554 to %struct.anon*
  %otype6556 = getelementptr inbounds %struct.anon, %struct.anon* %os116555, i32 0, i32 0
  %2500 = load i8, i8* %otype6556, align 1
  %conv6557 = zext i8 %2500 to i32
  %cmp6558 = icmp eq i32 %conv6557, 12
  br i1 %cmp6558, label %cond.true.6560, label %cond.false.6566

cond.true.6560:                                   ; preds = %lor.lhs.false.6552, %cond.end.6543
  %2501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16561 = bitcast %union.rec* %2501 to %struct.word_type*
  %ou16562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16561, i32 0, i32 1
  %os116563 = bitcast %union.FIRST_UNION* %ou16562 to %struct.anon*
  %orec_size6564 = getelementptr inbounds %struct.anon, %struct.anon* %os116563, i32 0, i32 1
  %2502 = load i8, i8* %orec_size6564, align 1
  %conv6565 = zext i8 %2502 to i32
  br label %cond.end.6574

cond.false.6566:                                  ; preds = %lor.lhs.false.6552
  %2503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16567 = bitcast %union.rec* %2503 to %struct.word_type*
  %ou16568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16567, i32 0, i32 1
  %os116569 = bitcast %union.FIRST_UNION* %ou16568 to %struct.anon*
  %otype6570 = getelementptr inbounds %struct.anon, %struct.anon* %os116569, i32 0, i32 0
  %2504 = load i8, i8* %otype6570, align 1
  %idxprom6571 = zext i8 %2504 to i64
  %arrayidx6572 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6571
  %2505 = load i8, i8* %arrayidx6572, align 1
  %conv6573 = zext i8 %2505 to i32
  br label %cond.end.6574

cond.end.6574:                                    ; preds = %cond.false.6566, %cond.true.6560
  %cond6575 = phi i32 [ %conv6565, %cond.true.6560 ], [ %conv6573, %cond.false.6566 ]
  store i32 %cond6575, i32* @zz_size, align 4
  %2506 = load i32, i32* @zz_size, align 4
  %idxprom6576 = sext i32 %2506 to i64
  %arrayidx6577 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6576
  %2507 = load %union.rec*, %union.rec** %arrayidx6577, align 8
  %2508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16578 = bitcast %union.rec* %2508 to %struct.word_type*
  %olist6579 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16578, i32 0, i32 0
  %arrayidx6580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6579, i32 0, i64 0
  %opred6581 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6580, i32 0, i32 0
  store %union.rec* %2507, %union.rec** %opred6581, align 8
  %2509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2510 = load i32, i32* @zz_size, align 4
  %idxprom6582 = sext i32 %2510 to i64
  %arrayidx6583 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6582
  store %union.rec* %2509, %union.rec** %arrayidx6583, align 8
  br label %while.cond.6457

while.end.6584:                                   ; preds = %while.cond.6457
  %2511 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2511, %union.rec** @zz_hold, align 8
  %2512 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2512, %union.rec** @zz_hold, align 8
  %2513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16585 = bitcast %union.rec* %2513 to %struct.word_type*
  %ou16586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16585, i32 0, i32 1
  %os116587 = bitcast %union.FIRST_UNION* %ou16586 to %struct.anon*
  %otype6588 = getelementptr inbounds %struct.anon, %struct.anon* %os116587, i32 0, i32 0
  %2514 = load i8, i8* %otype6588, align 1
  %conv6589 = zext i8 %2514 to i32
  %cmp6590 = icmp eq i32 %conv6589, 11
  br i1 %cmp6590, label %cond.true.6600, label %lor.lhs.false.6592

lor.lhs.false.6592:                               ; preds = %while.end.6584
  %2515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16593 = bitcast %union.rec* %2515 to %struct.word_type*
  %ou16594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16593, i32 0, i32 1
  %os116595 = bitcast %union.FIRST_UNION* %ou16594 to %struct.anon*
  %otype6596 = getelementptr inbounds %struct.anon, %struct.anon* %os116595, i32 0, i32 0
  %2516 = load i8, i8* %otype6596, align 1
  %conv6597 = zext i8 %2516 to i32
  %cmp6598 = icmp eq i32 %conv6597, 12
  br i1 %cmp6598, label %cond.true.6600, label %cond.false.6606

cond.true.6600:                                   ; preds = %lor.lhs.false.6592, %while.end.6584
  %2517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16601 = bitcast %union.rec* %2517 to %struct.word_type*
  %ou16602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16601, i32 0, i32 1
  %os116603 = bitcast %union.FIRST_UNION* %ou16602 to %struct.anon*
  %orec_size6604 = getelementptr inbounds %struct.anon, %struct.anon* %os116603, i32 0, i32 1
  %2518 = load i8, i8* %orec_size6604, align 1
  %conv6605 = zext i8 %2518 to i32
  br label %cond.end.6614

cond.false.6606:                                  ; preds = %lor.lhs.false.6592
  %2519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16607 = bitcast %union.rec* %2519 to %struct.word_type*
  %ou16608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16607, i32 0, i32 1
  %os116609 = bitcast %union.FIRST_UNION* %ou16608 to %struct.anon*
  %otype6610 = getelementptr inbounds %struct.anon, %struct.anon* %os116609, i32 0, i32 0
  %2520 = load i8, i8* %otype6610, align 1
  %idxprom6611 = zext i8 %2520 to i64
  %arrayidx6612 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6611
  %2521 = load i8, i8* %arrayidx6612, align 1
  %conv6613 = zext i8 %2521 to i32
  br label %cond.end.6614

cond.end.6614:                                    ; preds = %cond.false.6606, %cond.true.6600
  %cond6615 = phi i32 [ %conv6605, %cond.true.6600 ], [ %conv6613, %cond.false.6606 ]
  store i32 %cond6615, i32* @zz_size, align 4
  %2522 = load i32, i32* @zz_size, align 4
  %idxprom6616 = sext i32 %2522 to i64
  %arrayidx6617 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6616
  %2523 = load %union.rec*, %union.rec** %arrayidx6617, align 8
  %2524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16618 = bitcast %union.rec* %2524 to %struct.word_type*
  %olist6619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16618, i32 0, i32 0
  %arrayidx6620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6619, i32 0, i64 0
  %opred6621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6620, i32 0, i32 0
  store %union.rec* %2523, %union.rec** %opred6621, align 8
  %2525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2526 = load i32, i32* @zz_size, align 4
  %idxprom6622 = sext i32 %2526 to i64
  %arrayidx6623 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6622
  store %union.rec* %2525, %union.rec** %arrayidx6623, align 8
  %2527 = load %union.rec*, %union.rec** %target_index, align 8
  %os16624 = bitcast %union.rec* %2527 to %struct.word_type*
  %olist6625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16624, i32 0, i32 0
  %arrayidx6626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6625, i32 0, i64 0
  %osucc6627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6626, i32 0, i32 1
  %2528 = load %union.rec*, %union.rec** %osucc6627, align 8
  %2529 = load %union.rec*, %union.rec** %target_index, align 8
  %cmp6628 = icmp eq %union.rec* %2528, %2529
  br i1 %cmp6628, label %if.end.6632, label %if.then.6630

if.then.6630:                                     ; preds = %cond.end.6614
  %2530 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6631 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2530, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.6632

if.end.6632:                                      ; preds = %if.then.6630, %cond.end.6614
  %2531 = load %union.rec*, %union.rec** %target_index, align 8
  %os16633 = bitcast %union.rec* %2531 to %struct.word_type*
  %ou26634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16633, i32 0, i32 2
  %os236635 = bitcast %union.SECOND_UNION* %ou26634 to %struct.anon.2*
  %oblocked6636 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236635, i32 0, i32 2
  %bf.load6637 = load i16, i16* %oblocked6636, align 2
  %bf.lshr6638 = lshr i16 %bf.load6637, 5
  %bf.clear6639 = and i16 %bf.lshr6638, 1
  %bf.cast6640 = zext i16 %bf.clear6639 to i32
  %tobool6641 = icmp ne i32 %bf.cast6640, 0
  br i1 %tobool6641, label %if.then.6642, label %if.end.6650

if.then.6642:                                     ; preds = %if.end.6632
  %2532 = load %union.rec*, %union.rec** %dest_index, align 8
  %os16643 = bitcast %union.rec* %2532 to %struct.word_type*
  %ou26644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16643, i32 0, i32 2
  %os236645 = bitcast %union.SECOND_UNION* %ou26644 to %struct.anon.2*
  %oblocked6646 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236645, i32 0, i32 2
  %bf.load6647 = load i16, i16* %oblocked6646, align 2
  %bf.clear6648 = and i16 %bf.load6647, -33
  %bf.set6649 = or i16 %bf.clear6648, 32
  store i16 %bf.set6649, i16* %oblocked6646, align 2
  br label %if.end.6650

if.end.6650:                                      ; preds = %if.then.6642, %if.end.6632
  %2533 = load %union.rec*, %union.rec** %target_index, align 8
  store %union.rec* %2533, %union.rec** @xx_hold, align 8
  br label %while.cond.6651

while.cond.6651:                                  ; preds = %cond.end.6768, %if.end.6650
  %2534 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16652 = bitcast %union.rec* %2534 to %struct.word_type*
  %olist6653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16652, i32 0, i32 0
  %arrayidx6654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6653, i32 0, i64 1
  %osucc6655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6654, i32 0, i32 1
  %2535 = load %union.rec*, %union.rec** %osucc6655, align 8
  %2536 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp6656 = icmp ne %union.rec* %2535, %2536
  br i1 %cmp6656, label %while.body.6658, label %while.end.6778

while.body.6658:                                  ; preds = %while.cond.6651
  %2537 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16659 = bitcast %union.rec* %2537 to %struct.word_type*
  %olist6660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16659, i32 0, i32 0
  %arrayidx6661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6660, i32 0, i64 1
  %osucc6662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6661, i32 0, i32 1
  %2538 = load %union.rec*, %union.rec** %osucc6662, align 8
  store %union.rec* %2538, %union.rec** @xx_link, align 8
  %2539 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2539, %union.rec** @zz_hold, align 8
  %2540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16663 = bitcast %union.rec* %2540 to %struct.word_type*
  %olist6664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16663, i32 0, i32 0
  %arrayidx6665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6664, i32 0, i64 1
  %osucc6666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6665, i32 0, i32 1
  %2541 = load %union.rec*, %union.rec** %osucc6666, align 8
  %2542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6667 = icmp eq %union.rec* %2541, %2542
  br i1 %cmp6667, label %cond.true.6669, label %cond.false.6670

cond.true.6669:                                   ; preds = %while.body.6658
  br label %cond.end.6699

cond.false.6670:                                  ; preds = %while.body.6658
  %2543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16671 = bitcast %union.rec* %2543 to %struct.word_type*
  %olist6672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16671, i32 0, i32 0
  %arrayidx6673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6672, i32 0, i64 1
  %osucc6674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6673, i32 0, i32 1
  %2544 = load %union.rec*, %union.rec** %osucc6674, align 8
  store %union.rec* %2544, %union.rec** @zz_res, align 8
  %2545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16675 = bitcast %union.rec* %2545 to %struct.word_type*
  %olist6676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16675, i32 0, i32 0
  %arrayidx6677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6676, i32 0, i64 1
  %opred6678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6677, i32 0, i32 0
  %2546 = load %union.rec*, %union.rec** %opred6678, align 8
  %2547 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16679 = bitcast %union.rec* %2547 to %struct.word_type*
  %olist6680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16679, i32 0, i32 0
  %arrayidx6681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6680, i32 0, i64 1
  %opred6682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6681, i32 0, i32 0
  store %union.rec* %2546, %union.rec** %opred6682, align 8
  %2548 = load %union.rec*, %union.rec** @zz_res, align 8
  %2549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16683 = bitcast %union.rec* %2549 to %struct.word_type*
  %olist6684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16683, i32 0, i32 0
  %arrayidx6685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6684, i32 0, i64 1
  %opred6686 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6685, i32 0, i32 0
  %2550 = load %union.rec*, %union.rec** %opred6686, align 8
  %os16687 = bitcast %union.rec* %2550 to %struct.word_type*
  %olist6688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16687, i32 0, i32 0
  %arrayidx6689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6688, i32 0, i64 1
  %osucc6690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6689, i32 0, i32 1
  store %union.rec* %2548, %union.rec** %osucc6690, align 8
  %2551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16691 = bitcast %union.rec* %2552 to %struct.word_type*
  %olist6692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16691, i32 0, i32 0
  %arrayidx6693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6692, i32 0, i64 1
  %osucc6694 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6693, i32 0, i32 1
  store %union.rec* %2551, %union.rec** %osucc6694, align 8
  %2553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16695 = bitcast %union.rec* %2553 to %struct.word_type*
  %olist6696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16695, i32 0, i32 0
  %arrayidx6697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6696, i32 0, i64 1
  %opred6698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6697, i32 0, i32 0
  store %union.rec* %2551, %union.rec** %opred6698, align 8
  %2554 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6699

cond.end.6699:                                    ; preds = %cond.false.6670, %cond.true.6669
  %cond6700 = phi %union.rec* [ null, %cond.true.6669 ], [ %2554, %cond.false.6670 ]
  %2555 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2555, %union.rec** @zz_hold, align 8
  %2556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16701 = bitcast %union.rec* %2556 to %struct.word_type*
  %olist6702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16701, i32 0, i32 0
  %arrayidx6703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6702, i32 0, i64 0
  %osucc6704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6703, i32 0, i32 1
  %2557 = load %union.rec*, %union.rec** %osucc6704, align 8
  %2558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6705 = icmp eq %union.rec* %2557, %2558
  br i1 %cmp6705, label %cond.true.6707, label %cond.false.6708

cond.true.6707:                                   ; preds = %cond.end.6699
  br label %cond.end.6737

cond.false.6708:                                  ; preds = %cond.end.6699
  %2559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16709 = bitcast %union.rec* %2559 to %struct.word_type*
  %olist6710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16709, i32 0, i32 0
  %arrayidx6711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6710, i32 0, i64 0
  %osucc6712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6711, i32 0, i32 1
  %2560 = load %union.rec*, %union.rec** %osucc6712, align 8
  store %union.rec* %2560, %union.rec** @zz_res, align 8
  %2561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16713 = bitcast %union.rec* %2561 to %struct.word_type*
  %olist6714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16713, i32 0, i32 0
  %arrayidx6715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6714, i32 0, i64 0
  %opred6716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6715, i32 0, i32 0
  %2562 = load %union.rec*, %union.rec** %opred6716, align 8
  %2563 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16717 = bitcast %union.rec* %2563 to %struct.word_type*
  %olist6718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16717, i32 0, i32 0
  %arrayidx6719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6718, i32 0, i64 0
  %opred6720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6719, i32 0, i32 0
  store %union.rec* %2562, %union.rec** %opred6720, align 8
  %2564 = load %union.rec*, %union.rec** @zz_res, align 8
  %2565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16721 = bitcast %union.rec* %2565 to %struct.word_type*
  %olist6722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16721, i32 0, i32 0
  %arrayidx6723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6722, i32 0, i64 0
  %opred6724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6723, i32 0, i32 0
  %2566 = load %union.rec*, %union.rec** %opred6724, align 8
  %os16725 = bitcast %union.rec* %2566 to %struct.word_type*
  %olist6726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16725, i32 0, i32 0
  %arrayidx6727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6726, i32 0, i64 0
  %osucc6728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6727, i32 0, i32 1
  store %union.rec* %2564, %union.rec** %osucc6728, align 8
  %2567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16729 = bitcast %union.rec* %2568 to %struct.word_type*
  %olist6730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16729, i32 0, i32 0
  %arrayidx6731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6730, i32 0, i64 0
  %osucc6732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6731, i32 0, i32 1
  store %union.rec* %2567, %union.rec** %osucc6732, align 8
  %2569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16733 = bitcast %union.rec* %2569 to %struct.word_type*
  %olist6734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16733, i32 0, i32 0
  %arrayidx6735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6734, i32 0, i64 0
  %opred6736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6735, i32 0, i32 0
  store %union.rec* %2567, %union.rec** %opred6736, align 8
  %2570 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6737

cond.end.6737:                                    ; preds = %cond.false.6708, %cond.true.6707
  %cond6738 = phi %union.rec* [ null, %cond.true.6707 ], [ %2570, %cond.false.6708 ]
  %2571 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2571, %union.rec** @zz_hold, align 8
  %2572 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2572, %union.rec** @zz_hold, align 8
  %2573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16739 = bitcast %union.rec* %2573 to %struct.word_type*
  %ou16740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16739, i32 0, i32 1
  %os116741 = bitcast %union.FIRST_UNION* %ou16740 to %struct.anon*
  %otype6742 = getelementptr inbounds %struct.anon, %struct.anon* %os116741, i32 0, i32 0
  %2574 = load i8, i8* %otype6742, align 1
  %conv6743 = zext i8 %2574 to i32
  %cmp6744 = icmp eq i32 %conv6743, 11
  br i1 %cmp6744, label %cond.true.6754, label %lor.lhs.false.6746

lor.lhs.false.6746:                               ; preds = %cond.end.6737
  %2575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16747 = bitcast %union.rec* %2575 to %struct.word_type*
  %ou16748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16747, i32 0, i32 1
  %os116749 = bitcast %union.FIRST_UNION* %ou16748 to %struct.anon*
  %otype6750 = getelementptr inbounds %struct.anon, %struct.anon* %os116749, i32 0, i32 0
  %2576 = load i8, i8* %otype6750, align 1
  %conv6751 = zext i8 %2576 to i32
  %cmp6752 = icmp eq i32 %conv6751, 12
  br i1 %cmp6752, label %cond.true.6754, label %cond.false.6760

cond.true.6754:                                   ; preds = %lor.lhs.false.6746, %cond.end.6737
  %2577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16755 = bitcast %union.rec* %2577 to %struct.word_type*
  %ou16756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16755, i32 0, i32 1
  %os116757 = bitcast %union.FIRST_UNION* %ou16756 to %struct.anon*
  %orec_size6758 = getelementptr inbounds %struct.anon, %struct.anon* %os116757, i32 0, i32 1
  %2578 = load i8, i8* %orec_size6758, align 1
  %conv6759 = zext i8 %2578 to i32
  br label %cond.end.6768

cond.false.6760:                                  ; preds = %lor.lhs.false.6746
  %2579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16761 = bitcast %union.rec* %2579 to %struct.word_type*
  %ou16762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16761, i32 0, i32 1
  %os116763 = bitcast %union.FIRST_UNION* %ou16762 to %struct.anon*
  %otype6764 = getelementptr inbounds %struct.anon, %struct.anon* %os116763, i32 0, i32 0
  %2580 = load i8, i8* %otype6764, align 1
  %idxprom6765 = zext i8 %2580 to i64
  %arrayidx6766 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6765
  %2581 = load i8, i8* %arrayidx6766, align 1
  %conv6767 = zext i8 %2581 to i32
  br label %cond.end.6768

cond.end.6768:                                    ; preds = %cond.false.6760, %cond.true.6754
  %cond6769 = phi i32 [ %conv6759, %cond.true.6754 ], [ %conv6767, %cond.false.6760 ]
  store i32 %cond6769, i32* @zz_size, align 4
  %2582 = load i32, i32* @zz_size, align 4
  %idxprom6770 = sext i32 %2582 to i64
  %arrayidx6771 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6770
  %2583 = load %union.rec*, %union.rec** %arrayidx6771, align 8
  %2584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16772 = bitcast %union.rec* %2584 to %struct.word_type*
  %olist6773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16772, i32 0, i32 0
  %arrayidx6774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6773, i32 0, i64 0
  %opred6775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6774, i32 0, i32 0
  store %union.rec* %2583, %union.rec** %opred6775, align 8
  %2585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2586 = load i32, i32* @zz_size, align 4
  %idxprom6776 = sext i32 %2586 to i64
  %arrayidx6777 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6776
  store %union.rec* %2585, %union.rec** %arrayidx6777, align 8
  br label %while.cond.6651

while.end.6778:                                   ; preds = %while.cond.6651
  br label %while.cond.6779

while.cond.6779:                                  ; preds = %cond.end.6896, %while.end.6778
  %2587 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16780 = bitcast %union.rec* %2587 to %struct.word_type*
  %olist6781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16780, i32 0, i32 0
  %arrayidx6782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6781, i32 0, i64 0
  %osucc6783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6782, i32 0, i32 1
  %2588 = load %union.rec*, %union.rec** %osucc6783, align 8
  %2589 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp6784 = icmp ne %union.rec* %2588, %2589
  br i1 %cmp6784, label %while.body.6786, label %while.end.6906

while.body.6786:                                  ; preds = %while.cond.6779
  %2590 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16787 = bitcast %union.rec* %2590 to %struct.word_type*
  %olist6788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16787, i32 0, i32 0
  %arrayidx6789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6788, i32 0, i64 0
  %osucc6790 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6789, i32 0, i32 1
  %2591 = load %union.rec*, %union.rec** %osucc6790, align 8
  store %union.rec* %2591, %union.rec** @xx_link, align 8
  %2592 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2592, %union.rec** @zz_hold, align 8
  %2593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16791 = bitcast %union.rec* %2593 to %struct.word_type*
  %olist6792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16791, i32 0, i32 0
  %arrayidx6793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6792, i32 0, i64 1
  %osucc6794 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6793, i32 0, i32 1
  %2594 = load %union.rec*, %union.rec** %osucc6794, align 8
  %2595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6795 = icmp eq %union.rec* %2594, %2595
  br i1 %cmp6795, label %cond.true.6797, label %cond.false.6798

cond.true.6797:                                   ; preds = %while.body.6786
  br label %cond.end.6827

cond.false.6798:                                  ; preds = %while.body.6786
  %2596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16799 = bitcast %union.rec* %2596 to %struct.word_type*
  %olist6800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16799, i32 0, i32 0
  %arrayidx6801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6800, i32 0, i64 1
  %osucc6802 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6801, i32 0, i32 1
  %2597 = load %union.rec*, %union.rec** %osucc6802, align 8
  store %union.rec* %2597, %union.rec** @zz_res, align 8
  %2598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16803 = bitcast %union.rec* %2598 to %struct.word_type*
  %olist6804 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16803, i32 0, i32 0
  %arrayidx6805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6804, i32 0, i64 1
  %opred6806 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6805, i32 0, i32 0
  %2599 = load %union.rec*, %union.rec** %opred6806, align 8
  %2600 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16807 = bitcast %union.rec* %2600 to %struct.word_type*
  %olist6808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16807, i32 0, i32 0
  %arrayidx6809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6808, i32 0, i64 1
  %opred6810 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6809, i32 0, i32 0
  store %union.rec* %2599, %union.rec** %opred6810, align 8
  %2601 = load %union.rec*, %union.rec** @zz_res, align 8
  %2602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16811 = bitcast %union.rec* %2602 to %struct.word_type*
  %olist6812 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16811, i32 0, i32 0
  %arrayidx6813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6812, i32 0, i64 1
  %opred6814 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6813, i32 0, i32 0
  %2603 = load %union.rec*, %union.rec** %opred6814, align 8
  %os16815 = bitcast %union.rec* %2603 to %struct.word_type*
  %olist6816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16815, i32 0, i32 0
  %arrayidx6817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6816, i32 0, i64 1
  %osucc6818 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6817, i32 0, i32 1
  store %union.rec* %2601, %union.rec** %osucc6818, align 8
  %2604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16819 = bitcast %union.rec* %2605 to %struct.word_type*
  %olist6820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16819, i32 0, i32 0
  %arrayidx6821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6820, i32 0, i64 1
  %osucc6822 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6821, i32 0, i32 1
  store %union.rec* %2604, %union.rec** %osucc6822, align 8
  %2606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16823 = bitcast %union.rec* %2606 to %struct.word_type*
  %olist6824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16823, i32 0, i32 0
  %arrayidx6825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6824, i32 0, i64 1
  %opred6826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6825, i32 0, i32 0
  store %union.rec* %2604, %union.rec** %opred6826, align 8
  %2607 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6827

cond.end.6827:                                    ; preds = %cond.false.6798, %cond.true.6797
  %cond6828 = phi %union.rec* [ null, %cond.true.6797 ], [ %2607, %cond.false.6798 ]
  %2608 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2608, %union.rec** @zz_hold, align 8
  %2609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16829 = bitcast %union.rec* %2609 to %struct.word_type*
  %olist6830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16829, i32 0, i32 0
  %arrayidx6831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6830, i32 0, i64 0
  %osucc6832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6831, i32 0, i32 1
  %2610 = load %union.rec*, %union.rec** %osucc6832, align 8
  %2611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6833 = icmp eq %union.rec* %2610, %2611
  br i1 %cmp6833, label %cond.true.6835, label %cond.false.6836

cond.true.6835:                                   ; preds = %cond.end.6827
  br label %cond.end.6865

cond.false.6836:                                  ; preds = %cond.end.6827
  %2612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16837 = bitcast %union.rec* %2612 to %struct.word_type*
  %olist6838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16837, i32 0, i32 0
  %arrayidx6839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6838, i32 0, i64 0
  %osucc6840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6839, i32 0, i32 1
  %2613 = load %union.rec*, %union.rec** %osucc6840, align 8
  store %union.rec* %2613, %union.rec** @zz_res, align 8
  %2614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16841 = bitcast %union.rec* %2614 to %struct.word_type*
  %olist6842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16841, i32 0, i32 0
  %arrayidx6843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6842, i32 0, i64 0
  %opred6844 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6843, i32 0, i32 0
  %2615 = load %union.rec*, %union.rec** %opred6844, align 8
  %2616 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16845 = bitcast %union.rec* %2616 to %struct.word_type*
  %olist6846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16845, i32 0, i32 0
  %arrayidx6847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6846, i32 0, i64 0
  %opred6848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6847, i32 0, i32 0
  store %union.rec* %2615, %union.rec** %opred6848, align 8
  %2617 = load %union.rec*, %union.rec** @zz_res, align 8
  %2618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16849 = bitcast %union.rec* %2618 to %struct.word_type*
  %olist6850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16849, i32 0, i32 0
  %arrayidx6851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6850, i32 0, i64 0
  %opred6852 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6851, i32 0, i32 0
  %2619 = load %union.rec*, %union.rec** %opred6852, align 8
  %os16853 = bitcast %union.rec* %2619 to %struct.word_type*
  %olist6854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16853, i32 0, i32 0
  %arrayidx6855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6854, i32 0, i64 0
  %osucc6856 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6855, i32 0, i32 1
  store %union.rec* %2617, %union.rec** %osucc6856, align 8
  %2620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16857 = bitcast %union.rec* %2621 to %struct.word_type*
  %olist6858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16857, i32 0, i32 0
  %arrayidx6859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6858, i32 0, i64 0
  %osucc6860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6859, i32 0, i32 1
  store %union.rec* %2620, %union.rec** %osucc6860, align 8
  %2622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16861 = bitcast %union.rec* %2622 to %struct.word_type*
  %olist6862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16861, i32 0, i32 0
  %arrayidx6863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6862, i32 0, i64 0
  %opred6864 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6863, i32 0, i32 0
  store %union.rec* %2620, %union.rec** %opred6864, align 8
  %2623 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6865

cond.end.6865:                                    ; preds = %cond.false.6836, %cond.true.6835
  %cond6866 = phi %union.rec* [ null, %cond.true.6835 ], [ %2623, %cond.false.6836 ]
  %2624 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2624, %union.rec** @zz_hold, align 8
  %2625 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2625, %union.rec** @zz_hold, align 8
  %2626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16867 = bitcast %union.rec* %2626 to %struct.word_type*
  %ou16868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16867, i32 0, i32 1
  %os116869 = bitcast %union.FIRST_UNION* %ou16868 to %struct.anon*
  %otype6870 = getelementptr inbounds %struct.anon, %struct.anon* %os116869, i32 0, i32 0
  %2627 = load i8, i8* %otype6870, align 1
  %conv6871 = zext i8 %2627 to i32
  %cmp6872 = icmp eq i32 %conv6871, 11
  br i1 %cmp6872, label %cond.true.6882, label %lor.lhs.false.6874

lor.lhs.false.6874:                               ; preds = %cond.end.6865
  %2628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16875 = bitcast %union.rec* %2628 to %struct.word_type*
  %ou16876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16875, i32 0, i32 1
  %os116877 = bitcast %union.FIRST_UNION* %ou16876 to %struct.anon*
  %otype6878 = getelementptr inbounds %struct.anon, %struct.anon* %os116877, i32 0, i32 0
  %2629 = load i8, i8* %otype6878, align 1
  %conv6879 = zext i8 %2629 to i32
  %cmp6880 = icmp eq i32 %conv6879, 12
  br i1 %cmp6880, label %cond.true.6882, label %cond.false.6888

cond.true.6882:                                   ; preds = %lor.lhs.false.6874, %cond.end.6865
  %2630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16883 = bitcast %union.rec* %2630 to %struct.word_type*
  %ou16884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16883, i32 0, i32 1
  %os116885 = bitcast %union.FIRST_UNION* %ou16884 to %struct.anon*
  %orec_size6886 = getelementptr inbounds %struct.anon, %struct.anon* %os116885, i32 0, i32 1
  %2631 = load i8, i8* %orec_size6886, align 1
  %conv6887 = zext i8 %2631 to i32
  br label %cond.end.6896

cond.false.6888:                                  ; preds = %lor.lhs.false.6874
  %2632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16889 = bitcast %union.rec* %2632 to %struct.word_type*
  %ou16890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16889, i32 0, i32 1
  %os116891 = bitcast %union.FIRST_UNION* %ou16890 to %struct.anon*
  %otype6892 = getelementptr inbounds %struct.anon, %struct.anon* %os116891, i32 0, i32 0
  %2633 = load i8, i8* %otype6892, align 1
  %idxprom6893 = zext i8 %2633 to i64
  %arrayidx6894 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6893
  %2634 = load i8, i8* %arrayidx6894, align 1
  %conv6895 = zext i8 %2634 to i32
  br label %cond.end.6896

cond.end.6896:                                    ; preds = %cond.false.6888, %cond.true.6882
  %cond6897 = phi i32 [ %conv6887, %cond.true.6882 ], [ %conv6895, %cond.false.6888 ]
  store i32 %cond6897, i32* @zz_size, align 4
  %2635 = load i32, i32* @zz_size, align 4
  %idxprom6898 = sext i32 %2635 to i64
  %arrayidx6899 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6898
  %2636 = load %union.rec*, %union.rec** %arrayidx6899, align 8
  %2637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16900 = bitcast %union.rec* %2637 to %struct.word_type*
  %olist6901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16900, i32 0, i32 0
  %arrayidx6902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6901, i32 0, i64 0
  %opred6903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6902, i32 0, i32 0
  store %union.rec* %2636, %union.rec** %opred6903, align 8
  %2638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2639 = load i32, i32* @zz_size, align 4
  %idxprom6904 = sext i32 %2639 to i64
  %arrayidx6905 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6904
  store %union.rec* %2638, %union.rec** %arrayidx6905, align 8
  br label %while.cond.6779

while.end.6906:                                   ; preds = %while.cond.6779
  %2640 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2640, %union.rec** @zz_hold, align 8
  %2641 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2641, %union.rec** @zz_hold, align 8
  %2642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16907 = bitcast %union.rec* %2642 to %struct.word_type*
  %ou16908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16907, i32 0, i32 1
  %os116909 = bitcast %union.FIRST_UNION* %ou16908 to %struct.anon*
  %otype6910 = getelementptr inbounds %struct.anon, %struct.anon* %os116909, i32 0, i32 0
  %2643 = load i8, i8* %otype6910, align 1
  %conv6911 = zext i8 %2643 to i32
  %cmp6912 = icmp eq i32 %conv6911, 11
  br i1 %cmp6912, label %cond.true.6922, label %lor.lhs.false.6914

lor.lhs.false.6914:                               ; preds = %while.end.6906
  %2644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16915 = bitcast %union.rec* %2644 to %struct.word_type*
  %ou16916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16915, i32 0, i32 1
  %os116917 = bitcast %union.FIRST_UNION* %ou16916 to %struct.anon*
  %otype6918 = getelementptr inbounds %struct.anon, %struct.anon* %os116917, i32 0, i32 0
  %2645 = load i8, i8* %otype6918, align 1
  %conv6919 = zext i8 %2645 to i32
  %cmp6920 = icmp eq i32 %conv6919, 12
  br i1 %cmp6920, label %cond.true.6922, label %cond.false.6928

cond.true.6922:                                   ; preds = %lor.lhs.false.6914, %while.end.6906
  %2646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16923 = bitcast %union.rec* %2646 to %struct.word_type*
  %ou16924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16923, i32 0, i32 1
  %os116925 = bitcast %union.FIRST_UNION* %ou16924 to %struct.anon*
  %orec_size6926 = getelementptr inbounds %struct.anon, %struct.anon* %os116925, i32 0, i32 1
  %2647 = load i8, i8* %orec_size6926, align 1
  %conv6927 = zext i8 %2647 to i32
  br label %cond.end.6936

cond.false.6928:                                  ; preds = %lor.lhs.false.6914
  %2648 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16929 = bitcast %union.rec* %2648 to %struct.word_type*
  %ou16930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16929, i32 0, i32 1
  %os116931 = bitcast %union.FIRST_UNION* %ou16930 to %struct.anon*
  %otype6932 = getelementptr inbounds %struct.anon, %struct.anon* %os116931, i32 0, i32 0
  %2649 = load i8, i8* %otype6932, align 1
  %idxprom6933 = zext i8 %2649 to i64
  %arrayidx6934 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6933
  %2650 = load i8, i8* %arrayidx6934, align 1
  %conv6935 = zext i8 %2650 to i32
  br label %cond.end.6936

cond.end.6936:                                    ; preds = %cond.false.6928, %cond.true.6922
  %cond6937 = phi i32 [ %conv6927, %cond.true.6922 ], [ %conv6935, %cond.false.6928 ]
  store i32 %cond6937, i32* @zz_size, align 4
  %2651 = load i32, i32* @zz_size, align 4
  %idxprom6938 = sext i32 %2651 to i64
  %arrayidx6939 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6938
  %2652 = load %union.rec*, %union.rec** %arrayidx6939, align 8
  %2653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16940 = bitcast %union.rec* %2653 to %struct.word_type*
  %olist6941 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16940, i32 0, i32 0
  %arrayidx6942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6941, i32 0, i64 0
  %opred6943 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6942, i32 0, i32 0
  store %union.rec* %2652, %union.rec** %opred6943, align 8
  %2654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2655 = load i32, i32* @zz_size, align 4
  %idxprom6944 = sext i32 %2655 to i64
  %arrayidx6945 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6944
  store %union.rec* %2654, %union.rec** %arrayidx6945, align 8
  %2656 = load %union.rec*, %union.rec** %tg_inners, align 8
  %cmp6946 = icmp eq %union.rec* %2656, null
  br i1 %cmp6946, label %if.then.6948, label %if.else.6949

if.then.6948:                                     ; preds = %cond.end.6936
  %2657 = load %union.rec*, %union.rec** %hd_inners, align 8
  %2658 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* %2657, %union.rec** %2658, align 8
  br label %if.end.7354

if.else.6949:                                     ; preds = %cond.end.6936
  %2659 = load %union.rec*, %union.rec** %hd_inners, align 8
  %cmp6950 = icmp eq %union.rec* %2659, null
  br i1 %cmp6950, label %if.then.6952, label %if.else.6953

if.then.6952:                                     ; preds = %if.else.6949
  %2660 = load %union.rec*, %union.rec** %tg_inners, align 8
  %2661 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* %2660, %union.rec** %2661, align 8
  br label %if.end.7353

if.else.6953:                                     ; preds = %if.else.6949
  %2662 = load %union.rec*, %union.rec** %hd_inners, align 8
  %os16956 = bitcast %union.rec* %2662 to %struct.word_type*
  %olist6957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16956, i32 0, i32 0
  %arrayidx6958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6957, i32 0, i64 0
  %osucc6959 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6958, i32 0, i32 1
  %2663 = load %union.rec*, %union.rec** %osucc6959, align 8
  store %union.rec* %2663, %union.rec** %xxstart6955, align 8
  %2664 = load %union.rec*, %union.rec** %hd_inners, align 8
  store %union.rec* %2664, %union.rec** %xxstop6961, align 8
  %2665 = load %union.rec*, %union.rec** %tg_inners, align 8
  store %union.rec* %2665, %union.rec** %xxdest6963, align 8
  %2666 = load %union.rec*, %union.rec** %xxstart6955, align 8
  %2667 = load %union.rec*, %union.rec** %xxstop6961, align 8
  %cmp6964 = icmp ne %union.rec* %2666, %2667
  br i1 %cmp6964, label %if.then.6966, label %if.end.7057

if.then.6966:                                     ; preds = %if.else.6953
  %2668 = load %union.rec*, %union.rec** %xxstart6955, align 8
  %os16967 = bitcast %union.rec* %2668 to %struct.word_type*
  %ou16968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16967, i32 0, i32 1
  %os116969 = bitcast %union.FIRST_UNION* %ou16968 to %struct.anon*
  %otype6970 = getelementptr inbounds %struct.anon, %struct.anon* %os116969, i32 0, i32 0
  %2669 = load i8, i8* %otype6970, align 1
  %conv6971 = zext i8 %2669 to i32
  %cmp6972 = icmp eq i32 %conv6971, 0
  br i1 %cmp6972, label %if.end.6976, label %if.then.6974

if.then.6974:                                     ; preds = %if.then.6966
  %2670 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6975 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2670, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.6976

if.end.6976:                                      ; preds = %if.then.6974, %if.then.6966
  %2671 = load %union.rec*, %union.rec** %xxstart6955, align 8
  store %union.rec* %2671, %union.rec** @zz_res, align 8
  %2672 = load %union.rec*, %union.rec** %xxstop6961, align 8
  store %union.rec* %2672, %union.rec** @zz_hold, align 8
  %2673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6977 = icmp eq %union.rec* %2673, null
  br i1 %cmp6977, label %cond.true.6979, label %cond.false.6980

cond.true.6979:                                   ; preds = %if.end.6976
  %2674 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7015

cond.false.6980:                                  ; preds = %if.end.6976
  %2675 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp6981 = icmp eq %union.rec* %2675, null
  br i1 %cmp6981, label %cond.true.6983, label %cond.false.6984

cond.true.6983:                                   ; preds = %cond.false.6980
  %2676 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.7013

cond.false.6984:                                  ; preds = %cond.false.6980
  %2677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16985 = bitcast %union.rec* %2677 to %struct.word_type*
  %olist6986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16985, i32 0, i32 0
  %arrayidx6987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6986, i32 0, i64 0
  %opred6988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6987, i32 0, i32 0
  %2678 = load %union.rec*, %union.rec** %opred6988, align 8
  store %union.rec* %2678, %union.rec** @zz_tmp, align 8
  %2679 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16989 = bitcast %union.rec* %2679 to %struct.word_type*
  %olist6990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16989, i32 0, i32 0
  %arrayidx6991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6990, i32 0, i64 0
  %opred6992 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6991, i32 0, i32 0
  %2680 = load %union.rec*, %union.rec** %opred6992, align 8
  %2681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16993 = bitcast %union.rec* %2681 to %struct.word_type*
  %olist6994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16993, i32 0, i32 0
  %arrayidx6995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6994, i32 0, i64 0
  %opred6996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6995, i32 0, i32 0
  store %union.rec* %2680, %union.rec** %opred6996, align 8
  %2682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2683 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16997 = bitcast %union.rec* %2683 to %struct.word_type*
  %olist6998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16997, i32 0, i32 0
  %arrayidx6999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6998, i32 0, i64 0
  %opred7000 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6999, i32 0, i32 0
  %2684 = load %union.rec*, %union.rec** %opred7000, align 8
  %os17001 = bitcast %union.rec* %2684 to %struct.word_type*
  %olist7002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17001, i32 0, i32 0
  %arrayidx7003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7002, i32 0, i64 0
  %osucc7004 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7003, i32 0, i32 1
  store %union.rec* %2682, %union.rec** %osucc7004, align 8
  %2685 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2686 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17005 = bitcast %union.rec* %2686 to %struct.word_type*
  %olist7006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17005, i32 0, i32 0
  %arrayidx7007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7006, i32 0, i64 0
  %opred7008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7007, i32 0, i32 0
  store %union.rec* %2685, %union.rec** %opred7008, align 8
  %2687 = load %union.rec*, %union.rec** @zz_res, align 8
  %2688 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os17009 = bitcast %union.rec* %2688 to %struct.word_type*
  %olist7010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17009, i32 0, i32 0
  %arrayidx7011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7010, i32 0, i64 0
  %osucc7012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7011, i32 0, i32 1
  store %union.rec* %2687, %union.rec** %osucc7012, align 8
  br label %cond.end.7013

cond.end.7013:                                    ; preds = %cond.false.6984, %cond.true.6983
  %cond7014 = phi %union.rec* [ %2676, %cond.true.6983 ], [ %2687, %cond.false.6984 ]
  br label %cond.end.7015

cond.end.7015:                                    ; preds = %cond.end.7013, %cond.true.6979
  %cond7016 = phi %union.rec* [ %2674, %cond.true.6979 ], [ %cond7014, %cond.end.7013 ]
  %2689 = load %union.rec*, %union.rec** %xxstart6955, align 8
  store %union.rec* %2689, %union.rec** @zz_res, align 8
  %2690 = load %union.rec*, %union.rec** %xxdest6963, align 8
  store %union.rec* %2690, %union.rec** @zz_hold, align 8
  %2691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7017 = icmp eq %union.rec* %2691, null
  br i1 %cmp7017, label %cond.true.7019, label %cond.false.7020

cond.true.7019:                                   ; preds = %cond.end.7015
  %2692 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7055

cond.false.7020:                                  ; preds = %cond.end.7015
  %2693 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp7021 = icmp eq %union.rec* %2693, null
  br i1 %cmp7021, label %cond.true.7023, label %cond.false.7024

cond.true.7023:                                   ; preds = %cond.false.7020
  %2694 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.7053

cond.false.7024:                                  ; preds = %cond.false.7020
  %2695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17025 = bitcast %union.rec* %2695 to %struct.word_type*
  %olist7026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17025, i32 0, i32 0
  %arrayidx7027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7026, i32 0, i64 0
  %opred7028 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7027, i32 0, i32 0
  %2696 = load %union.rec*, %union.rec** %opred7028, align 8
  store %union.rec* %2696, %union.rec** @zz_tmp, align 8
  %2697 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17029 = bitcast %union.rec* %2697 to %struct.word_type*
  %olist7030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17029, i32 0, i32 0
  %arrayidx7031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7030, i32 0, i64 0
  %opred7032 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7031, i32 0, i32 0
  %2698 = load %union.rec*, %union.rec** %opred7032, align 8
  %2699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17033 = bitcast %union.rec* %2699 to %struct.word_type*
  %olist7034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17033, i32 0, i32 0
  %arrayidx7035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7034, i32 0, i64 0
  %opred7036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7035, i32 0, i32 0
  store %union.rec* %2698, %union.rec** %opred7036, align 8
  %2700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2701 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17037 = bitcast %union.rec* %2701 to %struct.word_type*
  %olist7038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17037, i32 0, i32 0
  %arrayidx7039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7038, i32 0, i64 0
  %opred7040 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7039, i32 0, i32 0
  %2702 = load %union.rec*, %union.rec** %opred7040, align 8
  %os17041 = bitcast %union.rec* %2702 to %struct.word_type*
  %olist7042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17041, i32 0, i32 0
  %arrayidx7043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7042, i32 0, i64 0
  %osucc7044 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7043, i32 0, i32 1
  store %union.rec* %2700, %union.rec** %osucc7044, align 8
  %2703 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2704 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17045 = bitcast %union.rec* %2704 to %struct.word_type*
  %olist7046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17045, i32 0, i32 0
  %arrayidx7047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7046, i32 0, i64 0
  %opred7048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7047, i32 0, i32 0
  store %union.rec* %2703, %union.rec** %opred7048, align 8
  %2705 = load %union.rec*, %union.rec** @zz_res, align 8
  %2706 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os17049 = bitcast %union.rec* %2706 to %struct.word_type*
  %olist7050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17049, i32 0, i32 0
  %arrayidx7051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7050, i32 0, i64 0
  %osucc7052 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7051, i32 0, i32 1
  store %union.rec* %2705, %union.rec** %osucc7052, align 8
  br label %cond.end.7053

cond.end.7053:                                    ; preds = %cond.false.7024, %cond.true.7023
  %cond7054 = phi %union.rec* [ %2694, %cond.true.7023 ], [ %2705, %cond.false.7024 ]
  br label %cond.end.7055

cond.end.7055:                                    ; preds = %cond.end.7053, %cond.true.7019
  %cond7056 = phi %union.rec* [ %2692, %cond.true.7019 ], [ %cond7054, %cond.end.7053 ]
  br label %if.end.7057

if.end.7057:                                      ; preds = %cond.end.7055, %if.else.6953
  %2707 = load %union.rec*, %union.rec** %hd_inners, align 8
  store %union.rec* %2707, %union.rec** @xx_hold, align 8
  br label %while.cond.7058

while.cond.7058:                                  ; preds = %cond.end.7175, %if.end.7057
  %2708 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os17059 = bitcast %union.rec* %2708 to %struct.word_type*
  %olist7060 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17059, i32 0, i32 0
  %arrayidx7061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7060, i32 0, i64 1
  %osucc7062 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7061, i32 0, i32 1
  %2709 = load %union.rec*, %union.rec** %osucc7062, align 8
  %2710 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp7063 = icmp ne %union.rec* %2709, %2710
  br i1 %cmp7063, label %while.body.7065, label %while.end.7185

while.body.7065:                                  ; preds = %while.cond.7058
  %2711 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os17066 = bitcast %union.rec* %2711 to %struct.word_type*
  %olist7067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17066, i32 0, i32 0
  %arrayidx7068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7067, i32 0, i64 1
  %osucc7069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7068, i32 0, i32 1
  %2712 = load %union.rec*, %union.rec** %osucc7069, align 8
  store %union.rec* %2712, %union.rec** @xx_link, align 8
  %2713 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2713, %union.rec** @zz_hold, align 8
  %2714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17070 = bitcast %union.rec* %2714 to %struct.word_type*
  %olist7071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17070, i32 0, i32 0
  %arrayidx7072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7071, i32 0, i64 1
  %osucc7073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7072, i32 0, i32 1
  %2715 = load %union.rec*, %union.rec** %osucc7073, align 8
  %2716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7074 = icmp eq %union.rec* %2715, %2716
  br i1 %cmp7074, label %cond.true.7076, label %cond.false.7077

cond.true.7076:                                   ; preds = %while.body.7065
  br label %cond.end.7106

cond.false.7077:                                  ; preds = %while.body.7065
  %2717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17078 = bitcast %union.rec* %2717 to %struct.word_type*
  %olist7079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17078, i32 0, i32 0
  %arrayidx7080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7079, i32 0, i64 1
  %osucc7081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7080, i32 0, i32 1
  %2718 = load %union.rec*, %union.rec** %osucc7081, align 8
  store %union.rec* %2718, %union.rec** @zz_res, align 8
  %2719 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17082 = bitcast %union.rec* %2719 to %struct.word_type*
  %olist7083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17082, i32 0, i32 0
  %arrayidx7084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7083, i32 0, i64 1
  %opred7085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7084, i32 0, i32 0
  %2720 = load %union.rec*, %union.rec** %opred7085, align 8
  %2721 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17086 = bitcast %union.rec* %2721 to %struct.word_type*
  %olist7087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17086, i32 0, i32 0
  %arrayidx7088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7087, i32 0, i64 1
  %opred7089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7088, i32 0, i32 0
  store %union.rec* %2720, %union.rec** %opred7089, align 8
  %2722 = load %union.rec*, %union.rec** @zz_res, align 8
  %2723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17090 = bitcast %union.rec* %2723 to %struct.word_type*
  %olist7091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17090, i32 0, i32 0
  %arrayidx7092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7091, i32 0, i64 1
  %opred7093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7092, i32 0, i32 0
  %2724 = load %union.rec*, %union.rec** %opred7093, align 8
  %os17094 = bitcast %union.rec* %2724 to %struct.word_type*
  %olist7095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17094, i32 0, i32 0
  %arrayidx7096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7095, i32 0, i64 1
  %osucc7097 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7096, i32 0, i32 1
  store %union.rec* %2722, %union.rec** %osucc7097, align 8
  %2725 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17098 = bitcast %union.rec* %2726 to %struct.word_type*
  %olist7099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17098, i32 0, i32 0
  %arrayidx7100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7099, i32 0, i64 1
  %osucc7101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7100, i32 0, i32 1
  store %union.rec* %2725, %union.rec** %osucc7101, align 8
  %2727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17102 = bitcast %union.rec* %2727 to %struct.word_type*
  %olist7103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17102, i32 0, i32 0
  %arrayidx7104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7103, i32 0, i64 1
  %opred7105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7104, i32 0, i32 0
  store %union.rec* %2725, %union.rec** %opred7105, align 8
  %2728 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7106

cond.end.7106:                                    ; preds = %cond.false.7077, %cond.true.7076
  %cond7107 = phi %union.rec* [ null, %cond.true.7076 ], [ %2728, %cond.false.7077 ]
  %2729 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2729, %union.rec** @zz_hold, align 8
  %2730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17108 = bitcast %union.rec* %2730 to %struct.word_type*
  %olist7109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17108, i32 0, i32 0
  %arrayidx7110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7109, i32 0, i64 0
  %osucc7111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7110, i32 0, i32 1
  %2731 = load %union.rec*, %union.rec** %osucc7111, align 8
  %2732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7112 = icmp eq %union.rec* %2731, %2732
  br i1 %cmp7112, label %cond.true.7114, label %cond.false.7115

cond.true.7114:                                   ; preds = %cond.end.7106
  br label %cond.end.7144

cond.false.7115:                                  ; preds = %cond.end.7106
  %2733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17116 = bitcast %union.rec* %2733 to %struct.word_type*
  %olist7117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17116, i32 0, i32 0
  %arrayidx7118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7117, i32 0, i64 0
  %osucc7119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7118, i32 0, i32 1
  %2734 = load %union.rec*, %union.rec** %osucc7119, align 8
  store %union.rec* %2734, %union.rec** @zz_res, align 8
  %2735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17120 = bitcast %union.rec* %2735 to %struct.word_type*
  %olist7121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17120, i32 0, i32 0
  %arrayidx7122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7121, i32 0, i64 0
  %opred7123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7122, i32 0, i32 0
  %2736 = load %union.rec*, %union.rec** %opred7123, align 8
  %2737 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17124 = bitcast %union.rec* %2737 to %struct.word_type*
  %olist7125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17124, i32 0, i32 0
  %arrayidx7126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7125, i32 0, i64 0
  %opred7127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7126, i32 0, i32 0
  store %union.rec* %2736, %union.rec** %opred7127, align 8
  %2738 = load %union.rec*, %union.rec** @zz_res, align 8
  %2739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17128 = bitcast %union.rec* %2739 to %struct.word_type*
  %olist7129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17128, i32 0, i32 0
  %arrayidx7130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7129, i32 0, i64 0
  %opred7131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7130, i32 0, i32 0
  %2740 = load %union.rec*, %union.rec** %opred7131, align 8
  %os17132 = bitcast %union.rec* %2740 to %struct.word_type*
  %olist7133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17132, i32 0, i32 0
  %arrayidx7134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7133, i32 0, i64 0
  %osucc7135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7134, i32 0, i32 1
  store %union.rec* %2738, %union.rec** %osucc7135, align 8
  %2741 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17136 = bitcast %union.rec* %2742 to %struct.word_type*
  %olist7137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17136, i32 0, i32 0
  %arrayidx7138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7137, i32 0, i64 0
  %osucc7139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7138, i32 0, i32 1
  store %union.rec* %2741, %union.rec** %osucc7139, align 8
  %2743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17140 = bitcast %union.rec* %2743 to %struct.word_type*
  %olist7141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17140, i32 0, i32 0
  %arrayidx7142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7141, i32 0, i64 0
  %opred7143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7142, i32 0, i32 0
  store %union.rec* %2741, %union.rec** %opred7143, align 8
  %2744 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7144

cond.end.7144:                                    ; preds = %cond.false.7115, %cond.true.7114
  %cond7145 = phi %union.rec* [ null, %cond.true.7114 ], [ %2744, %cond.false.7115 ]
  %2745 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2745, %union.rec** @zz_hold, align 8
  %2746 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2746, %union.rec** @zz_hold, align 8
  %2747 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17146 = bitcast %union.rec* %2747 to %struct.word_type*
  %ou17147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17146, i32 0, i32 1
  %os117148 = bitcast %union.FIRST_UNION* %ou17147 to %struct.anon*
  %otype7149 = getelementptr inbounds %struct.anon, %struct.anon* %os117148, i32 0, i32 0
  %2748 = load i8, i8* %otype7149, align 1
  %conv7150 = zext i8 %2748 to i32
  %cmp7151 = icmp eq i32 %conv7150, 11
  br i1 %cmp7151, label %cond.true.7161, label %lor.lhs.false.7153

lor.lhs.false.7153:                               ; preds = %cond.end.7144
  %2749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17154 = bitcast %union.rec* %2749 to %struct.word_type*
  %ou17155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17154, i32 0, i32 1
  %os117156 = bitcast %union.FIRST_UNION* %ou17155 to %struct.anon*
  %otype7157 = getelementptr inbounds %struct.anon, %struct.anon* %os117156, i32 0, i32 0
  %2750 = load i8, i8* %otype7157, align 1
  %conv7158 = zext i8 %2750 to i32
  %cmp7159 = icmp eq i32 %conv7158, 12
  br i1 %cmp7159, label %cond.true.7161, label %cond.false.7167

cond.true.7161:                                   ; preds = %lor.lhs.false.7153, %cond.end.7144
  %2751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17162 = bitcast %union.rec* %2751 to %struct.word_type*
  %ou17163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17162, i32 0, i32 1
  %os117164 = bitcast %union.FIRST_UNION* %ou17163 to %struct.anon*
  %orec_size7165 = getelementptr inbounds %struct.anon, %struct.anon* %os117164, i32 0, i32 1
  %2752 = load i8, i8* %orec_size7165, align 1
  %conv7166 = zext i8 %2752 to i32
  br label %cond.end.7175

cond.false.7167:                                  ; preds = %lor.lhs.false.7153
  %2753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17168 = bitcast %union.rec* %2753 to %struct.word_type*
  %ou17169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17168, i32 0, i32 1
  %os117170 = bitcast %union.FIRST_UNION* %ou17169 to %struct.anon*
  %otype7171 = getelementptr inbounds %struct.anon, %struct.anon* %os117170, i32 0, i32 0
  %2754 = load i8, i8* %otype7171, align 1
  %idxprom7172 = zext i8 %2754 to i64
  %arrayidx7173 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom7172
  %2755 = load i8, i8* %arrayidx7173, align 1
  %conv7174 = zext i8 %2755 to i32
  br label %cond.end.7175

cond.end.7175:                                    ; preds = %cond.false.7167, %cond.true.7161
  %cond7176 = phi i32 [ %conv7166, %cond.true.7161 ], [ %conv7174, %cond.false.7167 ]
  store i32 %cond7176, i32* @zz_size, align 4
  %2756 = load i32, i32* @zz_size, align 4
  %idxprom7177 = sext i32 %2756 to i64
  %arrayidx7178 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7177
  %2757 = load %union.rec*, %union.rec** %arrayidx7178, align 8
  %2758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17179 = bitcast %union.rec* %2758 to %struct.word_type*
  %olist7180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17179, i32 0, i32 0
  %arrayidx7181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7180, i32 0, i64 0
  %opred7182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7181, i32 0, i32 0
  store %union.rec* %2757, %union.rec** %opred7182, align 8
  %2759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2760 = load i32, i32* @zz_size, align 4
  %idxprom7183 = sext i32 %2760 to i64
  %arrayidx7184 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7183
  store %union.rec* %2759, %union.rec** %arrayidx7184, align 8
  br label %while.cond.7058

while.end.7185:                                   ; preds = %while.cond.7058
  br label %while.cond.7186

while.cond.7186:                                  ; preds = %cond.end.7303, %while.end.7185
  %2761 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os17187 = bitcast %union.rec* %2761 to %struct.word_type*
  %olist7188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17187, i32 0, i32 0
  %arrayidx7189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7188, i32 0, i64 0
  %osucc7190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7189, i32 0, i32 1
  %2762 = load %union.rec*, %union.rec** %osucc7190, align 8
  %2763 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp7191 = icmp ne %union.rec* %2762, %2763
  br i1 %cmp7191, label %while.body.7193, label %while.end.7313

while.body.7193:                                  ; preds = %while.cond.7186
  %2764 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os17194 = bitcast %union.rec* %2764 to %struct.word_type*
  %olist7195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17194, i32 0, i32 0
  %arrayidx7196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7195, i32 0, i64 0
  %osucc7197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7196, i32 0, i32 1
  %2765 = load %union.rec*, %union.rec** %osucc7197, align 8
  store %union.rec* %2765, %union.rec** @xx_link, align 8
  %2766 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2766, %union.rec** @zz_hold, align 8
  %2767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17198 = bitcast %union.rec* %2767 to %struct.word_type*
  %olist7199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17198, i32 0, i32 0
  %arrayidx7200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7199, i32 0, i64 1
  %osucc7201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7200, i32 0, i32 1
  %2768 = load %union.rec*, %union.rec** %osucc7201, align 8
  %2769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7202 = icmp eq %union.rec* %2768, %2769
  br i1 %cmp7202, label %cond.true.7204, label %cond.false.7205

cond.true.7204:                                   ; preds = %while.body.7193
  br label %cond.end.7234

cond.false.7205:                                  ; preds = %while.body.7193
  %2770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17206 = bitcast %union.rec* %2770 to %struct.word_type*
  %olist7207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17206, i32 0, i32 0
  %arrayidx7208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7207, i32 0, i64 1
  %osucc7209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7208, i32 0, i32 1
  %2771 = load %union.rec*, %union.rec** %osucc7209, align 8
  store %union.rec* %2771, %union.rec** @zz_res, align 8
  %2772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17210 = bitcast %union.rec* %2772 to %struct.word_type*
  %olist7211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17210, i32 0, i32 0
  %arrayidx7212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7211, i32 0, i64 1
  %opred7213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7212, i32 0, i32 0
  %2773 = load %union.rec*, %union.rec** %opred7213, align 8
  %2774 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17214 = bitcast %union.rec* %2774 to %struct.word_type*
  %olist7215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17214, i32 0, i32 0
  %arrayidx7216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7215, i32 0, i64 1
  %opred7217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7216, i32 0, i32 0
  store %union.rec* %2773, %union.rec** %opred7217, align 8
  %2775 = load %union.rec*, %union.rec** @zz_res, align 8
  %2776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17218 = bitcast %union.rec* %2776 to %struct.word_type*
  %olist7219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17218, i32 0, i32 0
  %arrayidx7220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7219, i32 0, i64 1
  %opred7221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7220, i32 0, i32 0
  %2777 = load %union.rec*, %union.rec** %opred7221, align 8
  %os17222 = bitcast %union.rec* %2777 to %struct.word_type*
  %olist7223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17222, i32 0, i32 0
  %arrayidx7224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7223, i32 0, i64 1
  %osucc7225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7224, i32 0, i32 1
  store %union.rec* %2775, %union.rec** %osucc7225, align 8
  %2778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2779 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17226 = bitcast %union.rec* %2779 to %struct.word_type*
  %olist7227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17226, i32 0, i32 0
  %arrayidx7228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7227, i32 0, i64 1
  %osucc7229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7228, i32 0, i32 1
  store %union.rec* %2778, %union.rec** %osucc7229, align 8
  %2780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17230 = bitcast %union.rec* %2780 to %struct.word_type*
  %olist7231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17230, i32 0, i32 0
  %arrayidx7232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7231, i32 0, i64 1
  %opred7233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7232, i32 0, i32 0
  store %union.rec* %2778, %union.rec** %opred7233, align 8
  %2781 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7234

cond.end.7234:                                    ; preds = %cond.false.7205, %cond.true.7204
  %cond7235 = phi %union.rec* [ null, %cond.true.7204 ], [ %2781, %cond.false.7205 ]
  %2782 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2782, %union.rec** @zz_hold, align 8
  %2783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17236 = bitcast %union.rec* %2783 to %struct.word_type*
  %olist7237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17236, i32 0, i32 0
  %arrayidx7238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7237, i32 0, i64 0
  %osucc7239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7238, i32 0, i32 1
  %2784 = load %union.rec*, %union.rec** %osucc7239, align 8
  %2785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7240 = icmp eq %union.rec* %2784, %2785
  br i1 %cmp7240, label %cond.true.7242, label %cond.false.7243

cond.true.7242:                                   ; preds = %cond.end.7234
  br label %cond.end.7272

cond.false.7243:                                  ; preds = %cond.end.7234
  %2786 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17244 = bitcast %union.rec* %2786 to %struct.word_type*
  %olist7245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17244, i32 0, i32 0
  %arrayidx7246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7245, i32 0, i64 0
  %osucc7247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7246, i32 0, i32 1
  %2787 = load %union.rec*, %union.rec** %osucc7247, align 8
  store %union.rec* %2787, %union.rec** @zz_res, align 8
  %2788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17248 = bitcast %union.rec* %2788 to %struct.word_type*
  %olist7249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17248, i32 0, i32 0
  %arrayidx7250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7249, i32 0, i64 0
  %opred7251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7250, i32 0, i32 0
  %2789 = load %union.rec*, %union.rec** %opred7251, align 8
  %2790 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17252 = bitcast %union.rec* %2790 to %struct.word_type*
  %olist7253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17252, i32 0, i32 0
  %arrayidx7254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7253, i32 0, i64 0
  %opred7255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7254, i32 0, i32 0
  store %union.rec* %2789, %union.rec** %opred7255, align 8
  %2791 = load %union.rec*, %union.rec** @zz_res, align 8
  %2792 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17256 = bitcast %union.rec* %2792 to %struct.word_type*
  %olist7257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17256, i32 0, i32 0
  %arrayidx7258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7257, i32 0, i64 0
  %opred7259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7258, i32 0, i32 0
  %2793 = load %union.rec*, %union.rec** %opred7259, align 8
  %os17260 = bitcast %union.rec* %2793 to %struct.word_type*
  %olist7261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17260, i32 0, i32 0
  %arrayidx7262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7261, i32 0, i64 0
  %osucc7263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7262, i32 0, i32 1
  store %union.rec* %2791, %union.rec** %osucc7263, align 8
  %2794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17264 = bitcast %union.rec* %2795 to %struct.word_type*
  %olist7265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17264, i32 0, i32 0
  %arrayidx7266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7265, i32 0, i64 0
  %osucc7267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7266, i32 0, i32 1
  store %union.rec* %2794, %union.rec** %osucc7267, align 8
  %2796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17268 = bitcast %union.rec* %2796 to %struct.word_type*
  %olist7269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17268, i32 0, i32 0
  %arrayidx7270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7269, i32 0, i64 0
  %opred7271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7270, i32 0, i32 0
  store %union.rec* %2794, %union.rec** %opred7271, align 8
  %2797 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7272

cond.end.7272:                                    ; preds = %cond.false.7243, %cond.true.7242
  %cond7273 = phi %union.rec* [ null, %cond.true.7242 ], [ %2797, %cond.false.7243 ]
  %2798 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2798, %union.rec** @zz_hold, align 8
  %2799 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2799, %union.rec** @zz_hold, align 8
  %2800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17274 = bitcast %union.rec* %2800 to %struct.word_type*
  %ou17275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17274, i32 0, i32 1
  %os117276 = bitcast %union.FIRST_UNION* %ou17275 to %struct.anon*
  %otype7277 = getelementptr inbounds %struct.anon, %struct.anon* %os117276, i32 0, i32 0
  %2801 = load i8, i8* %otype7277, align 1
  %conv7278 = zext i8 %2801 to i32
  %cmp7279 = icmp eq i32 %conv7278, 11
  br i1 %cmp7279, label %cond.true.7289, label %lor.lhs.false.7281

lor.lhs.false.7281:                               ; preds = %cond.end.7272
  %2802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17282 = bitcast %union.rec* %2802 to %struct.word_type*
  %ou17283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17282, i32 0, i32 1
  %os117284 = bitcast %union.FIRST_UNION* %ou17283 to %struct.anon*
  %otype7285 = getelementptr inbounds %struct.anon, %struct.anon* %os117284, i32 0, i32 0
  %2803 = load i8, i8* %otype7285, align 1
  %conv7286 = zext i8 %2803 to i32
  %cmp7287 = icmp eq i32 %conv7286, 12
  br i1 %cmp7287, label %cond.true.7289, label %cond.false.7295

cond.true.7289:                                   ; preds = %lor.lhs.false.7281, %cond.end.7272
  %2804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17290 = bitcast %union.rec* %2804 to %struct.word_type*
  %ou17291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17290, i32 0, i32 1
  %os117292 = bitcast %union.FIRST_UNION* %ou17291 to %struct.anon*
  %orec_size7293 = getelementptr inbounds %struct.anon, %struct.anon* %os117292, i32 0, i32 1
  %2805 = load i8, i8* %orec_size7293, align 1
  %conv7294 = zext i8 %2805 to i32
  br label %cond.end.7303

cond.false.7295:                                  ; preds = %lor.lhs.false.7281
  %2806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17296 = bitcast %union.rec* %2806 to %struct.word_type*
  %ou17297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17296, i32 0, i32 1
  %os117298 = bitcast %union.FIRST_UNION* %ou17297 to %struct.anon*
  %otype7299 = getelementptr inbounds %struct.anon, %struct.anon* %os117298, i32 0, i32 0
  %2807 = load i8, i8* %otype7299, align 1
  %idxprom7300 = zext i8 %2807 to i64
  %arrayidx7301 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom7300
  %2808 = load i8, i8* %arrayidx7301, align 1
  %conv7302 = zext i8 %2808 to i32
  br label %cond.end.7303

cond.end.7303:                                    ; preds = %cond.false.7295, %cond.true.7289
  %cond7304 = phi i32 [ %conv7294, %cond.true.7289 ], [ %conv7302, %cond.false.7295 ]
  store i32 %cond7304, i32* @zz_size, align 4
  %2809 = load i32, i32* @zz_size, align 4
  %idxprom7305 = sext i32 %2809 to i64
  %arrayidx7306 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7305
  %2810 = load %union.rec*, %union.rec** %arrayidx7306, align 8
  %2811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17307 = bitcast %union.rec* %2811 to %struct.word_type*
  %olist7308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17307, i32 0, i32 0
  %arrayidx7309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7308, i32 0, i64 0
  %opred7310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7309, i32 0, i32 0
  store %union.rec* %2810, %union.rec** %opred7310, align 8
  %2812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2813 = load i32, i32* @zz_size, align 4
  %idxprom7311 = sext i32 %2813 to i64
  %arrayidx7312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7311
  store %union.rec* %2812, %union.rec** %arrayidx7312, align 8
  br label %while.cond.7186

while.end.7313:                                   ; preds = %while.cond.7186
  %2814 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2814, %union.rec** @zz_hold, align 8
  %2815 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2815, %union.rec** @zz_hold, align 8
  %2816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17314 = bitcast %union.rec* %2816 to %struct.word_type*
  %ou17315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17314, i32 0, i32 1
  %os117316 = bitcast %union.FIRST_UNION* %ou17315 to %struct.anon*
  %otype7317 = getelementptr inbounds %struct.anon, %struct.anon* %os117316, i32 0, i32 0
  %2817 = load i8, i8* %otype7317, align 1
  %conv7318 = zext i8 %2817 to i32
  %cmp7319 = icmp eq i32 %conv7318, 11
  br i1 %cmp7319, label %cond.true.7329, label %lor.lhs.false.7321

lor.lhs.false.7321:                               ; preds = %while.end.7313
  %2818 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17322 = bitcast %union.rec* %2818 to %struct.word_type*
  %ou17323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17322, i32 0, i32 1
  %os117324 = bitcast %union.FIRST_UNION* %ou17323 to %struct.anon*
  %otype7325 = getelementptr inbounds %struct.anon, %struct.anon* %os117324, i32 0, i32 0
  %2819 = load i8, i8* %otype7325, align 1
  %conv7326 = zext i8 %2819 to i32
  %cmp7327 = icmp eq i32 %conv7326, 12
  br i1 %cmp7327, label %cond.true.7329, label %cond.false.7335

cond.true.7329:                                   ; preds = %lor.lhs.false.7321, %while.end.7313
  %2820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17330 = bitcast %union.rec* %2820 to %struct.word_type*
  %ou17331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17330, i32 0, i32 1
  %os117332 = bitcast %union.FIRST_UNION* %ou17331 to %struct.anon*
  %orec_size7333 = getelementptr inbounds %struct.anon, %struct.anon* %os117332, i32 0, i32 1
  %2821 = load i8, i8* %orec_size7333, align 1
  %conv7334 = zext i8 %2821 to i32
  br label %cond.end.7343

cond.false.7335:                                  ; preds = %lor.lhs.false.7321
  %2822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17336 = bitcast %union.rec* %2822 to %struct.word_type*
  %ou17337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17336, i32 0, i32 1
  %os117338 = bitcast %union.FIRST_UNION* %ou17337 to %struct.anon*
  %otype7339 = getelementptr inbounds %struct.anon, %struct.anon* %os117338, i32 0, i32 0
  %2823 = load i8, i8* %otype7339, align 1
  %idxprom7340 = zext i8 %2823 to i64
  %arrayidx7341 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom7340
  %2824 = load i8, i8* %arrayidx7341, align 1
  %conv7342 = zext i8 %2824 to i32
  br label %cond.end.7343

cond.end.7343:                                    ; preds = %cond.false.7335, %cond.true.7329
  %cond7344 = phi i32 [ %conv7334, %cond.true.7329 ], [ %conv7342, %cond.false.7335 ]
  store i32 %cond7344, i32* @zz_size, align 4
  %2825 = load i32, i32* @zz_size, align 4
  %idxprom7345 = sext i32 %2825 to i64
  %arrayidx7346 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7345
  %2826 = load %union.rec*, %union.rec** %arrayidx7346, align 8
  %2827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17347 = bitcast %union.rec* %2827 to %struct.word_type*
  %olist7348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17347, i32 0, i32 0
  %arrayidx7349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7348, i32 0, i64 0
  %opred7350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7349, i32 0, i32 0
  store %union.rec* %2826, %union.rec** %opred7350, align 8
  %2828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2829 = load i32, i32* @zz_size, align 4
  %idxprom7351 = sext i32 %2829 to i64
  %arrayidx7352 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7351
  store %union.rec* %2828, %union.rec** %arrayidx7352, align 8
  %2830 = load %union.rec*, %union.rec** %tg_inners, align 8
  %2831 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* %2830, %union.rec** %2831, align 8
  br label %if.end.7353

if.end.7353:                                      ; preds = %cond.end.7343, %if.then.6952
  br label %if.end.7354

if.end.7354:                                      ; preds = %if.end.7353, %if.then.6948
  store i32 5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7354, %if.end.5335, %cond.end.5016, %if.then.621, %cond.end.584, %if.end.165
  %2832 = load i32, i32* %retval
  ret i32 %2832
}

declare i8* @SymName(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare void @KillGalley(%union.rec*, i32) #1

declare void @EnterErrorBlock(i32) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

declare void @SizeGalley(%union.rec*, %union.rec*, i32, i32, i32, i32, %struct.STYLE*, %struct.CONSTRAINT*, %union.rec*, %union.rec**, %union.rec**, %union.rec**, %union.rec*) #1

declare void @ExpandRecursives(%union.rec*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare void @LeaveErrorBlock(i32) #1

declare i32 @CheckComponentOrder(%union.rec*, %union.rec*) #1

declare i32 @VerticalHyphenate(%union.rec*) #1

declare i32 @ScaleToConstraint(i32, i32, %struct.CONSTRAINT*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @InterposeScale(%union.rec* %y, i32 %scale_factor, i32 %dim) #0 {
entry:
  %y.addr = alloca %union.rec*, align 8
  %scale_factor.addr = alloca i32, align 4
  %dim.addr = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %scale_factor, i32* %scale_factor.addr, align 4
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 34), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
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
  store i8 34, i8* %otype, align 1
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
  %17 = load %union.rec*, %union.rec** %y.addr, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou131 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %18 = load i16, i16* %ofile_num, align 2
  %19 = load %union.rec*, %union.rec** %res, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %ofpos34 = bitcast %union.FIRST_UNION* %ou133 to %struct.FILE_POS*
  %ofile_num35 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos34, i32 0, i32 2
  store i16 %18, i16* %ofile_num35, align 2
  %20 = load %union.rec*, %union.rec** %y.addr, align 8
  %os136 = bitcast %union.rec* %20 to %struct.word_type*
  %ou137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 1
  %ofpos38 = bitcast %union.FIRST_UNION* %ou137 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos38, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos41 = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %oline_num42 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos41, i32 0, i32 3
  %bf.load43 = load i32, i32* %oline_num42, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear44 = and i32 %bf.load43, -1048576
  %bf.set = or i32 %bf.clear44, %bf.value
  store i32 %bf.set, i32* %oline_num42, align 4
  %22 = load %union.rec*, %union.rec** %y.addr, align 8
  %os145 = bitcast %union.rec* %22 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos47 = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos47, i32 0, i32 3
  %bf.load48 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load48, 20
  %23 = load %union.rec*, %union.rec** %res, align 8
  %os149 = bitcast %union.rec* %23 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %ofpos51 = bitcast %union.FIRST_UNION* %ou150 to %struct.FILE_POS*
  %ocol_num52 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos51, i32 0, i32 3
  %bf.load53 = load i32, i32* %ocol_num52, align 4
  %bf.value54 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value54, 20
  %bf.clear55 = and i32 %bf.load53, 1048575
  %bf.set56 = or i32 %bf.clear55, %bf.shl
  store i32 %bf.set56, i32* %ocol_num52, align 4
  %24 = load i32, i32* %dim.addr, align 4
  %cmp57 = icmp eq i32 %24, 0
  br i1 %cmp57, label %if.then.59, label %if.else.63

if.then.59:                                       ; preds = %if.end.13
  %25 = load i32, i32* %scale_factor.addr, align 4
  %26 = load %union.rec*, %union.rec** %res, align 8
  %os2 = bitcast %union.rec* %26 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 %25, i32* %obc, align 4
  %27 = load %union.rec*, %union.rec** %res, align 8
  %os260 = bitcast %union.rec* %27 to %struct.closure_type*
  %ou461 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os260, i32 0, i32 4
  %oconstraint62 = bitcast %union.FOURTH_UNION* %ou461 to %struct.CONSTRAINT*
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint62, i32 0, i32 2
  store i32 128, i32* %ofc, align 4
  br label %if.end.72

if.else.63:                                       ; preds = %if.end.13
  %28 = load %union.rec*, %union.rec** %res, align 8
  %os264 = bitcast %union.rec* %28 to %struct.closure_type*
  %ou465 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os264, i32 0, i32 4
  %oconstraint66 = bitcast %union.FOURTH_UNION* %ou465 to %struct.CONSTRAINT*
  %obc67 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint66, i32 0, i32 0
  store i32 128, i32* %obc67, align 4
  %29 = load i32, i32* %scale_factor.addr, align 4
  %30 = load %union.rec*, %union.rec** %res, align 8
  %os268 = bitcast %union.rec* %30 to %struct.closure_type*
  %ou469 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os268, i32 0, i32 4
  %oconstraint70 = bitcast %union.FOURTH_UNION* %ou469 to %struct.CONSTRAINT*
  %ofc71 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint70, i32 0, i32 2
  store i32 %29, i32* %ofc71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.63, %if.then.59
  %31 = load i32, i32* %dim.addr, align 4
  %idxprom73 = sext i32 %31 to i64
  %32 = load %union.rec*, %union.rec** %y.addr, align 8
  %os174 = bitcast %union.rec* %32 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom73
  %33 = load i32, i32* %arrayidx75, align 4
  %34 = load i32, i32* %scale_factor.addr, align 4
  %mul = mul nsw i32 %33, %34
  %div = sdiv i32 %mul, 128
  %35 = load i32, i32* %dim.addr, align 4
  %idxprom76 = sext i32 %35 to i64
  %36 = load %union.rec*, %union.rec** %res, align 8
  %os177 = bitcast %union.rec* %36 to %struct.word_type*
  %ou378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 3
  %os3179 = bitcast %union.THIRD_UNION* %ou378 to %struct.anon.6*
  %oback80 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x i32], [2 x i32]* %oback80, i32 0, i64 %idxprom76
  store i32 %div, i32* %arrayidx81, align 4
  %37 = load i32, i32* %dim.addr, align 4
  %idxprom82 = sext i32 %37 to i64
  %38 = load %union.rec*, %union.rec** %y.addr, align 8
  %os183 = bitcast %union.rec* %38 to %struct.word_type*
  %ou384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 3
  %os3185 = bitcast %union.THIRD_UNION* %ou384 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3185, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom82
  %39 = load i32, i32* %arrayidx86, align 4
  %40 = load i32, i32* %scale_factor.addr, align 4
  %mul87 = mul nsw i32 %39, %40
  %div88 = sdiv i32 %mul87, 128
  %41 = load i32, i32* %dim.addr, align 4
  %idxprom89 = sext i32 %41 to i64
  %42 = load %union.rec*, %union.rec** %res, align 8
  %os190 = bitcast %union.rec* %42 to %struct.word_type*
  %ou391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 3
  %os3192 = bitcast %union.THIRD_UNION* %ou391 to %struct.anon.6*
  %ofwd93 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3192, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd93, i32 0, i64 %idxprom89
  store i32 %div88, i32* %arrayidx94, align 4
  %43 = load i32, i32* %dim.addr, align 4
  %sub = sub nsw i32 1, %43
  %idxprom95 = sext i32 %sub to i64
  %44 = load %union.rec*, %union.rec** %y.addr, align 8
  %os196 = bitcast %union.rec* %44 to %struct.word_type*
  %ou397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 3
  %os3198 = bitcast %union.THIRD_UNION* %ou397 to %struct.anon.6*
  %oback99 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %oback99, i32 0, i64 %idxprom95
  %45 = load i32, i32* %arrayidx100, align 4
  %46 = load i32, i32* %dim.addr, align 4
  %sub101 = sub nsw i32 1, %46
  %idxprom102 = sext i32 %sub101 to i64
  %47 = load %union.rec*, %union.rec** %res, align 8
  %os1103 = bitcast %union.rec* %47 to %struct.word_type*
  %ou3104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 3
  %os31105 = bitcast %union.THIRD_UNION* %ou3104 to %struct.anon.6*
  %oback106 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %oback106, i32 0, i64 %idxprom102
  store i32 %45, i32* %arrayidx107, align 4
  %48 = load i32, i32* %dim.addr, align 4
  %sub108 = sub nsw i32 1, %48
  %idxprom109 = sext i32 %sub108 to i64
  %49 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1110 = bitcast %union.rec* %49 to %struct.word_type*
  %ou3111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 3
  %os31112 = bitcast %union.THIRD_UNION* %ou3111 to %struct.anon.6*
  %ofwd113 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31112, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd113, i32 0, i64 %idxprom109
  %50 = load i32, i32* %arrayidx114, align 4
  %51 = load i32, i32* %dim.addr, align 4
  %sub115 = sub nsw i32 1, %51
  %idxprom116 = sext i32 %sub115 to i64
  %52 = load %union.rec*, %union.rec** %res, align 8
  %os1117 = bitcast %union.rec* %52 to %struct.word_type*
  %ou3118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 3
  %os31119 = bitcast %union.THIRD_UNION* %ou3118 to %struct.anon.6*
  %ofwd120 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31119, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd120, i32 0, i64 %idxprom116
  store i32 %50, i32* %arrayidx121, align 4
  %53 = load %union.rec*, %union.rec** %y.addr, align 8
  store %union.rec* %53, %union.rec** @zz_hold, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1122 = bitcast %union.rec* %54 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 1
  %osucc125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 1
  %55 = load %union.rec*, %union.rec** %osucc125, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp126 = icmp eq %union.rec* %55, %56
  br i1 %cmp126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.72
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %57 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  %58 = load %union.rec*, %union.rec** %osucc131, align 8
  store %union.rec* %58, %union.rec** @zz_res, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %59 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 1
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %opred135, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1136 = bitcast %union.rec* %61 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 1
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  store %union.rec* %60, %union.rec** %opred139, align 8
  %62 = load %union.rec*, %union.rec** @zz_res, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %63 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 1
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred143, align 8
  %os1144 = bitcast %union.rec* %64 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 1
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  store %union.rec* %62, %union.rec** %osucc147, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1148 = bitcast %union.rec* %66 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 1
  %osucc151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc151, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1152 = bitcast %union.rec* %67 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 1
  %opred155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred155, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %68, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %69 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %69, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp156 = icmp eq %union.rec* %71, null
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %cond.end
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.194

cond.false.159:                                   ; preds = %cond.end
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp160 = icmp eq %union.rec* %73, null
  br i1 %cmp160, label %cond.true.162, label %cond.false.163

cond.true.162:                                    ; preds = %cond.false.159
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.192

cond.false.163:                                   ; preds = %cond.false.159
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1164 = bitcast %union.rec* %75 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 1
  %opred167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred167, align 8
  store %union.rec* %76, %union.rec** @zz_tmp, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1168 = bitcast %union.rec* %77 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 1
  %opred171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred171, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1172 = bitcast %union.rec* %79 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 1
  %opred175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred175, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1176 = bitcast %union.rec* %81 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 1
  %opred179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred179, align 8
  %os1180 = bitcast %union.rec* %82 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 1
  %osucc183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc183, align 8
  %83 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1184 = bitcast %union.rec* %84 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 1
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred187, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1188 = bitcast %union.rec* %86 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 1
  %osucc191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc191, align 8
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.163, %cond.true.162
  %cond193 = phi %union.rec* [ %74, %cond.true.162 ], [ %85, %cond.false.163 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.true.158
  %cond195 = phi %union.rec* [ %72, %cond.true.158 ], [ %cond193, %cond.end.192 ]
  %87 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv196 = zext i8 %87 to i32
  store i32 %conv196, i32* @zz_size, align 4
  %conv197 = sext i32 %conv196 to i64
  %cmp198 = icmp uge i64 %conv197, 265
  br i1 %cmp198, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %cond.end.194
  %88 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call201 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %88)
  br label %if.end.219

if.else.202:                                      ; preds = %cond.end.194
  %89 = load i32, i32* @zz_size, align 4
  %idxprom203 = sext i32 %89 to i64
  %arrayidx204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom203
  %90 = load %union.rec*, %union.rec** %arrayidx204, align 8
  %cmp205 = icmp eq %union.rec* %90, null
  br i1 %cmp205, label %if.then.207, label %if.else.209

if.then.207:                                      ; preds = %if.else.202
  %91 = load i32, i32* @zz_size, align 4
  %92 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call208 = call %union.rec* @GetMemory(i32 %91, %struct.FILE_POS* %92)
  store %union.rec* %call208, %union.rec** @zz_hold, align 8
  br label %if.end.218

if.else.209:                                      ; preds = %if.else.202
  %93 = load i32, i32* @zz_size, align 4
  %idxprom210 = sext i32 %93 to i64
  %arrayidx211 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom210
  %94 = load %union.rec*, %union.rec** %arrayidx211, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1212 = bitcast %union.rec* %95 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %opred215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred215, align 8
  %97 = load i32, i32* @zz_size, align 4
  %idxprom216 = sext i32 %97 to i64
  %arrayidx217 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom216
  store %union.rec* %96, %union.rec** %arrayidx217, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.209, %if.then.207
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.200
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 1
  %os11222 = bitcast %union.FIRST_UNION* %ou1221 to %struct.anon*
  %otype223 = getelementptr inbounds %struct.anon, %struct.anon* %os11222, i32 0, i32 0
  store i8 0, i8* %otype223, align 1
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1224 = bitcast %union.rec* %100 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 1
  %osucc227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 1
  store %union.rec* %99, %union.rec** %osucc227, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %101 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 1
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred231, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1232 = bitcast %union.rec* %102 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 0
  %osucc235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 1
  store %union.rec* %99, %union.rec** %osucc235, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %103 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 0
  %opred239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred239, align 8
  store %union.rec* %99, %union.rec** @xx_link, align 8
  %104 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %104, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp240 = icmp eq %union.rec* %106, null
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %if.end.219
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.278

cond.false.243:                                   ; preds = %if.end.219
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp244 = icmp eq %union.rec* %108, null
  br i1 %cmp244, label %cond.true.246, label %cond.false.247

cond.true.246:                                    ; preds = %cond.false.243
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.276

cond.false.247:                                   ; preds = %cond.false.243
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1248 = bitcast %union.rec* %110 to %struct.word_type*
  %olist249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist249, i32 0, i64 0
  %opred251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx250, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred251, align 8
  store %union.rec* %111, %union.rec** @zz_tmp, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1252 = bitcast %union.rec* %112 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 0
  %opred255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred255, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1256 = bitcast %union.rec* %114 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 0
  %opred259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 0
  store %union.rec* %113, %union.rec** %opred259, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1260 = bitcast %union.rec* %116 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 0
  %opred263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred263, align 8
  %os1264 = bitcast %union.rec* %117 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %osucc267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 1
  store %union.rec* %115, %union.rec** %osucc267, align 8
  %118 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1268 = bitcast %union.rec* %119 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 0
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  store %union.rec* %118, %union.rec** %opred271, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1272 = bitcast %union.rec* %121 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 0
  %osucc275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 1
  store %union.rec* %120, %union.rec** %osucc275, align 8
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.247, %cond.true.246
  %cond277 = phi %union.rec* [ %109, %cond.true.246 ], [ %120, %cond.false.247 ]
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.end.276, %cond.true.242
  %cond279 = phi %union.rec* [ %107, %cond.true.242 ], [ %cond277, %cond.end.276 ]
  %122 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %122, %union.rec** @zz_res, align 8
  %123 = load %union.rec*, %union.rec** %y.addr, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp280 = icmp eq %union.rec* %124, null
  br i1 %cmp280, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %cond.end.278
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.318

cond.false.283:                                   ; preds = %cond.end.278
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp284 = icmp eq %union.rec* %126, null
  br i1 %cmp284, label %cond.true.286, label %cond.false.287

cond.true.286:                                    ; preds = %cond.false.283
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.316

cond.false.287:                                   ; preds = %cond.false.283
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1288 = bitcast %union.rec* %128 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 1
  %opred291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %opred291, align 8
  store %union.rec* %129, %union.rec** @zz_tmp, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1292 = bitcast %union.rec* %130 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 1
  %opred295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred295, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1296 = bitcast %union.rec* %132 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 1
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  store %union.rec* %131, %union.rec** %opred299, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1300 = bitcast %union.rec* %134 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 1
  %opred303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred303, align 8
  %os1304 = bitcast %union.rec* %135 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 1
  %osucc307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 1
  store %union.rec* %133, %union.rec** %osucc307, align 8
  %136 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1308 = bitcast %union.rec* %137 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 1
  %opred311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 0
  store %union.rec* %136, %union.rec** %opred311, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  %139 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1312 = bitcast %union.rec* %139 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %osucc315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc315, align 8
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.287, %cond.true.286
  %cond317 = phi %union.rec* [ %127, %cond.true.286 ], [ %138, %cond.false.287 ]
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.end.316, %cond.true.282
  %cond319 = phi %union.rec* [ %125, %cond.true.282 ], [ %cond317, %cond.end.316 ]
  %140 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %140
}

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @InterposeWideOrHigh(%union.rec* %y, i32 %dim) #0 {
entry:
  %y.addr = alloca %union.rec*, align 8
  %dim.addr = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load i32, i32* %dim.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i32 26, i32 27
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp2 = icmp uge i64 %conv1, 265
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end.16

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @zz_size, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4
  %4 = load %union.rec*, %union.rec** %arrayidx5, align 8
  %cmp6 = icmp eq %union.rec* %4, null
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %5 = load i32, i32* @zz_size, align 4
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call9 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* %6)
  store %union.rec* %call9, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  %8 = load %union.rec*, %union.rec** %arrayidx12, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  %11 = load i32, i32* @zz_size, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom14
  store %union.rec* %10, %union.rec** %arrayidx15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %12 = load i32, i32* %dim.addr, align 4
  %cmp17 = icmp eq i32 %12, 0
  %cond19 = select i1 %cmp17, i32 26, i32 27
  %conv20 = trunc i32 %cond19 to i8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os121 = bitcast %union.rec* %13 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 %conv20, i8* %otype, align 1
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %16 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred28 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred28, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %17 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 0
  %osucc32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc32, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %18 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred36, align 8
  store %union.rec* %14, %union.rec** %res, align 8
  %19 = load %union.rec*, %union.rec** %y.addr, align 8
  %os137 = bitcast %union.rec* %19 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou138 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %20 = load i16, i16* %ofile_num, align 2
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos41 = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %ofile_num42 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos41, i32 0, i32 2
  store i16 %20, i16* %ofile_num42, align 2
  %22 = load %union.rec*, %union.rec** %y.addr, align 8
  %os143 = bitcast %union.rec* %22 to %struct.word_type*
  %ou144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 1
  %ofpos45 = bitcast %union.FIRST_UNION* %ou144 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos45, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %23 = load %union.rec*, %union.rec** %res, align 8
  %os146 = bitcast %union.rec* %23 to %struct.word_type*
  %ou147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 1
  %ofpos48 = bitcast %union.FIRST_UNION* %ou147 to %struct.FILE_POS*
  %oline_num49 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos48, i32 0, i32 3
  %bf.load50 = load i32, i32* %oline_num49, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear51 = and i32 %bf.load50, -1048576
  %bf.set = or i32 %bf.clear51, %bf.value
  store i32 %bf.set, i32* %oline_num49, align 4
  %24 = load %union.rec*, %union.rec** %y.addr, align 8
  %os152 = bitcast %union.rec* %24 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %ofpos54 = bitcast %union.FIRST_UNION* %ou153 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos54, i32 0, i32 3
  %bf.load55 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load55, 20
  %25 = load %union.rec*, %union.rec** %res, align 8
  %os156 = bitcast %union.rec* %25 to %struct.word_type*
  %ou157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 1
  %ofpos58 = bitcast %union.FIRST_UNION* %ou157 to %struct.FILE_POS*
  %ocol_num59 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos58, i32 0, i32 3
  %bf.load60 = load i32, i32* %ocol_num59, align 4
  %bf.value61 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value61, 20
  %bf.clear62 = and i32 %bf.load60, 1048575
  %bf.set63 = or i32 %bf.clear62, %bf.shl
  store i32 %bf.set63, i32* %ocol_num59, align 4
  %26 = load i32, i32* %dim.addr, align 4
  %idxprom64 = sext i32 %26 to i64
  %27 = load %union.rec*, %union.rec** %y.addr, align 8
  %os165 = bitcast %union.rec* %27 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom64
  %28 = load i32, i32* %arrayidx66, align 4
  %29 = load i32, i32* %dim.addr, align 4
  %idxprom67 = sext i32 %29 to i64
  %30 = load %union.rec*, %union.rec** %res, align 8
  %os168 = bitcast %union.rec* %30 to %struct.word_type*
  %ou369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 3
  %os3170 = bitcast %union.THIRD_UNION* %ou369 to %struct.anon.6*
  %oback71 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %oback71, i32 0, i64 %idxprom67
  store i32 %28, i32* %arrayidx72, align 4
  %31 = load i32, i32* %dim.addr, align 4
  %idxprom73 = sext i32 %31 to i64
  %32 = load %union.rec*, %union.rec** %y.addr, align 8
  %os174 = bitcast %union.rec* %32 to %struct.word_type*
  %ou375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 3
  %os3176 = bitcast %union.THIRD_UNION* %ou375 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3176, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom73
  %33 = load i32, i32* %arrayidx77, align 4
  %34 = load i32, i32* %dim.addr, align 4
  %idxprom78 = sext i32 %34 to i64
  %35 = load %union.rec*, %union.rec** %res, align 8
  %os179 = bitcast %union.rec* %35 to %struct.word_type*
  %ou380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 3
  %os3181 = bitcast %union.THIRD_UNION* %ou380 to %struct.anon.6*
  %ofwd82 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3181, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd82, i32 0, i64 %idxprom78
  store i32 %33, i32* %arrayidx83, align 4
  %36 = load i32, i32* %dim.addr, align 4
  %sub = sub nsw i32 1, %36
  %idxprom84 = sext i32 %sub to i64
  %37 = load %union.rec*, %union.rec** %y.addr, align 8
  %os185 = bitcast %union.rec* %37 to %struct.word_type*
  %ou386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 3
  %os3187 = bitcast %union.THIRD_UNION* %ou386 to %struct.anon.6*
  %oback88 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %oback88, i32 0, i64 %idxprom84
  %38 = load i32, i32* %arrayidx89, align 4
  %39 = load i32, i32* %dim.addr, align 4
  %sub90 = sub nsw i32 1, %39
  %idxprom91 = sext i32 %sub90 to i64
  %40 = load %union.rec*, %union.rec** %res, align 8
  %os192 = bitcast %union.rec* %40 to %struct.word_type*
  %ou393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 3
  %os3194 = bitcast %union.THIRD_UNION* %ou393 to %struct.anon.6*
  %oback95 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %oback95, i32 0, i64 %idxprom91
  store i32 %38, i32* %arrayidx96, align 4
  %41 = load i32, i32* %dim.addr, align 4
  %sub97 = sub nsw i32 1, %41
  %idxprom98 = sext i32 %sub97 to i64
  %42 = load %union.rec*, %union.rec** %y.addr, align 8
  %os199 = bitcast %union.rec* %42 to %struct.word_type*
  %ou3100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 3
  %os31101 = bitcast %union.THIRD_UNION* %ou3100 to %struct.anon.6*
  %ofwd102 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd102, i32 0, i64 %idxprom98
  %43 = load i32, i32* %arrayidx103, align 4
  %44 = load i32, i32* %dim.addr, align 4
  %sub104 = sub nsw i32 1, %44
  %idxprom105 = sext i32 %sub104 to i64
  %45 = load %union.rec*, %union.rec** %res, align 8
  %os1106 = bitcast %union.rec* %45 to %struct.word_type*
  %ou3107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 3
  %os31108 = bitcast %union.THIRD_UNION* %ou3107 to %struct.anon.6*
  %ofwd109 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31108, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd109, i32 0, i64 %idxprom105
  store i32 %43, i32* %arrayidx110, align 4
  %46 = load %union.rec*, %union.rec** %res, align 8
  %os2 = bitcast %union.rec* %46 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 8388607, i32* %obc, align 4
  %47 = load i32, i32* %dim.addr, align 4
  %idxprom111 = sext i32 %47 to i64
  %48 = load %union.rec*, %union.rec** %res, align 8
  %os1112 = bitcast %union.rec* %48 to %struct.word_type*
  %ou3113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 3
  %os31114 = bitcast %union.THIRD_UNION* %ou3113 to %struct.anon.6*
  %oback115 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %oback115, i32 0, i64 %idxprom111
  %49 = load i32, i32* %arrayidx116, align 4
  %50 = load i32, i32* %dim.addr, align 4
  %idxprom117 = sext i32 %50 to i64
  %51 = load %union.rec*, %union.rec** %res, align 8
  %os1118 = bitcast %union.rec* %51 to %struct.word_type*
  %ou3119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 3
  %os31120 = bitcast %union.THIRD_UNION* %ou3119 to %struct.anon.6*
  %ofwd121 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31120, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd121, i32 0, i64 %idxprom117
  %52 = load i32, i32* %arrayidx122, align 4
  %add = add nsw i32 %49, %52
  %53 = load %union.rec*, %union.rec** %res, align 8
  %os2123 = bitcast %union.rec* %53 to %struct.closure_type*
  %ou4124 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2123, i32 0, i32 4
  %oconstraint125 = bitcast %union.FOURTH_UNION* %ou4124 to %struct.CONSTRAINT*
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint125, i32 0, i32 1
  store i32 %add, i32* %obfc, align 4
  %54 = load %union.rec*, %union.rec** %res, align 8
  %os2126 = bitcast %union.rec* %54 to %struct.closure_type*
  %ou4127 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2126, i32 0, i32 4
  %oconstraint128 = bitcast %union.FOURTH_UNION* %ou4127 to %struct.CONSTRAINT*
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint128, i32 0, i32 2
  store i32 8388607, i32* %ofc, align 4
  %55 = load %union.rec*, %union.rec** %y.addr, align 8
  store %union.rec* %55, %union.rec** @zz_hold, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1129 = bitcast %union.rec* %56 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 1
  %osucc132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %osucc132, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp133 = icmp eq %union.rec* %57, %58
  br i1 %cmp133, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1135 = bitcast %union.rec* %59 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 1
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  %60 = load %union.rec*, %union.rec** %osucc138, align 8
  store %union.rec* %60, %union.rec** @zz_res, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1139 = bitcast %union.rec* %61 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 1
  %opred142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred142, align 8
  %63 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1143 = bitcast %union.rec* %63 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 1
  %opred146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 0
  store %union.rec* %62, %union.rec** %opred146, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1147 = bitcast %union.rec* %65 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 1
  %opred150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %opred150, align 8
  %os1151 = bitcast %union.rec* %66 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 1
  %osucc154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc154, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %68 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 1
  %osucc158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc158, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1159 = bitcast %union.rec* %69 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 1
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred162, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond163 = phi %union.rec* [ null, %cond.true ], [ %70, %cond.false ]
  store %union.rec* %cond163, %union.rec** @xx_tmp, align 8
  %71 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %71, %union.rec** @zz_res, align 8
  %72 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %72, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp164 = icmp eq %union.rec* %73, null
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.end
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.202

cond.false.167:                                   ; preds = %cond.end
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp168 = icmp eq %union.rec* %75, null
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %cond.false.167
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.200

cond.false.171:                                   ; preds = %cond.false.167
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1172 = bitcast %union.rec* %77 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 1
  %opred175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred175, align 8
  store %union.rec* %78, %union.rec** @zz_tmp, align 8
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1176 = bitcast %union.rec* %79 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 1
  %opred179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred179, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1180 = bitcast %union.rec* %81 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 1
  %opred183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 0
  store %union.rec* %80, %union.rec** %opred183, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1184 = bitcast %union.rec* %83 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 1
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  %84 = load %union.rec*, %union.rec** %opred187, align 8
  %os1188 = bitcast %union.rec* %84 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 1
  %osucc191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 1
  store %union.rec* %82, %union.rec** %osucc191, align 8
  %85 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %86 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1192 = bitcast %union.rec* %86 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 1
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred195, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  %88 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1196 = bitcast %union.rec* %88 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 1
  %osucc199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc199, align 8
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.171, %cond.true.170
  %cond201 = phi %union.rec* [ %76, %cond.true.170 ], [ %87, %cond.false.171 ]
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.end.200, %cond.true.166
  %cond203 = phi %union.rec* [ %74, %cond.true.166 ], [ %cond201, %cond.end.200 ]
  %89 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv204 = zext i8 %89 to i32
  store i32 %conv204, i32* @zz_size, align 4
  %conv205 = sext i32 %conv204 to i64
  %cmp206 = icmp uge i64 %conv205, 265
  br i1 %cmp206, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %cond.end.202
  %90 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call209 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %90)
  br label %if.end.227

if.else.210:                                      ; preds = %cond.end.202
  %91 = load i32, i32* @zz_size, align 4
  %idxprom211 = sext i32 %91 to i64
  %arrayidx212 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom211
  %92 = load %union.rec*, %union.rec** %arrayidx212, align 8
  %cmp213 = icmp eq %union.rec* %92, null
  br i1 %cmp213, label %if.then.215, label %if.else.217

if.then.215:                                      ; preds = %if.else.210
  %93 = load i32, i32* @zz_size, align 4
  %94 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call216 = call %union.rec* @GetMemory(i32 %93, %struct.FILE_POS* %94)
  store %union.rec* %call216, %union.rec** @zz_hold, align 8
  br label %if.end.226

if.else.217:                                      ; preds = %if.else.210
  %95 = load i32, i32* @zz_size, align 4
  %idxprom218 = sext i32 %95 to i64
  %arrayidx219 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom218
  %96 = load %union.rec*, %union.rec** %arrayidx219, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %97 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 0
  %opred223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred223, align 8
  %99 = load i32, i32* @zz_size, align 4
  %idxprom224 = sext i32 %99 to i64
  %arrayidx225 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom224
  store %union.rec* %98, %union.rec** %arrayidx225, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.217, %if.then.215
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.208
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %100 to %struct.word_type*
  %ou1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 1
  %os11230 = bitcast %union.FIRST_UNION* %ou1229 to %struct.anon*
  %otype231 = getelementptr inbounds %struct.anon, %struct.anon* %os11230, i32 0, i32 0
  store i8 0, i8* %otype231, align 1
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1232 = bitcast %union.rec* %102 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 1
  %osucc235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 1
  store %union.rec* %101, %union.rec** %osucc235, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %103 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 1
  %opred239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 0
  store %union.rec* %101, %union.rec** %opred239, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1240 = bitcast %union.rec* %104 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 0
  %osucc243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 1
  store %union.rec* %101, %union.rec** %osucc243, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1244 = bitcast %union.rec* %105 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 0
  %opred247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 0
  store %union.rec* %101, %union.rec** %opred247, align 8
  store %union.rec* %101, %union.rec** @xx_link, align 8
  %106 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %106, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %107, %union.rec** @zz_hold, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp248 = icmp eq %union.rec* %108, null
  br i1 %cmp248, label %cond.true.250, label %cond.false.251

cond.true.250:                                    ; preds = %if.end.227
  %109 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.286

cond.false.251:                                   ; preds = %if.end.227
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp252 = icmp eq %union.rec* %110, null
  br i1 %cmp252, label %cond.true.254, label %cond.false.255

cond.true.254:                                    ; preds = %cond.false.251
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.284

cond.false.255:                                   ; preds = %cond.false.251
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1256 = bitcast %union.rec* %112 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 0
  %opred259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred259, align 8
  store %union.rec* %113, %union.rec** @zz_tmp, align 8
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1260 = bitcast %union.rec* %114 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 0
  %opred263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred263, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1264 = bitcast %union.rec* %116 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %opred267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 0
  store %union.rec* %115, %union.rec** %opred267, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1268 = bitcast %union.rec* %118 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 0
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %opred271, align 8
  %os1272 = bitcast %union.rec* %119 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 0
  %osucc275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 1
  store %union.rec* %117, %union.rec** %osucc275, align 8
  %120 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %121 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1276 = bitcast %union.rec* %121 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 0
  %opred279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 0
  store %union.rec* %120, %union.rec** %opred279, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %123 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1280 = bitcast %union.rec* %123 to %struct.word_type*
  %olist281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist281, i32 0, i64 0
  %osucc283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx282, i32 0, i32 1
  store %union.rec* %122, %union.rec** %osucc283, align 8
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.255, %cond.true.254
  %cond285 = phi %union.rec* [ %111, %cond.true.254 ], [ %122, %cond.false.255 ]
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.end.284, %cond.true.250
  %cond287 = phi %union.rec* [ %109, %cond.true.250 ], [ %cond285, %cond.end.284 ]
  %124 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %124, %union.rec** @zz_res, align 8
  %125 = load %union.rec*, %union.rec** %y.addr, align 8
  store %union.rec* %125, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp288 = icmp eq %union.rec* %126, null
  br i1 %cmp288, label %cond.true.290, label %cond.false.291

cond.true.290:                                    ; preds = %cond.end.286
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.326

cond.false.291:                                   ; preds = %cond.end.286
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp292 = icmp eq %union.rec* %128, null
  br i1 %cmp292, label %cond.true.294, label %cond.false.295

cond.true.294:                                    ; preds = %cond.false.291
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.324

cond.false.295:                                   ; preds = %cond.false.291
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1296 = bitcast %union.rec* %130 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 1
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred299, align 8
  store %union.rec* %131, %union.rec** @zz_tmp, align 8
  %132 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1300 = bitcast %union.rec* %132 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 1
  %opred303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred303, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1304 = bitcast %union.rec* %134 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 1
  %opred307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 0
  store %union.rec* %133, %union.rec** %opred307, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1308 = bitcast %union.rec* %136 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 1
  %opred311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %opred311, align 8
  %os1312 = bitcast %union.rec* %137 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %osucc315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 1
  store %union.rec* %135, %union.rec** %osucc315, align 8
  %138 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1316 = bitcast %union.rec* %139 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %opred319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 0
  store %union.rec* %138, %union.rec** %opred319, align 8
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  %141 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1320 = bitcast %union.rec* %141 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 1
  %osucc323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 1
  store %union.rec* %140, %union.rec** %osucc323, align 8
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.295, %cond.true.294
  %cond325 = phi %union.rec* [ %129, %cond.true.294 ], [ %140, %cond.false.295 ]
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.end.324, %cond.true.290
  %cond327 = phi %union.rec* [ %127, %cond.true.290 ], [ %cond325, %cond.end.324 ]
  %142 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %142
}

declare i8* @Image(i32) #1

declare void @Interpose(%union.rec*, i32, %union.rec*, %union.rec*) #1

declare void @Promote(%union.rec*, %union.rec*, %union.rec*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
