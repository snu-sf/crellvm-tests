; ModuleID = './MultiSource.Benchmarks.MiBench/82.consumer-typeset.z18.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
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
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@initial_constraint = internal global %struct.CONSTRAINT zeroinitializer, align 4
@InitialEnvironment = common global %union.rec* null, align 8
@InitialStyle = common global %struct.STYLE zeroinitializer, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@PrintSym = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@root_galley = internal global %union.rec* null, align 8
@InputSym = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TransferInit: recs   != nilobj!\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"TransferInit: inners != nilobj!\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"TransferInit: initial galley!\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"TransferInit: input sym not external!\00", align 1
@itop = internal global i32 0, align 4
@targets = internal global [30 x %union.rec*] zeroinitializer, align 16
@constraints = internal global [30 x %struct.CONSTRAINT] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [28 x i8] c"TransferBegin: non-CLOSURE!\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot attach galley %s\00", align 1
@xx_hold = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"galley nested too deeply (max is %d)\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"galley %s deleted (insufficient width at target)\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"right parameter of %s is vertically constrained\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"TransferComponent: internal!\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"TransferComponent: input child!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"TransferEnd: input child!\00", align 1

; Function Attrs: nounwind uwtable
define void @TransferInit(%union.rec* %InitEnv) #0 {
entry:
  %InitEnv.addr = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %recs = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %nothing = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %up_hd = alloca %union.rec*, align 8
  %why = alloca %union.rec*, align 8
  store %union.rec* %InitEnv, %union.rec** %InitEnv.addr, align 8
  store i32 8388606, i32* getelementptr inbounds (%struct.CONSTRAINT, %struct.CONSTRAINT* @initial_constraint, i32 0, i32 0), align 4
  store i32 8388606, i32* getelementptr inbounds (%struct.CONSTRAINT, %struct.CONSTRAINT* @initial_constraint, i32 0, i32 1), align 4
  store i32 8388606, i32* getelementptr inbounds (%struct.CONSTRAINT, %struct.CONSTRAINT* @initial_constraint, i32 0, i32 2), align 4
  %0 = load %union.rec*, %union.rec** %InitEnv.addr, align 8
  store %union.rec* %0, %union.rec** @InitialEnvironment, align 8
  %bf.load = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.clear = and i16 %bf.load, -129
  store i16 %bf.clear, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.load1 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.clear2 = and i16 %bf.load1, -257
  store i16 %bf.clear2, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.load3 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.clear4 = and i16 %bf.load3, -513
  store i16 %bf.clear4, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.load5 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.clear6 = and i16 %bf.load5, -7169
  %bf.set = or i16 %bf.clear6, 1024
  store i16 %bf.set, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.load7 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %bf.clear8 = and i16 %bf.load7, 8191
  %bf.set9 = or i16 %bf.clear8, 24576
  store i16 %bf.set9, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  store i16 360, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 1), align 2
  %bf.load10 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.clear11 = and i8 %bf.load10, -2
  store i8 %bf.clear11, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.load12 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.clear13 = and i8 %bf.load12, -3
  store i8 %bf.clear13, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.load14 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.clear15 = and i8 %bf.load14, -5
  store i8 %bf.clear15, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.load16 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.clear17 = and i8 %bf.load16, -113
  store i8 %bf.clear17, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.load18 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.clear19 = and i16 %bf.load18, -129
  store i16 %bf.clear19, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.load20 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.clear21 = and i16 %bf.load20, -257
  store i16 %bf.clear21, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.load22 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.clear23 = and i16 %bf.load22, -513
  %bf.set24 = or i16 %bf.clear23, 512
  store i16 %bf.set24, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.load25 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.clear26 = and i16 %bf.load25, -7169
  %bf.set27 = or i16 %bf.clear26, 1024
  store i16 %bf.set27, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.load28 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %bf.clear29 = and i16 %bf.load28, 8191
  %bf.set30 = or i16 %bf.clear29, 8192
  store i16 %bf.set30, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  store i16 120, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 1), align 2
  %bf.load31 = load i8, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %bf.clear32 = and i8 %bf.load31, -4
  store i8 %bf.clear32, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %bf.load33 = load i8, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %bf.clear34 = and i8 %bf.load33, -13
  store i8 %bf.clear34, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %bf.load35 = load i8, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %bf.clear36 = and i8 %bf.load35, -113
  store i8 %bf.clear36, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %bf.load37 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.clear38 = and i8 %bf.load37, -9
  store i8 %bf.clear38, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %bf.load39 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.clear40 = and i32 %bf.load39, -4096
  store i32 %bf.clear40, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.load41 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.clear42 = and i32 %bf.load41, -4190209
  store i32 %bf.clear42, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.load43 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.clear44 = and i32 %bf.load43, -12582913
  store i32 %bf.clear44, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.load45 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.clear46 = and i32 %bf.load45, -1056964609
  store i32 %bf.clear46, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  store i16 0, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 2), align 2
  store i16 0, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 3), align 2
  %bf.load47 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.clear48 = and i32 %bf.load47, 2147483647
  store i32 %bf.clear48, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.load49 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %bf.clear50 = and i32 %bf.load49, -1073741825
  store i32 %bf.clear50, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv51 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv51, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end.63

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %4 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp53 = icmp eq %union.rec* %4, null
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.else
  %5 = load i32, i32* @zz_size, align 4
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call56 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* %6)
  store %union.rec* %call56, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.57:                                       ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %idxprom58 = sext i32 %7 to i64
  %arrayidx59 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom58
  %8 = load %union.rec*, %union.rec** %arrayidx59, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  %11 = load i32, i32* @zz_size, align 4
  %idxprom61 = sext i32 %11 to i64
  %arrayidx62 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom61
  store %union.rec* %10, %union.rec** %arrayidx62, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.57, %if.then.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %if.then
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 8, i8* %otype, align 1
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %14 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os168 = bitcast %union.rec* %15 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred71, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %16 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %osucc75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc75, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os176 = bitcast %union.rec* %17 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred79, align 8
  store %union.rec* %13, %union.rec** %up_hd, align 8
  %18 = load %union.rec*, %union.rec** %up_hd, align 8
  %os180 = bitcast %union.rec* %18 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oforce_gall = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load81 = load i16, i16* %oforce_gall, align 2
  %bf.clear82 = and i16 %bf.load81, -4097
  store i16 %bf.clear82, i16* %oforce_gall, align 2
  %19 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2a = bitcast %union.rec* %19 to %struct.head_type*
  %olimiter = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter, align 8
  %20 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2a83 = bitcast %union.rec* %20 to %struct.head_type*
  %oenclose_obj = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a83, i32 0, i32 12
  store %union.rec* null, %union.rec** %oenclose_obj, align 8
  %21 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2 = bitcast %union.rec* %21 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  store %union.rec* null, %union.rec** %oactual, align 8
  %22 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2a84 = bitcast %union.rec* %22 to %struct.head_type*
  %odead_headers = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a84, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers, align 8
  %23 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2a85 = bitcast %union.rec* %23 to %struct.head_type*
  %oheaders = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a85, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders, align 8
  %24 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2a86 = bitcast %union.rec* %24 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a86, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints, align 8
  %25 = load %union.rec*, %union.rec** %up_hd, align 8
  %os2a87 = bitcast %union.rec* %25 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a87, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components, align 8
  %26 = load %union.rec*, %union.rec** %up_hd, align 8
  %os188 = bitcast %union.rec* %26 to %struct.word_type*
  %ou289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 2
  %os2390 = bitcast %union.SECOND_UNION* %ou289 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2390, i32 0, i32 2
  %bf.load91 = load i16, i16* %ogall_dir, align 2
  %bf.clear92 = and i16 %bf.load91, -257
  %bf.set93 = or i16 %bf.clear92, 256
  store i16 %bf.set93, i16* %ogall_dir, align 2
  %27 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 122), align 1
  %conv94 = zext i8 %27 to i32
  store i32 %conv94, i32* @zz_size, align 4
  %conv95 = sext i32 %conv94 to i64
  %cmp96 = icmp uge i64 %conv95, 265
  br i1 %cmp96, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.end.63
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call99 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %28)
  br label %if.end.117

if.else.100:                                      ; preds = %if.end.63
  %29 = load i32, i32* @zz_size, align 4
  %idxprom101 = sext i32 %29 to i64
  %arrayidx102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom101
  %30 = load %union.rec*, %union.rec** %arrayidx102, align 8
  %cmp103 = icmp eq %union.rec* %30, null
  br i1 %cmp103, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.else.100
  %31 = load i32, i32* @zz_size, align 4
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call106 = call %union.rec* @GetMemory(i32 %31, %struct.FILE_POS* %32)
  store %union.rec* %call106, %union.rec** @zz_hold, align 8
  br label %if.end.116

if.else.107:                                      ; preds = %if.else.100
  %33 = load i32, i32* @zz_size, align 4
  %idxprom108 = sext i32 %33 to i64
  %arrayidx109 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom108
  %34 = load %union.rec*, %union.rec** %arrayidx109, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %35 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred113, align 8
  %37 = load i32, i32* @zz_size, align 4
  %idxprom114 = sext i32 %37 to i64
  %arrayidx115 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom114
  store %union.rec* %36, %union.rec** %arrayidx115, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.107, %if.then.105
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.98
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %38 to %struct.word_type*
  %ou1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 1
  %os11120 = bitcast %union.FIRST_UNION* %ou1119 to %struct.anon*
  %otype121 = getelementptr inbounds %struct.anon, %struct.anon* %os11120, i32 0, i32 0
  store i8 122, i8* %otype121, align 1
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1122 = bitcast %union.rec* %40 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 1
  %osucc125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc125, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1126 = bitcast %union.rec* %41 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 1
  %opred129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred129, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1130 = bitcast %union.rec* %42 to %struct.word_type*
  %olist131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist131, i32 0, i64 0
  %osucc133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx132, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc133, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1134 = bitcast %union.rec* %43 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 0
  %opred137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred137, align 8
  store %union.rec* %39, %union.rec** %dest_index, align 8
  %44 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv138 = zext i8 %44 to i32
  store i32 %conv138, i32* @zz_size, align 4
  %conv139 = sext i32 %conv138 to i64
  %cmp140 = icmp uge i64 %conv139, 265
  br i1 %cmp140, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.end.117
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call143 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %45)
  br label %if.end.161

if.else.144:                                      ; preds = %if.end.117
  %46 = load i32, i32* @zz_size, align 4
  %idxprom145 = sext i32 %46 to i64
  %arrayidx146 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom145
  %47 = load %union.rec*, %union.rec** %arrayidx146, align 8
  %cmp147 = icmp eq %union.rec* %47, null
  br i1 %cmp147, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %if.else.144
  %48 = load i32, i32* @zz_size, align 4
  %49 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call150 = call %union.rec* @GetMemory(i32 %48, %struct.FILE_POS* %49)
  store %union.rec* %call150, %union.rec** @zz_hold, align 8
  br label %if.end.160

if.else.151:                                      ; preds = %if.else.144
  %50 = load i32, i32* @zz_size, align 4
  %idxprom152 = sext i32 %50 to i64
  %arrayidx153 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom152
  %51 = load %union.rec*, %union.rec** %arrayidx153, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1154 = bitcast %union.rec* %52 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 0
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred157, align 8
  %54 = load i32, i32* @zz_size, align 4
  %idxprom158 = sext i32 %54 to i64
  %arrayidx159 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom158
  store %union.rec* %53, %union.rec** %arrayidx159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.151, %if.then.149
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.142
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1162 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 1
  %os11164 = bitcast %union.FIRST_UNION* %ou1163 to %struct.anon*
  %otype165 = getelementptr inbounds %struct.anon, %struct.anon* %os11164, i32 0, i32 0
  store i8 2, i8* %otype165, align 1
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %57 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 1
  %osucc169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc169, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1170 = bitcast %union.rec* %58 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %opred173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred173, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %59 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc177, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %60 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 0
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred181, align 8
  store %union.rec* %56, %union.rec** %dest, align 8
  %61 = load %union.rec*, %union.rec** @PrintSym, align 8
  %62 = load %union.rec*, %union.rec** %dest, align 8
  %os2182 = bitcast %union.rec* %62 to %struct.closure_type*
  %oactual183 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2182, i32 0, i32 5
  store %union.rec* %61, %union.rec** %oactual183, align 8
  %63 = load %union.rec*, %union.rec** %dest, align 8
  %64 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2184 = bitcast %union.rec* %64 to %struct.closure_type*
  %oactual185 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2184, i32 0, i32 5
  store %union.rec* %63, %union.rec** %oactual185, align 8
  %65 = load %union.rec*, %union.rec** %dest, align 8
  %os1186 = bitcast %union.rec* %65 to %struct.word_type*
  %ou2187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 2
  %os23188 = bitcast %union.SECOND_UNION* %ou2187 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23188, i32 0, i32 2
  %bf.load189 = load i16, i16* %oexternal_ver, align 2
  %bf.clear190 = and i16 %bf.load189, -17
  %bf.set191 = or i16 %bf.clear190, 16
  store i16 %bf.set191, i16* %oexternal_ver, align 2
  %66 = load %union.rec*, %union.rec** %dest, align 8
  %os1192 = bitcast %union.rec* %66 to %struct.word_type*
  %ou2193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 2
  %os23194 = bitcast %union.SECOND_UNION* %ou2193 to %struct.anon.2*
  %oexternal_hor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23194, i32 0, i32 2
  %bf.load195 = load i16, i16* %oexternal_hor, align 2
  %bf.clear196 = and i16 %bf.load195, -9
  store i16 %bf.clear196, i16* %oexternal_hor, align 2
  %67 = load %union.rec*, %union.rec** %dest, align 8
  %os1197 = bitcast %union.rec* %67 to %struct.word_type*
  %ou2198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 2
  %os23199 = bitcast %union.SECOND_UNION* %ou2198 to %struct.anon.2*
  %othreaded = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23199, i32 0, i32 2
  %bf.load200 = load i16, i16* %othreaded, align 2
  %bf.clear201 = and i16 %bf.load200, -5
  store i16 %bf.clear201, i16* %othreaded, align 2
  %68 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1202 = bitcast %union.rec* %68 to %struct.word_type*
  %ou2203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 2
  %os23204 = bitcast %union.SECOND_UNION* %ou2203 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23204, i32 0, i32 2
  %bf.load205 = load i16, i16* %oblocked, align 2
  %bf.clear206 = and i16 %bf.load205, -33
  store i16 %bf.clear206, i16* %oblocked, align 2
  %69 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv207 = zext i8 %69 to i32
  store i32 %conv207, i32* @zz_size, align 4
  %conv208 = sext i32 %conv207 to i64
  %cmp209 = icmp uge i64 %conv208, 265
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.end.161
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call212 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %70)
  br label %if.end.230

if.else.213:                                      ; preds = %if.end.161
  %71 = load i32, i32* @zz_size, align 4
  %idxprom214 = sext i32 %71 to i64
  %arrayidx215 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom214
  %72 = load %union.rec*, %union.rec** %arrayidx215, align 8
  %cmp216 = icmp eq %union.rec* %72, null
  br i1 %cmp216, label %if.then.218, label %if.else.220

if.then.218:                                      ; preds = %if.else.213
  %73 = load i32, i32* @zz_size, align 4
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call219 = call %union.rec* @GetMemory(i32 %73, %struct.FILE_POS* %74)
  store %union.rec* %call219, %union.rec** @zz_hold, align 8
  br label %if.end.229

if.else.220:                                      ; preds = %if.else.213
  %75 = load i32, i32* @zz_size, align 4
  %idxprom221 = sext i32 %75 to i64
  %arrayidx222 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom221
  %76 = load %union.rec*, %union.rec** %arrayidx222, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1223 = bitcast %union.rec* %77 to %struct.word_type*
  %olist224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist224, i32 0, i64 0
  %opred226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx225, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred226, align 8
  %79 = load i32, i32* @zz_size, align 4
  %idxprom227 = sext i32 %79 to i64
  %arrayidx228 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom227
  store %union.rec* %78, %union.rec** %arrayidx228, align 8
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.220, %if.then.218
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.211
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1231 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 1
  %os11233 = bitcast %union.FIRST_UNION* %ou1232 to %struct.anon*
  %otype234 = getelementptr inbounds %struct.anon, %struct.anon* %os11233, i32 0, i32 0
  store i8 0, i8* %otype234, align 1
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1235 = bitcast %union.rec* %82 to %struct.word_type*
  %olist236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1235, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist236, i32 0, i64 1
  %osucc238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx237, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc238, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1239 = bitcast %union.rec* %83 to %struct.word_type*
  %olist240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist240, i32 0, i64 1
  %opred242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx241, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred242, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1243 = bitcast %union.rec* %84 to %struct.word_type*
  %olist244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1243, i32 0, i32 0
  %arrayidx245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist244, i32 0, i64 0
  %osucc246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx245, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc246, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1247 = bitcast %union.rec* %85 to %struct.word_type*
  %olist248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1247, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist248, i32 0, i64 0
  %opred250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx249, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred250, align 8
  store %union.rec* %81, %union.rec** @xx_link, align 8
  %86 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %86, %union.rec** @zz_res, align 8
  %87 = load %union.rec*, %union.rec** %up_hd, align 8
  store %union.rec* %87, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp251 = icmp eq %union.rec* %88, null
  br i1 %cmp251, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.230
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.285

cond.false:                                       ; preds = %if.end.230
  %90 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp253 = icmp eq %union.rec* %90, null
  br i1 %cmp253, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %cond.false
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.256:                                   ; preds = %cond.false
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1257 = bitcast %union.rec* %92 to %struct.word_type*
  %olist258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist258, i32 0, i64 0
  %opred260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx259, i32 0, i32 0
  %93 = load %union.rec*, %union.rec** %opred260, align 8
  store %union.rec* %93, %union.rec** @zz_tmp, align 8
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1261 = bitcast %union.rec* %94 to %struct.word_type*
  %olist262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist262, i32 0, i64 0
  %opred264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx263, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %opred264, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1265 = bitcast %union.rec* %96 to %struct.word_type*
  %olist266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1265, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist266, i32 0, i64 0
  %opred268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx267, i32 0, i32 0
  store %union.rec* %95, %union.rec** %opred268, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1269 = bitcast %union.rec* %98 to %struct.word_type*
  %olist270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist270, i32 0, i64 0
  %opred272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx271, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred272, align 8
  %os1273 = bitcast %union.rec* %99 to %struct.word_type*
  %olist274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist274, i32 0, i64 0
  %osucc276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx275, i32 0, i32 1
  store %union.rec* %97, %union.rec** %osucc276, align 8
  %100 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1277 = bitcast %union.rec* %101 to %struct.word_type*
  %olist278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist278, i32 0, i64 0
  %opred280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx279, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred280, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %103 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1281 = bitcast %union.rec* %103 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 0
  %osucc284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 1
  store %union.rec* %102, %union.rec** %osucc284, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.256, %cond.true.255
  %cond = phi %union.rec* [ %91, %cond.true.255 ], [ %102, %cond.false.256 ]
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.end, %cond.true
  %cond286 = phi %union.rec* [ %89, %cond.true ], [ %cond, %cond.end ]
  %104 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %104, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp287 = icmp eq %union.rec* %106, null
  br i1 %cmp287, label %cond.true.289, label %cond.false.290

cond.true.289:                                    ; preds = %cond.end.285
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.325

cond.false.290:                                   ; preds = %cond.end.285
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp291 = icmp eq %union.rec* %108, null
  br i1 %cmp291, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %cond.false.290
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.323

cond.false.294:                                   ; preds = %cond.false.290
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1295 = bitcast %union.rec* %110 to %struct.word_type*
  %olist296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist296, i32 0, i64 1
  %opred298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx297, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred298, align 8
  store %union.rec* %111, %union.rec** @zz_tmp, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1299 = bitcast %union.rec* %112 to %struct.word_type*
  %olist300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist300, i32 0, i64 1
  %opred302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx301, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred302, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1303 = bitcast %union.rec* %114 to %struct.word_type*
  %olist304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist304, i32 0, i64 1
  %opred306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx305, i32 0, i32 0
  store %union.rec* %113, %union.rec** %opred306, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1307 = bitcast %union.rec* %116 to %struct.word_type*
  %olist308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1307, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist308, i32 0, i64 1
  %opred310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx309, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred310, align 8
  %os1311 = bitcast %union.rec* %117 to %struct.word_type*
  %olist312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 0
  %arrayidx313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist312, i32 0, i64 1
  %osucc314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx313, i32 0, i32 1
  store %union.rec* %115, %union.rec** %osucc314, align 8
  %118 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1315 = bitcast %union.rec* %119 to %struct.word_type*
  %olist316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1315, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist316, i32 0, i64 1
  %opred318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx317, i32 0, i32 0
  store %union.rec* %118, %union.rec** %opred318, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1319 = bitcast %union.rec* %121 to %struct.word_type*
  %olist320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 0
  %arrayidx321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist320, i32 0, i64 1
  %osucc322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx321, i32 0, i32 1
  store %union.rec* %120, %union.rec** %osucc322, align 8
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.294, %cond.true.293
  %cond324 = phi %union.rec* [ %109, %cond.true.293 ], [ %120, %cond.false.294 ]
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.end.323, %cond.true.289
  %cond326 = phi %union.rec* [ %107, %cond.true.289 ], [ %cond324, %cond.end.323 ]
  %122 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv327 = zext i8 %122 to i32
  store i32 %conv327, i32* @zz_size, align 4
  %conv328 = sext i32 %conv327 to i64
  %cmp329 = icmp uge i64 %conv328, 265
  br i1 %cmp329, label %if.then.331, label %if.else.333

if.then.331:                                      ; preds = %cond.end.325
  %123 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call332 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %123)
  br label %if.end.350

if.else.333:                                      ; preds = %cond.end.325
  %124 = load i32, i32* @zz_size, align 4
  %idxprom334 = sext i32 %124 to i64
  %arrayidx335 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom334
  %125 = load %union.rec*, %union.rec** %arrayidx335, align 8
  %cmp336 = icmp eq %union.rec* %125, null
  br i1 %cmp336, label %if.then.338, label %if.else.340

if.then.338:                                      ; preds = %if.else.333
  %126 = load i32, i32* @zz_size, align 4
  %127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call339 = call %union.rec* @GetMemory(i32 %126, %struct.FILE_POS* %127)
  store %union.rec* %call339, %union.rec** @zz_hold, align 8
  br label %if.end.349

if.else.340:                                      ; preds = %if.else.333
  %128 = load i32, i32* @zz_size, align 4
  %idxprom341 = sext i32 %128 to i64
  %arrayidx342 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom341
  %129 = load %union.rec*, %union.rec** %arrayidx342, align 8
  store %union.rec* %129, %union.rec** @zz_hold, align 8
  store %union.rec* %129, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1343 = bitcast %union.rec* %130 to %struct.word_type*
  %olist344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist344, i32 0, i64 0
  %opred346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx345, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred346, align 8
  %132 = load i32, i32* @zz_size, align 4
  %idxprom347 = sext i32 %132 to i64
  %arrayidx348 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom347
  store %union.rec* %131, %union.rec** %arrayidx348, align 8
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.340, %if.then.338
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.then.331
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1351 = bitcast %union.rec* %133 to %struct.word_type*
  %ou1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1351, i32 0, i32 1
  %os11353 = bitcast %union.FIRST_UNION* %ou1352 to %struct.anon*
  %otype354 = getelementptr inbounds %struct.anon, %struct.anon* %os11353, i32 0, i32 0
  store i8 8, i8* %otype354, align 1
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1355 = bitcast %union.rec* %135 to %struct.word_type*
  %olist356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist356, i32 0, i64 1
  %osucc358 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx357, i32 0, i32 1
  store %union.rec* %134, %union.rec** %osucc358, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1359 = bitcast %union.rec* %136 to %struct.word_type*
  %olist360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist360, i32 0, i64 1
  %opred362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx361, i32 0, i32 0
  store %union.rec* %134, %union.rec** %opred362, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1363 = bitcast %union.rec* %137 to %struct.word_type*
  %olist364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1363, i32 0, i32 0
  %arrayidx365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist364, i32 0, i64 0
  %osucc366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx365, i32 0, i32 1
  store %union.rec* %134, %union.rec** %osucc366, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1367 = bitcast %union.rec* %138 to %struct.word_type*
  %olist368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 0
  %arrayidx369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist368, i32 0, i64 0
  %opred370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx369, i32 0, i32 0
  store %union.rec* %134, %union.rec** %opred370, align 8
  store %union.rec* %134, %union.rec** @root_galley, align 8
  %139 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1371 = bitcast %union.rec* %139 to %struct.word_type*
  %ou2372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1371, i32 0, i32 2
  %os23373 = bitcast %union.SECOND_UNION* %ou2372 to %struct.anon.2*
  %oforce_gall374 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23373, i32 0, i32 2
  %bf.load375 = load i16, i16* %oforce_gall374, align 2
  %bf.clear376 = and i16 %bf.load375, -4097
  store i16 %bf.clear376, i16* %oforce_gall374, align 2
  %140 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a377 = bitcast %union.rec* %140 to %struct.head_type*
  %olimiter378 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a377, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter378, align 8
  %141 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a379 = bitcast %union.rec* %141 to %struct.head_type*
  %oenclose_obj380 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a379, i32 0, i32 12
  store %union.rec* null, %union.rec** %oenclose_obj380, align 8
  %142 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a381 = bitcast %union.rec* %142 to %struct.head_type*
  %odead_headers382 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a381, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers382, align 8
  %143 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a383 = bitcast %union.rec* %143 to %struct.head_type*
  %oheaders384 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a383, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders384, align 8
  %144 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a385 = bitcast %union.rec* %144 to %struct.head_type*
  %oopt_constraints386 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a385, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints386, align 8
  %145 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a387 = bitcast %union.rec* %145 to %struct.head_type*
  %oopt_components388 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a387, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components388, align 8
  %146 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1389 = bitcast %union.rec* %146 to %struct.word_type*
  %ou2390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 2
  %os23391 = bitcast %union.SECOND_UNION* %ou2390 to %struct.anon.2*
  %ogall_dir392 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23391, i32 0, i32 2
  %bf.load393 = load i16, i16* %ogall_dir392, align 2
  %bf.clear394 = and i16 %bf.load393, -257
  %bf.set395 = or i16 %bf.clear394, 256
  store i16 %bf.set395, i16* %ogall_dir392, align 2
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %147, i32 0, i32 2
  %148 = load i16, i16* %ofile_num, align 2
  %149 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1396 = bitcast %union.rec* %149 to %struct.word_type*
  %ou1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1397 to %struct.FILE_POS*
  %ofile_num398 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %148, i16* %ofile_num398, align 2
  %150 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %150, i32 0, i32 3
  %bf.load399 = load i32, i32* %oline_num, align 4
  %bf.clear400 = and i32 %bf.load399, 1048575
  %151 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1401 = bitcast %union.rec* %151 to %struct.word_type*
  %ou1402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1401, i32 0, i32 1
  %ofpos403 = bitcast %union.FIRST_UNION* %ou1402 to %struct.FILE_POS*
  %oline_num404 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos403, i32 0, i32 3
  %bf.load405 = load i32, i32* %oline_num404, align 4
  %bf.value = and i32 %bf.clear400, 1048575
  %bf.clear406 = and i32 %bf.load405, -1048576
  %bf.set407 = or i32 %bf.clear406, %bf.value
  store i32 %bf.set407, i32* %oline_num404, align 4
  %152 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %152, i32 0, i32 3
  %bf.load408 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load408, 20
  %153 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1409 = bitcast %union.rec* %153 to %struct.word_type*
  %ou1410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1409, i32 0, i32 1
  %ofpos411 = bitcast %union.FIRST_UNION* %ou1410 to %struct.FILE_POS*
  %ocol_num412 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos411, i32 0, i32 3
  %bf.load413 = load i32, i32* %ocol_num412, align 4
  %bf.value414 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value414, 20
  %bf.clear415 = and i32 %bf.load413, 1048575
  %bf.set416 = or i32 %bf.clear415, %bf.shl
  store i32 %bf.set416, i32* %ocol_num412, align 4
  %154 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2417 = bitcast %union.rec* %154 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2417, i32 0, i32 6
  %owhereto = bitcast %union.anon.12* %oux to %union.rec**
  store %union.rec* null, %union.rec** %owhereto, align 8
  %155 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2418 = bitcast %union.rec* %155 to %struct.closure_type*
  %oactual419 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2418, i32 0, i32 5
  store %union.rec* null, %union.rec** %oactual419, align 8
  %156 = load %union.rec*, %union.rec** @root_galley, align 8
  %os2a420 = bitcast %union.rec* %156 to %struct.head_type*
  %oready_galls = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a420, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls, align 8
  %157 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1421 = bitcast %union.rec* %157 to %struct.word_type*
  %ou2422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1421, i32 0, i32 2
  %os23423 = bitcast %union.SECOND_UNION* %ou2422 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23423, i32 0, i32 2
  %bf.load424 = load i16, i16* %osized, align 2
  %bf.clear425 = and i16 %bf.load424, -3
  store i16 %bf.clear425, i16* %osized, align 2
  %158 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1426 = bitcast %union.rec* %158 to %struct.word_type*
  %ou2427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1426, i32 0, i32 2
  %os23428 = bitcast %union.SECOND_UNION* %ou2427 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23428, i32 0, i32 2
  %bf.load429 = load i16, i16* %omust_expand, align 2
  %bf.clear430 = and i16 %bf.load429, -129
  store i16 %bf.clear430, i16* %omust_expand, align 2
  %159 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1431 = bitcast %union.rec* %159 to %struct.word_type*
  %ou2432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 2
  %os23433 = bitcast %union.SECOND_UNION* %ou2432 to %struct.anon.2*
  %ofoll_or_prec = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23433, i32 0, i32 0
  store i8 -127, i8* %ofoll_or_prec, align 1
  %160 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv434 = zext i8 %160 to i32
  store i32 %conv434, i32* @zz_size, align 4
  %conv435 = sext i32 %conv434 to i64
  %cmp436 = icmp uge i64 %conv435, 265
  br i1 %cmp436, label %if.then.438, label %if.else.440

if.then.438:                                      ; preds = %if.end.350
  %161 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call439 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %161)
  br label %if.end.457

if.else.440:                                      ; preds = %if.end.350
  %162 = load i32, i32* @zz_size, align 4
  %idxprom441 = sext i32 %162 to i64
  %arrayidx442 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom441
  %163 = load %union.rec*, %union.rec** %arrayidx442, align 8
  %cmp443 = icmp eq %union.rec* %163, null
  br i1 %cmp443, label %if.then.445, label %if.else.447

if.then.445:                                      ; preds = %if.else.440
  %164 = load i32, i32* @zz_size, align 4
  %165 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call446 = call %union.rec* @GetMemory(i32 %164, %struct.FILE_POS* %165)
  store %union.rec* %call446, %union.rec** @zz_hold, align 8
  br label %if.end.456

if.else.447:                                      ; preds = %if.else.440
  %166 = load i32, i32* @zz_size, align 4
  %idxprom448 = sext i32 %166 to i64
  %arrayidx449 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom448
  %167 = load %union.rec*, %union.rec** %arrayidx449, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1450 = bitcast %union.rec* %168 to %struct.word_type*
  %olist451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1450, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist451, i32 0, i64 0
  %opred453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx452, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred453, align 8
  %170 = load i32, i32* @zz_size, align 4
  %idxprom454 = sext i32 %170 to i64
  %arrayidx455 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom454
  store %union.rec* %169, %union.rec** %arrayidx455, align 8
  br label %if.end.456

if.end.456:                                       ; preds = %if.else.447, %if.then.445
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %if.then.438
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1458 = bitcast %union.rec* %171 to %struct.word_type*
  %ou1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1458, i32 0, i32 1
  %os11460 = bitcast %union.FIRST_UNION* %ou1459 to %struct.anon*
  %otype461 = getelementptr inbounds %struct.anon, %struct.anon* %os11460, i32 0, i32 0
  store i8 2, i8* %otype461, align 1
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1462 = bitcast %union.rec* %173 to %struct.word_type*
  %olist463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1462, i32 0, i32 0
  %arrayidx464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist463, i32 0, i64 1
  %osucc465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx464, i32 0, i32 1
  store %union.rec* %172, %union.rec** %osucc465, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1466 = bitcast %union.rec* %174 to %struct.word_type*
  %olist467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist467, i32 0, i64 1
  %opred469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx468, i32 0, i32 0
  store %union.rec* %172, %union.rec** %opred469, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1470 = bitcast %union.rec* %175 to %struct.word_type*
  %olist471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1470, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist471, i32 0, i64 0
  %osucc473 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx472, i32 0, i32 1
  store %union.rec* %172, %union.rec** %osucc473, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1474 = bitcast %union.rec* %176 to %struct.word_type*
  %olist475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1474, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist475, i32 0, i64 0
  %opred477 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx476, i32 0, i32 0
  store %union.rec* %172, %union.rec** %opred477, align 8
  store %union.rec* %172, %union.rec** %x, align 8
  %177 = load %union.rec*, %union.rec** @InputSym, align 8
  %178 = load %union.rec*, %union.rec** %x, align 8
  %os2478 = bitcast %union.rec* %178 to %struct.closure_type*
  %oactual479 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2478, i32 0, i32 5
  store %union.rec* %177, %union.rec** %oactual479, align 8
  %179 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv480 = zext i8 %179 to i32
  store i32 %conv480, i32* @zz_size, align 4
  %conv481 = sext i32 %conv480 to i64
  %cmp482 = icmp uge i64 %conv481, 265
  br i1 %cmp482, label %if.then.484, label %if.else.486

if.then.484:                                      ; preds = %if.end.457
  %180 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call485 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %180)
  br label %if.end.503

if.else.486:                                      ; preds = %if.end.457
  %181 = load i32, i32* @zz_size, align 4
  %idxprom487 = sext i32 %181 to i64
  %arrayidx488 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom487
  %182 = load %union.rec*, %union.rec** %arrayidx488, align 8
  %cmp489 = icmp eq %union.rec* %182, null
  br i1 %cmp489, label %if.then.491, label %if.else.493

if.then.491:                                      ; preds = %if.else.486
  %183 = load i32, i32* @zz_size, align 4
  %184 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call492 = call %union.rec* @GetMemory(i32 %183, %struct.FILE_POS* %184)
  store %union.rec* %call492, %union.rec** @zz_hold, align 8
  br label %if.end.502

if.else.493:                                      ; preds = %if.else.486
  %185 = load i32, i32* @zz_size, align 4
  %idxprom494 = sext i32 %185 to i64
  %arrayidx495 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom494
  %186 = load %union.rec*, %union.rec** %arrayidx495, align 8
  store %union.rec* %186, %union.rec** @zz_hold, align 8
  store %union.rec* %186, %union.rec** @zz_hold, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1496 = bitcast %union.rec* %187 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 0
  %opred499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred499, align 8
  %189 = load i32, i32* @zz_size, align 4
  %idxprom500 = sext i32 %189 to i64
  %arrayidx501 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom500
  store %union.rec* %188, %union.rec** %arrayidx501, align 8
  br label %if.end.502

if.end.502:                                       ; preds = %if.else.493, %if.then.491
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %if.then.484
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1504 = bitcast %union.rec* %190 to %struct.word_type*
  %ou1505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 1
  %os11506 = bitcast %union.FIRST_UNION* %ou1505 to %struct.anon*
  %otype507 = getelementptr inbounds %struct.anon, %struct.anon* %os11506, i32 0, i32 0
  store i8 0, i8* %otype507, align 1
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1508 = bitcast %union.rec* %192 to %struct.word_type*
  %olist509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist509, i32 0, i64 1
  %osucc511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx510, i32 0, i32 1
  store %union.rec* %191, %union.rec** %osucc511, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1512 = bitcast %union.rec* %193 to %struct.word_type*
  %olist513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist513, i32 0, i64 1
  %opred515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx514, i32 0, i32 0
  store %union.rec* %191, %union.rec** %opred515, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1516 = bitcast %union.rec* %194 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 0
  %osucc519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 1
  store %union.rec* %191, %union.rec** %osucc519, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1520 = bitcast %union.rec* %195 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 0
  %opred523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 0
  store %union.rec* %191, %union.rec** %opred523, align 8
  store %union.rec* %191, %union.rec** @xx_link, align 8
  %196 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %196, %union.rec** @zz_res, align 8
  %197 = load %union.rec*, %union.rec** @root_galley, align 8
  store %union.rec* %197, %union.rec** @zz_hold, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp524 = icmp eq %union.rec* %198, null
  br i1 %cmp524, label %cond.true.526, label %cond.false.527

cond.true.526:                                    ; preds = %if.end.503
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.562

cond.false.527:                                   ; preds = %if.end.503
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp528 = icmp eq %union.rec* %200, null
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %cond.false.527
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.560

cond.false.531:                                   ; preds = %cond.false.527
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %202 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 0
  %opred535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %opred535, align 8
  store %union.rec* %203, %union.rec** @zz_tmp, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1536 = bitcast %union.rec* %204 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 0
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred539, align 8
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %206 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 0
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  store %union.rec* %205, %union.rec** %opred543, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1544 = bitcast %union.rec* %208 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 0
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %opred547, align 8
  %os1548 = bitcast %union.rec* %209 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 0
  %osucc551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 1
  store %union.rec* %207, %union.rec** %osucc551, align 8
  %210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1552 = bitcast %union.rec* %211 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 0
  %opred555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 0
  store %union.rec* %210, %union.rec** %opred555, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %213 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1556 = bitcast %union.rec* %213 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 0
  %osucc559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 1
  store %union.rec* %212, %union.rec** %osucc559, align 8
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.531, %cond.true.530
  %cond561 = phi %union.rec* [ %201, %cond.true.530 ], [ %212, %cond.false.531 ]
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.end.560, %cond.true.526
  %cond563 = phi %union.rec* [ %199, %cond.true.526 ], [ %cond561, %cond.end.560 ]
  %214 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %214, %union.rec** @zz_res, align 8
  %215 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %215, %union.rec** @zz_hold, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp564 = icmp eq %union.rec* %216, null
  br i1 %cmp564, label %cond.true.566, label %cond.false.567

cond.true.566:                                    ; preds = %cond.end.562
  %217 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.602

cond.false.567:                                   ; preds = %cond.end.562
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp568 = icmp eq %union.rec* %218, null
  br i1 %cmp568, label %cond.true.570, label %cond.false.571

cond.true.570:                                    ; preds = %cond.false.567
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.600

cond.false.571:                                   ; preds = %cond.false.567
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1572 = bitcast %union.rec* %220 to %struct.word_type*
  %olist573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1572, i32 0, i32 0
  %arrayidx574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist573, i32 0, i64 1
  %opred575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx574, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %opred575, align 8
  store %union.rec* %221, %union.rec** @zz_tmp, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1576 = bitcast %union.rec* %222 to %struct.word_type*
  %olist577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist577, i32 0, i64 1
  %opred579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx578, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred579, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1580 = bitcast %union.rec* %224 to %struct.word_type*
  %olist581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist581, i32 0, i64 1
  %opred583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx582, i32 0, i32 0
  store %union.rec* %223, %union.rec** %opred583, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1584 = bitcast %union.rec* %226 to %struct.word_type*
  %olist585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist585, i32 0, i64 1
  %opred587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx586, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %opred587, align 8
  %os1588 = bitcast %union.rec* %227 to %struct.word_type*
  %olist589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 0
  %arrayidx590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist589, i32 0, i64 1
  %osucc591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx590, i32 0, i32 1
  store %union.rec* %225, %union.rec** %osucc591, align 8
  %228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1592 = bitcast %union.rec* %229 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 1
  %opred595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 0
  store %union.rec* %228, %union.rec** %opred595, align 8
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  %231 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1596 = bitcast %union.rec* %231 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 1
  %osucc599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 1
  store %union.rec* %230, %union.rec** %osucc599, align 8
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.571, %cond.true.570
  %cond601 = phi %union.rec* [ %219, %cond.true.570 ], [ %230, %cond.false.571 ]
  br label %cond.end.602

cond.end.602:                                     ; preds = %cond.end.600, %cond.true.566
  %cond603 = phi %union.rec* [ %217, %cond.true.566 ], [ %cond601, %cond.end.600 ]
  %232 = load %union.rec*, %union.rec** @root_galley, align 8
  %233 = load %union.rec*, %union.rec** %InitEnv.addr, align 8
  call void @SizeGalley(%union.rec* %232, %union.rec* %233, i32 1, i32 0, i32 0, i32 0, %struct.STYLE* @InitialStyle, %struct.CONSTRAINT* @initial_constraint, %union.rec* null, %union.rec** %nothing, %union.rec** %recs, %union.rec** %inners, %union.rec* null)
  %234 = load %union.rec*, %union.rec** %recs, align 8
  %cmp604 = icmp eq %union.rec* %234, null
  br i1 %cmp604, label %if.end.608, label %if.then.606

if.then.606:                                      ; preds = %cond.end.602
  %235 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call607 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.608

if.end.608:                                       ; preds = %if.then.606, %cond.end.602
  %236 = load %union.rec*, %union.rec** %inners, align 8
  %cmp609 = icmp eq %union.rec* %236, null
  br i1 %cmp609, label %if.end.613, label %if.then.611

if.then.611:                                      ; preds = %if.end.608
  %237 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call612 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.611, %if.end.608
  %238 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv614 = zext i8 %238 to i32
  store i32 %conv614, i32* @zz_size, align 4
  %conv615 = sext i32 %conv614 to i64
  %cmp616 = icmp uge i64 %conv615, 265
  br i1 %cmp616, label %if.then.618, label %if.else.620

if.then.618:                                      ; preds = %if.end.613
  %239 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call619 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %239)
  br label %if.end.637

if.else.620:                                      ; preds = %if.end.613
  %240 = load i32, i32* @zz_size, align 4
  %idxprom621 = sext i32 %240 to i64
  %arrayidx622 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom621
  %241 = load %union.rec*, %union.rec** %arrayidx622, align 8
  %cmp623 = icmp eq %union.rec* %241, null
  br i1 %cmp623, label %if.then.625, label %if.else.627

if.then.625:                                      ; preds = %if.else.620
  %242 = load i32, i32* @zz_size, align 4
  %243 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call626 = call %union.rec* @GetMemory(i32 %242, %struct.FILE_POS* %243)
  store %union.rec* %call626, %union.rec** @zz_hold, align 8
  br label %if.end.636

if.else.627:                                      ; preds = %if.else.620
  %244 = load i32, i32* @zz_size, align 4
  %idxprom628 = sext i32 %244 to i64
  %arrayidx629 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom628
  %245 = load %union.rec*, %union.rec** %arrayidx629, align 8
  store %union.rec* %245, %union.rec** @zz_hold, align 8
  store %union.rec* %245, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1630 = bitcast %union.rec* %246 to %struct.word_type*
  %olist631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1630, i32 0, i32 0
  %arrayidx632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist631, i32 0, i64 0
  %opred633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx632, i32 0, i32 0
  %247 = load %union.rec*, %union.rec** %opred633, align 8
  %248 = load i32, i32* @zz_size, align 4
  %idxprom634 = sext i32 %248 to i64
  %arrayidx635 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom634
  store %union.rec* %247, %union.rec** %arrayidx635, align 8
  br label %if.end.636

if.end.636:                                       ; preds = %if.else.627, %if.then.625
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.618
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1638 = bitcast %union.rec* %249 to %struct.word_type*
  %ou1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1638, i32 0, i32 1
  %os11640 = bitcast %union.FIRST_UNION* %ou1639 to %struct.anon*
  %otype641 = getelementptr inbounds %struct.anon, %struct.anon* %os11640, i32 0, i32 0
  store i8 0, i8* %otype641, align 1
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1642 = bitcast %union.rec* %251 to %struct.word_type*
  %olist643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1642, i32 0, i32 0
  %arrayidx644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist643, i32 0, i64 1
  %osucc645 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx644, i32 0, i32 1
  store %union.rec* %250, %union.rec** %osucc645, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1646 = bitcast %union.rec* %252 to %struct.word_type*
  %olist647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 0
  %arrayidx648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist647, i32 0, i64 1
  %opred649 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx648, i32 0, i32 0
  store %union.rec* %250, %union.rec** %opred649, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1650 = bitcast %union.rec* %253 to %struct.word_type*
  %olist651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist651, i32 0, i64 0
  %osucc653 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx652, i32 0, i32 1
  store %union.rec* %250, %union.rec** %osucc653, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1654 = bitcast %union.rec* %254 to %struct.word_type*
  %olist655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1654, i32 0, i32 0
  %arrayidx656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist655, i32 0, i64 0
  %opred657 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx656, i32 0, i32 0
  store %union.rec* %250, %union.rec** %opred657, align 8
  store %union.rec* %250, %union.rec** @xx_link, align 8
  %255 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %255, %union.rec** @zz_res, align 8
  %256 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %256, %union.rec** @zz_hold, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp658 = icmp eq %union.rec* %257, null
  br i1 %cmp658, label %cond.true.660, label %cond.false.661

cond.true.660:                                    ; preds = %if.end.637
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.696

cond.false.661:                                   ; preds = %if.end.637
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp662 = icmp eq %union.rec* %259, null
  br i1 %cmp662, label %cond.true.664, label %cond.false.665

cond.true.664:                                    ; preds = %cond.false.661
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.694

cond.false.665:                                   ; preds = %cond.false.661
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1666 = bitcast %union.rec* %261 to %struct.word_type*
  %olist667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1666, i32 0, i32 0
  %arrayidx668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist667, i32 0, i64 0
  %opred669 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx668, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %opred669, align 8
  store %union.rec* %262, %union.rec** @zz_tmp, align 8
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1670 = bitcast %union.rec* %263 to %struct.word_type*
  %olist671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1670, i32 0, i32 0
  %arrayidx672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist671, i32 0, i64 0
  %opred673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx672, i32 0, i32 0
  %264 = load %union.rec*, %union.rec** %opred673, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1674 = bitcast %union.rec* %265 to %struct.word_type*
  %olist675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1674, i32 0, i32 0
  %arrayidx676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist675, i32 0, i64 0
  %opred677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx676, i32 0, i32 0
  store %union.rec* %264, %union.rec** %opred677, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1678 = bitcast %union.rec* %267 to %struct.word_type*
  %olist679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1678, i32 0, i32 0
  %arrayidx680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist679, i32 0, i64 0
  %opred681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx680, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %opred681, align 8
  %os1682 = bitcast %union.rec* %268 to %struct.word_type*
  %olist683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1682, i32 0, i32 0
  %arrayidx684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist683, i32 0, i64 0
  %osucc685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx684, i32 0, i32 1
  store %union.rec* %266, %union.rec** %osucc685, align 8
  %269 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1686 = bitcast %union.rec* %270 to %struct.word_type*
  %olist687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1686, i32 0, i32 0
  %arrayidx688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist687, i32 0, i64 0
  %opred689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx688, i32 0, i32 0
  store %union.rec* %269, %union.rec** %opred689, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  %272 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1690 = bitcast %union.rec* %272 to %struct.word_type*
  %olist691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1690, i32 0, i32 0
  %arrayidx692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist691, i32 0, i64 0
  %osucc693 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx692, i32 0, i32 1
  store %union.rec* %271, %union.rec** %osucc693, align 8
  br label %cond.end.694

cond.end.694:                                     ; preds = %cond.false.665, %cond.true.664
  %cond695 = phi %union.rec* [ %260, %cond.true.664 ], [ %271, %cond.false.665 ]
  br label %cond.end.696

cond.end.696:                                     ; preds = %cond.end.694, %cond.true.660
  %cond697 = phi %union.rec* [ %258, %cond.true.660 ], [ %cond695, %cond.end.694 ]
  %273 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %273, %union.rec** @zz_res, align 8
  %274 = load %union.rec*, %union.rec** @root_galley, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp698 = icmp eq %union.rec* %275, null
  br i1 %cmp698, label %cond.true.700, label %cond.false.701

cond.true.700:                                    ; preds = %cond.end.696
  %276 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.736

cond.false.701:                                   ; preds = %cond.end.696
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp702 = icmp eq %union.rec* %277, null
  br i1 %cmp702, label %cond.true.704, label %cond.false.705

cond.true.704:                                    ; preds = %cond.false.701
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.734

cond.false.705:                                   ; preds = %cond.false.701
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1706 = bitcast %union.rec* %279 to %struct.word_type*
  %olist707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1706, i32 0, i32 0
  %arrayidx708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist707, i32 0, i64 1
  %opred709 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx708, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %opred709, align 8
  store %union.rec* %280, %union.rec** @zz_tmp, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1710 = bitcast %union.rec* %281 to %struct.word_type*
  %olist711 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1710, i32 0, i32 0
  %arrayidx712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist711, i32 0, i64 1
  %opred713 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx712, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred713, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1714 = bitcast %union.rec* %283 to %struct.word_type*
  %olist715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1714, i32 0, i32 0
  %arrayidx716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist715, i32 0, i64 1
  %opred717 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx716, i32 0, i32 0
  store %union.rec* %282, %union.rec** %opred717, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1718 = bitcast %union.rec* %285 to %struct.word_type*
  %olist719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1718, i32 0, i32 0
  %arrayidx720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist719, i32 0, i64 1
  %opred721 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx720, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %opred721, align 8
  %os1722 = bitcast %union.rec* %286 to %struct.word_type*
  %olist723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1722, i32 0, i32 0
  %arrayidx724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist723, i32 0, i64 1
  %osucc725 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx724, i32 0, i32 1
  store %union.rec* %284, %union.rec** %osucc725, align 8
  %287 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1726 = bitcast %union.rec* %288 to %struct.word_type*
  %olist727 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1726, i32 0, i32 0
  %arrayidx728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist727, i32 0, i64 1
  %opred729 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx728, i32 0, i32 0
  store %union.rec* %287, %union.rec** %opred729, align 8
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %290 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1730 = bitcast %union.rec* %290 to %struct.word_type*
  %olist731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1730, i32 0, i32 0
  %arrayidx732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist731, i32 0, i64 1
  %osucc733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx732, i32 0, i32 1
  store %union.rec* %289, %union.rec** %osucc733, align 8
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.705, %cond.true.704
  %cond735 = phi %union.rec* [ %278, %cond.true.704 ], [ %289, %cond.false.705 ]
  br label %cond.end.736

cond.end.736:                                     ; preds = %cond.end.734, %cond.true.700
  %cond737 = phi %union.rec* [ %276, %cond.true.700 ], [ %cond735, %cond.end.734 ]
  %291 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1738 = bitcast %union.rec* %291 to %struct.word_type*
  %olist739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 0
  %arrayidx740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist739, i32 0, i64 0
  %osucc741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx740, i32 0, i32 1
  %292 = load %union.rec*, %union.rec** %osucc741, align 8
  %os1742 = bitcast %union.rec* %292 to %struct.word_type*
  %olist743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist743, i32 0, i64 1
  %opred745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx744, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %opred745, align 8
  store %union.rec* %293, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.736
  %294 = load %union.rec*, %union.rec** %y, align 8
  %os1746 = bitcast %union.rec* %294 to %struct.word_type*
  %ou1747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1746, i32 0, i32 1
  %os11748 = bitcast %union.FIRST_UNION* %ou1747 to %struct.anon*
  %otype749 = getelementptr inbounds %struct.anon, %struct.anon* %os11748, i32 0, i32 0
  %295 = load i8, i8* %otype749, align 1
  %conv750 = zext i8 %295 to i32
  %cmp751 = icmp eq i32 %conv750, 0
  br i1 %cmp751, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %296 = load %union.rec*, %union.rec** %y, align 8
  %os1753 = bitcast %union.rec* %296 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 1
  %opred756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred756, align 8
  store %union.rec* %297, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %298 = load %union.rec*, %union.rec** %y, align 8
  %os1757 = bitcast %union.rec* %298 to %struct.word_type*
  %ou1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 1
  %os11759 = bitcast %union.FIRST_UNION* %ou1758 to %struct.anon*
  %otype760 = getelementptr inbounds %struct.anon, %struct.anon* %os11759, i32 0, i32 0
  %299 = load i8, i8* %otype760, align 1
  %conv761 = zext i8 %299 to i32
  %cmp762 = icmp eq i32 %conv761, 121
  br i1 %cmp762, label %land.lhs.true, label %if.then.780

land.lhs.true:                                    ; preds = %for.end
  %300 = load %union.rec*, %union.rec** %y, align 8
  %os2764 = bitcast %union.rec* %300 to %struct.closure_type*
  %oactual765 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2764, i32 0, i32 5
  %301 = load %union.rec*, %union.rec** %oactual765, align 8
  %os1766 = bitcast %union.rec* %301 to %struct.word_type*
  %ou1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1766, i32 0, i32 1
  %os11768 = bitcast %union.FIRST_UNION* %ou1767 to %struct.anon*
  %otype769 = getelementptr inbounds %struct.anon, %struct.anon* %os11768, i32 0, i32 0
  %302 = load i8, i8* %otype769, align 1
  %conv770 = zext i8 %302 to i32
  %cmp771 = icmp eq i32 %conv770, 2
  br i1 %cmp771, label %land.lhs.true.773, label %if.then.780

land.lhs.true.773:                                ; preds = %land.lhs.true
  %303 = load %union.rec*, %union.rec** %y, align 8
  %os2774 = bitcast %union.rec* %303 to %struct.closure_type*
  %oactual775 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2774, i32 0, i32 5
  %304 = load %union.rec*, %union.rec** %oactual775, align 8
  %os2776 = bitcast %union.rec* %304 to %struct.closure_type*
  %oactual777 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2776, i32 0, i32 5
  %305 = load %union.rec*, %union.rec** %oactual777, align 8
  %306 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp778 = icmp eq %union.rec* %305, %306
  br i1 %cmp778, label %if.end.782, label %if.then.780

if.then.780:                                      ; preds = %land.lhs.true.773, %land.lhs.true, %for.end
  %307 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call781 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %307, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.782

if.end.782:                                       ; preds = %if.then.780, %land.lhs.true.773
  %308 = load %union.rec*, %union.rec** %y, align 8
  %os2783 = bitcast %union.rec* %308 to %struct.closure_type*
  %oactual784 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2783, i32 0, i32 5
  %309 = load %union.rec*, %union.rec** %oactual784, align 8
  %os1785 = bitcast %union.rec* %309 to %struct.word_type*
  %ou2786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 2
  %os23787 = bitcast %union.SECOND_UNION* %ou2786 to %struct.anon.2*
  %oexternal_ver788 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23787, i32 0, i32 2
  %bf.load789 = load i16, i16* %oexternal_ver788, align 2
  %bf.lshr790 = lshr i16 %bf.load789, 4
  %bf.clear791 = and i16 %bf.lshr790, 1
  %bf.cast = zext i16 %bf.clear791 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.794, label %if.then.792

if.then.792:                                      ; preds = %if.end.782
  %310 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call793 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %310, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.794

if.end.794:                                       ; preds = %if.then.792, %if.end.782
  %311 = load %union.rec*, %union.rec** %y, align 8
  %os1795 = bitcast %union.rec* %311 to %struct.word_type*
  %ou2796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1795, i32 0, i32 2
  %os23797 = bitcast %union.SECOND_UNION* %ou2796 to %struct.anon.2*
  %oblocked798 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23797, i32 0, i32 2
  %bf.load799 = load i16, i16* %oblocked798, align 2
  %bf.clear800 = and i16 %bf.load799, -33
  %bf.set801 = or i16 %bf.clear800, 32
  store i16 %bf.set801, i16* %oblocked798, align 2
  store i32 0, i32* @itop, align 4
  %312 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv802 = zext i8 %312 to i32
  store i32 %conv802, i32* @zz_size, align 4
  %conv803 = sext i32 %conv802 to i64
  %cmp804 = icmp uge i64 %conv803, 265
  br i1 %cmp804, label %if.then.806, label %if.else.808

if.then.806:                                      ; preds = %if.end.794
  %313 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call807 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %313)
  br label %if.end.825

if.else.808:                                      ; preds = %if.end.794
  %314 = load i32, i32* @zz_size, align 4
  %idxprom809 = sext i32 %314 to i64
  %arrayidx810 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom809
  %315 = load %union.rec*, %union.rec** %arrayidx810, align 8
  %cmp811 = icmp eq %union.rec* %315, null
  br i1 %cmp811, label %if.then.813, label %if.else.815

if.then.813:                                      ; preds = %if.else.808
  %316 = load i32, i32* @zz_size, align 4
  %317 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call814 = call %union.rec* @GetMemory(i32 %316, %struct.FILE_POS* %317)
  store %union.rec* %call814, %union.rec** @zz_hold, align 8
  br label %if.end.824

if.else.815:                                      ; preds = %if.else.808
  %318 = load i32, i32* @zz_size, align 4
  %idxprom816 = sext i32 %318 to i64
  %arrayidx817 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom816
  %319 = load %union.rec*, %union.rec** %arrayidx817, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1818 = bitcast %union.rec* %320 to %struct.word_type*
  %olist819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist819, i32 0, i64 0
  %opred821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx820, i32 0, i32 0
  %321 = load %union.rec*, %union.rec** %opred821, align 8
  %322 = load i32, i32* @zz_size, align 4
  %idxprom822 = sext i32 %322 to i64
  %arrayidx823 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom822
  store %union.rec* %321, %union.rec** %arrayidx823, align 8
  br label %if.end.824

if.end.824:                                       ; preds = %if.else.815, %if.then.813
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.824, %if.then.806
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1826 = bitcast %union.rec* %323 to %struct.word_type*
  %ou1827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1826, i32 0, i32 1
  %os11828 = bitcast %union.FIRST_UNION* %ou1827 to %struct.anon*
  %otype829 = getelementptr inbounds %struct.anon, %struct.anon* %os11828, i32 0, i32 0
  store i8 17, i8* %otype829, align 1
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1830 = bitcast %union.rec* %325 to %struct.word_type*
  %olist831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist831, i32 0, i64 1
  %osucc833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx832, i32 0, i32 1
  store %union.rec* %324, %union.rec** %osucc833, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1834 = bitcast %union.rec* %326 to %struct.word_type*
  %olist835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1834, i32 0, i32 0
  %arrayidx836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist835, i32 0, i64 1
  %opred837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx836, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred837, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1838 = bitcast %union.rec* %327 to %struct.word_type*
  %olist839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1838, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist839, i32 0, i64 0
  %osucc841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx840, i32 0, i32 1
  store %union.rec* %324, %union.rec** %osucc841, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1842 = bitcast %union.rec* %328 to %struct.word_type*
  %olist843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1842, i32 0, i32 0
  %arrayidx844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist843, i32 0, i64 0
  %opred845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx844, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred845, align 8
  %329 = load i32, i32* @itop, align 4
  %idxprom846 = sext i32 %329 to i64
  %arrayidx847 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom846
  store %union.rec* %324, %union.rec** %arrayidx847, align 8
  %330 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv848 = zext i8 %330 to i32
  store i32 %conv848, i32* @zz_size, align 4
  %conv849 = sext i32 %conv848 to i64
  %cmp850 = icmp uge i64 %conv849, 265
  br i1 %cmp850, label %if.then.852, label %if.else.854

if.then.852:                                      ; preds = %if.end.825
  %331 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call853 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %331)
  br label %if.end.871

if.else.854:                                      ; preds = %if.end.825
  %332 = load i32, i32* @zz_size, align 4
  %idxprom855 = sext i32 %332 to i64
  %arrayidx856 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom855
  %333 = load %union.rec*, %union.rec** %arrayidx856, align 8
  %cmp857 = icmp eq %union.rec* %333, null
  br i1 %cmp857, label %if.then.859, label %if.else.861

if.then.859:                                      ; preds = %if.else.854
  %334 = load i32, i32* @zz_size, align 4
  %335 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call860 = call %union.rec* @GetMemory(i32 %334, %struct.FILE_POS* %335)
  store %union.rec* %call860, %union.rec** @zz_hold, align 8
  br label %if.end.870

if.else.861:                                      ; preds = %if.else.854
  %336 = load i32, i32* @zz_size, align 4
  %idxprom862 = sext i32 %336 to i64
  %arrayidx863 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom862
  %337 = load %union.rec*, %union.rec** %arrayidx863, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1864 = bitcast %union.rec* %338 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %opred867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %opred867, align 8
  %340 = load i32, i32* @zz_size, align 4
  %idxprom868 = sext i32 %340 to i64
  %arrayidx869 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom868
  store %union.rec* %339, %union.rec** %arrayidx869, align 8
  br label %if.end.870

if.end.870:                                       ; preds = %if.else.861, %if.then.859
  br label %if.end.871

if.end.871:                                       ; preds = %if.end.870, %if.then.852
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1872 = bitcast %union.rec* %341 to %struct.word_type*
  %ou1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 1
  %os11874 = bitcast %union.FIRST_UNION* %ou1873 to %struct.anon*
  %otype875 = getelementptr inbounds %struct.anon, %struct.anon* %os11874, i32 0, i32 0
  store i8 0, i8* %otype875, align 1
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1876 = bitcast %union.rec* %343 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 1
  %osucc879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 1
  store %union.rec* %342, %union.rec** %osucc879, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1880 = bitcast %union.rec* %344 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 1
  %opred883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred883, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1884 = bitcast %union.rec* %345 to %struct.word_type*
  %olist885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1884, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist885, i32 0, i64 0
  %osucc887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx886, i32 0, i32 1
  store %union.rec* %342, %union.rec** %osucc887, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1888 = bitcast %union.rec* %346 to %struct.word_type*
  %olist889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1888, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist889, i32 0, i64 0
  %opred891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx890, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred891, align 8
  store %union.rec* %342, %union.rec** @xx_link, align 8
  %347 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %347, %union.rec** @zz_res, align 8
  %348 = load i32, i32* @itop, align 4
  %idxprom892 = sext i32 %348 to i64
  %arrayidx893 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom892
  %349 = load %union.rec*, %union.rec** %arrayidx893, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp894 = icmp eq %union.rec* %350, null
  br i1 %cmp894, label %cond.true.896, label %cond.false.897

cond.true.896:                                    ; preds = %if.end.871
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.932

cond.false.897:                                   ; preds = %if.end.871
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp898 = icmp eq %union.rec* %352, null
  br i1 %cmp898, label %cond.true.900, label %cond.false.901

cond.true.900:                                    ; preds = %cond.false.897
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.930

cond.false.901:                                   ; preds = %cond.false.897
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1902 = bitcast %union.rec* %354 to %struct.word_type*
  %olist903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1902, i32 0, i32 0
  %arrayidx904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist903, i32 0, i64 0
  %opred905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx904, i32 0, i32 0
  %355 = load %union.rec*, %union.rec** %opred905, align 8
  store %union.rec* %355, %union.rec** @zz_tmp, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1906 = bitcast %union.rec* %356 to %struct.word_type*
  %olist907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1906, i32 0, i32 0
  %arrayidx908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist907, i32 0, i64 0
  %opred909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx908, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %opred909, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1910 = bitcast %union.rec* %358 to %struct.word_type*
  %olist911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1910, i32 0, i32 0
  %arrayidx912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist911, i32 0, i64 0
  %opred913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx912, i32 0, i32 0
  store %union.rec* %357, %union.rec** %opred913, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1914 = bitcast %union.rec* %360 to %struct.word_type*
  %olist915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1914, i32 0, i32 0
  %arrayidx916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist915, i32 0, i64 0
  %opred917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx916, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %opred917, align 8
  %os1918 = bitcast %union.rec* %361 to %struct.word_type*
  %olist919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist919, i32 0, i64 0
  %osucc921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx920, i32 0, i32 1
  store %union.rec* %359, %union.rec** %osucc921, align 8
  %362 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1922 = bitcast %union.rec* %363 to %struct.word_type*
  %olist923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1922, i32 0, i32 0
  %arrayidx924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist923, i32 0, i64 0
  %opred925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx924, i32 0, i32 0
  store %union.rec* %362, %union.rec** %opred925, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1926 = bitcast %union.rec* %365 to %struct.word_type*
  %olist927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1926, i32 0, i32 0
  %arrayidx928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist927, i32 0, i64 0
  %osucc929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx928, i32 0, i32 1
  store %union.rec* %364, %union.rec** %osucc929, align 8
  br label %cond.end.930

cond.end.930:                                     ; preds = %cond.false.901, %cond.true.900
  %cond931 = phi %union.rec* [ %353, %cond.true.900 ], [ %364, %cond.false.901 ]
  br label %cond.end.932

cond.end.932:                                     ; preds = %cond.end.930, %cond.true.896
  %cond933 = phi %union.rec* [ %351, %cond.true.896 ], [ %cond931, %cond.end.930 ]
  %366 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %366, %union.rec** @zz_res, align 8
  %367 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp934 = icmp eq %union.rec* %368, null
  br i1 %cmp934, label %cond.true.936, label %cond.false.937

cond.true.936:                                    ; preds = %cond.end.932
  %369 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.972

cond.false.937:                                   ; preds = %cond.end.932
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp938 = icmp eq %union.rec* %370, null
  br i1 %cmp938, label %cond.true.940, label %cond.false.941

cond.true.940:                                    ; preds = %cond.false.937
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.970

cond.false.941:                                   ; preds = %cond.false.937
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1942 = bitcast %union.rec* %372 to %struct.word_type*
  %olist943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1942, i32 0, i32 0
  %arrayidx944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist943, i32 0, i64 1
  %opred945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx944, i32 0, i32 0
  %373 = load %union.rec*, %union.rec** %opred945, align 8
  store %union.rec* %373, %union.rec** @zz_tmp, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1946 = bitcast %union.rec* %374 to %struct.word_type*
  %olist947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1946, i32 0, i32 0
  %arrayidx948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist947, i32 0, i64 1
  %opred949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx948, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred949, align 8
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1950 = bitcast %union.rec* %376 to %struct.word_type*
  %olist951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1950, i32 0, i32 0
  %arrayidx952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist951, i32 0, i64 1
  %opred953 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx952, i32 0, i32 0
  store %union.rec* %375, %union.rec** %opred953, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1954 = bitcast %union.rec* %378 to %struct.word_type*
  %olist955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1954, i32 0, i32 0
  %arrayidx956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist955, i32 0, i64 1
  %opred957 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx956, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred957, align 8
  %os1958 = bitcast %union.rec* %379 to %struct.word_type*
  %olist959 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1958, i32 0, i32 0
  %arrayidx960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist959, i32 0, i64 1
  %osucc961 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx960, i32 0, i32 1
  store %union.rec* %377, %union.rec** %osucc961, align 8
  %380 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %381 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1962 = bitcast %union.rec* %381 to %struct.word_type*
  %olist963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1962, i32 0, i32 0
  %arrayidx964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist963, i32 0, i64 1
  %opred965 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx964, i32 0, i32 0
  store %union.rec* %380, %union.rec** %opred965, align 8
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  %383 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1966 = bitcast %union.rec* %383 to %struct.word_type*
  %olist967 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1966, i32 0, i32 0
  %arrayidx968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist967, i32 0, i64 1
  %osucc969 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx968, i32 0, i32 1
  store %union.rec* %382, %union.rec** %osucc969, align 8
  br label %cond.end.970

cond.end.970:                                     ; preds = %cond.false.941, %cond.true.940
  %cond971 = phi %union.rec* [ %371, %cond.true.940 ], [ %382, %cond.false.941 ]
  br label %cond.end.972

cond.end.972:                                     ; preds = %cond.end.970, %cond.true.936
  %cond973 = phi %union.rec* [ %369, %cond.true.936 ], [ %cond971, %cond.end.970 ]
  %384 = load %union.rec*, %union.rec** %y, align 8
  %os2974 = bitcast %union.rec* %384 to %struct.closure_type*
  %oactual975 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2974, i32 0, i32 5
  %385 = load %union.rec*, %union.rec** %oactual975, align 8
  %386 = load i32, i32* @itop, align 4
  %idxprom976 = sext i32 %386 to i64
  %arrayidx977 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom976
  call void @Constrained(%union.rec* %385, %struct.CONSTRAINT* %arrayidx977, i32 0, %union.rec** %why)
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare void @SizeGalley(%union.rec*, %union.rec*, i32, i32, i32, i32, %struct.STYLE*, %struct.CONSTRAINT*, %union.rec*, %union.rec**, %union.rec**, %union.rec**, %union.rec*) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

; Function Attrs: nounwind uwtable
define %union.rec* @TransferBegin(%union.rec* %x) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %x.addr = alloca %union.rec*, align 8
  %xsym = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %new_env = alloca %union.rec*, align 8
  %hold_env = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %hd = alloca %union.rec*, align 8
  %target = alloca %union.rec*, align 8
  %why = alloca %union.rec*, align 8
  %c = alloca %struct.CONSTRAINT, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %3 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %4 = load %union.rec*, %union.rec** %oactual, align 8
  %os12 = bitcast %union.rec* %4 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ohas_tag = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %5 = bitcast [3 x i8]* %ohas_tag to i24*
  %bf.load = load i24, i24* %5, align 1
  %bf.lshr = lshr i24 %bf.load, 1
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @CrossAddTag(%union.rec* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* @itop, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom
  %8 = load %union.rec*, %union.rec** %arrayidx, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  %10 = load i32, i32* @itop, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom7
  %11 = load %union.rec*, %union.rec** %arrayidx8, align 8
  %cmp9 = icmp eq %union.rec* %9, %11
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.4
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os112 = bitcast %union.rec* %12 to %struct.word_type*
  %ou113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou113 to %struct.FILE_POS*
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os214 = bitcast %union.rec* %13 to %struct.closure_type*
  %oactual15 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os214, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %oactual15, align 8
  %call16 = call i8* @SymName(%union.rec* %14)
  %call17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %call16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %if.end.4
  %15 = load i32, i32* @itop, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom19
  %16 = load %union.rec*, %union.rec** %arrayidx20, align 8
  %os121 = bitcast %union.rec* %16 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 0
  %osucc24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 1
  %17 = load %union.rec*, %union.rec** %osucc24, align 8
  %os125 = bitcast %union.rec* %17 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %18, %union.rec** %target, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %19 = load %union.rec*, %union.rec** %target, align 8
  %os128 = bitcast %union.rec* %19 to %struct.word_type*
  %ou129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 1
  %os1130 = bitcast %union.FIRST_UNION* %ou129 to %struct.anon*
  %otype31 = getelementptr inbounds %struct.anon, %struct.anon* %os1130, i32 0, i32 0
  %20 = load i8, i8* %otype31, align 1
  %conv32 = zext i8 %20 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %union.rec*, %union.rec** %target, align 8
  %os135 = bitcast %union.rec* %21 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred38, align 8
  store %union.rec* %22, %union.rec** %target, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os239 = bitcast %union.rec* %23 to %struct.closure_type*
  %oactual40 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os239, i32 0, i32 5
  %24 = load %union.rec*, %union.rec** %oactual40, align 8
  store %union.rec* %24, %union.rec** %xsym, align 8
  %25 = load %union.rec*, %union.rec** %target, align 8
  %os241 = bitcast %union.rec* %25 to %struct.closure_type*
  %oactual42 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os241, i32 0, i32 5
  %26 = load %union.rec*, %union.rec** %oactual42, align 8
  %call43 = call %union.rec* @GetEnv(%union.rec* %26)
  store %union.rec* %call43, %union.rec** %env, align 8
  %27 = load %union.rec*, %union.rec** %xsym, align 8
  %os144 = bitcast %union.rec* %27 to %struct.word_type*
  %ou245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 2
  %os2646 = bitcast %union.SECOND_UNION* %ou245 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2646, i32 0, i32 1
  %28 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load47 = load i24, i24* %28, align 1
  %bf.lshr48 = lshr i24 %bf.load47, 8
  %bf.clear49 = and i24 %bf.lshr48, 1
  %bf.cast50 = zext i24 %bf.clear49 to i32
  %tobool51 = icmp ne i32 %bf.cast50, 0
  br i1 %tobool51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %for.end
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call53 = call %union.rec* @CopyObject(%union.rec* %29, %struct.FILE_POS* %30)
  store %union.rec* %call53, %union.rec** %y, align 8
  %31 = load %union.rec*, %union.rec** %env, align 8
  %32 = load %union.rec*, %union.rec** %y, align 8
  call void @AttachEnv(%union.rec* %31, %union.rec* %32)
  %33 = load %union.rec*, %union.rec** %y, align 8
  %call54 = call %union.rec* @SetEnv(%union.rec* %33, %union.rec* null)
  store %union.rec* %call54, %union.rec** %new_env, align 8
  br label %if.end.55

if.else:                                          ; preds = %for.end
  %34 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %34, %union.rec** %new_env, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.52
  %35 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv56 = zext i8 %35 to i32
  store i32 %conv56, i32* @zz_size, align 4
  %conv57 = sext i32 %conv56 to i64
  %cmp58 = icmp uge i64 %conv57, 265
  br i1 %cmp58, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %if.end.55
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call61 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %36)
  br label %if.end.79

if.else.62:                                       ; preds = %if.end.55
  %37 = load i32, i32* @zz_size, align 4
  %idxprom63 = sext i32 %37 to i64
  %arrayidx64 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom63
  %38 = load %union.rec*, %union.rec** %arrayidx64, align 8
  %cmp65 = icmp eq %union.rec* %38, null
  br i1 %cmp65, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.else.62
  %39 = load i32, i32* @zz_size, align 4
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call68 = call %union.rec* @GetMemory(i32 %39, %struct.FILE_POS* %40)
  store %union.rec* %call68, %union.rec** @zz_hold, align 8
  br label %if.end.78

if.else.69:                                       ; preds = %if.else.62
  %41 = load i32, i32* @zz_size, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom70
  %42 = load %union.rec*, %union.rec** %arrayidx71, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %43 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %opred75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred75, align 8
  %45 = load i32, i32* @zz_size, align 4
  %idxprom76 = sext i32 %45 to i64
  %arrayidx77 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom76
  store %union.rec* %44, %union.rec** %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.69, %if.then.67
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.60
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os180 = bitcast %union.rec* %46 to %struct.word_type*
  %ou181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 1
  %os1182 = bitcast %union.FIRST_UNION* %ou181 to %struct.anon*
  %otype83 = getelementptr inbounds %struct.anon, %struct.anon* %os1182, i32 0, i32 0
  store i8 17, i8* %otype83, align 1
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os184 = bitcast %union.rec* %48 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %osucc87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc87, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %49 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 1
  %opred91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred91, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os192 = bitcast %union.rec* %50 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 0
  %osucc95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc95, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os196 = bitcast %union.rec* %51 to %struct.word_type*
  %olist97 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist97, i32 0, i64 0
  %opred99 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx98, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred99, align 8
  store %union.rec* %47, %union.rec** %hold_env, align 8
  %52 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv100 = zext i8 %52 to i32
  store i32 %conv100, i32* @zz_size, align 4
  %conv101 = sext i32 %conv100 to i64
  %cmp102 = icmp uge i64 %conv101, 265
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.end.79
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call105 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %53)
  br label %if.end.123

if.else.106:                                      ; preds = %if.end.79
  %54 = load i32, i32* @zz_size, align 4
  %idxprom107 = sext i32 %54 to i64
  %arrayidx108 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom107
  %55 = load %union.rec*, %union.rec** %arrayidx108, align 8
  %cmp109 = icmp eq %union.rec* %55, null
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.else.106
  %56 = load i32, i32* @zz_size, align 4
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call112 = call %union.rec* @GetMemory(i32 %56, %struct.FILE_POS* %57)
  store %union.rec* %call112, %union.rec** @zz_hold, align 8
  br label %if.end.122

if.else.113:                                      ; preds = %if.else.106
  %58 = load i32, i32* @zz_size, align 4
  %idxprom114 = sext i32 %58 to i64
  %arrayidx115 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom114
  %59 = load %union.rec*, %union.rec** %arrayidx115, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1116 = bitcast %union.rec* %60 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 0
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred119, align 8
  %62 = load i32, i32* @zz_size, align 4
  %idxprom120 = sext i32 %62 to i64
  %arrayidx121 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom120
  store %union.rec* %61, %union.rec** %arrayidx121, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.113, %if.then.111
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.104
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1124 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 1
  %os11126 = bitcast %union.FIRST_UNION* %ou1125 to %struct.anon*
  %otype127 = getelementptr inbounds %struct.anon, %struct.anon* %os11126, i32 0, i32 0
  store i8 0, i8* %otype127, align 1
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %65 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc131, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %66 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 1
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred135, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %67 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc139, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %68 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred143, align 8
  store %union.rec* %64, %union.rec** @xx_link, align 8
  %69 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %69, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** %hold_env, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp144 = icmp eq %union.rec* %71, null
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.123
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.178

cond.false:                                       ; preds = %if.end.123
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp146 = icmp eq %union.rec* %73, null
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.149:                                   ; preds = %cond.false
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1150 = bitcast %union.rec* %75 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 0
  %opred153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred153, align 8
  store %union.rec* %76, %union.rec** @zz_tmp, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1154 = bitcast %union.rec* %77 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 0
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred157, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1158 = bitcast %union.rec* %79 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 0
  %opred161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred161, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1162 = bitcast %union.rec* %81 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 0
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred165, align 8
  %os1166 = bitcast %union.rec* %82 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 0
  %osucc169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc169, align 8
  %83 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1170 = bitcast %union.rec* %84 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 0
  %opred173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred173, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1174 = bitcast %union.rec* %86 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc177, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.149, %cond.true.148
  %cond = phi %union.rec* [ %74, %cond.true.148 ], [ %85, %cond.false.149 ]
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.end, %cond.true
  %cond179 = phi %union.rec* [ %72, %cond.true ], [ %cond, %cond.end ]
  %87 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %87, %union.rec** @zz_res, align 8
  %88 = load %union.rec*, %union.rec** %new_env, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp180 = icmp eq %union.rec* %89, null
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %cond.end.178
  %90 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.218

cond.false.183:                                   ; preds = %cond.end.178
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp184 = icmp eq %union.rec* %91, null
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.false.183
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.216

cond.false.187:                                   ; preds = %cond.false.183
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %93 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 1
  %opred191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 0
  %94 = load %union.rec*, %union.rec** %opred191, align 8
  store %union.rec* %94, %union.rec** @zz_tmp, align 8
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1192 = bitcast %union.rec* %95 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 1
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred195, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1196 = bitcast %union.rec* %97 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 1
  %opred199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 0
  store %union.rec* %96, %union.rec** %opred199, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1200 = bitcast %union.rec* %99 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 1
  %opred203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred203, align 8
  %os1204 = bitcast %union.rec* %100 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 1
  %osucc207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 1
  store %union.rec* %98, %union.rec** %osucc207, align 8
  %101 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1208 = bitcast %union.rec* %102 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 1
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  store %union.rec* %101, %union.rec** %opred211, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1212 = bitcast %union.rec* %104 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 1
  %osucc215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 1
  store %union.rec* %103, %union.rec** %osucc215, align 8
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.187, %cond.true.186
  %cond217 = phi %union.rec* [ %92, %cond.true.186 ], [ %103, %cond.false.187 ]
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.end.216, %cond.true.182
  %cond219 = phi %union.rec* [ %90, %cond.true.182 ], [ %cond217, %cond.end.216 ]
  %105 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 120), align 1
  %conv220 = zext i8 %105 to i32
  store i32 %conv220, i32* @zz_size, align 4
  %conv221 = sext i32 %conv220 to i64
  %cmp222 = icmp uge i64 %conv221, 265
  br i1 %cmp222, label %if.then.224, label %if.else.226

if.then.224:                                      ; preds = %cond.end.218
  %106 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call225 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %106)
  br label %if.end.243

if.else.226:                                      ; preds = %cond.end.218
  %107 = load i32, i32* @zz_size, align 4
  %idxprom227 = sext i32 %107 to i64
  %arrayidx228 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom227
  %108 = load %union.rec*, %union.rec** %arrayidx228, align 8
  %cmp229 = icmp eq %union.rec* %108, null
  br i1 %cmp229, label %if.then.231, label %if.else.233

if.then.231:                                      ; preds = %if.else.226
  %109 = load i32, i32* @zz_size, align 4
  %110 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call232 = call %union.rec* @GetMemory(i32 %109, %struct.FILE_POS* %110)
  store %union.rec* %call232, %union.rec** @zz_hold, align 8
  br label %if.end.242

if.else.233:                                      ; preds = %if.else.226
  %111 = load i32, i32* @zz_size, align 4
  %idxprom234 = sext i32 %111 to i64
  %arrayidx235 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom234
  %112 = load %union.rec*, %union.rec** %arrayidx235, align 8
  store %union.rec* %112, %union.rec** @zz_hold, align 8
  store %union.rec* %112, %union.rec** @zz_hold, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %113 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 0
  %opred239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred239, align 8
  %115 = load i32, i32* @zz_size, align 4
  %idxprom240 = sext i32 %115 to i64
  %arrayidx241 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom240
  store %union.rec* %114, %union.rec** %arrayidx241, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.233, %if.then.231
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.224
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1244 = bitcast %union.rec* %116 to %struct.word_type*
  %ou1245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 1
  %os11246 = bitcast %union.FIRST_UNION* %ou1245 to %struct.anon*
  %otype247 = getelementptr inbounds %struct.anon, %struct.anon* %os11246, i32 0, i32 0
  store i8 120, i8* %otype247, align 1
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1248 = bitcast %union.rec* %118 to %struct.word_type*
  %olist249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist249, i32 0, i64 1
  %osucc251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx250, i32 0, i32 1
  store %union.rec* %117, %union.rec** %osucc251, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1252 = bitcast %union.rec* %119 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 1
  %opred255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 0
  store %union.rec* %117, %union.rec** %opred255, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1256 = bitcast %union.rec* %120 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 0
  %osucc259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 1
  store %union.rec* %117, %union.rec** %osucc259, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1260 = bitcast %union.rec* %121 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 0
  %opred263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 0
  store %union.rec* %117, %union.rec** %opred263, align 8
  store %union.rec* %117, %union.rec** %index, align 8
  %122 = load %union.rec*, %union.rec** %index, align 8
  %os2264 = bitcast %union.rec* %122 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2264, i32 0, i32 6
  %opinpoint = bitcast %union.anon.12* %oux to %union.rec**
  store %union.rec* null, %union.rec** %opinpoint, align 8
  %123 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv265 = zext i8 %123 to i32
  store i32 %conv265, i32* @zz_size, align 4
  %conv266 = sext i32 %conv265 to i64
  %cmp267 = icmp uge i64 %conv266, 265
  br i1 %cmp267, label %if.then.269, label %if.else.271

if.then.269:                                      ; preds = %if.end.243
  %124 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call270 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %124)
  br label %if.end.288

if.else.271:                                      ; preds = %if.end.243
  %125 = load i32, i32* @zz_size, align 4
  %idxprom272 = sext i32 %125 to i64
  %arrayidx273 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom272
  %126 = load %union.rec*, %union.rec** %arrayidx273, align 8
  %cmp274 = icmp eq %union.rec* %126, null
  br i1 %cmp274, label %if.then.276, label %if.else.278

if.then.276:                                      ; preds = %if.else.271
  %127 = load i32, i32* @zz_size, align 4
  %128 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call277 = call %union.rec* @GetMemory(i32 %127, %struct.FILE_POS* %128)
  store %union.rec* %call277, %union.rec** @zz_hold, align 8
  br label %if.end.287

if.else.278:                                      ; preds = %if.else.271
  %129 = load i32, i32* @zz_size, align 4
  %idxprom279 = sext i32 %129 to i64
  %arrayidx280 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom279
  %130 = load %union.rec*, %union.rec** %arrayidx280, align 8
  store %union.rec* %130, %union.rec** @zz_hold, align 8
  store %union.rec* %130, %union.rec** @zz_hold, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %131 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 0
  %opred284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 0
  %132 = load %union.rec*, %union.rec** %opred284, align 8
  %133 = load i32, i32* @zz_size, align 4
  %idxprom285 = sext i32 %133 to i64
  %arrayidx286 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom285
  store %union.rec* %132, %union.rec** %arrayidx286, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.278, %if.then.276
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.269
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %134 to %struct.word_type*
  %ou1290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 1
  %os11291 = bitcast %union.FIRST_UNION* %ou1290 to %struct.anon*
  %otype292 = getelementptr inbounds %struct.anon, %struct.anon* %os11291, i32 0, i32 0
  store i8 8, i8* %otype292, align 1
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1293 = bitcast %union.rec* %136 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 1
  %osucc296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 1
  store %union.rec* %135, %union.rec** %osucc296, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %137 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 1
  %opred300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 0
  store %union.rec* %135, %union.rec** %opred300, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1301 = bitcast %union.rec* %138 to %struct.word_type*
  %olist302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1301, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist302, i32 0, i64 0
  %osucc304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx303, i32 0, i32 1
  store %union.rec* %135, %union.rec** %osucc304, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1305 = bitcast %union.rec* %139 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 0
  %opred308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 0
  store %union.rec* %135, %union.rec** %opred308, align 8
  store %union.rec* %135, %union.rec** %hd, align 8
  %140 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1309 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 1
  %ofpos311 = bitcast %union.FIRST_UNION* %ou1310 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos311, i32 0, i32 2
  %141 = load i16, i16* %ofile_num, align 2
  %142 = load %union.rec*, %union.rec** %hd, align 8
  %os1312 = bitcast %union.rec* %142 to %struct.word_type*
  %ou1313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 1
  %ofpos314 = bitcast %union.FIRST_UNION* %ou1313 to %struct.FILE_POS*
  %ofile_num315 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos314, i32 0, i32 2
  store i16 %141, i16* %ofile_num315, align 2
  %143 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1316 = bitcast %union.rec* %143 to %struct.word_type*
  %ou1317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 1
  %ofpos318 = bitcast %union.FIRST_UNION* %ou1317 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos318, i32 0, i32 3
  %bf.load319 = load i32, i32* %oline_num, align 4
  %bf.clear320 = and i32 %bf.load319, 1048575
  %144 = load %union.rec*, %union.rec** %hd, align 8
  %os1321 = bitcast %union.rec* %144 to %struct.word_type*
  %ou1322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 1
  %ofpos323 = bitcast %union.FIRST_UNION* %ou1322 to %struct.FILE_POS*
  %oline_num324 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos323, i32 0, i32 3
  %bf.load325 = load i32, i32* %oline_num324, align 4
  %bf.value = and i32 %bf.clear320, 1048575
  %bf.clear326 = and i32 %bf.load325, -1048576
  %bf.set = or i32 %bf.clear326, %bf.value
  store i32 %bf.set, i32* %oline_num324, align 4
  %145 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1327 = bitcast %union.rec* %145 to %struct.word_type*
  %ou1328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1327, i32 0, i32 1
  %ofpos329 = bitcast %union.FIRST_UNION* %ou1328 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos329, i32 0, i32 3
  %bf.load330 = load i32, i32* %ocol_num, align 4
  %bf.lshr331 = lshr i32 %bf.load330, 20
  %146 = load %union.rec*, %union.rec** %hd, align 8
  %os1332 = bitcast %union.rec* %146 to %struct.word_type*
  %ou1333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 1
  %ofpos334 = bitcast %union.FIRST_UNION* %ou1333 to %struct.FILE_POS*
  %ocol_num335 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos334, i32 0, i32 3
  %bf.load336 = load i32, i32* %ocol_num335, align 4
  %bf.value337 = and i32 %bf.lshr331, 4095
  %bf.shl = shl i32 %bf.value337, 20
  %bf.clear338 = and i32 %bf.load336, 1048575
  %bf.set339 = or i32 %bf.clear338, %bf.shl
  store i32 %bf.set339, i32* %ocol_num335, align 4
  %147 = load %union.rec*, %union.rec** %xsym, align 8
  %148 = load %union.rec*, %union.rec** %hd, align 8
  %os2340 = bitcast %union.rec* %148 to %struct.closure_type*
  %oactual341 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2340, i32 0, i32 5
  store %union.rec* %147, %union.rec** %oactual341, align 8
  %149 = load %union.rec*, %union.rec** %hd, align 8
  %os2a = bitcast %union.rec* %149 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints, align 8
  %150 = load %union.rec*, %union.rec** %hd, align 8
  %os2a342 = bitcast %union.rec* %150 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a342, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components, align 8
  %151 = load %union.rec*, %union.rec** %hd, align 8
  %os2a343 = bitcast %union.rec* %151 to %struct.head_type*
  %olimiter = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a343, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter, align 8
  %152 = load %union.rec*, %union.rec** %hd, align 8
  %os1344 = bitcast %union.rec* %152 to %struct.word_type*
  %ou2345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2345 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load346 = load i16, i16* %ogall_dir, align 2
  %bf.clear347 = and i16 %bf.load346, -257
  %bf.set348 = or i16 %bf.clear347, 256
  store i16 %bf.set348, i16* %ogall_dir, align 2
  %153 = load %union.rec*, %union.rec** %hd, align 8
  %os2a349 = bitcast %union.rec* %153 to %struct.head_type*
  %oready_galls = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a349, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls, align 8
  %154 = load %union.rec*, %union.rec** %hd, align 8
  %os1350 = bitcast %union.rec* %154 to %struct.word_type*
  %ou2351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 2
  %os23352 = bitcast %union.SECOND_UNION* %ou2351 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23352, i32 0, i32 2
  %bf.load353 = load i16, i16* %omust_expand, align 2
  %bf.clear354 = and i16 %bf.load353, -129
  %bf.set355 = or i16 %bf.clear354, 128
  store i16 %bf.set355, i16* %omust_expand, align 2
  %155 = load %union.rec*, %union.rec** %hd, align 8
  %os1356 = bitcast %union.rec* %155 to %struct.word_type*
  %ou2357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 2
  %os23358 = bitcast %union.SECOND_UNION* %ou2357 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23358, i32 0, i32 2
  %bf.load359 = load i16, i16* %osized, align 2
  %bf.clear360 = and i16 %bf.load359, -3
  store i16 %bf.clear360, i16* %osized, align 2
  %156 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv361 = zext i8 %156 to i32
  store i32 %conv361, i32* @zz_size, align 4
  %conv362 = sext i32 %conv361 to i64
  %cmp363 = icmp uge i64 %conv362, 265
  br i1 %cmp363, label %if.then.365, label %if.else.367

if.then.365:                                      ; preds = %if.end.288
  %157 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call366 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %157)
  br label %if.end.384

if.else.367:                                      ; preds = %if.end.288
  %158 = load i32, i32* @zz_size, align 4
  %idxprom368 = sext i32 %158 to i64
  %arrayidx369 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom368
  %159 = load %union.rec*, %union.rec** %arrayidx369, align 8
  %cmp370 = icmp eq %union.rec* %159, null
  br i1 %cmp370, label %if.then.372, label %if.else.374

if.then.372:                                      ; preds = %if.else.367
  %160 = load i32, i32* @zz_size, align 4
  %161 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call373 = call %union.rec* @GetMemory(i32 %160, %struct.FILE_POS* %161)
  store %union.rec* %call373, %union.rec** @zz_hold, align 8
  br label %if.end.383

if.else.374:                                      ; preds = %if.else.367
  %162 = load i32, i32* @zz_size, align 4
  %idxprom375 = sext i32 %162 to i64
  %arrayidx376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom375
  %163 = load %union.rec*, %union.rec** %arrayidx376, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1377 = bitcast %union.rec* %164 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 0
  %opred380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %opred380, align 8
  %166 = load i32, i32* @zz_size, align 4
  %idxprom381 = sext i32 %166 to i64
  %arrayidx382 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom381
  store %union.rec* %165, %union.rec** %arrayidx382, align 8
  br label %if.end.383

if.end.383:                                       ; preds = %if.else.374, %if.then.372
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.then.365
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1385 = bitcast %union.rec* %167 to %struct.word_type*
  %ou1386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1385, i32 0, i32 1
  %os11387 = bitcast %union.FIRST_UNION* %ou1386 to %struct.anon*
  %otype388 = getelementptr inbounds %struct.anon, %struct.anon* %os11387, i32 0, i32 0
  store i8 0, i8* %otype388, align 1
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1389 = bitcast %union.rec* %169 to %struct.word_type*
  %olist390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist390, i32 0, i64 1
  %osucc392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx391, i32 0, i32 1
  store %union.rec* %168, %union.rec** %osucc392, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1393 = bitcast %union.rec* %170 to %struct.word_type*
  %olist394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist394, i32 0, i64 1
  %opred396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx395, i32 0, i32 0
  store %union.rec* %168, %union.rec** %opred396, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1397 = bitcast %union.rec* %171 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 0
  %osucc400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 1
  store %union.rec* %168, %union.rec** %osucc400, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1401 = bitcast %union.rec* %172 to %struct.word_type*
  %olist402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1401, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist402, i32 0, i64 0
  %opred404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx403, i32 0, i32 0
  store %union.rec* %168, %union.rec** %opred404, align 8
  store %union.rec* %168, %union.rec** @xx_link, align 8
  %173 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %173, %union.rec** @zz_res, align 8
  %174 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %174, %union.rec** @zz_hold, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp405 = icmp eq %union.rec* %175, null
  br i1 %cmp405, label %cond.true.407, label %cond.false.408

cond.true.407:                                    ; preds = %if.end.384
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.443

cond.false.408:                                   ; preds = %if.end.384
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp409 = icmp eq %union.rec* %177, null
  br i1 %cmp409, label %cond.true.411, label %cond.false.412

cond.true.411:                                    ; preds = %cond.false.408
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.441

cond.false.412:                                   ; preds = %cond.false.408
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1413 = bitcast %union.rec* %179 to %struct.word_type*
  %olist414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1413, i32 0, i32 0
  %arrayidx415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist414, i32 0, i64 0
  %opred416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx415, i32 0, i32 0
  %180 = load %union.rec*, %union.rec** %opred416, align 8
  store %union.rec* %180, %union.rec** @zz_tmp, align 8
  %181 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1417 = bitcast %union.rec* %181 to %struct.word_type*
  %olist418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1417, i32 0, i32 0
  %arrayidx419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist418, i32 0, i64 0
  %opred420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx419, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %opred420, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1421 = bitcast %union.rec* %183 to %struct.word_type*
  %olist422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1421, i32 0, i32 0
  %arrayidx423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist422, i32 0, i64 0
  %opred424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx423, i32 0, i32 0
  store %union.rec* %182, %union.rec** %opred424, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1425 = bitcast %union.rec* %185 to %struct.word_type*
  %olist426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1425, i32 0, i32 0
  %arrayidx427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist426, i32 0, i64 0
  %opred428 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx427, i32 0, i32 0
  %186 = load %union.rec*, %union.rec** %opred428, align 8
  %os1429 = bitcast %union.rec* %186 to %struct.word_type*
  %olist430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1429, i32 0, i32 0
  %arrayidx431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist430, i32 0, i64 0
  %osucc432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx431, i32 0, i32 1
  store %union.rec* %184, %union.rec** %osucc432, align 8
  %187 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %188 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1433 = bitcast %union.rec* %188 to %struct.word_type*
  %olist434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1433, i32 0, i32 0
  %arrayidx435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist434, i32 0, i64 0
  %opred436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx435, i32 0, i32 0
  store %union.rec* %187, %union.rec** %opred436, align 8
  %189 = load %union.rec*, %union.rec** @zz_res, align 8
  %190 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1437 = bitcast %union.rec* %190 to %struct.word_type*
  %olist438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1437, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist438, i32 0, i64 0
  %osucc440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx439, i32 0, i32 1
  store %union.rec* %189, %union.rec** %osucc440, align 8
  br label %cond.end.441

cond.end.441:                                     ; preds = %cond.false.412, %cond.true.411
  %cond442 = phi %union.rec* [ %178, %cond.true.411 ], [ %189, %cond.false.412 ]
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.end.441, %cond.true.407
  %cond444 = phi %union.rec* [ %176, %cond.true.407 ], [ %cond442, %cond.end.441 ]
  %191 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %191, %union.rec** @zz_res, align 8
  %192 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %192, %union.rec** @zz_hold, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp445 = icmp eq %union.rec* %193, null
  br i1 %cmp445, label %cond.true.447, label %cond.false.448

cond.true.447:                                    ; preds = %cond.end.443
  %194 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.483

cond.false.448:                                   ; preds = %cond.end.443
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp449 = icmp eq %union.rec* %195, null
  br i1 %cmp449, label %cond.true.451, label %cond.false.452

cond.true.451:                                    ; preds = %cond.false.448
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.481

cond.false.452:                                   ; preds = %cond.false.448
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1453 = bitcast %union.rec* %197 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 1
  %opred456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %opred456, align 8
  store %union.rec* %198, %union.rec** @zz_tmp, align 8
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1457 = bitcast %union.rec* %199 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 1
  %opred460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 0
  %200 = load %union.rec*, %union.rec** %opred460, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1461 = bitcast %union.rec* %201 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 1
  %opred464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 0
  store %union.rec* %200, %union.rec** %opred464, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1465 = bitcast %union.rec* %203 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 1
  %opred468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 0
  %204 = load %union.rec*, %union.rec** %opred468, align 8
  %os1469 = bitcast %union.rec* %204 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 1
  %osucc472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 1
  store %union.rec* %202, %union.rec** %osucc472, align 8
  %205 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1473 = bitcast %union.rec* %206 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 1
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  store %union.rec* %205, %union.rec** %opred476, align 8
  %207 = load %union.rec*, %union.rec** @zz_res, align 8
  %208 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1477 = bitcast %union.rec* %208 to %struct.word_type*
  %olist478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist478, i32 0, i64 1
  %osucc480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx479, i32 0, i32 1
  store %union.rec* %207, %union.rec** %osucc480, align 8
  br label %cond.end.481

cond.end.481:                                     ; preds = %cond.false.452, %cond.true.451
  %cond482 = phi %union.rec* [ %196, %cond.true.451 ], [ %207, %cond.false.452 ]
  br label %cond.end.483

cond.end.483:                                     ; preds = %cond.end.481, %cond.true.447
  %cond484 = phi %union.rec* [ %194, %cond.true.447 ], [ %cond482, %cond.end.481 ]
  %209 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv485 = zext i8 %209 to i32
  store i32 %conv485, i32* @zz_size, align 4
  %conv486 = sext i32 %conv485 to i64
  %cmp487 = icmp uge i64 %conv486, 265
  br i1 %cmp487, label %if.then.489, label %if.else.491

if.then.489:                                      ; preds = %cond.end.483
  %210 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call490 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %210)
  br label %if.end.508

if.else.491:                                      ; preds = %cond.end.483
  %211 = load i32, i32* @zz_size, align 4
  %idxprom492 = sext i32 %211 to i64
  %arrayidx493 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom492
  %212 = load %union.rec*, %union.rec** %arrayidx493, align 8
  %cmp494 = icmp eq %union.rec* %212, null
  br i1 %cmp494, label %if.then.496, label %if.else.498

if.then.496:                                      ; preds = %if.else.491
  %213 = load i32, i32* @zz_size, align 4
  %214 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call497 = call %union.rec* @GetMemory(i32 %213, %struct.FILE_POS* %214)
  store %union.rec* %call497, %union.rec** @zz_hold, align 8
  br label %if.end.507

if.else.498:                                      ; preds = %if.else.491
  %215 = load i32, i32* @zz_size, align 4
  %idxprom499 = sext i32 %215 to i64
  %arrayidx500 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom499
  %216 = load %union.rec*, %union.rec** %arrayidx500, align 8
  store %union.rec* %216, %union.rec** @zz_hold, align 8
  store %union.rec* %216, %union.rec** @zz_hold, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1501 = bitcast %union.rec* %217 to %struct.word_type*
  %olist502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1501, i32 0, i32 0
  %arrayidx503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist502, i32 0, i64 0
  %opred504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx503, i32 0, i32 0
  %218 = load %union.rec*, %union.rec** %opred504, align 8
  %219 = load i32, i32* @zz_size, align 4
  %idxprom505 = sext i32 %219 to i64
  %arrayidx506 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom505
  store %union.rec* %218, %union.rec** %arrayidx506, align 8
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.498, %if.then.496
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.then.489
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1509 = bitcast %union.rec* %220 to %struct.word_type*
  %ou1510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 1
  %os11511 = bitcast %union.FIRST_UNION* %ou1510 to %struct.anon*
  %otype512 = getelementptr inbounds %struct.anon, %struct.anon* %os11511, i32 0, i32 0
  store i8 0, i8* %otype512, align 1
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1513 = bitcast %union.rec* %222 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 1
  %osucc516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 1
  store %union.rec* %221, %union.rec** %osucc516, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1517 = bitcast %union.rec* %223 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 1
  %opred520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 0
  store %union.rec* %221, %union.rec** %opred520, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1521 = bitcast %union.rec* %224 to %struct.word_type*
  %olist522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1521, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist522, i32 0, i64 0
  %osucc524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx523, i32 0, i32 1
  store %union.rec* %221, %union.rec** %osucc524, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1525 = bitcast %union.rec* %225 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 0
  %opred528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 0
  store %union.rec* %221, %union.rec** %opred528, align 8
  store %union.rec* %221, %union.rec** @xx_link, align 8
  %226 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %226, %union.rec** @zz_res, align 8
  %227 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %227, %union.rec** @zz_hold, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp529 = icmp eq %union.rec* %228, null
  br i1 %cmp529, label %cond.true.531, label %cond.false.532

cond.true.531:                                    ; preds = %if.end.508
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.567

cond.false.532:                                   ; preds = %if.end.508
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp533 = icmp eq %union.rec* %230, null
  br i1 %cmp533, label %cond.true.535, label %cond.false.536

cond.true.535:                                    ; preds = %cond.false.532
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.565

cond.false.536:                                   ; preds = %cond.false.532
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1537 = bitcast %union.rec* %232 to %struct.word_type*
  %olist538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1537, i32 0, i32 0
  %arrayidx539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist538, i32 0, i64 0
  %opred540 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx539, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %opred540, align 8
  store %union.rec* %233, %union.rec** @zz_tmp, align 8
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1541 = bitcast %union.rec* %234 to %struct.word_type*
  %olist542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1541, i32 0, i32 0
  %arrayidx543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist542, i32 0, i64 0
  %opred544 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx543, i32 0, i32 0
  %235 = load %union.rec*, %union.rec** %opred544, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1545 = bitcast %union.rec* %236 to %struct.word_type*
  %olist546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist546, i32 0, i64 0
  %opred548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx547, i32 0, i32 0
  store %union.rec* %235, %union.rec** %opred548, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1549 = bitcast %union.rec* %238 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %opred552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %opred552, align 8
  %os1553 = bitcast %union.rec* %239 to %struct.word_type*
  %olist554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1553, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist554, i32 0, i64 0
  %osucc556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx555, i32 0, i32 1
  store %union.rec* %237, %union.rec** %osucc556, align 8
  %240 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %241 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1557 = bitcast %union.rec* %241 to %struct.word_type*
  %olist558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 0
  %arrayidx559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist558, i32 0, i64 0
  %opred560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx559, i32 0, i32 0
  store %union.rec* %240, %union.rec** %opred560, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %243 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1561 = bitcast %union.rec* %243 to %struct.word_type*
  %olist562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist562, i32 0, i64 0
  %osucc564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx563, i32 0, i32 1
  store %union.rec* %242, %union.rec** %osucc564, align 8
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.false.536, %cond.true.535
  %cond566 = phi %union.rec* [ %231, %cond.true.535 ], [ %242, %cond.false.536 ]
  br label %cond.end.567

cond.end.567:                                     ; preds = %cond.end.565, %cond.true.531
  %cond568 = phi %union.rec* [ %229, %cond.true.531 ], [ %cond566, %cond.end.565 ]
  %244 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %244, %union.rec** @zz_res, align 8
  %245 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %245, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp569 = icmp eq %union.rec* %246, null
  br i1 %cmp569, label %cond.true.571, label %cond.false.572

cond.true.571:                                    ; preds = %cond.end.567
  %247 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.607

cond.false.572:                                   ; preds = %cond.end.567
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp573 = icmp eq %union.rec* %248, null
  br i1 %cmp573, label %cond.true.575, label %cond.false.576

cond.true.575:                                    ; preds = %cond.false.572
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.605

cond.false.576:                                   ; preds = %cond.false.572
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1577 = bitcast %union.rec* %250 to %struct.word_type*
  %olist578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist578, i32 0, i64 1
  %opred580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx579, i32 0, i32 0
  %251 = load %union.rec*, %union.rec** %opred580, align 8
  store %union.rec* %251, %union.rec** @zz_tmp, align 8
  %252 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1581 = bitcast %union.rec* %252 to %struct.word_type*
  %olist582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist582, i32 0, i64 1
  %opred584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx583, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred584, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1585 = bitcast %union.rec* %254 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 1
  %opred588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred588, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1589 = bitcast %union.rec* %256 to %struct.word_type*
  %olist590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 0
  %arrayidx591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist590, i32 0, i64 1
  %opred592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx591, i32 0, i32 0
  %257 = load %union.rec*, %union.rec** %opred592, align 8
  %os1593 = bitcast %union.rec* %257 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 1
  %osucc596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 1
  store %union.rec* %255, %union.rec** %osucc596, align 8
  %258 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1597 = bitcast %union.rec* %259 to %struct.word_type*
  %olist598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1597, i32 0, i32 0
  %arrayidx599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist598, i32 0, i64 1
  %opred600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx599, i32 0, i32 0
  store %union.rec* %258, %union.rec** %opred600, align 8
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %261 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1601 = bitcast %union.rec* %261 to %struct.word_type*
  %olist602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 0
  %arrayidx603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist602, i32 0, i64 1
  %osucc604 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx603, i32 0, i32 1
  store %union.rec* %260, %union.rec** %osucc604, align 8
  br label %cond.end.605

cond.end.605:                                     ; preds = %cond.false.576, %cond.true.575
  %cond606 = phi %union.rec* [ %249, %cond.true.575 ], [ %260, %cond.false.576 ]
  br label %cond.end.607

cond.end.607:                                     ; preds = %cond.end.605, %cond.true.571
  %cond608 = phi %union.rec* [ %247, %cond.true.571 ], [ %cond606, %cond.end.605 ]
  %262 = load %union.rec*, %union.rec** %env, align 8
  %263 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @AttachEnv(%union.rec* %262, %union.rec* %263)
  %264 = load %union.rec*, %union.rec** %hd, align 8
  call void @SetTarget(%union.rec* %264)
  %265 = load %union.rec*, %union.rec** %hd, align 8
  %os2609 = bitcast %union.rec* %265 to %struct.closure_type*
  %oactual610 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2609, i32 0, i32 5
  %266 = load %union.rec*, %union.rec** %oactual610, align 8
  %os6 = bitcast %union.rec* %266 to %struct.symbol_type*
  %ohas_enclose = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 16
  %bf.load611 = load i8, i8* %ohas_enclose, align 2
  %bf.lshr612 = lshr i8 %bf.load611, 5
  %bf.clear613 = and i8 %bf.lshr612, 1
  %bf.cast614 = zext i8 %bf.clear613 to i32
  %tobool615 = icmp ne i32 %bf.cast614, 0
  br i1 %tobool615, label %cond.true.616, label %cond.false.618

cond.true.616:                                    ; preds = %cond.end.607
  %267 = load %union.rec*, %union.rec** %hd, align 8
  %call617 = call %union.rec* @BuildEnclose(%union.rec* %267)
  br label %cond.end.619

cond.false.618:                                   ; preds = %cond.end.607
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.618, %cond.true.616
  %cond620 = phi %union.rec* [ %call617, %cond.true.616 ], [ null, %cond.false.618 ]
  %268 = load %union.rec*, %union.rec** %hd, align 8
  %os2a621 = bitcast %union.rec* %268 to %struct.head_type*
  %oenclose_obj = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a621, i32 0, i32 12
  store %union.rec* %cond620, %union.rec** %oenclose_obj, align 8
  %269 = load %union.rec*, %union.rec** %hd, align 8
  %os2a622 = bitcast %union.rec* %269 to %struct.head_type*
  %odead_headers = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a622, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers, align 8
  %270 = load %union.rec*, %union.rec** %hd, align 8
  %os2a623 = bitcast %union.rec* %270 to %struct.head_type*
  %oheaders = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a623, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders, align 8
  %271 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv624 = zext i8 %271 to i32
  store i32 %conv624, i32* @zz_size, align 4
  %conv625 = sext i32 %conv624 to i64
  %cmp626 = icmp uge i64 %conv625, 265
  br i1 %cmp626, label %if.then.628, label %if.else.630

if.then.628:                                      ; preds = %cond.end.619
  %272 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call629 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %272)
  br label %if.end.647

if.else.630:                                      ; preds = %cond.end.619
  %273 = load i32, i32* @zz_size, align 4
  %idxprom631 = sext i32 %273 to i64
  %arrayidx632 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom631
  %274 = load %union.rec*, %union.rec** %arrayidx632, align 8
  %cmp633 = icmp eq %union.rec* %274, null
  br i1 %cmp633, label %if.then.635, label %if.else.637

if.then.635:                                      ; preds = %if.else.630
  %275 = load i32, i32* @zz_size, align 4
  %276 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call636 = call %union.rec* @GetMemory(i32 %275, %struct.FILE_POS* %276)
  store %union.rec* %call636, %union.rec** @zz_hold, align 8
  br label %if.end.646

if.else.637:                                      ; preds = %if.else.630
  %277 = load i32, i32* @zz_size, align 4
  %idxprom638 = sext i32 %277 to i64
  %arrayidx639 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom638
  %278 = load %union.rec*, %union.rec** %arrayidx639, align 8
  store %union.rec* %278, %union.rec** @zz_hold, align 8
  store %union.rec* %278, %union.rec** @zz_hold, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1640 = bitcast %union.rec* %279 to %struct.word_type*
  %olist641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1640, i32 0, i32 0
  %arrayidx642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist641, i32 0, i64 0
  %opred643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx642, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %opred643, align 8
  %281 = load i32, i32* @zz_size, align 4
  %idxprom644 = sext i32 %281 to i64
  %arrayidx645 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom644
  store %union.rec* %280, %union.rec** %arrayidx645, align 8
  br label %if.end.646

if.end.646:                                       ; preds = %if.else.637, %if.then.635
  br label %if.end.647

if.end.647:                                       ; preds = %if.end.646, %if.then.628
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1648 = bitcast %union.rec* %282 to %struct.word_type*
  %ou1649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 1
  %os11650 = bitcast %union.FIRST_UNION* %ou1649 to %struct.anon*
  %otype651 = getelementptr inbounds %struct.anon, %struct.anon* %os11650, i32 0, i32 0
  store i8 0, i8* %otype651, align 1
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1652 = bitcast %union.rec* %284 to %struct.word_type*
  %olist653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1652, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist653, i32 0, i64 1
  %osucc655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx654, i32 0, i32 1
  store %union.rec* %283, %union.rec** %osucc655, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1656 = bitcast %union.rec* %285 to %struct.word_type*
  %olist657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1656, i32 0, i32 0
  %arrayidx658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist657, i32 0, i64 1
  %opred659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx658, i32 0, i32 0
  store %union.rec* %283, %union.rec** %opred659, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1660 = bitcast %union.rec* %286 to %struct.word_type*
  %olist661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 0
  %arrayidx662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist661, i32 0, i64 0
  %osucc663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx662, i32 0, i32 1
  store %union.rec* %283, %union.rec** %osucc663, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1664 = bitcast %union.rec* %287 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 0
  %opred667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 0
  store %union.rec* %283, %union.rec** %opred667, align 8
  store %union.rec* %283, %union.rec** @xx_link, align 8
  %288 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %288, %union.rec** @zz_res, align 8
  %289 = load %union.rec*, %union.rec** %target, align 8
  %os1668 = bitcast %union.rec* %289 to %struct.word_type*
  %olist669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist669, i32 0, i64 1
  %osucc671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx670, i32 0, i32 1
  %290 = load %union.rec*, %union.rec** %osucc671, align 8
  store %union.rec* %290, %union.rec** @zz_hold, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp672 = icmp eq %union.rec* %291, null
  br i1 %cmp672, label %cond.true.674, label %cond.false.675

cond.true.674:                                    ; preds = %if.end.647
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.710

cond.false.675:                                   ; preds = %if.end.647
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp676 = icmp eq %union.rec* %293, null
  br i1 %cmp676, label %cond.true.678, label %cond.false.679

cond.true.678:                                    ; preds = %cond.false.675
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.708

cond.false.679:                                   ; preds = %cond.false.675
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1680 = bitcast %union.rec* %295 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 0
  %opred683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 0
  %296 = load %union.rec*, %union.rec** %opred683, align 8
  store %union.rec* %296, %union.rec** @zz_tmp, align 8
  %297 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1684 = bitcast %union.rec* %297 to %struct.word_type*
  %olist685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 0
  %arrayidx686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist685, i32 0, i64 0
  %opred687 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx686, i32 0, i32 0
  %298 = load %union.rec*, %union.rec** %opred687, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1688 = bitcast %union.rec* %299 to %struct.word_type*
  %olist689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1688, i32 0, i32 0
  %arrayidx690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist689, i32 0, i64 0
  %opred691 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx690, i32 0, i32 0
  store %union.rec* %298, %union.rec** %opred691, align 8
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1692 = bitcast %union.rec* %301 to %struct.word_type*
  %olist693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1692, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist693, i32 0, i64 0
  %opred695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx694, i32 0, i32 0
  %302 = load %union.rec*, %union.rec** %opred695, align 8
  %os1696 = bitcast %union.rec* %302 to %struct.word_type*
  %olist697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1696, i32 0, i32 0
  %arrayidx698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist697, i32 0, i64 0
  %osucc699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx698, i32 0, i32 1
  store %union.rec* %300, %union.rec** %osucc699, align 8
  %303 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1700 = bitcast %union.rec* %304 to %struct.word_type*
  %olist701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 0
  %arrayidx702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist701, i32 0, i64 0
  %opred703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx702, i32 0, i32 0
  store %union.rec* %303, %union.rec** %opred703, align 8
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  %306 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1704 = bitcast %union.rec* %306 to %struct.word_type*
  %olist705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1704, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist705, i32 0, i64 0
  %osucc707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx706, i32 0, i32 1
  store %union.rec* %305, %union.rec** %osucc707, align 8
  br label %cond.end.708

cond.end.708:                                     ; preds = %cond.false.679, %cond.true.678
  %cond709 = phi %union.rec* [ %294, %cond.true.678 ], [ %305, %cond.false.679 ]
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.end.708, %cond.true.674
  %cond711 = phi %union.rec* [ %292, %cond.true.674 ], [ %cond709, %cond.end.708 ]
  %307 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %307, %union.rec** @zz_res, align 8
  %308 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %308, %union.rec** @zz_hold, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp712 = icmp eq %union.rec* %309, null
  br i1 %cmp712, label %cond.true.714, label %cond.false.715

cond.true.714:                                    ; preds = %cond.end.710
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.750

cond.false.715:                                   ; preds = %cond.end.710
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp716 = icmp eq %union.rec* %311, null
  br i1 %cmp716, label %cond.true.718, label %cond.false.719

cond.true.718:                                    ; preds = %cond.false.715
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.748

cond.false.719:                                   ; preds = %cond.false.715
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1720 = bitcast %union.rec* %313 to %struct.word_type*
  %olist721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1720, i32 0, i32 0
  %arrayidx722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist721, i32 0, i64 1
  %opred723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx722, i32 0, i32 0
  %314 = load %union.rec*, %union.rec** %opred723, align 8
  store %union.rec* %314, %union.rec** @zz_tmp, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1724 = bitcast %union.rec* %315 to %struct.word_type*
  %olist725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 0
  %arrayidx726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist725, i32 0, i64 1
  %opred727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx726, i32 0, i32 0
  %316 = load %union.rec*, %union.rec** %opred727, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1728 = bitcast %union.rec* %317 to %struct.word_type*
  %olist729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1728, i32 0, i32 0
  %arrayidx730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist729, i32 0, i64 1
  %opred731 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx730, i32 0, i32 0
  store %union.rec* %316, %union.rec** %opred731, align 8
  %318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %319 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1732 = bitcast %union.rec* %319 to %struct.word_type*
  %olist733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1732, i32 0, i32 0
  %arrayidx734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist733, i32 0, i64 1
  %opred735 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx734, i32 0, i32 0
  %320 = load %union.rec*, %union.rec** %opred735, align 8
  %os1736 = bitcast %union.rec* %320 to %struct.word_type*
  %olist737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1736, i32 0, i32 0
  %arrayidx738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist737, i32 0, i64 1
  %osucc739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx738, i32 0, i32 1
  store %union.rec* %318, %union.rec** %osucc739, align 8
  %321 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %322 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1740 = bitcast %union.rec* %322 to %struct.word_type*
  %olist741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1740, i32 0, i32 0
  %arrayidx742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist741, i32 0, i64 1
  %opred743 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx742, i32 0, i32 0
  store %union.rec* %321, %union.rec** %opred743, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %324 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1744 = bitcast %union.rec* %324 to %struct.word_type*
  %olist745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1744, i32 0, i32 0
  %arrayidx746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist745, i32 0, i64 1
  %osucc747 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx746, i32 0, i32 1
  store %union.rec* %323, %union.rec** %osucc747, align 8
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.false.719, %cond.true.718
  %cond749 = phi %union.rec* [ %312, %cond.true.718 ], [ %323, %cond.false.719 ]
  br label %cond.end.750

cond.end.750:                                     ; preds = %cond.end.748, %cond.true.714
  %cond751 = phi %union.rec* [ %310, %cond.true.714 ], [ %cond749, %cond.end.748 ]
  %325 = load %union.rec*, %union.rec** %hd, align 8
  %os2752 = bitcast %union.rec* %325 to %struct.closure_type*
  %oux753 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2752, i32 0, i32 6
  %owhereto = bitcast %union.anon.12* %oux753 to %union.rec**
  %326 = load %union.rec*, %union.rec** %owhereto, align 8
  %cmp754 = icmp eq %union.rec* %326, null
  br i1 %cmp754, label %if.then.767, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.750
  %327 = load %union.rec*, %union.rec** %hd, align 8
  %os2756 = bitcast %union.rec* %327 to %struct.closure_type*
  %oux757 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2756, i32 0, i32 6
  %owhereto758 = bitcast %union.anon.12* %oux757 to %union.rec**
  %328 = load %union.rec*, %union.rec** %owhereto758, align 8
  %os1759 = bitcast %union.rec* %328 to %struct.word_type*
  %ou2760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1759, i32 0, i32 2
  %os26761 = bitcast %union.SECOND_UNION* %ou2760 to %struct.anon.5*
  %ouses_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26761, i32 0, i32 1
  %329 = bitcast [3 x i8]* %ouses_extern_target to i24*
  %bf.load762 = load i24, i24* %329, align 1
  %bf.lshr763 = lshr i24 %bf.load762, 11
  %bf.clear764 = and i24 %bf.lshr763, 1
  %bf.cast765 = zext i24 %bf.clear764 to i32
  %tobool766 = icmp ne i32 %bf.cast765, 0
  br i1 %tobool766, label %if.end.768, label %if.then.767

if.then.767:                                      ; preds = %lor.lhs.false, %cond.end.750
  %330 = load %union.rec*, %union.rec** %hd, align 8
  call void @FlushGalley(%union.rec* %330)
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.767, %lor.lhs.false
  %331 = load %union.rec*, %union.rec** %hd, align 8
  %os1769 = bitcast %union.rec* %331 to %struct.word_type*
  %olist770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 0
  %arrayidx771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist770, i32 0, i64 1
  %osucc772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx771, i32 0, i32 1
  %332 = load %union.rec*, %union.rec** %osucc772, align 8
  %os1773 = bitcast %union.rec* %332 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 0
  %opred776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 0
  %333 = load %union.rec*, %union.rec** %opred776, align 8
  store %union.rec* %333, %union.rec** %index, align 8
  br label %for.cond.777

for.cond.777:                                     ; preds = %for.inc.786, %if.end.768
  %334 = load %union.rec*, %union.rec** %index, align 8
  %os1778 = bitcast %union.rec* %334 to %struct.word_type*
  %ou1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1778, i32 0, i32 1
  %os11780 = bitcast %union.FIRST_UNION* %ou1779 to %struct.anon*
  %otype781 = getelementptr inbounds %struct.anon, %struct.anon* %os11780, i32 0, i32 0
  %335 = load i8, i8* %otype781, align 1
  %conv782 = zext i8 %335 to i32
  %cmp783 = icmp eq i32 %conv782, 0
  br i1 %cmp783, label %for.body.785, label %for.end.791

for.body.785:                                     ; preds = %for.cond.777
  br label %for.inc.786

for.inc.786:                                      ; preds = %for.body.785
  %336 = load %union.rec*, %union.rec** %index, align 8
  %os1787 = bitcast %union.rec* %336 to %struct.word_type*
  %olist788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1787, i32 0, i32 0
  %arrayidx789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist788, i32 0, i64 0
  %opred790 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx789, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %opred790, align 8
  store %union.rec* %337, %union.rec** %index, align 8
  br label %for.cond.777

for.end.791:                                      ; preds = %for.cond.777
  %338 = load %union.rec*, %union.rec** %index, align 8
  %os1792 = bitcast %union.rec* %338 to %struct.word_type*
  %ou1793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 1
  %os11794 = bitcast %union.FIRST_UNION* %ou1793 to %struct.anon*
  %otype795 = getelementptr inbounds %struct.anon, %struct.anon* %os11794, i32 0, i32 0
  %339 = load i8, i8* %otype795, align 1
  %conv796 = zext i8 %339 to i32
  %cmp797 = icmp eq i32 %conv796, 120
  br i1 %cmp797, label %land.lhs.true, label %if.end.1270

land.lhs.true:                                    ; preds = %for.end.791
  %340 = load %union.rec*, %union.rec** %hd, align 8
  %os1799 = bitcast %union.rec* %340 to %struct.word_type*
  %ou2800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1799, i32 0, i32 2
  %os23801 = bitcast %union.SECOND_UNION* %ou2800 to %struct.anon.2*
  %osized802 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23801, i32 0, i32 2
  %bf.load803 = load i16, i16* %osized802, align 2
  %bf.lshr804 = lshr i16 %bf.load803, 1
  %bf.clear805 = and i16 %bf.lshr804, 1
  %bf.cast806 = zext i16 %bf.clear805 to i32
  %tobool807 = icmp ne i32 %bf.cast806, 0
  br i1 %tobool807, label %if.end.1270, label %if.then.808

if.then.808:                                      ; preds = %land.lhs.true
  %341 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %341, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.923, %if.then.808
  %342 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1809 = bitcast %union.rec* %342 to %struct.word_type*
  %olist810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1809, i32 0, i32 0
  %arrayidx811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist810, i32 0, i64 1
  %osucc812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx811, i32 0, i32 1
  %343 = load %union.rec*, %union.rec** %osucc812, align 8
  %344 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp813 = icmp ne %union.rec* %343, %344
  br i1 %cmp813, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %345 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1815 = bitcast %union.rec* %345 to %struct.word_type*
  %olist816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1815, i32 0, i32 0
  %arrayidx817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist816, i32 0, i64 1
  %osucc818 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx817, i32 0, i32 1
  %346 = load %union.rec*, %union.rec** %osucc818, align 8
  store %union.rec* %346, %union.rec** @xx_link, align 8
  %347 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %347, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1819 = bitcast %union.rec* %348 to %struct.word_type*
  %olist820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1819, i32 0, i32 0
  %arrayidx821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist820, i32 0, i64 1
  %osucc822 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx821, i32 0, i32 1
  %349 = load %union.rec*, %union.rec** %osucc822, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp823 = icmp eq %union.rec* %349, %350
  br i1 %cmp823, label %cond.true.825, label %cond.false.826

cond.true.825:                                    ; preds = %while.body
  br label %cond.end.855

cond.false.826:                                   ; preds = %while.body
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1827 = bitcast %union.rec* %351 to %struct.word_type*
  %olist828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1827, i32 0, i32 0
  %arrayidx829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist828, i32 0, i64 1
  %osucc830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx829, i32 0, i32 1
  %352 = load %union.rec*, %union.rec** %osucc830, align 8
  store %union.rec* %352, %union.rec** @zz_res, align 8
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1831 = bitcast %union.rec* %353 to %struct.word_type*
  %olist832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1831, i32 0, i32 0
  %arrayidx833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist832, i32 0, i64 1
  %opred834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx833, i32 0, i32 0
  %354 = load %union.rec*, %union.rec** %opred834, align 8
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1835 = bitcast %union.rec* %355 to %struct.word_type*
  %olist836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 0
  %arrayidx837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist836, i32 0, i64 1
  %opred838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx837, i32 0, i32 0
  store %union.rec* %354, %union.rec** %opred838, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1839 = bitcast %union.rec* %357 to %struct.word_type*
  %olist840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1839, i32 0, i32 0
  %arrayidx841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist840, i32 0, i64 1
  %opred842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx841, i32 0, i32 0
  %358 = load %union.rec*, %union.rec** %opred842, align 8
  %os1843 = bitcast %union.rec* %358 to %struct.word_type*
  %olist844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1843, i32 0, i32 0
  %arrayidx845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist844, i32 0, i64 1
  %osucc846 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx845, i32 0, i32 1
  store %union.rec* %356, %union.rec** %osucc846, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1847 = bitcast %union.rec* %360 to %struct.word_type*
  %olist848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 0
  %arrayidx849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist848, i32 0, i64 1
  %osucc850 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx849, i32 0, i32 1
  store %union.rec* %359, %union.rec** %osucc850, align 8
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1851 = bitcast %union.rec* %361 to %struct.word_type*
  %olist852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 0
  %arrayidx853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist852, i32 0, i64 1
  %opred854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx853, i32 0, i32 0
  store %union.rec* %359, %union.rec** %opred854, align 8
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.855

cond.end.855:                                     ; preds = %cond.false.826, %cond.true.825
  %cond856 = phi %union.rec* [ null, %cond.true.825 ], [ %362, %cond.false.826 ]
  %363 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %363, %union.rec** @zz_hold, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1857 = bitcast %union.rec* %364 to %struct.word_type*
  %olist858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1857, i32 0, i32 0
  %arrayidx859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist858, i32 0, i64 0
  %osucc860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx859, i32 0, i32 1
  %365 = load %union.rec*, %union.rec** %osucc860, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp861 = icmp eq %union.rec* %365, %366
  br i1 %cmp861, label %cond.true.863, label %cond.false.864

cond.true.863:                                    ; preds = %cond.end.855
  br label %cond.end.893

cond.false.864:                                   ; preds = %cond.end.855
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1865 = bitcast %union.rec* %367 to %struct.word_type*
  %olist866 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1865, i32 0, i32 0
  %arrayidx867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist866, i32 0, i64 0
  %osucc868 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx867, i32 0, i32 1
  %368 = load %union.rec*, %union.rec** %osucc868, align 8
  store %union.rec* %368, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1869 = bitcast %union.rec* %369 to %struct.word_type*
  %olist870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1869, i32 0, i32 0
  %arrayidx871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist870, i32 0, i64 0
  %opred872 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx871, i32 0, i32 0
  %370 = load %union.rec*, %union.rec** %opred872, align 8
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1873 = bitcast %union.rec* %371 to %struct.word_type*
  %olist874 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1873, i32 0, i32 0
  %arrayidx875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist874, i32 0, i64 0
  %opred876 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx875, i32 0, i32 0
  store %union.rec* %370, %union.rec** %opred876, align 8
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1877 = bitcast %union.rec* %373 to %struct.word_type*
  %olist878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1877, i32 0, i32 0
  %arrayidx879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist878, i32 0, i64 0
  %opred880 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx879, i32 0, i32 0
  %374 = load %union.rec*, %union.rec** %opred880, align 8
  %os1881 = bitcast %union.rec* %374 to %struct.word_type*
  %olist882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1881, i32 0, i32 0
  %arrayidx883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist882, i32 0, i64 0
  %osucc884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx883, i32 0, i32 1
  store %union.rec* %372, %union.rec** %osucc884, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1885 = bitcast %union.rec* %376 to %struct.word_type*
  %olist886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1885, i32 0, i32 0
  %arrayidx887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist886, i32 0, i64 0
  %osucc888 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx887, i32 0, i32 1
  store %union.rec* %375, %union.rec** %osucc888, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1889 = bitcast %union.rec* %377 to %struct.word_type*
  %olist890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1889, i32 0, i32 0
  %arrayidx891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist890, i32 0, i64 0
  %opred892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx891, i32 0, i32 0
  store %union.rec* %375, %union.rec** %opred892, align 8
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.893

cond.end.893:                                     ; preds = %cond.false.864, %cond.true.863
  %cond894 = phi %union.rec* [ null, %cond.true.863 ], [ %378, %cond.false.864 ]
  %379 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %379, %union.rec** @zz_hold, align 8
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %380, %union.rec** @zz_hold, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1895 = bitcast %union.rec* %381 to %struct.word_type*
  %ou1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1895, i32 0, i32 1
  %os11897 = bitcast %union.FIRST_UNION* %ou1896 to %struct.anon*
  %otype898 = getelementptr inbounds %struct.anon, %struct.anon* %os11897, i32 0, i32 0
  %382 = load i8, i8* %otype898, align 1
  %conv899 = zext i8 %382 to i32
  %cmp900 = icmp eq i32 %conv899, 11
  br i1 %cmp900, label %cond.true.910, label %lor.lhs.false.902

lor.lhs.false.902:                                ; preds = %cond.end.893
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1903 = bitcast %union.rec* %383 to %struct.word_type*
  %ou1904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1903, i32 0, i32 1
  %os11905 = bitcast %union.FIRST_UNION* %ou1904 to %struct.anon*
  %otype906 = getelementptr inbounds %struct.anon, %struct.anon* %os11905, i32 0, i32 0
  %384 = load i8, i8* %otype906, align 1
  %conv907 = zext i8 %384 to i32
  %cmp908 = icmp eq i32 %conv907, 12
  br i1 %cmp908, label %cond.true.910, label %cond.false.915

cond.true.910:                                    ; preds = %lor.lhs.false.902, %cond.end.893
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1911 = bitcast %union.rec* %385 to %struct.word_type*
  %ou1912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1911, i32 0, i32 1
  %os11913 = bitcast %union.FIRST_UNION* %ou1912 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11913, i32 0, i32 1
  %386 = load i8, i8* %orec_size, align 1
  %conv914 = zext i8 %386 to i32
  br label %cond.end.923

cond.false.915:                                   ; preds = %lor.lhs.false.902
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1916 = bitcast %union.rec* %387 to %struct.word_type*
  %ou1917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1916, i32 0, i32 1
  %os11918 = bitcast %union.FIRST_UNION* %ou1917 to %struct.anon*
  %otype919 = getelementptr inbounds %struct.anon, %struct.anon* %os11918, i32 0, i32 0
  %388 = load i8, i8* %otype919, align 1
  %idxprom920 = zext i8 %388 to i64
  %arrayidx921 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom920
  %389 = load i8, i8* %arrayidx921, align 1
  %conv922 = zext i8 %389 to i32
  br label %cond.end.923

cond.end.923:                                     ; preds = %cond.false.915, %cond.true.910
  %cond924 = phi i32 [ %conv914, %cond.true.910 ], [ %conv922, %cond.false.915 ]
  store i32 %cond924, i32* @zz_size, align 4
  %390 = load i32, i32* @zz_size, align 4
  %idxprom925 = sext i32 %390 to i64
  %arrayidx926 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom925
  %391 = load %union.rec*, %union.rec** %arrayidx926, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1927 = bitcast %union.rec* %392 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 0
  %opred930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 0
  store %union.rec* %391, %union.rec** %opred930, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %394 = load i32, i32* @zz_size, align 4
  %idxprom931 = sext i32 %394 to i64
  %arrayidx932 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom931
  store %union.rec* %393, %union.rec** %arrayidx932, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.933

while.cond.933:                                   ; preds = %cond.end.1050, %while.end
  %395 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1934 = bitcast %union.rec* %395 to %struct.word_type*
  %olist935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 0
  %arrayidx936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist935, i32 0, i64 0
  %osucc937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx936, i32 0, i32 1
  %396 = load %union.rec*, %union.rec** %osucc937, align 8
  %397 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp938 = icmp ne %union.rec* %396, %397
  br i1 %cmp938, label %while.body.940, label %while.end.1060

while.body.940:                                   ; preds = %while.cond.933
  %398 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1941 = bitcast %union.rec* %398 to %struct.word_type*
  %olist942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 0
  %arrayidx943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist942, i32 0, i64 0
  %osucc944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx943, i32 0, i32 1
  %399 = load %union.rec*, %union.rec** %osucc944, align 8
  store %union.rec* %399, %union.rec** @xx_link, align 8
  %400 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1945 = bitcast %union.rec* %401 to %struct.word_type*
  %olist946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1945, i32 0, i32 0
  %arrayidx947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist946, i32 0, i64 1
  %osucc948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx947, i32 0, i32 1
  %402 = load %union.rec*, %union.rec** %osucc948, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp949 = icmp eq %union.rec* %402, %403
  br i1 %cmp949, label %cond.true.951, label %cond.false.952

cond.true.951:                                    ; preds = %while.body.940
  br label %cond.end.981

cond.false.952:                                   ; preds = %while.body.940
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1953 = bitcast %union.rec* %404 to %struct.word_type*
  %olist954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1953, i32 0, i32 0
  %arrayidx955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist954, i32 0, i64 1
  %osucc956 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx955, i32 0, i32 1
  %405 = load %union.rec*, %union.rec** %osucc956, align 8
  store %union.rec* %405, %union.rec** @zz_res, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1957 = bitcast %union.rec* %406 to %struct.word_type*
  %olist958 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1957, i32 0, i32 0
  %arrayidx959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist958, i32 0, i64 1
  %opred960 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx959, i32 0, i32 0
  %407 = load %union.rec*, %union.rec** %opred960, align 8
  %408 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1961 = bitcast %union.rec* %408 to %struct.word_type*
  %olist962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1961, i32 0, i32 0
  %arrayidx963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist962, i32 0, i64 1
  %opred964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx963, i32 0, i32 0
  store %union.rec* %407, %union.rec** %opred964, align 8
  %409 = load %union.rec*, %union.rec** @zz_res, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1965 = bitcast %union.rec* %410 to %struct.word_type*
  %olist966 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1965, i32 0, i32 0
  %arrayidx967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist966, i32 0, i64 1
  %opred968 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx967, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %opred968, align 8
  %os1969 = bitcast %union.rec* %411 to %struct.word_type*
  %olist970 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1969, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist970, i32 0, i64 1
  %osucc972 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx971, i32 0, i32 1
  store %union.rec* %409, %union.rec** %osucc972, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1973 = bitcast %union.rec* %413 to %struct.word_type*
  %olist974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1973, i32 0, i32 0
  %arrayidx975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist974, i32 0, i64 1
  %osucc976 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx975, i32 0, i32 1
  store %union.rec* %412, %union.rec** %osucc976, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1977 = bitcast %union.rec* %414 to %struct.word_type*
  %olist978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1977, i32 0, i32 0
  %arrayidx979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist978, i32 0, i64 1
  %opred980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx979, i32 0, i32 0
  store %union.rec* %412, %union.rec** %opred980, align 8
  %415 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.981

cond.end.981:                                     ; preds = %cond.false.952, %cond.true.951
  %cond982 = phi %union.rec* [ null, %cond.true.951 ], [ %415, %cond.false.952 ]
  %416 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %416, %union.rec** @zz_hold, align 8
  %417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1983 = bitcast %union.rec* %417 to %struct.word_type*
  %olist984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist984, i32 0, i64 0
  %osucc986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx985, i32 0, i32 1
  %418 = load %union.rec*, %union.rec** %osucc986, align 8
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp987 = icmp eq %union.rec* %418, %419
  br i1 %cmp987, label %cond.true.989, label %cond.false.990

cond.true.989:                                    ; preds = %cond.end.981
  br label %cond.end.1019

cond.false.990:                                   ; preds = %cond.end.981
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1991 = bitcast %union.rec* %420 to %struct.word_type*
  %olist992 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1991, i32 0, i32 0
  %arrayidx993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist992, i32 0, i64 0
  %osucc994 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx993, i32 0, i32 1
  %421 = load %union.rec*, %union.rec** %osucc994, align 8
  store %union.rec* %421, %union.rec** @zz_res, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1995 = bitcast %union.rec* %422 to %struct.word_type*
  %olist996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1995, i32 0, i32 0
  %arrayidx997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist996, i32 0, i64 0
  %opred998 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx997, i32 0, i32 0
  %423 = load %union.rec*, %union.rec** %opred998, align 8
  %424 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1999 = bitcast %union.rec* %424 to %struct.word_type*
  %olist1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1999, i32 0, i32 0
  %arrayidx1001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1000, i32 0, i64 0
  %opred1002 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1001, i32 0, i32 0
  store %union.rec* %423, %union.rec** %opred1002, align 8
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11003 = bitcast %union.rec* %426 to %struct.word_type*
  %olist1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11003, i32 0, i32 0
  %arrayidx1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1004, i32 0, i64 0
  %opred1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1005, i32 0, i32 0
  %427 = load %union.rec*, %union.rec** %opred1006, align 8
  %os11007 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11007, i32 0, i32 0
  %arrayidx1009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1008, i32 0, i64 0
  %osucc1010 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1009, i32 0, i32 1
  store %union.rec* %425, %union.rec** %osucc1010, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11011 = bitcast %union.rec* %429 to %struct.word_type*
  %olist1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11011, i32 0, i32 0
  %arrayidx1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1012, i32 0, i64 0
  %osucc1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1013, i32 0, i32 1
  store %union.rec* %428, %union.rec** %osucc1014, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11015 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11015, i32 0, i32 0
  %arrayidx1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1016, i32 0, i64 0
  %opred1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1017, i32 0, i32 0
  store %union.rec* %428, %union.rec** %opred1018, align 8
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1019

cond.end.1019:                                    ; preds = %cond.false.990, %cond.true.989
  %cond1020 = phi %union.rec* [ null, %cond.true.989 ], [ %431, %cond.false.990 ]
  %432 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %432, %union.rec** @zz_hold, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %433, %union.rec** @zz_hold, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11021 = bitcast %union.rec* %434 to %struct.word_type*
  %ou11022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 1
  %os111023 = bitcast %union.FIRST_UNION* %ou11022 to %struct.anon*
  %otype1024 = getelementptr inbounds %struct.anon, %struct.anon* %os111023, i32 0, i32 0
  %435 = load i8, i8* %otype1024, align 1
  %conv1025 = zext i8 %435 to i32
  %cmp1026 = icmp eq i32 %conv1025, 11
  br i1 %cmp1026, label %cond.true.1036, label %lor.lhs.false.1028

lor.lhs.false.1028:                               ; preds = %cond.end.1019
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11029 = bitcast %union.rec* %436 to %struct.word_type*
  %ou11030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 1
  %os111031 = bitcast %union.FIRST_UNION* %ou11030 to %struct.anon*
  %otype1032 = getelementptr inbounds %struct.anon, %struct.anon* %os111031, i32 0, i32 0
  %437 = load i8, i8* %otype1032, align 1
  %conv1033 = zext i8 %437 to i32
  %cmp1034 = icmp eq i32 %conv1033, 12
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1042

cond.true.1036:                                   ; preds = %lor.lhs.false.1028, %cond.end.1019
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11037 = bitcast %union.rec* %438 to %struct.word_type*
  %ou11038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 1
  %os111039 = bitcast %union.FIRST_UNION* %ou11038 to %struct.anon*
  %orec_size1040 = getelementptr inbounds %struct.anon, %struct.anon* %os111039, i32 0, i32 1
  %439 = load i8, i8* %orec_size1040, align 1
  %conv1041 = zext i8 %439 to i32
  br label %cond.end.1050

cond.false.1042:                                  ; preds = %lor.lhs.false.1028
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11043 = bitcast %union.rec* %440 to %struct.word_type*
  %ou11044 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11043, i32 0, i32 1
  %os111045 = bitcast %union.FIRST_UNION* %ou11044 to %struct.anon*
  %otype1046 = getelementptr inbounds %struct.anon, %struct.anon* %os111045, i32 0, i32 0
  %441 = load i8, i8* %otype1046, align 1
  %idxprom1047 = zext i8 %441 to i64
  %arrayidx1048 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1047
  %442 = load i8, i8* %arrayidx1048, align 1
  %conv1049 = zext i8 %442 to i32
  br label %cond.end.1050

cond.end.1050:                                    ; preds = %cond.false.1042, %cond.true.1036
  %cond1051 = phi i32 [ %conv1041, %cond.true.1036 ], [ %conv1049, %cond.false.1042 ]
  store i32 %cond1051, i32* @zz_size, align 4
  %443 = load i32, i32* @zz_size, align 4
  %idxprom1052 = sext i32 %443 to i64
  %arrayidx1053 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1052
  %444 = load %union.rec*, %union.rec** %arrayidx1053, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11054 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11054, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1055, i32 0, i64 0
  %opred1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1056, i32 0, i32 0
  store %union.rec* %444, %union.rec** %opred1057, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %447 = load i32, i32* @zz_size, align 4
  %idxprom1058 = sext i32 %447 to i64
  %arrayidx1059 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1058
  store %union.rec* %446, %union.rec** %arrayidx1059, align 8
  br label %while.cond.933

while.end.1060:                                   ; preds = %while.cond.933
  %448 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %448, %union.rec** @zz_hold, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %449, %union.rec** @zz_hold, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11061 = bitcast %union.rec* %450 to %struct.word_type*
  %ou11062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11061, i32 0, i32 1
  %os111063 = bitcast %union.FIRST_UNION* %ou11062 to %struct.anon*
  %otype1064 = getelementptr inbounds %struct.anon, %struct.anon* %os111063, i32 0, i32 0
  %451 = load i8, i8* %otype1064, align 1
  %conv1065 = zext i8 %451 to i32
  %cmp1066 = icmp eq i32 %conv1065, 11
  br i1 %cmp1066, label %cond.true.1076, label %lor.lhs.false.1068

lor.lhs.false.1068:                               ; preds = %while.end.1060
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11069 = bitcast %union.rec* %452 to %struct.word_type*
  %ou11070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 1
  %os111071 = bitcast %union.FIRST_UNION* %ou11070 to %struct.anon*
  %otype1072 = getelementptr inbounds %struct.anon, %struct.anon* %os111071, i32 0, i32 0
  %453 = load i8, i8* %otype1072, align 1
  %conv1073 = zext i8 %453 to i32
  %cmp1074 = icmp eq i32 %conv1073, 12
  br i1 %cmp1074, label %cond.true.1076, label %cond.false.1082

cond.true.1076:                                   ; preds = %lor.lhs.false.1068, %while.end.1060
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11077 = bitcast %union.rec* %454 to %struct.word_type*
  %ou11078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11077, i32 0, i32 1
  %os111079 = bitcast %union.FIRST_UNION* %ou11078 to %struct.anon*
  %orec_size1080 = getelementptr inbounds %struct.anon, %struct.anon* %os111079, i32 0, i32 1
  %455 = load i8, i8* %orec_size1080, align 1
  %conv1081 = zext i8 %455 to i32
  br label %cond.end.1090

cond.false.1082:                                  ; preds = %lor.lhs.false.1068
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11083 = bitcast %union.rec* %456 to %struct.word_type*
  %ou11084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11083, i32 0, i32 1
  %os111085 = bitcast %union.FIRST_UNION* %ou11084 to %struct.anon*
  %otype1086 = getelementptr inbounds %struct.anon, %struct.anon* %os111085, i32 0, i32 0
  %457 = load i8, i8* %otype1086, align 1
  %idxprom1087 = zext i8 %457 to i64
  %arrayidx1088 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1087
  %458 = load i8, i8* %arrayidx1088, align 1
  %conv1089 = zext i8 %458 to i32
  br label %cond.end.1090

cond.end.1090:                                    ; preds = %cond.false.1082, %cond.true.1076
  %cond1091 = phi i32 [ %conv1081, %cond.true.1076 ], [ %conv1089, %cond.false.1082 ]
  store i32 %cond1091, i32* @zz_size, align 4
  %459 = load i32, i32* @zz_size, align 4
  %idxprom1092 = sext i32 %459 to i64
  %arrayidx1093 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1092
  %460 = load %union.rec*, %union.rec** %arrayidx1093, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11094 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11094, i32 0, i32 0
  %arrayidx1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1095, i32 0, i64 0
  %opred1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1096, i32 0, i32 0
  store %union.rec* %460, %union.rec** %opred1097, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %463 = load i32, i32* @zz_size, align 4
  %idxprom1098 = sext i32 %463 to i64
  %arrayidx1099 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1098
  store %union.rec* %462, %union.rec** %arrayidx1099, align 8
  %464 = load %union.rec*, %union.rec** %hold_env, align 8
  %call1100 = call i32 @DisposeObject(%union.rec* %464)
  %465 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11101 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11101, i32 0, i32 0
  %arrayidx1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1102, i32 0, i64 0
  %opred1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1103, i32 0, i32 0
  %466 = load %union.rec*, %union.rec** %opred1104, align 8
  %467 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1105 = icmp ne %union.rec* %466, %467
  br i1 %cmp1105, label %if.then.1107, label %if.end.1269

if.then.1107:                                     ; preds = %cond.end.1090
  %468 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11108 = bitcast %union.rec* %468 to %struct.word_type*
  %olist1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 0
  %arrayidx1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1109, i32 0, i64 0
  %opred1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1110, i32 0, i32 0
  %469 = load %union.rec*, %union.rec** %opred1111, align 8
  %os11112 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11112, i32 0, i32 0
  %arrayidx1114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1113, i32 0, i64 1
  %opred1115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1114, i32 0, i32 0
  %470 = load %union.rec*, %union.rec** %opred1115, align 8
  store %union.rec* %470, %union.rec** %env, align 8
  br label %for.cond.1116

for.cond.1116:                                    ; preds = %for.inc.1125, %if.then.1107
  %471 = load %union.rec*, %union.rec** %env, align 8
  %os11117 = bitcast %union.rec* %471 to %struct.word_type*
  %ou11118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11117, i32 0, i32 1
  %os111119 = bitcast %union.FIRST_UNION* %ou11118 to %struct.anon*
  %otype1120 = getelementptr inbounds %struct.anon, %struct.anon* %os111119, i32 0, i32 0
  %472 = load i8, i8* %otype1120, align 1
  %conv1121 = zext i8 %472 to i32
  %cmp1122 = icmp eq i32 %conv1121, 0
  br i1 %cmp1122, label %for.body.1124, label %for.end.1131

for.body.1124:                                    ; preds = %for.cond.1116
  br label %for.inc.1125

for.inc.1125:                                     ; preds = %for.body.1124
  %473 = load %union.rec*, %union.rec** %env, align 8
  %os11127 = bitcast %union.rec* %473 to %struct.word_type*
  %olist1128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11127, i32 0, i32 0
  %arrayidx1129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1128, i32 0, i64 1
  %opred1130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1129, i32 0, i32 0
  %474 = load %union.rec*, %union.rec** %opred1130, align 8
  store %union.rec* %474, %union.rec** %env, align 8
  br label %for.cond.1116

for.end.1131:                                     ; preds = %for.cond.1116
  %475 = load %union.rec*, %union.rec** %env, align 8
  %os11132 = bitcast %union.rec* %475 to %struct.word_type*
  %ou11133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 1
  %os111134 = bitcast %union.FIRST_UNION* %ou11133 to %struct.anon*
  %otype1135 = getelementptr inbounds %struct.anon, %struct.anon* %os111134, i32 0, i32 0
  %476 = load i8, i8* %otype1135, align 1
  %conv1136 = zext i8 %476 to i32
  %cmp1137 = icmp eq i32 %conv1136, 82
  br i1 %cmp1137, label %if.then.1139, label %if.end.1268

if.then.1139:                                     ; preds = %for.end.1131
  %477 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11140 = bitcast %union.rec* %477 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 0
  %opred1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 0
  %478 = load %union.rec*, %union.rec** %opred1143, align 8
  store %union.rec* %478, %union.rec** @xx_link, align 8
  %479 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %479, %union.rec** @zz_hold, align 8
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11144 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11144, i32 0, i32 0
  %arrayidx1146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1145, i32 0, i64 1
  %osucc1147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1146, i32 0, i32 1
  %481 = load %union.rec*, %union.rec** %osucc1147, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1148 = icmp eq %union.rec* %481, %482
  br i1 %cmp1148, label %cond.true.1150, label %cond.false.1151

cond.true.1150:                                   ; preds = %if.then.1139
  br label %cond.end.1180

cond.false.1151:                                  ; preds = %if.then.1139
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11152 = bitcast %union.rec* %483 to %struct.word_type*
  %olist1153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11152, i32 0, i32 0
  %arrayidx1154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1153, i32 0, i64 1
  %osucc1155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1154, i32 0, i32 1
  %484 = load %union.rec*, %union.rec** %osucc1155, align 8
  store %union.rec* %484, %union.rec** @zz_res, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11156 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11156, i32 0, i32 0
  %arrayidx1158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1157, i32 0, i64 1
  %opred1159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1158, i32 0, i32 0
  %486 = load %union.rec*, %union.rec** %opred1159, align 8
  %487 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11160 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11160, i32 0, i32 0
  %arrayidx1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1161, i32 0, i64 1
  %opred1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1162, i32 0, i32 0
  store %union.rec* %486, %union.rec** %opred1163, align 8
  %488 = load %union.rec*, %union.rec** @zz_res, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11164 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11164, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1165, i32 0, i64 1
  %opred1167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1166, i32 0, i32 0
  %490 = load %union.rec*, %union.rec** %opred1167, align 8
  %os11168 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11168, i32 0, i32 0
  %arrayidx1170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1169, i32 0, i64 1
  %osucc1171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1170, i32 0, i32 1
  store %union.rec* %488, %union.rec** %osucc1171, align 8
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11172 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11172, i32 0, i32 0
  %arrayidx1174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1173, i32 0, i64 1
  %osucc1175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1174, i32 0, i32 1
  store %union.rec* %491, %union.rec** %osucc1175, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11176 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11176, i32 0, i32 0
  %arrayidx1178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1177, i32 0, i64 1
  %opred1179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1178, i32 0, i32 0
  store %union.rec* %491, %union.rec** %opred1179, align 8
  %494 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1180

cond.end.1180:                                    ; preds = %cond.false.1151, %cond.true.1150
  %cond1181 = phi %union.rec* [ null, %cond.true.1150 ], [ %494, %cond.false.1151 ]
  store %union.rec* %cond1181, %union.rec** @xx_tmp, align 8
  %495 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %495, %union.rec** @zz_hold, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11182 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11182, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1183, i32 0, i64 0
  %osucc1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1184, i32 0, i32 1
  %497 = load %union.rec*, %union.rec** %osucc1185, align 8
  %498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1186 = icmp eq %union.rec* %497, %498
  br i1 %cmp1186, label %cond.true.1188, label %cond.false.1189

cond.true.1188:                                   ; preds = %cond.end.1180
  br label %cond.end.1218

cond.false.1189:                                  ; preds = %cond.end.1180
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11190 = bitcast %union.rec* %499 to %struct.word_type*
  %olist1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11190, i32 0, i32 0
  %arrayidx1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1191, i32 0, i64 0
  %osucc1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1192, i32 0, i32 1
  %500 = load %union.rec*, %union.rec** %osucc1193, align 8
  store %union.rec* %500, %union.rec** @zz_res, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11194 = bitcast %union.rec* %501 to %struct.word_type*
  %olist1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11194, i32 0, i32 0
  %arrayidx1196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1195, i32 0, i64 0
  %opred1197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1196, i32 0, i32 0
  %502 = load %union.rec*, %union.rec** %opred1197, align 8
  %503 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11198 = bitcast %union.rec* %503 to %struct.word_type*
  %olist1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11198, i32 0, i32 0
  %arrayidx1200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1199, i32 0, i64 0
  %opred1201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1200, i32 0, i32 0
  store %union.rec* %502, %union.rec** %opred1201, align 8
  %504 = load %union.rec*, %union.rec** @zz_res, align 8
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11202 = bitcast %union.rec* %505 to %struct.word_type*
  %olist1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11202, i32 0, i32 0
  %arrayidx1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1203, i32 0, i64 0
  %opred1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1204, i32 0, i32 0
  %506 = load %union.rec*, %union.rec** %opred1205, align 8
  %os11206 = bitcast %union.rec* %506 to %struct.word_type*
  %olist1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11206, i32 0, i32 0
  %arrayidx1208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1207, i32 0, i64 0
  %osucc1209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1208, i32 0, i32 1
  store %union.rec* %504, %union.rec** %osucc1209, align 8
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11210 = bitcast %union.rec* %508 to %struct.word_type*
  %olist1211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11210, i32 0, i32 0
  %arrayidx1212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1211, i32 0, i64 0
  %osucc1213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1212, i32 0, i32 1
  store %union.rec* %507, %union.rec** %osucc1213, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11214 = bitcast %union.rec* %509 to %struct.word_type*
  %olist1215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11214, i32 0, i32 0
  %arrayidx1216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1215, i32 0, i64 0
  %opred1217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1216, i32 0, i32 0
  store %union.rec* %507, %union.rec** %opred1217, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1218

cond.end.1218:                                    ; preds = %cond.false.1189, %cond.true.1188
  %cond1219 = phi %union.rec* [ null, %cond.true.1188 ], [ %510, %cond.false.1189 ]
  %511 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %511, %union.rec** @zz_hold, align 8
  %512 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %512, %union.rec** @zz_hold, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11220 = bitcast %union.rec* %513 to %struct.word_type*
  %ou11221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11220, i32 0, i32 1
  %os111222 = bitcast %union.FIRST_UNION* %ou11221 to %struct.anon*
  %otype1223 = getelementptr inbounds %struct.anon, %struct.anon* %os111222, i32 0, i32 0
  %514 = load i8, i8* %otype1223, align 1
  %conv1224 = zext i8 %514 to i32
  %cmp1225 = icmp eq i32 %conv1224, 11
  br i1 %cmp1225, label %cond.true.1235, label %lor.lhs.false.1227

lor.lhs.false.1227:                               ; preds = %cond.end.1218
  %515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11228 = bitcast %union.rec* %515 to %struct.word_type*
  %ou11229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11228, i32 0, i32 1
  %os111230 = bitcast %union.FIRST_UNION* %ou11229 to %struct.anon*
  %otype1231 = getelementptr inbounds %struct.anon, %struct.anon* %os111230, i32 0, i32 0
  %516 = load i8, i8* %otype1231, align 1
  %conv1232 = zext i8 %516 to i32
  %cmp1233 = icmp eq i32 %conv1232, 12
  br i1 %cmp1233, label %cond.true.1235, label %cond.false.1241

cond.true.1235:                                   ; preds = %lor.lhs.false.1227, %cond.end.1218
  %517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11236 = bitcast %union.rec* %517 to %struct.word_type*
  %ou11237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11236, i32 0, i32 1
  %os111238 = bitcast %union.FIRST_UNION* %ou11237 to %struct.anon*
  %orec_size1239 = getelementptr inbounds %struct.anon, %struct.anon* %os111238, i32 0, i32 1
  %518 = load i8, i8* %orec_size1239, align 1
  %conv1240 = zext i8 %518 to i32
  br label %cond.end.1249

cond.false.1241:                                  ; preds = %lor.lhs.false.1227
  %519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11242 = bitcast %union.rec* %519 to %struct.word_type*
  %ou11243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11242, i32 0, i32 1
  %os111244 = bitcast %union.FIRST_UNION* %ou11243 to %struct.anon*
  %otype1245 = getelementptr inbounds %struct.anon, %struct.anon* %os111244, i32 0, i32 0
  %520 = load i8, i8* %otype1245, align 1
  %idxprom1246 = zext i8 %520 to i64
  %arrayidx1247 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1246
  %521 = load i8, i8* %arrayidx1247, align 1
  %conv1248 = zext i8 %521 to i32
  br label %cond.end.1249

cond.end.1249:                                    ; preds = %cond.false.1241, %cond.true.1235
  %cond1250 = phi i32 [ %conv1240, %cond.true.1235 ], [ %conv1248, %cond.false.1241 ]
  store i32 %cond1250, i32* @zz_size, align 4
  %522 = load i32, i32* @zz_size, align 4
  %idxprom1251 = sext i32 %522 to i64
  %arrayidx1252 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1251
  %523 = load %union.rec*, %union.rec** %arrayidx1252, align 8
  %524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11253 = bitcast %union.rec* %524 to %struct.word_type*
  %olist1254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11253, i32 0, i32 0
  %arrayidx1255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1254, i32 0, i64 0
  %opred1256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1255, i32 0, i32 0
  store %union.rec* %523, %union.rec** %opred1256, align 8
  %525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %526 = load i32, i32* @zz_size, align 4
  %idxprom1257 = sext i32 %526 to i64
  %arrayidx1258 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1257
  store %union.rec* %525, %union.rec** %arrayidx1258, align 8
  %527 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11259 = bitcast %union.rec* %527 to %struct.word_type*
  %olist1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 0
  %arrayidx1261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1260, i32 0, i64 1
  %osucc1262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1261, i32 0, i32 1
  %528 = load %union.rec*, %union.rec** %osucc1262, align 8
  %529 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1263 = icmp eq %union.rec* %528, %529
  br i1 %cmp1263, label %if.then.1265, label %if.end.1267

if.then.1265:                                     ; preds = %cond.end.1249
  %530 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1266 = call i32 @DisposeObject(%union.rec* %530)
  br label %if.end.1267

if.end.1267:                                      ; preds = %if.then.1265, %cond.end.1249
  br label %if.end.1268

if.end.1268:                                      ; preds = %if.end.1267, %for.end.1131
  br label %if.end.1269

if.end.1269:                                      ; preds = %if.end.1268, %cond.end.1090
  %531 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %531, %union.rec** %retval
  br label %return

if.end.1270:                                      ; preds = %land.lhs.true, %for.end.791
  %532 = load %union.rec*, %union.rec** %hd, align 8
  %os21271 = bitcast %union.rec* %532 to %struct.closure_type*
  %oactual1272 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21271, i32 0, i32 5
  %533 = load %union.rec*, %union.rec** %oactual1272, align 8
  %os11273 = bitcast %union.rec* %533 to %struct.word_type*
  %ou21274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11273, i32 0, i32 2
  %os261275 = bitcast %union.SECOND_UNION* %ou21274 to %struct.anon.5*
  %ohas_rpar = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261275, i32 0, i32 1
  %534 = bitcast [3 x i8]* %ohas_rpar to i24*
  %bf.load1276 = load i24, i24* %534, align 1
  %bf.lshr1277 = lshr i24 %bf.load1276, 3
  %bf.clear1278 = and i24 %bf.lshr1277, 1
  %bf.cast1279 = zext i24 %bf.clear1278 to i32
  %tobool1280 = icmp ne i32 %bf.cast1279, 0
  br i1 %tobool1280, label %if.then.1281, label %if.else.1590

if.then.1281:                                     ; preds = %if.end.1270
  %535 = load i32, i32* @itop, align 4
  %inc = add nsw i32 %535, 1
  store i32 %inc, i32* @itop, align 4
  %cmp1282 = icmp sge i32 %inc, 30
  br i1 %cmp1282, label %if.then.1284, label %if.end.1289

if.then.1284:                                     ; preds = %if.then.1281
  %536 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11285 = bitcast %union.rec* %536 to %struct.word_type*
  %ou11286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11285, i32 0, i32 1
  %ofpos1287 = bitcast %union.FIRST_UNION* %ou11286 to %struct.FILE_POS*
  %call1288 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1287, i32 30)
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.then.1284, %if.then.1281
  %537 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv1290 = zext i8 %537 to i32
  store i32 %conv1290, i32* @zz_size, align 4
  %conv1291 = sext i32 %conv1290 to i64
  %cmp1292 = icmp uge i64 %conv1291, 265
  br i1 %cmp1292, label %if.then.1294, label %if.else.1296

if.then.1294:                                     ; preds = %if.end.1289
  %538 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1295 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %538)
  br label %if.end.1313

if.else.1296:                                     ; preds = %if.end.1289
  %539 = load i32, i32* @zz_size, align 4
  %idxprom1297 = sext i32 %539 to i64
  %arrayidx1298 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1297
  %540 = load %union.rec*, %union.rec** %arrayidx1298, align 8
  %cmp1299 = icmp eq %union.rec* %540, null
  br i1 %cmp1299, label %if.then.1301, label %if.else.1303

if.then.1301:                                     ; preds = %if.else.1296
  %541 = load i32, i32* @zz_size, align 4
  %542 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1302 = call %union.rec* @GetMemory(i32 %541, %struct.FILE_POS* %542)
  store %union.rec* %call1302, %union.rec** @zz_hold, align 8
  br label %if.end.1312

if.else.1303:                                     ; preds = %if.else.1296
  %543 = load i32, i32* @zz_size, align 4
  %idxprom1304 = sext i32 %543 to i64
  %arrayidx1305 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1304
  %544 = load %union.rec*, %union.rec** %arrayidx1305, align 8
  store %union.rec* %544, %union.rec** @zz_hold, align 8
  store %union.rec* %544, %union.rec** @zz_hold, align 8
  %545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11306 = bitcast %union.rec* %545 to %struct.word_type*
  %olist1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1307, i32 0, i64 0
  %opred1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1308, i32 0, i32 0
  %546 = load %union.rec*, %union.rec** %opred1309, align 8
  %547 = load i32, i32* @zz_size, align 4
  %idxprom1310 = sext i32 %547 to i64
  %arrayidx1311 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1310
  store %union.rec* %546, %union.rec** %arrayidx1311, align 8
  br label %if.end.1312

if.end.1312:                                      ; preds = %if.else.1303, %if.then.1301
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.end.1312, %if.then.1294
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11314 = bitcast %union.rec* %548 to %struct.word_type*
  %ou11315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11314, i32 0, i32 1
  %os111316 = bitcast %union.FIRST_UNION* %ou11315 to %struct.anon*
  %otype1317 = getelementptr inbounds %struct.anon, %struct.anon* %os111316, i32 0, i32 0
  store i8 17, i8* %otype1317, align 1
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11318 = bitcast %union.rec* %550 to %struct.word_type*
  %olist1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11318, i32 0, i32 0
  %arrayidx1320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1319, i32 0, i64 1
  %osucc1321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1320, i32 0, i32 1
  store %union.rec* %549, %union.rec** %osucc1321, align 8
  %551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11322 = bitcast %union.rec* %551 to %struct.word_type*
  %olist1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11322, i32 0, i32 0
  %arrayidx1324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1323, i32 0, i64 1
  %opred1325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1324, i32 0, i32 0
  store %union.rec* %549, %union.rec** %opred1325, align 8
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11326 = bitcast %union.rec* %552 to %struct.word_type*
  %olist1327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11326, i32 0, i32 0
  %arrayidx1328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1327, i32 0, i64 0
  %osucc1329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1328, i32 0, i32 1
  store %union.rec* %549, %union.rec** %osucc1329, align 8
  %553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11330 = bitcast %union.rec* %553 to %struct.word_type*
  %olist1331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11330, i32 0, i32 0
  %arrayidx1332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1331, i32 0, i64 0
  %opred1333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1332, i32 0, i32 0
  store %union.rec* %549, %union.rec** %opred1333, align 8
  %554 = load i32, i32* @itop, align 4
  %idxprom1334 = sext i32 %554 to i64
  %arrayidx1335 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom1334
  store %union.rec* %549, %union.rec** %arrayidx1335, align 8
  store %union.rec* null, %union.rec** %target, align 8
  %555 = load %union.rec*, %union.rec** %hd, align 8
  %os11336 = bitcast %union.rec* %555 to %struct.word_type*
  %olist1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11336, i32 0, i32 0
  %arrayidx1338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1337, i32 0, i64 0
  %osucc1339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1338, i32 0, i32 1
  %556 = load %union.rec*, %union.rec** %osucc1339, align 8
  store %union.rec* %556, %union.rec** %link, align 8
  br label %for.cond.1340

for.cond.1340:                                    ; preds = %for.inc.1539, %if.end.1313
  %557 = load %union.rec*, %union.rec** %link, align 8
  %558 = load %union.rec*, %union.rec** %hd, align 8
  %cmp1341 = icmp ne %union.rec* %557, %558
  br i1 %cmp1341, label %for.body.1343, label %for.end.1544

for.body.1343:                                    ; preds = %for.cond.1340
  %559 = load %union.rec*, %union.rec** %link, align 8
  %os11344 = bitcast %union.rec* %559 to %struct.word_type*
  %olist1345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11344, i32 0, i32 0
  %arrayidx1346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1345, i32 0, i64 1
  %opred1347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1346, i32 0, i32 0
  %560 = load %union.rec*, %union.rec** %opred1347, align 8
  store %union.rec* %560, %union.rec** %y, align 8
  br label %for.cond.1348

for.cond.1348:                                    ; preds = %for.inc.1357, %for.body.1343
  %561 = load %union.rec*, %union.rec** %y, align 8
  %os11349 = bitcast %union.rec* %561 to %struct.word_type*
  %ou11350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11349, i32 0, i32 1
  %os111351 = bitcast %union.FIRST_UNION* %ou11350 to %struct.anon*
  %otype1352 = getelementptr inbounds %struct.anon, %struct.anon* %os111351, i32 0, i32 0
  %562 = load i8, i8* %otype1352, align 1
  %conv1353 = zext i8 %562 to i32
  %cmp1354 = icmp eq i32 %conv1353, 0
  br i1 %cmp1354, label %for.body.1356, label %for.end.1362

for.body.1356:                                    ; preds = %for.cond.1348
  br label %for.inc.1357

for.inc.1357:                                     ; preds = %for.body.1356
  %563 = load %union.rec*, %union.rec** %y, align 8
  %os11358 = bitcast %union.rec* %563 to %struct.word_type*
  %olist1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1359, i32 0, i64 1
  %opred1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1360, i32 0, i32 0
  %564 = load %union.rec*, %union.rec** %opred1361, align 8
  store %union.rec* %564, %union.rec** %y, align 8
  br label %for.cond.1348

for.end.1362:                                     ; preds = %for.cond.1348
  %565 = load %union.rec*, %union.rec** %y, align 8
  %os11363 = bitcast %union.rec* %565 to %struct.word_type*
  %ou11364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 1
  %os111365 = bitcast %union.FIRST_UNION* %ou11364 to %struct.anon*
  %otype1366 = getelementptr inbounds %struct.anon, %struct.anon* %os111365, i32 0, i32 0
  %566 = load i8, i8* %otype1366, align 1
  %conv1367 = zext i8 %566 to i32
  %cmp1368 = icmp eq i32 %conv1367, 121
  br i1 %cmp1368, label %land.lhs.true.1370, label %if.end.1538

land.lhs.true.1370:                               ; preds = %for.end.1362
  %567 = load %union.rec*, %union.rec** %y, align 8
  %os21371 = bitcast %union.rec* %567 to %struct.closure_type*
  %oactual1372 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21371, i32 0, i32 5
  %568 = load %union.rec*, %union.rec** %oactual1372, align 8
  %os21373 = bitcast %union.rec* %568 to %struct.closure_type*
  %oactual1374 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21373, i32 0, i32 5
  %569 = load %union.rec*, %union.rec** %oactual1374, align 8
  %570 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp1375 = icmp eq %union.rec* %569, %570
  br i1 %cmp1375, label %if.then.1377, label %if.end.1538

if.then.1377:                                     ; preds = %land.lhs.true.1370
  %571 = load %union.rec*, %union.rec** %y, align 8
  %os21378 = bitcast %union.rec* %571 to %struct.closure_type*
  %oactual1379 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21378, i32 0, i32 5
  %572 = load %union.rec*, %union.rec** %oactual1379, align 8
  %573 = load i32, i32* @itop, align 4
  %idxprom1380 = sext i32 %573 to i64
  %arrayidx1381 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom1380
  call void @Constrained(%union.rec* %572, %struct.CONSTRAINT* %arrayidx1381, i32 0, %union.rec** %why)
  %574 = load i32, i32* @itop, align 4
  %idxprom1382 = sext i32 %574 to i64
  %arrayidx1383 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom1382
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %arrayidx1383, i32 0, i32 0
  %575 = load i32, i32* %obc, align 4
  %cmp1384 = icmp sle i32 0, %575
  br i1 %cmp1384, label %land.lhs.true.1386, label %if.else.1529

land.lhs.true.1386:                               ; preds = %if.then.1377
  %576 = load i32, i32* @itop, align 4
  %idxprom1387 = sext i32 %576 to i64
  %arrayidx1388 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom1387
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %arrayidx1388, i32 0, i32 1
  %577 = load i32, i32* %obfc, align 4
  %cmp1389 = icmp sle i32 0, %577
  br i1 %cmp1389, label %land.lhs.true.1391, label %if.else.1529

land.lhs.true.1391:                               ; preds = %land.lhs.true.1386
  %578 = load i32, i32* @itop, align 4
  %idxprom1392 = sext i32 %578 to i64
  %arrayidx1393 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom1392
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %arrayidx1393, i32 0, i32 2
  %579 = load i32, i32* %ofc, align 4
  %cmp1394 = icmp sle i32 0, %579
  br i1 %cmp1394, label %if.then.1396, label %if.else.1529

if.then.1396:                                     ; preds = %land.lhs.true.1391
  %580 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1397 = zext i8 %580 to i32
  store i32 %conv1397, i32* @zz_size, align 4
  %conv1398 = sext i32 %conv1397 to i64
  %cmp1399 = icmp uge i64 %conv1398, 265
  br i1 %cmp1399, label %if.then.1401, label %if.else.1403

if.then.1401:                                     ; preds = %if.then.1396
  %581 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1402 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %581)
  br label %if.end.1420

if.else.1403:                                     ; preds = %if.then.1396
  %582 = load i32, i32* @zz_size, align 4
  %idxprom1404 = sext i32 %582 to i64
  %arrayidx1405 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1404
  %583 = load %union.rec*, %union.rec** %arrayidx1405, align 8
  %cmp1406 = icmp eq %union.rec* %583, null
  br i1 %cmp1406, label %if.then.1408, label %if.else.1410

if.then.1408:                                     ; preds = %if.else.1403
  %584 = load i32, i32* @zz_size, align 4
  %585 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1409 = call %union.rec* @GetMemory(i32 %584, %struct.FILE_POS* %585)
  store %union.rec* %call1409, %union.rec** @zz_hold, align 8
  br label %if.end.1419

if.else.1410:                                     ; preds = %if.else.1403
  %586 = load i32, i32* @zz_size, align 4
  %idxprom1411 = sext i32 %586 to i64
  %arrayidx1412 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1411
  %587 = load %union.rec*, %union.rec** %arrayidx1412, align 8
  store %union.rec* %587, %union.rec** @zz_hold, align 8
  store %union.rec* %587, %union.rec** @zz_hold, align 8
  %588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11413 = bitcast %union.rec* %588 to %struct.word_type*
  %olist1414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11413, i32 0, i32 0
  %arrayidx1415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1414, i32 0, i64 0
  %opred1416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1415, i32 0, i32 0
  %589 = load %union.rec*, %union.rec** %opred1416, align 8
  %590 = load i32, i32* @zz_size, align 4
  %idxprom1417 = sext i32 %590 to i64
  %arrayidx1418 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1417
  store %union.rec* %589, %union.rec** %arrayidx1418, align 8
  br label %if.end.1419

if.end.1419:                                      ; preds = %if.else.1410, %if.then.1408
  br label %if.end.1420

if.end.1420:                                      ; preds = %if.end.1419, %if.then.1401
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11421 = bitcast %union.rec* %591 to %struct.word_type*
  %ou11422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11421, i32 0, i32 1
  %os111423 = bitcast %union.FIRST_UNION* %ou11422 to %struct.anon*
  %otype1424 = getelementptr inbounds %struct.anon, %struct.anon* %os111423, i32 0, i32 0
  store i8 0, i8* %otype1424, align 1
  %592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11425 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11425, i32 0, i32 0
  %arrayidx1427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1426, i32 0, i64 1
  %osucc1428 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1427, i32 0, i32 1
  store %union.rec* %592, %union.rec** %osucc1428, align 8
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11429 = bitcast %union.rec* %594 to %struct.word_type*
  %olist1430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11429, i32 0, i32 0
  %arrayidx1431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1430, i32 0, i64 1
  %opred1432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1431, i32 0, i32 0
  store %union.rec* %592, %union.rec** %opred1432, align 8
  %595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11433 = bitcast %union.rec* %595 to %struct.word_type*
  %olist1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11433, i32 0, i32 0
  %arrayidx1435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1434, i32 0, i64 0
  %osucc1436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1435, i32 0, i32 1
  store %union.rec* %592, %union.rec** %osucc1436, align 8
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11437 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11437, i32 0, i32 0
  %arrayidx1439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1438, i32 0, i64 0
  %opred1440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1439, i32 0, i32 0
  store %union.rec* %592, %union.rec** %opred1440, align 8
  store %union.rec* %592, %union.rec** @xx_link, align 8
  %597 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %597, %union.rec** @zz_res, align 8
  %598 = load i32, i32* @itop, align 4
  %idxprom1441 = sext i32 %598 to i64
  %arrayidx1442 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom1441
  %599 = load %union.rec*, %union.rec** %arrayidx1442, align 8
  store %union.rec* %599, %union.rec** @zz_hold, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1443 = icmp eq %union.rec* %600, null
  br i1 %cmp1443, label %cond.true.1445, label %cond.false.1446

cond.true.1445:                                   ; preds = %if.end.1420
  %601 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1481

cond.false.1446:                                  ; preds = %if.end.1420
  %602 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1447 = icmp eq %union.rec* %602, null
  br i1 %cmp1447, label %cond.true.1449, label %cond.false.1450

cond.true.1449:                                   ; preds = %cond.false.1446
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1479

cond.false.1450:                                  ; preds = %cond.false.1446
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11451 = bitcast %union.rec* %604 to %struct.word_type*
  %olist1452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11451, i32 0, i32 0
  %arrayidx1453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1452, i32 0, i64 0
  %opred1454 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1453, i32 0, i32 0
  %605 = load %union.rec*, %union.rec** %opred1454, align 8
  store %union.rec* %605, %union.rec** @zz_tmp, align 8
  %606 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11455 = bitcast %union.rec* %606 to %struct.word_type*
  %olist1456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11455, i32 0, i32 0
  %arrayidx1457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1456, i32 0, i64 0
  %opred1458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1457, i32 0, i32 0
  %607 = load %union.rec*, %union.rec** %opred1458, align 8
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11459 = bitcast %union.rec* %608 to %struct.word_type*
  %olist1460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11459, i32 0, i32 0
  %arrayidx1461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1460, i32 0, i64 0
  %opred1462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1461, i32 0, i32 0
  store %union.rec* %607, %union.rec** %opred1462, align 8
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %610 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11463 = bitcast %union.rec* %610 to %struct.word_type*
  %olist1464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11463, i32 0, i32 0
  %arrayidx1465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1464, i32 0, i64 0
  %opred1466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1465, i32 0, i32 0
  %611 = load %union.rec*, %union.rec** %opred1466, align 8
  %os11467 = bitcast %union.rec* %611 to %struct.word_type*
  %olist1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11467, i32 0, i32 0
  %arrayidx1469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1468, i32 0, i64 0
  %osucc1470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1469, i32 0, i32 1
  store %union.rec* %609, %union.rec** %osucc1470, align 8
  %612 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11471 = bitcast %union.rec* %613 to %struct.word_type*
  %olist1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11471, i32 0, i32 0
  %arrayidx1473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1472, i32 0, i64 0
  %opred1474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1473, i32 0, i32 0
  store %union.rec* %612, %union.rec** %opred1474, align 8
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  %615 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11475 = bitcast %union.rec* %615 to %struct.word_type*
  %olist1476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11475, i32 0, i32 0
  %arrayidx1477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1476, i32 0, i64 0
  %osucc1478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1477, i32 0, i32 1
  store %union.rec* %614, %union.rec** %osucc1478, align 8
  br label %cond.end.1479

cond.end.1479:                                    ; preds = %cond.false.1450, %cond.true.1449
  %cond1480 = phi %union.rec* [ %603, %cond.true.1449 ], [ %614, %cond.false.1450 ]
  br label %cond.end.1481

cond.end.1481:                                    ; preds = %cond.end.1479, %cond.true.1445
  %cond1482 = phi %union.rec* [ %601, %cond.true.1445 ], [ %cond1480, %cond.end.1479 ]
  %616 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %616, %union.rec** @zz_res, align 8
  %617 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %617, %union.rec** @zz_hold, align 8
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1483 = icmp eq %union.rec* %618, null
  br i1 %cmp1483, label %cond.true.1485, label %cond.false.1486

cond.true.1485:                                   ; preds = %cond.end.1481
  %619 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1522

cond.false.1486:                                  ; preds = %cond.end.1481
  %620 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1487 = icmp eq %union.rec* %620, null
  br i1 %cmp1487, label %cond.true.1489, label %cond.false.1490

cond.true.1489:                                   ; preds = %cond.false.1486
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1520

cond.false.1490:                                  ; preds = %cond.false.1486
  %622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11491 = bitcast %union.rec* %622 to %struct.word_type*
  %olist1492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11491, i32 0, i32 0
  %arrayidx1493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1492, i32 0, i64 1
  %opred1494 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1493, i32 0, i32 0
  %623 = load %union.rec*, %union.rec** %opred1494, align 8
  store %union.rec* %623, %union.rec** @zz_tmp, align 8
  %624 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11495 = bitcast %union.rec* %624 to %struct.word_type*
  %olist1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11495, i32 0, i32 0
  %arrayidx1497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1496, i32 0, i64 1
  %opred1498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1497, i32 0, i32 0
  %625 = load %union.rec*, %union.rec** %opred1498, align 8
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11499 = bitcast %union.rec* %626 to %struct.word_type*
  %olist1500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11499, i32 0, i32 0
  %arrayidx1501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1500, i32 0, i64 1
  %opred1502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1501, i32 0, i32 0
  store %union.rec* %625, %union.rec** %opred1502, align 8
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %628 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11503 = bitcast %union.rec* %628 to %struct.word_type*
  %olist1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11503, i32 0, i32 0
  %arrayidx1505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1504, i32 0, i64 1
  %opred1506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1505, i32 0, i32 0
  %629 = load %union.rec*, %union.rec** %opred1506, align 8
  %os11507 = bitcast %union.rec* %629 to %struct.word_type*
  %olist1508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11507, i32 0, i32 0
  %arrayidx1509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1508, i32 0, i64 1
  %osucc1510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1509, i32 0, i32 1
  store %union.rec* %627, %union.rec** %osucc1510, align 8
  %630 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %631 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11512 = bitcast %union.rec* %631 to %struct.word_type*
  %olist1513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11512, i32 0, i32 0
  %arrayidx1514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1513, i32 0, i64 1
  %opred1515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1514, i32 0, i32 0
  store %union.rec* %630, %union.rec** %opred1515, align 8
  %632 = load %union.rec*, %union.rec** @zz_res, align 8
  %633 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11516 = bitcast %union.rec* %633 to %struct.word_type*
  %olist1517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11516, i32 0, i32 0
  %arrayidx1518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1517, i32 0, i64 1
  %osucc1519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1518, i32 0, i32 1
  store %union.rec* %632, %union.rec** %osucc1519, align 8
  br label %cond.end.1520

cond.end.1520:                                    ; preds = %cond.false.1490, %cond.true.1489
  %cond1521 = phi %union.rec* [ %621, %cond.true.1489 ], [ %632, %cond.false.1490 ]
  br label %cond.end.1522

cond.end.1522:                                    ; preds = %cond.end.1520, %cond.true.1485
  %cond1523 = phi %union.rec* [ %619, %cond.true.1485 ], [ %cond1521, %cond.end.1520 ]
  %634 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %634, %union.rec** %target, align 8
  %635 = load %union.rec*, %union.rec** %y, align 8
  %os21524 = bitcast %union.rec* %635 to %struct.closure_type*
  %oactual1525 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21524, i32 0, i32 5
  %636 = load %union.rec*, %union.rec** %oactual1525, align 8
  %call1526 = call %union.rec* @DetachEnv(%union.rec* %636)
  store %union.rec* %call1526, %union.rec** %env, align 8
  %637 = load %union.rec*, %union.rec** %new_env, align 8
  %638 = load %union.rec*, %union.rec** %y, align 8
  %os21527 = bitcast %union.rec* %638 to %struct.closure_type*
  %oactual1528 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21527, i32 0, i32 5
  %639 = load %union.rec*, %union.rec** %oactual1528, align 8
  call void @AttachEnv(%union.rec* %637, %union.rec* %639)
  br label %if.end.1537

if.else.1529:                                     ; preds = %land.lhs.true.1391, %land.lhs.true.1386, %if.then.1377
  %640 = load %union.rec*, %union.rec** %hd, align 8
  %os11530 = bitcast %union.rec* %640 to %struct.word_type*
  %ou11531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11530, i32 0, i32 1
  %ofpos1532 = bitcast %union.FIRST_UNION* %ou11531 to %struct.FILE_POS*
  %641 = load %union.rec*, %union.rec** %hd, align 8
  %os21533 = bitcast %union.rec* %641 to %struct.closure_type*
  %oactual1534 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21533, i32 0, i32 5
  %642 = load %union.rec*, %union.rec** %oactual1534, align 8
  %call1535 = call i8* @SymName(%union.rec* %642)
  %call1536 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1532, i8* %call1535)
  br label %if.end.1537

if.end.1537:                                      ; preds = %if.else.1529, %cond.end.1522
  br label %for.end.1544

if.end.1538:                                      ; preds = %land.lhs.true.1370, %for.end.1362
  br label %for.inc.1539

for.inc.1539:                                     ; preds = %if.end.1538
  %643 = load %union.rec*, %union.rec** %link, align 8
  %os11540 = bitcast %union.rec* %643 to %struct.word_type*
  %olist1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11540, i32 0, i32 0
  %arrayidx1542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1541, i32 0, i64 0
  %osucc1543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1542, i32 0, i32 1
  %644 = load %union.rec*, %union.rec** %osucc1543, align 8
  store %union.rec* %644, %union.rec** %link, align 8
  br label %for.cond.1340

for.end.1544:                                     ; preds = %if.end.1537, %for.cond.1340
  %645 = load %union.rec*, %union.rec** %target, align 8
  %cmp1545 = icmp eq %union.rec* %645, null
  br i1 %cmp1545, label %if.then.1558, label %lor.lhs.false.1547

lor.lhs.false.1547:                               ; preds = %for.end.1544
  %646 = load %union.rec*, %union.rec** %target, align 8
  %os21548 = bitcast %union.rec* %646 to %struct.closure_type*
  %oactual1549 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21548, i32 0, i32 5
  %647 = load %union.rec*, %union.rec** %oactual1549, align 8
  %os11550 = bitcast %union.rec* %647 to %struct.word_type*
  %ou21551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11550, i32 0, i32 2
  %os231552 = bitcast %union.SECOND_UNION* %ou21551 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231552, i32 0, i32 2
  %bf.load1553 = load i16, i16* %oexternal_ver, align 2
  %bf.lshr1554 = lshr i16 %bf.load1553, 4
  %bf.clear1555 = and i16 %bf.lshr1554, 1
  %bf.cast1556 = zext i16 %bf.clear1555 to i32
  %tobool1557 = icmp ne i32 %bf.cast1556, 0
  br i1 %tobool1557, label %if.then.1558, label %if.else.1562

if.then.1558:                                     ; preds = %lor.lhs.false.1547, %for.end.1544
  %648 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %649 = load %union.rec*, %union.rec** %xsym, align 8
  %os11559 = bitcast %union.rec* %649 to %struct.word_type*
  %ou21560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11559, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou21560 to %struct.anon.0*
  %oprecedence = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 0
  %650 = load i8, i8* %oprecedence, align 1
  %call1561 = call %union.rec* @NewToken(i8 zeroext 110, %struct.FILE_POS* %648, i8 zeroext 0, i8 zeroext 0, i8 zeroext %650, %union.rec* null)
  store %union.rec* %call1561, %union.rec** %res, align 8
  br label %if.end.1589

if.else.1562:                                     ; preds = %lor.lhs.false.1547
  %651 = load %union.rec*, %union.rec** %target, align 8
  %os21563 = bitcast %union.rec* %651 to %struct.closure_type*
  %oactual1564 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21563, i32 0, i32 5
  %652 = load %union.rec*, %union.rec** %oactual1564, align 8
  call void @Constrained(%union.rec* %652, %struct.CONSTRAINT* %c, i32 1, %union.rec** %why)
  %obc1565 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %653 = load i32, i32* %obc1565, align 4
  %cmp1566 = icmp ne i32 %653, 8388607
  br i1 %cmp1566, label %if.then.1576, label %lor.lhs.false.1568

lor.lhs.false.1568:                               ; preds = %if.else.1562
  %obfc1569 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %654 = load i32, i32* %obfc1569, align 4
  %cmp1570 = icmp ne i32 %654, 8388607
  br i1 %cmp1570, label %if.then.1576, label %lor.lhs.false.1572

lor.lhs.false.1572:                               ; preds = %lor.lhs.false.1568
  %ofc1573 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %655 = load i32, i32* %ofc1573, align 4
  %cmp1574 = icmp ne i32 %655, 8388607
  br i1 %cmp1574, label %if.then.1576, label %if.else.1582

if.then.1576:                                     ; preds = %lor.lhs.false.1572, %lor.lhs.false.1568, %if.else.1562
  %656 = load %union.rec*, %union.rec** %target, align 8
  %os11577 = bitcast %union.rec* %656 to %struct.word_type*
  %ou11578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11577, i32 0, i32 1
  %ofpos1579 = bitcast %union.FIRST_UNION* %ou11578 to %struct.FILE_POS*
  %657 = load %union.rec*, %union.rec** %xsym, align 8
  %call1580 = call i8* @SymName(%union.rec* %657)
  %call1581 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1579, i8* %call1580)
  br label %if.end.1588

if.else.1582:                                     ; preds = %lor.lhs.false.1572
  %658 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %659 = load %union.rec*, %union.rec** %xsym, align 8
  %os11583 = bitcast %union.rec* %659 to %struct.word_type*
  %ou21584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11583, i32 0, i32 2
  %os211585 = bitcast %union.SECOND_UNION* %ou21584 to %struct.anon.0*
  %oprecedence1586 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os211585, i32 0, i32 0
  %660 = load i8, i8* %oprecedence1586, align 1
  %call1587 = call %union.rec* @NewToken(i8 zeroext 109, %struct.FILE_POS* %658, i8 zeroext 0, i8 zeroext 0, i8 zeroext %660, %union.rec* null)
  store %union.rec* %call1587, %union.rec** %res, align 8
  br label %if.end.1588

if.end.1588:                                      ; preds = %if.else.1582, %if.then.1576
  br label %if.end.1589

if.end.1589:                                      ; preds = %if.end.1588, %if.then.1558
  br label %if.end.1596

if.else.1590:                                     ; preds = %if.end.1270
  %661 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %662 = load %union.rec*, %union.rec** %xsym, align 8
  %os11591 = bitcast %union.rec* %662 to %struct.word_type*
  %ou21592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11591, i32 0, i32 2
  %os211593 = bitcast %union.SECOND_UNION* %ou21592 to %struct.anon.0*
  %oprecedence1594 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os211593, i32 0, i32 0
  %663 = load i8, i8* %oprecedence1594, align 1
  %call1595 = call %union.rec* @NewToken(i8 zeroext 108, %struct.FILE_POS* %661, i8 zeroext 0, i8 zeroext 0, i8 zeroext %663, %union.rec* null)
  store %union.rec* %call1595, %union.rec** %res, align 8
  br label %if.end.1596

if.end.1596:                                      ; preds = %if.else.1590, %if.end.1589
  %664 = load %union.rec*, %union.rec** %hold_env, align 8
  %call1597 = call i32 @DisposeObject(%union.rec* %664)
  %665 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %665, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.1596, %if.end.1269
  %666 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %666
}

declare void @CrossAddTag(%union.rec*) #1

declare i8* @SymName(%union.rec*) #1

declare %union.rec* @GetEnv(%union.rec*) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare void @AttachEnv(%union.rec*, %union.rec*) #1

declare %union.rec* @SetEnv(%union.rec*, %union.rec*) #1

declare void @SetTarget(%union.rec*) #1

declare %union.rec* @BuildEnclose(%union.rec*) #1

declare void @FlushGalley(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

; Function Attrs: nounwind uwtable
define void @TransferComponent(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %start_search = alloca %union.rec*, align 8
  %recs = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %nothing = alloca %union.rec*, align 8
  %hd = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %tinners = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load i32, i32* @itop, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom
  %1 = load %union.rec*, %union.rec** %arrayidx, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %3 = load i32, i32* @itop, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom2
  %4 = load %union.rec*, %union.rec** %arrayidx3, align 8
  %cmp = icmp eq %union.rec* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %call = call i32 @DisposeObject(%union.rec* %5)
  br label %if.end.951

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @itop, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom4
  %7 = load %union.rec*, %union.rec** %arrayidx5, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 0
  %osucc9 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc9, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %dest_index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %union.rec*, %union.rec** %dest_index, align 8
  %os113 = bitcast %union.rec* %10 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %11 = load i8, i8* %otype, align 1
  %conv = zext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.rec*, %union.rec** %dest_index, align 8
  %os116 = bitcast %union.rec* %12 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %13, %union.rec** %dest_index, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2 = bitcast %union.rec* %14 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %15 = load %union.rec*, %union.rec** %oactual, align 8
  %os120 = bitcast %union.rec* %15 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %oexternal_ver, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.end
  %17 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv24 = zext i8 %17 to i32
  store i32 %conv24, i32* @zz_size, align 4
  %conv25 = sext i32 %conv24 to i64
  %cmp26 = icmp uge i64 %conv25, 265
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.23
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %18)
  br label %if.end.46

if.else:                                          ; preds = %if.end.23
  %19 = load i32, i32* @zz_size, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom30
  %20 = load %union.rec*, %union.rec** %arrayidx31, align 8
  %cmp32 = icmp eq %union.rec* %20, null
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else
  %21 = load i32, i32* @zz_size, align 4
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call %union.rec* @GetMemory(i32 %21, %struct.FILE_POS* %22)
  store %union.rec* %call35, %union.rec** @zz_hold, align 8
  br label %if.end.45

if.else.36:                                       ; preds = %if.else
  %23 = load i32, i32* @zz_size, align 4
  %idxprom37 = sext i32 %23 to i64
  %arrayidx38 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom37
  %24 = load %union.rec*, %union.rec** %arrayidx38, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %25 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 0
  %opred42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred42, align 8
  %27 = load i32, i32* @zz_size, align 4
  %idxprom43 = sext i32 %27 to i64
  %arrayidx44 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom43
  store %union.rec* %26, %union.rec** %arrayidx44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.36, %if.then.34
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.28
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os147 = bitcast %union.rec* %28 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %os1149 = bitcast %union.FIRST_UNION* %ou148 to %struct.anon*
  %otype50 = getelementptr inbounds %struct.anon, %struct.anon* %os1149, i32 0, i32 0
  store i8 8, i8* %otype50, align 1
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os151 = bitcast %union.rec* %30 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 1
  %osucc54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc54, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os155 = bitcast %union.rec* %31 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 1
  %opred58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred58, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os159 = bitcast %union.rec* %32 to %struct.word_type*
  %olist60 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist60, i32 0, i64 0
  %osucc62 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx61, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc62, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os163 = bitcast %union.rec* %33 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 0
  %opred66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred66, align 8
  store %union.rec* %29, %union.rec** %hd, align 8
  %34 = load %union.rec*, %union.rec** %hd, align 8
  %os167 = bitcast %union.rec* %34 to %struct.word_type*
  %ou268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 2
  %os2369 = bitcast %union.SECOND_UNION* %ou268 to %struct.anon.2*
  %oforce_gall = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2369, i32 0, i32 2
  %bf.load70 = load i16, i16* %oforce_gall, align 2
  %bf.clear71 = and i16 %bf.load70, -4097
  store i16 %bf.clear71, i16* %oforce_gall, align 2
  %35 = load %union.rec*, %union.rec** %hd, align 8
  %os2a = bitcast %union.rec* %35 to %struct.head_type*
  %odead_headers = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers, align 8
  %36 = load %union.rec*, %union.rec** %hd, align 8
  %os2a72 = bitcast %union.rec* %36 to %struct.head_type*
  %oheaders = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a72, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders, align 8
  %37 = load %union.rec*, %union.rec** %hd, align 8
  %os2a73 = bitcast %union.rec* %37 to %struct.head_type*
  %olimiter = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a73, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter, align 8
  %38 = load %union.rec*, %union.rec** %hd, align 8
  %os2a74 = bitcast %union.rec* %38 to %struct.head_type*
  %oenclose_obj = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a74, i32 0, i32 12
  store %union.rec* null, %union.rec** %oenclose_obj, align 8
  %39 = load %union.rec*, %union.rec** %hd, align 8
  %os2a75 = bitcast %union.rec* %39 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a75, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints, align 8
  %40 = load %union.rec*, %union.rec** %hd, align 8
  %os2a76 = bitcast %union.rec* %40 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a76, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components, align 8
  %41 = load %union.rec*, %union.rec** %hd, align 8
  %os177 = bitcast %union.rec* %41 to %struct.word_type*
  %ou278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 2
  %os2379 = bitcast %union.SECOND_UNION* %ou278 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2379, i32 0, i32 2
  %bf.load80 = load i16, i16* %ogall_dir, align 2
  %bf.clear81 = and i16 %bf.load80, -257
  %bf.set = or i16 %bf.clear81, 256
  store i16 %bf.set, i16* %ogall_dir, align 2
  %42 = load %union.rec*, %union.rec** %x.addr, align 8
  %os182 = bitcast %union.rec* %42 to %struct.word_type*
  %ou183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou183 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %43 = load i16, i16* %ofile_num, align 2
  %44 = load %union.rec*, %union.rec** %hd, align 8
  %os184 = bitcast %union.rec* %44 to %struct.word_type*
  %ou185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 1
  %ofpos86 = bitcast %union.FIRST_UNION* %ou185 to %struct.FILE_POS*
  %ofile_num87 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos86, i32 0, i32 2
  store i16 %43, i16* %ofile_num87, align 2
  %45 = load %union.rec*, %union.rec** %x.addr, align 8
  %os188 = bitcast %union.rec* %45 to %struct.word_type*
  %ou189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 1
  %ofpos90 = bitcast %union.FIRST_UNION* %ou189 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos90, i32 0, i32 3
  %bf.load91 = load i32, i32* %oline_num, align 4
  %bf.clear92 = and i32 %bf.load91, 1048575
  %46 = load %union.rec*, %union.rec** %hd, align 8
  %os193 = bitcast %union.rec* %46 to %struct.word_type*
  %ou194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 1
  %ofpos95 = bitcast %union.FIRST_UNION* %ou194 to %struct.FILE_POS*
  %oline_num96 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos95, i32 0, i32 3
  %bf.load97 = load i32, i32* %oline_num96, align 4
  %bf.value = and i32 %bf.clear92, 1048575
  %bf.clear98 = and i32 %bf.load97, -1048576
  %bf.set99 = or i32 %bf.clear98, %bf.value
  store i32 %bf.set99, i32* %oline_num96, align 4
  %47 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1100 = bitcast %union.rec* %47 to %struct.word_type*
  %ou1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 1
  %ofpos102 = bitcast %union.FIRST_UNION* %ou1101 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos102, i32 0, i32 3
  %bf.load103 = load i32, i32* %ocol_num, align 4
  %bf.lshr104 = lshr i32 %bf.load103, 20
  %48 = load %union.rec*, %union.rec** %hd, align 8
  %os1105 = bitcast %union.rec* %48 to %struct.word_type*
  %ou1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 1
  %ofpos107 = bitcast %union.FIRST_UNION* %ou1106 to %struct.FILE_POS*
  %ocol_num108 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos107, i32 0, i32 3
  %bf.load109 = load i32, i32* %ocol_num108, align 4
  %bf.value110 = and i32 %bf.lshr104, 4095
  %bf.shl = shl i32 %bf.value110, 20
  %bf.clear111 = and i32 %bf.load109, 1048575
  %bf.set112 = or i32 %bf.clear111, %bf.shl
  store i32 %bf.set112, i32* %ocol_num108, align 4
  %49 = load %union.rec*, %union.rec** %hd, align 8
  %os2a113 = bitcast %union.rec* %49 to %struct.head_type*
  %oready_galls = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a113, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls, align 8
  %50 = load %union.rec*, %union.rec** %hd, align 8
  %os2114 = bitcast %union.rec* %50 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2114, i32 0, i32 6
  %owhereto = bitcast %union.anon.12* %oux to %union.rec**
  store %union.rec* null, %union.rec** %owhereto, align 8
  %51 = load %union.rec*, %union.rec** %hd, align 8
  %os2115 = bitcast %union.rec* %51 to %struct.closure_type*
  %oactual116 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2115, i32 0, i32 5
  store %union.rec* null, %union.rec** %oactual116, align 8
  %52 = load %union.rec*, %union.rec** %hd, align 8
  %os1117 = bitcast %union.rec* %52 to %struct.word_type*
  %ou2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 2
  %os23119 = bitcast %union.SECOND_UNION* %ou2118 to %struct.anon.2*
  %ofoll_or_prec = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23119, i32 0, i32 0
  store i8 -127, i8* %ofoll_or_prec, align 1
  %53 = load %union.rec*, %union.rec** %hd, align 8
  %os1120 = bitcast %union.rec* %53 to %struct.word_type*
  %ou2121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 2
  %os23122 = bitcast %union.SECOND_UNION* %ou2121 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23122, i32 0, i32 2
  %bf.load123 = load i16, i16* %osized, align 2
  %bf.clear124 = and i16 %bf.load123, -3
  store i16 %bf.clear124, i16* %osized, align 2
  %54 = load %union.rec*, %union.rec** %hd, align 8
  %os1125 = bitcast %union.rec* %54 to %struct.word_type*
  %ou2126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 2
  %os23127 = bitcast %union.SECOND_UNION* %ou2126 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23127, i32 0, i32 2
  %bf.load128 = load i16, i16* %omust_expand, align 2
  %bf.clear129 = and i16 %bf.load128, -129
  store i16 %bf.clear129, i16* %omust_expand, align 2
  %55 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv130 = zext i8 %55 to i32
  store i32 %conv130, i32* @zz_size, align 4
  %conv131 = sext i32 %conv130 to i64
  %cmp132 = icmp uge i64 %conv131, 265
  br i1 %cmp132, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.end.46
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call135 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %56)
  br label %if.end.153

if.else.136:                                      ; preds = %if.end.46
  %57 = load i32, i32* @zz_size, align 4
  %idxprom137 = sext i32 %57 to i64
  %arrayidx138 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom137
  %58 = load %union.rec*, %union.rec** %arrayidx138, align 8
  %cmp139 = icmp eq %union.rec* %58, null
  br i1 %cmp139, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %if.else.136
  %59 = load i32, i32* @zz_size, align 4
  %60 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call142 = call %union.rec* @GetMemory(i32 %59, %struct.FILE_POS* %60)
  store %union.rec* %call142, %union.rec** @zz_hold, align 8
  br label %if.end.152

if.else.143:                                      ; preds = %if.else.136
  %61 = load i32, i32* @zz_size, align 4
  %idxprom144 = sext i32 %61 to i64
  %arrayidx145 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom144
  %62 = load %union.rec*, %union.rec** %arrayidx145, align 8
  store %union.rec* %62, %union.rec** @zz_hold, align 8
  store %union.rec* %62, %union.rec** @zz_hold, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1146 = bitcast %union.rec* %63 to %struct.word_type*
  %olist147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist147, i32 0, i64 0
  %opred149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx148, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred149, align 8
  %65 = load i32, i32* @zz_size, align 4
  %idxprom150 = sext i32 %65 to i64
  %arrayidx151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom150
  store %union.rec* %64, %union.rec** %arrayidx151, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.143, %if.then.141
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.134
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1154 = bitcast %union.rec* %66 to %struct.word_type*
  %ou1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 1
  %os11156 = bitcast %union.FIRST_UNION* %ou1155 to %struct.anon*
  %otype157 = getelementptr inbounds %struct.anon, %struct.anon* %os11156, i32 0, i32 0
  store i8 0, i8* %otype157, align 1
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1158 = bitcast %union.rec* %68 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 1
  %osucc161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc161, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1162 = bitcast %union.rec* %69 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 1
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred165, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %70 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 0
  %osucc169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc169, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1170 = bitcast %union.rec* %71 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 0
  %opred173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred173, align 8
  store %union.rec* %67, %union.rec** @xx_link, align 8
  %72 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %72, %union.rec** @zz_res, align 8
  %73 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %73, %union.rec** @zz_hold, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp174 = icmp eq %union.rec* %74, null
  br i1 %cmp174, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.153
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.208

cond.false:                                       ; preds = %if.end.153
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp176 = icmp eq %union.rec* %76, null
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.false
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.179:                                   ; preds = %cond.false
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1180 = bitcast %union.rec* %78 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 0
  %opred183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred183, align 8
  store %union.rec* %79, %union.rec** @zz_tmp, align 8
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1184 = bitcast %union.rec* %80 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 0
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred187, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %82 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 0
  %opred191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred191, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1192 = bitcast %union.rec* %84 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 0
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %opred195, align 8
  %os1196 = bitcast %union.rec* %85 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 0
  %osucc199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc199, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1200 = bitcast %union.rec* %87 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 0
  %opred203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 0
  store %union.rec* %86, %union.rec** %opred203, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %89 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1204 = bitcast %union.rec* %89 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 0
  %osucc207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc207, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.179, %cond.true.178
  %cond = phi %union.rec* [ %77, %cond.true.178 ], [ %88, %cond.false.179 ]
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.end, %cond.true
  %cond209 = phi %union.rec* [ %75, %cond.true ], [ %cond, %cond.end ]
  %90 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %90, %union.rec** @zz_res, align 8
  %91 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp210 = icmp eq %union.rec* %92, null
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.end.208
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.248

cond.false.213:                                   ; preds = %cond.end.208
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp214 = icmp eq %union.rec* %94, null
  br i1 %cmp214, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %cond.false.213
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.246

cond.false.217:                                   ; preds = %cond.false.213
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1218 = bitcast %union.rec* %96 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred221, align 8
  store %union.rec* %97, %union.rec** @zz_tmp, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1222 = bitcast %union.rec* %98 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 1
  %opred225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred225, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1226 = bitcast %union.rec* %100 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred229, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1230 = bitcast %union.rec* %102 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 1
  %opred233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred233, align 8
  %os1234 = bitcast %union.rec* %103 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 1
  %osucc237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 1
  store %union.rec* %101, %union.rec** %osucc237, align 8
  %104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1238 = bitcast %union.rec* %105 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 1
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred241, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1242 = bitcast %union.rec* %107 to %struct.word_type*
  %olist243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist243, i32 0, i64 1
  %osucc245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx244, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc245, align 8
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.217, %cond.true.216
  %cond247 = phi %union.rec* [ %95, %cond.true.216 ], [ %106, %cond.false.217 ]
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.246, %cond.true.212
  %cond249 = phi %union.rec* [ %93, %cond.true.212 ], [ %cond247, %cond.end.246 ]
  %108 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2250 = bitcast %union.rec* %108 to %struct.closure_type*
  %oactual251 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2250, i32 0, i32 5
  %109 = load %union.rec*, %union.rec** %oactual251, align 8
  store %union.rec* %109, %union.rec** %dest, align 8
  %110 = load %union.rec*, %union.rec** %dest, align 8
  %call252 = call %union.rec* @GetEnv(%union.rec* %110)
  store %union.rec* %call252, %union.rec** %env, align 8
  %111 = load %union.rec*, %union.rec** %hd, align 8
  %112 = load %union.rec*, %union.rec** %env, align 8
  %113 = load %union.rec*, %union.rec** %dest, align 8
  %os1253 = bitcast %union.rec* %113 to %struct.word_type*
  %ou2254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 2
  %os23255 = bitcast %union.SECOND_UNION* %ou2254 to %struct.anon.2*
  %othreaded = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23255, i32 0, i32 2
  %bf.load256 = load i16, i16* %othreaded, align 2
  %bf.lshr257 = lshr i16 %bf.load256, 2
  %bf.clear258 = and i16 %bf.lshr257, 1
  %bf.cast259 = zext i16 %bf.clear258 to i32
  %114 = load %union.rec*, %union.rec** %dest, align 8
  %os2260 = bitcast %union.rec* %114 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2260, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %115 = load i32, i32* @itop, align 4
  %idxprom261 = sext i32 %115 to i64
  %arrayidx262 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom261
  call void @SizeGalley(%union.rec* %111, %union.rec* %112, i32 1, i32 %bf.cast259, i32 0, i32 1, %struct.STYLE* %osave_style, %struct.CONSTRAINT* %arrayidx262, %union.rec* null, %union.rec** %nothing, %union.rec** %recs, %union.rec** %inners, %union.rec* null)
  %116 = load %union.rec*, %union.rec** %recs, align 8
  %cmp263 = icmp ne %union.rec* %116, null
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %cond.end.248
  %117 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %117)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %cond.end.248
  %118 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1267 = bitcast %union.rec* %118 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 1
  %osucc270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 1
  %119 = load %union.rec*, %union.rec** %osucc270, align 8
  %os1271 = bitcast %union.rec* %119 to %struct.word_type*
  %olist272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist272, i32 0, i64 0
  %opred274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx273, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred274, align 8
  store %union.rec* %120, %union.rec** %start_search, align 8
  %121 = load %union.rec*, %union.rec** %dest, align 8
  %122 = load %union.rec*, %union.rec** %hd, align 8
  %os1275 = bitcast %union.rec* %122 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %123 = load i32, i32* %arrayidx276, align 4
  %124 = load %union.rec*, %union.rec** %hd, align 8
  %os1277 = bitcast %union.rec* %124 to %struct.word_type*
  %ou3278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 3
  %os31279 = bitcast %union.THIRD_UNION* %ou3278 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31279, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %125 = load i32, i32* %arrayidx280, align 4
  call void @AdjustSize(%union.rec* %121, i32 %123, i32 %125, i32 0)
  %126 = load %union.rec*, %union.rec** %hd, align 8
  %127 = load %union.rec*, %union.rec** %hd, align 8
  %128 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %126, %union.rec* %127, %union.rec* %128, i32 0)
  %129 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %129, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.394, %if.end.266
  %130 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1281 = bitcast %union.rec* %130 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 1
  %osucc284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 1
  %131 = load %union.rec*, %union.rec** %osucc284, align 8
  %132 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp285 = icmp ne %union.rec* %131, %132
  br i1 %cmp285, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %133 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1287 = bitcast %union.rec* %133 to %struct.word_type*
  %olist288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist288, i32 0, i64 1
  %osucc290 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx289, i32 0, i32 1
  %134 = load %union.rec*, %union.rec** %osucc290, align 8
  store %union.rec* %134, %union.rec** @xx_link, align 8
  %135 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %135, %union.rec** @zz_hold, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1291 = bitcast %union.rec* %136 to %struct.word_type*
  %olist292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1291, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist292, i32 0, i64 1
  %osucc294 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx293, i32 0, i32 1
  %137 = load %union.rec*, %union.rec** %osucc294, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp295 = icmp eq %union.rec* %137, %138
  br i1 %cmp295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %while.body
  br label %cond.end.327

cond.false.298:                                   ; preds = %while.body
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1299 = bitcast %union.rec* %139 to %struct.word_type*
  %olist300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist300, i32 0, i64 1
  %osucc302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx301, i32 0, i32 1
  %140 = load %union.rec*, %union.rec** %osucc302, align 8
  store %union.rec* %140, %union.rec** @zz_res, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1303 = bitcast %union.rec* %141 to %struct.word_type*
  %olist304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist304, i32 0, i64 1
  %opred306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx305, i32 0, i32 0
  %142 = load %union.rec*, %union.rec** %opred306, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1307 = bitcast %union.rec* %143 to %struct.word_type*
  %olist308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1307, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist308, i32 0, i64 1
  %opred310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx309, i32 0, i32 0
  store %union.rec* %142, %union.rec** %opred310, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1311 = bitcast %union.rec* %145 to %struct.word_type*
  %olist312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 0
  %arrayidx313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist312, i32 0, i64 1
  %opred314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx313, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %opred314, align 8
  %os1315 = bitcast %union.rec* %146 to %struct.word_type*
  %olist316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1315, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist316, i32 0, i64 1
  %osucc318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx317, i32 0, i32 1
  store %union.rec* %144, %union.rec** %osucc318, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1319 = bitcast %union.rec* %148 to %struct.word_type*
  %olist320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 0
  %arrayidx321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist320, i32 0, i64 1
  %osucc322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx321, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc322, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1323 = bitcast %union.rec* %149 to %struct.word_type*
  %olist324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist324, i32 0, i64 1
  %opred326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx325, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred326, align 8
  %150 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.298, %cond.true.297
  %cond328 = phi %union.rec* [ null, %cond.true.297 ], [ %150, %cond.false.298 ]
  %151 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %151, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1329 = bitcast %union.rec* %152 to %struct.word_type*
  %olist330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist330, i32 0, i64 0
  %osucc332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx331, i32 0, i32 1
  %153 = load %union.rec*, %union.rec** %osucc332, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp333 = icmp eq %union.rec* %153, %154
  br i1 %cmp333, label %cond.true.335, label %cond.false.336

cond.true.335:                                    ; preds = %cond.end.327
  br label %cond.end.365

cond.false.336:                                   ; preds = %cond.end.327
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1337 = bitcast %union.rec* %155 to %struct.word_type*
  %olist338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 0
  %arrayidx339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist338, i32 0, i64 0
  %osucc340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx339, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %osucc340, align 8
  store %union.rec* %156, %union.rec** @zz_res, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1341 = bitcast %union.rec* %157 to %struct.word_type*
  %olist342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1341, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist342, i32 0, i64 0
  %opred344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx343, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %opred344, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1345 = bitcast %union.rec* %159 to %struct.word_type*
  %olist346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist346, i32 0, i64 0
  %opred348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx347, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred348, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1349 = bitcast %union.rec* %161 to %struct.word_type*
  %olist350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1349, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist350, i32 0, i64 0
  %opred352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx351, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred352, align 8
  %os1353 = bitcast %union.rec* %162 to %struct.word_type*
  %olist354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1353, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist354, i32 0, i64 0
  %osucc356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx355, i32 0, i32 1
  store %union.rec* %160, %union.rec** %osucc356, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1357 = bitcast %union.rec* %164 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 0
  %osucc360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 1
  store %union.rec* %163, %union.rec** %osucc360, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1361 = bitcast %union.rec* %165 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 0
  %opred364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 0
  store %union.rec* %163, %union.rec** %opred364, align 8
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.336, %cond.true.335
  %cond366 = phi %union.rec* [ null, %cond.true.335 ], [ %166, %cond.false.336 ]
  %167 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %168, %union.rec** @zz_hold, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1367 = bitcast %union.rec* %169 to %struct.word_type*
  %ou1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 1
  %os11369 = bitcast %union.FIRST_UNION* %ou1368 to %struct.anon*
  %otype370 = getelementptr inbounds %struct.anon, %struct.anon* %os11369, i32 0, i32 0
  %170 = load i8, i8* %otype370, align 1
  %conv371 = zext i8 %170 to i32
  %cmp372 = icmp eq i32 %conv371, 11
  br i1 %cmp372, label %cond.true.381, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.365
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1374 = bitcast %union.rec* %171 to %struct.word_type*
  %ou1375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 1
  %os11376 = bitcast %union.FIRST_UNION* %ou1375 to %struct.anon*
  %otype377 = getelementptr inbounds %struct.anon, %struct.anon* %os11376, i32 0, i32 0
  %172 = load i8, i8* %otype377, align 1
  %conv378 = zext i8 %172 to i32
  %cmp379 = icmp eq i32 %conv378, 12
  br i1 %cmp379, label %cond.true.381, label %cond.false.386

cond.true.381:                                    ; preds = %lor.lhs.false, %cond.end.365
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1382 = bitcast %union.rec* %173 to %struct.word_type*
  %ou1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 1
  %os11384 = bitcast %union.FIRST_UNION* %ou1383 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11384, i32 0, i32 1
  %174 = load i8, i8* %orec_size, align 1
  %conv385 = zext i8 %174 to i32
  br label %cond.end.394

cond.false.386:                                   ; preds = %lor.lhs.false
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1387 = bitcast %union.rec* %175 to %struct.word_type*
  %ou1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1387, i32 0, i32 1
  %os11389 = bitcast %union.FIRST_UNION* %ou1388 to %struct.anon*
  %otype390 = getelementptr inbounds %struct.anon, %struct.anon* %os11389, i32 0, i32 0
  %176 = load i8, i8* %otype390, align 1
  %idxprom391 = zext i8 %176 to i64
  %arrayidx392 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom391
  %177 = load i8, i8* %arrayidx392, align 1
  %conv393 = zext i8 %177 to i32
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.386, %cond.true.381
  %cond395 = phi i32 [ %conv385, %cond.true.381 ], [ %conv393, %cond.false.386 ]
  store i32 %cond395, i32* @zz_size, align 4
  %178 = load i32, i32* @zz_size, align 4
  %idxprom396 = sext i32 %178 to i64
  %arrayidx397 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom396
  %179 = load %union.rec*, %union.rec** %arrayidx397, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1398 = bitcast %union.rec* %180 to %struct.word_type*
  %olist399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1398, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist399, i32 0, i64 0
  %opred401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx400, i32 0, i32 0
  store %union.rec* %179, %union.rec** %opred401, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %182 = load i32, i32* @zz_size, align 4
  %idxprom402 = sext i32 %182 to i64
  %arrayidx403 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom402
  store %union.rec* %181, %union.rec** %arrayidx403, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.404

while.cond.404:                                   ; preds = %cond.end.521, %while.end
  %183 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1405 = bitcast %union.rec* %183 to %struct.word_type*
  %olist406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1405, i32 0, i32 0
  %arrayidx407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist406, i32 0, i64 0
  %osucc408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx407, i32 0, i32 1
  %184 = load %union.rec*, %union.rec** %osucc408, align 8
  %185 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp409 = icmp ne %union.rec* %184, %185
  br i1 %cmp409, label %while.body.411, label %while.end.531

while.body.411:                                   ; preds = %while.cond.404
  %186 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1412 = bitcast %union.rec* %186 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 0
  %osucc415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 1
  %187 = load %union.rec*, %union.rec** %osucc415, align 8
  store %union.rec* %187, %union.rec** @xx_link, align 8
  %188 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %188, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1416 = bitcast %union.rec* %189 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 1
  %osucc419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 1
  %190 = load %union.rec*, %union.rec** %osucc419, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp420 = icmp eq %union.rec* %190, %191
  br i1 %cmp420, label %cond.true.422, label %cond.false.423

cond.true.422:                                    ; preds = %while.body.411
  br label %cond.end.452

cond.false.423:                                   ; preds = %while.body.411
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1424 = bitcast %union.rec* %192 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 1
  %osucc427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 1
  %193 = load %union.rec*, %union.rec** %osucc427, align 8
  store %union.rec* %193, %union.rec** @zz_res, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1428 = bitcast %union.rec* %194 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 1
  %opred431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %opred431, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1432 = bitcast %union.rec* %196 to %struct.word_type*
  %olist433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist433, i32 0, i64 1
  %opred435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx434, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred435, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1436 = bitcast %union.rec* %198 to %struct.word_type*
  %olist437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1436, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist437, i32 0, i64 1
  %opred439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx438, i32 0, i32 0
  %199 = load %union.rec*, %union.rec** %opred439, align 8
  %os1440 = bitcast %union.rec* %199 to %struct.word_type*
  %olist441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist441, i32 0, i64 1
  %osucc443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx442, i32 0, i32 1
  store %union.rec* %197, %union.rec** %osucc443, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1444 = bitcast %union.rec* %201 to %struct.word_type*
  %olist445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1444, i32 0, i32 0
  %arrayidx446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist445, i32 0, i64 1
  %osucc447 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx446, i32 0, i32 1
  store %union.rec* %200, %union.rec** %osucc447, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1448 = bitcast %union.rec* %202 to %struct.word_type*
  %olist449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1448, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist449, i32 0, i64 1
  %opred451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx450, i32 0, i32 0
  store %union.rec* %200, %union.rec** %opred451, align 8
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.423, %cond.true.422
  %cond453 = phi %union.rec* [ null, %cond.true.422 ], [ %203, %cond.false.423 ]
  %204 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %204, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1454 = bitcast %union.rec* %205 to %struct.word_type*
  %olist455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1454, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist455, i32 0, i64 0
  %osucc457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx456, i32 0, i32 1
  %206 = load %union.rec*, %union.rec** %osucc457, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp458 = icmp eq %union.rec* %206, %207
  br i1 %cmp458, label %cond.true.460, label %cond.false.461

cond.true.460:                                    ; preds = %cond.end.452
  br label %cond.end.490

cond.false.461:                                   ; preds = %cond.end.452
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1462 = bitcast %union.rec* %208 to %struct.word_type*
  %olist463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1462, i32 0, i32 0
  %arrayidx464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist463, i32 0, i64 0
  %osucc465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx464, i32 0, i32 1
  %209 = load %union.rec*, %union.rec** %osucc465, align 8
  store %union.rec* %209, %union.rec** @zz_res, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1466 = bitcast %union.rec* %210 to %struct.word_type*
  %olist467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist467, i32 0, i64 0
  %opred469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx468, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %opred469, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1470 = bitcast %union.rec* %212 to %struct.word_type*
  %olist471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1470, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist471, i32 0, i64 0
  %opred473 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx472, i32 0, i32 0
  store %union.rec* %211, %union.rec** %opred473, align 8
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1474 = bitcast %union.rec* %214 to %struct.word_type*
  %olist475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1474, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist475, i32 0, i64 0
  %opred477 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx476, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred477, align 8
  %os1478 = bitcast %union.rec* %215 to %struct.word_type*
  %olist479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1478, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist479, i32 0, i64 0
  %osucc481 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx480, i32 0, i32 1
  store %union.rec* %213, %union.rec** %osucc481, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1482 = bitcast %union.rec* %217 to %struct.word_type*
  %olist483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1482, i32 0, i32 0
  %arrayidx484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist483, i32 0, i64 0
  %osucc485 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx484, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc485, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1486 = bitcast %union.rec* %218 to %struct.word_type*
  %olist487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1486, i32 0, i32 0
  %arrayidx488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist487, i32 0, i64 0
  %opred489 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx488, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred489, align 8
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.false.461, %cond.true.460
  %cond491 = phi %union.rec* [ null, %cond.true.460 ], [ %219, %cond.false.461 ]
  %220 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %220, %union.rec** @zz_hold, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1492 = bitcast %union.rec* %222 to %struct.word_type*
  %ou1493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 1
  %os11494 = bitcast %union.FIRST_UNION* %ou1493 to %struct.anon*
  %otype495 = getelementptr inbounds %struct.anon, %struct.anon* %os11494, i32 0, i32 0
  %223 = load i8, i8* %otype495, align 1
  %conv496 = zext i8 %223 to i32
  %cmp497 = icmp eq i32 %conv496, 11
  br i1 %cmp497, label %cond.true.507, label %lor.lhs.false.499

lor.lhs.false.499:                                ; preds = %cond.end.490
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1500 = bitcast %union.rec* %224 to %struct.word_type*
  %ou1501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 1
  %os11502 = bitcast %union.FIRST_UNION* %ou1501 to %struct.anon*
  %otype503 = getelementptr inbounds %struct.anon, %struct.anon* %os11502, i32 0, i32 0
  %225 = load i8, i8* %otype503, align 1
  %conv504 = zext i8 %225 to i32
  %cmp505 = icmp eq i32 %conv504, 12
  br i1 %cmp505, label %cond.true.507, label %cond.false.513

cond.true.507:                                    ; preds = %lor.lhs.false.499, %cond.end.490
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1508 = bitcast %union.rec* %226 to %struct.word_type*
  %ou1509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 1
  %os11510 = bitcast %union.FIRST_UNION* %ou1509 to %struct.anon*
  %orec_size511 = getelementptr inbounds %struct.anon, %struct.anon* %os11510, i32 0, i32 1
  %227 = load i8, i8* %orec_size511, align 1
  %conv512 = zext i8 %227 to i32
  br label %cond.end.521

cond.false.513:                                   ; preds = %lor.lhs.false.499
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1514 = bitcast %union.rec* %228 to %struct.word_type*
  %ou1515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1514, i32 0, i32 1
  %os11516 = bitcast %union.FIRST_UNION* %ou1515 to %struct.anon*
  %otype517 = getelementptr inbounds %struct.anon, %struct.anon* %os11516, i32 0, i32 0
  %229 = load i8, i8* %otype517, align 1
  %idxprom518 = zext i8 %229 to i64
  %arrayidx519 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom518
  %230 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %230 to i32
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.513, %cond.true.507
  %cond522 = phi i32 [ %conv512, %cond.true.507 ], [ %conv520, %cond.false.513 ]
  store i32 %cond522, i32* @zz_size, align 4
  %231 = load i32, i32* @zz_size, align 4
  %idxprom523 = sext i32 %231 to i64
  %arrayidx524 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom523
  %232 = load %union.rec*, %union.rec** %arrayidx524, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1525 = bitcast %union.rec* %233 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 0
  %opred528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 0
  store %union.rec* %232, %union.rec** %opred528, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = load i32, i32* @zz_size, align 4
  %idxprom529 = sext i32 %235 to i64
  %arrayidx530 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom529
  store %union.rec* %234, %union.rec** %arrayidx530, align 8
  br label %while.cond.404

while.end.531:                                    ; preds = %while.cond.404
  %236 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %237, %union.rec** @zz_hold, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %238 to %struct.word_type*
  %ou1533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 1
  %os11534 = bitcast %union.FIRST_UNION* %ou1533 to %struct.anon*
  %otype535 = getelementptr inbounds %struct.anon, %struct.anon* %os11534, i32 0, i32 0
  %239 = load i8, i8* %otype535, align 1
  %conv536 = zext i8 %239 to i32
  %cmp537 = icmp eq i32 %conv536, 11
  br i1 %cmp537, label %cond.true.547, label %lor.lhs.false.539

lor.lhs.false.539:                                ; preds = %while.end.531
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %240 to %struct.word_type*
  %ou1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 1
  %os11542 = bitcast %union.FIRST_UNION* %ou1541 to %struct.anon*
  %otype543 = getelementptr inbounds %struct.anon, %struct.anon* %os11542, i32 0, i32 0
  %241 = load i8, i8* %otype543, align 1
  %conv544 = zext i8 %241 to i32
  %cmp545 = icmp eq i32 %conv544, 12
  br i1 %cmp545, label %cond.true.547, label %cond.false.553

cond.true.547:                                    ; preds = %lor.lhs.false.539, %while.end.531
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1548 = bitcast %union.rec* %242 to %struct.word_type*
  %ou1549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 1
  %os11550 = bitcast %union.FIRST_UNION* %ou1549 to %struct.anon*
  %orec_size551 = getelementptr inbounds %struct.anon, %struct.anon* %os11550, i32 0, i32 1
  %243 = load i8, i8* %orec_size551, align 1
  %conv552 = zext i8 %243 to i32
  br label %cond.end.561

cond.false.553:                                   ; preds = %lor.lhs.false.539
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1554 = bitcast %union.rec* %244 to %struct.word_type*
  %ou1555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1554, i32 0, i32 1
  %os11556 = bitcast %union.FIRST_UNION* %ou1555 to %struct.anon*
  %otype557 = getelementptr inbounds %struct.anon, %struct.anon* %os11556, i32 0, i32 0
  %245 = load i8, i8* %otype557, align 1
  %idxprom558 = zext i8 %245 to i64
  %arrayidx559 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom558
  %246 = load i8, i8* %arrayidx559, align 1
  %conv560 = zext i8 %246 to i32
  br label %cond.end.561

cond.end.561:                                     ; preds = %cond.false.553, %cond.true.547
  %cond562 = phi i32 [ %conv552, %cond.true.547 ], [ %conv560, %cond.false.553 ]
  store i32 %cond562, i32* @zz_size, align 4
  %247 = load i32, i32* @zz_size, align 4
  %idxprom563 = sext i32 %247 to i64
  %arrayidx564 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom563
  %248 = load %union.rec*, %union.rec** %arrayidx564, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %249 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 0
  %opred568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred568, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = load i32, i32* @zz_size, align 4
  %idxprom569 = sext i32 %251 to i64
  %arrayidx570 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom569
  store %union.rec* %250, %union.rec** %arrayidx570, align 8
  %252 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1571 = bitcast %union.rec* %252 to %struct.word_type*
  %olist572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist572, i32 0, i64 0
  %osucc574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx573, i32 0, i32 1
  %253 = load %union.rec*, %union.rec** %osucc574, align 8
  %254 = load %union.rec*, %union.rec** %dest_index, align 8
  %cmp575 = icmp ne %union.rec* %253, %254
  br i1 %cmp575, label %if.then.577, label %if.end.908

if.then.577:                                      ; preds = %cond.end.561
  %255 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv578 = zext i8 %255 to i32
  store i32 %conv578, i32* @zz_size, align 4
  %conv579 = sext i32 %conv578 to i64
  %cmp580 = icmp uge i64 %conv579, 265
  br i1 %cmp580, label %if.then.582, label %if.else.584

if.then.582:                                      ; preds = %if.then.577
  %256 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call583 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %256)
  br label %if.end.601

if.else.584:                                      ; preds = %if.then.577
  %257 = load i32, i32* @zz_size, align 4
  %idxprom585 = sext i32 %257 to i64
  %arrayidx586 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom585
  %258 = load %union.rec*, %union.rec** %arrayidx586, align 8
  %cmp587 = icmp eq %union.rec* %258, null
  br i1 %cmp587, label %if.then.589, label %if.else.591

if.then.589:                                      ; preds = %if.else.584
  %259 = load i32, i32* @zz_size, align 4
  %260 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call590 = call %union.rec* @GetMemory(i32 %259, %struct.FILE_POS* %260)
  store %union.rec* %call590, %union.rec** @zz_hold, align 8
  br label %if.end.600

if.else.591:                                      ; preds = %if.else.584
  %261 = load i32, i32* @zz_size, align 4
  %idxprom592 = sext i32 %261 to i64
  %arrayidx593 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom592
  %262 = load %union.rec*, %union.rec** %arrayidx593, align 8
  store %union.rec* %262, %union.rec** @zz_hold, align 8
  store %union.rec* %262, %union.rec** @zz_hold, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1594 = bitcast %union.rec* %263 to %struct.word_type*
  %olist595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1594, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist595, i32 0, i64 0
  %opred597 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx596, i32 0, i32 0
  %264 = load %union.rec*, %union.rec** %opred597, align 8
  %265 = load i32, i32* @zz_size, align 4
  %idxprom598 = sext i32 %265 to i64
  %arrayidx599 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom598
  store %union.rec* %264, %union.rec** %arrayidx599, align 8
  br label %if.end.600

if.end.600:                                       ; preds = %if.else.591, %if.then.589
  br label %if.end.601

if.end.601:                                       ; preds = %if.end.600, %if.then.582
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1602 = bitcast %union.rec* %266 to %struct.word_type*
  %ou1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 1
  %os11604 = bitcast %union.FIRST_UNION* %ou1603 to %struct.anon*
  %otype605 = getelementptr inbounds %struct.anon, %struct.anon* %os11604, i32 0, i32 0
  store i8 17, i8* %otype605, align 1
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1606 = bitcast %union.rec* %268 to %struct.word_type*
  %olist607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist607, i32 0, i64 1
  %osucc609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx608, i32 0, i32 1
  store %union.rec* %267, %union.rec** %osucc609, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1610 = bitcast %union.rec* %269 to %struct.word_type*
  %olist611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1610, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist611, i32 0, i64 1
  %opred613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx612, i32 0, i32 0
  store %union.rec* %267, %union.rec** %opred613, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1614 = bitcast %union.rec* %270 to %struct.word_type*
  %olist615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1614, i32 0, i32 0
  %arrayidx616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist615, i32 0, i64 0
  %osucc617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx616, i32 0, i32 1
  store %union.rec* %267, %union.rec** %osucc617, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1618 = bitcast %union.rec* %271 to %struct.word_type*
  %olist619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1618, i32 0, i32 0
  %arrayidx620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist619, i32 0, i64 0
  %opred621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx620, i32 0, i32 0
  store %union.rec* %267, %union.rec** %opred621, align 8
  store %union.rec* %267, %union.rec** %tinners, align 8
  br label %while.cond.622

while.cond.622:                                   ; preds = %cond.end.905, %if.end.601
  %272 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1623 = bitcast %union.rec* %272 to %struct.word_type*
  %olist624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1623, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist624, i32 0, i64 0
  %osucc626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx625, i32 0, i32 1
  %273 = load %union.rec*, %union.rec** %osucc626, align 8
  %274 = load %union.rec*, %union.rec** %dest_index, align 8
  %cmp627 = icmp ne %union.rec* %273, %274
  br i1 %cmp627, label %while.body.629, label %while.end.907

while.body.629:                                   ; preds = %while.cond.622
  %275 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1630 = bitcast %union.rec* %275 to %struct.word_type*
  %olist631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1630, i32 0, i32 0
  %arrayidx632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist631, i32 0, i64 0
  %osucc633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx632, i32 0, i32 1
  %276 = load %union.rec*, %union.rec** %osucc633, align 8
  %os1634 = bitcast %union.rec* %276 to %struct.word_type*
  %olist635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1634, i32 0, i32 0
  %arrayidx636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist635, i32 0, i64 1
  %opred637 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx636, i32 0, i32 0
  %277 = load %union.rec*, %union.rec** %opred637, align 8
  store %union.rec* %277, %union.rec** %y, align 8
  br label %for.cond.638

for.cond.638:                                     ; preds = %for.inc.647, %while.body.629
  %278 = load %union.rec*, %union.rec** %y, align 8
  %os1639 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 1
  %os11641 = bitcast %union.FIRST_UNION* %ou1640 to %struct.anon*
  %otype642 = getelementptr inbounds %struct.anon, %struct.anon* %os11641, i32 0, i32 0
  %279 = load i8, i8* %otype642, align 1
  %conv643 = zext i8 %279 to i32
  %cmp644 = icmp eq i32 %conv643, 0
  br i1 %cmp644, label %for.body.646, label %for.end.652

for.body.646:                                     ; preds = %for.cond.638
  br label %for.inc.647

for.inc.647:                                      ; preds = %for.body.646
  %280 = load %union.rec*, %union.rec** %y, align 8
  %os1648 = bitcast %union.rec* %280 to %struct.word_type*
  %olist649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 0
  %arrayidx650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist649, i32 0, i64 1
  %opred651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx650, i32 0, i32 0
  %281 = load %union.rec*, %union.rec** %opred651, align 8
  store %union.rec* %281, %union.rec** %y, align 8
  br label %for.cond.638

for.end.652:                                      ; preds = %for.cond.638
  %282 = load %union.rec*, %union.rec** %y, align 8
  %os1653 = bitcast %union.rec* %282 to %struct.word_type*
  %ou1654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1653, i32 0, i32 1
  %os11655 = bitcast %union.FIRST_UNION* %ou1654 to %struct.anon*
  %otype656 = getelementptr inbounds %struct.anon, %struct.anon* %os11655, i32 0, i32 0
  %283 = load i8, i8* %otype656, align 1
  %conv657 = zext i8 %283 to i32
  %cmp658 = icmp eq i32 %conv657, 8
  br i1 %cmp658, label %if.end.662, label %if.then.660

if.then.660:                                      ; preds = %for.end.652
  %284 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call661 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.662

if.end.662:                                       ; preds = %if.then.660, %for.end.652
  %285 = load %union.rec*, %union.rec** %y, align 8
  %os2a663 = bitcast %union.rec* %285 to %struct.head_type*
  %oopt_components664 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a663, i32 0, i32 8
  %286 = load %union.rec*, %union.rec** %oopt_components664, align 8
  %cmp665 = icmp ne %union.rec* %286, null
  br i1 %cmp665, label %if.then.667, label %if.end.673

if.then.667:                                      ; preds = %if.end.662
  %287 = load %union.rec*, %union.rec** %y, align 8
  %os2a668 = bitcast %union.rec* %287 to %struct.head_type*
  %oopt_components669 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a668, i32 0, i32 8
  %288 = load %union.rec*, %union.rec** %oopt_components669, align 8
  %call670 = call i32 @DisposeObject(%union.rec* %288)
  %289 = load %union.rec*, %union.rec** %y, align 8
  %os2a671 = bitcast %union.rec* %289 to %struct.head_type*
  %oopt_components672 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a671, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components672, align 8
  br label %if.end.673

if.end.673:                                       ; preds = %if.then.667, %if.end.662
  %290 = load %union.rec*, %union.rec** %y, align 8
  call void @DetachGalley(%union.rec* %290)
  %291 = load %union.rec*, %union.rec** %y, align 8
  %os1674 = bitcast %union.rec* %291 to %struct.word_type*
  %olist675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1674, i32 0, i32 0
  %arrayidx676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist675, i32 0, i64 1
  %osucc677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx676, i32 0, i32 1
  %292 = load %union.rec*, %union.rec** %osucc677, align 8
  %os1678 = bitcast %union.rec* %292 to %struct.word_type*
  %olist679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1678, i32 0, i32 0
  %arrayidx680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist679, i32 0, i64 0
  %opred681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx680, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %opred681, align 8
  store %union.rec* %293, %union.rec** %index, align 8
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.691, %if.end.673
  %294 = load %union.rec*, %union.rec** %index, align 8
  %os1683 = bitcast %union.rec* %294 to %struct.word_type*
  %ou1684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1683, i32 0, i32 1
  %os11685 = bitcast %union.FIRST_UNION* %ou1684 to %struct.anon*
  %otype686 = getelementptr inbounds %struct.anon, %struct.anon* %os11685, i32 0, i32 0
  %295 = load i8, i8* %otype686, align 1
  %conv687 = zext i8 %295 to i32
  %cmp688 = icmp eq i32 %conv687, 0
  br i1 %cmp688, label %for.body.690, label %for.end.696

for.body.690:                                     ; preds = %for.cond.682
  br label %for.inc.691

for.inc.691:                                      ; preds = %for.body.690
  %296 = load %union.rec*, %union.rec** %index, align 8
  %os1692 = bitcast %union.rec* %296 to %struct.word_type*
  %olist693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1692, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist693, i32 0, i64 0
  %opred695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx694, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred695, align 8
  store %union.rec* %297, %union.rec** %index, align 8
  br label %for.cond.682

for.end.696:                                      ; preds = %for.cond.682
  %298 = load %union.rec*, %union.rec** %index, align 8
  %os1697 = bitcast %union.rec* %298 to %struct.word_type*
  %olist698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist698, i32 0, i64 1
  %osucc700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx699, i32 0, i32 1
  %299 = load %union.rec*, %union.rec** %osucc700, align 8
  store %union.rec* %299, %union.rec** @xx_link, align 8
  %300 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1701 = bitcast %union.rec* %301 to %struct.word_type*
  %olist702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist702, i32 0, i64 0
  %osucc704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx703, i32 0, i32 1
  %302 = load %union.rec*, %union.rec** %osucc704, align 8
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp705 = icmp eq %union.rec* %302, %303
  br i1 %cmp705, label %cond.true.707, label %cond.false.708

cond.true.707:                                    ; preds = %for.end.696
  br label %cond.end.737

cond.false.708:                                   ; preds = %for.end.696
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1709 = bitcast %union.rec* %304 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 0
  %osucc712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 1
  %305 = load %union.rec*, %union.rec** %osucc712, align 8
  store %union.rec* %305, %union.rec** @zz_res, align 8
  %306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1713 = bitcast %union.rec* %306 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 0
  %opred716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %opred716, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1717 = bitcast %union.rec* %308 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 0
  %opred720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 0
  store %union.rec* %307, %union.rec** %opred720, align 8
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1721 = bitcast %union.rec* %310 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 0
  %opred724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 0
  %311 = load %union.rec*, %union.rec** %opred724, align 8
  %os1725 = bitcast %union.rec* %311 to %struct.word_type*
  %olist726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 0
  %arrayidx727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist726, i32 0, i64 0
  %osucc728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx727, i32 0, i32 1
  store %union.rec* %309, %union.rec** %osucc728, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1729 = bitcast %union.rec* %313 to %struct.word_type*
  %olist730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist730, i32 0, i64 0
  %osucc732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx731, i32 0, i32 1
  store %union.rec* %312, %union.rec** %osucc732, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %314 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 0
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  store %union.rec* %312, %union.rec** %opred736, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.737

cond.end.737:                                     ; preds = %cond.false.708, %cond.true.707
  %cond738 = phi %union.rec* [ null, %cond.true.707 ], [ %315, %cond.false.708 ]
  %316 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %316, %union.rec** @zz_res, align 8
  %317 = load %union.rec*, %union.rec** %start_search, align 8
  %os1739 = bitcast %union.rec* %317 to %struct.word_type*
  %olist740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1739, i32 0, i32 0
  %arrayidx741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist740, i32 0, i64 0
  %osucc742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx741, i32 0, i32 1
  %318 = load %union.rec*, %union.rec** %osucc742, align 8
  store %union.rec* %318, %union.rec** @zz_hold, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp743 = icmp eq %union.rec* %319, null
  br i1 %cmp743, label %cond.true.745, label %cond.false.746

cond.true.745:                                    ; preds = %cond.end.737
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.781

cond.false.746:                                   ; preds = %cond.end.737
  %321 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp747 = icmp eq %union.rec* %321, null
  br i1 %cmp747, label %cond.true.749, label %cond.false.750

cond.true.749:                                    ; preds = %cond.false.746
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.779

cond.false.750:                                   ; preds = %cond.false.746
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1751 = bitcast %union.rec* %323 to %struct.word_type*
  %olist752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1751, i32 0, i32 0
  %arrayidx753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist752, i32 0, i64 0
  %opred754 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx753, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred754, align 8
  store %union.rec* %324, %union.rec** @zz_tmp, align 8
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1755 = bitcast %union.rec* %325 to %struct.word_type*
  %olist756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1755, i32 0, i32 0
  %arrayidx757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist756, i32 0, i64 0
  %opred758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx757, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %opred758, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1759 = bitcast %union.rec* %327 to %struct.word_type*
  %olist760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1759, i32 0, i32 0
  %arrayidx761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist760, i32 0, i64 0
  %opred762 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx761, i32 0, i32 0
  store %union.rec* %326, %union.rec** %opred762, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1763 = bitcast %union.rec* %329 to %struct.word_type*
  %olist764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1763, i32 0, i32 0
  %arrayidx765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist764, i32 0, i64 0
  %opred766 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx765, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %opred766, align 8
  %os1767 = bitcast %union.rec* %330 to %struct.word_type*
  %olist768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1767, i32 0, i32 0
  %arrayidx769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist768, i32 0, i64 0
  %osucc770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx769, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc770, align 8
  %331 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %332 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1771 = bitcast %union.rec* %332 to %struct.word_type*
  %olist772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1771, i32 0, i32 0
  %arrayidx773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist772, i32 0, i64 0
  %opred774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx773, i32 0, i32 0
  store %union.rec* %331, %union.rec** %opred774, align 8
  %333 = load %union.rec*, %union.rec** @zz_res, align 8
  %334 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1775 = bitcast %union.rec* %334 to %struct.word_type*
  %olist776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1775, i32 0, i32 0
  %arrayidx777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist776, i32 0, i64 0
  %osucc778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx777, i32 0, i32 1
  store %union.rec* %333, %union.rec** %osucc778, align 8
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.750, %cond.true.749
  %cond780 = phi %union.rec* [ %322, %cond.true.749 ], [ %333, %cond.false.750 ]
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.end.779, %cond.true.745
  %cond782 = phi %union.rec* [ %320, %cond.true.745 ], [ %cond780, %cond.end.779 ]
  %335 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv783 = zext i8 %335 to i32
  store i32 %conv783, i32* @zz_size, align 4
  %conv784 = sext i32 %conv783 to i64
  %cmp785 = icmp uge i64 %conv784, 265
  br i1 %cmp785, label %if.then.787, label %if.else.789

if.then.787:                                      ; preds = %cond.end.781
  %336 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call788 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %336)
  br label %if.end.806

if.else.789:                                      ; preds = %cond.end.781
  %337 = load i32, i32* @zz_size, align 4
  %idxprom790 = sext i32 %337 to i64
  %arrayidx791 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom790
  %338 = load %union.rec*, %union.rec** %arrayidx791, align 8
  %cmp792 = icmp eq %union.rec* %338, null
  br i1 %cmp792, label %if.then.794, label %if.else.796

if.then.794:                                      ; preds = %if.else.789
  %339 = load i32, i32* @zz_size, align 4
  %340 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call795 = call %union.rec* @GetMemory(i32 %339, %struct.FILE_POS* %340)
  store %union.rec* %call795, %union.rec** @zz_hold, align 8
  br label %if.end.805

if.else.796:                                      ; preds = %if.else.789
  %341 = load i32, i32* @zz_size, align 4
  %idxprom797 = sext i32 %341 to i64
  %arrayidx798 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom797
  %342 = load %union.rec*, %union.rec** %arrayidx798, align 8
  store %union.rec* %342, %union.rec** @zz_hold, align 8
  store %union.rec* %342, %union.rec** @zz_hold, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1799 = bitcast %union.rec* %343 to %struct.word_type*
  %olist800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1799, i32 0, i32 0
  %arrayidx801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist800, i32 0, i64 0
  %opred802 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx801, i32 0, i32 0
  %344 = load %union.rec*, %union.rec** %opred802, align 8
  %345 = load i32, i32* @zz_size, align 4
  %idxprom803 = sext i32 %345 to i64
  %arrayidx804 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom803
  store %union.rec* %344, %union.rec** %arrayidx804, align 8
  br label %if.end.805

if.end.805:                                       ; preds = %if.else.796, %if.then.794
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %if.then.787
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1807 = bitcast %union.rec* %346 to %struct.word_type*
  %ou1808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1807, i32 0, i32 1
  %os11809 = bitcast %union.FIRST_UNION* %ou1808 to %struct.anon*
  %otype810 = getelementptr inbounds %struct.anon, %struct.anon* %os11809, i32 0, i32 0
  store i8 0, i8* %otype810, align 1
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1811 = bitcast %union.rec* %348 to %struct.word_type*
  %olist812 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1811, i32 0, i32 0
  %arrayidx813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist812, i32 0, i64 1
  %osucc814 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx813, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc814, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1815 = bitcast %union.rec* %349 to %struct.word_type*
  %olist816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1815, i32 0, i32 0
  %arrayidx817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist816, i32 0, i64 1
  %opred818 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx817, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred818, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1819 = bitcast %union.rec* %350 to %struct.word_type*
  %olist820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1819, i32 0, i32 0
  %arrayidx821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist820, i32 0, i64 0
  %osucc822 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx821, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc822, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1823 = bitcast %union.rec* %351 to %struct.word_type*
  %olist824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 0
  %arrayidx825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist824, i32 0, i64 0
  %opred826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx825, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred826, align 8
  store %union.rec* %347, %union.rec** @xx_link, align 8
  %352 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %352, %union.rec** @zz_res, align 8
  %353 = load %union.rec*, %union.rec** %tinners, align 8
  store %union.rec* %353, %union.rec** @zz_hold, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp827 = icmp eq %union.rec* %354, null
  br i1 %cmp827, label %cond.true.829, label %cond.false.830

cond.true.829:                                    ; preds = %if.end.806
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.865

cond.false.830:                                   ; preds = %if.end.806
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp831 = icmp eq %union.rec* %356, null
  br i1 %cmp831, label %cond.true.833, label %cond.false.834

cond.true.833:                                    ; preds = %cond.false.830
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.863

cond.false.834:                                   ; preds = %cond.false.830
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1835 = bitcast %union.rec* %358 to %struct.word_type*
  %olist836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 0
  %arrayidx837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist836, i32 0, i64 0
  %opred838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx837, i32 0, i32 0
  %359 = load %union.rec*, %union.rec** %opred838, align 8
  store %union.rec* %359, %union.rec** @zz_tmp, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1839 = bitcast %union.rec* %360 to %struct.word_type*
  %olist840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1839, i32 0, i32 0
  %arrayidx841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist840, i32 0, i64 0
  %opred842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx841, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %opred842, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1843 = bitcast %union.rec* %362 to %struct.word_type*
  %olist844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1843, i32 0, i32 0
  %arrayidx845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist844, i32 0, i64 0
  %opred846 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx845, i32 0, i32 0
  store %union.rec* %361, %union.rec** %opred846, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1847 = bitcast %union.rec* %364 to %struct.word_type*
  %olist848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 0
  %arrayidx849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist848, i32 0, i64 0
  %opred850 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx849, i32 0, i32 0
  %365 = load %union.rec*, %union.rec** %opred850, align 8
  %os1851 = bitcast %union.rec* %365 to %struct.word_type*
  %olist852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 0
  %arrayidx853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist852, i32 0, i64 0
  %osucc854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx853, i32 0, i32 1
  store %union.rec* %363, %union.rec** %osucc854, align 8
  %366 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1855 = bitcast %union.rec* %367 to %struct.word_type*
  %olist856 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1855, i32 0, i32 0
  %arrayidx857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist856, i32 0, i64 0
  %opred858 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx857, i32 0, i32 0
  store %union.rec* %366, %union.rec** %opred858, align 8
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1859 = bitcast %union.rec* %369 to %struct.word_type*
  %olist860 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1859, i32 0, i32 0
  %arrayidx861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist860, i32 0, i64 0
  %osucc862 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx861, i32 0, i32 1
  store %union.rec* %368, %union.rec** %osucc862, align 8
  br label %cond.end.863

cond.end.863:                                     ; preds = %cond.false.834, %cond.true.833
  %cond864 = phi %union.rec* [ %357, %cond.true.833 ], [ %368, %cond.false.834 ]
  br label %cond.end.865

cond.end.865:                                     ; preds = %cond.end.863, %cond.true.829
  %cond866 = phi %union.rec* [ %355, %cond.true.829 ], [ %cond864, %cond.end.863 ]
  %370 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %370, %union.rec** @zz_res, align 8
  %371 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %371, %union.rec** @zz_hold, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp867 = icmp eq %union.rec* %372, null
  br i1 %cmp867, label %cond.true.869, label %cond.false.870

cond.true.869:                                    ; preds = %cond.end.865
  %373 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.905

cond.false.870:                                   ; preds = %cond.end.865
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp871 = icmp eq %union.rec* %374, null
  br i1 %cmp871, label %cond.true.873, label %cond.false.874

cond.true.873:                                    ; preds = %cond.false.870
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.903

cond.false.874:                                   ; preds = %cond.false.870
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1875 = bitcast %union.rec* %376 to %struct.word_type*
  %olist876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1875, i32 0, i32 0
  %arrayidx877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist876, i32 0, i64 1
  %opred878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx877, i32 0, i32 0
  %377 = load %union.rec*, %union.rec** %opred878, align 8
  store %union.rec* %377, %union.rec** @zz_tmp, align 8
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1879 = bitcast %union.rec* %378 to %struct.word_type*
  %olist880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1879, i32 0, i32 0
  %arrayidx881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist880, i32 0, i64 1
  %opred882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx881, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred882, align 8
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1883 = bitcast %union.rec* %380 to %struct.word_type*
  %olist884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1883, i32 0, i32 0
  %arrayidx885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist884, i32 0, i64 1
  %opred886 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx885, i32 0, i32 0
  store %union.rec* %379, %union.rec** %opred886, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1887 = bitcast %union.rec* %382 to %struct.word_type*
  %olist888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1887, i32 0, i32 0
  %arrayidx889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist888, i32 0, i64 1
  %opred890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx889, i32 0, i32 0
  %383 = load %union.rec*, %union.rec** %opred890, align 8
  %os1891 = bitcast %union.rec* %383 to %struct.word_type*
  %olist892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1891, i32 0, i32 0
  %arrayidx893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist892, i32 0, i64 1
  %osucc894 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx893, i32 0, i32 1
  store %union.rec* %381, %union.rec** %osucc894, align 8
  %384 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1895 = bitcast %union.rec* %385 to %struct.word_type*
  %olist896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1895, i32 0, i32 0
  %arrayidx897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist896, i32 0, i64 1
  %opred898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx897, i32 0, i32 0
  store %union.rec* %384, %union.rec** %opred898, align 8
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %387 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1899 = bitcast %union.rec* %387 to %struct.word_type*
  %olist900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1899, i32 0, i32 0
  %arrayidx901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist900, i32 0, i64 1
  %osucc902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx901, i32 0, i32 1
  store %union.rec* %386, %union.rec** %osucc902, align 8
  br label %cond.end.903

cond.end.903:                                     ; preds = %cond.false.874, %cond.true.873
  %cond904 = phi %union.rec* [ %375, %cond.true.873 ], [ %386, %cond.false.874 ]
  br label %cond.end.905

cond.end.905:                                     ; preds = %cond.end.903, %cond.true.869
  %cond906 = phi %union.rec* [ %373, %cond.true.869 ], [ %cond904, %cond.end.903 ]
  br label %while.cond.622

while.end.907:                                    ; preds = %while.cond.622
  %388 = load %union.rec*, %union.rec** %tinners, align 8
  call void @FlushInners(%union.rec* %388, %union.rec* null)
  br label %if.end.908

if.end.908:                                       ; preds = %while.end.907, %cond.end.561
  %389 = load %union.rec*, %union.rec** %inners, align 8
  %cmp909 = icmp ne %union.rec* %389, null
  br i1 %cmp909, label %if.then.911, label %if.end.912

if.then.911:                                      ; preds = %if.end.908
  %390 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %390, %union.rec* null)
  br label %if.end.912

if.end.912:                                       ; preds = %if.then.911, %if.end.908
  %391 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1913 = bitcast %union.rec* %391 to %struct.word_type*
  %ou2914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1913, i32 0, i32 2
  %os23915 = bitcast %union.SECOND_UNION* %ou2914 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23915, i32 0, i32 2
  %bf.load916 = load i16, i16* %oblocked, align 2
  %bf.lshr917 = lshr i16 %bf.load916, 5
  %bf.clear918 = and i16 %bf.lshr917, 1
  %bf.cast919 = zext i16 %bf.clear918 to i32
  %tobool920 = icmp ne i32 %bf.cast919, 0
  br i1 %tobool920, label %if.then.921, label %if.end.951

if.then.921:                                      ; preds = %if.end.912
  %392 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1922 = bitcast %union.rec* %392 to %struct.word_type*
  %ou2923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1922, i32 0, i32 2
  %os23924 = bitcast %union.SECOND_UNION* %ou2923 to %struct.anon.2*
  %oblocked925 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23924, i32 0, i32 2
  %bf.load926 = load i16, i16* %oblocked925, align 2
  %bf.clear927 = and i16 %bf.load926, -33
  store i16 %bf.clear927, i16* %oblocked925, align 2
  %393 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1928 = bitcast %union.rec* %393 to %struct.word_type*
  %olist929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1928, i32 0, i32 0
  %arrayidx930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist929, i32 0, i64 1
  %osucc931 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx930, i32 0, i32 1
  %394 = load %union.rec*, %union.rec** %osucc931, align 8
  %os1932 = bitcast %union.rec* %394 to %struct.word_type*
  %olist933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1932, i32 0, i32 0
  %arrayidx934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist933, i32 0, i64 0
  %opred935 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx934, i32 0, i32 0
  %395 = load %union.rec*, %union.rec** %opred935, align 8
  store %union.rec* %395, %union.rec** %y, align 8
  br label %for.cond.936

for.cond.936:                                     ; preds = %for.inc.945, %if.then.921
  %396 = load %union.rec*, %union.rec** %y, align 8
  %os1937 = bitcast %union.rec* %396 to %struct.word_type*
  %ou1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1937, i32 0, i32 1
  %os11939 = bitcast %union.FIRST_UNION* %ou1938 to %struct.anon*
  %otype940 = getelementptr inbounds %struct.anon, %struct.anon* %os11939, i32 0, i32 0
  %397 = load i8, i8* %otype940, align 1
  %conv941 = zext i8 %397 to i32
  %cmp942 = icmp eq i32 %conv941, 0
  br i1 %cmp942, label %for.body.944, label %for.end.950

for.body.944:                                     ; preds = %for.cond.936
  br label %for.inc.945

for.inc.945:                                      ; preds = %for.body.944
  %398 = load %union.rec*, %union.rec** %y, align 8
  %os1946 = bitcast %union.rec* %398 to %struct.word_type*
  %olist947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1946, i32 0, i32 0
  %arrayidx948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist947, i32 0, i64 0
  %opred949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx948, i32 0, i32 0
  %399 = load %union.rec*, %union.rec** %opred949, align 8
  store %union.rec* %399, %union.rec** %y, align 8
  br label %for.cond.936

for.end.950:                                      ; preds = %for.cond.936
  %400 = load %union.rec*, %union.rec** %y, align 8
  call void @FlushGalley(%union.rec* %400)
  br label %if.end.951

if.end.951:                                       ; preds = %if.then, %for.end.950, %if.end.912
  ret void
}

declare void @ExpandRecursives(%union.rec*) #1

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

declare void @Promote(%union.rec*, %union.rec*, %union.rec*, i32) #1

declare void @DetachGalley(%union.rec*) #1

declare void @FlushInners(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define void @TransferEnd(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %recs = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %nothing = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %hd = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %start_search = alloca %union.rec*, align 8
  %tinners = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load i32, i32* @itop, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom
  %1 = load %union.rec*, %union.rec** %arrayidx, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %3 = load i32, i32* @itop, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom2
  %4 = load %union.rec*, %union.rec** %arrayidx3, align 8
  %cmp = icmp eq %union.rec* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %call = call i32 @DisposeObject(%union.rec* %5)
  %6 = load i32, i32* @itop, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @itop, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom4
  %7 = load %union.rec*, %union.rec** %arrayidx5, align 8
  %call6 = call i32 @DisposeObject(%union.rec* %7)
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* @itop, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom7
  %9 = load %union.rec*, %union.rec** %arrayidx8, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 0
  %osucc12 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc12, align 8
  %os113 = bitcast %union.rec* %10 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %11, %union.rec** %dest_index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %union.rec*, %union.rec** %dest_index, align 8
  %os116 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %13 = load i8, i8* %otype, align 1
  %conv = zext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %union.rec*, %union.rec** %dest_index, align 8
  %os119 = bitcast %union.rec* %14 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred22, align 8
  store %union.rec* %15, %union.rec** %dest_index, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv23 = zext i8 %16 to i32
  store i32 %conv23, i32* @zz_size, align 4
  %conv24 = sext i32 %conv23 to i64
  %cmp25 = icmp uge i64 %conv24, 265
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.end
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %17)
  br label %if.end.45

if.else:                                          ; preds = %for.end
  %18 = load i32, i32* @zz_size, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom29
  %19 = load %union.rec*, %union.rec** %arrayidx30, align 8
  %cmp31 = icmp eq %union.rec* %19, null
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.else
  %20 = load i32, i32* @zz_size, align 4
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call34 = call %union.rec* @GetMemory(i32 %20, %struct.FILE_POS* %21)
  store %union.rec* %call34, %union.rec** @zz_hold, align 8
  br label %if.end.44

if.else.35:                                       ; preds = %if.else
  %22 = load i32, i32* @zz_size, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom36
  %23 = load %union.rec*, %union.rec** %arrayidx37, align 8
  store %union.rec* %23, %union.rec** @zz_hold, align 8
  store %union.rec* %23, %union.rec** @zz_hold, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os138 = bitcast %union.rec* %24 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 0
  %opred41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %opred41, align 8
  %26 = load i32, i32* @zz_size, align 4
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom42
  store %union.rec* %25, %union.rec** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.27
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %27 to %struct.word_type*
  %ou147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 1
  %os1148 = bitcast %union.FIRST_UNION* %ou147 to %struct.anon*
  %otype49 = getelementptr inbounds %struct.anon, %struct.anon* %os1148, i32 0, i32 0
  store i8 8, i8* %otype49, align 1
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %29 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 1
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc53, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %30 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 1
  %opred57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 0
  store %union.rec* %28, %union.rec** %opred57, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %31 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc61, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %32 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  store %union.rec* %28, %union.rec** %opred65, align 8
  store %union.rec* %28, %union.rec** %hd, align 8
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os166 = bitcast %union.rec* %33 to %struct.word_type*
  %ou167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou167 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %34 = load i16, i16* %ofile_num, align 2
  %35 = load %union.rec*, %union.rec** %hd, align 8
  %os168 = bitcast %union.rec* %35 to %struct.word_type*
  %ou169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 1
  %ofpos70 = bitcast %union.FIRST_UNION* %ou169 to %struct.FILE_POS*
  %ofile_num71 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos70, i32 0, i32 2
  store i16 %34, i16* %ofile_num71, align 2
  %36 = load %union.rec*, %union.rec** %x.addr, align 8
  %os172 = bitcast %union.rec* %36 to %struct.word_type*
  %ou173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 1
  %ofpos74 = bitcast %union.FIRST_UNION* %ou173 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos74, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %37 = load %union.rec*, %union.rec** %hd, align 8
  %os175 = bitcast %union.rec* %37 to %struct.word_type*
  %ou176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 1
  %ofpos77 = bitcast %union.FIRST_UNION* %ou176 to %struct.FILE_POS*
  %oline_num78 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos77, i32 0, i32 3
  %bf.load79 = load i32, i32* %oline_num78, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear80 = and i32 %bf.load79, -1048576
  %bf.set = or i32 %bf.clear80, %bf.value
  store i32 %bf.set, i32* %oline_num78, align 4
  %38 = load %union.rec*, %union.rec** %x.addr, align 8
  %os181 = bitcast %union.rec* %38 to %struct.word_type*
  %ou182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 1
  %ofpos83 = bitcast %union.FIRST_UNION* %ou182 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos83, i32 0, i32 3
  %bf.load84 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load84, 20
  %39 = load %union.rec*, %union.rec** %hd, align 8
  %os185 = bitcast %union.rec* %39 to %struct.word_type*
  %ou186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 1
  %ofpos87 = bitcast %union.FIRST_UNION* %ou186 to %struct.FILE_POS*
  %ocol_num88 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos87, i32 0, i32 3
  %bf.load89 = load i32, i32* %ocol_num88, align 4
  %bf.value90 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value90, 20
  %bf.clear91 = and i32 %bf.load89, 1048575
  %bf.set92 = or i32 %bf.clear91, %bf.shl
  store i32 %bf.set92, i32* %ocol_num88, align 4
  %40 = load %union.rec*, %union.rec** %hd, align 8
  %os193 = bitcast %union.rec* %40 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oforce_gall = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load94 = load i16, i16* %oforce_gall, align 2
  %bf.clear95 = and i16 %bf.load94, -4097
  store i16 %bf.clear95, i16* %oforce_gall, align 2
  %41 = load %union.rec*, %union.rec** %hd, align 8
  %os2a = bitcast %union.rec* %41 to %struct.head_type*
  %odead_headers = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers, align 8
  %42 = load %union.rec*, %union.rec** %hd, align 8
  %os2a96 = bitcast %union.rec* %42 to %struct.head_type*
  %oheaders = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a96, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders, align 8
  %43 = load %union.rec*, %union.rec** %hd, align 8
  %os2a97 = bitcast %union.rec* %43 to %struct.head_type*
  %olimiter = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a97, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter, align 8
  %44 = load %union.rec*, %union.rec** %hd, align 8
  %os2a98 = bitcast %union.rec* %44 to %struct.head_type*
  %oenclose_obj = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a98, i32 0, i32 12
  store %union.rec* null, %union.rec** %oenclose_obj, align 8
  %45 = load %union.rec*, %union.rec** %hd, align 8
  %os2a99 = bitcast %union.rec* %45 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a99, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints, align 8
  %46 = load %union.rec*, %union.rec** %hd, align 8
  %os2a100 = bitcast %union.rec* %46 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a100, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components, align 8
  %47 = load %union.rec*, %union.rec** %hd, align 8
  %os1101 = bitcast %union.rec* %47 to %struct.word_type*
  %ou2102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 2
  %os23103 = bitcast %union.SECOND_UNION* %ou2102 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23103, i32 0, i32 2
  %bf.load104 = load i16, i16* %ogall_dir, align 2
  %bf.clear105 = and i16 %bf.load104, -257
  %bf.set106 = or i16 %bf.clear105, 256
  store i16 %bf.set106, i16* %ogall_dir, align 2
  %48 = load %union.rec*, %union.rec** %hd, align 8
  %os2a107 = bitcast %union.rec* %48 to %struct.head_type*
  %oready_galls = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a107, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls, align 8
  %49 = load %union.rec*, %union.rec** %hd, align 8
  %os2 = bitcast %union.rec* %49 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 6
  %owhereto = bitcast %union.anon.12* %oux to %union.rec**
  store %union.rec* null, %union.rec** %owhereto, align 8
  %50 = load %union.rec*, %union.rec** %hd, align 8
  %os2108 = bitcast %union.rec* %50 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2108, i32 0, i32 5
  store %union.rec* null, %union.rec** %oactual, align 8
  %51 = load %union.rec*, %union.rec** %hd, align 8
  %os1109 = bitcast %union.rec* %51 to %struct.word_type*
  %ou2110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 2
  %os23111 = bitcast %union.SECOND_UNION* %ou2110 to %struct.anon.2*
  %ofoll_or_prec = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23111, i32 0, i32 0
  store i8 -127, i8* %ofoll_or_prec, align 1
  %52 = load %union.rec*, %union.rec** %hd, align 8
  %os1112 = bitcast %union.rec* %52 to %struct.word_type*
  %ou2113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 2
  %os23114 = bitcast %union.SECOND_UNION* %ou2113 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23114, i32 0, i32 2
  %bf.load115 = load i16, i16* %osized, align 2
  %bf.clear116 = and i16 %bf.load115, -3
  store i16 %bf.clear116, i16* %osized, align 2
  %53 = load %union.rec*, %union.rec** %hd, align 8
  %os1117 = bitcast %union.rec* %53 to %struct.word_type*
  %ou2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 2
  %os23119 = bitcast %union.SECOND_UNION* %ou2118 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23119, i32 0, i32 2
  %bf.load120 = load i16, i16* %omust_expand, align 2
  %bf.clear121 = and i16 %bf.load120, -129
  store i16 %bf.clear121, i16* %omust_expand, align 2
  %54 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv122 = zext i8 %54 to i32
  store i32 %conv122, i32* @zz_size, align 4
  %conv123 = sext i32 %conv122 to i64
  %cmp124 = icmp uge i64 %conv123, 265
  br i1 %cmp124, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %if.end.45
  %55 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call127 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %55)
  br label %if.end.145

if.else.128:                                      ; preds = %if.end.45
  %56 = load i32, i32* @zz_size, align 4
  %idxprom129 = sext i32 %56 to i64
  %arrayidx130 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom129
  %57 = load %union.rec*, %union.rec** %arrayidx130, align 8
  %cmp131 = icmp eq %union.rec* %57, null
  br i1 %cmp131, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %if.else.128
  %58 = load i32, i32* @zz_size, align 4
  %59 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call134 = call %union.rec* @GetMemory(i32 %58, %struct.FILE_POS* %59)
  store %union.rec* %call134, %union.rec** @zz_hold, align 8
  br label %if.end.144

if.else.135:                                      ; preds = %if.else.128
  %60 = load i32, i32* @zz_size, align 4
  %idxprom136 = sext i32 %60 to i64
  %arrayidx137 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom136
  %61 = load %union.rec*, %union.rec** %arrayidx137, align 8
  store %union.rec* %61, %union.rec** @zz_hold, align 8
  store %union.rec* %61, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1138 = bitcast %union.rec* %62 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 0
  %opred141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred141, align 8
  %64 = load i32, i32* @zz_size, align 4
  %idxprom142 = sext i32 %64 to i64
  %arrayidx143 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom142
  store %union.rec* %63, %union.rec** %arrayidx143, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.135, %if.then.133
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.126
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1146 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 1
  %os11148 = bitcast %union.FIRST_UNION* %ou1147 to %struct.anon*
  %otype149 = getelementptr inbounds %struct.anon, %struct.anon* %os11148, i32 0, i32 0
  store i8 0, i8* %otype149, align 1
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1150 = bitcast %union.rec* %67 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 1
  %osucc153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 1
  store %union.rec* %66, %union.rec** %osucc153, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1154 = bitcast %union.rec* %68 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  store %union.rec* %66, %union.rec** %opred157, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1158 = bitcast %union.rec* %69 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 0
  %osucc161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 1
  store %union.rec* %66, %union.rec** %osucc161, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1162 = bitcast %union.rec* %70 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 0
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  store %union.rec* %66, %union.rec** %opred165, align 8
  store %union.rec* %66, %union.rec** @xx_link, align 8
  %71 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %71, %union.rec** @zz_res, align 8
  %72 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %72, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp166 = icmp eq %union.rec* %73, null
  br i1 %cmp166, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.145
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.200

cond.false:                                       ; preds = %if.end.145
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp168 = icmp eq %union.rec* %75, null
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %cond.false
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.171:                                   ; preds = %cond.false
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1172 = bitcast %union.rec* %77 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 0
  %opred175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred175, align 8
  store %union.rec* %78, %union.rec** @zz_tmp, align 8
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1176 = bitcast %union.rec* %79 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 0
  %opred179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred179, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1180 = bitcast %union.rec* %81 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 0
  %opred183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 0
  store %union.rec* %80, %union.rec** %opred183, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1184 = bitcast %union.rec* %83 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 0
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  %84 = load %union.rec*, %union.rec** %opred187, align 8
  %os1188 = bitcast %union.rec* %84 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 0
  %osucc191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 1
  store %union.rec* %82, %union.rec** %osucc191, align 8
  %85 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %86 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1192 = bitcast %union.rec* %86 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 0
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred195, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  %88 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1196 = bitcast %union.rec* %88 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 0
  %osucc199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc199, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.171, %cond.true.170
  %cond = phi %union.rec* [ %76, %cond.true.170 ], [ %87, %cond.false.171 ]
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.end, %cond.true
  %cond201 = phi %union.rec* [ %74, %cond.true ], [ %cond, %cond.end ]
  %89 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %89, %union.rec** @zz_res, align 8
  %90 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp202 = icmp eq %union.rec* %91, null
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %cond.end.200
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.240

cond.false.205:                                   ; preds = %cond.end.200
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp206 = icmp eq %union.rec* %93, null
  br i1 %cmp206, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %cond.false.205
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.238

cond.false.209:                                   ; preds = %cond.false.205
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1210 = bitcast %union.rec* %95 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %opred213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred213, align 8
  store %union.rec* %96, %union.rec** @zz_tmp, align 8
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1214 = bitcast %union.rec* %97 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred217, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1218 = bitcast %union.rec* %99 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  store %union.rec* %98, %union.rec** %opred221, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1222 = bitcast %union.rec* %101 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 1
  %opred225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred225, align 8
  %os1226 = bitcast %union.rec* %102 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %osucc229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc229, align 8
  %103 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1230 = bitcast %union.rec* %104 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 1
  %opred233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 0
  store %union.rec* %103, %union.rec** %opred233, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %106 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1234 = bitcast %union.rec* %106 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 1
  %osucc237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 1
  store %union.rec* %105, %union.rec** %osucc237, align 8
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.209, %cond.true.208
  %cond239 = phi %union.rec* [ %94, %cond.true.208 ], [ %105, %cond.false.209 ]
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.end.238, %cond.true.204
  %cond241 = phi %union.rec* [ %92, %cond.true.204 ], [ %cond239, %cond.end.238 ]
  %107 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2242 = bitcast %union.rec* %107 to %struct.closure_type*
  %oactual243 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2242, i32 0, i32 5
  %108 = load %union.rec*, %union.rec** %oactual243, align 8
  store %union.rec* %108, %union.rec** %dest, align 8
  %109 = load %union.rec*, %union.rec** %dest, align 8
  %call244 = call %union.rec* @GetEnv(%union.rec* %109)
  store %union.rec* %call244, %union.rec** %env, align 8
  %110 = load %union.rec*, %union.rec** %hd, align 8
  %111 = load %union.rec*, %union.rec** %env, align 8
  %112 = load %union.rec*, %union.rec** %dest, align 8
  %os1245 = bitcast %union.rec* %112 to %struct.word_type*
  %ou2246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 2
  %os23247 = bitcast %union.SECOND_UNION* %ou2246 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23247, i32 0, i32 2
  %bf.load248 = load i16, i16* %oexternal_ver, align 2
  %bf.lshr249 = lshr i16 %bf.load248, 4
  %bf.clear250 = and i16 %bf.lshr249, 1
  %bf.cast = zext i16 %bf.clear250 to i32
  %113 = load %union.rec*, %union.rec** %dest, align 8
  %os1251 = bitcast %union.rec* %113 to %struct.word_type*
  %ou2252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 2
  %os23253 = bitcast %union.SECOND_UNION* %ou2252 to %struct.anon.2*
  %othreaded = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23253, i32 0, i32 2
  %bf.load254 = load i16, i16* %othreaded, align 2
  %bf.lshr255 = lshr i16 %bf.load254, 2
  %bf.clear256 = and i16 %bf.lshr255, 1
  %bf.cast257 = zext i16 %bf.clear256 to i32
  %114 = load %union.rec*, %union.rec** %dest, align 8
  %os2258 = bitcast %union.rec* %114 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2258, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %115 = load i32, i32* @itop, align 4
  %idxprom259 = sext i32 %115 to i64
  %arrayidx260 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %idxprom259
  call void @SizeGalley(%union.rec* %110, %union.rec* %111, i32 %bf.cast, i32 %bf.cast257, i32 0, i32 1, %struct.STYLE* %osave_style, %struct.CONSTRAINT* %arrayidx260, %union.rec* null, %union.rec** %nothing, %union.rec** %recs, %union.rec** %inners, %union.rec* null)
  %116 = load %union.rec*, %union.rec** %recs, align 8
  %cmp261 = icmp ne %union.rec* %116, null
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %cond.end.240
  %117 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %117)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %cond.end.240
  %118 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1265 = bitcast %union.rec* %118 to %struct.word_type*
  %olist266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1265, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist266, i32 0, i64 1
  %osucc268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx267, i32 0, i32 1
  %119 = load %union.rec*, %union.rec** %osucc268, align 8
  %os1269 = bitcast %union.rec* %119 to %struct.word_type*
  %olist270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist270, i32 0, i64 0
  %opred272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx271, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred272, align 8
  store %union.rec* %120, %union.rec** %start_search, align 8
  %121 = load %union.rec*, %union.rec** %dest, align 8
  %122 = load %union.rec*, %union.rec** %hd, align 8
  %os1273 = bitcast %union.rec* %122 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %123 = load i32, i32* %arrayidx274, align 4
  %124 = load %union.rec*, %union.rec** %hd, align 8
  %os1275 = bitcast %union.rec* %124 to %struct.word_type*
  %ou3276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 3
  %os31277 = bitcast %union.THIRD_UNION* %ou3276 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31277, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %125 = load i32, i32* %arrayidx278, align 4
  call void @AdjustSize(%union.rec* %121, i32 %123, i32 %125, i32 0)
  %126 = load %union.rec*, %union.rec** %dest, align 8
  %os1279 = bitcast %union.rec* %126 to %struct.word_type*
  %ou2280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 2
  %os23281 = bitcast %union.SECOND_UNION* %ou2280 to %struct.anon.2*
  %oexternal_ver282 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23281, i32 0, i32 2
  %bf.load283 = load i16, i16* %oexternal_ver282, align 2
  %bf.lshr284 = lshr i16 %bf.load283, 4
  %bf.clear285 = and i16 %bf.lshr284, 1
  %bf.cast286 = zext i16 %bf.clear285 to i32
  %tobool = icmp ne i32 %bf.cast286, 0
  br i1 %tobool, label %if.end.321, label %if.then.287

if.then.287:                                      ; preds = %if.end.264
  %127 = load %union.rec*, %union.rec** %hd, align 8
  %os1288 = bitcast %union.rec* %127 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 0
  %opred291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %opred291, align 8
  %os1292 = bitcast %union.rec* %128 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 1
  %opred295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %opred295, align 8
  store %union.rec* %129, %union.rec** %z, align 8
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.305, %if.then.287
  %130 = load %union.rec*, %union.rec** %z, align 8
  %os1297 = bitcast %union.rec* %130 to %struct.word_type*
  %ou1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 1
  %os11299 = bitcast %union.FIRST_UNION* %ou1298 to %struct.anon*
  %otype300 = getelementptr inbounds %struct.anon, %struct.anon* %os11299, i32 0, i32 0
  %131 = load i8, i8* %otype300, align 1
  %conv301 = zext i8 %131 to i32
  %cmp302 = icmp eq i32 %conv301, 0
  br i1 %cmp302, label %for.body.304, label %for.end.310

for.body.304:                                     ; preds = %for.cond.296
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.304
  %132 = load %union.rec*, %union.rec** %z, align 8
  %os1306 = bitcast %union.rec* %132 to %struct.word_type*
  %olist307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1306, i32 0, i32 0
  %arrayidx308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist307, i32 0, i64 1
  %opred309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx308, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred309, align 8
  store %union.rec* %133, %union.rec** %z, align 8
  br label %for.cond.296

for.end.310:                                      ; preds = %for.cond.296
  %134 = load %union.rec*, %union.rec** %dest, align 8
  %135 = load %union.rec*, %union.rec** %z, align 8
  %os1311 = bitcast %union.rec* %135 to %struct.word_type*
  %ou3312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 3
  %os31313 = bitcast %union.THIRD_UNION* %ou3312 to %struct.anon.6*
  %oback314 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x i32], [2 x i32]* %oback314, i32 0, i64 1
  %136 = load i32, i32* %arrayidx315, align 4
  %137 = load %union.rec*, %union.rec** %z, align 8
  %os1316 = bitcast %union.rec* %137 to %struct.word_type*
  %ou3317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 3
  %os31318 = bitcast %union.THIRD_UNION* %ou3317 to %struct.anon.6*
  %ofwd319 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31318, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd319, i32 0, i64 1
  %138 = load i32, i32* %arrayidx320, align 4
  call void @AdjustSize(%union.rec* %134, i32 %136, i32 %138, i32 1)
  %139 = load %union.rec*, %union.rec** %dest, align 8
  %140 = load %union.rec*, %union.rec** %hd, align 8
  %141 = load %union.rec*, %union.rec** %z, align 8
  call void @Interpose(%union.rec* %139, i32 19, %union.rec* %140, %union.rec* %141)
  br label %if.end.321

if.end.321:                                       ; preds = %for.end.310, %if.end.264
  %142 = load %union.rec*, %union.rec** %hd, align 8
  %143 = load %union.rec*, %union.rec** %hd, align 8
  %144 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %142, %union.rec* %143, %union.rec* %144, i32 1)
  %145 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %145, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.435, %if.end.321
  %146 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1322 = bitcast %union.rec* %146 to %struct.word_type*
  %olist323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1322, i32 0, i32 0
  %arrayidx324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist323, i32 0, i64 1
  %osucc325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx324, i32 0, i32 1
  %147 = load %union.rec*, %union.rec** %osucc325, align 8
  %148 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp326 = icmp ne %union.rec* %147, %148
  br i1 %cmp326, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %149 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1328 = bitcast %union.rec* %149 to %struct.word_type*
  %olist329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist329, i32 0, i64 1
  %osucc331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx330, i32 0, i32 1
  %150 = load %union.rec*, %union.rec** %osucc331, align 8
  store %union.rec* %150, %union.rec** @xx_link, align 8
  %151 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %151, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %152 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  %153 = load %union.rec*, %union.rec** %osucc335, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp336 = icmp eq %union.rec* %153, %154
  br i1 %cmp336, label %cond.true.338, label %cond.false.339

cond.true.338:                                    ; preds = %while.body
  br label %cond.end.368

cond.false.339:                                   ; preds = %while.body
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %155 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 1
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %osucc343, align 8
  store %union.rec* %156, %union.rec** @zz_res, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %157 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 1
  %opred347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %opred347, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1348 = bitcast %union.rec* %159 to %struct.word_type*
  %olist349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist349, i32 0, i64 1
  %opred351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx350, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred351, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1352 = bitcast %union.rec* %161 to %struct.word_type*
  %olist353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist353, i32 0, i64 1
  %opred355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx354, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred355, align 8
  %os1356 = bitcast %union.rec* %162 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 1
  %osucc359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 1
  store %union.rec* %160, %union.rec** %osucc359, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1360 = bitcast %union.rec* %164 to %struct.word_type*
  %olist361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1360, i32 0, i32 0
  %arrayidx362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist361, i32 0, i64 1
  %osucc363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx362, i32 0, i32 1
  store %union.rec* %163, %union.rec** %osucc363, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1364 = bitcast %union.rec* %165 to %struct.word_type*
  %olist365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist365, i32 0, i64 1
  %opred367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx366, i32 0, i32 0
  store %union.rec* %163, %union.rec** %opred367, align 8
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.339, %cond.true.338
  %cond369 = phi %union.rec* [ null, %cond.true.338 ], [ %166, %cond.false.339 ]
  %167 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1370 = bitcast %union.rec* %168 to %struct.word_type*
  %olist371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist371, i32 0, i64 0
  %osucc373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx372, i32 0, i32 1
  %169 = load %union.rec*, %union.rec** %osucc373, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp374 = icmp eq %union.rec* %169, %170
  br i1 %cmp374, label %cond.true.376, label %cond.false.377

cond.true.376:                                    ; preds = %cond.end.368
  br label %cond.end.406

cond.false.377:                                   ; preds = %cond.end.368
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1378 = bitcast %union.rec* %171 to %struct.word_type*
  %olist379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist379, i32 0, i64 0
  %osucc381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx380, i32 0, i32 1
  %172 = load %union.rec*, %union.rec** %osucc381, align 8
  store %union.rec* %172, %union.rec** @zz_res, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1382 = bitcast %union.rec* %173 to %struct.word_type*
  %olist383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist383, i32 0, i64 0
  %opred385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx384, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %opred385, align 8
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1386 = bitcast %union.rec* %175 to %struct.word_type*
  %olist387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist387, i32 0, i64 0
  %opred389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx388, i32 0, i32 0
  store %union.rec* %174, %union.rec** %opred389, align 8
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1390 = bitcast %union.rec* %177 to %struct.word_type*
  %olist391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1390, i32 0, i32 0
  %arrayidx392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist391, i32 0, i64 0
  %opred393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx392, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %opred393, align 8
  %os1394 = bitcast %union.rec* %178 to %struct.word_type*
  %olist395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist395, i32 0, i64 0
  %osucc397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx396, i32 0, i32 1
  store %union.rec* %176, %union.rec** %osucc397, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1398 = bitcast %union.rec* %180 to %struct.word_type*
  %olist399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1398, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist399, i32 0, i64 0
  %osucc401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx400, i32 0, i32 1
  store %union.rec* %179, %union.rec** %osucc401, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1402 = bitcast %union.rec* %181 to %struct.word_type*
  %olist403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist403, i32 0, i64 0
  %opred405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx404, i32 0, i32 0
  store %union.rec* %179, %union.rec** %opred405, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.377, %cond.true.376
  %cond407 = phi %union.rec* [ null, %cond.true.376 ], [ %182, %cond.false.377 ]
  %183 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %183, %union.rec** @zz_hold, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %184, %union.rec** @zz_hold, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1408 = bitcast %union.rec* %185 to %struct.word_type*
  %ou1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 1
  %os11410 = bitcast %union.FIRST_UNION* %ou1409 to %struct.anon*
  %otype411 = getelementptr inbounds %struct.anon, %struct.anon* %os11410, i32 0, i32 0
  %186 = load i8, i8* %otype411, align 1
  %conv412 = zext i8 %186 to i32
  %cmp413 = icmp eq i32 %conv412, 11
  br i1 %cmp413, label %cond.true.422, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.406
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1415 = bitcast %union.rec* %187 to %struct.word_type*
  %ou1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 1
  %os11417 = bitcast %union.FIRST_UNION* %ou1416 to %struct.anon*
  %otype418 = getelementptr inbounds %struct.anon, %struct.anon* %os11417, i32 0, i32 0
  %188 = load i8, i8* %otype418, align 1
  %conv419 = zext i8 %188 to i32
  %cmp420 = icmp eq i32 %conv419, 12
  br i1 %cmp420, label %cond.true.422, label %cond.false.427

cond.true.422:                                    ; preds = %lor.lhs.false, %cond.end.406
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1423 = bitcast %union.rec* %189 to %struct.word_type*
  %ou1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 1
  %os11425 = bitcast %union.FIRST_UNION* %ou1424 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11425, i32 0, i32 1
  %190 = load i8, i8* %orec_size, align 1
  %conv426 = zext i8 %190 to i32
  br label %cond.end.435

cond.false.427:                                   ; preds = %lor.lhs.false
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1428 = bitcast %union.rec* %191 to %struct.word_type*
  %ou1429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 1
  %os11430 = bitcast %union.FIRST_UNION* %ou1429 to %struct.anon*
  %otype431 = getelementptr inbounds %struct.anon, %struct.anon* %os11430, i32 0, i32 0
  %192 = load i8, i8* %otype431, align 1
  %idxprom432 = zext i8 %192 to i64
  %arrayidx433 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom432
  %193 = load i8, i8* %arrayidx433, align 1
  %conv434 = zext i8 %193 to i32
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.427, %cond.true.422
  %cond436 = phi i32 [ %conv426, %cond.true.422 ], [ %conv434, %cond.false.427 ]
  store i32 %cond436, i32* @zz_size, align 4
  %194 = load i32, i32* @zz_size, align 4
  %idxprom437 = sext i32 %194 to i64
  %arrayidx438 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom437
  %195 = load %union.rec*, %union.rec** %arrayidx438, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1439 = bitcast %union.rec* %196 to %struct.word_type*
  %olist440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist440, i32 0, i64 0
  %opred442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx441, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred442, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = load i32, i32* @zz_size, align 4
  %idxprom443 = sext i32 %198 to i64
  %arrayidx444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom443
  store %union.rec* %197, %union.rec** %arrayidx444, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.445

while.cond.445:                                   ; preds = %cond.end.562, %while.end
  %199 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1446 = bitcast %union.rec* %199 to %struct.word_type*
  %olist447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1446, i32 0, i32 0
  %arrayidx448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist447, i32 0, i64 0
  %osucc449 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx448, i32 0, i32 1
  %200 = load %union.rec*, %union.rec** %osucc449, align 8
  %201 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp450 = icmp ne %union.rec* %200, %201
  br i1 %cmp450, label %while.body.452, label %while.end.572

while.body.452:                                   ; preds = %while.cond.445
  %202 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1453 = bitcast %union.rec* %202 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 0
  %osucc456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 1
  %203 = load %union.rec*, %union.rec** %osucc456, align 8
  store %union.rec* %203, %union.rec** @xx_link, align 8
  %204 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %204, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1457 = bitcast %union.rec* %205 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 1
  %osucc460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 1
  %206 = load %union.rec*, %union.rec** %osucc460, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp461 = icmp eq %union.rec* %206, %207
  br i1 %cmp461, label %cond.true.463, label %cond.false.464

cond.true.463:                                    ; preds = %while.body.452
  br label %cond.end.493

cond.false.464:                                   ; preds = %while.body.452
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1465 = bitcast %union.rec* %208 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 1
  %osucc468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 1
  %209 = load %union.rec*, %union.rec** %osucc468, align 8
  store %union.rec* %209, %union.rec** @zz_res, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1469 = bitcast %union.rec* %210 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 1
  %opred472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %opred472, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1473 = bitcast %union.rec* %212 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 1
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  store %union.rec* %211, %union.rec** %opred476, align 8
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1477 = bitcast %union.rec* %214 to %struct.word_type*
  %olist478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist478, i32 0, i64 1
  %opred480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx479, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred480, align 8
  %os1481 = bitcast %union.rec* %215 to %struct.word_type*
  %olist482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist482, i32 0, i64 1
  %osucc484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx483, i32 0, i32 1
  store %union.rec* %213, %union.rec** %osucc484, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1485 = bitcast %union.rec* %217 to %struct.word_type*
  %olist486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1485, i32 0, i32 0
  %arrayidx487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist486, i32 0, i64 1
  %osucc488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx487, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc488, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1489 = bitcast %union.rec* %218 to %struct.word_type*
  %olist490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1489, i32 0, i32 0
  %arrayidx491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist490, i32 0, i64 1
  %opred492 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx491, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred492, align 8
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.464, %cond.true.463
  %cond494 = phi %union.rec* [ null, %cond.true.463 ], [ %219, %cond.false.464 ]
  %220 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %220, %union.rec** @zz_hold, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1495 = bitcast %union.rec* %221 to %struct.word_type*
  %olist496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist496, i32 0, i64 0
  %osucc498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx497, i32 0, i32 1
  %222 = load %union.rec*, %union.rec** %osucc498, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp499 = icmp eq %union.rec* %222, %223
  br i1 %cmp499, label %cond.true.501, label %cond.false.502

cond.true.501:                                    ; preds = %cond.end.493
  br label %cond.end.531

cond.false.502:                                   ; preds = %cond.end.493
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1503 = bitcast %union.rec* %224 to %struct.word_type*
  %olist504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist504, i32 0, i64 0
  %osucc506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx505, i32 0, i32 1
  %225 = load %union.rec*, %union.rec** %osucc506, align 8
  store %union.rec* %225, %union.rec** @zz_res, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1507 = bitcast %union.rec* %226 to %struct.word_type*
  %olist508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist508, i32 0, i64 0
  %opred510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx509, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %opred510, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1511 = bitcast %union.rec* %228 to %struct.word_type*
  %olist512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist512, i32 0, i64 0
  %opred514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx513, i32 0, i32 0
  store %union.rec* %227, %union.rec** %opred514, align 8
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1515 = bitcast %union.rec* %230 to %struct.word_type*
  %olist516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 0
  %arrayidx517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist516, i32 0, i64 0
  %opred518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx517, i32 0, i32 0
  %231 = load %union.rec*, %union.rec** %opred518, align 8
  %os1519 = bitcast %union.rec* %231 to %struct.word_type*
  %olist520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1519, i32 0, i32 0
  %arrayidx521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist520, i32 0, i64 0
  %osucc522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx521, i32 0, i32 1
  store %union.rec* %229, %union.rec** %osucc522, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1523 = bitcast %union.rec* %233 to %struct.word_type*
  %olist524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1523, i32 0, i32 0
  %arrayidx525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist524, i32 0, i64 0
  %osucc526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx525, i32 0, i32 1
  store %union.rec* %232, %union.rec** %osucc526, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1527 = bitcast %union.rec* %234 to %struct.word_type*
  %olist528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 0
  %arrayidx529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist528, i32 0, i64 0
  %opred530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx529, i32 0, i32 0
  store %union.rec* %232, %union.rec** %opred530, align 8
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.502, %cond.true.501
  %cond532 = phi %union.rec* [ null, %cond.true.501 ], [ %235, %cond.false.502 ]
  %236 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %237, %union.rec** @zz_hold, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1533 = bitcast %union.rec* %238 to %struct.word_type*
  %ou1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1533, i32 0, i32 1
  %os11535 = bitcast %union.FIRST_UNION* %ou1534 to %struct.anon*
  %otype536 = getelementptr inbounds %struct.anon, %struct.anon* %os11535, i32 0, i32 0
  %239 = load i8, i8* %otype536, align 1
  %conv537 = zext i8 %239 to i32
  %cmp538 = icmp eq i32 %conv537, 11
  br i1 %cmp538, label %cond.true.548, label %lor.lhs.false.540

lor.lhs.false.540:                                ; preds = %cond.end.531
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1541 = bitcast %union.rec* %240 to %struct.word_type*
  %ou1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1541, i32 0, i32 1
  %os11543 = bitcast %union.FIRST_UNION* %ou1542 to %struct.anon*
  %otype544 = getelementptr inbounds %struct.anon, %struct.anon* %os11543, i32 0, i32 0
  %241 = load i8, i8* %otype544, align 1
  %conv545 = zext i8 %241 to i32
  %cmp546 = icmp eq i32 %conv545, 12
  br i1 %cmp546, label %cond.true.548, label %cond.false.554

cond.true.548:                                    ; preds = %lor.lhs.false.540, %cond.end.531
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1549 = bitcast %union.rec* %242 to %struct.word_type*
  %ou1550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 1
  %os11551 = bitcast %union.FIRST_UNION* %ou1550 to %struct.anon*
  %orec_size552 = getelementptr inbounds %struct.anon, %struct.anon* %os11551, i32 0, i32 1
  %243 = load i8, i8* %orec_size552, align 1
  %conv553 = zext i8 %243 to i32
  br label %cond.end.562

cond.false.554:                                   ; preds = %lor.lhs.false.540
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1555 = bitcast %union.rec* %244 to %struct.word_type*
  %ou1556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 1
  %os11557 = bitcast %union.FIRST_UNION* %ou1556 to %struct.anon*
  %otype558 = getelementptr inbounds %struct.anon, %struct.anon* %os11557, i32 0, i32 0
  %245 = load i8, i8* %otype558, align 1
  %idxprom559 = zext i8 %245 to i64
  %arrayidx560 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom559
  %246 = load i8, i8* %arrayidx560, align 1
  %conv561 = zext i8 %246 to i32
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.554, %cond.true.548
  %cond563 = phi i32 [ %conv553, %cond.true.548 ], [ %conv561, %cond.false.554 ]
  store i32 %cond563, i32* @zz_size, align 4
  %247 = load i32, i32* @zz_size, align 4
  %idxprom564 = sext i32 %247 to i64
  %arrayidx565 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom564
  %248 = load %union.rec*, %union.rec** %arrayidx565, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1566 = bitcast %union.rec* %249 to %struct.word_type*
  %olist567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1566, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist567, i32 0, i64 0
  %opred569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx568, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred569, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = load i32, i32* @zz_size, align 4
  %idxprom570 = sext i32 %251 to i64
  %arrayidx571 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom570
  store %union.rec* %250, %union.rec** %arrayidx571, align 8
  br label %while.cond.445

while.end.572:                                    ; preds = %while.cond.445
  %252 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %252, %union.rec** @zz_hold, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %253, %union.rec** @zz_hold, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %254 to %struct.word_type*
  %ou1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 1
  %os11575 = bitcast %union.FIRST_UNION* %ou1574 to %struct.anon*
  %otype576 = getelementptr inbounds %struct.anon, %struct.anon* %os11575, i32 0, i32 0
  %255 = load i8, i8* %otype576, align 1
  %conv577 = zext i8 %255 to i32
  %cmp578 = icmp eq i32 %conv577, 11
  br i1 %cmp578, label %cond.true.588, label %lor.lhs.false.580

lor.lhs.false.580:                                ; preds = %while.end.572
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1581 = bitcast %union.rec* %256 to %struct.word_type*
  %ou1582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 1
  %os11583 = bitcast %union.FIRST_UNION* %ou1582 to %struct.anon*
  %otype584 = getelementptr inbounds %struct.anon, %struct.anon* %os11583, i32 0, i32 0
  %257 = load i8, i8* %otype584, align 1
  %conv585 = zext i8 %257 to i32
  %cmp586 = icmp eq i32 %conv585, 12
  br i1 %cmp586, label %cond.true.588, label %cond.false.594

cond.true.588:                                    ; preds = %lor.lhs.false.580, %while.end.572
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1589 = bitcast %union.rec* %258 to %struct.word_type*
  %ou1590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 1
  %os11591 = bitcast %union.FIRST_UNION* %ou1590 to %struct.anon*
  %orec_size592 = getelementptr inbounds %struct.anon, %struct.anon* %os11591, i32 0, i32 1
  %259 = load i8, i8* %orec_size592, align 1
  %conv593 = zext i8 %259 to i32
  br label %cond.end.602

cond.false.594:                                   ; preds = %lor.lhs.false.580
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1595 = bitcast %union.rec* %260 to %struct.word_type*
  %ou1596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1595, i32 0, i32 1
  %os11597 = bitcast %union.FIRST_UNION* %ou1596 to %struct.anon*
  %otype598 = getelementptr inbounds %struct.anon, %struct.anon* %os11597, i32 0, i32 0
  %261 = load i8, i8* %otype598, align 1
  %idxprom599 = zext i8 %261 to i64
  %arrayidx600 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom599
  %262 = load i8, i8* %arrayidx600, align 1
  %conv601 = zext i8 %262 to i32
  br label %cond.end.602

cond.end.602:                                     ; preds = %cond.false.594, %cond.true.588
  %cond603 = phi i32 [ %conv593, %cond.true.588 ], [ %conv601, %cond.false.594 ]
  store i32 %cond603, i32* @zz_size, align 4
  %263 = load i32, i32* @zz_size, align 4
  %idxprom604 = sext i32 %263 to i64
  %arrayidx605 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom604
  %264 = load %union.rec*, %union.rec** %arrayidx605, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1606 = bitcast %union.rec* %265 to %struct.word_type*
  %olist607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist607, i32 0, i64 0
  %opred609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx608, i32 0, i32 0
  store %union.rec* %264, %union.rec** %opred609, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %267 = load i32, i32* @zz_size, align 4
  %idxprom610 = sext i32 %267 to i64
  %arrayidx611 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom610
  store %union.rec* %266, %union.rec** %arrayidx611, align 8
  %268 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1612 = bitcast %union.rec* %268 to %struct.word_type*
  %olist613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1612, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist613, i32 0, i64 0
  %osucc615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx614, i32 0, i32 1
  %269 = load %union.rec*, %union.rec** %osucc615, align 8
  %270 = load %union.rec*, %union.rec** %dest_index, align 8
  %cmp616 = icmp ne %union.rec* %269, %270
  br i1 %cmp616, label %if.then.618, label %if.end.949

if.then.618:                                      ; preds = %cond.end.602
  %271 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv619 = zext i8 %271 to i32
  store i32 %conv619, i32* @zz_size, align 4
  %conv620 = sext i32 %conv619 to i64
  %cmp621 = icmp uge i64 %conv620, 265
  br i1 %cmp621, label %if.then.623, label %if.else.625

if.then.623:                                      ; preds = %if.then.618
  %272 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call624 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %272)
  br label %if.end.642

if.else.625:                                      ; preds = %if.then.618
  %273 = load i32, i32* @zz_size, align 4
  %idxprom626 = sext i32 %273 to i64
  %arrayidx627 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom626
  %274 = load %union.rec*, %union.rec** %arrayidx627, align 8
  %cmp628 = icmp eq %union.rec* %274, null
  br i1 %cmp628, label %if.then.630, label %if.else.632

if.then.630:                                      ; preds = %if.else.625
  %275 = load i32, i32* @zz_size, align 4
  %276 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call631 = call %union.rec* @GetMemory(i32 %275, %struct.FILE_POS* %276)
  store %union.rec* %call631, %union.rec** @zz_hold, align 8
  br label %if.end.641

if.else.632:                                      ; preds = %if.else.625
  %277 = load i32, i32* @zz_size, align 4
  %idxprom633 = sext i32 %277 to i64
  %arrayidx634 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom633
  %278 = load %union.rec*, %union.rec** %arrayidx634, align 8
  store %union.rec* %278, %union.rec** @zz_hold, align 8
  store %union.rec* %278, %union.rec** @zz_hold, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1635 = bitcast %union.rec* %279 to %struct.word_type*
  %olist636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist636, i32 0, i64 0
  %opred638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx637, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %opred638, align 8
  %281 = load i32, i32* @zz_size, align 4
  %idxprom639 = sext i32 %281 to i64
  %arrayidx640 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom639
  store %union.rec* %280, %union.rec** %arrayidx640, align 8
  br label %if.end.641

if.end.641:                                       ; preds = %if.else.632, %if.then.630
  br label %if.end.642

if.end.642:                                       ; preds = %if.end.641, %if.then.623
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1643 = bitcast %union.rec* %282 to %struct.word_type*
  %ou1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 1
  %os11645 = bitcast %union.FIRST_UNION* %ou1644 to %struct.anon*
  %otype646 = getelementptr inbounds %struct.anon, %struct.anon* %os11645, i32 0, i32 0
  store i8 17, i8* %otype646, align 1
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1647 = bitcast %union.rec* %284 to %struct.word_type*
  %olist648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1647, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist648, i32 0, i64 1
  %osucc650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx649, i32 0, i32 1
  store %union.rec* %283, %union.rec** %osucc650, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1651 = bitcast %union.rec* %285 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 1
  %opred654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 0
  store %union.rec* %283, %union.rec** %opred654, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1655 = bitcast %union.rec* %286 to %struct.word_type*
  %olist656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist656, i32 0, i64 0
  %osucc658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx657, i32 0, i32 1
  store %union.rec* %283, %union.rec** %osucc658, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1659 = bitcast %union.rec* %287 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 0
  %opred662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 0
  store %union.rec* %283, %union.rec** %opred662, align 8
  store %union.rec* %283, %union.rec** %tinners, align 8
  br label %while.cond.663

while.cond.663:                                   ; preds = %cond.end.946, %if.end.642
  %288 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1664 = bitcast %union.rec* %288 to %struct.word_type*
  %olist665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist665, i32 0, i64 0
  %osucc667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx666, i32 0, i32 1
  %289 = load %union.rec*, %union.rec** %osucc667, align 8
  %290 = load %union.rec*, %union.rec** %dest_index, align 8
  %cmp668 = icmp ne %union.rec* %289, %290
  br i1 %cmp668, label %while.body.670, label %while.end.948

while.body.670:                                   ; preds = %while.cond.663
  %291 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1671 = bitcast %union.rec* %291 to %struct.word_type*
  %olist672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist672, i32 0, i64 0
  %osucc674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx673, i32 0, i32 1
  %292 = load %union.rec*, %union.rec** %osucc674, align 8
  %os1675 = bitcast %union.rec* %292 to %struct.word_type*
  %olist676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist676, i32 0, i64 1
  %opred678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx677, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %opred678, align 8
  store %union.rec* %293, %union.rec** %y, align 8
  br label %for.cond.679

for.cond.679:                                     ; preds = %for.inc.688, %while.body.670
  %294 = load %union.rec*, %union.rec** %y, align 8
  %os1680 = bitcast %union.rec* %294 to %struct.word_type*
  %ou1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 1
  %os11682 = bitcast %union.FIRST_UNION* %ou1681 to %struct.anon*
  %otype683 = getelementptr inbounds %struct.anon, %struct.anon* %os11682, i32 0, i32 0
  %295 = load i8, i8* %otype683, align 1
  %conv684 = zext i8 %295 to i32
  %cmp685 = icmp eq i32 %conv684, 0
  br i1 %cmp685, label %for.body.687, label %for.end.693

for.body.687:                                     ; preds = %for.cond.679
  br label %for.inc.688

for.inc.688:                                      ; preds = %for.body.687
  %296 = load %union.rec*, %union.rec** %y, align 8
  %os1689 = bitcast %union.rec* %296 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 1
  %opred692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred692, align 8
  store %union.rec* %297, %union.rec** %y, align 8
  br label %for.cond.679

for.end.693:                                      ; preds = %for.cond.679
  %298 = load %union.rec*, %union.rec** %y, align 8
  %os1694 = bitcast %union.rec* %298 to %struct.word_type*
  %ou1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1694, i32 0, i32 1
  %os11696 = bitcast %union.FIRST_UNION* %ou1695 to %struct.anon*
  %otype697 = getelementptr inbounds %struct.anon, %struct.anon* %os11696, i32 0, i32 0
  %299 = load i8, i8* %otype697, align 1
  %conv698 = zext i8 %299 to i32
  %cmp699 = icmp eq i32 %conv698, 8
  br i1 %cmp699, label %if.end.703, label %if.then.701

if.then.701:                                      ; preds = %for.end.693
  %300 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call702 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %300, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.703

if.end.703:                                       ; preds = %if.then.701, %for.end.693
  %301 = load %union.rec*, %union.rec** %y, align 8
  %os2a704 = bitcast %union.rec* %301 to %struct.head_type*
  %oopt_components705 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a704, i32 0, i32 8
  %302 = load %union.rec*, %union.rec** %oopt_components705, align 8
  %cmp706 = icmp ne %union.rec* %302, null
  br i1 %cmp706, label %if.then.708, label %if.end.714

if.then.708:                                      ; preds = %if.end.703
  %303 = load %union.rec*, %union.rec** %y, align 8
  %os2a709 = bitcast %union.rec* %303 to %struct.head_type*
  %oopt_components710 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a709, i32 0, i32 8
  %304 = load %union.rec*, %union.rec** %oopt_components710, align 8
  %call711 = call i32 @DisposeObject(%union.rec* %304)
  %305 = load %union.rec*, %union.rec** %y, align 8
  %os2a712 = bitcast %union.rec* %305 to %struct.head_type*
  %oopt_components713 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a712, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components713, align 8
  br label %if.end.714

if.end.714:                                       ; preds = %if.then.708, %if.end.703
  %306 = load %union.rec*, %union.rec** %y, align 8
  call void @DetachGalley(%union.rec* %306)
  %307 = load %union.rec*, %union.rec** %y, align 8
  %os1715 = bitcast %union.rec* %307 to %struct.word_type*
  %olist716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist716, i32 0, i64 1
  %osucc718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx717, i32 0, i32 1
  %308 = load %union.rec*, %union.rec** %osucc718, align 8
  %os1719 = bitcast %union.rec* %308 to %struct.word_type*
  %olist720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1719, i32 0, i32 0
  %arrayidx721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist720, i32 0, i64 0
  %opred722 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx721, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %opred722, align 8
  store %union.rec* %309, %union.rec** %index, align 8
  br label %for.cond.723

for.cond.723:                                     ; preds = %for.inc.732, %if.end.714
  %310 = load %union.rec*, %union.rec** %index, align 8
  %os1724 = bitcast %union.rec* %310 to %struct.word_type*
  %ou1725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 1
  %os11726 = bitcast %union.FIRST_UNION* %ou1725 to %struct.anon*
  %otype727 = getelementptr inbounds %struct.anon, %struct.anon* %os11726, i32 0, i32 0
  %311 = load i8, i8* %otype727, align 1
  %conv728 = zext i8 %311 to i32
  %cmp729 = icmp eq i32 %conv728, 0
  br i1 %cmp729, label %for.body.731, label %for.end.737

for.body.731:                                     ; preds = %for.cond.723
  br label %for.inc.732

for.inc.732:                                      ; preds = %for.body.731
  %312 = load %union.rec*, %union.rec** %index, align 8
  %os1733 = bitcast %union.rec* %312 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 0
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  %313 = load %union.rec*, %union.rec** %opred736, align 8
  store %union.rec* %313, %union.rec** %index, align 8
  br label %for.cond.723

for.end.737:                                      ; preds = %for.cond.723
  %314 = load %union.rec*, %union.rec** %index, align 8
  %os1738 = bitcast %union.rec* %314 to %struct.word_type*
  %olist739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 0
  %arrayidx740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist739, i32 0, i64 1
  %osucc741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx740, i32 0, i32 1
  %315 = load %union.rec*, %union.rec** %osucc741, align 8
  store %union.rec* %315, %union.rec** @xx_link, align 8
  %316 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1742 = bitcast %union.rec* %317 to %struct.word_type*
  %olist743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist743, i32 0, i64 0
  %osucc745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx744, i32 0, i32 1
  %318 = load %union.rec*, %union.rec** %osucc745, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp746 = icmp eq %union.rec* %318, %319
  br i1 %cmp746, label %cond.true.748, label %cond.false.749

cond.true.748:                                    ; preds = %for.end.737
  br label %cond.end.778

cond.false.749:                                   ; preds = %for.end.737
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1750 = bitcast %union.rec* %320 to %struct.word_type*
  %olist751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1750, i32 0, i32 0
  %arrayidx752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist751, i32 0, i64 0
  %osucc753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx752, i32 0, i32 1
  %321 = load %union.rec*, %union.rec** %osucc753, align 8
  store %union.rec* %321, %union.rec** @zz_res, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1754 = bitcast %union.rec* %322 to %struct.word_type*
  %olist755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1754, i32 0, i32 0
  %arrayidx756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist755, i32 0, i64 0
  %opred757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx756, i32 0, i32 0
  %323 = load %union.rec*, %union.rec** %opred757, align 8
  %324 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1758 = bitcast %union.rec* %324 to %struct.word_type*
  %olist759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1758, i32 0, i32 0
  %arrayidx760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist759, i32 0, i64 0
  %opred761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx760, i32 0, i32 0
  store %union.rec* %323, %union.rec** %opred761, align 8
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1762 = bitcast %union.rec* %326 to %struct.word_type*
  %olist763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1762, i32 0, i32 0
  %arrayidx764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist763, i32 0, i64 0
  %opred765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx764, i32 0, i32 0
  %327 = load %union.rec*, %union.rec** %opred765, align 8
  %os1766 = bitcast %union.rec* %327 to %struct.word_type*
  %olist767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1766, i32 0, i32 0
  %arrayidx768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist767, i32 0, i64 0
  %osucc769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx768, i32 0, i32 1
  store %union.rec* %325, %union.rec** %osucc769, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1770 = bitcast %union.rec* %329 to %struct.word_type*
  %olist771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1770, i32 0, i32 0
  %arrayidx772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist771, i32 0, i64 0
  %osucc773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx772, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc773, align 8
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1774 = bitcast %union.rec* %330 to %struct.word_type*
  %olist775 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1774, i32 0, i32 0
  %arrayidx776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist775, i32 0, i64 0
  %opred777 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx776, i32 0, i32 0
  store %union.rec* %328, %union.rec** %opred777, align 8
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.778

cond.end.778:                                     ; preds = %cond.false.749, %cond.true.748
  %cond779 = phi %union.rec* [ null, %cond.true.748 ], [ %331, %cond.false.749 ]
  %332 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %332, %union.rec** @zz_res, align 8
  %333 = load %union.rec*, %union.rec** %start_search, align 8
  %os1780 = bitcast %union.rec* %333 to %struct.word_type*
  %olist781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1780, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist781, i32 0, i64 0
  %osucc783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx782, i32 0, i32 1
  %334 = load %union.rec*, %union.rec** %osucc783, align 8
  store %union.rec* %334, %union.rec** @zz_hold, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp784 = icmp eq %union.rec* %335, null
  br i1 %cmp784, label %cond.true.786, label %cond.false.787

cond.true.786:                                    ; preds = %cond.end.778
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.822

cond.false.787:                                   ; preds = %cond.end.778
  %337 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp788 = icmp eq %union.rec* %337, null
  br i1 %cmp788, label %cond.true.790, label %cond.false.791

cond.true.790:                                    ; preds = %cond.false.787
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.820

cond.false.791:                                   ; preds = %cond.false.787
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1792 = bitcast %union.rec* %339 to %struct.word_type*
  %olist793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 0
  %arrayidx794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist793, i32 0, i64 0
  %opred795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx794, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %opred795, align 8
  store %union.rec* %340, %union.rec** @zz_tmp, align 8
  %341 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1796 = bitcast %union.rec* %341 to %struct.word_type*
  %olist797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 0
  %arrayidx798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist797, i32 0, i64 0
  %opred799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx798, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %opred799, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1800 = bitcast %union.rec* %343 to %struct.word_type*
  %olist801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1800, i32 0, i32 0
  %arrayidx802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist801, i32 0, i64 0
  %opred803 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx802, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred803, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1804 = bitcast %union.rec* %345 to %struct.word_type*
  %olist805 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1804, i32 0, i32 0
  %arrayidx806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist805, i32 0, i64 0
  %opred807 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx806, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %opred807, align 8
  %os1808 = bitcast %union.rec* %346 to %struct.word_type*
  %olist809 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1808, i32 0, i32 0
  %arrayidx810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist809, i32 0, i64 0
  %osucc811 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx810, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc811, align 8
  %347 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1812 = bitcast %union.rec* %348 to %struct.word_type*
  %olist813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1812, i32 0, i32 0
  %arrayidx814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist813, i32 0, i64 0
  %opred815 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx814, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred815, align 8
  %349 = load %union.rec*, %union.rec** @zz_res, align 8
  %350 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1816 = bitcast %union.rec* %350 to %struct.word_type*
  %olist817 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1816, i32 0, i32 0
  %arrayidx818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist817, i32 0, i64 0
  %osucc819 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx818, i32 0, i32 1
  store %union.rec* %349, %union.rec** %osucc819, align 8
  br label %cond.end.820

cond.end.820:                                     ; preds = %cond.false.791, %cond.true.790
  %cond821 = phi %union.rec* [ %338, %cond.true.790 ], [ %349, %cond.false.791 ]
  br label %cond.end.822

cond.end.822:                                     ; preds = %cond.end.820, %cond.true.786
  %cond823 = phi %union.rec* [ %336, %cond.true.786 ], [ %cond821, %cond.end.820 ]
  %351 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv824 = zext i8 %351 to i32
  store i32 %conv824, i32* @zz_size, align 4
  %conv825 = sext i32 %conv824 to i64
  %cmp826 = icmp uge i64 %conv825, 265
  br i1 %cmp826, label %if.then.828, label %if.else.830

if.then.828:                                      ; preds = %cond.end.822
  %352 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call829 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %352)
  br label %if.end.847

if.else.830:                                      ; preds = %cond.end.822
  %353 = load i32, i32* @zz_size, align 4
  %idxprom831 = sext i32 %353 to i64
  %arrayidx832 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom831
  %354 = load %union.rec*, %union.rec** %arrayidx832, align 8
  %cmp833 = icmp eq %union.rec* %354, null
  br i1 %cmp833, label %if.then.835, label %if.else.837

if.then.835:                                      ; preds = %if.else.830
  %355 = load i32, i32* @zz_size, align 4
  %356 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call836 = call %union.rec* @GetMemory(i32 %355, %struct.FILE_POS* %356)
  store %union.rec* %call836, %union.rec** @zz_hold, align 8
  br label %if.end.846

if.else.837:                                      ; preds = %if.else.830
  %357 = load i32, i32* @zz_size, align 4
  %idxprom838 = sext i32 %357 to i64
  %arrayidx839 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom838
  %358 = load %union.rec*, %union.rec** %arrayidx839, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1840 = bitcast %union.rec* %359 to %struct.word_type*
  %olist841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1840, i32 0, i32 0
  %arrayidx842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist841, i32 0, i64 0
  %opred843 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx842, i32 0, i32 0
  %360 = load %union.rec*, %union.rec** %opred843, align 8
  %361 = load i32, i32* @zz_size, align 4
  %idxprom844 = sext i32 %361 to i64
  %arrayidx845 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom844
  store %union.rec* %360, %union.rec** %arrayidx845, align 8
  br label %if.end.846

if.end.846:                                       ; preds = %if.else.837, %if.then.835
  br label %if.end.847

if.end.847:                                       ; preds = %if.end.846, %if.then.828
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1848 = bitcast %union.rec* %362 to %struct.word_type*
  %ou1849 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1848, i32 0, i32 1
  %os11850 = bitcast %union.FIRST_UNION* %ou1849 to %struct.anon*
  %otype851 = getelementptr inbounds %struct.anon, %struct.anon* %os11850, i32 0, i32 0
  store i8 0, i8* %otype851, align 1
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1852 = bitcast %union.rec* %364 to %struct.word_type*
  %olist853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1852, i32 0, i32 0
  %arrayidx854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist853, i32 0, i64 1
  %osucc855 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx854, i32 0, i32 1
  store %union.rec* %363, %union.rec** %osucc855, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1856 = bitcast %union.rec* %365 to %struct.word_type*
  %olist857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1856, i32 0, i32 0
  %arrayidx858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist857, i32 0, i64 1
  %opred859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx858, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred859, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1860 = bitcast %union.rec* %366 to %struct.word_type*
  %olist861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1860, i32 0, i32 0
  %arrayidx862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist861, i32 0, i64 0
  %osucc863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx862, i32 0, i32 1
  store %union.rec* %363, %union.rec** %osucc863, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1864 = bitcast %union.rec* %367 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %opred867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred867, align 8
  store %union.rec* %363, %union.rec** @xx_link, align 8
  %368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %368, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** %tinners, align 8
  store %union.rec* %369, %union.rec** @zz_hold, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp868 = icmp eq %union.rec* %370, null
  br i1 %cmp868, label %cond.true.870, label %cond.false.871

cond.true.870:                                    ; preds = %if.end.847
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.906

cond.false.871:                                   ; preds = %if.end.847
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp872 = icmp eq %union.rec* %372, null
  br i1 %cmp872, label %cond.true.874, label %cond.false.875

cond.true.874:                                    ; preds = %cond.false.871
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.904

cond.false.875:                                   ; preds = %cond.false.871
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1876 = bitcast %union.rec* %374 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 0
  %opred879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred879, align 8
  store %union.rec* %375, %union.rec** @zz_tmp, align 8
  %376 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1880 = bitcast %union.rec* %376 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 0
  %opred883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 0
  %377 = load %union.rec*, %union.rec** %opred883, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1884 = bitcast %union.rec* %378 to %struct.word_type*
  %olist885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1884, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist885, i32 0, i64 0
  %opred887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx886, i32 0, i32 0
  store %union.rec* %377, %union.rec** %opred887, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1888 = bitcast %union.rec* %380 to %struct.word_type*
  %olist889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1888, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist889, i32 0, i64 0
  %opred891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx890, i32 0, i32 0
  %381 = load %union.rec*, %union.rec** %opred891, align 8
  %os1892 = bitcast %union.rec* %381 to %struct.word_type*
  %olist893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1892, i32 0, i32 0
  %arrayidx894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist893, i32 0, i64 0
  %osucc895 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx894, i32 0, i32 1
  store %union.rec* %379, %union.rec** %osucc895, align 8
  %382 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1896 = bitcast %union.rec* %383 to %struct.word_type*
  %olist897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1896, i32 0, i32 0
  %arrayidx898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist897, i32 0, i64 0
  %opred899 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx898, i32 0, i32 0
  store %union.rec* %382, %union.rec** %opred899, align 8
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  %385 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1900 = bitcast %union.rec* %385 to %struct.word_type*
  %olist901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist901, i32 0, i64 0
  %osucc903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx902, i32 0, i32 1
  store %union.rec* %384, %union.rec** %osucc903, align 8
  br label %cond.end.904

cond.end.904:                                     ; preds = %cond.false.875, %cond.true.874
  %cond905 = phi %union.rec* [ %373, %cond.true.874 ], [ %384, %cond.false.875 ]
  br label %cond.end.906

cond.end.906:                                     ; preds = %cond.end.904, %cond.true.870
  %cond907 = phi %union.rec* [ %371, %cond.true.870 ], [ %cond905, %cond.end.904 ]
  %386 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %386, %union.rec** @zz_res, align 8
  %387 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %387, %union.rec** @zz_hold, align 8
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp908 = icmp eq %union.rec* %388, null
  br i1 %cmp908, label %cond.true.910, label %cond.false.911

cond.true.910:                                    ; preds = %cond.end.906
  %389 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.946

cond.false.911:                                   ; preds = %cond.end.906
  %390 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp912 = icmp eq %union.rec* %390, null
  br i1 %cmp912, label %cond.true.914, label %cond.false.915

cond.true.914:                                    ; preds = %cond.false.911
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.944

cond.false.915:                                   ; preds = %cond.false.911
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1916 = bitcast %union.rec* %392 to %struct.word_type*
  %olist917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1916, i32 0, i32 0
  %arrayidx918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist917, i32 0, i64 1
  %opred919 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx918, i32 0, i32 0
  %393 = load %union.rec*, %union.rec** %opred919, align 8
  store %union.rec* %393, %union.rec** @zz_tmp, align 8
  %394 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1920 = bitcast %union.rec* %394 to %struct.word_type*
  %olist921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1920, i32 0, i32 0
  %arrayidx922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist921, i32 0, i64 1
  %opred923 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx922, i32 0, i32 0
  %395 = load %union.rec*, %union.rec** %opred923, align 8
  %396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1924 = bitcast %union.rec* %396 to %struct.word_type*
  %olist925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1924, i32 0, i32 0
  %arrayidx926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist925, i32 0, i64 1
  %opred927 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx926, i32 0, i32 0
  store %union.rec* %395, %union.rec** %opred927, align 8
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %398 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1928 = bitcast %union.rec* %398 to %struct.word_type*
  %olist929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1928, i32 0, i32 0
  %arrayidx930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist929, i32 0, i64 1
  %opred931 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx930, i32 0, i32 0
  %399 = load %union.rec*, %union.rec** %opred931, align 8
  %os1932 = bitcast %union.rec* %399 to %struct.word_type*
  %olist933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1932, i32 0, i32 0
  %arrayidx934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist933, i32 0, i64 1
  %osucc935 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx934, i32 0, i32 1
  store %union.rec* %397, %union.rec** %osucc935, align 8
  %400 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %401 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1936 = bitcast %union.rec* %401 to %struct.word_type*
  %olist937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1936, i32 0, i32 0
  %arrayidx938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist937, i32 0, i64 1
  %opred939 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx938, i32 0, i32 0
  store %union.rec* %400, %union.rec** %opred939, align 8
  %402 = load %union.rec*, %union.rec** @zz_res, align 8
  %403 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1940 = bitcast %union.rec* %403 to %struct.word_type*
  %olist941 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1940, i32 0, i32 0
  %arrayidx942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist941, i32 0, i64 1
  %osucc943 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx942, i32 0, i32 1
  store %union.rec* %402, %union.rec** %osucc943, align 8
  br label %cond.end.944

cond.end.944:                                     ; preds = %cond.false.915, %cond.true.914
  %cond945 = phi %union.rec* [ %391, %cond.true.914 ], [ %402, %cond.false.915 ]
  br label %cond.end.946

cond.end.946:                                     ; preds = %cond.end.944, %cond.true.910
  %cond947 = phi %union.rec* [ %389, %cond.true.910 ], [ %cond945, %cond.end.944 ]
  br label %while.cond.663

while.end.948:                                    ; preds = %while.cond.663
  %404 = load %union.rec*, %union.rec** %tinners, align 8
  call void @FlushInners(%union.rec* %404, %union.rec* null)
  br label %if.end.949

if.end.949:                                       ; preds = %while.end.948, %cond.end.602
  %405 = load %union.rec*, %union.rec** %inners, align 8
  %cmp950 = icmp ne %union.rec* %405, null
  br i1 %cmp950, label %if.then.952, label %if.end.953

if.then.952:                                      ; preds = %if.end.949
  %406 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %406, %union.rec* null)
  br label %if.end.953

if.end.953:                                       ; preds = %if.then.952, %if.end.949
  %407 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1954 = bitcast %union.rec* %407 to %struct.word_type*
  %ou2955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1954, i32 0, i32 2
  %os23956 = bitcast %union.SECOND_UNION* %ou2955 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23956, i32 0, i32 2
  %bf.load957 = load i16, i16* %oblocked, align 2
  %bf.lshr958 = lshr i16 %bf.load957, 5
  %bf.clear959 = and i16 %bf.lshr958, 1
  %bf.cast960 = zext i16 %bf.clear959 to i32
  %tobool961 = icmp ne i32 %bf.cast960, 0
  br i1 %tobool961, label %if.then.962, label %if.else.1281

if.then.962:                                      ; preds = %if.end.953
  %408 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1963 = bitcast %union.rec* %408 to %struct.word_type*
  %olist964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1963, i32 0, i32 0
  %arrayidx965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist964, i32 0, i64 1
  %osucc966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx965, i32 0, i32 1
  %409 = load %union.rec*, %union.rec** %osucc966, align 8
  %os1967 = bitcast %union.rec* %409 to %struct.word_type*
  %olist968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist968, i32 0, i64 0
  %opred970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx969, i32 0, i32 0
  %410 = load %union.rec*, %union.rec** %opred970, align 8
  store %union.rec* %410, %union.rec** %y, align 8
  br label %for.cond.971

for.cond.971:                                     ; preds = %for.inc.980, %if.then.962
  %411 = load %union.rec*, %union.rec** %y, align 8
  %os1972 = bitcast %union.rec* %411 to %struct.word_type*
  %ou1973 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1972, i32 0, i32 1
  %os11974 = bitcast %union.FIRST_UNION* %ou1973 to %struct.anon*
  %otype975 = getelementptr inbounds %struct.anon, %struct.anon* %os11974, i32 0, i32 0
  %412 = load i8, i8* %otype975, align 1
  %conv976 = zext i8 %412 to i32
  %cmp977 = icmp eq i32 %conv976, 0
  br i1 %cmp977, label %for.body.979, label %for.end.985

for.body.979:                                     ; preds = %for.cond.971
  br label %for.inc.980

for.inc.980:                                      ; preds = %for.body.979
  %413 = load %union.rec*, %union.rec** %y, align 8
  %os1981 = bitcast %union.rec* %413 to %struct.word_type*
  %olist982 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1981, i32 0, i32 0
  %arrayidx983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist982, i32 0, i64 0
  %opred984 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx983, i32 0, i32 0
  %414 = load %union.rec*, %union.rec** %opred984, align 8
  store %union.rec* %414, %union.rec** %y, align 8
  br label %for.cond.971

for.end.985:                                      ; preds = %for.cond.971
  %415 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %415, %union.rec** @xx_hold, align 8
  br label %while.cond.986

while.cond.986:                                   ; preds = %cond.end.1103, %for.end.985
  %416 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1987 = bitcast %union.rec* %416 to %struct.word_type*
  %olist988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1987, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist988, i32 0, i64 1
  %osucc990 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx989, i32 0, i32 1
  %417 = load %union.rec*, %union.rec** %osucc990, align 8
  %418 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp991 = icmp ne %union.rec* %417, %418
  br i1 %cmp991, label %while.body.993, label %while.end.1113

while.body.993:                                   ; preds = %while.cond.986
  %419 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1994 = bitcast %union.rec* %419 to %struct.word_type*
  %olist995 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1994, i32 0, i32 0
  %arrayidx996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist995, i32 0, i64 1
  %osucc997 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx996, i32 0, i32 1
  %420 = load %union.rec*, %union.rec** %osucc997, align 8
  store %union.rec* %420, %union.rec** @xx_link, align 8
  %421 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %421, %union.rec** @zz_hold, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1998 = bitcast %union.rec* %422 to %struct.word_type*
  %olist999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1998, i32 0, i32 0
  %arrayidx1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist999, i32 0, i64 1
  %osucc1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1000, i32 0, i32 1
  %423 = load %union.rec*, %union.rec** %osucc1001, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1002 = icmp eq %union.rec* %423, %424
  br i1 %cmp1002, label %cond.true.1004, label %cond.false.1005

cond.true.1004:                                   ; preds = %while.body.993
  br label %cond.end.1034

cond.false.1005:                                  ; preds = %while.body.993
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11006 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11006, i32 0, i32 0
  %arrayidx1008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1007, i32 0, i64 1
  %osucc1009 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1008, i32 0, i32 1
  %426 = load %union.rec*, %union.rec** %osucc1009, align 8
  store %union.rec* %426, %union.rec** @zz_res, align 8
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11010 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11010, i32 0, i32 0
  %arrayidx1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1011, i32 0, i64 1
  %opred1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1012, i32 0, i32 0
  %428 = load %union.rec*, %union.rec** %opred1013, align 8
  %429 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11014 = bitcast %union.rec* %429 to %struct.word_type*
  %olist1015 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11014, i32 0, i32 0
  %arrayidx1016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1015, i32 0, i64 1
  %opred1017 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1016, i32 0, i32 0
  store %union.rec* %428, %union.rec** %opred1017, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11018 = bitcast %union.rec* %431 to %struct.word_type*
  %olist1019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11018, i32 0, i32 0
  %arrayidx1020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1019, i32 0, i64 1
  %opred1021 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1020, i32 0, i32 0
  %432 = load %union.rec*, %union.rec** %opred1021, align 8
  %os11022 = bitcast %union.rec* %432 to %struct.word_type*
  %olist1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11022, i32 0, i32 0
  %arrayidx1024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1023, i32 0, i64 1
  %osucc1025 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1024, i32 0, i32 1
  store %union.rec* %430, %union.rec** %osucc1025, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11026 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1027 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11026, i32 0, i32 0
  %arrayidx1028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1027, i32 0, i64 1
  %osucc1029 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1028, i32 0, i32 1
  store %union.rec* %433, %union.rec** %osucc1029, align 8
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11030 = bitcast %union.rec* %435 to %struct.word_type*
  %olist1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11030, i32 0, i32 0
  %arrayidx1032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1031, i32 0, i64 1
  %opred1033 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1032, i32 0, i32 0
  store %union.rec* %433, %union.rec** %opred1033, align 8
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1034

cond.end.1034:                                    ; preds = %cond.false.1005, %cond.true.1004
  %cond1035 = phi %union.rec* [ null, %cond.true.1004 ], [ %436, %cond.false.1005 ]
  %437 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %437, %union.rec** @zz_hold, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11036 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1037 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11036, i32 0, i32 0
  %arrayidx1038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1037, i32 0, i64 0
  %osucc1039 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1038, i32 0, i32 1
  %439 = load %union.rec*, %union.rec** %osucc1039, align 8
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1040 = icmp eq %union.rec* %439, %440
  br i1 %cmp1040, label %cond.true.1042, label %cond.false.1043

cond.true.1042:                                   ; preds = %cond.end.1034
  br label %cond.end.1072

cond.false.1043:                                  ; preds = %cond.end.1034
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11044 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11044, i32 0, i32 0
  %arrayidx1046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1045, i32 0, i64 0
  %osucc1047 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1046, i32 0, i32 1
  %442 = load %union.rec*, %union.rec** %osucc1047, align 8
  store %union.rec* %442, %union.rec** @zz_res, align 8
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11048 = bitcast %union.rec* %443 to %struct.word_type*
  %olist1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11048, i32 0, i32 0
  %arrayidx1050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1049, i32 0, i64 0
  %opred1051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1050, i32 0, i32 0
  %444 = load %union.rec*, %union.rec** %opred1051, align 8
  %445 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11052 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11052, i32 0, i32 0
  %arrayidx1054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1053, i32 0, i64 0
  %opred1055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1054, i32 0, i32 0
  store %union.rec* %444, %union.rec** %opred1055, align 8
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11056 = bitcast %union.rec* %447 to %struct.word_type*
  %olist1057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11056, i32 0, i32 0
  %arrayidx1058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1057, i32 0, i64 0
  %opred1059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1058, i32 0, i32 0
  %448 = load %union.rec*, %union.rec** %opred1059, align 8
  %os11060 = bitcast %union.rec* %448 to %struct.word_type*
  %olist1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 0
  %arrayidx1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1061, i32 0, i64 0
  %osucc1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1062, i32 0, i32 1
  store %union.rec* %446, %union.rec** %osucc1063, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11064 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11064, i32 0, i32 0
  %arrayidx1066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1065, i32 0, i64 0
  %osucc1067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1066, i32 0, i32 1
  store %union.rec* %449, %union.rec** %osucc1067, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11068 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11068, i32 0, i32 0
  %arrayidx1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1069, i32 0, i64 0
  %opred1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1070, i32 0, i32 0
  store %union.rec* %449, %union.rec** %opred1071, align 8
  %452 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1072

cond.end.1072:                                    ; preds = %cond.false.1043, %cond.true.1042
  %cond1073 = phi %union.rec* [ null, %cond.true.1042 ], [ %452, %cond.false.1043 ]
  %453 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %453, %union.rec** @zz_hold, align 8
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %454, %union.rec** @zz_hold, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11074 = bitcast %union.rec* %455 to %struct.word_type*
  %ou11075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11074, i32 0, i32 1
  %os111076 = bitcast %union.FIRST_UNION* %ou11075 to %struct.anon*
  %otype1077 = getelementptr inbounds %struct.anon, %struct.anon* %os111076, i32 0, i32 0
  %456 = load i8, i8* %otype1077, align 1
  %conv1078 = zext i8 %456 to i32
  %cmp1079 = icmp eq i32 %conv1078, 11
  br i1 %cmp1079, label %cond.true.1089, label %lor.lhs.false.1081

lor.lhs.false.1081:                               ; preds = %cond.end.1072
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11082 = bitcast %union.rec* %457 to %struct.word_type*
  %ou11083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11082, i32 0, i32 1
  %os111084 = bitcast %union.FIRST_UNION* %ou11083 to %struct.anon*
  %otype1085 = getelementptr inbounds %struct.anon, %struct.anon* %os111084, i32 0, i32 0
  %458 = load i8, i8* %otype1085, align 1
  %conv1086 = zext i8 %458 to i32
  %cmp1087 = icmp eq i32 %conv1086, 12
  br i1 %cmp1087, label %cond.true.1089, label %cond.false.1095

cond.true.1089:                                   ; preds = %lor.lhs.false.1081, %cond.end.1072
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11090 = bitcast %union.rec* %459 to %struct.word_type*
  %ou11091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 1
  %os111092 = bitcast %union.FIRST_UNION* %ou11091 to %struct.anon*
  %orec_size1093 = getelementptr inbounds %struct.anon, %struct.anon* %os111092, i32 0, i32 1
  %460 = load i8, i8* %orec_size1093, align 1
  %conv1094 = zext i8 %460 to i32
  br label %cond.end.1103

cond.false.1095:                                  ; preds = %lor.lhs.false.1081
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11096 = bitcast %union.rec* %461 to %struct.word_type*
  %ou11097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11096, i32 0, i32 1
  %os111098 = bitcast %union.FIRST_UNION* %ou11097 to %struct.anon*
  %otype1099 = getelementptr inbounds %struct.anon, %struct.anon* %os111098, i32 0, i32 0
  %462 = load i8, i8* %otype1099, align 1
  %idxprom1100 = zext i8 %462 to i64
  %arrayidx1101 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1100
  %463 = load i8, i8* %arrayidx1101, align 1
  %conv1102 = zext i8 %463 to i32
  br label %cond.end.1103

cond.end.1103:                                    ; preds = %cond.false.1095, %cond.true.1089
  %cond1104 = phi i32 [ %conv1094, %cond.true.1089 ], [ %conv1102, %cond.false.1095 ]
  store i32 %cond1104, i32* @zz_size, align 4
  %464 = load i32, i32* @zz_size, align 4
  %idxprom1105 = sext i32 %464 to i64
  %arrayidx1106 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1105
  %465 = load %union.rec*, %union.rec** %arrayidx1106, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11107 = bitcast %union.rec* %466 to %struct.word_type*
  %olist1108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11107, i32 0, i32 0
  %arrayidx1109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1108, i32 0, i64 0
  %opred1110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1109, i32 0, i32 0
  store %union.rec* %465, %union.rec** %opred1110, align 8
  %467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %468 = load i32, i32* @zz_size, align 4
  %idxprom1111 = sext i32 %468 to i64
  %arrayidx1112 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1111
  store %union.rec* %467, %union.rec** %arrayidx1112, align 8
  br label %while.cond.986

while.end.1113:                                   ; preds = %while.cond.986
  br label %while.cond.1114

while.cond.1114:                                  ; preds = %cond.end.1231, %while.end.1113
  %469 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os11115 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11115, i32 0, i32 0
  %arrayidx1117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1116, i32 0, i64 0
  %osucc1118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1117, i32 0, i32 1
  %470 = load %union.rec*, %union.rec** %osucc1118, align 8
  %471 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp1119 = icmp ne %union.rec* %470, %471
  br i1 %cmp1119, label %while.body.1121, label %while.end.1241

while.body.1121:                                  ; preds = %while.cond.1114
  %472 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os11122 = bitcast %union.rec* %472 to %struct.word_type*
  %olist1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11122, i32 0, i32 0
  %arrayidx1124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1123, i32 0, i64 0
  %osucc1125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1124, i32 0, i32 1
  %473 = load %union.rec*, %union.rec** %osucc1125, align 8
  store %union.rec* %473, %union.rec** @xx_link, align 8
  %474 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %474, %union.rec** @zz_hold, align 8
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11126 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1127, i32 0, i64 1
  %osucc1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1128, i32 0, i32 1
  %476 = load %union.rec*, %union.rec** %osucc1129, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1130 = icmp eq %union.rec* %476, %477
  br i1 %cmp1130, label %cond.true.1132, label %cond.false.1133

cond.true.1132:                                   ; preds = %while.body.1121
  br label %cond.end.1162

cond.false.1133:                                  ; preds = %while.body.1121
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11134 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11134, i32 0, i32 0
  %arrayidx1136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1135, i32 0, i64 1
  %osucc1137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1136, i32 0, i32 1
  %479 = load %union.rec*, %union.rec** %osucc1137, align 8
  store %union.rec* %479, %union.rec** @zz_res, align 8
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11138 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 0
  %arrayidx1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1139, i32 0, i64 1
  %opred1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1140, i32 0, i32 0
  %481 = load %union.rec*, %union.rec** %opred1141, align 8
  %482 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11142 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11142, i32 0, i32 0
  %arrayidx1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1143, i32 0, i64 1
  %opred1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1144, i32 0, i32 0
  store %union.rec* %481, %union.rec** %opred1145, align 8
  %483 = load %union.rec*, %union.rec** @zz_res, align 8
  %484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11146 = bitcast %union.rec* %484 to %struct.word_type*
  %olist1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 0
  %arrayidx1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1147, i32 0, i64 1
  %opred1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1148, i32 0, i32 0
  %485 = load %union.rec*, %union.rec** %opred1149, align 8
  %os11150 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11150, i32 0, i32 0
  %arrayidx1152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1151, i32 0, i64 1
  %osucc1153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1152, i32 0, i32 1
  store %union.rec* %483, %union.rec** %osucc1153, align 8
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11154 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11154, i32 0, i32 0
  %arrayidx1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1155, i32 0, i64 1
  %osucc1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1156, i32 0, i32 1
  store %union.rec* %486, %union.rec** %osucc1157, align 8
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11158 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11158, i32 0, i32 0
  %arrayidx1160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1159, i32 0, i64 1
  %opred1161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1160, i32 0, i32 0
  store %union.rec* %486, %union.rec** %opred1161, align 8
  %489 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1162

cond.end.1162:                                    ; preds = %cond.false.1133, %cond.true.1132
  %cond1163 = phi %union.rec* [ null, %cond.true.1132 ], [ %489, %cond.false.1133 ]
  %490 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %490, %union.rec** @zz_hold, align 8
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11164 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11164, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1165, i32 0, i64 0
  %osucc1167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1166, i32 0, i32 1
  %492 = load %union.rec*, %union.rec** %osucc1167, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1168 = icmp eq %union.rec* %492, %493
  br i1 %cmp1168, label %cond.true.1170, label %cond.false.1171

cond.true.1170:                                   ; preds = %cond.end.1162
  br label %cond.end.1200

cond.false.1171:                                  ; preds = %cond.end.1162
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11172 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11172, i32 0, i32 0
  %arrayidx1174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1173, i32 0, i64 0
  %osucc1175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1174, i32 0, i32 1
  %495 = load %union.rec*, %union.rec** %osucc1175, align 8
  store %union.rec* %495, %union.rec** @zz_res, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11176 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11176, i32 0, i32 0
  %arrayidx1178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1177, i32 0, i64 0
  %opred1179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1178, i32 0, i32 0
  %497 = load %union.rec*, %union.rec** %opred1179, align 8
  %498 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11180 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11180, i32 0, i32 0
  %arrayidx1182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1181, i32 0, i64 0
  %opred1183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1182, i32 0, i32 0
  store %union.rec* %497, %union.rec** %opred1183, align 8
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11184 = bitcast %union.rec* %500 to %struct.word_type*
  %olist1185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11184, i32 0, i32 0
  %arrayidx1186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1185, i32 0, i64 0
  %opred1187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1186, i32 0, i32 0
  %501 = load %union.rec*, %union.rec** %opred1187, align 8
  %os11188 = bitcast %union.rec* %501 to %struct.word_type*
  %olist1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11188, i32 0, i32 0
  %arrayidx1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1189, i32 0, i64 0
  %osucc1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1190, i32 0, i32 1
  store %union.rec* %499, %union.rec** %osucc1191, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11192 = bitcast %union.rec* %503 to %struct.word_type*
  %olist1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11192, i32 0, i32 0
  %arrayidx1194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1193, i32 0, i64 0
  %osucc1195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1194, i32 0, i32 1
  store %union.rec* %502, %union.rec** %osucc1195, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11196 = bitcast %union.rec* %504 to %struct.word_type*
  %olist1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11196, i32 0, i32 0
  %arrayidx1198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1197, i32 0, i64 0
  %opred1199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1198, i32 0, i32 0
  store %union.rec* %502, %union.rec** %opred1199, align 8
  %505 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1200

cond.end.1200:                                    ; preds = %cond.false.1171, %cond.true.1170
  %cond1201 = phi %union.rec* [ null, %cond.true.1170 ], [ %505, %cond.false.1171 ]
  %506 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %506, %union.rec** @zz_hold, align 8
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %507, %union.rec** @zz_hold, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11202 = bitcast %union.rec* %508 to %struct.word_type*
  %ou11203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11202, i32 0, i32 1
  %os111204 = bitcast %union.FIRST_UNION* %ou11203 to %struct.anon*
  %otype1205 = getelementptr inbounds %struct.anon, %struct.anon* %os111204, i32 0, i32 0
  %509 = load i8, i8* %otype1205, align 1
  %conv1206 = zext i8 %509 to i32
  %cmp1207 = icmp eq i32 %conv1206, 11
  br i1 %cmp1207, label %cond.true.1217, label %lor.lhs.false.1209

lor.lhs.false.1209:                               ; preds = %cond.end.1200
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11210 = bitcast %union.rec* %510 to %struct.word_type*
  %ou11211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11210, i32 0, i32 1
  %os111212 = bitcast %union.FIRST_UNION* %ou11211 to %struct.anon*
  %otype1213 = getelementptr inbounds %struct.anon, %struct.anon* %os111212, i32 0, i32 0
  %511 = load i8, i8* %otype1213, align 1
  %conv1214 = zext i8 %511 to i32
  %cmp1215 = icmp eq i32 %conv1214, 12
  br i1 %cmp1215, label %cond.true.1217, label %cond.false.1223

cond.true.1217:                                   ; preds = %lor.lhs.false.1209, %cond.end.1200
  %512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11218 = bitcast %union.rec* %512 to %struct.word_type*
  %ou11219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11218, i32 0, i32 1
  %os111220 = bitcast %union.FIRST_UNION* %ou11219 to %struct.anon*
  %orec_size1221 = getelementptr inbounds %struct.anon, %struct.anon* %os111220, i32 0, i32 1
  %513 = load i8, i8* %orec_size1221, align 1
  %conv1222 = zext i8 %513 to i32
  br label %cond.end.1231

cond.false.1223:                                  ; preds = %lor.lhs.false.1209
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11224 = bitcast %union.rec* %514 to %struct.word_type*
  %ou11225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11224, i32 0, i32 1
  %os111226 = bitcast %union.FIRST_UNION* %ou11225 to %struct.anon*
  %otype1227 = getelementptr inbounds %struct.anon, %struct.anon* %os111226, i32 0, i32 0
  %515 = load i8, i8* %otype1227, align 1
  %idxprom1228 = zext i8 %515 to i64
  %arrayidx1229 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1228
  %516 = load i8, i8* %arrayidx1229, align 1
  %conv1230 = zext i8 %516 to i32
  br label %cond.end.1231

cond.end.1231:                                    ; preds = %cond.false.1223, %cond.true.1217
  %cond1232 = phi i32 [ %conv1222, %cond.true.1217 ], [ %conv1230, %cond.false.1223 ]
  store i32 %cond1232, i32* @zz_size, align 4
  %517 = load i32, i32* @zz_size, align 4
  %idxprom1233 = sext i32 %517 to i64
  %arrayidx1234 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1233
  %518 = load %union.rec*, %union.rec** %arrayidx1234, align 8
  %519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11235 = bitcast %union.rec* %519 to %struct.word_type*
  %olist1236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11235, i32 0, i32 0
  %arrayidx1237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1236, i32 0, i64 0
  %opred1238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1237, i32 0, i32 0
  store %union.rec* %518, %union.rec** %opred1238, align 8
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = load i32, i32* @zz_size, align 4
  %idxprom1239 = sext i32 %521 to i64
  %arrayidx1240 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1239
  store %union.rec* %520, %union.rec** %arrayidx1240, align 8
  br label %while.cond.1114

while.end.1241:                                   ; preds = %while.cond.1114
  %522 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %522, %union.rec** @zz_hold, align 8
  %523 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %523, %union.rec** @zz_hold, align 8
  %524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11242 = bitcast %union.rec* %524 to %struct.word_type*
  %ou11243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11242, i32 0, i32 1
  %os111244 = bitcast %union.FIRST_UNION* %ou11243 to %struct.anon*
  %otype1245 = getelementptr inbounds %struct.anon, %struct.anon* %os111244, i32 0, i32 0
  %525 = load i8, i8* %otype1245, align 1
  %conv1246 = zext i8 %525 to i32
  %cmp1247 = icmp eq i32 %conv1246, 11
  br i1 %cmp1247, label %cond.true.1257, label %lor.lhs.false.1249

lor.lhs.false.1249:                               ; preds = %while.end.1241
  %526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11250 = bitcast %union.rec* %526 to %struct.word_type*
  %ou11251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11250, i32 0, i32 1
  %os111252 = bitcast %union.FIRST_UNION* %ou11251 to %struct.anon*
  %otype1253 = getelementptr inbounds %struct.anon, %struct.anon* %os111252, i32 0, i32 0
  %527 = load i8, i8* %otype1253, align 1
  %conv1254 = zext i8 %527 to i32
  %cmp1255 = icmp eq i32 %conv1254, 12
  br i1 %cmp1255, label %cond.true.1257, label %cond.false.1263

cond.true.1257:                                   ; preds = %lor.lhs.false.1249, %while.end.1241
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11258 = bitcast %union.rec* %528 to %struct.word_type*
  %ou11259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11258, i32 0, i32 1
  %os111260 = bitcast %union.FIRST_UNION* %ou11259 to %struct.anon*
  %orec_size1261 = getelementptr inbounds %struct.anon, %struct.anon* %os111260, i32 0, i32 1
  %529 = load i8, i8* %orec_size1261, align 1
  %conv1262 = zext i8 %529 to i32
  br label %cond.end.1271

cond.false.1263:                                  ; preds = %lor.lhs.false.1249
  %530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11264 = bitcast %union.rec* %530 to %struct.word_type*
  %ou11265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11264, i32 0, i32 1
  %os111266 = bitcast %union.FIRST_UNION* %ou11265 to %struct.anon*
  %otype1267 = getelementptr inbounds %struct.anon, %struct.anon* %os111266, i32 0, i32 0
  %531 = load i8, i8* %otype1267, align 1
  %idxprom1268 = zext i8 %531 to i64
  %arrayidx1269 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1268
  %532 = load i8, i8* %arrayidx1269, align 1
  %conv1270 = zext i8 %532 to i32
  br label %cond.end.1271

cond.end.1271:                                    ; preds = %cond.false.1263, %cond.true.1257
  %cond1272 = phi i32 [ %conv1262, %cond.true.1257 ], [ %conv1270, %cond.false.1263 ]
  store i32 %cond1272, i32* @zz_size, align 4
  %533 = load i32, i32* @zz_size, align 4
  %idxprom1273 = sext i32 %533 to i64
  %arrayidx1274 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1273
  %534 = load %union.rec*, %union.rec** %arrayidx1274, align 8
  %535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11275 = bitcast %union.rec* %535 to %struct.word_type*
  %olist1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11275, i32 0, i32 0
  %arrayidx1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1276, i32 0, i64 0
  %opred1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1277, i32 0, i32 0
  store %union.rec* %534, %union.rec** %opred1278, align 8
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %537 = load i32, i32* @zz_size, align 4
  %idxprom1279 = sext i32 %537 to i64
  %arrayidx1280 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1279
  store %union.rec* %536, %union.rec** %arrayidx1280, align 8
  %538 = load %union.rec*, %union.rec** %y, align 8
  call void @FlushGalley(%union.rec* %538)
  br label %if.end.1578

if.else.1281:                                     ; preds = %if.end.953
  %539 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %539, %union.rec** @xx_hold, align 8
  br label %while.cond.1282

while.cond.1282:                                  ; preds = %cond.end.1399, %if.else.1281
  %540 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os11283 = bitcast %union.rec* %540 to %struct.word_type*
  %olist1284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11283, i32 0, i32 0
  %arrayidx1285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1284, i32 0, i64 1
  %osucc1286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1285, i32 0, i32 1
  %541 = load %union.rec*, %union.rec** %osucc1286, align 8
  %542 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp1287 = icmp ne %union.rec* %541, %542
  br i1 %cmp1287, label %while.body.1289, label %while.end.1409

while.body.1289:                                  ; preds = %while.cond.1282
  %543 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os11290 = bitcast %union.rec* %543 to %struct.word_type*
  %olist1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11290, i32 0, i32 0
  %arrayidx1292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1291, i32 0, i64 1
  %osucc1293 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1292, i32 0, i32 1
  %544 = load %union.rec*, %union.rec** %osucc1293, align 8
  store %union.rec* %544, %union.rec** @xx_link, align 8
  %545 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %545, %union.rec** @zz_hold, align 8
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11294 = bitcast %union.rec* %546 to %struct.word_type*
  %olist1295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11294, i32 0, i32 0
  %arrayidx1296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1295, i32 0, i64 1
  %osucc1297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1296, i32 0, i32 1
  %547 = load %union.rec*, %union.rec** %osucc1297, align 8
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1298 = icmp eq %union.rec* %547, %548
  br i1 %cmp1298, label %cond.true.1300, label %cond.false.1301

cond.true.1300:                                   ; preds = %while.body.1289
  br label %cond.end.1330

cond.false.1301:                                  ; preds = %while.body.1289
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11302 = bitcast %union.rec* %549 to %struct.word_type*
  %olist1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11302, i32 0, i32 0
  %arrayidx1304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1303, i32 0, i64 1
  %osucc1305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1304, i32 0, i32 1
  %550 = load %union.rec*, %union.rec** %osucc1305, align 8
  store %union.rec* %550, %union.rec** @zz_res, align 8
  %551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11306 = bitcast %union.rec* %551 to %struct.word_type*
  %olist1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1307, i32 0, i64 1
  %opred1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1308, i32 0, i32 0
  %552 = load %union.rec*, %union.rec** %opred1309, align 8
  %553 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11310 = bitcast %union.rec* %553 to %struct.word_type*
  %olist1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11310, i32 0, i32 0
  %arrayidx1312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1311, i32 0, i64 1
  %opred1313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1312, i32 0, i32 0
  store %union.rec* %552, %union.rec** %opred1313, align 8
  %554 = load %union.rec*, %union.rec** @zz_res, align 8
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11314 = bitcast %union.rec* %555 to %struct.word_type*
  %olist1315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11314, i32 0, i32 0
  %arrayidx1316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1315, i32 0, i64 1
  %opred1317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1316, i32 0, i32 0
  %556 = load %union.rec*, %union.rec** %opred1317, align 8
  %os11318 = bitcast %union.rec* %556 to %struct.word_type*
  %olist1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11318, i32 0, i32 0
  %arrayidx1320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1319, i32 0, i64 1
  %osucc1321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1320, i32 0, i32 1
  store %union.rec* %554, %union.rec** %osucc1321, align 8
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11322 = bitcast %union.rec* %558 to %struct.word_type*
  %olist1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11322, i32 0, i32 0
  %arrayidx1324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1323, i32 0, i64 1
  %osucc1325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1324, i32 0, i32 1
  store %union.rec* %557, %union.rec** %osucc1325, align 8
  %559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11326 = bitcast %union.rec* %559 to %struct.word_type*
  %olist1327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11326, i32 0, i32 0
  %arrayidx1328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1327, i32 0, i64 1
  %opred1329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1328, i32 0, i32 0
  store %union.rec* %557, %union.rec** %opred1329, align 8
  %560 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1330

cond.end.1330:                                    ; preds = %cond.false.1301, %cond.true.1300
  %cond1331 = phi %union.rec* [ null, %cond.true.1300 ], [ %560, %cond.false.1301 ]
  %561 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %561, %union.rec** @zz_hold, align 8
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11332 = bitcast %union.rec* %562 to %struct.word_type*
  %olist1333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11332, i32 0, i32 0
  %arrayidx1334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1333, i32 0, i64 0
  %osucc1335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1334, i32 0, i32 1
  %563 = load %union.rec*, %union.rec** %osucc1335, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1336 = icmp eq %union.rec* %563, %564
  br i1 %cmp1336, label %cond.true.1338, label %cond.false.1339

cond.true.1338:                                   ; preds = %cond.end.1330
  br label %cond.end.1368

cond.false.1339:                                  ; preds = %cond.end.1330
  %565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11340 = bitcast %union.rec* %565 to %struct.word_type*
  %olist1341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11340, i32 0, i32 0
  %arrayidx1342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1341, i32 0, i64 0
  %osucc1343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1342, i32 0, i32 1
  %566 = load %union.rec*, %union.rec** %osucc1343, align 8
  store %union.rec* %566, %union.rec** @zz_res, align 8
  %567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11344 = bitcast %union.rec* %567 to %struct.word_type*
  %olist1345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11344, i32 0, i32 0
  %arrayidx1346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1345, i32 0, i64 0
  %opred1347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1346, i32 0, i32 0
  %568 = load %union.rec*, %union.rec** %opred1347, align 8
  %569 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11348 = bitcast %union.rec* %569 to %struct.word_type*
  %olist1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11348, i32 0, i32 0
  %arrayidx1350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1349, i32 0, i64 0
  %opred1351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1350, i32 0, i32 0
  store %union.rec* %568, %union.rec** %opred1351, align 8
  %570 = load %union.rec*, %union.rec** @zz_res, align 8
  %571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11352 = bitcast %union.rec* %571 to %struct.word_type*
  %olist1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11352, i32 0, i32 0
  %arrayidx1354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1353, i32 0, i64 0
  %opred1355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1354, i32 0, i32 0
  %572 = load %union.rec*, %union.rec** %opred1355, align 8
  %os11356 = bitcast %union.rec* %572 to %struct.word_type*
  %olist1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11356, i32 0, i32 0
  %arrayidx1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1357, i32 0, i64 0
  %osucc1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1358, i32 0, i32 1
  store %union.rec* %570, %union.rec** %osucc1359, align 8
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11360 = bitcast %union.rec* %574 to %struct.word_type*
  %olist1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11360, i32 0, i32 0
  %arrayidx1362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1361, i32 0, i64 0
  %osucc1363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1362, i32 0, i32 1
  store %union.rec* %573, %union.rec** %osucc1363, align 8
  %575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11364 = bitcast %union.rec* %575 to %struct.word_type*
  %olist1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11364, i32 0, i32 0
  %arrayidx1366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1365, i32 0, i64 0
  %opred1367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1366, i32 0, i32 0
  store %union.rec* %573, %union.rec** %opred1367, align 8
  %576 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1368

cond.end.1368:                                    ; preds = %cond.false.1339, %cond.true.1338
  %cond1369 = phi %union.rec* [ null, %cond.true.1338 ], [ %576, %cond.false.1339 ]
  %577 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %577, %union.rec** @zz_hold, align 8
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %578, %union.rec** @zz_hold, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11370 = bitcast %union.rec* %579 to %struct.word_type*
  %ou11371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11370, i32 0, i32 1
  %os111372 = bitcast %union.FIRST_UNION* %ou11371 to %struct.anon*
  %otype1373 = getelementptr inbounds %struct.anon, %struct.anon* %os111372, i32 0, i32 0
  %580 = load i8, i8* %otype1373, align 1
  %conv1374 = zext i8 %580 to i32
  %cmp1375 = icmp eq i32 %conv1374, 11
  br i1 %cmp1375, label %cond.true.1385, label %lor.lhs.false.1377

lor.lhs.false.1377:                               ; preds = %cond.end.1368
  %581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11378 = bitcast %union.rec* %581 to %struct.word_type*
  %ou11379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11378, i32 0, i32 1
  %os111380 = bitcast %union.FIRST_UNION* %ou11379 to %struct.anon*
  %otype1381 = getelementptr inbounds %struct.anon, %struct.anon* %os111380, i32 0, i32 0
  %582 = load i8, i8* %otype1381, align 1
  %conv1382 = zext i8 %582 to i32
  %cmp1383 = icmp eq i32 %conv1382, 12
  br i1 %cmp1383, label %cond.true.1385, label %cond.false.1391

cond.true.1385:                                   ; preds = %lor.lhs.false.1377, %cond.end.1368
  %583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11386 = bitcast %union.rec* %583 to %struct.word_type*
  %ou11387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11386, i32 0, i32 1
  %os111388 = bitcast %union.FIRST_UNION* %ou11387 to %struct.anon*
  %orec_size1389 = getelementptr inbounds %struct.anon, %struct.anon* %os111388, i32 0, i32 1
  %584 = load i8, i8* %orec_size1389, align 1
  %conv1390 = zext i8 %584 to i32
  br label %cond.end.1399

cond.false.1391:                                  ; preds = %lor.lhs.false.1377
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11392 = bitcast %union.rec* %585 to %struct.word_type*
  %ou11393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11392, i32 0, i32 1
  %os111394 = bitcast %union.FIRST_UNION* %ou11393 to %struct.anon*
  %otype1395 = getelementptr inbounds %struct.anon, %struct.anon* %os111394, i32 0, i32 0
  %586 = load i8, i8* %otype1395, align 1
  %idxprom1396 = zext i8 %586 to i64
  %arrayidx1397 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1396
  %587 = load i8, i8* %arrayidx1397, align 1
  %conv1398 = zext i8 %587 to i32
  br label %cond.end.1399

cond.end.1399:                                    ; preds = %cond.false.1391, %cond.true.1385
  %cond1400 = phi i32 [ %conv1390, %cond.true.1385 ], [ %conv1398, %cond.false.1391 ]
  store i32 %cond1400, i32* @zz_size, align 4
  %588 = load i32, i32* @zz_size, align 4
  %idxprom1401 = sext i32 %588 to i64
  %arrayidx1402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1401
  %589 = load %union.rec*, %union.rec** %arrayidx1402, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11403 = bitcast %union.rec* %590 to %struct.word_type*
  %olist1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 0
  %arrayidx1405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1404, i32 0, i64 0
  %opred1406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1405, i32 0, i32 0
  store %union.rec* %589, %union.rec** %opred1406, align 8
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %592 = load i32, i32* @zz_size, align 4
  %idxprom1407 = sext i32 %592 to i64
  %arrayidx1408 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1407
  store %union.rec* %591, %union.rec** %arrayidx1408, align 8
  br label %while.cond.1282

while.end.1409:                                   ; preds = %while.cond.1282
  br label %while.cond.1410

while.cond.1410:                                  ; preds = %cond.end.1528, %while.end.1409
  %593 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os11411 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11411, i32 0, i32 0
  %arrayidx1413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1412, i32 0, i64 0
  %osucc1414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1413, i32 0, i32 1
  %594 = load %union.rec*, %union.rec** %osucc1414, align 8
  %595 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp1415 = icmp ne %union.rec* %594, %595
  br i1 %cmp1415, label %while.body.1417, label %while.end.1538

while.body.1417:                                  ; preds = %while.cond.1410
  %596 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os11418 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11418, i32 0, i32 0
  %arrayidx1420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1419, i32 0, i64 0
  %osucc1421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1420, i32 0, i32 1
  %597 = load %union.rec*, %union.rec** %osucc1421, align 8
  store %union.rec* %597, %union.rec** @xx_link, align 8
  %598 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %598, %union.rec** @zz_hold, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11422 = bitcast %union.rec* %599 to %struct.word_type*
  %olist1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11422, i32 0, i32 0
  %arrayidx1424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1423, i32 0, i64 1
  %osucc1425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1424, i32 0, i32 1
  %600 = load %union.rec*, %union.rec** %osucc1425, align 8
  %601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1426 = icmp eq %union.rec* %600, %601
  br i1 %cmp1426, label %cond.true.1428, label %cond.false.1429

cond.true.1428:                                   ; preds = %while.body.1417
  br label %cond.end.1459

cond.false.1429:                                  ; preds = %while.body.1417
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11431 = bitcast %union.rec* %602 to %struct.word_type*
  %olist1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11431, i32 0, i32 0
  %arrayidx1433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1432, i32 0, i64 1
  %osucc1434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1433, i32 0, i32 1
  %603 = load %union.rec*, %union.rec** %osucc1434, align 8
  store %union.rec* %603, %union.rec** @zz_res, align 8
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11435 = bitcast %union.rec* %604 to %struct.word_type*
  %olist1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11435, i32 0, i32 0
  %arrayidx1437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1436, i32 0, i64 1
  %opred1438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1437, i32 0, i32 0
  %605 = load %union.rec*, %union.rec** %opred1438, align 8
  %606 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11439 = bitcast %union.rec* %606 to %struct.word_type*
  %olist1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11439, i32 0, i32 0
  %arrayidx1441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1440, i32 0, i64 1
  %opred1442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1441, i32 0, i32 0
  store %union.rec* %605, %union.rec** %opred1442, align 8
  %607 = load %union.rec*, %union.rec** @zz_res, align 8
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11443 = bitcast %union.rec* %608 to %struct.word_type*
  %olist1444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11443, i32 0, i32 0
  %arrayidx1445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1444, i32 0, i64 1
  %opred1446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1445, i32 0, i32 0
  %609 = load %union.rec*, %union.rec** %opred1446, align 8
  %os11447 = bitcast %union.rec* %609 to %struct.word_type*
  %olist1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11447, i32 0, i32 0
  %arrayidx1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1448, i32 0, i64 1
  %osucc1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1449, i32 0, i32 1
  store %union.rec* %607, %union.rec** %osucc1450, align 8
  %610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11451 = bitcast %union.rec* %611 to %struct.word_type*
  %olist1452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11451, i32 0, i32 0
  %arrayidx1453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1452, i32 0, i64 1
  %osucc1454 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1453, i32 0, i32 1
  store %union.rec* %610, %union.rec** %osucc1454, align 8
  %612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11455 = bitcast %union.rec* %612 to %struct.word_type*
  %olist1456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11455, i32 0, i32 0
  %arrayidx1457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1456, i32 0, i64 1
  %opred1458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1457, i32 0, i32 0
  store %union.rec* %610, %union.rec** %opred1458, align 8
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1459

cond.end.1459:                                    ; preds = %cond.false.1429, %cond.true.1428
  %cond1460 = phi %union.rec* [ null, %cond.true.1428 ], [ %613, %cond.false.1429 ]
  %614 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %614, %union.rec** @zz_hold, align 8
  %615 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11461 = bitcast %union.rec* %615 to %struct.word_type*
  %olist1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11461, i32 0, i32 0
  %arrayidx1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1462, i32 0, i64 0
  %osucc1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1463, i32 0, i32 1
  %616 = load %union.rec*, %union.rec** %osucc1464, align 8
  %617 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1465 = icmp eq %union.rec* %616, %617
  br i1 %cmp1465, label %cond.true.1467, label %cond.false.1468

cond.true.1467:                                   ; preds = %cond.end.1459
  br label %cond.end.1497

cond.false.1468:                                  ; preds = %cond.end.1459
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11469 = bitcast %union.rec* %618 to %struct.word_type*
  %olist1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11469, i32 0, i32 0
  %arrayidx1471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1470, i32 0, i64 0
  %osucc1472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1471, i32 0, i32 1
  %619 = load %union.rec*, %union.rec** %osucc1472, align 8
  store %union.rec* %619, %union.rec** @zz_res, align 8
  %620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11473 = bitcast %union.rec* %620 to %struct.word_type*
  %olist1474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11473, i32 0, i32 0
  %arrayidx1475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1474, i32 0, i64 0
  %opred1476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1475, i32 0, i32 0
  %621 = load %union.rec*, %union.rec** %opred1476, align 8
  %622 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11477 = bitcast %union.rec* %622 to %struct.word_type*
  %olist1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11477, i32 0, i32 0
  %arrayidx1479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1478, i32 0, i64 0
  %opred1480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1479, i32 0, i32 0
  store %union.rec* %621, %union.rec** %opred1480, align 8
  %623 = load %union.rec*, %union.rec** @zz_res, align 8
  %624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11481 = bitcast %union.rec* %624 to %struct.word_type*
  %olist1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11481, i32 0, i32 0
  %arrayidx1483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1482, i32 0, i64 0
  %opred1484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1483, i32 0, i32 0
  %625 = load %union.rec*, %union.rec** %opred1484, align 8
  %os11485 = bitcast %union.rec* %625 to %struct.word_type*
  %olist1486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11485, i32 0, i32 0
  %arrayidx1487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1486, i32 0, i64 0
  %osucc1488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1487, i32 0, i32 1
  store %union.rec* %623, %union.rec** %osucc1488, align 8
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11489 = bitcast %union.rec* %627 to %struct.word_type*
  %olist1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11489, i32 0, i32 0
  %arrayidx1491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1490, i32 0, i64 0
  %osucc1492 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1491, i32 0, i32 1
  store %union.rec* %626, %union.rec** %osucc1492, align 8
  %628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11493 = bitcast %union.rec* %628 to %struct.word_type*
  %olist1494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11493, i32 0, i32 0
  %arrayidx1495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1494, i32 0, i64 0
  %opred1496 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1495, i32 0, i32 0
  store %union.rec* %626, %union.rec** %opred1496, align 8
  %629 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1497

cond.end.1497:                                    ; preds = %cond.false.1468, %cond.true.1467
  %cond1498 = phi %union.rec* [ null, %cond.true.1467 ], [ %629, %cond.false.1468 ]
  %630 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %630, %union.rec** @zz_hold, align 8
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %631, %union.rec** @zz_hold, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11499 = bitcast %union.rec* %632 to %struct.word_type*
  %ou11500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11499, i32 0, i32 1
  %os111501 = bitcast %union.FIRST_UNION* %ou11500 to %struct.anon*
  %otype1502 = getelementptr inbounds %struct.anon, %struct.anon* %os111501, i32 0, i32 0
  %633 = load i8, i8* %otype1502, align 1
  %conv1503 = zext i8 %633 to i32
  %cmp1504 = icmp eq i32 %conv1503, 11
  br i1 %cmp1504, label %cond.true.1514, label %lor.lhs.false.1506

lor.lhs.false.1506:                               ; preds = %cond.end.1497
  %634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11507 = bitcast %union.rec* %634 to %struct.word_type*
  %ou11508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11507, i32 0, i32 1
  %os111509 = bitcast %union.FIRST_UNION* %ou11508 to %struct.anon*
  %otype1510 = getelementptr inbounds %struct.anon, %struct.anon* %os111509, i32 0, i32 0
  %635 = load i8, i8* %otype1510, align 1
  %conv1511 = zext i8 %635 to i32
  %cmp1512 = icmp eq i32 %conv1511, 12
  br i1 %cmp1512, label %cond.true.1514, label %cond.false.1520

cond.true.1514:                                   ; preds = %lor.lhs.false.1506, %cond.end.1497
  %636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11515 = bitcast %union.rec* %636 to %struct.word_type*
  %ou11516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11515, i32 0, i32 1
  %os111517 = bitcast %union.FIRST_UNION* %ou11516 to %struct.anon*
  %orec_size1518 = getelementptr inbounds %struct.anon, %struct.anon* %os111517, i32 0, i32 1
  %637 = load i8, i8* %orec_size1518, align 1
  %conv1519 = zext i8 %637 to i32
  br label %cond.end.1528

cond.false.1520:                                  ; preds = %lor.lhs.false.1506
  %638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11521 = bitcast %union.rec* %638 to %struct.word_type*
  %ou11522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11521, i32 0, i32 1
  %os111523 = bitcast %union.FIRST_UNION* %ou11522 to %struct.anon*
  %otype1524 = getelementptr inbounds %struct.anon, %struct.anon* %os111523, i32 0, i32 0
  %639 = load i8, i8* %otype1524, align 1
  %idxprom1525 = zext i8 %639 to i64
  %arrayidx1526 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1525
  %640 = load i8, i8* %arrayidx1526, align 1
  %conv1527 = zext i8 %640 to i32
  br label %cond.end.1528

cond.end.1528:                                    ; preds = %cond.false.1520, %cond.true.1514
  %cond1529 = phi i32 [ %conv1519, %cond.true.1514 ], [ %conv1527, %cond.false.1520 ]
  store i32 %cond1529, i32* @zz_size, align 4
  %641 = load i32, i32* @zz_size, align 4
  %idxprom1530 = sext i32 %641 to i64
  %arrayidx1531 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1530
  %642 = load %union.rec*, %union.rec** %arrayidx1531, align 8
  %643 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11532 = bitcast %union.rec* %643 to %struct.word_type*
  %olist1533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11532, i32 0, i32 0
  %arrayidx1534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1533, i32 0, i64 0
  %opred1535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1534, i32 0, i32 0
  store %union.rec* %642, %union.rec** %opred1535, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %645 = load i32, i32* @zz_size, align 4
  %idxprom1536 = sext i32 %645 to i64
  %arrayidx1537 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1536
  store %union.rec* %644, %union.rec** %arrayidx1537, align 8
  br label %while.cond.1410

while.end.1538:                                   ; preds = %while.cond.1410
  %646 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %646, %union.rec** @zz_hold, align 8
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %647, %union.rec** @zz_hold, align 8
  %648 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11539 = bitcast %union.rec* %648 to %struct.word_type*
  %ou11540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11539, i32 0, i32 1
  %os111541 = bitcast %union.FIRST_UNION* %ou11540 to %struct.anon*
  %otype1542 = getelementptr inbounds %struct.anon, %struct.anon* %os111541, i32 0, i32 0
  %649 = load i8, i8* %otype1542, align 1
  %conv1543 = zext i8 %649 to i32
  %cmp1544 = icmp eq i32 %conv1543, 11
  br i1 %cmp1544, label %cond.true.1554, label %lor.lhs.false.1546

lor.lhs.false.1546:                               ; preds = %while.end.1538
  %650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11547 = bitcast %union.rec* %650 to %struct.word_type*
  %ou11548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11547, i32 0, i32 1
  %os111549 = bitcast %union.FIRST_UNION* %ou11548 to %struct.anon*
  %otype1550 = getelementptr inbounds %struct.anon, %struct.anon* %os111549, i32 0, i32 0
  %651 = load i8, i8* %otype1550, align 1
  %conv1551 = zext i8 %651 to i32
  %cmp1552 = icmp eq i32 %conv1551, 12
  br i1 %cmp1552, label %cond.true.1554, label %cond.false.1560

cond.true.1554:                                   ; preds = %lor.lhs.false.1546, %while.end.1538
  %652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11555 = bitcast %union.rec* %652 to %struct.word_type*
  %ou11556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11555, i32 0, i32 1
  %os111557 = bitcast %union.FIRST_UNION* %ou11556 to %struct.anon*
  %orec_size1558 = getelementptr inbounds %struct.anon, %struct.anon* %os111557, i32 0, i32 1
  %653 = load i8, i8* %orec_size1558, align 1
  %conv1559 = zext i8 %653 to i32
  br label %cond.end.1568

cond.false.1560:                                  ; preds = %lor.lhs.false.1546
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11561 = bitcast %union.rec* %654 to %struct.word_type*
  %ou11562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11561, i32 0, i32 1
  %os111563 = bitcast %union.FIRST_UNION* %ou11562 to %struct.anon*
  %otype1564 = getelementptr inbounds %struct.anon, %struct.anon* %os111563, i32 0, i32 0
  %655 = load i8, i8* %otype1564, align 1
  %idxprom1565 = zext i8 %655 to i64
  %arrayidx1566 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1565
  %656 = load i8, i8* %arrayidx1566, align 1
  %conv1567 = zext i8 %656 to i32
  br label %cond.end.1568

cond.end.1568:                                    ; preds = %cond.false.1560, %cond.true.1554
  %cond1569 = phi i32 [ %conv1559, %cond.true.1554 ], [ %conv1567, %cond.false.1560 ]
  store i32 %cond1569, i32* @zz_size, align 4
  %657 = load i32, i32* @zz_size, align 4
  %idxprom1570 = sext i32 %657 to i64
  %arrayidx1571 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1570
  %658 = load %union.rec*, %union.rec** %arrayidx1571, align 8
  %659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11572 = bitcast %union.rec* %659 to %struct.word_type*
  %olist1573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11572, i32 0, i32 0
  %arrayidx1574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1573, i32 0, i64 0
  %opred1575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1574, i32 0, i32 0
  store %union.rec* %658, %union.rec** %opred1575, align 8
  %660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %661 = load i32, i32* @zz_size, align 4
  %idxprom1576 = sext i32 %661 to i64
  %arrayidx1577 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1576
  store %union.rec* %660, %union.rec** %arrayidx1577, align 8
  br label %if.end.1578

if.end.1578:                                      ; preds = %cond.end.1568, %cond.end.1271
  %662 = load i32, i32* @itop, align 4
  %dec1579 = add nsw i32 %662, -1
  store i32 %dec1579, i32* @itop, align 4
  %idxprom1580 = sext i32 %662 to i64
  %arrayidx1581 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %idxprom1580
  %663 = load %union.rec*, %union.rec** %arrayidx1581, align 8
  %call1582 = call i32 @DisposeObject(%union.rec* %663)
  br label %return

return:                                           ; preds = %if.end.1578, %if.then
  ret void
}

declare void @Interpose(%union.rec*, i32, %union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define void @TransferClose() #0 {
entry:
  %inners = alloca %union.rec*, align 8
  %0 = load %union.rec*, %union.rec** @root_galley, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %1 = load %union.rec*, %union.rec** %opred, align 8
  %2 = load %union.rec*, %union.rec** @root_galley, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store %union.rec* null, %union.rec** %inners, align 8
  %3 = load %union.rec*, %union.rec** @root_galley, align 8
  %4 = load %union.rec*, %union.rec** @root_galley, align 8
  call void @FreeGalley(%union.rec* %3, %union.rec* %4, %union.rec** %inners, %union.rec* null, %union.rec* null)
  %5 = load %union.rec*, %union.rec** %inners, align 8
  %cmp1 = icmp ne %union.rec* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %6, %union.rec* null)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %union.rec*, %union.rec** @root_galley, align 8
  call void @FlushGalley(%union.rec* %7)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

declare void @FreeGalley(%union.rec*, %union.rec*, %union.rec**, %union.rec*, %union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
