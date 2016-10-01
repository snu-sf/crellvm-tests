; ModuleID = './MultiSource.Benchmarks.MiBench/78.consumer-typeset.z21.bc'
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
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"SizeGalley: precondition!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SizeGalley: already sized!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@AllowCrossDb = external global i32, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SizeGalley: threads!\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"galley %s must have just one column mark\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s,%s object too wide for available space\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"SizeGalley: BreakObject failed to fit!\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@xx_tmp = external global %union.rec*, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"SizeGalley COL_THR: Up(y)!=LastUp(y)!\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"SizeGalley: missing COL_THR!\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"SizeGalley/SPLIT: hor != thor!\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"SizeGalley COL_THR: Up(y) != LastUp(y)!\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"SizeObject: type(z) != SCALE!\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"SizeObject: bc(constraint(z)) != 0\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"SizeObject SCALE: Down(z) == z!\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s with unspecified scale factor in horizontal galley\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"replacing infinite scale factor (unconstrained width) by 1.0\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"replacing infinite scale factor (zero width object) by 1.0\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"replacing very large scale factor (over 100) by 1.0\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"object deleted (scale factor is zero)\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"object deleted (scale factor is smaller than 0.01)\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GalleySym = external global %union.rec*, align 8
@ForceGalleySym = external global %union.rec*, align 8
@InputSym = external global %union.rec*, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"%s replaced by %s (mark not shared)\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"%s replaced by %s (infinite scale factor)\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"%s replaced by %s (zero scale factor)\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"%s replaced by %s (insufficient space)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"SizeGalley:\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"SizeG: extras!\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"unexpected absence of %s from the body of %s\00", align 1

; Function Attrs: nounwind uwtable
define void @SizeGalley(%union.rec* %hd, %union.rec* %env, i32 %rows, i32 %joined, i32 %nonblock, i32 %trig, %struct.STYLE* %style, %struct.CONSTRAINT* %c, %union.rec* %target, %union.rec** %dest_index, %union.rec** %recs, %union.rec** %inners, %union.rec* %enclose) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %rows.addr = alloca i32, align 4
  %joined.addr = alloca i32, align 4
  %nonblock.addr = alloca i32, align 4
  %trig.addr = alloca i32, align 4
  %style.addr = alloca %struct.STYLE*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %target.addr = alloca %union.rec*, align 8
  %dest_index.addr = alloca %union.rec**, align 8
  %recs.addr = alloca %union.rec**, align 8
  %inners.addr = alloca %union.rec**, align 8
  %enclose.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %crs = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %why = alloca %union.rec*, align 8
  %extras = alloca %union.rec*, align 8
  %tmp1 = alloca %union.rec*, align 8
  %tmp2 = alloca %union.rec*, align 8
  %bt = alloca [2 x %union.rec*], align 16
  %ft = alloca [2 x %union.rec*], align 16
  %hold_env = alloca %union.rec*, align 8
  %after_target = alloca i32, align 4
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %xxstart951 = alloca %union.rec*, align 8
  %xxstop957 = alloca %union.rec*, align 8
  %xxdest959 = alloca %union.rec*, align 8
  %hor = alloca %union.rec*, align 8
  %thor = alloca %union.rec*, align 8
  %clink = alloca %union.rec*, align 8
  %dlink = alloca %union.rec*, align 8
  %zc = alloca %struct.CONSTRAINT, align 4
  %t2410 = alloca %union.rec*, align 8
  %b = alloca i32, align 4
  %f = alloca i32, align 4
  %cover = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %chld = alloca %union.rec*, align 8
  %dirn = alloca i32, align 4
  %thr_type = alloca i32, align 4
  %ok1 = alloca i32, align 4
  %ok2 = alloca i32, align 4
  %sf = alloca i32, align 4
  %subst = alloca i32, align 4
  %esubst = alloca i32, align 4
  %sf1 = alloca float, align 4
  %sf2 = alloca float, align 4
  %c3384 = alloca %struct.CONSTRAINT, align 4
  %b3386 = alloca i32, align 4
  %f3388 = alloca i32, align 4
  %xxstart3759 = alloca %union.rec*, align 8
  %xxstop3765 = alloca %union.rec*, align 8
  %xxdest3767 = alloca %union.rec*, align 8
  %xxstart3927 = alloca %union.rec*, align 8
  %xxstop3933 = alloca %union.rec*, align 8
  %xxdest3935 = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %joined, i32* %joined.addr, align 4
  store i32 %nonblock, i32* %nonblock.addr, align 4
  store i32 %trig, i32* %trig.addr, align 4
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  store %union.rec* %target, %union.rec** %target.addr, align 8
  store %union.rec** %dest_index, %union.rec*** %dest_index.addr, align 8
  store %union.rec** %recs, %union.rec*** %recs.addr, align 8
  store %union.rec** %inners, %union.rec*** %inners.addr, align 8
  store %union.rec* %enclose, %union.rec** %enclose.addr, align 8
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
  %os110 = bitcast %union.rec* %2 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %3 = load %union.rec*, %union.rec** %osucc, align 8
  %4 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp11 = icmp ne %union.rec* %3, %4
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %6 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os113 = bitcast %union.rec* %6 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %osized, align 2
  %bf.lshr = lshr i16 %bf.load, 1
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %8 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os117 = bitcast %union.rec* %8 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 0
  %osucc20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc20, align 8
  %os121 = bitcast %union.rec* %9 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %10, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os124 = bitcast %union.rec* %11 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou125 to %struct.anon*
  %otype27 = getelementptr inbounds %struct.anon, %struct.anon* %os1126, i32 0, i32 0
  %12 = load i8, i8* %otype27, align 1
  %conv28 = zext i8 %12 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os131 = bitcast %union.rec* %13 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 1
  %opred34 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred34, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %union.rec*, %union.rec** %target.addr, align 8
  store %union.rec* %15, %union.rec** %tmp1, align 8
  %16 = load %union.rec*, %union.rec** %enclose.addr, align 8
  store %union.rec* %16, %union.rec** %tmp2, align 8
  store %union.rec* null, %union.rec** %crs, align 8
  %arrayidx35 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 1
  store %union.rec* null, %union.rec** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 1
  store %union.rec* null, %union.rec** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  store %union.rec* null, %union.rec** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  store %union.rec* null, %union.rec** %arrayidx38, align 8
  %17 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv39 = zext i8 %17 to i32
  store i32 %conv39, i32* @zz_size, align 4
  %conv40 = sext i32 %conv39 to i64
  %cmp41 = icmp uge i64 %conv40, 265
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %for.end
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call44 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %18)
  br label %if.end.60

if.else:                                          ; preds = %for.end
  %19 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx45 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %20 = load %union.rec*, %union.rec** %arrayidx45, align 8
  %cmp46 = icmp eq %union.rec* %20, null
  br i1 %cmp46, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else
  %21 = load i32, i32* @zz_size, align 4
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call49 = call %union.rec* @GetMemory(i32 %21, %struct.FILE_POS* %22)
  store %union.rec* %call49, %union.rec** @zz_hold, align 8
  br label %if.end.59

if.else.50:                                       ; preds = %if.else
  %23 = load i32, i32* @zz_size, align 4
  %idxprom51 = sext i32 %23 to i64
  %arrayidx52 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom51
  %24 = load %union.rec*, %union.rec** %arrayidx52, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os153 = bitcast %union.rec* %25 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 0
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred56, align 8
  %27 = load i32, i32* @zz_size, align 4
  %idxprom57 = sext i32 %27 to i64
  %arrayidx58 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom57
  store %union.rec* %26, %union.rec** %arrayidx58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.50, %if.then.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.43
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os161 = bitcast %union.rec* %28 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %os1163 = bitcast %union.FIRST_UNION* %ou162 to %struct.anon*
  %otype64 = getelementptr inbounds %struct.anon, %struct.anon* %os1163, i32 0, i32 0
  store i8 17, i8* %otype64, align 1
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %30 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc68, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %31 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred72, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %32 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %osucc76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc76, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os177 = bitcast %union.rec* %33 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 0
  %opred80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred80, align 8
  store %union.rec* %29, %union.rec** %hold_env, align 8
  %34 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv81 = zext i8 %34 to i32
  store i32 %conv81, i32* @zz_size, align 4
  %conv82 = sext i32 %conv81 to i64
  %cmp83 = icmp uge i64 %conv82, 265
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.end.60
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call86 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %35)
  br label %if.end.104

if.else.87:                                       ; preds = %if.end.60
  %36 = load i32, i32* @zz_size, align 4
  %idxprom88 = sext i32 %36 to i64
  %arrayidx89 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom88
  %37 = load %union.rec*, %union.rec** %arrayidx89, align 8
  %cmp90 = icmp eq %union.rec* %37, null
  br i1 %cmp90, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %if.else.87
  %38 = load i32, i32* @zz_size, align 4
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call93 = call %union.rec* @GetMemory(i32 %38, %struct.FILE_POS* %39)
  store %union.rec* %call93, %union.rec** @zz_hold, align 8
  br label %if.end.103

if.else.94:                                       ; preds = %if.else.87
  %40 = load i32, i32* @zz_size, align 4
  %idxprom95 = sext i32 %40 to i64
  %arrayidx96 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom95
  %41 = load %union.rec*, %union.rec** %arrayidx96, align 8
  store %union.rec* %41, %union.rec** @zz_hold, align 8
  store %union.rec* %41, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os197 = bitcast %union.rec* %42 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %opred100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %opred100, align 8
  %44 = load i32, i32* @zz_size, align 4
  %idxprom101 = sext i32 %44 to i64
  %arrayidx102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom101
  store %union.rec* %43, %union.rec** %arrayidx102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.94, %if.then.92
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.85
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1105 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 1
  %os11107 = bitcast %union.FIRST_UNION* %ou1106 to %struct.anon*
  %otype108 = getelementptr inbounds %struct.anon, %struct.anon* %os11107, i32 0, i32 0
  store i8 0, i8* %otype108, align 1
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %47 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 1
  %osucc112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 1
  store %union.rec* %46, %union.rec** %osucc112, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1113 = bitcast %union.rec* %48 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 1
  %opred116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 0
  store %union.rec* %46, %union.rec** %opred116, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %49 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 0
  %osucc120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 1
  store %union.rec* %46, %union.rec** %osucc120, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1121 = bitcast %union.rec* %50 to %struct.word_type*
  %olist122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist122, i32 0, i64 0
  %opred124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx123, i32 0, i32 0
  store %union.rec* %46, %union.rec** %opred124, align 8
  store %union.rec* %46, %union.rec** @xx_link, align 8
  %51 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %51, %union.rec** @zz_res, align 8
  %52 = load %union.rec*, %union.rec** %hold_env, align 8
  store %union.rec* %52, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp125 = icmp eq %union.rec* %53, null
  br i1 %cmp125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.104
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.159

cond.false:                                       ; preds = %if.end.104
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp127 = icmp eq %union.rec* %55, null
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.false
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.130:                                   ; preds = %cond.false
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1131 = bitcast %union.rec* %57 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 0
  %opred134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred134, align 8
  store %union.rec* %58, %union.rec** @zz_tmp, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1135 = bitcast %union.rec* %59 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %opred138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %opred138, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1139 = bitcast %union.rec* %61 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %opred142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 0
  store %union.rec* %60, %union.rec** %opred142, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1143 = bitcast %union.rec* %63 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 0
  %opred146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred146, align 8
  %os1147 = bitcast %union.rec* %64 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 0
  %osucc150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 1
  store %union.rec* %62, %union.rec** %osucc150, align 8
  %65 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1151 = bitcast %union.rec* %66 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 0
  %opred154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred154, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  %68 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1155 = bitcast %union.rec* %68 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 0
  %osucc158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc158, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.130, %cond.true.129
  %cond = phi %union.rec* [ %56, %cond.true.129 ], [ %67, %cond.false.130 ]
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.end, %cond.true
  %cond160 = phi %union.rec* [ %54, %cond.true ], [ %cond, %cond.end ]
  %69 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %69, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** %env.addr, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp161 = icmp eq %union.rec* %71, null
  br i1 %cmp161, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %cond.end.159
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.199

cond.false.164:                                   ; preds = %cond.end.159
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp165 = icmp eq %union.rec* %73, null
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %cond.false.164
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.197

cond.false.168:                                   ; preds = %cond.false.164
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1169 = bitcast %union.rec* %75 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %opred172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred172, align 8
  store %union.rec* %76, %union.rec** @zz_tmp, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1173 = bitcast %union.rec* %77 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %opred176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred176, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1177 = bitcast %union.rec* %79 to %struct.word_type*
  %olist178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist178, i32 0, i64 1
  %opred180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx179, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred180, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1181 = bitcast %union.rec* %81 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 1
  %opred184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred184, align 8
  %os1185 = bitcast %union.rec* %82 to %struct.word_type*
  %olist186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist186, i32 0, i64 1
  %osucc188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx187, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc188, align 8
  %83 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1189 = bitcast %union.rec* %84 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 1
  %opred192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred192, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1193 = bitcast %union.rec* %86 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 1
  %osucc196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc196, align 8
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.168, %cond.true.167
  %cond198 = phi %union.rec* [ %74, %cond.true.167 ], [ %85, %cond.false.168 ]
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.end.197, %cond.true.163
  %cond200 = phi %union.rec* [ %72, %cond.true.163 ], [ %cond198, %cond.end.197 ]
  %87 = load i32, i32* @AllowCrossDb, align 4
  %tobool201 = icmp ne i32 %87, 0
  br i1 %tobool201, label %land.lhs.true.202, label %if.end.220

land.lhs.true.202:                                ; preds = %cond.end.199
  %88 = load %union.rec*, %union.rec** %y, align 8
  %os1203 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 1
  %os11205 = bitcast %union.FIRST_UNION* %ou1204 to %struct.anon*
  %otype206 = getelementptr inbounds %struct.anon, %struct.anon* %os11205, i32 0, i32 0
  %89 = load i8, i8* %otype206, align 1
  %conv207 = zext i8 %89 to i32
  %cmp208 = icmp eq i32 %conv207, 2
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.220

land.lhs.true.210:                                ; preds = %land.lhs.true.202
  %90 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %90 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %91 = load %union.rec*, %union.rec** %oactual, align 8
  %os6 = bitcast %union.rec* %91 to %struct.symbol_type*
  %ohas_optimize = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 16
  %bf.load211 = load i8, i8* %ohas_optimize, align 2
  %bf.lshr212 = lshr i8 %bf.load211, 1
  %bf.clear213 = and i8 %bf.lshr212, 1
  %bf.cast214 = zext i8 %bf.clear213 to i32
  %tobool215 = icmp ne i32 %bf.cast214, 0
  br i1 %tobool215, label %land.lhs.true.216, label %if.end.220

land.lhs.true.216:                                ; preds = %land.lhs.true.210
  %92 = load %union.rec*, %union.rec** %y, align 8
  %93 = load %union.rec*, %union.rec** %env.addr, align 8
  %call217 = call i32 @FindOptimize(%union.rec* %92, %union.rec* %93)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %land.lhs.true.216
  %94 = load %union.rec*, %union.rec** %hd.addr, align 8
  %95 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  call void @SetOptimize(%union.rec* %94, %struct.STYLE* %95)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %land.lhs.true.216, %land.lhs.true.210, %land.lhs.true.202, %cond.end.199
  %96 = load i32, i32* %joined.addr, align 4
  %tobool221 = icmp ne i32 %96, 0
  br i1 %tobool221, label %if.then.222, label %if.else.429

if.then.222:                                      ; preds = %if.end.220
  %97 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 139), align 1
  %conv223 = zext i8 %97 to i32
  store i32 %conv223, i32* @zz_size, align 4
  %conv224 = sext i32 %conv223 to i64
  %cmp225 = icmp uge i64 %conv224, 265
  br i1 %cmp225, label %if.then.227, label %if.else.229

if.then.227:                                      ; preds = %if.then.222
  %98 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call228 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %98)
  br label %if.end.246

if.else.229:                                      ; preds = %if.then.222
  %99 = load i32, i32* @zz_size, align 4
  %idxprom230 = sext i32 %99 to i64
  %arrayidx231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom230
  %100 = load %union.rec*, %union.rec** %arrayidx231, align 8
  %cmp232 = icmp eq %union.rec* %100, null
  br i1 %cmp232, label %if.then.234, label %if.else.236

if.then.234:                                      ; preds = %if.else.229
  %101 = load i32, i32* @zz_size, align 4
  %102 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call235 = call %union.rec* @GetMemory(i32 %101, %struct.FILE_POS* %102)
  store %union.rec* %call235, %union.rec** @zz_hold, align 8
  br label %if.end.245

if.else.236:                                      ; preds = %if.else.229
  %103 = load i32, i32* @zz_size, align 4
  %idxprom237 = sext i32 %103 to i64
  %arrayidx238 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom237
  %104 = load %union.rec*, %union.rec** %arrayidx238, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1239 = bitcast %union.rec* %105 to %struct.word_type*
  %olist240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist240, i32 0, i64 0
  %opred242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx241, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %opred242, align 8
  %107 = load i32, i32* @zz_size, align 4
  %idxprom243 = sext i32 %107 to i64
  %arrayidx244 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom243
  store %union.rec* %106, %union.rec** %arrayidx244, align 8
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.236, %if.then.234
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.227
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1247 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1247, i32 0, i32 1
  %os11249 = bitcast %union.FIRST_UNION* %ou1248 to %struct.anon*
  %otype250 = getelementptr inbounds %struct.anon, %struct.anon* %os11249, i32 0, i32 0
  store i8 -117, i8* %otype250, align 1
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1251 = bitcast %union.rec* %110 to %struct.word_type*
  %olist252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist252, i32 0, i64 1
  %osucc254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx253, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc254, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1255 = bitcast %union.rec* %111 to %struct.word_type*
  %olist256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist256, i32 0, i64 1
  %opred258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx257, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred258, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1259 = bitcast %union.rec* %112 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 0
  %osucc262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc262, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1263 = bitcast %union.rec* %113 to %struct.word_type*
  %olist264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist264, i32 0, i64 0
  %opred266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx265, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred266, align 8
  %arrayidx267 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  store %union.rec* %109, %union.rec** %arrayidx267, align 8
  %114 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 139), align 1
  %conv268 = zext i8 %114 to i32
  store i32 %conv268, i32* @zz_size, align 4
  %conv269 = sext i32 %conv268 to i64
  %cmp270 = icmp uge i64 %conv269, 265
  br i1 %cmp270, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %if.end.246
  %115 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call273 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %115)
  br label %if.end.291

if.else.274:                                      ; preds = %if.end.246
  %116 = load i32, i32* @zz_size, align 4
  %idxprom275 = sext i32 %116 to i64
  %arrayidx276 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom275
  %117 = load %union.rec*, %union.rec** %arrayidx276, align 8
  %cmp277 = icmp eq %union.rec* %117, null
  br i1 %cmp277, label %if.then.279, label %if.else.281

if.then.279:                                      ; preds = %if.else.274
  %118 = load i32, i32* @zz_size, align 4
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call280 = call %union.rec* @GetMemory(i32 %118, %struct.FILE_POS* %119)
  store %union.rec* %call280, %union.rec** @zz_hold, align 8
  br label %if.end.290

if.else.281:                                      ; preds = %if.else.274
  %120 = load i32, i32* @zz_size, align 4
  %idxprom282 = sext i32 %120 to i64
  %arrayidx283 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom282
  %121 = load %union.rec*, %union.rec** %arrayidx283, align 8
  store %union.rec* %121, %union.rec** @zz_hold, align 8
  store %union.rec* %121, %union.rec** @zz_hold, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1284 = bitcast %union.rec* %122 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 0
  %opred287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred287, align 8
  %124 = load i32, i32* @zz_size, align 4
  %idxprom288 = sext i32 %124 to i64
  %arrayidx289 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom288
  store %union.rec* %123, %union.rec** %arrayidx289, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.281, %if.then.279
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.272
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1292 = bitcast %union.rec* %125 to %struct.word_type*
  %ou1293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 1
  %os11294 = bitcast %union.FIRST_UNION* %ou1293 to %struct.anon*
  %otype295 = getelementptr inbounds %struct.anon, %struct.anon* %os11294, i32 0, i32 0
  store i8 -117, i8* %otype295, align 1
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1296 = bitcast %union.rec* %127 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 1
  %osucc299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc299, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1300 = bitcast %union.rec* %128 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 1
  %opred303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred303, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1304 = bitcast %union.rec* %129 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 0
  %osucc307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc307, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1308 = bitcast %union.rec* %130 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 0
  %opred311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred311, align 8
  %arrayidx312 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  store %union.rec* %126, %union.rec** %arrayidx312, align 8
  %131 = load %union.rec*, %union.rec** %y, align 8
  %132 = load %union.rec*, %union.rec** %env.addr, align 8
  %133 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i32 0
  %arraydecay313 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1314 = bitcast %union.rec* %134 to %struct.word_type*
  %ou2315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1314, i32 0, i32 2
  %os23316 = bitcast %union.SECOND_UNION* %ou2315 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23316, i32 0, i32 2
  %bf.load317 = load i16, i16* %omust_expand, align 2
  %bf.lshr318 = lshr i16 %bf.load317, 7
  %bf.clear319 = and i16 %bf.lshr318, 1
  %bf.cast320 = zext i16 %bf.clear319 to i32
  %call321 = call %union.rec* @Manifest(%union.rec* %131, %union.rec* %132, %struct.STYLE* %133, %union.rec** %arraydecay, %union.rec** %arraydecay313, %union.rec** %tmp1, %union.rec** %crs, i32 1, i32 %bf.cast320, %union.rec** %tmp2, i32 0)
  store %union.rec* %call321, %union.rec** %y, align 8
  %arrayidx322 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %135 = load %union.rec*, %union.rec** %arrayidx322, align 8
  %os1323 = bitcast %union.rec* %135 to %struct.word_type*
  %olist324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist324, i32 0, i64 0
  %osucc326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx325, i32 0, i32 1
  %136 = load %union.rec*, %union.rec** %osucc326, align 8
  %arrayidx327 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %137 = load %union.rec*, %union.rec** %arrayidx327, align 8
  %cmp328 = icmp ne %union.rec* %136, %137
  br i1 %cmp328, label %land.lhs.true.330, label %if.then.339

land.lhs.true.330:                                ; preds = %if.end.291
  %arrayidx331 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %138 = load %union.rec*, %union.rec** %arrayidx331, align 8
  %os1332 = bitcast %union.rec* %138 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 0
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  %139 = load %union.rec*, %union.rec** %osucc335, align 8
  %arrayidx336 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %140 = load %union.rec*, %union.rec** %arrayidx336, align 8
  %cmp337 = icmp ne %union.rec* %139, %140
  br i1 %cmp337, label %if.end.341, label %if.then.339

if.then.339:                                      ; preds = %land.lhs.true.330, %if.end.291
  %141 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call340 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.339, %land.lhs.true.330
  %arrayidx342 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %142 = load %union.rec*, %union.rec** %arrayidx342, align 8
  %os1343 = bitcast %union.rec* %142 to %struct.word_type*
  %olist344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist344, i32 0, i64 0
  %osucc346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx345, i32 0, i32 1
  %143 = load %union.rec*, %union.rec** %osucc346, align 8
  %os1347 = bitcast %union.rec* %143 to %struct.word_type*
  %olist348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist348, i32 0, i64 1
  %opred350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx349, i32 0, i32 0
  %144 = load %union.rec*, %union.rec** %opred350, align 8
  store %union.rec* %144, %union.rec** %tmp1, align 8
  br label %for.cond.351

for.cond.351:                                     ; preds = %for.inc.360, %if.end.341
  %145 = load %union.rec*, %union.rec** %tmp1, align 8
  %os1352 = bitcast %union.rec* %145 to %struct.word_type*
  %ou1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 1
  %os11354 = bitcast %union.FIRST_UNION* %ou1353 to %struct.anon*
  %otype355 = getelementptr inbounds %struct.anon, %struct.anon* %os11354, i32 0, i32 0
  %146 = load i8, i8* %otype355, align 1
  %conv356 = zext i8 %146 to i32
  %cmp357 = icmp eq i32 %conv356, 0
  br i1 %cmp357, label %for.body.359, label %for.end.365

for.body.359:                                     ; preds = %for.cond.351
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.body.359
  %147 = load %union.rec*, %union.rec** %tmp1, align 8
  %os1361 = bitcast %union.rec* %147 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 1
  %opred364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %opred364, align 8
  store %union.rec* %148, %union.rec** %tmp1, align 8
  br label %for.cond.351

for.end.365:                                      ; preds = %for.cond.351
  %arrayidx366 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %149 = load %union.rec*, %union.rec** %arrayidx366, align 8
  %os1367 = bitcast %union.rec* %149 to %struct.word_type*
  %olist368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 0
  %arrayidx369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist368, i32 0, i64 0
  %osucc370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx369, i32 0, i32 1
  %150 = load %union.rec*, %union.rec** %osucc370, align 8
  %os1371 = bitcast %union.rec* %150 to %struct.word_type*
  %olist372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1371, i32 0, i32 0
  %arrayidx373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist372, i32 0, i64 1
  %opred374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx373, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %opred374, align 8
  store %union.rec* %151, %union.rec** %tmp2, align 8
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.384, %for.end.365
  %152 = load %union.rec*, %union.rec** %tmp2, align 8
  %os1376 = bitcast %union.rec* %152 to %struct.word_type*
  %ou1377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 1
  %os11378 = bitcast %union.FIRST_UNION* %ou1377 to %struct.anon*
  %otype379 = getelementptr inbounds %struct.anon, %struct.anon* %os11378, i32 0, i32 0
  %153 = load i8, i8* %otype379, align 1
  %conv380 = zext i8 %153 to i32
  %cmp381 = icmp eq i32 %conv380, 0
  br i1 %cmp381, label %for.body.383, label %for.end.389

for.body.383:                                     ; preds = %for.cond.375
  br label %for.inc.384

for.inc.384:                                      ; preds = %for.body.383
  %154 = load %union.rec*, %union.rec** %tmp2, align 8
  %os1385 = bitcast %union.rec* %154 to %struct.word_type*
  %olist386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1385, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist386, i32 0, i64 1
  %opred388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx387, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred388, align 8
  store %union.rec* %155, %union.rec** %tmp2, align 8
  br label %for.cond.375

for.end.389:                                      ; preds = %for.cond.375
  %arrayidx390 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %156 = load %union.rec*, %union.rec** %arrayidx390, align 8
  %os1391 = bitcast %union.rec* %156 to %struct.word_type*
  %olist392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 0
  %arrayidx393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist392, i32 0, i64 0
  %osucc394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx393, i32 0, i32 1
  %157 = load %union.rec*, %union.rec** %osucc394, align 8
  %arrayidx395 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %158 = load %union.rec*, %union.rec** %arrayidx395, align 8
  %os1396 = bitcast %union.rec* %158 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 0
  %opred399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 0
  %159 = load %union.rec*, %union.rec** %opred399, align 8
  %cmp400 = icmp ne %union.rec* %157, %159
  br i1 %cmp400, label %if.then.417, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.389
  %arrayidx402 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %160 = load %union.rec*, %union.rec** %arrayidx402, align 8
  %os1403 = bitcast %union.rec* %160 to %struct.word_type*
  %olist404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist404, i32 0, i64 0
  %osucc406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx405, i32 0, i32 1
  %161 = load %union.rec*, %union.rec** %osucc406, align 8
  %arrayidx407 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %162 = load %union.rec*, %union.rec** %arrayidx407, align 8
  %os1408 = bitcast %union.rec* %162 to %struct.word_type*
  %olist409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist409, i32 0, i64 0
  %opred411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx410, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %opred411, align 8
  %cmp412 = icmp ne %union.rec* %161, %163
  br i1 %cmp412, label %if.then.417, label %lor.lhs.false.414

lor.lhs.false.414:                                ; preds = %lor.lhs.false
  %164 = load %union.rec*, %union.rec** %tmp1, align 8
  %165 = load %union.rec*, %union.rec** %tmp2, align 8
  %cmp415 = icmp ne %union.rec* %164, %165
  br i1 %cmp415, label %if.then.417, label %if.end.424

if.then.417:                                      ; preds = %lor.lhs.false.414, %lor.lhs.false, %for.end.389
  %166 = load %union.rec*, %union.rec** %y, align 8
  %os1418 = bitcast %union.rec* %166 to %struct.word_type*
  %ou1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1418, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1419 to %struct.FILE_POS*
  %167 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2420 = bitcast %union.rec* %167 to %struct.closure_type*
  %oactual421 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2420, i32 0, i32 5
  %168 = load %union.rec*, %union.rec** %oactual421, align 8
  %call422 = call i8* @SymName(%union.rec* %168)
  %call423 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %call422)
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.417, %lor.lhs.false.414
  %arrayidx425 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  %169 = load %union.rec*, %union.rec** %arrayidx425, align 8
  %call426 = call i32 @DisposeObject(%union.rec* %169)
  %arrayidx427 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  %170 = load %union.rec*, %union.rec** %arrayidx427, align 8
  %call428 = call i32 @DisposeObject(%union.rec* %170)
  br label %if.end.441

if.else.429:                                      ; preds = %if.end.220
  %171 = load %union.rec*, %union.rec** %y, align 8
  %172 = load %union.rec*, %union.rec** %env.addr, align 8
  %173 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %arraydecay430 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i32 0
  %arraydecay431 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1432 = bitcast %union.rec* %174 to %struct.word_type*
  %ou2433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 2
  %os23434 = bitcast %union.SECOND_UNION* %ou2433 to %struct.anon.2*
  %omust_expand435 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23434, i32 0, i32 2
  %bf.load436 = load i16, i16* %omust_expand435, align 2
  %bf.lshr437 = lshr i16 %bf.load436, 7
  %bf.clear438 = and i16 %bf.lshr437, 1
  %bf.cast439 = zext i16 %bf.clear438 to i32
  %call440 = call %union.rec* @Manifest(%union.rec* %171, %union.rec* %172, %struct.STYLE* %173, %union.rec** %arraydecay430, %union.rec** %arraydecay431, %union.rec** %tmp1, %union.rec** %crs, i32 1, i32 %bf.cast439, %union.rec** %tmp2, i32 0)
  store %union.rec* %call440, %union.rec** %y, align 8
  br label %if.end.441

if.end.441:                                       ; preds = %if.else.429, %if.end.424
  %175 = load %union.rec*, %union.rec** %hold_env, align 8
  %call442 = call i32 @DisposeObject(%union.rec* %175)
  %176 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv443 = zext i8 %176 to i32
  store i32 %conv443, i32* @zz_size, align 4
  %conv444 = sext i32 %conv443 to i64
  %cmp445 = icmp uge i64 %conv444, 265
  br i1 %cmp445, label %if.then.447, label %if.else.449

if.then.447:                                      ; preds = %if.end.441
  %177 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call448 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %177)
  br label %if.end.466

if.else.449:                                      ; preds = %if.end.441
  %178 = load i32, i32* @zz_size, align 4
  %idxprom450 = sext i32 %178 to i64
  %arrayidx451 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom450
  %179 = load %union.rec*, %union.rec** %arrayidx451, align 8
  %cmp452 = icmp eq %union.rec* %179, null
  br i1 %cmp452, label %if.then.454, label %if.else.456

if.then.454:                                      ; preds = %if.else.449
  %180 = load i32, i32* @zz_size, align 4
  %181 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call455 = call %union.rec* @GetMemory(i32 %180, %struct.FILE_POS* %181)
  store %union.rec* %call455, %union.rec** @zz_hold, align 8
  br label %if.end.465

if.else.456:                                      ; preds = %if.else.449
  %182 = load i32, i32* @zz_size, align 4
  %idxprom457 = sext i32 %182 to i64
  %arrayidx458 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom457
  %183 = load %union.rec*, %union.rec** %arrayidx458, align 8
  store %union.rec* %183, %union.rec** @zz_hold, align 8
  store %union.rec* %183, %union.rec** @zz_hold, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1459 = bitcast %union.rec* %184 to %struct.word_type*
  %olist460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist460, i32 0, i64 0
  %opred462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx461, i32 0, i32 0
  %185 = load %union.rec*, %union.rec** %opred462, align 8
  %186 = load i32, i32* @zz_size, align 4
  %idxprom463 = sext i32 %186 to i64
  %arrayidx464 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom463
  store %union.rec* %185, %union.rec** %arrayidx464, align 8
  br label %if.end.465

if.end.465:                                       ; preds = %if.else.456, %if.then.454
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.then.447
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1467 = bitcast %union.rec* %187 to %struct.word_type*
  %ou1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 1
  %os11469 = bitcast %union.FIRST_UNION* %ou1468 to %struct.anon*
  %otype470 = getelementptr inbounds %struct.anon, %struct.anon* %os11469, i32 0, i32 0
  store i8 17, i8* %otype470, align 1
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1471 = bitcast %union.rec* %189 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 1
  %osucc474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 1
  store %union.rec* %188, %union.rec** %osucc474, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1475 = bitcast %union.rec* %190 to %struct.word_type*
  %olist476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 0
  %arrayidx477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist476, i32 0, i64 1
  %opred478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx477, i32 0, i32 0
  store %union.rec* %188, %union.rec** %opred478, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1479 = bitcast %union.rec* %191 to %struct.word_type*
  %olist480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 0
  %arrayidx481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist480, i32 0, i64 0
  %osucc482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx481, i32 0, i32 1
  store %union.rec* %188, %union.rec** %osucc482, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1483 = bitcast %union.rec* %192 to %struct.word_type*
  %olist484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist484, i32 0, i64 0
  %opred486 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx485, i32 0, i32 0
  store %union.rec* %188, %union.rec** %opred486, align 8
  store %union.rec* %188, %union.rec** %extras, align 8
  %193 = load %union.rec*, %union.rec** %y, align 8
  %call487 = call %union.rec* @MinSize(%union.rec* %193, i32 0, %union.rec** %extras)
  store %union.rec* %call487, %union.rec** %y, align 8
  %194 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1488 = bitcast %union.rec* %194 to %struct.word_type*
  %ou2489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 2
  %os23490 = bitcast %union.SECOND_UNION* %ou2489 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23490, i32 0, i32 2
  %bf.load491 = load i16, i16* %ogall_dir, align 2
  %bf.lshr492 = lshr i16 %bf.load491, 8
  %bf.clear493 = and i16 %bf.lshr492, 1
  %bf.cast494 = zext i16 %bf.clear493 to i32
  %cmp495 = icmp eq i32 %bf.cast494, 1
  br i1 %cmp495, label %if.then.497, label %if.else.609

if.then.497:                                      ; preds = %if.end.466
  %195 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %195, i32 0, i32 0
  %196 = load i32, i32* %obc, align 4
  %197 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2498 = bitcast %union.rec* %197 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2498, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc499 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 %196, i32* %obc499, align 4
  %198 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %198, i32 0, i32 1
  %199 = load i32, i32* %obfc, align 4
  %200 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2500 = bitcast %union.rec* %200 to %struct.closure_type*
  %ou4501 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2500, i32 0, i32 4
  %oconstraint502 = bitcast %union.FOURTH_UNION* %ou4501 to %struct.CONSTRAINT*
  %obfc503 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint502, i32 0, i32 1
  store i32 %199, i32* %obfc503, align 4
  %201 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %201, i32 0, i32 2
  %202 = load i32, i32* %ofc, align 4
  %203 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2504 = bitcast %union.rec* %203 to %struct.closure_type*
  %ou4505 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2504, i32 0, i32 4
  %oconstraint506 = bitcast %union.FOURTH_UNION* %ou4505 to %struct.CONSTRAINT*
  %ofc507 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint506, i32 0, i32 2
  store i32 %202, i32* %ofc507, align 4
  %204 = load %union.rec*, %union.rec** %y, align 8
  %205 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call508 = call %union.rec* @BreakObject(%union.rec* %204, %struct.CONSTRAINT* %205)
  store %union.rec* %call508, %union.rec** %y, align 8
  %206 = load %union.rec*, %union.rec** %y, align 8
  %os1509 = bitcast %union.rec* %206 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %207 = load i32, i32* %arrayidx510, align 4
  %208 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc511 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %208, i32 0, i32 0
  %209 = load i32, i32* %obc511, align 4
  %cmp512 = icmp sle i32 %207, %209
  br i1 %cmp512, label %land.lhs.true.514, label %if.then.536

land.lhs.true.514:                                ; preds = %if.then.497
  %210 = load %union.rec*, %union.rec** %y, align 8
  %os1515 = bitcast %union.rec* %210 to %struct.word_type*
  %ou3516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 3
  %os31517 = bitcast %union.THIRD_UNION* %ou3516 to %struct.anon.6*
  %oback518 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x i32], [2 x i32]* %oback518, i32 0, i64 0
  %211 = load i32, i32* %arrayidx519, align 4
  %212 = load %union.rec*, %union.rec** %y, align 8
  %os1520 = bitcast %union.rec* %212 to %struct.word_type*
  %ou3521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 3
  %os31522 = bitcast %union.THIRD_UNION* %ou3521 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31522, i32 0, i32 1
  %arrayidx523 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %213 = load i32, i32* %arrayidx523, align 4
  %add = add nsw i32 %211, %213
  %214 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc524 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %214, i32 0, i32 1
  %215 = load i32, i32* %obfc524, align 4
  %cmp525 = icmp sle i32 %add, %215
  br i1 %cmp525, label %land.lhs.true.527, label %if.then.536

land.lhs.true.527:                                ; preds = %land.lhs.true.514
  %216 = load %union.rec*, %union.rec** %y, align 8
  %os1528 = bitcast %union.rec* %216 to %struct.word_type*
  %ou3529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 3
  %os31530 = bitcast %union.THIRD_UNION* %ou3529 to %struct.anon.6*
  %ofwd531 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31530, i32 0, i32 1
  %arrayidx532 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd531, i32 0, i64 0
  %217 = load i32, i32* %arrayidx532, align 4
  %218 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc533 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %218, i32 0, i32 2
  %219 = load i32, i32* %ofc533, align 4
  %cmp534 = icmp sle i32 %217, %219
  br i1 %cmp534, label %if.end.553, label %if.then.536

if.then.536:                                      ; preds = %land.lhs.true.527, %land.lhs.true.514, %if.then.497
  %220 = load %union.rec*, %union.rec** %y, align 8
  %os1537 = bitcast %union.rec* %220 to %struct.word_type*
  %ou1538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1537, i32 0, i32 1
  %ofpos539 = bitcast %union.FIRST_UNION* %ou1538 to %struct.FILE_POS*
  %221 = load %union.rec*, %union.rec** %y, align 8
  %os1540 = bitcast %union.rec* %221 to %struct.word_type*
  %ou3541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 3
  %os31542 = bitcast %union.THIRD_UNION* %ou3541 to %struct.anon.6*
  %oback543 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31542, i32 0, i32 0
  %arrayidx544 = getelementptr inbounds [2 x i32], [2 x i32]* %oback543, i32 0, i64 0
  %222 = load i32, i32* %arrayidx544, align 4
  %call545 = call i8* @EchoLength(i32 %222)
  %223 = load %union.rec*, %union.rec** %y, align 8
  %os1546 = bitcast %union.rec* %223 to %struct.word_type*
  %ou3547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1546, i32 0, i32 3
  %os31548 = bitcast %union.THIRD_UNION* %ou3547 to %struct.anon.6*
  %ofwd549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31548, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd549, i32 0, i64 0
  %224 = load i32, i32* %arrayidx550, align 4
  %call551 = call i8* @EchoLength(i32 %224)
  %call552 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos539, i8* %call545, i8* %call551)
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.536, %land.lhs.true.527
  %225 = load %union.rec*, %union.rec** %y, align 8
  %os1554 = bitcast %union.rec* %225 to %struct.word_type*
  %ou3555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1554, i32 0, i32 3
  %os31556 = bitcast %union.THIRD_UNION* %ou3555 to %struct.anon.6*
  %oback557 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x i32], [2 x i32]* %oback557, i32 0, i64 0
  %226 = load i32, i32* %arrayidx558, align 4
  %227 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1559 = bitcast %union.rec* %227 to %struct.word_type*
  %ou3560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1559, i32 0, i32 3
  %os31561 = bitcast %union.THIRD_UNION* %ou3560 to %struct.anon.6*
  %oback562 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31561, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [2 x i32], [2 x i32]* %oback562, i32 0, i64 0
  store i32 %226, i32* %arrayidx563, align 4
  %228 = load %union.rec*, %union.rec** %y, align 8
  %os1564 = bitcast %union.rec* %228 to %struct.word_type*
  %ou3565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1564, i32 0, i32 3
  %os31566 = bitcast %union.THIRD_UNION* %ou3565 to %struct.anon.6*
  %ofwd567 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31566, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd567, i32 0, i64 0
  %229 = load i32, i32* %arrayidx568, align 4
  %230 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1569 = bitcast %union.rec* %230 to %struct.word_type*
  %ou3570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 3
  %os31571 = bitcast %union.THIRD_UNION* %ou3570 to %struct.anon.6*
  %ofwd572 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31571, i32 0, i32 1
  %arrayidx573 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd572, i32 0, i64 0
  store i32 %229, i32* %arrayidx573, align 4
  %231 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1574 = bitcast %union.rec* %231 to %struct.word_type*
  %ou3575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1574, i32 0, i32 3
  %os31576 = bitcast %union.THIRD_UNION* %ou3575 to %struct.anon.6*
  %oback577 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31576, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [2 x i32], [2 x i32]* %oback577, i32 0, i64 0
  %232 = load i32, i32* %arrayidx578, align 4
  %233 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc579 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %233, i32 0, i32 0
  %234 = load i32, i32* %obc579, align 4
  %cmp580 = icmp sle i32 %232, %234
  br i1 %cmp580, label %land.lhs.true.582, label %if.then.606

land.lhs.true.582:                                ; preds = %if.end.553
  %235 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1583 = bitcast %union.rec* %235 to %struct.word_type*
  %ou3584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 3
  %os31585 = bitcast %union.THIRD_UNION* %ou3584 to %struct.anon.6*
  %oback586 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x i32], [2 x i32]* %oback586, i32 0, i64 0
  %236 = load i32, i32* %arrayidx587, align 4
  %237 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1588 = bitcast %union.rec* %237 to %struct.word_type*
  %ou3589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 3
  %os31590 = bitcast %union.THIRD_UNION* %ou3589 to %struct.anon.6*
  %ofwd591 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31590, i32 0, i32 1
  %arrayidx592 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd591, i32 0, i64 0
  %238 = load i32, i32* %arrayidx592, align 4
  %add593 = add nsw i32 %236, %238
  %239 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc594 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %239, i32 0, i32 1
  %240 = load i32, i32* %obfc594, align 4
  %cmp595 = icmp sle i32 %add593, %240
  br i1 %cmp595, label %land.lhs.true.597, label %if.then.606

land.lhs.true.597:                                ; preds = %land.lhs.true.582
  %241 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1598 = bitcast %union.rec* %241 to %struct.word_type*
  %ou3599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 3
  %os31600 = bitcast %union.THIRD_UNION* %ou3599 to %struct.anon.6*
  %ofwd601 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31600, i32 0, i32 1
  %arrayidx602 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd601, i32 0, i64 0
  %242 = load i32, i32* %arrayidx602, align 4
  %243 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc603 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %243, i32 0, i32 2
  %244 = load i32, i32* %ofc603, align 4
  %cmp604 = icmp sle i32 %242, %244
  br i1 %cmp604, label %if.end.608, label %if.then.606

if.then.606:                                      ; preds = %land.lhs.true.597, %land.lhs.true.582, %if.end.553
  %245 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call607 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %245, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.608

if.end.608:                                       ; preds = %if.then.606, %land.lhs.true.597
  br label %if.end.632

if.else.609:                                      ; preds = %if.end.466
  %246 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a = bitcast %union.rec* %246 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 8
  %247 = load %union.rec*, %union.rec** %oopt_components, align 8
  %cmp610 = icmp ne %union.rec* %247, null
  br i1 %cmp610, label %land.lhs.true.612, label %if.end.631

land.lhs.true.612:                                ; preds = %if.else.609
  %248 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1613 = bitcast %union.rec* %248 to %struct.word_type*
  %ou2614 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1613, i32 0, i32 2
  %os23615 = bitcast %union.SECOND_UNION* %ou2614 to %struct.anon.2*
  %oopt_hyph = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23615, i32 0, i32 2
  %bf.load616 = load i16, i16* %oopt_hyph, align 2
  %bf.lshr617 = lshr i16 %bf.load616, 9
  %bf.clear618 = and i16 %bf.lshr617, 1
  %bf.cast619 = zext i16 %bf.clear618 to i32
  %tobool620 = icmp ne i32 %bf.cast619, 0
  br i1 %tobool620, label %land.lhs.true.621, label %if.end.631

land.lhs.true.621:                                ; preds = %land.lhs.true.612
  %249 = load %union.rec*, %union.rec** %y, align 8
  %os1622 = bitcast %union.rec* %249 to %struct.word_type*
  %ou1623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1622, i32 0, i32 1
  %os11624 = bitcast %union.FIRST_UNION* %ou1623 to %struct.anon*
  %otype625 = getelementptr inbounds %struct.anon, %struct.anon* %os11624, i32 0, i32 0
  %250 = load i8, i8* %otype625, align 1
  %conv626 = zext i8 %250 to i32
  %cmp627 = icmp eq i32 %conv626, 17
  br i1 %cmp627, label %if.then.629, label %if.end.631

if.then.629:                                      ; preds = %land.lhs.true.621
  %251 = load %union.rec*, %union.rec** %y, align 8
  %call630 = call %union.rec* @Hyphenate(%union.rec* %251)
  store %union.rec* %call630, %union.rec** %y, align 8
  br label %if.end.631

if.end.631:                                       ; preds = %if.then.629, %land.lhs.true.621, %land.lhs.true.612, %if.else.609
  br label %if.end.632

if.end.632:                                       ; preds = %if.end.631, %if.end.608
  %252 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1633 = bitcast %union.rec* %252 to %struct.word_type*
  %ou2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1633, i32 0, i32 2
  %os23635 = bitcast %union.SECOND_UNION* %ou2634 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23635, i32 0, i32 2
  %bf.load636 = load i16, i16* %oblocked, align 2
  %bf.clear637 = and i16 %bf.load636, -33
  store i16 %bf.clear637, i16* %oblocked, align 2
  %253 = load i32, i32* %rows.addr, align 4
  %tobool638 = icmp ne i32 %253, 0
  br i1 %tobool638, label %if.then.639, label %if.end.2372

if.then.639:                                      ; preds = %if.end.632
  %254 = load %union.rec*, %union.rec** %hd.addr, align 8
  store %union.rec* %254, %union.rec** %link, align 8
  br label %for.cond.640

for.cond.640:                                     ; preds = %for.inc.2366, %if.then.639
  %255 = load %union.rec*, %union.rec** %link, align 8
  %os1641 = bitcast %union.rec* %255 to %struct.word_type*
  %olist642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 0
  %arrayidx643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist642, i32 0, i64 0
  %osucc644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx643, i32 0, i32 1
  %256 = load %union.rec*, %union.rec** %osucc644, align 8
  %257 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp645 = icmp ne %union.rec* %256, %257
  br i1 %cmp645, label %for.body.647, label %for.end.2371

for.body.647:                                     ; preds = %for.cond.640
  %258 = load %union.rec*, %union.rec** %link, align 8
  %os1648 = bitcast %union.rec* %258 to %struct.word_type*
  %olist649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 0
  %arrayidx650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist649, i32 0, i64 0
  %osucc651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx650, i32 0, i32 1
  %259 = load %union.rec*, %union.rec** %osucc651, align 8
  %os1652 = bitcast %union.rec* %259 to %struct.word_type*
  %olist653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1652, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist653, i32 0, i64 1
  %opred655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx654, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred655, align 8
  store %union.rec* %260, %union.rec** %y, align 8
  br label %for.cond.656

for.cond.656:                                     ; preds = %for.inc.665, %for.body.647
  %261 = load %union.rec*, %union.rec** %y, align 8
  %os1657 = bitcast %union.rec* %261 to %struct.word_type*
  %ou1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1657, i32 0, i32 1
  %os11659 = bitcast %union.FIRST_UNION* %ou1658 to %struct.anon*
  %otype660 = getelementptr inbounds %struct.anon, %struct.anon* %os11659, i32 0, i32 0
  %262 = load i8, i8* %otype660, align 1
  %conv661 = zext i8 %262 to i32
  %cmp662 = icmp eq i32 %conv661, 0
  br i1 %cmp662, label %for.body.664, label %for.end.670

for.body.664:                                     ; preds = %for.cond.656
  br label %for.inc.665

for.inc.665:                                      ; preds = %for.body.664
  %263 = load %union.rec*, %union.rec** %y, align 8
  %os1666 = bitcast %union.rec* %263 to %struct.word_type*
  %olist667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1666, i32 0, i32 0
  %arrayidx668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist667, i32 0, i64 1
  %opred669 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx668, i32 0, i32 0
  %264 = load %union.rec*, %union.rec** %opred669, align 8
  store %union.rec* %264, %union.rec** %y, align 8
  br label %for.cond.656

for.end.670:                                      ; preds = %for.cond.656
  %265 = load %union.rec*, %union.rec** %y, align 8
  %os1671 = bitcast %union.rec* %265 to %struct.word_type*
  %ou1672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 1
  %os11673 = bitcast %union.FIRST_UNION* %ou1672 to %struct.anon*
  %otype674 = getelementptr inbounds %struct.anon, %struct.anon* %os11673, i32 0, i32 0
  %266 = load i8, i8* %otype674, align 1
  %conv675 = zext i8 %266 to i32
  switch i32 %conv675, label %sw.default [
    i32 1, label %sw.bb
    i32 19, label %sw.bb.689
    i32 17, label %sw.bb.938
    i32 9, label %sw.bb.1191
    i32 2, label %sw.bb.2339
    i32 8, label %sw.bb.2339
  ]

sw.bb:                                            ; preds = %for.end.670
  %267 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %267 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %268 = bitcast %struct.GAP* %ogap to i16*
  %bf.load676 = load i16, i16* %268, align 4
  %bf.lshr677 = lshr i16 %bf.load676, 9
  %bf.clear678 = and i16 %bf.lshr677, 1
  %bf.cast679 = zext i16 %bf.clear678 to i32
  %tobool680 = icmp ne i32 %bf.cast679, 0
  br i1 %tobool680, label %if.end.688, label %if.then.681

if.then.681:                                      ; preds = %sw.bb
  %269 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1682 = bitcast %union.rec* %269 to %struct.word_type*
  %ou2683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1682, i32 0, i32 2
  %os23684 = bitcast %union.SECOND_UNION* %ou2683 to %struct.anon.2*
  %oblocked685 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23684, i32 0, i32 2
  %bf.load686 = load i16, i16* %oblocked685, align 2
  %bf.clear687 = and i16 %bf.load686, -33
  %bf.set = or i16 %bf.clear687, 32
  store i16 %bf.set, i16* %oblocked685, align 2
  br label %if.end.688

if.end.688:                                       ; preds = %if.then.681, %sw.bb
  br label %sw.epilog

sw.bb.689:                                        ; preds = %for.end.670
  %270 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1690 = bitcast %union.rec* %270 to %struct.word_type*
  %ou2691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1690, i32 0, i32 2
  %os23692 = bitcast %union.SECOND_UNION* %ou2691 to %struct.anon.2*
  %ogall_dir693 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23692, i32 0, i32 2
  %bf.load694 = load i16, i16* %ogall_dir693, align 2
  %bf.lshr695 = lshr i16 %bf.load694, 8
  %bf.clear696 = and i16 %bf.lshr695, 1
  %bf.cast697 = zext i16 %bf.clear696 to i32
  %cmp698 = icmp eq i32 %bf.cast697, 1
  br i1 %cmp698, label %if.then.700, label %if.end.937

if.then.700:                                      ; preds = %sw.bb.689
  %271 = load %union.rec*, %union.rec** %y, align 8
  %os1702 = bitcast %union.rec* %271 to %struct.word_type*
  %olist703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1702, i32 0, i32 0
  %arrayidx704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist703, i32 0, i64 0
  %osucc705 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx704, i32 0, i32 1
  %272 = load %union.rec*, %union.rec** %osucc705, align 8
  store %union.rec* %272, %union.rec** %xxstart, align 8
  %273 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %273, %union.rec** %xxstop, align 8
  %274 = load %union.rec*, %union.rec** %y, align 8
  %os1708 = bitcast %union.rec* %274 to %struct.word_type*
  %olist709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1708, i32 0, i32 0
  %arrayidx710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist709, i32 0, i64 1
  %osucc711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx710, i32 0, i32 1
  %275 = load %union.rec*, %union.rec** %osucc711, align 8
  store %union.rec* %275, %union.rec** %xxdest, align 8
  %276 = load %union.rec*, %union.rec** %xxstart, align 8
  %277 = load %union.rec*, %union.rec** %xxstop, align 8
  %cmp712 = icmp ne %union.rec* %276, %277
  br i1 %cmp712, label %if.then.714, label %if.end.805

if.then.714:                                      ; preds = %if.then.700
  %278 = load %union.rec*, %union.rec** %xxstart, align 8
  %os1715 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 1
  %os11717 = bitcast %union.FIRST_UNION* %ou1716 to %struct.anon*
  %otype718 = getelementptr inbounds %struct.anon, %struct.anon* %os11717, i32 0, i32 0
  %279 = load i8, i8* %otype718, align 1
  %conv719 = zext i8 %279 to i32
  %cmp720 = icmp eq i32 %conv719, 0
  br i1 %cmp720, label %if.end.724, label %if.then.722

if.then.722:                                      ; preds = %if.then.714
  %280 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call723 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.724

if.end.724:                                       ; preds = %if.then.722, %if.then.714
  %281 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %281, %union.rec** @zz_res, align 8
  %282 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %282, %union.rec** @zz_hold, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp725 = icmp eq %union.rec* %283, null
  br i1 %cmp725, label %cond.true.727, label %cond.false.728

cond.true.727:                                    ; preds = %if.end.724
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.763

cond.false.728:                                   ; preds = %if.end.724
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp729 = icmp eq %union.rec* %285, null
  br i1 %cmp729, label %cond.true.731, label %cond.false.732

cond.true.731:                                    ; preds = %cond.false.728
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.761

cond.false.732:                                   ; preds = %cond.false.728
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %287 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 0
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  %288 = load %union.rec*, %union.rec** %opred736, align 8
  store %union.rec* %288, %union.rec** @zz_tmp, align 8
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1737 = bitcast %union.rec* %289 to %struct.word_type*
  %olist738 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1737, i32 0, i32 0
  %arrayidx739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist738, i32 0, i64 0
  %opred740 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx739, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred740, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1741 = bitcast %union.rec* %291 to %struct.word_type*
  %olist742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1741, i32 0, i32 0
  %arrayidx743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist742, i32 0, i64 0
  %opred744 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx743, i32 0, i32 0
  store %union.rec* %290, %union.rec** %opred744, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1745 = bitcast %union.rec* %293 to %struct.word_type*
  %olist746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1745, i32 0, i32 0
  %arrayidx747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist746, i32 0, i64 0
  %opred748 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx747, i32 0, i32 0
  %294 = load %union.rec*, %union.rec** %opred748, align 8
  %os1749 = bitcast %union.rec* %294 to %struct.word_type*
  %olist750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1749, i32 0, i32 0
  %arrayidx751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist750, i32 0, i64 0
  %osucc752 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx751, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc752, align 8
  %295 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1753 = bitcast %union.rec* %296 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 0
  %opred756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  store %union.rec* %295, %union.rec** %opred756, align 8
  %297 = load %union.rec*, %union.rec** @zz_res, align 8
  %298 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1757 = bitcast %union.rec* %298 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %osucc760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 1
  store %union.rec* %297, %union.rec** %osucc760, align 8
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.732, %cond.true.731
  %cond762 = phi %union.rec* [ %286, %cond.true.731 ], [ %297, %cond.false.732 ]
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.end.761, %cond.true.727
  %cond764 = phi %union.rec* [ %284, %cond.true.727 ], [ %cond762, %cond.end.761 ]
  %299 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %299, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp765 = icmp eq %union.rec* %301, null
  br i1 %cmp765, label %cond.true.767, label %cond.false.768

cond.true.767:                                    ; preds = %cond.end.763
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.803

cond.false.768:                                   ; preds = %cond.end.763
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp769 = icmp eq %union.rec* %303, null
  br i1 %cmp769, label %cond.true.771, label %cond.false.772

cond.true.771:                                    ; preds = %cond.false.768
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.801

cond.false.772:                                   ; preds = %cond.false.768
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1773 = bitcast %union.rec* %305 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 0
  %opred776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred776, align 8
  store %union.rec* %306, %union.rec** @zz_tmp, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1777 = bitcast %union.rec* %307 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 0
  %opred780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %opred780, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1781 = bitcast %union.rec* %309 to %struct.word_type*
  %olist782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 0
  %arrayidx783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist782, i32 0, i64 0
  %opred784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx783, i32 0, i32 0
  store %union.rec* %308, %union.rec** %opred784, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1785 = bitcast %union.rec* %311 to %struct.word_type*
  %olist786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 0
  %arrayidx787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist786, i32 0, i64 0
  %opred788 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx787, i32 0, i32 0
  %312 = load %union.rec*, %union.rec** %opred788, align 8
  %os1789 = bitcast %union.rec* %312 to %struct.word_type*
  %olist790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 0
  %arrayidx791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist790, i32 0, i64 0
  %osucc792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx791, i32 0, i32 1
  store %union.rec* %310, %union.rec** %osucc792, align 8
  %313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1793 = bitcast %union.rec* %314 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 0
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  store %union.rec* %313, %union.rec** %opred796, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1797 = bitcast %union.rec* %316 to %struct.word_type*
  %olist798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist798, i32 0, i64 0
  %osucc800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx799, i32 0, i32 1
  store %union.rec* %315, %union.rec** %osucc800, align 8
  br label %cond.end.801

cond.end.801:                                     ; preds = %cond.false.772, %cond.true.771
  %cond802 = phi %union.rec* [ %304, %cond.true.771 ], [ %315, %cond.false.772 ]
  br label %cond.end.803

cond.end.803:                                     ; preds = %cond.end.801, %cond.true.767
  %cond804 = phi %union.rec* [ %302, %cond.true.767 ], [ %cond802, %cond.end.801 ]
  br label %if.end.805

if.end.805:                                       ; preds = %cond.end.803, %if.then.700
  %317 = load %union.rec*, %union.rec** %y, align 8
  %os1806 = bitcast %union.rec* %317 to %struct.word_type*
  %olist807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1806, i32 0, i32 0
  %arrayidx808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist807, i32 0, i64 1
  %osucc809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx808, i32 0, i32 1
  %318 = load %union.rec*, %union.rec** %osucc809, align 8
  store %union.rec* %318, %union.rec** @xx_link, align 8
  %319 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1810 = bitcast %union.rec* %320 to %struct.word_type*
  %olist811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 0
  %arrayidx812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist811, i32 0, i64 1
  %osucc813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx812, i32 0, i32 1
  %321 = load %union.rec*, %union.rec** %osucc813, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp814 = icmp eq %union.rec* %321, %322
  br i1 %cmp814, label %cond.true.816, label %cond.false.817

cond.true.816:                                    ; preds = %if.end.805
  br label %cond.end.846

cond.false.817:                                   ; preds = %if.end.805
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1818 = bitcast %union.rec* %323 to %struct.word_type*
  %olist819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist819, i32 0, i64 1
  %osucc821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx820, i32 0, i32 1
  %324 = load %union.rec*, %union.rec** %osucc821, align 8
  store %union.rec* %324, %union.rec** @zz_res, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1822 = bitcast %union.rec* %325 to %struct.word_type*
  %olist823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1822, i32 0, i32 0
  %arrayidx824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist823, i32 0, i64 1
  %opred825 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx824, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %opred825, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1826 = bitcast %union.rec* %327 to %struct.word_type*
  %olist827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1826, i32 0, i32 0
  %arrayidx828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist827, i32 0, i64 1
  %opred829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx828, i32 0, i32 0
  store %union.rec* %326, %union.rec** %opred829, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1830 = bitcast %union.rec* %329 to %struct.word_type*
  %olist831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist831, i32 0, i64 1
  %opred833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx832, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %opred833, align 8
  %os1834 = bitcast %union.rec* %330 to %struct.word_type*
  %olist835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1834, i32 0, i32 0
  %arrayidx836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist835, i32 0, i64 1
  %osucc837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx836, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc837, align 8
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1838 = bitcast %union.rec* %332 to %struct.word_type*
  %olist839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1838, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist839, i32 0, i64 1
  %osucc841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx840, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc841, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1842 = bitcast %union.rec* %333 to %struct.word_type*
  %olist843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1842, i32 0, i32 0
  %arrayidx844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist843, i32 0, i64 1
  %opred845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx844, i32 0, i32 0
  store %union.rec* %331, %union.rec** %opred845, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.846

cond.end.846:                                     ; preds = %cond.false.817, %cond.true.816
  %cond847 = phi %union.rec* [ null, %cond.true.816 ], [ %334, %cond.false.817 ]
  store %union.rec* %cond847, %union.rec** @xx_tmp, align 8
  %335 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %335, %union.rec** @zz_hold, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1848 = bitcast %union.rec* %336 to %struct.word_type*
  %olist849 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1848, i32 0, i32 0
  %arrayidx850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist849, i32 0, i64 0
  %osucc851 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx850, i32 0, i32 1
  %337 = load %union.rec*, %union.rec** %osucc851, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp852 = icmp eq %union.rec* %337, %338
  br i1 %cmp852, label %cond.true.854, label %cond.false.855

cond.true.854:                                    ; preds = %cond.end.846
  br label %cond.end.884

cond.false.855:                                   ; preds = %cond.end.846
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1856 = bitcast %union.rec* %339 to %struct.word_type*
  %olist857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1856, i32 0, i32 0
  %arrayidx858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist857, i32 0, i64 0
  %osucc859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx858, i32 0, i32 1
  %340 = load %union.rec*, %union.rec** %osucc859, align 8
  store %union.rec* %340, %union.rec** @zz_res, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1860 = bitcast %union.rec* %341 to %struct.word_type*
  %olist861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1860, i32 0, i32 0
  %arrayidx862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist861, i32 0, i64 0
  %opred863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx862, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %opred863, align 8
  %343 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1864 = bitcast %union.rec* %343 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %opred867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred867, align 8
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1868 = bitcast %union.rec* %345 to %struct.word_type*
  %olist869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1868, i32 0, i32 0
  %arrayidx870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist869, i32 0, i64 0
  %opred871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx870, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %opred871, align 8
  %os1872 = bitcast %union.rec* %346 to %struct.word_type*
  %olist873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 0
  %arrayidx874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist873, i32 0, i64 0
  %osucc875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx874, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc875, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1876 = bitcast %union.rec* %348 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 0
  %osucc879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc879, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1880 = bitcast %union.rec* %349 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 0
  %opred883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred883, align 8
  %350 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.884

cond.end.884:                                     ; preds = %cond.false.855, %cond.true.854
  %cond885 = phi %union.rec* [ null, %cond.true.854 ], [ %350, %cond.false.855 ]
  %351 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %352, %union.rec** @zz_hold, align 8
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1886 = bitcast %union.rec* %353 to %struct.word_type*
  %ou1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1886, i32 0, i32 1
  %os11888 = bitcast %union.FIRST_UNION* %ou1887 to %struct.anon*
  %otype889 = getelementptr inbounds %struct.anon, %struct.anon* %os11888, i32 0, i32 0
  %354 = load i8, i8* %otype889, align 1
  %conv890 = zext i8 %354 to i32
  %cmp891 = icmp eq i32 %conv890, 11
  br i1 %cmp891, label %cond.true.901, label %lor.lhs.false.893

lor.lhs.false.893:                                ; preds = %cond.end.884
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1894 = bitcast %union.rec* %355 to %struct.word_type*
  %ou1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1894, i32 0, i32 1
  %os11896 = bitcast %union.FIRST_UNION* %ou1895 to %struct.anon*
  %otype897 = getelementptr inbounds %struct.anon, %struct.anon* %os11896, i32 0, i32 0
  %356 = load i8, i8* %otype897, align 1
  %conv898 = zext i8 %356 to i32
  %cmp899 = icmp eq i32 %conv898, 12
  br i1 %cmp899, label %cond.true.901, label %cond.false.906

cond.true.901:                                    ; preds = %lor.lhs.false.893, %cond.end.884
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1902 = bitcast %union.rec* %357 to %struct.word_type*
  %ou1903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1902, i32 0, i32 1
  %os11904 = bitcast %union.FIRST_UNION* %ou1903 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11904, i32 0, i32 1
  %358 = load i8, i8* %orec_size, align 1
  %conv905 = zext i8 %358 to i32
  br label %cond.end.914

cond.false.906:                                   ; preds = %lor.lhs.false.893
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1907 = bitcast %union.rec* %359 to %struct.word_type*
  %ou1908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1907, i32 0, i32 1
  %os11909 = bitcast %union.FIRST_UNION* %ou1908 to %struct.anon*
  %otype910 = getelementptr inbounds %struct.anon, %struct.anon* %os11909, i32 0, i32 0
  %360 = load i8, i8* %otype910, align 1
  %idxprom911 = zext i8 %360 to i64
  %arrayidx912 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom911
  %361 = load i8, i8* %arrayidx912, align 1
  %conv913 = zext i8 %361 to i32
  br label %cond.end.914

cond.end.914:                                     ; preds = %cond.false.906, %cond.true.901
  %cond915 = phi i32 [ %conv905, %cond.true.901 ], [ %conv913, %cond.false.906 ]
  store i32 %cond915, i32* @zz_size, align 4
  %362 = load i32, i32* @zz_size, align 4
  %idxprom916 = sext i32 %362 to i64
  %arrayidx917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom916
  %363 = load %union.rec*, %union.rec** %arrayidx917, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1918 = bitcast %union.rec* %364 to %struct.word_type*
  %olist919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist919, i32 0, i64 0
  %opred921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx920, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred921, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = load i32, i32* @zz_size, align 4
  %idxprom922 = sext i32 %366 to i64
  %arrayidx923 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom922
  store %union.rec* %365, %union.rec** %arrayidx923, align 8
  %367 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1924 = bitcast %union.rec* %367 to %struct.word_type*
  %olist925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1924, i32 0, i32 0
  %arrayidx926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist925, i32 0, i64 1
  %osucc927 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx926, i32 0, i32 1
  %368 = load %union.rec*, %union.rec** %osucc927, align 8
  %369 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp928 = icmp eq %union.rec* %368, %369
  br i1 %cmp928, label %if.then.930, label %if.end.932

if.then.930:                                      ; preds = %cond.end.914
  %370 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call931 = call i32 @DisposeObject(%union.rec* %370)
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.930, %cond.end.914
  %371 = load %union.rec*, %union.rec** %link, align 8
  %os1933 = bitcast %union.rec* %371 to %struct.word_type*
  %olist934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1933, i32 0, i32 0
  %arrayidx935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist934, i32 0, i64 0
  %opred936 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx935, i32 0, i32 0
  %372 = load %union.rec*, %union.rec** %opred936, align 8
  store %union.rec* %372, %union.rec** %link, align 8
  br label %if.end.937

if.end.937:                                       ; preds = %if.end.932, %sw.bb.689
  br label %sw.epilog

sw.bb.938:                                        ; preds = %for.end.670
  %373 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1939 = bitcast %union.rec* %373 to %struct.word_type*
  %ou2940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 2
  %os23941 = bitcast %union.SECOND_UNION* %ou2940 to %struct.anon.2*
  %ogall_dir942 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23941, i32 0, i32 2
  %bf.load943 = load i16, i16* %ogall_dir942, align 2
  %bf.lshr944 = lshr i16 %bf.load943, 8
  %bf.clear945 = and i16 %bf.lshr944, 1
  %bf.cast946 = zext i16 %bf.clear945 to i32
  %cmp947 = icmp eq i32 %bf.cast946, 0
  br i1 %cmp947, label %if.then.949, label %if.end.1190

if.then.949:                                      ; preds = %sw.bb.938
  %374 = load %union.rec*, %union.rec** %y, align 8
  %os1952 = bitcast %union.rec* %374 to %struct.word_type*
  %olist953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1952, i32 0, i32 0
  %arrayidx954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist953, i32 0, i64 0
  %osucc955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx954, i32 0, i32 1
  %375 = load %union.rec*, %union.rec** %osucc955, align 8
  store %union.rec* %375, %union.rec** %xxstart951, align 8
  %376 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %376, %union.rec** %xxstop957, align 8
  %377 = load %union.rec*, %union.rec** %y, align 8
  %os1960 = bitcast %union.rec* %377 to %struct.word_type*
  %olist961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1960, i32 0, i32 0
  %arrayidx962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist961, i32 0, i64 1
  %osucc963 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx962, i32 0, i32 1
  %378 = load %union.rec*, %union.rec** %osucc963, align 8
  store %union.rec* %378, %union.rec** %xxdest959, align 8
  %379 = load %union.rec*, %union.rec** %xxstart951, align 8
  %380 = load %union.rec*, %union.rec** %xxstop957, align 8
  %cmp964 = icmp ne %union.rec* %379, %380
  br i1 %cmp964, label %if.then.966, label %if.end.1057

if.then.966:                                      ; preds = %if.then.949
  %381 = load %union.rec*, %union.rec** %xxstart951, align 8
  %os1967 = bitcast %union.rec* %381 to %struct.word_type*
  %ou1968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 1
  %os11969 = bitcast %union.FIRST_UNION* %ou1968 to %struct.anon*
  %otype970 = getelementptr inbounds %struct.anon, %struct.anon* %os11969, i32 0, i32 0
  %382 = load i8, i8* %otype970, align 1
  %conv971 = zext i8 %382 to i32
  %cmp972 = icmp eq i32 %conv971, 0
  br i1 %cmp972, label %if.end.976, label %if.then.974

if.then.974:                                      ; preds = %if.then.966
  %383 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call975 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %383, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.976

if.end.976:                                       ; preds = %if.then.974, %if.then.966
  %384 = load %union.rec*, %union.rec** %xxstart951, align 8
  store %union.rec* %384, %union.rec** @zz_res, align 8
  %385 = load %union.rec*, %union.rec** %xxstop957, align 8
  store %union.rec* %385, %union.rec** @zz_hold, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp977 = icmp eq %union.rec* %386, null
  br i1 %cmp977, label %cond.true.979, label %cond.false.980

cond.true.979:                                    ; preds = %if.end.976
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1015

cond.false.980:                                   ; preds = %if.end.976
  %388 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp981 = icmp eq %union.rec* %388, null
  br i1 %cmp981, label %cond.true.983, label %cond.false.984

cond.true.983:                                    ; preds = %cond.false.980
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1013

cond.false.984:                                   ; preds = %cond.false.980
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1985 = bitcast %union.rec* %390 to %struct.word_type*
  %olist986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1985, i32 0, i32 0
  %arrayidx987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist986, i32 0, i64 0
  %opred988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx987, i32 0, i32 0
  %391 = load %union.rec*, %union.rec** %opred988, align 8
  store %union.rec* %391, %union.rec** @zz_tmp, align 8
  %392 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1989 = bitcast %union.rec* %392 to %struct.word_type*
  %olist990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1989, i32 0, i32 0
  %arrayidx991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist990, i32 0, i64 0
  %opred992 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx991, i32 0, i32 0
  %393 = load %union.rec*, %union.rec** %opred992, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1993 = bitcast %union.rec* %394 to %struct.word_type*
  %olist994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1993, i32 0, i32 0
  %arrayidx995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist994, i32 0, i64 0
  %opred996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx995, i32 0, i32 0
  store %union.rec* %393, %union.rec** %opred996, align 8
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1997 = bitcast %union.rec* %396 to %struct.word_type*
  %olist998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1997, i32 0, i32 0
  %arrayidx999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist998, i32 0, i64 0
  %opred1000 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx999, i32 0, i32 0
  %397 = load %union.rec*, %union.rec** %opred1000, align 8
  %os11001 = bitcast %union.rec* %397 to %struct.word_type*
  %olist1002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11001, i32 0, i32 0
  %arrayidx1003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1002, i32 0, i64 0
  %osucc1004 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1003, i32 0, i32 1
  store %union.rec* %395, %union.rec** %osucc1004, align 8
  %398 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %399 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11005 = bitcast %union.rec* %399 to %struct.word_type*
  %olist1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11005, i32 0, i32 0
  %arrayidx1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1006, i32 0, i64 0
  %opred1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1007, i32 0, i32 0
  store %union.rec* %398, %union.rec** %opred1008, align 8
  %400 = load %union.rec*, %union.rec** @zz_res, align 8
  %401 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11009 = bitcast %union.rec* %401 to %struct.word_type*
  %olist1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11009, i32 0, i32 0
  %arrayidx1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1010, i32 0, i64 0
  %osucc1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1011, i32 0, i32 1
  store %union.rec* %400, %union.rec** %osucc1012, align 8
  br label %cond.end.1013

cond.end.1013:                                    ; preds = %cond.false.984, %cond.true.983
  %cond1014 = phi %union.rec* [ %389, %cond.true.983 ], [ %400, %cond.false.984 ]
  br label %cond.end.1015

cond.end.1015:                                    ; preds = %cond.end.1013, %cond.true.979
  %cond1016 = phi %union.rec* [ %387, %cond.true.979 ], [ %cond1014, %cond.end.1013 ]
  %402 = load %union.rec*, %union.rec** %xxstart951, align 8
  store %union.rec* %402, %union.rec** @zz_res, align 8
  %403 = load %union.rec*, %union.rec** %xxdest959, align 8
  store %union.rec* %403, %union.rec** @zz_hold, align 8
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1017 = icmp eq %union.rec* %404, null
  br i1 %cmp1017, label %cond.true.1019, label %cond.false.1020

cond.true.1019:                                   ; preds = %cond.end.1015
  %405 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1055

cond.false.1020:                                  ; preds = %cond.end.1015
  %406 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1021 = icmp eq %union.rec* %406, null
  br i1 %cmp1021, label %cond.true.1023, label %cond.false.1024

cond.true.1023:                                   ; preds = %cond.false.1020
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1053

cond.false.1024:                                  ; preds = %cond.false.1020
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11025 = bitcast %union.rec* %408 to %struct.word_type*
  %olist1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11025, i32 0, i32 0
  %arrayidx1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1026, i32 0, i64 0
  %opred1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1027, i32 0, i32 0
  %409 = load %union.rec*, %union.rec** %opred1028, align 8
  store %union.rec* %409, %union.rec** @zz_tmp, align 8
  %410 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11029 = bitcast %union.rec* %410 to %struct.word_type*
  %olist1030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1030, i32 0, i64 0
  %opred1032 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1031, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %opred1032, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11033 = bitcast %union.rec* %412 to %struct.word_type*
  %olist1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11033, i32 0, i32 0
  %arrayidx1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1034, i32 0, i64 0
  %opred1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1035, i32 0, i32 0
  store %union.rec* %411, %union.rec** %opred1036, align 8
  %413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %414 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11037 = bitcast %union.rec* %414 to %struct.word_type*
  %olist1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 0
  %arrayidx1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1038, i32 0, i64 0
  %opred1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1039, i32 0, i32 0
  %415 = load %union.rec*, %union.rec** %opred1040, align 8
  %os11041 = bitcast %union.rec* %415 to %struct.word_type*
  %olist1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11041, i32 0, i32 0
  %arrayidx1043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1042, i32 0, i64 0
  %osucc1044 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1043, i32 0, i32 1
  store %union.rec* %413, %union.rec** %osucc1044, align 8
  %416 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %417 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11045 = bitcast %union.rec* %417 to %struct.word_type*
  %olist1046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11045, i32 0, i32 0
  %arrayidx1047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1046, i32 0, i64 0
  %opred1048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1047, i32 0, i32 0
  store %union.rec* %416, %union.rec** %opred1048, align 8
  %418 = load %union.rec*, %union.rec** @zz_res, align 8
  %419 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11049 = bitcast %union.rec* %419 to %struct.word_type*
  %olist1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11049, i32 0, i32 0
  %arrayidx1051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1050, i32 0, i64 0
  %osucc1052 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1051, i32 0, i32 1
  store %union.rec* %418, %union.rec** %osucc1052, align 8
  br label %cond.end.1053

cond.end.1053:                                    ; preds = %cond.false.1024, %cond.true.1023
  %cond1054 = phi %union.rec* [ %407, %cond.true.1023 ], [ %418, %cond.false.1024 ]
  br label %cond.end.1055

cond.end.1055:                                    ; preds = %cond.end.1053, %cond.true.1019
  %cond1056 = phi %union.rec* [ %405, %cond.true.1019 ], [ %cond1054, %cond.end.1053 ]
  br label %if.end.1057

if.end.1057:                                      ; preds = %cond.end.1055, %if.then.949
  %420 = load %union.rec*, %union.rec** %y, align 8
  %os11058 = bitcast %union.rec* %420 to %struct.word_type*
  %olist1059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11058, i32 0, i32 0
  %arrayidx1060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1059, i32 0, i64 1
  %osucc1061 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1060, i32 0, i32 1
  %421 = load %union.rec*, %union.rec** %osucc1061, align 8
  store %union.rec* %421, %union.rec** @xx_link, align 8
  %422 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %422, %union.rec** @zz_hold, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11062 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11062, i32 0, i32 0
  %arrayidx1064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1063, i32 0, i64 1
  %osucc1065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1064, i32 0, i32 1
  %424 = load %union.rec*, %union.rec** %osucc1065, align 8
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1066 = icmp eq %union.rec* %424, %425
  br i1 %cmp1066, label %cond.true.1068, label %cond.false.1069

cond.true.1068:                                   ; preds = %if.end.1057
  br label %cond.end.1098

cond.false.1069:                                  ; preds = %if.end.1057
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11070 = bitcast %union.rec* %426 to %struct.word_type*
  %olist1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11070, i32 0, i32 0
  %arrayidx1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1071, i32 0, i64 1
  %osucc1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1072, i32 0, i32 1
  %427 = load %union.rec*, %union.rec** %osucc1073, align 8
  store %union.rec* %427, %union.rec** @zz_res, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11074 = bitcast %union.rec* %428 to %struct.word_type*
  %olist1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11074, i32 0, i32 0
  %arrayidx1076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1075, i32 0, i64 1
  %opred1077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1076, i32 0, i32 0
  %429 = load %union.rec*, %union.rec** %opred1077, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11078 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11078, i32 0, i32 0
  %arrayidx1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1079, i32 0, i64 1
  %opred1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1080, i32 0, i32 0
  store %union.rec* %429, %union.rec** %opred1081, align 8
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11082 = bitcast %union.rec* %432 to %struct.word_type*
  %olist1083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11082, i32 0, i32 0
  %arrayidx1084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1083, i32 0, i64 1
  %opred1085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1084, i32 0, i32 0
  %433 = load %union.rec*, %union.rec** %opred1085, align 8
  %os11086 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11086, i32 0, i32 0
  %arrayidx1088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1087, i32 0, i64 1
  %osucc1089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1088, i32 0, i32 1
  store %union.rec* %431, %union.rec** %osucc1089, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11090 = bitcast %union.rec* %435 to %struct.word_type*
  %olist1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 0
  %arrayidx1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1091, i32 0, i64 1
  %osucc1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1092, i32 0, i32 1
  store %union.rec* %434, %union.rec** %osucc1093, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11094 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11094, i32 0, i32 0
  %arrayidx1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1095, i32 0, i64 1
  %opred1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1096, i32 0, i32 0
  store %union.rec* %434, %union.rec** %opred1097, align 8
  %437 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1098

cond.end.1098:                                    ; preds = %cond.false.1069, %cond.true.1068
  %cond1099 = phi %union.rec* [ null, %cond.true.1068 ], [ %437, %cond.false.1069 ]
  store %union.rec* %cond1099, %union.rec** @xx_tmp, align 8
  %438 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %438, %union.rec** @zz_hold, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11100 = bitcast %union.rec* %439 to %struct.word_type*
  %olist1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11100, i32 0, i32 0
  %arrayidx1102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1101, i32 0, i64 0
  %osucc1103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1102, i32 0, i32 1
  %440 = load %union.rec*, %union.rec** %osucc1103, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1104 = icmp eq %union.rec* %440, %441
  br i1 %cmp1104, label %cond.true.1106, label %cond.false.1107

cond.true.1106:                                   ; preds = %cond.end.1098
  br label %cond.end.1136

cond.false.1107:                                  ; preds = %cond.end.1098
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11108 = bitcast %union.rec* %442 to %struct.word_type*
  %olist1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 0
  %arrayidx1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1109, i32 0, i64 0
  %osucc1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1110, i32 0, i32 1
  %443 = load %union.rec*, %union.rec** %osucc1111, align 8
  store %union.rec* %443, %union.rec** @zz_res, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11112 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11112, i32 0, i32 0
  %arrayidx1114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1113, i32 0, i64 0
  %opred1115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1114, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %opred1115, align 8
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11116 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11116, i32 0, i32 0
  %arrayidx1118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1117, i32 0, i64 0
  %opred1119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1118, i32 0, i32 0
  store %union.rec* %445, %union.rec** %opred1119, align 8
  %447 = load %union.rec*, %union.rec** @zz_res, align 8
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11120 = bitcast %union.rec* %448 to %struct.word_type*
  %olist1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11120, i32 0, i32 0
  %arrayidx1122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1121, i32 0, i64 0
  %opred1123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1122, i32 0, i32 0
  %449 = load %union.rec*, %union.rec** %opred1123, align 8
  %os11124 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11124, i32 0, i32 0
  %arrayidx1126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1125, i32 0, i64 0
  %osucc1127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1126, i32 0, i32 1
  store %union.rec* %447, %union.rec** %osucc1127, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11128 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11128, i32 0, i32 0
  %arrayidx1130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1129, i32 0, i64 0
  %osucc1131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1130, i32 0, i32 1
  store %union.rec* %450, %union.rec** %osucc1131, align 8
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11132 = bitcast %union.rec* %452 to %struct.word_type*
  %olist1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 0
  %arrayidx1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1133, i32 0, i64 0
  %opred1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1134, i32 0, i32 0
  store %union.rec* %450, %union.rec** %opred1135, align 8
  %453 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1136

cond.end.1136:                                    ; preds = %cond.false.1107, %cond.true.1106
  %cond1137 = phi %union.rec* [ null, %cond.true.1106 ], [ %453, %cond.false.1107 ]
  %454 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %454, %union.rec** @zz_hold, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %455, %union.rec** @zz_hold, align 8
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11138 = bitcast %union.rec* %456 to %struct.word_type*
  %ou11139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 1
  %os111140 = bitcast %union.FIRST_UNION* %ou11139 to %struct.anon*
  %otype1141 = getelementptr inbounds %struct.anon, %struct.anon* %os111140, i32 0, i32 0
  %457 = load i8, i8* %otype1141, align 1
  %conv1142 = zext i8 %457 to i32
  %cmp1143 = icmp eq i32 %conv1142, 11
  br i1 %cmp1143, label %cond.true.1153, label %lor.lhs.false.1145

lor.lhs.false.1145:                               ; preds = %cond.end.1136
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11146 = bitcast %union.rec* %458 to %struct.word_type*
  %ou11147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 1
  %os111148 = bitcast %union.FIRST_UNION* %ou11147 to %struct.anon*
  %otype1149 = getelementptr inbounds %struct.anon, %struct.anon* %os111148, i32 0, i32 0
  %459 = load i8, i8* %otype1149, align 1
  %conv1150 = zext i8 %459 to i32
  %cmp1151 = icmp eq i32 %conv1150, 12
  br i1 %cmp1151, label %cond.true.1153, label %cond.false.1159

cond.true.1153:                                   ; preds = %lor.lhs.false.1145, %cond.end.1136
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11154 = bitcast %union.rec* %460 to %struct.word_type*
  %ou11155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11154, i32 0, i32 1
  %os111156 = bitcast %union.FIRST_UNION* %ou11155 to %struct.anon*
  %orec_size1157 = getelementptr inbounds %struct.anon, %struct.anon* %os111156, i32 0, i32 1
  %461 = load i8, i8* %orec_size1157, align 1
  %conv1158 = zext i8 %461 to i32
  br label %cond.end.1167

cond.false.1159:                                  ; preds = %lor.lhs.false.1145
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11160 = bitcast %union.rec* %462 to %struct.word_type*
  %ou11161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11160, i32 0, i32 1
  %os111162 = bitcast %union.FIRST_UNION* %ou11161 to %struct.anon*
  %otype1163 = getelementptr inbounds %struct.anon, %struct.anon* %os111162, i32 0, i32 0
  %463 = load i8, i8* %otype1163, align 1
  %idxprom1164 = zext i8 %463 to i64
  %arrayidx1165 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1164
  %464 = load i8, i8* %arrayidx1165, align 1
  %conv1166 = zext i8 %464 to i32
  br label %cond.end.1167

cond.end.1167:                                    ; preds = %cond.false.1159, %cond.true.1153
  %cond1168 = phi i32 [ %conv1158, %cond.true.1153 ], [ %conv1166, %cond.false.1159 ]
  store i32 %cond1168, i32* @zz_size, align 4
  %465 = load i32, i32* @zz_size, align 4
  %idxprom1169 = sext i32 %465 to i64
  %arrayidx1170 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1169
  %466 = load %union.rec*, %union.rec** %arrayidx1170, align 8
  %467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11171 = bitcast %union.rec* %467 to %struct.word_type*
  %olist1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11171, i32 0, i32 0
  %arrayidx1173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1172, i32 0, i64 0
  %opred1174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1173, i32 0, i32 0
  store %union.rec* %466, %union.rec** %opred1174, align 8
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %469 = load i32, i32* @zz_size, align 4
  %idxprom1175 = sext i32 %469 to i64
  %arrayidx1176 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1175
  store %union.rec* %468, %union.rec** %arrayidx1176, align 8
  %470 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11177 = bitcast %union.rec* %470 to %struct.word_type*
  %olist1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11177, i32 0, i32 0
  %arrayidx1179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1178, i32 0, i64 1
  %osucc1180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1179, i32 0, i32 1
  %471 = load %union.rec*, %union.rec** %osucc1180, align 8
  %472 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1181 = icmp eq %union.rec* %471, %472
  br i1 %cmp1181, label %if.then.1183, label %if.end.1185

if.then.1183:                                     ; preds = %cond.end.1167
  %473 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1184 = call i32 @DisposeObject(%union.rec* %473)
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.then.1183, %cond.end.1167
  %474 = load %union.rec*, %union.rec** %link, align 8
  %os11186 = bitcast %union.rec* %474 to %struct.word_type*
  %olist1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11186, i32 0, i32 0
  %arrayidx1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1187, i32 0, i64 0
  %opred1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1188, i32 0, i32 0
  %475 = load %union.rec*, %union.rec** %opred1189, align 8
  store %union.rec* %475, %union.rec** %link, align 8
  br label %if.end.1190

if.end.1190:                                      ; preds = %if.end.1185, %sw.bb.938
  br label %sw.epilog

sw.bb.1191:                                       ; preds = %for.end.670
  %476 = load %union.rec*, %union.rec** %y, align 8
  %os11192 = bitcast %union.rec* %476 to %struct.word_type*
  %olist1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11192, i32 0, i32 0
  %arrayidx1194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1193, i32 0, i64 1
  %osucc1195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1194, i32 0, i32 1
  %477 = load %union.rec*, %union.rec** %osucc1195, align 8
  %478 = load %union.rec*, %union.rec** %y, align 8
  %os11196 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11196, i32 0, i32 0
  %arrayidx1198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1197, i32 0, i64 1
  %opred1199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1198, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %opred1199, align 8
  %cmp1200 = icmp eq %union.rec* %477, %479
  br i1 %cmp1200, label %if.end.1204, label %if.then.1202

if.then.1202:                                     ; preds = %sw.bb.1191
  %480 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1203 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %480, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.1204

if.end.1204:                                      ; preds = %if.then.1202, %sw.bb.1191
  %481 = load %union.rec*, %union.rec** %y, align 8
  %os11206 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11206, i32 0, i32 0
  %arrayidx1208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1207, i32 0, i64 0
  %opred1209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1208, i32 0, i32 0
  %482 = load %union.rec*, %union.rec** %opred1209, align 8
  %os11210 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11210, i32 0, i32 0
  %arrayidx1212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1211, i32 0, i64 1
  %opred1213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1212, i32 0, i32 0
  %483 = load %union.rec*, %union.rec** %opred1213, align 8
  store %union.rec* %483, %union.rec** %z, align 8
  br label %for.cond.1214

for.cond.1214:                                    ; preds = %for.inc.1223, %if.end.1204
  %484 = load %union.rec*, %union.rec** %z, align 8
  %os11215 = bitcast %union.rec* %484 to %struct.word_type*
  %ou11216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11215, i32 0, i32 1
  %os111217 = bitcast %union.FIRST_UNION* %ou11216 to %struct.anon*
  %otype1218 = getelementptr inbounds %struct.anon, %struct.anon* %os111217, i32 0, i32 0
  %485 = load i8, i8* %otype1218, align 1
  %conv1219 = zext i8 %485 to i32
  %cmp1220 = icmp eq i32 %conv1219, 0
  br i1 %cmp1220, label %for.body.1222, label %for.end.1228

for.body.1222:                                    ; preds = %for.cond.1214
  br label %for.inc.1223

for.inc.1223:                                     ; preds = %for.body.1222
  %486 = load %union.rec*, %union.rec** %z, align 8
  %os11224 = bitcast %union.rec* %486 to %struct.word_type*
  %olist1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11224, i32 0, i32 0
  %arrayidx1226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1225, i32 0, i64 1
  %opred1227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1226, i32 0, i32 0
  %487 = load %union.rec*, %union.rec** %opred1227, align 8
  store %union.rec* %487, %union.rec** %z, align 8
  br label %for.cond.1214

for.end.1228:                                     ; preds = %for.cond.1214
  %488 = load %union.rec*, %union.rec** %z, align 8
  %os11229 = bitcast %union.rec* %488 to %struct.word_type*
  %ou11230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11229, i32 0, i32 1
  %os111231 = bitcast %union.FIRST_UNION* %ou11230 to %struct.anon*
  %otype1232 = getelementptr inbounds %struct.anon, %struct.anon* %os111231, i32 0, i32 0
  %489 = load i8, i8* %otype1232, align 1
  %conv1233 = zext i8 %489 to i32
  %cmp1234 = icmp sge i32 %conv1233, 2
  br i1 %cmp1234, label %land.lhs.true.1236, label %if.else.1251

land.lhs.true.1236:                               ; preds = %for.end.1228
  %490 = load %union.rec*, %union.rec** %z, align 8
  %os11237 = bitcast %union.rec* %490 to %struct.word_type*
  %ou11238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11237, i32 0, i32 1
  %os111239 = bitcast %union.FIRST_UNION* %ou11238 to %struct.anon*
  %otype1240 = getelementptr inbounds %struct.anon, %struct.anon* %os111239, i32 0, i32 0
  %491 = load i8, i8* %otype1240, align 1
  %conv1241 = zext i8 %491 to i32
  %cmp1242 = icmp sle i32 %conv1241, 8
  br i1 %cmp1242, label %if.then.1244, label %if.else.1251

if.then.1244:                                     ; preds = %land.lhs.true.1236
  %492 = load %union.rec*, %union.rec** %z, align 8
  %os11245 = bitcast %union.rec* %492 to %struct.word_type*
  %ou21246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11245, i32 0, i32 2
  %os231247 = bitcast %union.SECOND_UNION* %ou21246 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231247, i32 0, i32 2
  %bf.load1248 = load i16, i16* %oexternal_ver, align 2
  %bf.clear1249 = and i16 %bf.load1248, -17
  %bf.set1250 = or i16 %bf.clear1249, 16
  store i16 %bf.set1250, i16* %oexternal_ver, align 2
  br label %if.end.2338

if.else.1251:                                     ; preds = %land.lhs.true.1236, %for.end.1228
  %493 = load %union.rec*, %union.rec** %z, align 8
  %os11252 = bitcast %union.rec* %493 to %struct.word_type*
  %ou11253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11252, i32 0, i32 1
  %os111254 = bitcast %union.FIRST_UNION* %ou11253 to %struct.anon*
  %otype1255 = getelementptr inbounds %struct.anon, %struct.anon* %os111254, i32 0, i32 0
  %494 = load i8, i8* %otype1255, align 1
  %conv1256 = zext i8 %494 to i32
  %cmp1257 = icmp eq i32 %conv1256, 19
  br i1 %cmp1257, label %if.then.1259, label %if.end.2337

if.then.1259:                                     ; preds = %if.else.1251
  %495 = load %union.rec*, %union.rec** %y, align 8
  %os11264 = bitcast %union.rec* %495 to %struct.word_type*
  %olist1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11264, i32 0, i32 0
  %arrayidx1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1265, i32 0, i64 0
  %osucc1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1266, i32 0, i32 1
  %496 = load %union.rec*, %union.rec** %osucc1267, align 8
  %os11268 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11268, i32 0, i32 0
  %arrayidx1270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1269, i32 0, i64 1
  %opred1271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1270, i32 0, i32 0
  %497 = load %union.rec*, %union.rec** %opred1271, align 8
  store %union.rec* %497, %union.rec** %hor, align 8
  br label %for.cond.1272

for.cond.1272:                                    ; preds = %for.inc.1281, %if.then.1259
  %498 = load %union.rec*, %union.rec** %hor, align 8
  %os11273 = bitcast %union.rec* %498 to %struct.word_type*
  %ou11274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11273, i32 0, i32 1
  %os111275 = bitcast %union.FIRST_UNION* %ou11274 to %struct.anon*
  %otype1276 = getelementptr inbounds %struct.anon, %struct.anon* %os111275, i32 0, i32 0
  %499 = load i8, i8* %otype1276, align 1
  %conv1277 = zext i8 %499 to i32
  %cmp1278 = icmp eq i32 %conv1277, 0
  br i1 %cmp1278, label %for.body.1280, label %for.end.1286

for.body.1280:                                    ; preds = %for.cond.1272
  br label %for.inc.1281

for.inc.1281:                                     ; preds = %for.body.1280
  %500 = load %union.rec*, %union.rec** %hor, align 8
  %os11282 = bitcast %union.rec* %500 to %struct.word_type*
  %olist1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11282, i32 0, i32 0
  %arrayidx1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1283, i32 0, i64 1
  %opred1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1284, i32 0, i32 0
  %501 = load %union.rec*, %union.rec** %opred1285, align 8
  store %union.rec* %501, %union.rec** %hor, align 8
  br label %for.cond.1272

for.end.1286:                                     ; preds = %for.cond.1272
  %502 = load %union.rec*, %union.rec** %hor, align 8
  %os11287 = bitcast %union.rec* %502 to %struct.word_type*
  %ou11288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11287, i32 0, i32 1
  %os111289 = bitcast %union.FIRST_UNION* %ou11288 to %struct.anon*
  %otype1290 = getelementptr inbounds %struct.anon, %struct.anon* %os111289, i32 0, i32 0
  %503 = load i8, i8* %otype1290, align 1
  %conv1291 = zext i8 %503 to i32
  %cmp1292 = icmp eq i32 %conv1291, 16
  br i1 %cmp1292, label %if.end.1296, label %if.then.1294

if.then.1294:                                     ; preds = %for.end.1286
  %504 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1295 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %504, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.then.1294, %for.end.1286
  %505 = load %union.rec*, %union.rec** %z, align 8
  %os11297 = bitcast %union.rec* %505 to %struct.word_type*
  %olist1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11297, i32 0, i32 0
  %arrayidx1299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1298, i32 0, i64 1
  %osucc1300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1299, i32 0, i32 1
  %506 = load %union.rec*, %union.rec** %osucc1300, align 8
  %os11301 = bitcast %union.rec* %506 to %struct.word_type*
  %olist1302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11301, i32 0, i32 0
  %arrayidx1303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1302, i32 0, i64 0
  %opred1304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1303, i32 0, i32 0
  %507 = load %union.rec*, %union.rec** %opred1304, align 8
  store %union.rec* %507, %union.rec** %thor, align 8
  br label %for.cond.1305

for.cond.1305:                                    ; preds = %for.inc.1314, %if.end.1296
  %508 = load %union.rec*, %union.rec** %thor, align 8
  %os11306 = bitcast %union.rec* %508 to %struct.word_type*
  %ou11307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 1
  %os111308 = bitcast %union.FIRST_UNION* %ou11307 to %struct.anon*
  %otype1309 = getelementptr inbounds %struct.anon, %struct.anon* %os111308, i32 0, i32 0
  %509 = load i8, i8* %otype1309, align 1
  %conv1310 = zext i8 %509 to i32
  %cmp1311 = icmp eq i32 %conv1310, 0
  br i1 %cmp1311, label %for.body.1313, label %for.end.1319

for.body.1313:                                    ; preds = %for.cond.1305
  br label %for.inc.1314

for.inc.1314:                                     ; preds = %for.body.1313
  %510 = load %union.rec*, %union.rec** %thor, align 8
  %os11315 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11315, i32 0, i32 0
  %arrayidx1317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1316, i32 0, i64 0
  %opred1318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1317, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1318, align 8
  store %union.rec* %511, %union.rec** %thor, align 8
  br label %for.cond.1305

for.end.1319:                                     ; preds = %for.cond.1305
  %512 = load %union.rec*, %union.rec** %hor, align 8
  %513 = load %union.rec*, %union.rec** %thor, align 8
  %cmp1320 = icmp eq %union.rec* %512, %513
  br i1 %cmp1320, label %if.end.1324, label %if.then.1322

if.then.1322:                                     ; preds = %for.end.1319
  %514 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1323 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %514, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.1324

if.end.1324:                                      ; preds = %if.then.1322, %for.end.1319
  %515 = load %union.rec*, %union.rec** %y, align 8
  %os11325 = bitcast %union.rec* %515 to %struct.word_type*
  %olist1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11325, i32 0, i32 0
  %arrayidx1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1326, i32 0, i64 0
  %osucc1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1327, i32 0, i32 1
  %516 = load %union.rec*, %union.rec** %osucc1328, align 8
  store %union.rec* %516, %union.rec** %clink, align 8
  %517 = load %union.rec*, %union.rec** %z, align 8
  %os11329 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11329, i32 0, i32 0
  %arrayidx1331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1330, i32 0, i64 1
  %osucc1332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1331, i32 0, i32 1
  %518 = load %union.rec*, %union.rec** %osucc1332, align 8
  store %union.rec* %518, %union.rec** %dlink, align 8
  %519 = load %union.rec*, %union.rec** %z, align 8
  %os11333 = bitcast %union.rec* %519 to %struct.word_type*
  %olist1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11333, i32 0, i32 0
  %arrayidx1335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1334, i32 0, i64 0
  %opred1336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1335, i32 0, i32 0
  %520 = load %union.rec*, %union.rec** %opred1336, align 8
  store %union.rec* %520, %union.rec** %tlink, align 8
  br label %for.cond.1337

for.cond.1337:                                    ; preds = %for.inc.2071, %if.end.1324
  %521 = load %union.rec*, %union.rec** %tlink, align 8
  %522 = load %union.rec*, %union.rec** %z, align 8
  %cmp1338 = icmp ne %union.rec* %521, %522
  br i1 %cmp1338, label %for.body.1340, label %for.end.2076

for.body.1340:                                    ; preds = %for.cond.1337
  %523 = load %union.rec*, %union.rec** %tlink, align 8
  %os11341 = bitcast %union.rec* %523 to %struct.word_type*
  %olist1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11341, i32 0, i32 0
  %arrayidx1343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1342, i32 0, i64 1
  %opred1344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1343, i32 0, i32 0
  %524 = load %union.rec*, %union.rec** %opred1344, align 8
  store %union.rec* %524, %union.rec** %t, align 8
  br label %for.cond.1345

for.cond.1345:                                    ; preds = %for.inc.1354, %for.body.1340
  %525 = load %union.rec*, %union.rec** %t, align 8
  %os11346 = bitcast %union.rec* %525 to %struct.word_type*
  %ou11347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11346, i32 0, i32 1
  %os111348 = bitcast %union.FIRST_UNION* %ou11347 to %struct.anon*
  %otype1349 = getelementptr inbounds %struct.anon, %struct.anon* %os111348, i32 0, i32 0
  %526 = load i8, i8* %otype1349, align 1
  %conv1350 = zext i8 %526 to i32
  %cmp1351 = icmp eq i32 %conv1350, 0
  br i1 %cmp1351, label %for.body.1353, label %for.end.1359

for.body.1353:                                    ; preds = %for.cond.1345
  br label %for.inc.1354

for.inc.1354:                                     ; preds = %for.body.1353
  %527 = load %union.rec*, %union.rec** %t, align 8
  %os11355 = bitcast %union.rec* %527 to %struct.word_type*
  %olist1356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11355, i32 0, i32 0
  %arrayidx1357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1356, i32 0, i64 1
  %opred1358 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1357, i32 0, i32 0
  %528 = load %union.rec*, %union.rec** %opred1358, align 8
  store %union.rec* %528, %union.rec** %t, align 8
  br label %for.cond.1345

for.end.1359:                                     ; preds = %for.cond.1345
  %529 = load %union.rec*, %union.rec** %t, align 8
  %os11360 = bitcast %union.rec* %529 to %struct.word_type*
  %ou11361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11360, i32 0, i32 1
  %os111362 = bitcast %union.FIRST_UNION* %ou11361 to %struct.anon*
  %otype1363 = getelementptr inbounds %struct.anon, %struct.anon* %os111362, i32 0, i32 0
  %530 = load i8, i8* %otype1363, align 1
  %conv1364 = zext i8 %530 to i32
  %cmp1365 = icmp eq i32 %conv1364, 1
  br i1 %cmp1365, label %if.then.1367, label %if.else.1496

if.then.1367:                                     ; preds = %for.end.1359
  %531 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1368 = zext i8 %531 to i32
  store i32 %conv1368, i32* @zz_size, align 4
  %conv1369 = sext i32 %conv1368 to i64
  %cmp1370 = icmp uge i64 %conv1369, 265
  br i1 %cmp1370, label %if.then.1372, label %if.else.1374

if.then.1372:                                     ; preds = %if.then.1367
  %532 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1373 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %532)
  br label %if.end.1391

if.else.1374:                                     ; preds = %if.then.1367
  %533 = load i32, i32* @zz_size, align 4
  %idxprom1375 = sext i32 %533 to i64
  %arrayidx1376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1375
  %534 = load %union.rec*, %union.rec** %arrayidx1376, align 8
  %cmp1377 = icmp eq %union.rec* %534, null
  br i1 %cmp1377, label %if.then.1379, label %if.else.1381

if.then.1379:                                     ; preds = %if.else.1374
  %535 = load i32, i32* @zz_size, align 4
  %536 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1380 = call %union.rec* @GetMemory(i32 %535, %struct.FILE_POS* %536)
  store %union.rec* %call1380, %union.rec** @zz_hold, align 8
  br label %if.end.1390

if.else.1381:                                     ; preds = %if.else.1374
  %537 = load i32, i32* @zz_size, align 4
  %idxprom1382 = sext i32 %537 to i64
  %arrayidx1383 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1382
  %538 = load %union.rec*, %union.rec** %arrayidx1383, align 8
  store %union.rec* %538, %union.rec** @zz_hold, align 8
  store %union.rec* %538, %union.rec** @zz_hold, align 8
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11384 = bitcast %union.rec* %539 to %struct.word_type*
  %olist1385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11384, i32 0, i32 0
  %arrayidx1386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1385, i32 0, i64 0
  %opred1387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1386, i32 0, i32 0
  %540 = load %union.rec*, %union.rec** %opred1387, align 8
  %541 = load i32, i32* @zz_size, align 4
  %idxprom1388 = sext i32 %541 to i64
  %arrayidx1389 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1388
  store %union.rec* %540, %union.rec** %arrayidx1389, align 8
  br label %if.end.1390

if.end.1390:                                      ; preds = %if.else.1381, %if.then.1379
  br label %if.end.1391

if.end.1391:                                      ; preds = %if.end.1390, %if.then.1372
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11392 = bitcast %union.rec* %542 to %struct.word_type*
  %ou11393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11392, i32 0, i32 1
  %os111394 = bitcast %union.FIRST_UNION* %ou11393 to %struct.anon*
  %otype1395 = getelementptr inbounds %struct.anon, %struct.anon* %os111394, i32 0, i32 0
  store i8 0, i8* %otype1395, align 1
  %543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11396 = bitcast %union.rec* %544 to %struct.word_type*
  %olist1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11396, i32 0, i32 0
  %arrayidx1398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1397, i32 0, i64 1
  %osucc1399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1398, i32 0, i32 1
  store %union.rec* %543, %union.rec** %osucc1399, align 8
  %545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11400 = bitcast %union.rec* %545 to %struct.word_type*
  %olist1401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11400, i32 0, i32 0
  %arrayidx1402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1401, i32 0, i64 1
  %opred1403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1402, i32 0, i32 0
  store %union.rec* %543, %union.rec** %opred1403, align 8
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11404 = bitcast %union.rec* %546 to %struct.word_type*
  %olist1405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11404, i32 0, i32 0
  %arrayidx1406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1405, i32 0, i64 0
  %osucc1407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1406, i32 0, i32 1
  store %union.rec* %543, %union.rec** %osucc1407, align 8
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11408 = bitcast %union.rec* %547 to %struct.word_type*
  %olist1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11408, i32 0, i32 0
  %arrayidx1410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1409, i32 0, i64 0
  %opred1411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1410, i32 0, i32 0
  store %union.rec* %543, %union.rec** %opred1411, align 8
  store %union.rec* %543, %union.rec** @xx_link, align 8
  %548 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %548, %union.rec** @zz_res, align 8
  %549 = load %union.rec*, %union.rec** %link, align 8
  %os11412 = bitcast %union.rec* %549 to %struct.word_type*
  %olist1413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11412, i32 0, i32 0
  %arrayidx1414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1413, i32 0, i64 0
  %osucc1415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1414, i32 0, i32 1
  %550 = load %union.rec*, %union.rec** %osucc1415, align 8
  store %union.rec* %550, %union.rec** @zz_hold, align 8
  %551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1416 = icmp eq %union.rec* %551, null
  br i1 %cmp1416, label %cond.true.1418, label %cond.false.1419

cond.true.1418:                                   ; preds = %if.end.1391
  %552 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1454

cond.false.1419:                                  ; preds = %if.end.1391
  %553 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1420 = icmp eq %union.rec* %553, null
  br i1 %cmp1420, label %cond.true.1422, label %cond.false.1423

cond.true.1422:                                   ; preds = %cond.false.1419
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1452

cond.false.1423:                                  ; preds = %cond.false.1419
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11424 = bitcast %union.rec* %555 to %struct.word_type*
  %olist1425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11424, i32 0, i32 0
  %arrayidx1426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1425, i32 0, i64 0
  %opred1427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1426, i32 0, i32 0
  %556 = load %union.rec*, %union.rec** %opred1427, align 8
  store %union.rec* %556, %union.rec** @zz_tmp, align 8
  %557 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11428 = bitcast %union.rec* %557 to %struct.word_type*
  %olist1429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11428, i32 0, i32 0
  %arrayidx1430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1429, i32 0, i64 0
  %opred1431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1430, i32 0, i32 0
  %558 = load %union.rec*, %union.rec** %opred1431, align 8
  %559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11432 = bitcast %union.rec* %559 to %struct.word_type*
  %olist1433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11432, i32 0, i32 0
  %arrayidx1434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1433, i32 0, i64 0
  %opred1435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1434, i32 0, i32 0
  store %union.rec* %558, %union.rec** %opred1435, align 8
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %561 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11436 = bitcast %union.rec* %561 to %struct.word_type*
  %olist1437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11436, i32 0, i32 0
  %arrayidx1438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1437, i32 0, i64 0
  %opred1439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1438, i32 0, i32 0
  %562 = load %union.rec*, %union.rec** %opred1439, align 8
  %os11440 = bitcast %union.rec* %562 to %struct.word_type*
  %olist1441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11440, i32 0, i32 0
  %arrayidx1442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1441, i32 0, i64 0
  %osucc1443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1442, i32 0, i32 1
  store %union.rec* %560, %union.rec** %osucc1443, align 8
  %563 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %564 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11444 = bitcast %union.rec* %564 to %struct.word_type*
  %olist1445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11444, i32 0, i32 0
  %arrayidx1446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1445, i32 0, i64 0
  %opred1447 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1446, i32 0, i32 0
  store %union.rec* %563, %union.rec** %opred1447, align 8
  %565 = load %union.rec*, %union.rec** @zz_res, align 8
  %566 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11448 = bitcast %union.rec* %566 to %struct.word_type*
  %olist1449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11448, i32 0, i32 0
  %arrayidx1450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1449, i32 0, i64 0
  %osucc1451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1450, i32 0, i32 1
  store %union.rec* %565, %union.rec** %osucc1451, align 8
  br label %cond.end.1452

cond.end.1452:                                    ; preds = %cond.false.1423, %cond.true.1422
  %cond1453 = phi %union.rec* [ %554, %cond.true.1422 ], [ %565, %cond.false.1423 ]
  br label %cond.end.1454

cond.end.1454:                                    ; preds = %cond.end.1452, %cond.true.1418
  %cond1455 = phi %union.rec* [ %552, %cond.true.1418 ], [ %cond1453, %cond.end.1452 ]
  %567 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %567, %union.rec** @zz_res, align 8
  %568 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %568, %union.rec** @zz_hold, align 8
  %569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1456 = icmp eq %union.rec* %569, null
  br i1 %cmp1456, label %cond.true.1458, label %cond.false.1459

cond.true.1458:                                   ; preds = %cond.end.1454
  %570 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1494

cond.false.1459:                                  ; preds = %cond.end.1454
  %571 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1460 = icmp eq %union.rec* %571, null
  br i1 %cmp1460, label %cond.true.1462, label %cond.false.1463

cond.true.1462:                                   ; preds = %cond.false.1459
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1492

cond.false.1463:                                  ; preds = %cond.false.1459
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11464 = bitcast %union.rec* %573 to %struct.word_type*
  %olist1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11464, i32 0, i32 0
  %arrayidx1466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1465, i32 0, i64 1
  %opred1467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1466, i32 0, i32 0
  %574 = load %union.rec*, %union.rec** %opred1467, align 8
  store %union.rec* %574, %union.rec** @zz_tmp, align 8
  %575 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11468 = bitcast %union.rec* %575 to %struct.word_type*
  %olist1469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11468, i32 0, i32 0
  %arrayidx1470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1469, i32 0, i64 1
  %opred1471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1470, i32 0, i32 0
  %576 = load %union.rec*, %union.rec** %opred1471, align 8
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11472 = bitcast %union.rec* %577 to %struct.word_type*
  %olist1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11472, i32 0, i32 0
  %arrayidx1474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1473, i32 0, i64 1
  %opred1475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1474, i32 0, i32 0
  store %union.rec* %576, %union.rec** %opred1475, align 8
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %579 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11476 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11476, i32 0, i32 0
  %arrayidx1478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1477, i32 0, i64 1
  %opred1479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1478, i32 0, i32 0
  %580 = load %union.rec*, %union.rec** %opred1479, align 8
  %os11480 = bitcast %union.rec* %580 to %struct.word_type*
  %olist1481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11480, i32 0, i32 0
  %arrayidx1482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1481, i32 0, i64 1
  %osucc1483 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1482, i32 0, i32 1
  store %union.rec* %578, %union.rec** %osucc1483, align 8
  %581 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %582 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11484 = bitcast %union.rec* %582 to %struct.word_type*
  %olist1485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11484, i32 0, i32 0
  %arrayidx1486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1485, i32 0, i64 1
  %opred1487 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1486, i32 0, i32 0
  store %union.rec* %581, %union.rec** %opred1487, align 8
  %583 = load %union.rec*, %union.rec** @zz_res, align 8
  %584 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11488 = bitcast %union.rec* %584 to %struct.word_type*
  %olist1489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11488, i32 0, i32 0
  %arrayidx1490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1489, i32 0, i64 1
  %osucc1491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1490, i32 0, i32 1
  store %union.rec* %583, %union.rec** %osucc1491, align 8
  br label %cond.end.1492

cond.end.1492:                                    ; preds = %cond.false.1463, %cond.true.1462
  %cond1493 = phi %union.rec* [ %572, %cond.true.1462 ], [ %583, %cond.false.1463 ]
  br label %cond.end.1494

cond.end.1494:                                    ; preds = %cond.end.1492, %cond.true.1458
  %cond1495 = phi %union.rec* [ %570, %cond.true.1458 ], [ %cond1493, %cond.end.1492 ]
  br label %if.end.2070

if.else.1496:                                     ; preds = %for.end.1359
  %585 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 9), align 1
  %conv1497 = zext i8 %585 to i32
  store i32 %conv1497, i32* @zz_size, align 4
  %conv1498 = sext i32 %conv1497 to i64
  %cmp1499 = icmp uge i64 %conv1498, 265
  br i1 %cmp1499, label %if.then.1501, label %if.else.1503

if.then.1501:                                     ; preds = %if.else.1496
  %586 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1502 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %586)
  br label %if.end.1520

if.else.1503:                                     ; preds = %if.else.1496
  %587 = load i32, i32* @zz_size, align 4
  %idxprom1504 = sext i32 %587 to i64
  %arrayidx1505 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1504
  %588 = load %union.rec*, %union.rec** %arrayidx1505, align 8
  %cmp1506 = icmp eq %union.rec* %588, null
  br i1 %cmp1506, label %if.then.1508, label %if.else.1510

if.then.1508:                                     ; preds = %if.else.1503
  %589 = load i32, i32* @zz_size, align 4
  %590 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1509 = call %union.rec* @GetMemory(i32 %589, %struct.FILE_POS* %590)
  store %union.rec* %call1509, %union.rec** @zz_hold, align 8
  br label %if.end.1519

if.else.1510:                                     ; preds = %if.else.1503
  %591 = load i32, i32* @zz_size, align 4
  %idxprom1511 = sext i32 %591 to i64
  %arrayidx1512 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1511
  %592 = load %union.rec*, %union.rec** %arrayidx1512, align 8
  store %union.rec* %592, %union.rec** @zz_hold, align 8
  store %union.rec* %592, %union.rec** @zz_hold, align 8
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11513 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11513, i32 0, i32 0
  %arrayidx1515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1514, i32 0, i64 0
  %opred1516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1515, i32 0, i32 0
  %594 = load %union.rec*, %union.rec** %opred1516, align 8
  %595 = load i32, i32* @zz_size, align 4
  %idxprom1517 = sext i32 %595 to i64
  %arrayidx1518 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1517
  store %union.rec* %594, %union.rec** %arrayidx1518, align 8
  br label %if.end.1519

if.end.1519:                                      ; preds = %if.else.1510, %if.then.1508
  br label %if.end.1520

if.end.1520:                                      ; preds = %if.end.1519, %if.then.1501
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11521 = bitcast %union.rec* %596 to %struct.word_type*
  %ou11522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11521, i32 0, i32 1
  %os111523 = bitcast %union.FIRST_UNION* %ou11522 to %struct.anon*
  %otype1524 = getelementptr inbounds %struct.anon, %struct.anon* %os111523, i32 0, i32 0
  store i8 9, i8* %otype1524, align 1
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11525 = bitcast %union.rec* %598 to %struct.word_type*
  %olist1526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11525, i32 0, i32 0
  %arrayidx1527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1526, i32 0, i64 1
  %osucc1528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1527, i32 0, i32 1
  store %union.rec* %597, %union.rec** %osucc1528, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11529 = bitcast %union.rec* %599 to %struct.word_type*
  %olist1530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11529, i32 0, i32 0
  %arrayidx1531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1530, i32 0, i64 1
  %opred1532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1531, i32 0, i32 0
  store %union.rec* %597, %union.rec** %opred1532, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11533 = bitcast %union.rec* %600 to %struct.word_type*
  %olist1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11533, i32 0, i32 0
  %arrayidx1535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1534, i32 0, i64 0
  %osucc1536 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1535, i32 0, i32 1
  store %union.rec* %597, %union.rec** %osucc1536, align 8
  %601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11537 = bitcast %union.rec* %601 to %struct.word_type*
  %olist1538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11537, i32 0, i32 0
  %arrayidx1539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1538, i32 0, i64 0
  %opred1540 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1539, i32 0, i32 0
  store %union.rec* %597, %union.rec** %opred1540, align 8
  store %union.rec* %597, %union.rec** %tmp, align 8
  %602 = load %union.rec*, %union.rec** %hor, align 8
  %os11541 = bitcast %union.rec* %602 to %struct.word_type*
  %ou31542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11541, i32 0, i32 3
  %os311543 = bitcast %union.THIRD_UNION* %ou31542 to %struct.anon.6*
  %oback1544 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311543, i32 0, i32 0
  %arrayidx1545 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1544, i32 0, i64 0
  %603 = load i32, i32* %arrayidx1545, align 4
  %604 = load %union.rec*, %union.rec** %tmp, align 8
  %os11546 = bitcast %union.rec* %604 to %struct.word_type*
  %ou31547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11546, i32 0, i32 3
  %os311548 = bitcast %union.THIRD_UNION* %ou31547 to %struct.anon.6*
  %oback1549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311548, i32 0, i32 0
  %arrayidx1550 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1549, i32 0, i64 0
  store i32 %603, i32* %arrayidx1550, align 4
  %605 = load %union.rec*, %union.rec** %hor, align 8
  %os11551 = bitcast %union.rec* %605 to %struct.word_type*
  %ou31552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11551, i32 0, i32 3
  %os311553 = bitcast %union.THIRD_UNION* %ou31552 to %struct.anon.6*
  %ofwd1554 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311553, i32 0, i32 1
  %arrayidx1555 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1554, i32 0, i64 0
  %606 = load i32, i32* %arrayidx1555, align 4
  %607 = load %union.rec*, %union.rec** %tmp, align 8
  %os11556 = bitcast %union.rec* %607 to %struct.word_type*
  %ou31557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11556, i32 0, i32 3
  %os311558 = bitcast %union.THIRD_UNION* %ou31557 to %struct.anon.6*
  %ofwd1559 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311558, i32 0, i32 1
  %arrayidx1560 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1559, i32 0, i64 0
  store i32 %606, i32* %arrayidx1560, align 4
  %608 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1561 = zext i8 %608 to i32
  store i32 %conv1561, i32* @zz_size, align 4
  %conv1562 = sext i32 %conv1561 to i64
  %cmp1563 = icmp uge i64 %conv1562, 265
  br i1 %cmp1563, label %if.then.1565, label %if.else.1567

if.then.1565:                                     ; preds = %if.end.1520
  %609 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1566 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %609)
  br label %if.end.1584

if.else.1567:                                     ; preds = %if.end.1520
  %610 = load i32, i32* @zz_size, align 4
  %idxprom1568 = sext i32 %610 to i64
  %arrayidx1569 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1568
  %611 = load %union.rec*, %union.rec** %arrayidx1569, align 8
  %cmp1570 = icmp eq %union.rec* %611, null
  br i1 %cmp1570, label %if.then.1572, label %if.else.1574

if.then.1572:                                     ; preds = %if.else.1567
  %612 = load i32, i32* @zz_size, align 4
  %613 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1573 = call %union.rec* @GetMemory(i32 %612, %struct.FILE_POS* %613)
  store %union.rec* %call1573, %union.rec** @zz_hold, align 8
  br label %if.end.1583

if.else.1574:                                     ; preds = %if.else.1567
  %614 = load i32, i32* @zz_size, align 4
  %idxprom1575 = sext i32 %614 to i64
  %arrayidx1576 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1575
  %615 = load %union.rec*, %union.rec** %arrayidx1576, align 8
  store %union.rec* %615, %union.rec** @zz_hold, align 8
  store %union.rec* %615, %union.rec** @zz_hold, align 8
  %616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11577 = bitcast %union.rec* %616 to %struct.word_type*
  %olist1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11577, i32 0, i32 0
  %arrayidx1579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1578, i32 0, i64 0
  %opred1580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1579, i32 0, i32 0
  %617 = load %union.rec*, %union.rec** %opred1580, align 8
  %618 = load i32, i32* @zz_size, align 4
  %idxprom1581 = sext i32 %618 to i64
  %arrayidx1582 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1581
  store %union.rec* %617, %union.rec** %arrayidx1582, align 8
  br label %if.end.1583

if.end.1583:                                      ; preds = %if.else.1574, %if.then.1572
  br label %if.end.1584

if.end.1584:                                      ; preds = %if.end.1583, %if.then.1565
  %619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11585 = bitcast %union.rec* %619 to %struct.word_type*
  %ou11586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11585, i32 0, i32 1
  %os111587 = bitcast %union.FIRST_UNION* %ou11586 to %struct.anon*
  %otype1588 = getelementptr inbounds %struct.anon, %struct.anon* %os111587, i32 0, i32 0
  store i8 0, i8* %otype1588, align 1
  %620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11589 = bitcast %union.rec* %621 to %struct.word_type*
  %olist1590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11589, i32 0, i32 0
  %arrayidx1591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1590, i32 0, i64 1
  %osucc1592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1591, i32 0, i32 1
  store %union.rec* %620, %union.rec** %osucc1592, align 8
  %622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11593 = bitcast %union.rec* %622 to %struct.word_type*
  %olist1594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11593, i32 0, i32 0
  %arrayidx1595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1594, i32 0, i64 1
  %opred1596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1595, i32 0, i32 0
  store %union.rec* %620, %union.rec** %opred1596, align 8
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11597 = bitcast %union.rec* %623 to %struct.word_type*
  %olist1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11597, i32 0, i32 0
  %arrayidx1599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1598, i32 0, i64 0
  %osucc1600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1599, i32 0, i32 1
  store %union.rec* %620, %union.rec** %osucc1600, align 8
  %624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11601 = bitcast %union.rec* %624 to %struct.word_type*
  %olist1602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11601, i32 0, i32 0
  %arrayidx1603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1602, i32 0, i64 0
  %opred1604 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1603, i32 0, i32 0
  store %union.rec* %620, %union.rec** %opred1604, align 8
  store %union.rec* %620, %union.rec** @xx_link, align 8
  %625 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %625, %union.rec** @zz_res, align 8
  %626 = load %union.rec*, %union.rec** %link, align 8
  %os11605 = bitcast %union.rec* %626 to %struct.word_type*
  %olist1606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11605, i32 0, i32 0
  %arrayidx1607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1606, i32 0, i64 0
  %osucc1608 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1607, i32 0, i32 1
  %627 = load %union.rec*, %union.rec** %osucc1608, align 8
  store %union.rec* %627, %union.rec** @zz_hold, align 8
  %628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1609 = icmp eq %union.rec* %628, null
  br i1 %cmp1609, label %cond.true.1611, label %cond.false.1612

cond.true.1611:                                   ; preds = %if.end.1584
  %629 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1647

cond.false.1612:                                  ; preds = %if.end.1584
  %630 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1613 = icmp eq %union.rec* %630, null
  br i1 %cmp1613, label %cond.true.1615, label %cond.false.1616

cond.true.1615:                                   ; preds = %cond.false.1612
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1645

cond.false.1616:                                  ; preds = %cond.false.1612
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11617 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11617, i32 0, i32 0
  %arrayidx1619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1618, i32 0, i64 0
  %opred1620 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1619, i32 0, i32 0
  %633 = load %union.rec*, %union.rec** %opred1620, align 8
  store %union.rec* %633, %union.rec** @zz_tmp, align 8
  %634 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11621 = bitcast %union.rec* %634 to %struct.word_type*
  %olist1622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11621, i32 0, i32 0
  %arrayidx1623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1622, i32 0, i64 0
  %opred1624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1623, i32 0, i32 0
  %635 = load %union.rec*, %union.rec** %opred1624, align 8
  %636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11625 = bitcast %union.rec* %636 to %struct.word_type*
  %olist1626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11625, i32 0, i32 0
  %arrayidx1627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1626, i32 0, i64 0
  %opred1628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1627, i32 0, i32 0
  store %union.rec* %635, %union.rec** %opred1628, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %638 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11629 = bitcast %union.rec* %638 to %struct.word_type*
  %olist1630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11629, i32 0, i32 0
  %arrayidx1631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1630, i32 0, i64 0
  %opred1632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1631, i32 0, i32 0
  %639 = load %union.rec*, %union.rec** %opred1632, align 8
  %os11633 = bitcast %union.rec* %639 to %struct.word_type*
  %olist1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11633, i32 0, i32 0
  %arrayidx1635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1634, i32 0, i64 0
  %osucc1636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1635, i32 0, i32 1
  store %union.rec* %637, %union.rec** %osucc1636, align 8
  %640 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %641 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11637 = bitcast %union.rec* %641 to %struct.word_type*
  %olist1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11637, i32 0, i32 0
  %arrayidx1639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1638, i32 0, i64 0
  %opred1640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1639, i32 0, i32 0
  store %union.rec* %640, %union.rec** %opred1640, align 8
  %642 = load %union.rec*, %union.rec** @zz_res, align 8
  %643 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11641 = bitcast %union.rec* %643 to %struct.word_type*
  %olist1642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11641, i32 0, i32 0
  %arrayidx1643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1642, i32 0, i64 0
  %osucc1644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1643, i32 0, i32 1
  store %union.rec* %642, %union.rec** %osucc1644, align 8
  br label %cond.end.1645

cond.end.1645:                                    ; preds = %cond.false.1616, %cond.true.1615
  %cond1646 = phi %union.rec* [ %631, %cond.true.1615 ], [ %642, %cond.false.1616 ]
  br label %cond.end.1647

cond.end.1647:                                    ; preds = %cond.end.1645, %cond.true.1611
  %cond1648 = phi %union.rec* [ %629, %cond.true.1611 ], [ %cond1646, %cond.end.1645 ]
  %644 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %644, %union.rec** @zz_res, align 8
  %645 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %645, %union.rec** @zz_hold, align 8
  %646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1649 = icmp eq %union.rec* %646, null
  br i1 %cmp1649, label %cond.true.1651, label %cond.false.1652

cond.true.1651:                                   ; preds = %cond.end.1647
  %647 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1688

cond.false.1652:                                  ; preds = %cond.end.1647
  %648 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1653 = icmp eq %union.rec* %648, null
  br i1 %cmp1653, label %cond.true.1655, label %cond.false.1656

cond.true.1655:                                   ; preds = %cond.false.1652
  %649 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1686

cond.false.1656:                                  ; preds = %cond.false.1652
  %650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11657 = bitcast %union.rec* %650 to %struct.word_type*
  %olist1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11657, i32 0, i32 0
  %arrayidx1659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1658, i32 0, i64 1
  %opred1660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1659, i32 0, i32 0
  %651 = load %union.rec*, %union.rec** %opred1660, align 8
  store %union.rec* %651, %union.rec** @zz_tmp, align 8
  %652 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11661 = bitcast %union.rec* %652 to %struct.word_type*
  %olist1662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11661, i32 0, i32 0
  %arrayidx1663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1662, i32 0, i64 1
  %opred1664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1663, i32 0, i32 0
  %653 = load %union.rec*, %union.rec** %opred1664, align 8
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11665 = bitcast %union.rec* %654 to %struct.word_type*
  %olist1666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11665, i32 0, i32 0
  %arrayidx1667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1666, i32 0, i64 1
  %opred1668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1667, i32 0, i32 0
  store %union.rec* %653, %union.rec** %opred1668, align 8
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %656 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11669 = bitcast %union.rec* %656 to %struct.word_type*
  %olist1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11669, i32 0, i32 0
  %arrayidx1671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1670, i32 0, i64 1
  %opred1672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1671, i32 0, i32 0
  %657 = load %union.rec*, %union.rec** %opred1672, align 8
  %os11674 = bitcast %union.rec* %657 to %struct.word_type*
  %olist1675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11674, i32 0, i32 0
  %arrayidx1676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1675, i32 0, i64 1
  %osucc1677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1676, i32 0, i32 1
  store %union.rec* %655, %union.rec** %osucc1677, align 8
  %658 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %659 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11678 = bitcast %union.rec* %659 to %struct.word_type*
  %olist1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11678, i32 0, i32 0
  %arrayidx1680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1679, i32 0, i64 1
  %opred1681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1680, i32 0, i32 0
  store %union.rec* %658, %union.rec** %opred1681, align 8
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  %661 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11682 = bitcast %union.rec* %661 to %struct.word_type*
  %olist1683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11682, i32 0, i32 0
  %arrayidx1684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1683, i32 0, i64 1
  %osucc1685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1684, i32 0, i32 1
  store %union.rec* %660, %union.rec** %osucc1685, align 8
  br label %cond.end.1686

cond.end.1686:                                    ; preds = %cond.false.1656, %cond.true.1655
  %cond1687 = phi %union.rec* [ %649, %cond.true.1655 ], [ %660, %cond.false.1656 ]
  br label %cond.end.1688

cond.end.1688:                                    ; preds = %cond.end.1686, %cond.true.1651
  %cond1689 = phi %union.rec* [ %647, %cond.true.1651 ], [ %cond1687, %cond.end.1686 ]
  %662 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1690 = zext i8 %662 to i32
  store i32 %conv1690, i32* @zz_size, align 4
  %conv1691 = sext i32 %conv1690 to i64
  %cmp1692 = icmp uge i64 %conv1691, 265
  br i1 %cmp1692, label %if.then.1694, label %if.else.1696

if.then.1694:                                     ; preds = %cond.end.1688
  %663 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1695 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %663)
  br label %if.end.1713

if.else.1696:                                     ; preds = %cond.end.1688
  %664 = load i32, i32* @zz_size, align 4
  %idxprom1697 = sext i32 %664 to i64
  %arrayidx1698 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1697
  %665 = load %union.rec*, %union.rec** %arrayidx1698, align 8
  %cmp1699 = icmp eq %union.rec* %665, null
  br i1 %cmp1699, label %if.then.1701, label %if.else.1703

if.then.1701:                                     ; preds = %if.else.1696
  %666 = load i32, i32* @zz_size, align 4
  %667 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1702 = call %union.rec* @GetMemory(i32 %666, %struct.FILE_POS* %667)
  store %union.rec* %call1702, %union.rec** @zz_hold, align 8
  br label %if.end.1712

if.else.1703:                                     ; preds = %if.else.1696
  %668 = load i32, i32* @zz_size, align 4
  %idxprom1704 = sext i32 %668 to i64
  %arrayidx1705 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1704
  %669 = load %union.rec*, %union.rec** %arrayidx1705, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11706 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11706, i32 0, i32 0
  %arrayidx1708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1707, i32 0, i64 0
  %opred1709 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1708, i32 0, i32 0
  %671 = load %union.rec*, %union.rec** %opred1709, align 8
  %672 = load i32, i32* @zz_size, align 4
  %idxprom1710 = sext i32 %672 to i64
  %arrayidx1711 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1710
  store %union.rec* %671, %union.rec** %arrayidx1711, align 8
  br label %if.end.1712

if.end.1712:                                      ; preds = %if.else.1703, %if.then.1701
  br label %if.end.1713

if.end.1713:                                      ; preds = %if.end.1712, %if.then.1694
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11714 = bitcast %union.rec* %673 to %struct.word_type*
  %ou11715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11714, i32 0, i32 1
  %os111716 = bitcast %union.FIRST_UNION* %ou11715 to %struct.anon*
  %otype1717 = getelementptr inbounds %struct.anon, %struct.anon* %os111716, i32 0, i32 0
  store i8 0, i8* %otype1717, align 1
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11718 = bitcast %union.rec* %675 to %struct.word_type*
  %olist1719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11718, i32 0, i32 0
  %arrayidx1720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1719, i32 0, i64 1
  %osucc1721 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1720, i32 0, i32 1
  store %union.rec* %674, %union.rec** %osucc1721, align 8
  %676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11722 = bitcast %union.rec* %676 to %struct.word_type*
  %olist1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11722, i32 0, i32 0
  %arrayidx1724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1723, i32 0, i64 1
  %opred1725 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1724, i32 0, i32 0
  store %union.rec* %674, %union.rec** %opred1725, align 8
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11726 = bitcast %union.rec* %677 to %struct.word_type*
  %olist1727 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11726, i32 0, i32 0
  %arrayidx1728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1727, i32 0, i64 0
  %osucc1729 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1728, i32 0, i32 1
  store %union.rec* %674, %union.rec** %osucc1729, align 8
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11730 = bitcast %union.rec* %678 to %struct.word_type*
  %olist1731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11730, i32 0, i32 0
  %arrayidx1732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1731, i32 0, i64 0
  %opred1733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1732, i32 0, i32 0
  store %union.rec* %674, %union.rec** %opred1733, align 8
  store %union.rec* %674, %union.rec** @xx_link, align 8
  %679 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %679, %union.rec** @zz_res, align 8
  %680 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %680, %union.rec** @zz_hold, align 8
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1734 = icmp eq %union.rec* %681, null
  br i1 %cmp1734, label %cond.true.1736, label %cond.false.1737

cond.true.1736:                                   ; preds = %if.end.1713
  %682 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1772

cond.false.1737:                                  ; preds = %if.end.1713
  %683 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1738 = icmp eq %union.rec* %683, null
  br i1 %cmp1738, label %cond.true.1740, label %cond.false.1741

cond.true.1740:                                   ; preds = %cond.false.1737
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1770

cond.false.1741:                                  ; preds = %cond.false.1737
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11742 = bitcast %union.rec* %685 to %struct.word_type*
  %olist1743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11742, i32 0, i32 0
  %arrayidx1744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1743, i32 0, i64 0
  %opred1745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1744, i32 0, i32 0
  %686 = load %union.rec*, %union.rec** %opred1745, align 8
  store %union.rec* %686, %union.rec** @zz_tmp, align 8
  %687 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11746 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11746, i32 0, i32 0
  %arrayidx1748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1747, i32 0, i64 0
  %opred1749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1748, i32 0, i32 0
  %688 = load %union.rec*, %union.rec** %opred1749, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11750 = bitcast %union.rec* %689 to %struct.word_type*
  %olist1751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11750, i32 0, i32 0
  %arrayidx1752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1751, i32 0, i64 0
  %opred1753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1752, i32 0, i32 0
  store %union.rec* %688, %union.rec** %opred1753, align 8
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %691 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11754 = bitcast %union.rec* %691 to %struct.word_type*
  %olist1755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11754, i32 0, i32 0
  %arrayidx1756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1755, i32 0, i64 0
  %opred1757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1756, i32 0, i32 0
  %692 = load %union.rec*, %union.rec** %opred1757, align 8
  %os11758 = bitcast %union.rec* %692 to %struct.word_type*
  %olist1759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11758, i32 0, i32 0
  %arrayidx1760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1759, i32 0, i64 0
  %osucc1761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1760, i32 0, i32 1
  store %union.rec* %690, %union.rec** %osucc1761, align 8
  %693 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11762 = bitcast %union.rec* %694 to %struct.word_type*
  %olist1763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11762, i32 0, i32 0
  %arrayidx1764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1763, i32 0, i64 0
  %opred1765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1764, i32 0, i32 0
  store %union.rec* %693, %union.rec** %opred1765, align 8
  %695 = load %union.rec*, %union.rec** @zz_res, align 8
  %696 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11766 = bitcast %union.rec* %696 to %struct.word_type*
  %olist1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11766, i32 0, i32 0
  %arrayidx1768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1767, i32 0, i64 0
  %osucc1769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1768, i32 0, i32 1
  store %union.rec* %695, %union.rec** %osucc1769, align 8
  br label %cond.end.1770

cond.end.1770:                                    ; preds = %cond.false.1741, %cond.true.1740
  %cond1771 = phi %union.rec* [ %684, %cond.true.1740 ], [ %695, %cond.false.1741 ]
  br label %cond.end.1772

cond.end.1772:                                    ; preds = %cond.end.1770, %cond.true.1736
  %cond1773 = phi %union.rec* [ %682, %cond.true.1736 ], [ %cond1771, %cond.end.1770 ]
  %697 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %697, %union.rec** @zz_res, align 8
  %698 = load %union.rec*, %union.rec** %clink, align 8
  %os11774 = bitcast %union.rec* %698 to %struct.word_type*
  %olist1775 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11774, i32 0, i32 0
  %arrayidx1776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1775, i32 0, i64 1
  %osucc1777 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1776, i32 0, i32 1
  %699 = load %union.rec*, %union.rec** %osucc1777, align 8
  store %union.rec* %699, %union.rec** @zz_hold, align 8
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1778 = icmp eq %union.rec* %700, null
  br i1 %cmp1778, label %cond.true.1780, label %cond.false.1781

cond.true.1780:                                   ; preds = %cond.end.1772
  %701 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1816

cond.false.1781:                                  ; preds = %cond.end.1772
  %702 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1782 = icmp eq %union.rec* %702, null
  br i1 %cmp1782, label %cond.true.1784, label %cond.false.1785

cond.true.1784:                                   ; preds = %cond.false.1781
  %703 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1814

cond.false.1785:                                  ; preds = %cond.false.1781
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11786 = bitcast %union.rec* %704 to %struct.word_type*
  %olist1787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11786, i32 0, i32 0
  %arrayidx1788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1787, i32 0, i64 1
  %opred1789 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1788, i32 0, i32 0
  %705 = load %union.rec*, %union.rec** %opred1789, align 8
  store %union.rec* %705, %union.rec** @zz_tmp, align 8
  %706 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11790 = bitcast %union.rec* %706 to %struct.word_type*
  %olist1791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11790, i32 0, i32 0
  %arrayidx1792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1791, i32 0, i64 1
  %opred1793 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1792, i32 0, i32 0
  %707 = load %union.rec*, %union.rec** %opred1793, align 8
  %708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11794 = bitcast %union.rec* %708 to %struct.word_type*
  %olist1795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11794, i32 0, i32 0
  %arrayidx1796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1795, i32 0, i64 1
  %opred1797 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1796, i32 0, i32 0
  store %union.rec* %707, %union.rec** %opred1797, align 8
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %710 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11798 = bitcast %union.rec* %710 to %struct.word_type*
  %olist1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11798, i32 0, i32 0
  %arrayidx1800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1799, i32 0, i64 1
  %opred1801 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1800, i32 0, i32 0
  %711 = load %union.rec*, %union.rec** %opred1801, align 8
  %os11802 = bitcast %union.rec* %711 to %struct.word_type*
  %olist1803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11802, i32 0, i32 0
  %arrayidx1804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1803, i32 0, i64 1
  %osucc1805 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1804, i32 0, i32 1
  store %union.rec* %709, %union.rec** %osucc1805, align 8
  %712 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %713 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11806 = bitcast %union.rec* %713 to %struct.word_type*
  %olist1807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11806, i32 0, i32 0
  %arrayidx1808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1807, i32 0, i64 1
  %opred1809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1808, i32 0, i32 0
  store %union.rec* %712, %union.rec** %opred1809, align 8
  %714 = load %union.rec*, %union.rec** @zz_res, align 8
  %715 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11810 = bitcast %union.rec* %715 to %struct.word_type*
  %olist1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11810, i32 0, i32 0
  %arrayidx1812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1811, i32 0, i64 1
  %osucc1813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1812, i32 0, i32 1
  store %union.rec* %714, %union.rec** %osucc1813, align 8
  br label %cond.end.1814

cond.end.1814:                                    ; preds = %cond.false.1785, %cond.true.1784
  %cond1815 = phi %union.rec* [ %703, %cond.true.1784 ], [ %714, %cond.false.1785 ]
  br label %cond.end.1816

cond.end.1816:                                    ; preds = %cond.end.1814, %cond.true.1780
  %cond1817 = phi %union.rec* [ %701, %cond.true.1780 ], [ %cond1815, %cond.end.1814 ]
  %716 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1818 = zext i8 %716 to i32
  store i32 %conv1818, i32* @zz_size, align 4
  %conv1819 = sext i32 %conv1818 to i64
  %cmp1820 = icmp uge i64 %conv1819, 265
  br i1 %cmp1820, label %if.then.1822, label %if.else.1824

if.then.1822:                                     ; preds = %cond.end.1816
  %717 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1823 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %717)
  br label %if.end.1841

if.else.1824:                                     ; preds = %cond.end.1816
  %718 = load i32, i32* @zz_size, align 4
  %idxprom1825 = sext i32 %718 to i64
  %arrayidx1826 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1825
  %719 = load %union.rec*, %union.rec** %arrayidx1826, align 8
  %cmp1827 = icmp eq %union.rec* %719, null
  br i1 %cmp1827, label %if.then.1829, label %if.else.1831

if.then.1829:                                     ; preds = %if.else.1824
  %720 = load i32, i32* @zz_size, align 4
  %721 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1830 = call %union.rec* @GetMemory(i32 %720, %struct.FILE_POS* %721)
  store %union.rec* %call1830, %union.rec** @zz_hold, align 8
  br label %if.end.1840

if.else.1831:                                     ; preds = %if.else.1824
  %722 = load i32, i32* @zz_size, align 4
  %idxprom1832 = sext i32 %722 to i64
  %arrayidx1833 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1832
  %723 = load %union.rec*, %union.rec** %arrayidx1833, align 8
  store %union.rec* %723, %union.rec** @zz_hold, align 8
  store %union.rec* %723, %union.rec** @zz_hold, align 8
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11834 = bitcast %union.rec* %724 to %struct.word_type*
  %olist1835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11834, i32 0, i32 0
  %arrayidx1836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1835, i32 0, i64 0
  %opred1837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1836, i32 0, i32 0
  %725 = load %union.rec*, %union.rec** %opred1837, align 8
  %726 = load i32, i32* @zz_size, align 4
  %idxprom1838 = sext i32 %726 to i64
  %arrayidx1839 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1838
  store %union.rec* %725, %union.rec** %arrayidx1839, align 8
  br label %if.end.1840

if.end.1840:                                      ; preds = %if.else.1831, %if.then.1829
  br label %if.end.1841

if.end.1841:                                      ; preds = %if.end.1840, %if.then.1822
  %727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11842 = bitcast %union.rec* %727 to %struct.word_type*
  %ou11843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11842, i32 0, i32 1
  %os111844 = bitcast %union.FIRST_UNION* %ou11843 to %struct.anon*
  %otype1845 = getelementptr inbounds %struct.anon, %struct.anon* %os111844, i32 0, i32 0
  store i8 0, i8* %otype1845, align 1
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11846 = bitcast %union.rec* %729 to %struct.word_type*
  %olist1847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11846, i32 0, i32 0
  %arrayidx1848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1847, i32 0, i64 1
  %osucc1849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1848, i32 0, i32 1
  store %union.rec* %728, %union.rec** %osucc1849, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11850 = bitcast %union.rec* %730 to %struct.word_type*
  %olist1851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11850, i32 0, i32 0
  %arrayidx1852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1851, i32 0, i64 1
  %opred1853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1852, i32 0, i32 0
  store %union.rec* %728, %union.rec** %opred1853, align 8
  %731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11854 = bitcast %union.rec* %731 to %struct.word_type*
  %olist1855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11854, i32 0, i32 0
  %arrayidx1856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1855, i32 0, i64 0
  %osucc1857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1856, i32 0, i32 1
  store %union.rec* %728, %union.rec** %osucc1857, align 8
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11858 = bitcast %union.rec* %732 to %struct.word_type*
  %olist1859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11858, i32 0, i32 0
  %arrayidx1860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1859, i32 0, i64 0
  %opred1861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1860, i32 0, i32 0
  store %union.rec* %728, %union.rec** %opred1861, align 8
  store %union.rec* %728, %union.rec** @xx_link, align 8
  %733 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %733, %union.rec** @zz_res, align 8
  %734 = load %union.rec*, %union.rec** %dlink, align 8
  %os11862 = bitcast %union.rec* %734 to %struct.word_type*
  %olist1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11862, i32 0, i32 0
  %arrayidx1864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1863, i32 0, i64 0
  %osucc1865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1864, i32 0, i32 1
  %735 = load %union.rec*, %union.rec** %osucc1865, align 8
  store %union.rec* %735, %union.rec** @zz_hold, align 8
  %736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1866 = icmp eq %union.rec* %736, null
  br i1 %cmp1866, label %cond.true.1868, label %cond.false.1869

cond.true.1868:                                   ; preds = %if.end.1841
  %737 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1904

cond.false.1869:                                  ; preds = %if.end.1841
  %738 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1870 = icmp eq %union.rec* %738, null
  br i1 %cmp1870, label %cond.true.1872, label %cond.false.1873

cond.true.1872:                                   ; preds = %cond.false.1869
  %739 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1902

cond.false.1873:                                  ; preds = %cond.false.1869
  %740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11874 = bitcast %union.rec* %740 to %struct.word_type*
  %olist1875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11874, i32 0, i32 0
  %arrayidx1876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1875, i32 0, i64 0
  %opred1877 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1876, i32 0, i32 0
  %741 = load %union.rec*, %union.rec** %opred1877, align 8
  store %union.rec* %741, %union.rec** @zz_tmp, align 8
  %742 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11878 = bitcast %union.rec* %742 to %struct.word_type*
  %olist1879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11878, i32 0, i32 0
  %arrayidx1880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1879, i32 0, i64 0
  %opred1881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1880, i32 0, i32 0
  %743 = load %union.rec*, %union.rec** %opred1881, align 8
  %744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11882 = bitcast %union.rec* %744 to %struct.word_type*
  %olist1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11882, i32 0, i32 0
  %arrayidx1884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1883, i32 0, i64 0
  %opred1885 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1884, i32 0, i32 0
  store %union.rec* %743, %union.rec** %opred1885, align 8
  %745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %746 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11886 = bitcast %union.rec* %746 to %struct.word_type*
  %olist1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11886, i32 0, i32 0
  %arrayidx1888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1887, i32 0, i64 0
  %opred1889 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1888, i32 0, i32 0
  %747 = load %union.rec*, %union.rec** %opred1889, align 8
  %os11890 = bitcast %union.rec* %747 to %struct.word_type*
  %olist1891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11890, i32 0, i32 0
  %arrayidx1892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1891, i32 0, i64 0
  %osucc1893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1892, i32 0, i32 1
  store %union.rec* %745, %union.rec** %osucc1893, align 8
  %748 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %749 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11894 = bitcast %union.rec* %749 to %struct.word_type*
  %olist1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11894, i32 0, i32 0
  %arrayidx1896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1895, i32 0, i64 0
  %opred1897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1896, i32 0, i32 0
  store %union.rec* %748, %union.rec** %opred1897, align 8
  %750 = load %union.rec*, %union.rec** @zz_res, align 8
  %751 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11898 = bitcast %union.rec* %751 to %struct.word_type*
  %olist1899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11898, i32 0, i32 0
  %arrayidx1900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1899, i32 0, i64 0
  %osucc1901 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1900, i32 0, i32 1
  store %union.rec* %750, %union.rec** %osucc1901, align 8
  br label %cond.end.1902

cond.end.1902:                                    ; preds = %cond.false.1873, %cond.true.1872
  %cond1903 = phi %union.rec* [ %739, %cond.true.1872 ], [ %750, %cond.false.1873 ]
  br label %cond.end.1904

cond.end.1904:                                    ; preds = %cond.end.1902, %cond.true.1868
  %cond1905 = phi %union.rec* [ %737, %cond.true.1868 ], [ %cond1903, %cond.end.1902 ]
  %752 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %752, %union.rec** @zz_res, align 8
  %753 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %753, %union.rec** @zz_hold, align 8
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1906 = icmp eq %union.rec* %754, null
  br i1 %cmp1906, label %cond.true.1908, label %cond.false.1909

cond.true.1908:                                   ; preds = %cond.end.1904
  %755 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1944

cond.false.1909:                                  ; preds = %cond.end.1904
  %756 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1910 = icmp eq %union.rec* %756, null
  br i1 %cmp1910, label %cond.true.1912, label %cond.false.1913

cond.true.1912:                                   ; preds = %cond.false.1909
  %757 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1942

cond.false.1913:                                  ; preds = %cond.false.1909
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11914 = bitcast %union.rec* %758 to %struct.word_type*
  %olist1915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11914, i32 0, i32 0
  %arrayidx1916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1915, i32 0, i64 1
  %opred1917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1916, i32 0, i32 0
  %759 = load %union.rec*, %union.rec** %opred1917, align 8
  store %union.rec* %759, %union.rec** @zz_tmp, align 8
  %760 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11918 = bitcast %union.rec* %760 to %struct.word_type*
  %olist1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11918, i32 0, i32 0
  %arrayidx1920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1919, i32 0, i64 1
  %opred1921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1920, i32 0, i32 0
  %761 = load %union.rec*, %union.rec** %opred1921, align 8
  %762 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11922 = bitcast %union.rec* %762 to %struct.word_type*
  %olist1923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11922, i32 0, i32 0
  %arrayidx1924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1923, i32 0, i64 1
  %opred1925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1924, i32 0, i32 0
  store %union.rec* %761, %union.rec** %opred1925, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %764 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11926 = bitcast %union.rec* %764 to %struct.word_type*
  %olist1927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11926, i32 0, i32 0
  %arrayidx1928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1927, i32 0, i64 1
  %opred1929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1928, i32 0, i32 0
  %765 = load %union.rec*, %union.rec** %opred1929, align 8
  %os11930 = bitcast %union.rec* %765 to %struct.word_type*
  %olist1931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11930, i32 0, i32 0
  %arrayidx1932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1931, i32 0, i64 1
  %osucc1933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1932, i32 0, i32 1
  store %union.rec* %763, %union.rec** %osucc1933, align 8
  %766 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %767 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11934 = bitcast %union.rec* %767 to %struct.word_type*
  %olist1935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11934, i32 0, i32 0
  %arrayidx1936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1935, i32 0, i64 1
  %opred1937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1936, i32 0, i32 0
  store %union.rec* %766, %union.rec** %opred1937, align 8
  %768 = load %union.rec*, %union.rec** @zz_res, align 8
  %769 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11938 = bitcast %union.rec* %769 to %struct.word_type*
  %olist1939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11938, i32 0, i32 0
  %arrayidx1940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1939, i32 0, i64 1
  %osucc1941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1940, i32 0, i32 1
  store %union.rec* %768, %union.rec** %osucc1941, align 8
  br label %cond.end.1942

cond.end.1942:                                    ; preds = %cond.false.1913, %cond.true.1912
  %cond1943 = phi %union.rec* [ %757, %cond.true.1912 ], [ %768, %cond.false.1913 ]
  br label %cond.end.1944

cond.end.1944:                                    ; preds = %cond.end.1942, %cond.true.1908
  %cond1945 = phi %union.rec* [ %755, %cond.true.1908 ], [ %cond1943, %cond.end.1942 ]
  %770 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1946 = zext i8 %770 to i32
  store i32 %conv1946, i32* @zz_size, align 4
  %conv1947 = sext i32 %conv1946 to i64
  %cmp1948 = icmp uge i64 %conv1947, 265
  br i1 %cmp1948, label %if.then.1950, label %if.else.1952

if.then.1950:                                     ; preds = %cond.end.1944
  %771 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1951 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %771)
  br label %if.end.1969

if.else.1952:                                     ; preds = %cond.end.1944
  %772 = load i32, i32* @zz_size, align 4
  %idxprom1953 = sext i32 %772 to i64
  %arrayidx1954 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1953
  %773 = load %union.rec*, %union.rec** %arrayidx1954, align 8
  %cmp1955 = icmp eq %union.rec* %773, null
  br i1 %cmp1955, label %if.then.1957, label %if.else.1959

if.then.1957:                                     ; preds = %if.else.1952
  %774 = load i32, i32* @zz_size, align 4
  %775 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1958 = call %union.rec* @GetMemory(i32 %774, %struct.FILE_POS* %775)
  store %union.rec* %call1958, %union.rec** @zz_hold, align 8
  br label %if.end.1968

if.else.1959:                                     ; preds = %if.else.1952
  %776 = load i32, i32* @zz_size, align 4
  %idxprom1960 = sext i32 %776 to i64
  %arrayidx1961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1960
  %777 = load %union.rec*, %union.rec** %arrayidx1961, align 8
  store %union.rec* %777, %union.rec** @zz_hold, align 8
  store %union.rec* %777, %union.rec** @zz_hold, align 8
  %778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11962 = bitcast %union.rec* %778 to %struct.word_type*
  %olist1963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11962, i32 0, i32 0
  %arrayidx1964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1963, i32 0, i64 0
  %opred1965 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1964, i32 0, i32 0
  %779 = load %union.rec*, %union.rec** %opred1965, align 8
  %780 = load i32, i32* @zz_size, align 4
  %idxprom1966 = sext i32 %780 to i64
  %arrayidx1967 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1966
  store %union.rec* %779, %union.rec** %arrayidx1967, align 8
  br label %if.end.1968

if.end.1968:                                      ; preds = %if.else.1959, %if.then.1957
  br label %if.end.1969

if.end.1969:                                      ; preds = %if.end.1968, %if.then.1950
  %781 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11970 = bitcast %union.rec* %781 to %struct.word_type*
  %ou11971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11970, i32 0, i32 1
  %os111972 = bitcast %union.FIRST_UNION* %ou11971 to %struct.anon*
  %otype1973 = getelementptr inbounds %struct.anon, %struct.anon* %os111972, i32 0, i32 0
  store i8 0, i8* %otype1973, align 1
  %782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11974 = bitcast %union.rec* %783 to %struct.word_type*
  %olist1975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11974, i32 0, i32 0
  %arrayidx1976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1975, i32 0, i64 1
  %osucc1977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1976, i32 0, i32 1
  store %union.rec* %782, %union.rec** %osucc1977, align 8
  %784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11978 = bitcast %union.rec* %784 to %struct.word_type*
  %olist1979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11978, i32 0, i32 0
  %arrayidx1980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1979, i32 0, i64 1
  %opred1981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1980, i32 0, i32 0
  store %union.rec* %782, %union.rec** %opred1981, align 8
  %785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11982 = bitcast %union.rec* %785 to %struct.word_type*
  %olist1983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11982, i32 0, i32 0
  %arrayidx1984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1983, i32 0, i64 0
  %osucc1985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1984, i32 0, i32 1
  store %union.rec* %782, %union.rec** %osucc1985, align 8
  %786 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11986 = bitcast %union.rec* %786 to %struct.word_type*
  %olist1987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11986, i32 0, i32 0
  %arrayidx1988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1987, i32 0, i64 0
  %opred1989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1988, i32 0, i32 0
  store %union.rec* %782, %union.rec** %opred1989, align 8
  store %union.rec* %782, %union.rec** @xx_link, align 8
  %787 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %787, %union.rec** @zz_res, align 8
  %788 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %788, %union.rec** @zz_hold, align 8
  %789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1990 = icmp eq %union.rec* %789, null
  br i1 %cmp1990, label %cond.true.1992, label %cond.false.1993

cond.true.1992:                                   ; preds = %if.end.1969
  %790 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2028

cond.false.1993:                                  ; preds = %if.end.1969
  %791 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1994 = icmp eq %union.rec* %791, null
  br i1 %cmp1994, label %cond.true.1996, label %cond.false.1997

cond.true.1996:                                   ; preds = %cond.false.1993
  %792 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2026

cond.false.1997:                                  ; preds = %cond.false.1993
  %793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11998 = bitcast %union.rec* %793 to %struct.word_type*
  %olist1999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11998, i32 0, i32 0
  %arrayidx2000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1999, i32 0, i64 0
  %opred2001 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2000, i32 0, i32 0
  %794 = load %union.rec*, %union.rec** %opred2001, align 8
  store %union.rec* %794, %union.rec** @zz_tmp, align 8
  %795 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12002 = bitcast %union.rec* %795 to %struct.word_type*
  %olist2003 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12002, i32 0, i32 0
  %arrayidx2004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2003, i32 0, i64 0
  %opred2005 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2004, i32 0, i32 0
  %796 = load %union.rec*, %union.rec** %opred2005, align 8
  %797 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12006 = bitcast %union.rec* %797 to %struct.word_type*
  %olist2007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12006, i32 0, i32 0
  %arrayidx2008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2007, i32 0, i64 0
  %opred2009 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2008, i32 0, i32 0
  store %union.rec* %796, %union.rec** %opred2009, align 8
  %798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %799 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12010 = bitcast %union.rec* %799 to %struct.word_type*
  %olist2011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12010, i32 0, i32 0
  %arrayidx2012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2011, i32 0, i64 0
  %opred2013 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2012, i32 0, i32 0
  %800 = load %union.rec*, %union.rec** %opred2013, align 8
  %os12014 = bitcast %union.rec* %800 to %struct.word_type*
  %olist2015 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12014, i32 0, i32 0
  %arrayidx2016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2015, i32 0, i64 0
  %osucc2017 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2016, i32 0, i32 1
  store %union.rec* %798, %union.rec** %osucc2017, align 8
  %801 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %802 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12018 = bitcast %union.rec* %802 to %struct.word_type*
  %olist2019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12018, i32 0, i32 0
  %arrayidx2020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2019, i32 0, i64 0
  %opred2021 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2020, i32 0, i32 0
  store %union.rec* %801, %union.rec** %opred2021, align 8
  %803 = load %union.rec*, %union.rec** @zz_res, align 8
  %804 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12022 = bitcast %union.rec* %804 to %struct.word_type*
  %olist2023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12022, i32 0, i32 0
  %arrayidx2024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2023, i32 0, i64 0
  %osucc2025 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2024, i32 0, i32 1
  store %union.rec* %803, %union.rec** %osucc2025, align 8
  br label %cond.end.2026

cond.end.2026:                                    ; preds = %cond.false.1997, %cond.true.1996
  %cond2027 = phi %union.rec* [ %792, %cond.true.1996 ], [ %803, %cond.false.1997 ]
  br label %cond.end.2028

cond.end.2028:                                    ; preds = %cond.end.2026, %cond.true.1992
  %cond2029 = phi %union.rec* [ %790, %cond.true.1992 ], [ %cond2027, %cond.end.2026 ]
  %805 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %805, %union.rec** @zz_res, align 8
  %806 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %806, %union.rec** @zz_hold, align 8
  %807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2030 = icmp eq %union.rec* %807, null
  br i1 %cmp2030, label %cond.true.2032, label %cond.false.2033

cond.true.2032:                                   ; preds = %cond.end.2028
  %808 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2068

cond.false.2033:                                  ; preds = %cond.end.2028
  %809 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2034 = icmp eq %union.rec* %809, null
  br i1 %cmp2034, label %cond.true.2036, label %cond.false.2037

cond.true.2036:                                   ; preds = %cond.false.2033
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2066

cond.false.2037:                                  ; preds = %cond.false.2033
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12038 = bitcast %union.rec* %811 to %struct.word_type*
  %olist2039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12038, i32 0, i32 0
  %arrayidx2040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2039, i32 0, i64 1
  %opred2041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2040, i32 0, i32 0
  %812 = load %union.rec*, %union.rec** %opred2041, align 8
  store %union.rec* %812, %union.rec** @zz_tmp, align 8
  %813 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12042 = bitcast %union.rec* %813 to %struct.word_type*
  %olist2043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12042, i32 0, i32 0
  %arrayidx2044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2043, i32 0, i64 1
  %opred2045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2044, i32 0, i32 0
  %814 = load %union.rec*, %union.rec** %opred2045, align 8
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12046 = bitcast %union.rec* %815 to %struct.word_type*
  %olist2047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12046, i32 0, i32 0
  %arrayidx2048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2047, i32 0, i64 1
  %opred2049 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2048, i32 0, i32 0
  store %union.rec* %814, %union.rec** %opred2049, align 8
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %817 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12050 = bitcast %union.rec* %817 to %struct.word_type*
  %olist2051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12050, i32 0, i32 0
  %arrayidx2052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2051, i32 0, i64 1
  %opred2053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2052, i32 0, i32 0
  %818 = load %union.rec*, %union.rec** %opred2053, align 8
  %os12054 = bitcast %union.rec* %818 to %struct.word_type*
  %olist2055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12054, i32 0, i32 0
  %arrayidx2056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2055, i32 0, i64 1
  %osucc2057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2056, i32 0, i32 1
  store %union.rec* %816, %union.rec** %osucc2057, align 8
  %819 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %820 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12058 = bitcast %union.rec* %820 to %struct.word_type*
  %olist2059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12058, i32 0, i32 0
  %arrayidx2060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2059, i32 0, i64 1
  %opred2061 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2060, i32 0, i32 0
  store %union.rec* %819, %union.rec** %opred2061, align 8
  %821 = load %union.rec*, %union.rec** @zz_res, align 8
  %822 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12062 = bitcast %union.rec* %822 to %struct.word_type*
  %olist2063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12062, i32 0, i32 0
  %arrayidx2064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2063, i32 0, i64 1
  %osucc2065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2064, i32 0, i32 1
  store %union.rec* %821, %union.rec** %osucc2065, align 8
  br label %cond.end.2066

cond.end.2066:                                    ; preds = %cond.false.2037, %cond.true.2036
  %cond2067 = phi %union.rec* [ %810, %cond.true.2036 ], [ %821, %cond.false.2037 ]
  br label %cond.end.2068

cond.end.2068:                                    ; preds = %cond.end.2066, %cond.true.2032
  %cond2069 = phi %union.rec* [ %808, %cond.true.2032 ], [ %cond2067, %cond.end.2066 ]
  br label %if.end.2070

if.end.2070:                                      ; preds = %cond.end.2068, %cond.end.1494
  br label %for.inc.2071

for.inc.2071:                                     ; preds = %if.end.2070
  %823 = load %union.rec*, %union.rec** %tlink, align 8
  %os12072 = bitcast %union.rec* %823 to %struct.word_type*
  %olist2073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12072, i32 0, i32 0
  %arrayidx2074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2073, i32 0, i64 0
  %opred2075 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2074, i32 0, i32 0
  %824 = load %union.rec*, %union.rec** %opred2075, align 8
  store %union.rec* %824, %union.rec** %tlink, align 8
  br label %for.cond.1337

for.end.2076:                                     ; preds = %for.cond.1337
  %825 = load %union.rec*, %union.rec** %dlink, align 8
  store %union.rec* %825, %union.rec** @xx_link, align 8
  %826 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %826, %union.rec** @zz_hold, align 8
  %827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12077 = bitcast %union.rec* %827 to %struct.word_type*
  %olist2078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12077, i32 0, i32 0
  %arrayidx2079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2078, i32 0, i64 1
  %osucc2080 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2079, i32 0, i32 1
  %828 = load %union.rec*, %union.rec** %osucc2080, align 8
  %829 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2081 = icmp eq %union.rec* %828, %829
  br i1 %cmp2081, label %cond.true.2083, label %cond.false.2084

cond.true.2083:                                   ; preds = %for.end.2076
  br label %cond.end.2113

cond.false.2084:                                  ; preds = %for.end.2076
  %830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12085 = bitcast %union.rec* %830 to %struct.word_type*
  %olist2086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12085, i32 0, i32 0
  %arrayidx2087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2086, i32 0, i64 1
  %osucc2088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2087, i32 0, i32 1
  %831 = load %union.rec*, %union.rec** %osucc2088, align 8
  store %union.rec* %831, %union.rec** @zz_res, align 8
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12089 = bitcast %union.rec* %832 to %struct.word_type*
  %olist2090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12089, i32 0, i32 0
  %arrayidx2091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2090, i32 0, i64 1
  %opred2092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2091, i32 0, i32 0
  %833 = load %union.rec*, %union.rec** %opred2092, align 8
  %834 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12093 = bitcast %union.rec* %834 to %struct.word_type*
  %olist2094 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12093, i32 0, i32 0
  %arrayidx2095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2094, i32 0, i64 1
  %opred2096 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2095, i32 0, i32 0
  store %union.rec* %833, %union.rec** %opred2096, align 8
  %835 = load %union.rec*, %union.rec** @zz_res, align 8
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12097 = bitcast %union.rec* %836 to %struct.word_type*
  %olist2098 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12097, i32 0, i32 0
  %arrayidx2099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2098, i32 0, i64 1
  %opred2100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2099, i32 0, i32 0
  %837 = load %union.rec*, %union.rec** %opred2100, align 8
  %os12101 = bitcast %union.rec* %837 to %struct.word_type*
  %olist2102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12101, i32 0, i32 0
  %arrayidx2103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2102, i32 0, i64 1
  %osucc2104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2103, i32 0, i32 1
  store %union.rec* %835, %union.rec** %osucc2104, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12105 = bitcast %union.rec* %839 to %struct.word_type*
  %olist2106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12105, i32 0, i32 0
  %arrayidx2107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2106, i32 0, i64 1
  %osucc2108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2107, i32 0, i32 1
  store %union.rec* %838, %union.rec** %osucc2108, align 8
  %840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12109 = bitcast %union.rec* %840 to %struct.word_type*
  %olist2110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12109, i32 0, i32 0
  %arrayidx2111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2110, i32 0, i64 1
  %opred2112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2111, i32 0, i32 0
  store %union.rec* %838, %union.rec** %opred2112, align 8
  %841 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2113

cond.end.2113:                                    ; preds = %cond.false.2084, %cond.true.2083
  %cond2114 = phi %union.rec* [ null, %cond.true.2083 ], [ %841, %cond.false.2084 ]
  %842 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %842, %union.rec** @zz_hold, align 8
  %843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12115 = bitcast %union.rec* %843 to %struct.word_type*
  %olist2116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12115, i32 0, i32 0
  %arrayidx2117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2116, i32 0, i64 0
  %osucc2118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2117, i32 0, i32 1
  %844 = load %union.rec*, %union.rec** %osucc2118, align 8
  %845 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2119 = icmp eq %union.rec* %844, %845
  br i1 %cmp2119, label %cond.true.2121, label %cond.false.2122

cond.true.2121:                                   ; preds = %cond.end.2113
  br label %cond.end.2151

cond.false.2122:                                  ; preds = %cond.end.2113
  %846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12123 = bitcast %union.rec* %846 to %struct.word_type*
  %olist2124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12123, i32 0, i32 0
  %arrayidx2125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2124, i32 0, i64 0
  %osucc2126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2125, i32 0, i32 1
  %847 = load %union.rec*, %union.rec** %osucc2126, align 8
  store %union.rec* %847, %union.rec** @zz_res, align 8
  %848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12127 = bitcast %union.rec* %848 to %struct.word_type*
  %olist2128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12127, i32 0, i32 0
  %arrayidx2129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2128, i32 0, i64 0
  %opred2130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2129, i32 0, i32 0
  %849 = load %union.rec*, %union.rec** %opred2130, align 8
  %850 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12131 = bitcast %union.rec* %850 to %struct.word_type*
  %olist2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12131, i32 0, i32 0
  %arrayidx2133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2132, i32 0, i64 0
  %opred2134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2133, i32 0, i32 0
  store %union.rec* %849, %union.rec** %opred2134, align 8
  %851 = load %union.rec*, %union.rec** @zz_res, align 8
  %852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12135 = bitcast %union.rec* %852 to %struct.word_type*
  %olist2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12135, i32 0, i32 0
  %arrayidx2137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2136, i32 0, i64 0
  %opred2138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2137, i32 0, i32 0
  %853 = load %union.rec*, %union.rec** %opred2138, align 8
  %os12139 = bitcast %union.rec* %853 to %struct.word_type*
  %olist2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12139, i32 0, i32 0
  %arrayidx2141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2140, i32 0, i64 0
  %osucc2142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2141, i32 0, i32 1
  store %union.rec* %851, %union.rec** %osucc2142, align 8
  %854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12143 = bitcast %union.rec* %855 to %struct.word_type*
  %olist2144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12143, i32 0, i32 0
  %arrayidx2145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2144, i32 0, i64 0
  %osucc2146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2145, i32 0, i32 1
  store %union.rec* %854, %union.rec** %osucc2146, align 8
  %856 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12147 = bitcast %union.rec* %856 to %struct.word_type*
  %olist2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12147, i32 0, i32 0
  %arrayidx2149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2148, i32 0, i64 0
  %opred2150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2149, i32 0, i32 0
  store %union.rec* %854, %union.rec** %opred2150, align 8
  %857 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2151

cond.end.2151:                                    ; preds = %cond.false.2122, %cond.true.2121
  %cond2152 = phi %union.rec* [ null, %cond.true.2121 ], [ %857, %cond.false.2122 ]
  %858 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %858, %union.rec** @zz_hold, align 8
  %859 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %859, %union.rec** @zz_hold, align 8
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12153 = bitcast %union.rec* %860 to %struct.word_type*
  %ou12154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12153, i32 0, i32 1
  %os112155 = bitcast %union.FIRST_UNION* %ou12154 to %struct.anon*
  %otype2156 = getelementptr inbounds %struct.anon, %struct.anon* %os112155, i32 0, i32 0
  %861 = load i8, i8* %otype2156, align 1
  %conv2157 = zext i8 %861 to i32
  %cmp2158 = icmp eq i32 %conv2157, 11
  br i1 %cmp2158, label %cond.true.2168, label %lor.lhs.false.2160

lor.lhs.false.2160:                               ; preds = %cond.end.2151
  %862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12161 = bitcast %union.rec* %862 to %struct.word_type*
  %ou12162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12161, i32 0, i32 1
  %os112163 = bitcast %union.FIRST_UNION* %ou12162 to %struct.anon*
  %otype2164 = getelementptr inbounds %struct.anon, %struct.anon* %os112163, i32 0, i32 0
  %863 = load i8, i8* %otype2164, align 1
  %conv2165 = zext i8 %863 to i32
  %cmp2166 = icmp eq i32 %conv2165, 12
  br i1 %cmp2166, label %cond.true.2168, label %cond.false.2174

cond.true.2168:                                   ; preds = %lor.lhs.false.2160, %cond.end.2151
  %864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12169 = bitcast %union.rec* %864 to %struct.word_type*
  %ou12170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12169, i32 0, i32 1
  %os112171 = bitcast %union.FIRST_UNION* %ou12170 to %struct.anon*
  %orec_size2172 = getelementptr inbounds %struct.anon, %struct.anon* %os112171, i32 0, i32 1
  %865 = load i8, i8* %orec_size2172, align 1
  %conv2173 = zext i8 %865 to i32
  br label %cond.end.2182

cond.false.2174:                                  ; preds = %lor.lhs.false.2160
  %866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12175 = bitcast %union.rec* %866 to %struct.word_type*
  %ou12176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12175, i32 0, i32 1
  %os112177 = bitcast %union.FIRST_UNION* %ou12176 to %struct.anon*
  %otype2178 = getelementptr inbounds %struct.anon, %struct.anon* %os112177, i32 0, i32 0
  %867 = load i8, i8* %otype2178, align 1
  %idxprom2179 = zext i8 %867 to i64
  %arrayidx2180 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2179
  %868 = load i8, i8* %arrayidx2180, align 1
  %conv2181 = zext i8 %868 to i32
  br label %cond.end.2182

cond.end.2182:                                    ; preds = %cond.false.2174, %cond.true.2168
  %cond2183 = phi i32 [ %conv2173, %cond.true.2168 ], [ %conv2181, %cond.false.2174 ]
  store i32 %cond2183, i32* @zz_size, align 4
  %869 = load i32, i32* @zz_size, align 4
  %idxprom2184 = sext i32 %869 to i64
  %arrayidx2185 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2184
  %870 = load %union.rec*, %union.rec** %arrayidx2185, align 8
  %871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12186 = bitcast %union.rec* %871 to %struct.word_type*
  %olist2187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12186, i32 0, i32 0
  %arrayidx2188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2187, i32 0, i64 0
  %opred2189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2188, i32 0, i32 0
  store %union.rec* %870, %union.rec** %opred2189, align 8
  %872 = load %union.rec*, %union.rec** @zz_hold, align 8
  %873 = load i32, i32* @zz_size, align 4
  %idxprom2190 = sext i32 %873 to i64
  %arrayidx2191 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2190
  store %union.rec* %872, %union.rec** %arrayidx2191, align 8
  %874 = load %union.rec*, %union.rec** %y, align 8
  %os12192 = bitcast %union.rec* %874 to %struct.word_type*
  %olist2193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12192, i32 0, i32 0
  %arrayidx2194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2193, i32 0, i64 1
  %osucc2195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2194, i32 0, i32 1
  %875 = load %union.rec*, %union.rec** %osucc2195, align 8
  %876 = load %union.rec*, %union.rec** %y, align 8
  %os12196 = bitcast %union.rec* %876 to %struct.word_type*
  %olist2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12196, i32 0, i32 0
  %arrayidx2198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2197, i32 0, i64 1
  %opred2199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2198, i32 0, i32 0
  %877 = load %union.rec*, %union.rec** %opred2199, align 8
  %cmp2200 = icmp eq %union.rec* %875, %877
  br i1 %cmp2200, label %if.end.2204, label %if.then.2202

if.then.2202:                                     ; preds = %cond.end.2182
  %878 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2203 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %878, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.2204

if.end.2204:                                      ; preds = %if.then.2202, %cond.end.2182
  %879 = load %union.rec*, %union.rec** %y, align 8
  %os12205 = bitcast %union.rec* %879 to %struct.word_type*
  %olist2206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12205, i32 0, i32 0
  %arrayidx2207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2206, i32 0, i64 1
  %osucc2208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2207, i32 0, i32 1
  %880 = load %union.rec*, %union.rec** %osucc2208, align 8
  store %union.rec* %880, %union.rec** @xx_link, align 8
  %881 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %881, %union.rec** @zz_hold, align 8
  %882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12209 = bitcast %union.rec* %882 to %struct.word_type*
  %olist2210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12209, i32 0, i32 0
  %arrayidx2211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2210, i32 0, i64 1
  %osucc2212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2211, i32 0, i32 1
  %883 = load %union.rec*, %union.rec** %osucc2212, align 8
  %884 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2213 = icmp eq %union.rec* %883, %884
  br i1 %cmp2213, label %cond.true.2215, label %cond.false.2216

cond.true.2215:                                   ; preds = %if.end.2204
  br label %cond.end.2245

cond.false.2216:                                  ; preds = %if.end.2204
  %885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12217 = bitcast %union.rec* %885 to %struct.word_type*
  %olist2218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12217, i32 0, i32 0
  %arrayidx2219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2218, i32 0, i64 1
  %osucc2220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2219, i32 0, i32 1
  %886 = load %union.rec*, %union.rec** %osucc2220, align 8
  store %union.rec* %886, %union.rec** @zz_res, align 8
  %887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12221 = bitcast %union.rec* %887 to %struct.word_type*
  %olist2222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12221, i32 0, i32 0
  %arrayidx2223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2222, i32 0, i64 1
  %opred2224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2223, i32 0, i32 0
  %888 = load %union.rec*, %union.rec** %opred2224, align 8
  %889 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12225 = bitcast %union.rec* %889 to %struct.word_type*
  %olist2226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12225, i32 0, i32 0
  %arrayidx2227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2226, i32 0, i64 1
  %opred2228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2227, i32 0, i32 0
  store %union.rec* %888, %union.rec** %opred2228, align 8
  %890 = load %union.rec*, %union.rec** @zz_res, align 8
  %891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12229 = bitcast %union.rec* %891 to %struct.word_type*
  %olist2230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12229, i32 0, i32 0
  %arrayidx2231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2230, i32 0, i64 1
  %opred2232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2231, i32 0, i32 0
  %892 = load %union.rec*, %union.rec** %opred2232, align 8
  %os12233 = bitcast %union.rec* %892 to %struct.word_type*
  %olist2234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12233, i32 0, i32 0
  %arrayidx2235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2234, i32 0, i64 1
  %osucc2236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2235, i32 0, i32 1
  store %union.rec* %890, %union.rec** %osucc2236, align 8
  %893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %894 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12237 = bitcast %union.rec* %894 to %struct.word_type*
  %olist2238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12237, i32 0, i32 0
  %arrayidx2239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2238, i32 0, i64 1
  %osucc2240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2239, i32 0, i32 1
  store %union.rec* %893, %union.rec** %osucc2240, align 8
  %895 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12241 = bitcast %union.rec* %895 to %struct.word_type*
  %olist2242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12241, i32 0, i32 0
  %arrayidx2243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2242, i32 0, i64 1
  %opred2244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2243, i32 0, i32 0
  store %union.rec* %893, %union.rec** %opred2244, align 8
  %896 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2245

cond.end.2245:                                    ; preds = %cond.false.2216, %cond.true.2215
  %cond2246 = phi %union.rec* [ null, %cond.true.2215 ], [ %896, %cond.false.2216 ]
  store %union.rec* %cond2246, %union.rec** @xx_tmp, align 8
  %897 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %897, %union.rec** @zz_hold, align 8
  %898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12247 = bitcast %union.rec* %898 to %struct.word_type*
  %olist2248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12247, i32 0, i32 0
  %arrayidx2249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2248, i32 0, i64 0
  %osucc2250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2249, i32 0, i32 1
  %899 = load %union.rec*, %union.rec** %osucc2250, align 8
  %900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2251 = icmp eq %union.rec* %899, %900
  br i1 %cmp2251, label %cond.true.2253, label %cond.false.2254

cond.true.2253:                                   ; preds = %cond.end.2245
  br label %cond.end.2283

cond.false.2254:                                  ; preds = %cond.end.2245
  %901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12255 = bitcast %union.rec* %901 to %struct.word_type*
  %olist2256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12255, i32 0, i32 0
  %arrayidx2257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2256, i32 0, i64 0
  %osucc2258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2257, i32 0, i32 1
  %902 = load %union.rec*, %union.rec** %osucc2258, align 8
  store %union.rec* %902, %union.rec** @zz_res, align 8
  %903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12259 = bitcast %union.rec* %903 to %struct.word_type*
  %olist2260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12259, i32 0, i32 0
  %arrayidx2261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2260, i32 0, i64 0
  %opred2262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2261, i32 0, i32 0
  %904 = load %union.rec*, %union.rec** %opred2262, align 8
  %905 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12263 = bitcast %union.rec* %905 to %struct.word_type*
  %olist2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12263, i32 0, i32 0
  %arrayidx2265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2264, i32 0, i64 0
  %opred2266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2265, i32 0, i32 0
  store %union.rec* %904, %union.rec** %opred2266, align 8
  %906 = load %union.rec*, %union.rec** @zz_res, align 8
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12267 = bitcast %union.rec* %907 to %struct.word_type*
  %olist2268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12267, i32 0, i32 0
  %arrayidx2269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2268, i32 0, i64 0
  %opred2270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2269, i32 0, i32 0
  %908 = load %union.rec*, %union.rec** %opred2270, align 8
  %os12271 = bitcast %union.rec* %908 to %struct.word_type*
  %olist2272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12271, i32 0, i32 0
  %arrayidx2273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2272, i32 0, i64 0
  %osucc2274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2273, i32 0, i32 1
  store %union.rec* %906, %union.rec** %osucc2274, align 8
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12275 = bitcast %union.rec* %910 to %struct.word_type*
  %olist2276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12275, i32 0, i32 0
  %arrayidx2277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2276, i32 0, i64 0
  %osucc2278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2277, i32 0, i32 1
  store %union.rec* %909, %union.rec** %osucc2278, align 8
  %911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12279 = bitcast %union.rec* %911 to %struct.word_type*
  %olist2280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12279, i32 0, i32 0
  %arrayidx2281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2280, i32 0, i64 0
  %opred2282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2281, i32 0, i32 0
  store %union.rec* %909, %union.rec** %opred2282, align 8
  %912 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2283

cond.end.2283:                                    ; preds = %cond.false.2254, %cond.true.2253
  %cond2284 = phi %union.rec* [ null, %cond.true.2253 ], [ %912, %cond.false.2254 ]
  %913 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %913, %union.rec** @zz_hold, align 8
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %914, %union.rec** @zz_hold, align 8
  %915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12285 = bitcast %union.rec* %915 to %struct.word_type*
  %ou12286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12285, i32 0, i32 1
  %os112287 = bitcast %union.FIRST_UNION* %ou12286 to %struct.anon*
  %otype2288 = getelementptr inbounds %struct.anon, %struct.anon* %os112287, i32 0, i32 0
  %916 = load i8, i8* %otype2288, align 1
  %conv2289 = zext i8 %916 to i32
  %cmp2290 = icmp eq i32 %conv2289, 11
  br i1 %cmp2290, label %cond.true.2300, label %lor.lhs.false.2292

lor.lhs.false.2292:                               ; preds = %cond.end.2283
  %917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12293 = bitcast %union.rec* %917 to %struct.word_type*
  %ou12294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12293, i32 0, i32 1
  %os112295 = bitcast %union.FIRST_UNION* %ou12294 to %struct.anon*
  %otype2296 = getelementptr inbounds %struct.anon, %struct.anon* %os112295, i32 0, i32 0
  %918 = load i8, i8* %otype2296, align 1
  %conv2297 = zext i8 %918 to i32
  %cmp2298 = icmp eq i32 %conv2297, 12
  br i1 %cmp2298, label %cond.true.2300, label %cond.false.2306

cond.true.2300:                                   ; preds = %lor.lhs.false.2292, %cond.end.2283
  %919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12301 = bitcast %union.rec* %919 to %struct.word_type*
  %ou12302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12301, i32 0, i32 1
  %os112303 = bitcast %union.FIRST_UNION* %ou12302 to %struct.anon*
  %orec_size2304 = getelementptr inbounds %struct.anon, %struct.anon* %os112303, i32 0, i32 1
  %920 = load i8, i8* %orec_size2304, align 1
  %conv2305 = zext i8 %920 to i32
  br label %cond.end.2314

cond.false.2306:                                  ; preds = %lor.lhs.false.2292
  %921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12307 = bitcast %union.rec* %921 to %struct.word_type*
  %ou12308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12307, i32 0, i32 1
  %os112309 = bitcast %union.FIRST_UNION* %ou12308 to %struct.anon*
  %otype2310 = getelementptr inbounds %struct.anon, %struct.anon* %os112309, i32 0, i32 0
  %922 = load i8, i8* %otype2310, align 1
  %idxprom2311 = zext i8 %922 to i64
  %arrayidx2312 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2311
  %923 = load i8, i8* %arrayidx2312, align 1
  %conv2313 = zext i8 %923 to i32
  br label %cond.end.2314

cond.end.2314:                                    ; preds = %cond.false.2306, %cond.true.2300
  %cond2315 = phi i32 [ %conv2305, %cond.true.2300 ], [ %conv2313, %cond.false.2306 ]
  store i32 %cond2315, i32* @zz_size, align 4
  %924 = load i32, i32* @zz_size, align 4
  %idxprom2316 = sext i32 %924 to i64
  %arrayidx2317 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2316
  %925 = load %union.rec*, %union.rec** %arrayidx2317, align 8
  %926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12318 = bitcast %union.rec* %926 to %struct.word_type*
  %olist2319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12318, i32 0, i32 0
  %arrayidx2320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2319, i32 0, i64 0
  %opred2321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2320, i32 0, i32 0
  store %union.rec* %925, %union.rec** %opred2321, align 8
  %927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %928 = load i32, i32* @zz_size, align 4
  %idxprom2322 = sext i32 %928 to i64
  %arrayidx2323 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2322
  store %union.rec* %927, %union.rec** %arrayidx2323, align 8
  %929 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os12324 = bitcast %union.rec* %929 to %struct.word_type*
  %olist2325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12324, i32 0, i32 0
  %arrayidx2326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2325, i32 0, i64 1
  %osucc2327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2326, i32 0, i32 1
  %930 = load %union.rec*, %union.rec** %osucc2327, align 8
  %931 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp2328 = icmp eq %union.rec* %930, %931
  br i1 %cmp2328, label %if.then.2330, label %if.end.2332

if.then.2330:                                     ; preds = %cond.end.2314
  %932 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call2331 = call i32 @DisposeObject(%union.rec* %932)
  br label %if.end.2332

if.end.2332:                                      ; preds = %if.then.2330, %cond.end.2314
  %933 = load %union.rec*, %union.rec** %link, align 8
  %os12333 = bitcast %union.rec* %933 to %struct.word_type*
  %olist2334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12333, i32 0, i32 0
  %arrayidx2335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2334, i32 0, i64 0
  %opred2336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2335, i32 0, i32 0
  %934 = load %union.rec*, %union.rec** %opred2336, align 8
  store %union.rec* %934, %union.rec** %link, align 8
  br label %if.end.2337

if.end.2337:                                      ; preds = %if.end.2332, %if.else.1251
  br label %if.end.2338

if.end.2338:                                      ; preds = %if.end.2337, %if.then.1244
  br label %sw.epilog

sw.bb.2339:                                       ; preds = %for.end.670, %for.end.670
  %935 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12340 = bitcast %union.rec* %935 to %struct.word_type*
  %ou22341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12340, i32 0, i32 2
  %os232342 = bitcast %union.SECOND_UNION* %ou22341 to %struct.anon.2*
  %ogall_dir2343 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232342, i32 0, i32 2
  %bf.load2344 = load i16, i16* %ogall_dir2343, align 2
  %bf.lshr2345 = lshr i16 %bf.load2344, 8
  %bf.clear2346 = and i16 %bf.lshr2345, 1
  %bf.cast2347 = zext i16 %bf.clear2346 to i32
  %cmp2348 = icmp eq i32 %bf.cast2347, 0
  br i1 %cmp2348, label %if.then.2350, label %if.else.2357

if.then.2350:                                     ; preds = %sw.bb.2339
  %936 = load %union.rec*, %union.rec** %y, align 8
  %os12351 = bitcast %union.rec* %936 to %struct.word_type*
  %ou22352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12351, i32 0, i32 2
  %os232353 = bitcast %union.SECOND_UNION* %ou22352 to %struct.anon.2*
  %oexternal_hor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232353, i32 0, i32 2
  %bf.load2354 = load i16, i16* %oexternal_hor, align 2
  %bf.clear2355 = and i16 %bf.load2354, -9
  %bf.set2356 = or i16 %bf.clear2355, 8
  store i16 %bf.set2356, i16* %oexternal_hor, align 2
  br label %if.end.2365

if.else.2357:                                     ; preds = %sw.bb.2339
  %937 = load %union.rec*, %union.rec** %y, align 8
  %os12358 = bitcast %union.rec* %937 to %struct.word_type*
  %ou22359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12358, i32 0, i32 2
  %os232360 = bitcast %union.SECOND_UNION* %ou22359 to %struct.anon.2*
  %oexternal_ver2361 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232360, i32 0, i32 2
  %bf.load2362 = load i16, i16* %oexternal_ver2361, align 2
  %bf.clear2363 = and i16 %bf.load2362, -17
  %bf.set2364 = or i16 %bf.clear2363, 16
  store i16 %bf.set2364, i16* %oexternal_ver2361, align 2
  br label %if.end.2365

if.end.2365:                                      ; preds = %if.else.2357, %if.then.2350
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.670
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.2365, %if.end.2338, %if.end.1190, %if.end.937, %if.end.688
  br label %for.inc.2366

for.inc.2366:                                     ; preds = %sw.epilog
  %938 = load %union.rec*, %union.rec** %link, align 8
  %os12367 = bitcast %union.rec* %938 to %struct.word_type*
  %olist2368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12367, i32 0, i32 0
  %arrayidx2369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2368, i32 0, i64 0
  %osucc2370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2369, i32 0, i32 1
  %939 = load %union.rec*, %union.rec** %osucc2370, align 8
  store %union.rec* %939, %union.rec** %link, align 8
  br label %for.cond.640

for.end.2371:                                     ; preds = %for.cond.640
  br label %if.end.2372

if.end.2372:                                      ; preds = %for.end.2371, %if.end.632
  %940 = load %union.rec*, %union.rec** %extras, align 8
  %os12373 = bitcast %union.rec* %940 to %struct.word_type*
  %olist2374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12373, i32 0, i32 0
  %arrayidx2375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2374, i32 0, i64 0
  %osucc2376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2375, i32 0, i32 1
  %941 = load %union.rec*, %union.rec** %osucc2376, align 8
  store %union.rec* %941, %union.rec** %link, align 8
  br label %for.cond.2377

for.cond.2377:                                    ; preds = %for.inc.2813, %if.end.2372
  %942 = load %union.rec*, %union.rec** %link, align 8
  %943 = load %union.rec*, %union.rec** %extras, align 8
  %cmp2378 = icmp ne %union.rec* %942, %943
  br i1 %cmp2378, label %for.body.2380, label %for.end.2818

for.body.2380:                                    ; preds = %for.cond.2377
  %944 = load %union.rec*, %union.rec** %link, align 8
  %os12381 = bitcast %union.rec* %944 to %struct.word_type*
  %olist2382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12381, i32 0, i32 0
  %arrayidx2383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2382, i32 0, i64 1
  %opred2384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2383, i32 0, i32 0
  %945 = load %union.rec*, %union.rec** %opred2384, align 8
  store %union.rec* %945, %union.rec** %y, align 8
  br label %for.cond.2385

for.cond.2385:                                    ; preds = %for.inc.2394, %for.body.2380
  %946 = load %union.rec*, %union.rec** %y, align 8
  %os12386 = bitcast %union.rec* %946 to %struct.word_type*
  %ou12387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12386, i32 0, i32 1
  %os112388 = bitcast %union.FIRST_UNION* %ou12387 to %struct.anon*
  %otype2389 = getelementptr inbounds %struct.anon, %struct.anon* %os112388, i32 0, i32 0
  %947 = load i8, i8* %otype2389, align 1
  %conv2390 = zext i8 %947 to i32
  %cmp2391 = icmp eq i32 %conv2390, 0
  br i1 %cmp2391, label %for.body.2393, label %for.end.2399

for.body.2393:                                    ; preds = %for.cond.2385
  br label %for.inc.2394

for.inc.2394:                                     ; preds = %for.body.2393
  %948 = load %union.rec*, %union.rec** %y, align 8
  %os12395 = bitcast %union.rec* %948 to %struct.word_type*
  %olist2396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12395, i32 0, i32 0
  %arrayidx2397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2396, i32 0, i64 1
  %opred2398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2397, i32 0, i32 0
  %949 = load %union.rec*, %union.rec** %opred2398, align 8
  store %union.rec* %949, %union.rec** %y, align 8
  br label %for.cond.2385

for.end.2399:                                     ; preds = %for.cond.2385
  %950 = load %union.rec*, %union.rec** %y, align 8
  %os12400 = bitcast %union.rec* %950 to %struct.word_type*
  %ou12401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12400, i32 0, i32 1
  %os112402 = bitcast %union.FIRST_UNION* %ou12401 to %struct.anon*
  %otype2403 = getelementptr inbounds %struct.anon, %struct.anon* %os112402, i32 0, i32 0
  %951 = load i8, i8* %otype2403, align 1
  %conv2404 = zext i8 %951 to i32
  %cmp2405 = icmp eq i32 %conv2404, 136
  br i1 %cmp2405, label %if.then.2407, label %if.end.2812

if.then.2407:                                     ; preds = %for.end.2399
  %952 = load %union.rec*, %union.rec** %y, align 8
  %os22413 = bitcast %union.rec* %952 to %struct.closure_type*
  %oactual2414 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22413, i32 0, i32 5
  %953 = load %union.rec*, %union.rec** %oactual2414, align 8
  store %union.rec* %953, %union.rec** %z, align 8
  %954 = load %union.rec*, %union.rec** %z, align 8
  %os12415 = bitcast %union.rec* %954 to %struct.word_type*
  %ou12416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12415, i32 0, i32 1
  %os112417 = bitcast %union.FIRST_UNION* %ou12416 to %struct.anon*
  %otype2418 = getelementptr inbounds %struct.anon, %struct.anon* %os112417, i32 0, i32 0
  %955 = load i8, i8* %otype2418, align 1
  %conv2419 = zext i8 %955 to i32
  %cmp2420 = icmp eq i32 %conv2419, 34
  br i1 %cmp2420, label %if.end.2424, label %if.then.2422

if.then.2422:                                     ; preds = %if.then.2407
  %956 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2423 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %956, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.2424

if.end.2424:                                      ; preds = %if.then.2422, %if.then.2407
  %957 = load %union.rec*, %union.rec** %z, align 8
  %os22425 = bitcast %union.rec* %957 to %struct.closure_type*
  %ou42426 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22425, i32 0, i32 4
  %oconstraint2427 = bitcast %union.FOURTH_UNION* %ou42426 to %struct.CONSTRAINT*
  %obc2428 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2427, i32 0, i32 0
  %958 = load i32, i32* %obc2428, align 4
  %cmp2429 = icmp eq i32 %958, 0
  br i1 %cmp2429, label %if.end.2433, label %if.then.2431

if.then.2431:                                     ; preds = %if.end.2424
  %959 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2432 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %959, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.2433

if.end.2433:                                      ; preds = %if.then.2431, %if.end.2424
  %960 = load %union.rec*, %union.rec** %z, align 8
  %os12434 = bitcast %union.rec* %960 to %struct.word_type*
  %olist2435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12434, i32 0, i32 0
  %arrayidx2436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2435, i32 0, i64 0
  %osucc2437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2436, i32 0, i32 1
  %961 = load %union.rec*, %union.rec** %osucc2437, align 8
  %962 = load %union.rec*, %union.rec** %z, align 8
  %cmp2438 = icmp ne %union.rec* %961, %962
  br i1 %cmp2438, label %if.end.2442, label %if.then.2440

if.then.2440:                                     ; preds = %if.end.2433
  %963 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2441 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %963, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.2442

if.end.2442:                                      ; preds = %if.then.2440, %if.end.2433
  %964 = load %union.rec*, %union.rec** %z, align 8
  %os12443 = bitcast %union.rec* %964 to %struct.word_type*
  %olist2444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12443, i32 0, i32 0
  %arrayidx2445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2444, i32 0, i64 0
  %osucc2446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2445, i32 0, i32 1
  %965 = load %union.rec*, %union.rec** %osucc2446, align 8
  %os12447 = bitcast %union.rec* %965 to %struct.word_type*
  %olist2448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12447, i32 0, i32 0
  %arrayidx2449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2448, i32 0, i64 1
  %opred2450 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2449, i32 0, i32 0
  %966 = load %union.rec*, %union.rec** %opred2450, align 8
  store %union.rec* %966, %union.rec** %t2410, align 8
  br label %for.cond.2451

for.cond.2451:                                    ; preds = %for.inc.2460, %if.end.2442
  %967 = load %union.rec*, %union.rec** %t2410, align 8
  %os12452 = bitcast %union.rec* %967 to %struct.word_type*
  %ou12453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12452, i32 0, i32 1
  %os112454 = bitcast %union.FIRST_UNION* %ou12453 to %struct.anon*
  %otype2455 = getelementptr inbounds %struct.anon, %struct.anon* %os112454, i32 0, i32 0
  %968 = load i8, i8* %otype2455, align 1
  %conv2456 = zext i8 %968 to i32
  %cmp2457 = icmp eq i32 %conv2456, 0
  br i1 %cmp2457, label %for.body.2459, label %for.end.2465

for.body.2459:                                    ; preds = %for.cond.2451
  br label %for.inc.2460

for.inc.2460:                                     ; preds = %for.body.2459
  %969 = load %union.rec*, %union.rec** %t2410, align 8
  %os12461 = bitcast %union.rec* %969 to %struct.word_type*
  %olist2462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12461, i32 0, i32 0
  %arrayidx2463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2462, i32 0, i64 1
  %opred2464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2463, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %opred2464, align 8
  store %union.rec* %970, %union.rec** %t2410, align 8
  br label %for.cond.2451

for.end.2465:                                     ; preds = %for.cond.2451
  %971 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12466 = bitcast %union.rec* %971 to %struct.word_type*
  %ou22467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12466, i32 0, i32 2
  %os232468 = bitcast %union.SECOND_UNION* %ou22467 to %struct.anon.2*
  %ogall_dir2469 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232468, i32 0, i32 2
  %bf.load2470 = load i16, i16* %ogall_dir2469, align 2
  %bf.lshr2471 = lshr i16 %bf.load2470, 8
  %bf.clear2472 = and i16 %bf.lshr2471, 1
  %bf.cast2473 = zext i16 %bf.clear2472 to i32
  %cmp2474 = icmp eq i32 %bf.cast2473, 0
  br i1 %cmp2474, label %if.then.2476, label %if.end.2481

if.then.2476:                                     ; preds = %for.end.2465
  %972 = load %union.rec*, %union.rec** %z, align 8
  %os12477 = bitcast %union.rec* %972 to %struct.word_type*
  %ou12478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12477, i32 0, i32 1
  %ofpos2479 = bitcast %union.FIRST_UNION* %ou12478 to %struct.FILE_POS*
  %call2480 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos2479, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.2481

if.end.2481:                                      ; preds = %if.then.2476, %for.end.2465
  %973 = load %union.rec*, %union.rec** %z, align 8
  call void @Constrained(%union.rec* %973, %struct.CONSTRAINT* %zc, i32 0, %union.rec** %why)
  %obc2482 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 0
  %974 = load i32, i32* %obc2482, align 4
  %cmp2483 = icmp ne i32 %974, 8388607
  br i1 %cmp2483, label %if.else.2506, label %lor.lhs.false.2485

lor.lhs.false.2485:                               ; preds = %if.end.2481
  %obfc2486 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %975 = load i32, i32* %obfc2486, align 4
  %cmp2487 = icmp ne i32 %975, 8388607
  br i1 %cmp2487, label %if.else.2506, label %lor.lhs.false.2489

lor.lhs.false.2489:                               ; preds = %lor.lhs.false.2485
  %ofc2490 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 2
  %976 = load i32, i32* %ofc2490, align 4
  %cmp2491 = icmp ne i32 %976, 8388607
  br i1 %cmp2491, label %if.else.2506, label %if.then.2493

if.then.2493:                                     ; preds = %lor.lhs.false.2489
  %977 = load %union.rec*, %union.rec** %z, align 8
  %os12494 = bitcast %union.rec* %977 to %struct.word_type*
  %ou12495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12494, i32 0, i32 1
  %ofpos2496 = bitcast %union.FIRST_UNION* %ou12495 to %struct.FILE_POS*
  %call2497 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2496)
  %978 = load %union.rec*, %union.rec** %z, align 8
  %os22498 = bitcast %union.rec* %978 to %struct.closure_type*
  %ou42499 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22498, i32 0, i32 4
  %oconstraint2500 = bitcast %union.FOURTH_UNION* %ou42499 to %struct.CONSTRAINT*
  %ofc2501 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2500, i32 0, i32 2
  store i32 128, i32* %ofc2501, align 4
  %979 = load %union.rec*, %union.rec** %z, align 8
  %os22502 = bitcast %union.rec* %979 to %struct.closure_type*
  %ou42503 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22502, i32 0, i32 4
  %oconstraint2504 = bitcast %union.FOURTH_UNION* %ou42503 to %struct.CONSTRAINT*
  %obc2505 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2504, i32 0, i32 0
  store i32 128, i32* %obc2505, align 4
  br label %if.end.2758

if.else.2506:                                     ; preds = %lor.lhs.false.2489, %lor.lhs.false.2485, %if.end.2481
  %980 = load %union.rec*, %union.rec** %t2410, align 8
  %os12507 = bitcast %union.rec* %980 to %struct.word_type*
  %ou32508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12507, i32 0, i32 3
  %os312509 = bitcast %union.THIRD_UNION* %ou32508 to %struct.anon.6*
  %oback2510 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312509, i32 0, i32 0
  %arrayidx2511 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2510, i32 0, i64 0
  %981 = load i32, i32* %arrayidx2511, align 4
  %982 = load %union.rec*, %union.rec** %t2410, align 8
  %os12512 = bitcast %union.rec* %982 to %struct.word_type*
  %ou32513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12512, i32 0, i32 3
  %os312514 = bitcast %union.THIRD_UNION* %ou32513 to %struct.anon.6*
  %ofwd2515 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312514, i32 0, i32 1
  %arrayidx2516 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2515, i32 0, i64 0
  %983 = load i32, i32* %arrayidx2516, align 4
  %add2517 = add nsw i32 %981, %983
  %cmp2518 = icmp eq i32 %add2517, 0
  br i1 %cmp2518, label %if.then.2520, label %if.else.2533

if.then.2520:                                     ; preds = %if.else.2506
  %984 = load %union.rec*, %union.rec** %z, align 8
  %os12521 = bitcast %union.rec* %984 to %struct.word_type*
  %ou12522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12521, i32 0, i32 1
  %ofpos2523 = bitcast %union.FIRST_UNION* %ou12522 to %struct.FILE_POS*
  %call2524 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2523)
  %985 = load %union.rec*, %union.rec** %z, align 8
  %os22525 = bitcast %union.rec* %985 to %struct.closure_type*
  %ou42526 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22525, i32 0, i32 4
  %oconstraint2527 = bitcast %union.FOURTH_UNION* %ou42526 to %struct.CONSTRAINT*
  %ofc2528 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2527, i32 0, i32 2
  store i32 128, i32* %ofc2528, align 4
  %986 = load %union.rec*, %union.rec** %z, align 8
  %os22529 = bitcast %union.rec* %986 to %struct.closure_type*
  %ou42530 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22529, i32 0, i32 4
  %oconstraint2531 = bitcast %union.FOURTH_UNION* %ou42530 to %struct.CONSTRAINT*
  %obc2532 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2531, i32 0, i32 0
  store i32 128, i32* %obc2532, align 4
  br label %if.end.2757

if.else.2533:                                     ; preds = %if.else.2506
  %obfc2534 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %987 = load i32, i32* %obfc2534, align 4
  %conv2535 = sitofp i32 %987 to float
  %988 = load %union.rec*, %union.rec** %t2410, align 8
  %os12536 = bitcast %union.rec* %988 to %struct.word_type*
  %ou32537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12536, i32 0, i32 3
  %os312538 = bitcast %union.THIRD_UNION* %ou32537 to %struct.anon.6*
  %oback2539 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312538, i32 0, i32 0
  %arrayidx2540 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2539, i32 0, i64 0
  %989 = load i32, i32* %arrayidx2540, align 4
  %990 = load %union.rec*, %union.rec** %t2410, align 8
  %os12541 = bitcast %union.rec* %990 to %struct.word_type*
  %ou32542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12541, i32 0, i32 3
  %os312543 = bitcast %union.THIRD_UNION* %ou32542 to %struct.anon.6*
  %ofwd2544 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312543, i32 0, i32 1
  %arrayidx2545 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2544, i32 0, i64 0
  %991 = load i32, i32* %arrayidx2545, align 4
  %add2546 = add nsw i32 %989, %991
  %conv2547 = sitofp i32 %add2546 to float
  %div = fdiv float %conv2535, %conv2547
  %conv2548 = fpext float %div to double
  %cmp2549 = fcmp ogt double %conv2548, 1.000000e+02
  br i1 %cmp2549, label %if.then.2551, label %if.else.2564

if.then.2551:                                     ; preds = %if.else.2533
  %992 = load %union.rec*, %union.rec** %z, align 8
  %os12552 = bitcast %union.rec* %992 to %struct.word_type*
  %ou12553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12552, i32 0, i32 1
  %ofpos2554 = bitcast %union.FIRST_UNION* %ou12553 to %struct.FILE_POS*
  %call2555 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2554)
  %993 = load %union.rec*, %union.rec** %z, align 8
  %os22556 = bitcast %union.rec* %993 to %struct.closure_type*
  %ou42557 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22556, i32 0, i32 4
  %oconstraint2558 = bitcast %union.FOURTH_UNION* %ou42557 to %struct.CONSTRAINT*
  %ofc2559 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2558, i32 0, i32 2
  store i32 128, i32* %ofc2559, align 4
  %994 = load %union.rec*, %union.rec** %z, align 8
  %os22560 = bitcast %union.rec* %994 to %struct.closure_type*
  %ou42561 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22560, i32 0, i32 4
  %oconstraint2562 = bitcast %union.FOURTH_UNION* %ou42561 to %struct.CONSTRAINT*
  %obc2563 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2562, i32 0, i32 0
  store i32 128, i32* %obc2563, align 4
  br label %if.end.2756

if.else.2564:                                     ; preds = %if.else.2533
  %obfc2565 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %995 = load i32, i32* %obfc2565, align 4
  %conv2566 = sitofp i32 %995 to float
  %996 = load %union.rec*, %union.rec** %t2410, align 8
  %os12567 = bitcast %union.rec* %996 to %struct.word_type*
  %ou32568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12567, i32 0, i32 3
  %os312569 = bitcast %union.THIRD_UNION* %ou32568 to %struct.anon.6*
  %oback2570 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312569, i32 0, i32 0
  %arrayidx2571 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2570, i32 0, i64 0
  %997 = load i32, i32* %arrayidx2571, align 4
  %998 = load %union.rec*, %union.rec** %t2410, align 8
  %os12572 = bitcast %union.rec* %998 to %struct.word_type*
  %ou32573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12572, i32 0, i32 3
  %os312574 = bitcast %union.THIRD_UNION* %ou32573 to %struct.anon.6*
  %ofwd2575 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312574, i32 0, i32 1
  %arrayidx2576 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2575, i32 0, i64 0
  %999 = load i32, i32* %arrayidx2576, align 4
  %add2577 = add nsw i32 %997, %999
  %conv2578 = sitofp i32 %add2577 to float
  %div2579 = fdiv float %conv2566, %conv2578
  %conv2580 = fpext float %div2579 to double
  %cmp2581 = fcmp olt double %conv2580, 1.000000e-02
  br i1 %cmp2581, label %if.then.2583, label %if.else.2733

if.then.2583:                                     ; preds = %if.else.2564
  %obfc2584 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %1000 = load i32, i32* %obfc2584, align 4
  %cmp2585 = icmp eq i32 %1000, 0
  br i1 %cmp2585, label %if.then.2587, label %if.else.2592

if.then.2587:                                     ; preds = %if.then.2583
  %1001 = load %union.rec*, %union.rec** %z, align 8
  %os12588 = bitcast %union.rec* %1001 to %struct.word_type*
  %ou12589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12588, i32 0, i32 1
  %ofpos2590 = bitcast %union.FIRST_UNION* %ou12589 to %struct.FILE_POS*
  %call2591 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2590)
  br label %if.end.2597

if.else.2592:                                     ; preds = %if.then.2583
  %1002 = load %union.rec*, %union.rec** %z, align 8
  %os12593 = bitcast %union.rec* %1002 to %struct.word_type*
  %ou12594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12593, i32 0, i32 1
  %ofpos2595 = bitcast %union.FIRST_UNION* %ou12594 to %struct.FILE_POS*
  %call2596 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2595)
  br label %if.end.2597

if.end.2597:                                      ; preds = %if.else.2592, %if.then.2587
  %1003 = load %union.rec*, %union.rec** %z, align 8
  %os22598 = bitcast %union.rec* %1003 to %struct.closure_type*
  %ou42599 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22598, i32 0, i32 4
  %oconstraint2600 = bitcast %union.FOURTH_UNION* %ou42599 to %struct.CONSTRAINT*
  %ofc2601 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2600, i32 0, i32 2
  store i32 128, i32* %ofc2601, align 4
  %1004 = load %union.rec*, %union.rec** %z, align 8
  %os22602 = bitcast %union.rec* %1004 to %struct.closure_type*
  %ou42603 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22602, i32 0, i32 4
  %oconstraint2604 = bitcast %union.FOURTH_UNION* %ou42603 to %struct.CONSTRAINT*
  %obc2605 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2604, i32 0, i32 0
  store i32 128, i32* %obc2605, align 4
  %1005 = load %union.rec*, %union.rec** %t2410, align 8
  %os12606 = bitcast %union.rec* %1005 to %struct.word_type*
  %ou12607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12606, i32 0, i32 1
  %ofpos2608 = bitcast %union.FIRST_UNION* %ou12607 to %struct.FILE_POS*
  %call2609 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %struct.FILE_POS* %ofpos2608)
  store %union.rec* %call2609, %union.rec** %tmp, align 8
  %1006 = load %union.rec*, %union.rec** %tmp, align 8
  %os12610 = bitcast %union.rec* %1006 to %struct.word_type*
  %ou32611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12610, i32 0, i32 3
  %os312612 = bitcast %union.THIRD_UNION* %ou32611 to %struct.anon.6*
  %ofwd2613 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312612, i32 0, i32 1
  %arrayidx2614 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2613, i32 0, i64 0
  store i32 0, i32* %arrayidx2614, align 4
  %1007 = load %union.rec*, %union.rec** %tmp, align 8
  %os12615 = bitcast %union.rec* %1007 to %struct.word_type*
  %ou32616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12615, i32 0, i32 3
  %os312617 = bitcast %union.THIRD_UNION* %ou32616 to %struct.anon.6*
  %oback2618 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312617, i32 0, i32 0
  %arrayidx2619 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2618, i32 0, i64 0
  store i32 0, i32* %arrayidx2619, align 4
  %1008 = load %union.rec*, %union.rec** %tmp, align 8
  %os12620 = bitcast %union.rec* %1008 to %struct.word_type*
  %ou32621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12620, i32 0, i32 3
  %os312622 = bitcast %union.THIRD_UNION* %ou32621 to %struct.anon.6*
  %ofwd2623 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312622, i32 0, i32 1
  %arrayidx2624 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2623, i32 0, i64 1
  store i32 0, i32* %arrayidx2624, align 4
  %1009 = load %union.rec*, %union.rec** %tmp, align 8
  %os12625 = bitcast %union.rec* %1009 to %struct.word_type*
  %ou32626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12625, i32 0, i32 3
  %os312627 = bitcast %union.THIRD_UNION* %ou32626 to %struct.anon.6*
  %oback2628 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312627, i32 0, i32 0
  %arrayidx2629 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2628, i32 0, i64 1
  store i32 0, i32* %arrayidx2629, align 4
  %1010 = load %union.rec*, %union.rec** %tmp, align 8
  %os12630 = bitcast %union.rec* %1010 to %struct.word_type*
  %ou22631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12630, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou22631 to %struct.anon.1*
  %1011 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load2632 = load i32, i32* %1011, align 4
  %bf.clear2633 = and i32 %bf.load2632, -528482305
  store i32 %bf.clear2633, i32* %1011, align 4
  %1012 = load %union.rec*, %union.rec** %tmp, align 8
  %os12634 = bitcast %union.rec* %1012 to %struct.word_type*
  %ou22635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12634, i32 0, i32 2
  %os222636 = bitcast %union.SECOND_UNION* %ou22635 to %struct.anon.1*
  %1013 = bitcast %struct.anon.1* %os222636 to i32*
  %bf.load2637 = load i32, i32* %1013, align 4
  %bf.clear2638 = and i32 %bf.load2637, -4190209
  store i32 %bf.clear2638, i32* %1013, align 4
  %1014 = load %union.rec*, %union.rec** %tmp, align 8
  %os12639 = bitcast %union.rec* %1014 to %struct.word_type*
  %ou22640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12639, i32 0, i32 2
  %os222641 = bitcast %union.SECOND_UNION* %ou22640 to %struct.anon.1*
  %1015 = bitcast %struct.anon.1* %os222641 to i32*
  %bf.load2642 = load i32, i32* %1015, align 4
  %bf.clear2643 = and i32 %bf.load2642, -4096
  store i32 %bf.clear2643, i32* %1015, align 4
  %1016 = load %union.rec*, %union.rec** %tmp, align 8
  %os12644 = bitcast %union.rec* %1016 to %struct.word_type*
  %ou22645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12644, i32 0, i32 2
  %os222646 = bitcast %union.SECOND_UNION* %ou22645 to %struct.anon.1*
  %1017 = bitcast %struct.anon.1* %os222646 to i32*
  %bf.load2647 = load i32, i32* %1017, align 4
  %bf.clear2648 = and i32 %bf.load2647, -4194305
  store i32 %bf.clear2648, i32* %1017, align 4
  %1018 = load %union.rec*, %union.rec** %tmp, align 8
  %os12649 = bitcast %union.rec* %1018 to %struct.word_type*
  %ou22650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12649, i32 0, i32 2
  %os222651 = bitcast %union.SECOND_UNION* %ou22650 to %struct.anon.1*
  %1019 = bitcast %struct.anon.1* %os222651 to i32*
  %bf.load2652 = load i32, i32* %1019, align 4
  %bf.clear2653 = and i32 %bf.load2652, 2147483647
  store i32 %bf.clear2653, i32* %1019, align 4
  %1020 = load %union.rec*, %union.rec** %t2410, align 8
  store %union.rec* %1020, %union.rec** @zz_hold, align 8
  %1021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12654 = bitcast %union.rec* %1021 to %struct.word_type*
  %olist2655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12654, i32 0, i32 0
  %arrayidx2656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2655, i32 0, i64 1
  %osucc2657 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2656, i32 0, i32 1
  %1022 = load %union.rec*, %union.rec** %osucc2657, align 8
  %1023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2658 = icmp eq %union.rec* %1022, %1023
  br i1 %cmp2658, label %cond.true.2660, label %cond.false.2661

cond.true.2660:                                   ; preds = %if.end.2597
  br label %cond.end.2690

cond.false.2661:                                  ; preds = %if.end.2597
  %1024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12662 = bitcast %union.rec* %1024 to %struct.word_type*
  %olist2663 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12662, i32 0, i32 0
  %arrayidx2664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2663, i32 0, i64 1
  %osucc2665 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2664, i32 0, i32 1
  %1025 = load %union.rec*, %union.rec** %osucc2665, align 8
  store %union.rec* %1025, %union.rec** @zz_res, align 8
  %1026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12666 = bitcast %union.rec* %1026 to %struct.word_type*
  %olist2667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12666, i32 0, i32 0
  %arrayidx2668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2667, i32 0, i64 1
  %opred2669 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2668, i32 0, i32 0
  %1027 = load %union.rec*, %union.rec** %opred2669, align 8
  %1028 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12670 = bitcast %union.rec* %1028 to %struct.word_type*
  %olist2671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12670, i32 0, i32 0
  %arrayidx2672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2671, i32 0, i64 1
  %opred2673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2672, i32 0, i32 0
  store %union.rec* %1027, %union.rec** %opred2673, align 8
  %1029 = load %union.rec*, %union.rec** @zz_res, align 8
  %1030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12674 = bitcast %union.rec* %1030 to %struct.word_type*
  %olist2675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12674, i32 0, i32 0
  %arrayidx2676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2675, i32 0, i64 1
  %opred2677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2676, i32 0, i32 0
  %1031 = load %union.rec*, %union.rec** %opred2677, align 8
  %os12678 = bitcast %union.rec* %1031 to %struct.word_type*
  %olist2679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12678, i32 0, i32 0
  %arrayidx2680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2679, i32 0, i64 1
  %osucc2681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2680, i32 0, i32 1
  store %union.rec* %1029, %union.rec** %osucc2681, align 8
  %1032 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1033 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12682 = bitcast %union.rec* %1033 to %struct.word_type*
  %olist2683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12682, i32 0, i32 0
  %arrayidx2684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2683, i32 0, i64 1
  %osucc2685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2684, i32 0, i32 1
  store %union.rec* %1032, %union.rec** %osucc2685, align 8
  %1034 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12686 = bitcast %union.rec* %1034 to %struct.word_type*
  %olist2687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12686, i32 0, i32 0
  %arrayidx2688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2687, i32 0, i64 1
  %opred2689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2688, i32 0, i32 0
  store %union.rec* %1032, %union.rec** %opred2689, align 8
  %1035 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2690

cond.end.2690:                                    ; preds = %cond.false.2661, %cond.true.2660
  %cond2691 = phi %union.rec* [ null, %cond.true.2660 ], [ %1035, %cond.false.2661 ]
  store %union.rec* %cond2691, %union.rec** @xx_tmp, align 8
  %1036 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1036, %union.rec** @zz_res, align 8
  %1037 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1037, %union.rec** @zz_hold, align 8
  %1038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2692 = icmp eq %union.rec* %1038, null
  br i1 %cmp2692, label %cond.true.2694, label %cond.false.2695

cond.true.2694:                                   ; preds = %cond.end.2690
  %1039 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2730

cond.false.2695:                                  ; preds = %cond.end.2690
  %1040 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2696 = icmp eq %union.rec* %1040, null
  br i1 %cmp2696, label %cond.true.2698, label %cond.false.2699

cond.true.2698:                                   ; preds = %cond.false.2695
  %1041 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2728

cond.false.2699:                                  ; preds = %cond.false.2695
  %1042 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12700 = bitcast %union.rec* %1042 to %struct.word_type*
  %olist2701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12700, i32 0, i32 0
  %arrayidx2702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2701, i32 0, i64 1
  %opred2703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2702, i32 0, i32 0
  %1043 = load %union.rec*, %union.rec** %opred2703, align 8
  store %union.rec* %1043, %union.rec** @zz_tmp, align 8
  %1044 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12704 = bitcast %union.rec* %1044 to %struct.word_type*
  %olist2705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12704, i32 0, i32 0
  %arrayidx2706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2705, i32 0, i64 1
  %opred2707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2706, i32 0, i32 0
  %1045 = load %union.rec*, %union.rec** %opred2707, align 8
  %1046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12708 = bitcast %union.rec* %1046 to %struct.word_type*
  %olist2709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12708, i32 0, i32 0
  %arrayidx2710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2709, i32 0, i64 1
  %opred2711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2710, i32 0, i32 0
  store %union.rec* %1045, %union.rec** %opred2711, align 8
  %1047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1048 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12712 = bitcast %union.rec* %1048 to %struct.word_type*
  %olist2713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12712, i32 0, i32 0
  %arrayidx2714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2713, i32 0, i64 1
  %opred2715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2714, i32 0, i32 0
  %1049 = load %union.rec*, %union.rec** %opred2715, align 8
  %os12716 = bitcast %union.rec* %1049 to %struct.word_type*
  %olist2717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12716, i32 0, i32 0
  %arrayidx2718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2717, i32 0, i64 1
  %osucc2719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2718, i32 0, i32 1
  store %union.rec* %1047, %union.rec** %osucc2719, align 8
  %1050 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1051 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12720 = bitcast %union.rec* %1051 to %struct.word_type*
  %olist2721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12720, i32 0, i32 0
  %arrayidx2722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2721, i32 0, i64 1
  %opred2723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2722, i32 0, i32 0
  store %union.rec* %1050, %union.rec** %opred2723, align 8
  %1052 = load %union.rec*, %union.rec** @zz_res, align 8
  %1053 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12724 = bitcast %union.rec* %1053 to %struct.word_type*
  %olist2725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12724, i32 0, i32 0
  %arrayidx2726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2725, i32 0, i64 1
  %osucc2727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2726, i32 0, i32 1
  store %union.rec* %1052, %union.rec** %osucc2727, align 8
  br label %cond.end.2728

cond.end.2728:                                    ; preds = %cond.false.2699, %cond.true.2698
  %cond2729 = phi %union.rec* [ %1041, %cond.true.2698 ], [ %1052, %cond.false.2699 ]
  br label %cond.end.2730

cond.end.2730:                                    ; preds = %cond.end.2728, %cond.true.2694
  %cond2731 = phi %union.rec* [ %1039, %cond.true.2694 ], [ %cond2729, %cond.end.2728 ]
  %1054 = load %union.rec*, %union.rec** %t2410, align 8
  %call2732 = call i32 @DisposeObject(%union.rec* %1054)
  %1055 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1055, %union.rec** %t2410, align 8
  br label %if.end.2755

if.else.2733:                                     ; preds = %if.else.2564
  %obfc2734 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %zc, i32 0, i32 1
  %1056 = load i32, i32* %obfc2734, align 4
  %mul = mul nsw i32 %1056, 128
  %1057 = load %union.rec*, %union.rec** %t2410, align 8
  %os12735 = bitcast %union.rec* %1057 to %struct.word_type*
  %ou32736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12735, i32 0, i32 3
  %os312737 = bitcast %union.THIRD_UNION* %ou32736 to %struct.anon.6*
  %oback2738 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312737, i32 0, i32 0
  %arrayidx2739 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2738, i32 0, i64 0
  %1058 = load i32, i32* %arrayidx2739, align 4
  %1059 = load %union.rec*, %union.rec** %t2410, align 8
  %os12740 = bitcast %union.rec* %1059 to %struct.word_type*
  %ou32741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12740, i32 0, i32 3
  %os312742 = bitcast %union.THIRD_UNION* %ou32741 to %struct.anon.6*
  %ofwd2743 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312742, i32 0, i32 1
  %arrayidx2744 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2743, i32 0, i64 0
  %1060 = load i32, i32* %arrayidx2744, align 4
  %add2745 = add nsw i32 %1058, %1060
  %div2746 = sdiv i32 %mul, %add2745
  %1061 = load %union.rec*, %union.rec** %z, align 8
  %os22747 = bitcast %union.rec* %1061 to %struct.closure_type*
  %ou42748 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22747, i32 0, i32 4
  %oconstraint2749 = bitcast %union.FOURTH_UNION* %ou42748 to %struct.CONSTRAINT*
  %ofc2750 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2749, i32 0, i32 2
  store i32 %div2746, i32* %ofc2750, align 4
  %1062 = load %union.rec*, %union.rec** %z, align 8
  %os22751 = bitcast %union.rec* %1062 to %struct.closure_type*
  %ou42752 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22751, i32 0, i32 4
  %oconstraint2753 = bitcast %union.FOURTH_UNION* %ou42752 to %struct.CONSTRAINT*
  %obc2754 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2753, i32 0, i32 0
  store i32 %div2746, i32* %obc2754, align 4
  br label %if.end.2755

if.end.2755:                                      ; preds = %if.else.2733, %cond.end.2730
  br label %if.end.2756

if.end.2756:                                      ; preds = %if.end.2755, %if.then.2551
  br label %if.end.2757

if.end.2757:                                      ; preds = %if.end.2756, %if.then.2520
  br label %if.end.2758

if.end.2758:                                      ; preds = %if.end.2757, %if.then.2493
  %1063 = load %union.rec*, %union.rec** %t2410, align 8
  %os12759 = bitcast %union.rec* %1063 to %struct.word_type*
  %ou32760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12759, i32 0, i32 3
  %os312761 = bitcast %union.THIRD_UNION* %ou32760 to %struct.anon.6*
  %oback2762 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312761, i32 0, i32 0
  %arrayidx2763 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2762, i32 0, i64 0
  %1064 = load i32, i32* %arrayidx2763, align 4
  %1065 = load %union.rec*, %union.rec** %z, align 8
  %os22764 = bitcast %union.rec* %1065 to %struct.closure_type*
  %ou42765 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22764, i32 0, i32 4
  %oconstraint2766 = bitcast %union.FOURTH_UNION* %ou42765 to %struct.CONSTRAINT*
  %ofc2767 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2766, i32 0, i32 2
  %1066 = load i32, i32* %ofc2767, align 4
  %mul2768 = mul nsw i32 %1064, %1066
  %div2769 = sdiv i32 %mul2768, 128
  store i32 %div2769, i32* %b, align 4
  %1067 = load %union.rec*, %union.rec** %t2410, align 8
  %os12770 = bitcast %union.rec* %1067 to %struct.word_type*
  %ou32771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12770, i32 0, i32 3
  %os312772 = bitcast %union.THIRD_UNION* %ou32771 to %struct.anon.6*
  %ofwd2773 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312772, i32 0, i32 1
  %arrayidx2774 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2773, i32 0, i64 0
  %1068 = load i32, i32* %arrayidx2774, align 4
  %1069 = load %union.rec*, %union.rec** %z, align 8
  %os22775 = bitcast %union.rec* %1069 to %struct.closure_type*
  %ou42776 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22775, i32 0, i32 4
  %oconstraint2777 = bitcast %union.FOURTH_UNION* %ou42776 to %struct.CONSTRAINT*
  %ofc2778 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2777, i32 0, i32 2
  %1070 = load i32, i32* %ofc2778, align 4
  %mul2779 = mul nsw i32 %1068, %1070
  %div2780 = sdiv i32 %mul2779, 128
  store i32 %div2780, i32* %f, align 4
  %1071 = load %union.rec*, %union.rec** %z, align 8
  %1072 = load i32, i32* %b, align 4
  %1073 = load i32, i32* %f, align 4
  call void @AdjustSize(%union.rec* %1071, i32 %1072, i32 %1073, i32 0)
  %1074 = load %union.rec*, %union.rec** %z, align 8
  %os12781 = bitcast %union.rec* %1074 to %struct.word_type*
  %ou22782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12781, i32 0, i32 2
  %os232783 = bitcast %union.SECOND_UNION* %ou22782 to %struct.anon.2*
  %onon_blocking = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232783, i32 0, i32 2
  %bf.load2784 = load i16, i16* %onon_blocking, align 2
  %bf.clear2785 = and i16 %bf.load2784, 1
  %bf.cast2786 = zext i16 %bf.clear2785 to i32
  %tobool2787 = icmp ne i32 %bf.cast2786, 0
  br i1 %tobool2787, label %if.then.2788, label %if.end.2811

if.then.2788:                                     ; preds = %if.end.2758
  %1075 = load %union.rec*, %union.rec** %t2410, align 8
  %os12789 = bitcast %union.rec* %1075 to %struct.word_type*
  %ou32790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12789, i32 0, i32 3
  %os312791 = bitcast %union.THIRD_UNION* %ou32790 to %struct.anon.6*
  %oback2792 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312791, i32 0, i32 0
  %arrayidx2793 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2792, i32 0, i64 1
  %1076 = load i32, i32* %arrayidx2793, align 4
  %1077 = load %union.rec*, %union.rec** %z, align 8
  %os22794 = bitcast %union.rec* %1077 to %struct.closure_type*
  %ou42795 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22794, i32 0, i32 4
  %oconstraint2796 = bitcast %union.FOURTH_UNION* %ou42795 to %struct.CONSTRAINT*
  %ofc2797 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2796, i32 0, i32 2
  %1078 = load i32, i32* %ofc2797, align 4
  %mul2798 = mul nsw i32 %1076, %1078
  %div2799 = sdiv i32 %mul2798, 128
  store i32 %div2799, i32* %b, align 4
  %1079 = load %union.rec*, %union.rec** %t2410, align 8
  %os12800 = bitcast %union.rec* %1079 to %struct.word_type*
  %ou32801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12800, i32 0, i32 3
  %os312802 = bitcast %union.THIRD_UNION* %ou32801 to %struct.anon.6*
  %ofwd2803 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312802, i32 0, i32 1
  %arrayidx2804 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2803, i32 0, i64 1
  %1080 = load i32, i32* %arrayidx2804, align 4
  %1081 = load %union.rec*, %union.rec** %z, align 8
  %os22805 = bitcast %union.rec* %1081 to %struct.closure_type*
  %ou42806 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22805, i32 0, i32 4
  %oconstraint2807 = bitcast %union.FOURTH_UNION* %ou42806 to %struct.CONSTRAINT*
  %ofc2808 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2807, i32 0, i32 2
  %1082 = load i32, i32* %ofc2808, align 4
  %mul2809 = mul nsw i32 %1080, %1082
  %div2810 = sdiv i32 %mul2809, 128
  store i32 %div2810, i32* %f, align 4
  %1083 = load %union.rec*, %union.rec** %z, align 8
  %1084 = load i32, i32* %b, align 4
  %1085 = load i32, i32* %f, align 4
  call void @AdjustSize(%union.rec* %1083, i32 %1084, i32 %1085, i32 1)
  br label %if.end.2811

if.end.2811:                                      ; preds = %if.then.2788, %if.end.2758
  br label %if.end.2812

if.end.2812:                                      ; preds = %if.end.2811, %for.end.2399
  br label %for.inc.2813

for.inc.2813:                                     ; preds = %if.end.2812
  %1086 = load %union.rec*, %union.rec** %link, align 8
  %os12814 = bitcast %union.rec* %1086 to %struct.word_type*
  %olist2815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12814, i32 0, i32 0
  %arrayidx2816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2815, i32 0, i64 0
  %osucc2817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2816, i32 0, i32 1
  %1087 = load %union.rec*, %union.rec** %osucc2817, align 8
  store %union.rec* %1087, %union.rec** %link, align 8
  br label %for.cond.2377

for.end.2818:                                     ; preds = %for.cond.2377
  %1088 = load %union.rec*, %union.rec** %extras, align 8
  %call2819 = call i32 @DisposeObject(%union.rec* %1088)
  %1089 = load %union.rec**, %union.rec*** %dest_index.addr, align 8
  store %union.rec* null, %union.rec** %1089, align 8
  %1090 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* null, %union.rec** %1090, align 8
  %1091 = load %union.rec**, %union.rec*** %recs.addr, align 8
  store %union.rec* null, %union.rec** %1091, align 8
  store i32 0, i32* %after_target, align 4
  %1092 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12820 = bitcast %union.rec* %1092 to %struct.word_type*
  %olist2821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12820, i32 0, i32 0
  %arrayidx2822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2821, i32 0, i64 0
  %osucc2823 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2822, i32 0, i32 1
  %1093 = load %union.rec*, %union.rec** %osucc2823, align 8
  store %union.rec* %1093, %union.rec** %link, align 8
  br label %for.cond.2824

for.cond.2824:                                    ; preds = %for.inc.3917, %for.end.2818
  %1094 = load %union.rec*, %union.rec** %link, align 8
  %1095 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp2825 = icmp ne %union.rec* %1094, %1095
  br i1 %cmp2825, label %for.body.2827, label %for.end.3922

for.body.2827:                                    ; preds = %for.cond.2824
  %1096 = load %union.rec*, %union.rec** %link, align 8
  %os12828 = bitcast %union.rec* %1096 to %struct.word_type*
  %olist2829 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12828, i32 0, i32 0
  %arrayidx2830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2829, i32 0, i64 1
  %opred2831 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2830, i32 0, i32 0
  %1097 = load %union.rec*, %union.rec** %opred2831, align 8
  store %union.rec* %1097, %union.rec** %y, align 8
  br label %for.cond.2832

for.cond.2832:                                    ; preds = %for.inc.2841, %for.body.2827
  %1098 = load %union.rec*, %union.rec** %y, align 8
  %os12833 = bitcast %union.rec* %1098 to %struct.word_type*
  %ou12834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12833, i32 0, i32 1
  %os112835 = bitcast %union.FIRST_UNION* %ou12834 to %struct.anon*
  %otype2836 = getelementptr inbounds %struct.anon, %struct.anon* %os112835, i32 0, i32 0
  %1099 = load i8, i8* %otype2836, align 1
  %conv2837 = zext i8 %1099 to i32
  %cmp2838 = icmp eq i32 %conv2837, 0
  br i1 %cmp2838, label %for.body.2840, label %for.end.2846

for.body.2840:                                    ; preds = %for.cond.2832
  br label %for.inc.2841

for.inc.2841:                                     ; preds = %for.body.2840
  %1100 = load %union.rec*, %union.rec** %y, align 8
  %os12842 = bitcast %union.rec* %1100 to %struct.word_type*
  %olist2843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12842, i32 0, i32 0
  %arrayidx2844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2843, i32 0, i64 1
  %opred2845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2844, i32 0, i32 0
  %1101 = load %union.rec*, %union.rec** %opred2845, align 8
  store %union.rec* %1101, %union.rec** %y, align 8
  br label %for.cond.2832

for.end.2846:                                     ; preds = %for.cond.2832
  %1102 = load %union.rec*, %union.rec** %y, align 8
  %os12847 = bitcast %union.rec* %1102 to %struct.word_type*
  %ou12848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12847, i32 0, i32 1
  %os112849 = bitcast %union.FIRST_UNION* %ou12848 to %struct.anon*
  %otype2850 = getelementptr inbounds %struct.anon, %struct.anon* %os112849, i32 0, i32 0
  %1103 = load i8, i8* %otype2850, align 1
  %conv2851 = zext i8 %1103 to i32
  %cmp2852 = icmp eq i32 %conv2851, 1
  br i1 %cmp2852, label %if.then.2870, label %lor.lhs.false.2854

lor.lhs.false.2854:                               ; preds = %for.end.2846
  %1104 = load %union.rec*, %union.rec** %y, align 8
  %os12855 = bitcast %union.rec* %1104 to %struct.word_type*
  %ou12856 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12855, i32 0, i32 1
  %os112857 = bitcast %union.FIRST_UNION* %ou12856 to %struct.anon*
  %otype2858 = getelementptr inbounds %struct.anon, %struct.anon* %os112857, i32 0, i32 0
  %1105 = load i8, i8* %otype2858, align 1
  %conv2859 = zext i8 %1105 to i32
  %cmp2860 = icmp sge i32 %conv2859, 119
  br i1 %cmp2860, label %land.lhs.true.2862, label %if.end.2871

land.lhs.true.2862:                               ; preds = %lor.lhs.false.2854
  %1106 = load %union.rec*, %union.rec** %y, align 8
  %os12863 = bitcast %union.rec* %1106 to %struct.word_type*
  %ou12864 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12863, i32 0, i32 1
  %os112865 = bitcast %union.FIRST_UNION* %ou12864 to %struct.anon*
  %otype2866 = getelementptr inbounds %struct.anon, %struct.anon* %os112865, i32 0, i32 0
  %1107 = load i8, i8* %otype2866, align 1
  %conv2867 = zext i8 %1107 to i32
  %cmp2868 = icmp sle i32 %conv2867, 138
  br i1 %cmp2868, label %if.then.2870, label %if.end.2871

if.then.2870:                                     ; preds = %land.lhs.true.2862, %for.end.2846
  br label %for.inc.3917

if.end.2871:                                      ; preds = %land.lhs.true.2862, %lor.lhs.false.2854
  %1108 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv2872 = zext i8 %1108 to i32
  store i32 %conv2872, i32* @zz_size, align 4
  %conv2873 = sext i32 %conv2872 to i64
  %cmp2874 = icmp uge i64 %conv2873, 265
  br i1 %cmp2874, label %if.then.2876, label %if.else.2878

if.then.2876:                                     ; preds = %if.end.2871
  %1109 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2877 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1109)
  br label %if.end.2895

if.else.2878:                                     ; preds = %if.end.2871
  %1110 = load i32, i32* @zz_size, align 4
  %idxprom2879 = sext i32 %1110 to i64
  %arrayidx2880 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2879
  %1111 = load %union.rec*, %union.rec** %arrayidx2880, align 8
  %cmp2881 = icmp eq %union.rec* %1111, null
  br i1 %cmp2881, label %if.then.2883, label %if.else.2885

if.then.2883:                                     ; preds = %if.else.2878
  %1112 = load i32, i32* @zz_size, align 4
  %1113 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2884 = call %union.rec* @GetMemory(i32 %1112, %struct.FILE_POS* %1113)
  store %union.rec* %call2884, %union.rec** @zz_hold, align 8
  br label %if.end.2894

if.else.2885:                                     ; preds = %if.else.2878
  %1114 = load i32, i32* @zz_size, align 4
  %idxprom2886 = sext i32 %1114 to i64
  %arrayidx2887 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2886
  %1115 = load %union.rec*, %union.rec** %arrayidx2887, align 8
  store %union.rec* %1115, %union.rec** @zz_hold, align 8
  store %union.rec* %1115, %union.rec** @zz_hold, align 8
  %1116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12888 = bitcast %union.rec* %1116 to %struct.word_type*
  %olist2889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12888, i32 0, i32 0
  %arrayidx2890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2889, i32 0, i64 0
  %opred2891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2890, i32 0, i32 0
  %1117 = load %union.rec*, %union.rec** %opred2891, align 8
  %1118 = load i32, i32* @zz_size, align 4
  %idxprom2892 = sext i32 %1118 to i64
  %arrayidx2893 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2892
  store %union.rec* %1117, %union.rec** %arrayidx2893, align 8
  br label %if.end.2894

if.end.2894:                                      ; preds = %if.else.2885, %if.then.2883
  br label %if.end.2895

if.end.2895:                                      ; preds = %if.end.2894, %if.then.2876
  %1119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12896 = bitcast %union.rec* %1119 to %struct.word_type*
  %ou12897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12896, i32 0, i32 1
  %os112898 = bitcast %union.FIRST_UNION* %ou12897 to %struct.anon*
  %otype2899 = getelementptr inbounds %struct.anon, %struct.anon* %os112898, i32 0, i32 0
  store i8 17, i8* %otype2899, align 1
  %1120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12900 = bitcast %union.rec* %1121 to %struct.word_type*
  %olist2901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12900, i32 0, i32 0
  %arrayidx2902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2901, i32 0, i64 1
  %osucc2903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2902, i32 0, i32 1
  store %union.rec* %1120, %union.rec** %osucc2903, align 8
  %1122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12904 = bitcast %union.rec* %1122 to %struct.word_type*
  %olist2905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12904, i32 0, i32 0
  %arrayidx2906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2905, i32 0, i64 1
  %opred2907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2906, i32 0, i32 0
  store %union.rec* %1120, %union.rec** %opred2907, align 8
  %1123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12908 = bitcast %union.rec* %1123 to %struct.word_type*
  %olist2909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12908, i32 0, i32 0
  %arrayidx2910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2909, i32 0, i64 0
  %osucc2911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2910, i32 0, i32 1
  store %union.rec* %1120, %union.rec** %osucc2911, align 8
  %1124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12912 = bitcast %union.rec* %1124 to %struct.word_type*
  %olist2913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12912, i32 0, i32 0
  %arrayidx2914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2913, i32 0, i64 0
  %opred2915 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2914, i32 0, i32 0
  store %union.rec* %1120, %union.rec** %opred2915, align 8
  store %union.rec* %1120, %union.rec** %extras, align 8
  %1125 = load %union.rec*, %union.rec** %y, align 8
  %call2916 = call %union.rec* @MinSize(%union.rec* %1125, i32 1, %union.rec** %extras)
  store %union.rec* %call2916, %union.rec** %y, align 8
  %1126 = load %union.rec*, %union.rec** %extras, align 8
  %os12917 = bitcast %union.rec* %1126 to %struct.word_type*
  %olist2918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12917, i32 0, i32 0
  %arrayidx2919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2918, i32 0, i64 0
  %osucc2920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2919, i32 0, i32 1
  %1127 = load %union.rec*, %union.rec** %osucc2920, align 8
  store %union.rec* %1127, %union.rec** %zlink, align 8
  br label %for.cond.2921

for.cond.2921:                                    ; preds = %for.inc.3752, %if.end.2895
  %1128 = load %union.rec*, %union.rec** %zlink, align 8
  %1129 = load %union.rec*, %union.rec** %extras, align 8
  %cmp2922 = icmp ne %union.rec* %1128, %1129
  br i1 %cmp2922, label %for.body.2924, label %for.end.3757

for.body.2924:                                    ; preds = %for.cond.2921
  %1130 = load %union.rec*, %union.rec** %zlink, align 8
  %os12925 = bitcast %union.rec* %1130 to %struct.word_type*
  %olist2926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12925, i32 0, i32 0
  %arrayidx2927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2926, i32 0, i64 1
  %opred2928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2927, i32 0, i32 0
  %1131 = load %union.rec*, %union.rec** %opred2928, align 8
  store %union.rec* %1131, %union.rec** %z, align 8
  br label %for.cond.2929

for.cond.2929:                                    ; preds = %for.inc.2938, %for.body.2924
  %1132 = load %union.rec*, %union.rec** %z, align 8
  %os12930 = bitcast %union.rec* %1132 to %struct.word_type*
  %ou12931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12930, i32 0, i32 1
  %os112932 = bitcast %union.FIRST_UNION* %ou12931 to %struct.anon*
  %otype2933 = getelementptr inbounds %struct.anon, %struct.anon* %os112932, i32 0, i32 0
  %1133 = load i8, i8* %otype2933, align 1
  %conv2934 = zext i8 %1133 to i32
  %cmp2935 = icmp eq i32 %conv2934, 0
  br i1 %cmp2935, label %for.body.2937, label %for.end.2943

for.body.2937:                                    ; preds = %for.cond.2929
  br label %for.inc.2938

for.inc.2938:                                     ; preds = %for.body.2937
  %1134 = load %union.rec*, %union.rec** %z, align 8
  %os12939 = bitcast %union.rec* %1134 to %struct.word_type*
  %olist2940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12939, i32 0, i32 0
  %arrayidx2941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2940, i32 0, i64 1
  %opred2942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2941, i32 0, i32 0
  %1135 = load %union.rec*, %union.rec** %opred2942, align 8
  store %union.rec* %1135, %union.rec** %z, align 8
  br label %for.cond.2929

for.end.2943:                                     ; preds = %for.cond.2929
  %1136 = load %union.rec*, %union.rec** %z, align 8
  %os12944 = bitcast %union.rec* %1136 to %struct.word_type*
  %ou22945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12944, i32 0, i32 2
  %os232946 = bitcast %union.SECOND_UNION* %ou22945 to %struct.anon.2*
  %oblocked2947 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232946, i32 0, i32 2
  %bf.load2948 = load i16, i16* %oblocked2947, align 2
  %bf.clear2949 = and i16 %bf.load2948, -33
  store i16 %bf.clear2949, i16* %oblocked2947, align 2
  %1137 = load %union.rec*, %union.rec** %z, align 8
  %os12950 = bitcast %union.rec* %1137 to %struct.word_type*
  %ou12951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12950, i32 0, i32 1
  %os112952 = bitcast %union.FIRST_UNION* %ou12951 to %struct.anon*
  %otype2953 = getelementptr inbounds %struct.anon, %struct.anon* %os112952, i32 0, i32 0
  %1138 = load i8, i8* %otype2953, align 1
  %conv2954 = zext i8 %1138 to i32
  switch i32 %conv2954, label %sw.default.3743 [
    i32 121, label %sw.bb.2955
    i32 123, label %sw.bb.3020
    i32 120, label %sw.bb.3193
    i32 136, label %sw.bb.3369
    i32 138, label %sw.bb.3369
    i32 133, label %sw.bb.3369
    i32 129, label %sw.bb.3369
    i32 130, label %sw.bb.3369
    i32 132, label %sw.bb.3369
    i32 134, label %sw.bb.3369
    i32 127, label %sw.bb.3369
    i32 128, label %sw.bb.3369
    i32 131, label %sw.bb.3369
    i32 135, label %sw.bb.3369
    i32 137, label %sw.bb.3370
  ]

sw.bb.2955:                                       ; preds = %for.end.2943
  %1139 = load %union.rec*, %union.rec** %z, align 8
  %os22956 = bitcast %union.rec* %1139 to %struct.closure_type*
  %oactual2957 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22956, i32 0, i32 5
  %1140 = load %union.rec*, %union.rec** %oactual2957, align 8
  %os22958 = bitcast %union.rec* %1140 to %struct.closure_type*
  %oactual2959 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22958, i32 0, i32 5
  %1141 = load %union.rec*, %union.rec** %oactual2959, align 8
  %os12960 = bitcast %union.rec* %1141 to %struct.word_type*
  %ou22961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12960, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou22961 to %struct.anon.5*
  %ouses_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %1142 = bitcast [3 x i8]* %ouses_extern_target to i24*
  %bf.load2962 = load i24, i24* %1142, align 1
  %bf.lshr2963 = lshr i24 %bf.load2962, 11
  %bf.clear2964 = and i24 %bf.lshr2963, 1
  %bf.cast2965 = zext i24 %bf.clear2964 to i32
  %tobool2966 = icmp ne i32 %bf.cast2965, 0
  br i1 %tobool2966, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.2955
  %1143 = load i32, i32* %trig.addr, align 4
  %tobool2967 = icmp ne i32 %1143, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.2955
  %1144 = phi i1 [ false, %sw.bb.2955 ], [ %tobool2967, %land.rhs ]
  %land.ext = zext i1 %1144 to i32
  %1145 = load %union.rec*, %union.rec** %z, align 8
  %os12968 = bitcast %union.rec* %1145 to %struct.word_type*
  %ou22969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12968, i32 0, i32 2
  %os232970 = bitcast %union.SECOND_UNION* %ou22969 to %struct.anon.2*
  %otrigger_ext = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232970, i32 0, i32 2
  %1146 = trunc i32 %land.ext to i16
  %bf.load2971 = load i16, i16* %otrigger_ext, align 2
  %bf.value = and i16 %1146, 1
  %bf.shl = shl i16 %bf.value, 6
  %bf.clear2972 = and i16 %bf.load2971, -65
  %bf.set2973 = or i16 %bf.clear2972, %bf.shl
  store i16 %bf.set2973, i16* %otrigger_ext, align 2
  %bf.result.cast = zext i16 %bf.value to i32
  %1147 = load i32, i32* %nonblock.addr, align 4
  %1148 = load %union.rec*, %union.rec** %z, align 8
  %os12974 = bitcast %union.rec* %1148 to %struct.word_type*
  %ou22975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12974, i32 0, i32 2
  %os232976 = bitcast %union.SECOND_UNION* %ou22975 to %struct.anon.2*
  %onon_blocking2977 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232976, i32 0, i32 2
  %1149 = trunc i32 %1147 to i16
  %bf.load2978 = load i16, i16* %onon_blocking2977, align 2
  %bf.value2979 = and i16 %1149, 1
  %bf.clear2980 = and i16 %bf.load2978, -2
  %bf.set2981 = or i16 %bf.clear2980, %bf.value2979
  store i16 %bf.set2981, i16* %onon_blocking2977, align 2
  %bf.result.cast2982 = zext i16 %bf.value2979 to i32
  %1150 = load %union.rec*, %union.rec** %z, align 8
  %os22983 = bitcast %union.rec* %1150 to %struct.closure_type*
  %oactual2984 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22983, i32 0, i32 5
  %1151 = load %union.rec*, %union.rec** %oactual2984, align 8
  %os22985 = bitcast %union.rec* %1151 to %struct.closure_type*
  %oactual2986 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22985, i32 0, i32 5
  %1152 = load %union.rec*, %union.rec** %oactual2986, align 8
  %1153 = load %union.rec*, %union.rec** @GalleySym, align 8
  %cmp2987 = icmp eq %union.rec* %1152, %1153
  br i1 %cmp2987, label %if.then.2996, label %lor.lhs.false.2989

lor.lhs.false.2989:                               ; preds = %land.end
  %1154 = load %union.rec*, %union.rec** %z, align 8
  %os22990 = bitcast %union.rec* %1154 to %struct.closure_type*
  %oactual2991 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22990, i32 0, i32 5
  %1155 = load %union.rec*, %union.rec** %oactual2991, align 8
  %os22992 = bitcast %union.rec* %1155 to %struct.closure_type*
  %oactual2993 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22992, i32 0, i32 5
  %1156 = load %union.rec*, %union.rec** %oactual2993, align 8
  %1157 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %cmp2994 = icmp eq %union.rec* %1156, %1157
  br i1 %cmp2994, label %if.then.2996, label %if.end.2997

if.then.2996:                                     ; preds = %lor.lhs.false.2989, %land.end
  %1158 = load %union.rec*, %union.rec** %z, align 8
  %1159 = load %union.rec**, %union.rec*** %dest_index.addr, align 8
  store %union.rec* %1158, %union.rec** %1159, align 8
  br label %if.end.2997

if.end.2997:                                      ; preds = %if.then.2996, %lor.lhs.false.2989
  %1160 = load %union.rec*, %union.rec** %z, align 8
  %os22998 = bitcast %union.rec* %1160 to %struct.closure_type*
  %oactual2999 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22998, i32 0, i32 5
  %1161 = load %union.rec*, %union.rec** %oactual2999, align 8
  %os23000 = bitcast %union.rec* %1161 to %struct.closure_type*
  %oactual3001 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23000, i32 0, i32 5
  %1162 = load %union.rec*, %union.rec** %oactual3001, align 8
  %1163 = load %union.rec*, %union.rec** @GalleySym, align 8
  %cmp3002 = icmp eq %union.rec* %1162, %1163
  br i1 %cmp3002, label %if.then.3018, label %lor.lhs.false.3004

lor.lhs.false.3004:                               ; preds = %if.end.2997
  %1164 = load %union.rec*, %union.rec** %z, align 8
  %os23005 = bitcast %union.rec* %1164 to %struct.closure_type*
  %oactual3006 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23005, i32 0, i32 5
  %1165 = load %union.rec*, %union.rec** %oactual3006, align 8
  %os23007 = bitcast %union.rec* %1165 to %struct.closure_type*
  %oactual3008 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23007, i32 0, i32 5
  %1166 = load %union.rec*, %union.rec** %oactual3008, align 8
  %1167 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %cmp3009 = icmp eq %union.rec* %1166, %1167
  br i1 %cmp3009, label %if.then.3018, label %lor.lhs.false.3011

lor.lhs.false.3011:                               ; preds = %lor.lhs.false.3004
  %1168 = load %union.rec*, %union.rec** %z, align 8
  %os23012 = bitcast %union.rec* %1168 to %struct.closure_type*
  %oactual3013 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23012, i32 0, i32 5
  %1169 = load %union.rec*, %union.rec** %oactual3013, align 8
  %os23014 = bitcast %union.rec* %1169 to %struct.closure_type*
  %oactual3015 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23014, i32 0, i32 5
  %1170 = load %union.rec*, %union.rec** %oactual3015, align 8
  %1171 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp3016 = icmp eq %union.rec* %1170, %1171
  br i1 %cmp3016, label %if.then.3018, label %if.end.3019

if.then.3018:                                     ; preds = %lor.lhs.false.3011, %lor.lhs.false.3004, %if.end.2997
  store i32 1, i32* %after_target, align 4
  br label %if.end.3019

if.end.3019:                                      ; preds = %if.then.3018, %lor.lhs.false.3011
  br label %sw.epilog.3751

sw.bb.3020:                                       ; preds = %for.end.2943
  %1172 = load %union.rec**, %union.rec*** %recs.addr, align 8
  %1173 = load %union.rec*, %union.rec** %1172, align 8
  %cmp3021 = icmp eq %union.rec* %1173, null
  br i1 %cmp3021, label %if.then.3023, label %if.end.3068

if.then.3023:                                     ; preds = %sw.bb.3020
  %1174 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv3024 = zext i8 %1174 to i32
  store i32 %conv3024, i32* @zz_size, align 4
  %conv3025 = sext i32 %conv3024 to i64
  %cmp3026 = icmp uge i64 %conv3025, 265
  br i1 %cmp3026, label %if.then.3028, label %if.else.3030

if.then.3028:                                     ; preds = %if.then.3023
  %1175 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3029 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1175)
  br label %if.end.3047

if.else.3030:                                     ; preds = %if.then.3023
  %1176 = load i32, i32* @zz_size, align 4
  %idxprom3031 = sext i32 %1176 to i64
  %arrayidx3032 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3031
  %1177 = load %union.rec*, %union.rec** %arrayidx3032, align 8
  %cmp3033 = icmp eq %union.rec* %1177, null
  br i1 %cmp3033, label %if.then.3035, label %if.else.3037

if.then.3035:                                     ; preds = %if.else.3030
  %1178 = load i32, i32* @zz_size, align 4
  %1179 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3036 = call %union.rec* @GetMemory(i32 %1178, %struct.FILE_POS* %1179)
  store %union.rec* %call3036, %union.rec** @zz_hold, align 8
  br label %if.end.3046

if.else.3037:                                     ; preds = %if.else.3030
  %1180 = load i32, i32* @zz_size, align 4
  %idxprom3038 = sext i32 %1180 to i64
  %arrayidx3039 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3038
  %1181 = load %union.rec*, %union.rec** %arrayidx3039, align 8
  store %union.rec* %1181, %union.rec** @zz_hold, align 8
  store %union.rec* %1181, %union.rec** @zz_hold, align 8
  %1182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13040 = bitcast %union.rec* %1182 to %struct.word_type*
  %olist3041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13040, i32 0, i32 0
  %arrayidx3042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3041, i32 0, i64 0
  %opred3043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3042, i32 0, i32 0
  %1183 = load %union.rec*, %union.rec** %opred3043, align 8
  %1184 = load i32, i32* @zz_size, align 4
  %idxprom3044 = sext i32 %1184 to i64
  %arrayidx3045 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3044
  store %union.rec* %1183, %union.rec** %arrayidx3045, align 8
  br label %if.end.3046

if.end.3046:                                      ; preds = %if.else.3037, %if.then.3035
  br label %if.end.3047

if.end.3047:                                      ; preds = %if.end.3046, %if.then.3028
  %1185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13048 = bitcast %union.rec* %1185 to %struct.word_type*
  %ou13049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13048, i32 0, i32 1
  %os113050 = bitcast %union.FIRST_UNION* %ou13049 to %struct.anon*
  %otype3051 = getelementptr inbounds %struct.anon, %struct.anon* %os113050, i32 0, i32 0
  store i8 17, i8* %otype3051, align 1
  %1186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13052 = bitcast %union.rec* %1187 to %struct.word_type*
  %olist3053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13052, i32 0, i32 0
  %arrayidx3054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3053, i32 0, i64 1
  %osucc3055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3054, i32 0, i32 1
  store %union.rec* %1186, %union.rec** %osucc3055, align 8
  %1188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13056 = bitcast %union.rec* %1188 to %struct.word_type*
  %olist3057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13056, i32 0, i32 0
  %arrayidx3058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3057, i32 0, i64 1
  %opred3059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3058, i32 0, i32 0
  store %union.rec* %1186, %union.rec** %opred3059, align 8
  %1189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13060 = bitcast %union.rec* %1189 to %struct.word_type*
  %olist3061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13060, i32 0, i32 0
  %arrayidx3062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3061, i32 0, i64 0
  %osucc3063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3062, i32 0, i32 1
  store %union.rec* %1186, %union.rec** %osucc3063, align 8
  %1190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13064 = bitcast %union.rec* %1190 to %struct.word_type*
  %olist3065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13064, i32 0, i32 0
  %arrayidx3066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3065, i32 0, i64 0
  %opred3067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3066, i32 0, i32 0
  store %union.rec* %1186, %union.rec** %opred3067, align 8
  %1191 = load %union.rec**, %union.rec*** %recs.addr, align 8
  store %union.rec* %1186, %union.rec** %1191, align 8
  br label %if.end.3068

if.end.3068:                                      ; preds = %if.end.3047, %sw.bb.3020
  %1192 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3069 = zext i8 %1192 to i32
  store i32 %conv3069, i32* @zz_size, align 4
  %conv3070 = sext i32 %conv3069 to i64
  %cmp3071 = icmp uge i64 %conv3070, 265
  br i1 %cmp3071, label %if.then.3073, label %if.else.3075

if.then.3073:                                     ; preds = %if.end.3068
  %1193 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3074 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1193)
  br label %if.end.3092

if.else.3075:                                     ; preds = %if.end.3068
  %1194 = load i32, i32* @zz_size, align 4
  %idxprom3076 = sext i32 %1194 to i64
  %arrayidx3077 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3076
  %1195 = load %union.rec*, %union.rec** %arrayidx3077, align 8
  %cmp3078 = icmp eq %union.rec* %1195, null
  br i1 %cmp3078, label %if.then.3080, label %if.else.3082

if.then.3080:                                     ; preds = %if.else.3075
  %1196 = load i32, i32* @zz_size, align 4
  %1197 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3081 = call %union.rec* @GetMemory(i32 %1196, %struct.FILE_POS* %1197)
  store %union.rec* %call3081, %union.rec** @zz_hold, align 8
  br label %if.end.3091

if.else.3082:                                     ; preds = %if.else.3075
  %1198 = load i32, i32* @zz_size, align 4
  %idxprom3083 = sext i32 %1198 to i64
  %arrayidx3084 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3083
  %1199 = load %union.rec*, %union.rec** %arrayidx3084, align 8
  store %union.rec* %1199, %union.rec** @zz_hold, align 8
  store %union.rec* %1199, %union.rec** @zz_hold, align 8
  %1200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13085 = bitcast %union.rec* %1200 to %struct.word_type*
  %olist3086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13085, i32 0, i32 0
  %arrayidx3087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3086, i32 0, i64 0
  %opred3088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3087, i32 0, i32 0
  %1201 = load %union.rec*, %union.rec** %opred3088, align 8
  %1202 = load i32, i32* @zz_size, align 4
  %idxprom3089 = sext i32 %1202 to i64
  %arrayidx3090 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3089
  store %union.rec* %1201, %union.rec** %arrayidx3090, align 8
  br label %if.end.3091

if.end.3091:                                      ; preds = %if.else.3082, %if.then.3080
  br label %if.end.3092

if.end.3092:                                      ; preds = %if.end.3091, %if.then.3073
  %1203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13093 = bitcast %union.rec* %1203 to %struct.word_type*
  %ou13094 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13093, i32 0, i32 1
  %os113095 = bitcast %union.FIRST_UNION* %ou13094 to %struct.anon*
  %otype3096 = getelementptr inbounds %struct.anon, %struct.anon* %os113095, i32 0, i32 0
  store i8 0, i8* %otype3096, align 1
  %1204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13097 = bitcast %union.rec* %1205 to %struct.word_type*
  %olist3098 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13097, i32 0, i32 0
  %arrayidx3099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3098, i32 0, i64 1
  %osucc3100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3099, i32 0, i32 1
  store %union.rec* %1204, %union.rec** %osucc3100, align 8
  %1206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13101 = bitcast %union.rec* %1206 to %struct.word_type*
  %olist3102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13101, i32 0, i32 0
  %arrayidx3103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3102, i32 0, i64 1
  %opred3104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3103, i32 0, i32 0
  store %union.rec* %1204, %union.rec** %opred3104, align 8
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13105 = bitcast %union.rec* %1207 to %struct.word_type*
  %olist3106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13105, i32 0, i32 0
  %arrayidx3107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3106, i32 0, i64 0
  %osucc3108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3107, i32 0, i32 1
  store %union.rec* %1204, %union.rec** %osucc3108, align 8
  %1208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13109 = bitcast %union.rec* %1208 to %struct.word_type*
  %olist3110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13109, i32 0, i32 0
  %arrayidx3111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3110, i32 0, i64 0
  %opred3112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3111, i32 0, i32 0
  store %union.rec* %1204, %union.rec** %opred3112, align 8
  store %union.rec* %1204, %union.rec** @xx_link, align 8
  %1209 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1209, %union.rec** @zz_res, align 8
  %1210 = load %union.rec**, %union.rec*** %recs.addr, align 8
  %1211 = load %union.rec*, %union.rec** %1210, align 8
  store %union.rec* %1211, %union.rec** @zz_hold, align 8
  %1212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3113 = icmp eq %union.rec* %1212, null
  br i1 %cmp3113, label %cond.true.3115, label %cond.false.3116

cond.true.3115:                                   ; preds = %if.end.3092
  %1213 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3151

cond.false.3116:                                  ; preds = %if.end.3092
  %1214 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3117 = icmp eq %union.rec* %1214, null
  br i1 %cmp3117, label %cond.true.3119, label %cond.false.3120

cond.true.3119:                                   ; preds = %cond.false.3116
  %1215 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3149

cond.false.3120:                                  ; preds = %cond.false.3116
  %1216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13121 = bitcast %union.rec* %1216 to %struct.word_type*
  %olist3122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13121, i32 0, i32 0
  %arrayidx3123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3122, i32 0, i64 0
  %opred3124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3123, i32 0, i32 0
  %1217 = load %union.rec*, %union.rec** %opred3124, align 8
  store %union.rec* %1217, %union.rec** @zz_tmp, align 8
  %1218 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13125 = bitcast %union.rec* %1218 to %struct.word_type*
  %olist3126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13125, i32 0, i32 0
  %arrayidx3127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3126, i32 0, i64 0
  %opred3128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3127, i32 0, i32 0
  %1219 = load %union.rec*, %union.rec** %opred3128, align 8
  %1220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13129 = bitcast %union.rec* %1220 to %struct.word_type*
  %olist3130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13129, i32 0, i32 0
  %arrayidx3131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3130, i32 0, i64 0
  %opred3132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3131, i32 0, i32 0
  store %union.rec* %1219, %union.rec** %opred3132, align 8
  %1221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1222 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13133 = bitcast %union.rec* %1222 to %struct.word_type*
  %olist3134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13133, i32 0, i32 0
  %arrayidx3135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3134, i32 0, i64 0
  %opred3136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3135, i32 0, i32 0
  %1223 = load %union.rec*, %union.rec** %opred3136, align 8
  %os13137 = bitcast %union.rec* %1223 to %struct.word_type*
  %olist3138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13137, i32 0, i32 0
  %arrayidx3139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3138, i32 0, i64 0
  %osucc3140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3139, i32 0, i32 1
  store %union.rec* %1221, %union.rec** %osucc3140, align 8
  %1224 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1225 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13141 = bitcast %union.rec* %1225 to %struct.word_type*
  %olist3142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13141, i32 0, i32 0
  %arrayidx3143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3142, i32 0, i64 0
  %opred3144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3143, i32 0, i32 0
  store %union.rec* %1224, %union.rec** %opred3144, align 8
  %1226 = load %union.rec*, %union.rec** @zz_res, align 8
  %1227 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13145 = bitcast %union.rec* %1227 to %struct.word_type*
  %olist3146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13145, i32 0, i32 0
  %arrayidx3147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3146, i32 0, i64 0
  %osucc3148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3147, i32 0, i32 1
  store %union.rec* %1226, %union.rec** %osucc3148, align 8
  br label %cond.end.3149

cond.end.3149:                                    ; preds = %cond.false.3120, %cond.true.3119
  %cond3150 = phi %union.rec* [ %1215, %cond.true.3119 ], [ %1226, %cond.false.3120 ]
  br label %cond.end.3151

cond.end.3151:                                    ; preds = %cond.end.3149, %cond.true.3115
  %cond3152 = phi %union.rec* [ %1213, %cond.true.3115 ], [ %cond3150, %cond.end.3149 ]
  %1228 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1228, %union.rec** @zz_res, align 8
  %1229 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1229, %union.rec** @zz_hold, align 8
  %1230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3153 = icmp eq %union.rec* %1230, null
  br i1 %cmp3153, label %cond.true.3155, label %cond.false.3156

cond.true.3155:                                   ; preds = %cond.end.3151
  %1231 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3191

cond.false.3156:                                  ; preds = %cond.end.3151
  %1232 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3157 = icmp eq %union.rec* %1232, null
  br i1 %cmp3157, label %cond.true.3159, label %cond.false.3160

cond.true.3159:                                   ; preds = %cond.false.3156
  %1233 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3189

cond.false.3160:                                  ; preds = %cond.false.3156
  %1234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13161 = bitcast %union.rec* %1234 to %struct.word_type*
  %olist3162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13161, i32 0, i32 0
  %arrayidx3163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3162, i32 0, i64 1
  %opred3164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3163, i32 0, i32 0
  %1235 = load %union.rec*, %union.rec** %opred3164, align 8
  store %union.rec* %1235, %union.rec** @zz_tmp, align 8
  %1236 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13165 = bitcast %union.rec* %1236 to %struct.word_type*
  %olist3166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13165, i32 0, i32 0
  %arrayidx3167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3166, i32 0, i64 1
  %opred3168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3167, i32 0, i32 0
  %1237 = load %union.rec*, %union.rec** %opred3168, align 8
  %1238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13169 = bitcast %union.rec* %1238 to %struct.word_type*
  %olist3170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13169, i32 0, i32 0
  %arrayidx3171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3170, i32 0, i64 1
  %opred3172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3171, i32 0, i32 0
  store %union.rec* %1237, %union.rec** %opred3172, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1240 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13173 = bitcast %union.rec* %1240 to %struct.word_type*
  %olist3174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13173, i32 0, i32 0
  %arrayidx3175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3174, i32 0, i64 1
  %opred3176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3175, i32 0, i32 0
  %1241 = load %union.rec*, %union.rec** %opred3176, align 8
  %os13177 = bitcast %union.rec* %1241 to %struct.word_type*
  %olist3178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13177, i32 0, i32 0
  %arrayidx3179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3178, i32 0, i64 1
  %osucc3180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3179, i32 0, i32 1
  store %union.rec* %1239, %union.rec** %osucc3180, align 8
  %1242 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1243 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13181 = bitcast %union.rec* %1243 to %struct.word_type*
  %olist3182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13181, i32 0, i32 0
  %arrayidx3183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3182, i32 0, i64 1
  %opred3184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3183, i32 0, i32 0
  store %union.rec* %1242, %union.rec** %opred3184, align 8
  %1244 = load %union.rec*, %union.rec** @zz_res, align 8
  %1245 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13185 = bitcast %union.rec* %1245 to %struct.word_type*
  %olist3186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13185, i32 0, i32 0
  %arrayidx3187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3186, i32 0, i64 1
  %osucc3188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3187, i32 0, i32 1
  store %union.rec* %1244, %union.rec** %osucc3188, align 8
  br label %cond.end.3189

cond.end.3189:                                    ; preds = %cond.false.3160, %cond.true.3159
  %cond3190 = phi %union.rec* [ %1233, %cond.true.3159 ], [ %1244, %cond.false.3160 ]
  br label %cond.end.3191

cond.end.3191:                                    ; preds = %cond.end.3189, %cond.true.3155
  %cond3192 = phi %union.rec* [ %1231, %cond.true.3155 ], [ %cond3190, %cond.end.3189 ]
  br label %sw.epilog.3751

sw.bb.3193:                                       ; preds = %for.end.2943
  %1246 = load i32, i32* %after_target, align 4
  %tobool3194 = icmp ne i32 %1246, 0
  br i1 %tobool3194, label %if.end.3368, label %if.then.3195

if.then.3195:                                     ; preds = %sw.bb.3193
  %1247 = load %union.rec**, %union.rec*** %inners.addr, align 8
  %1248 = load %union.rec*, %union.rec** %1247, align 8
  %cmp3196 = icmp eq %union.rec* %1248, null
  br i1 %cmp3196, label %if.then.3198, label %if.end.3243

if.then.3198:                                     ; preds = %if.then.3195
  %1249 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv3199 = zext i8 %1249 to i32
  store i32 %conv3199, i32* @zz_size, align 4
  %conv3200 = sext i32 %conv3199 to i64
  %cmp3201 = icmp uge i64 %conv3200, 265
  br i1 %cmp3201, label %if.then.3203, label %if.else.3205

if.then.3203:                                     ; preds = %if.then.3198
  %1250 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3204 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1250)
  br label %if.end.3222

if.else.3205:                                     ; preds = %if.then.3198
  %1251 = load i32, i32* @zz_size, align 4
  %idxprom3206 = sext i32 %1251 to i64
  %arrayidx3207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3206
  %1252 = load %union.rec*, %union.rec** %arrayidx3207, align 8
  %cmp3208 = icmp eq %union.rec* %1252, null
  br i1 %cmp3208, label %if.then.3210, label %if.else.3212

if.then.3210:                                     ; preds = %if.else.3205
  %1253 = load i32, i32* @zz_size, align 4
  %1254 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3211 = call %union.rec* @GetMemory(i32 %1253, %struct.FILE_POS* %1254)
  store %union.rec* %call3211, %union.rec** @zz_hold, align 8
  br label %if.end.3221

if.else.3212:                                     ; preds = %if.else.3205
  %1255 = load i32, i32* @zz_size, align 4
  %idxprom3213 = sext i32 %1255 to i64
  %arrayidx3214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3213
  %1256 = load %union.rec*, %union.rec** %arrayidx3214, align 8
  store %union.rec* %1256, %union.rec** @zz_hold, align 8
  store %union.rec* %1256, %union.rec** @zz_hold, align 8
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13215 = bitcast %union.rec* %1257 to %struct.word_type*
  %olist3216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13215, i32 0, i32 0
  %arrayidx3217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3216, i32 0, i64 0
  %opred3218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3217, i32 0, i32 0
  %1258 = load %union.rec*, %union.rec** %opred3218, align 8
  %1259 = load i32, i32* @zz_size, align 4
  %idxprom3219 = sext i32 %1259 to i64
  %arrayidx3220 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3219
  store %union.rec* %1258, %union.rec** %arrayidx3220, align 8
  br label %if.end.3221

if.end.3221:                                      ; preds = %if.else.3212, %if.then.3210
  br label %if.end.3222

if.end.3222:                                      ; preds = %if.end.3221, %if.then.3203
  %1260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13223 = bitcast %union.rec* %1260 to %struct.word_type*
  %ou13224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13223, i32 0, i32 1
  %os113225 = bitcast %union.FIRST_UNION* %ou13224 to %struct.anon*
  %otype3226 = getelementptr inbounds %struct.anon, %struct.anon* %os113225, i32 0, i32 0
  store i8 17, i8* %otype3226, align 1
  %1261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13227 = bitcast %union.rec* %1262 to %struct.word_type*
  %olist3228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13227, i32 0, i32 0
  %arrayidx3229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3228, i32 0, i64 1
  %osucc3230 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3229, i32 0, i32 1
  store %union.rec* %1261, %union.rec** %osucc3230, align 8
  %1263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13231 = bitcast %union.rec* %1263 to %struct.word_type*
  %olist3232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13231, i32 0, i32 0
  %arrayidx3233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3232, i32 0, i64 1
  %opred3234 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3233, i32 0, i32 0
  store %union.rec* %1261, %union.rec** %opred3234, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13235 = bitcast %union.rec* %1264 to %struct.word_type*
  %olist3236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13235, i32 0, i32 0
  %arrayidx3237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3236, i32 0, i64 0
  %osucc3238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3237, i32 0, i32 1
  store %union.rec* %1261, %union.rec** %osucc3238, align 8
  %1265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13239 = bitcast %union.rec* %1265 to %struct.word_type*
  %olist3240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13239, i32 0, i32 0
  %arrayidx3241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3240, i32 0, i64 0
  %opred3242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3241, i32 0, i32 0
  store %union.rec* %1261, %union.rec** %opred3242, align 8
  %1266 = load %union.rec**, %union.rec*** %inners.addr, align 8
  store %union.rec* %1261, %union.rec** %1266, align 8
  br label %if.end.3243

if.end.3243:                                      ; preds = %if.end.3222, %if.then.3195
  %1267 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3244 = zext i8 %1267 to i32
  store i32 %conv3244, i32* @zz_size, align 4
  %conv3245 = sext i32 %conv3244 to i64
  %cmp3246 = icmp uge i64 %conv3245, 265
  br i1 %cmp3246, label %if.then.3248, label %if.else.3250

if.then.3248:                                     ; preds = %if.end.3243
  %1268 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3249 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1268)
  br label %if.end.3267

if.else.3250:                                     ; preds = %if.end.3243
  %1269 = load i32, i32* @zz_size, align 4
  %idxprom3251 = sext i32 %1269 to i64
  %arrayidx3252 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3251
  %1270 = load %union.rec*, %union.rec** %arrayidx3252, align 8
  %cmp3253 = icmp eq %union.rec* %1270, null
  br i1 %cmp3253, label %if.then.3255, label %if.else.3257

if.then.3255:                                     ; preds = %if.else.3250
  %1271 = load i32, i32* @zz_size, align 4
  %1272 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3256 = call %union.rec* @GetMemory(i32 %1271, %struct.FILE_POS* %1272)
  store %union.rec* %call3256, %union.rec** @zz_hold, align 8
  br label %if.end.3266

if.else.3257:                                     ; preds = %if.else.3250
  %1273 = load i32, i32* @zz_size, align 4
  %idxprom3258 = sext i32 %1273 to i64
  %arrayidx3259 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3258
  %1274 = load %union.rec*, %union.rec** %arrayidx3259, align 8
  store %union.rec* %1274, %union.rec** @zz_hold, align 8
  store %union.rec* %1274, %union.rec** @zz_hold, align 8
  %1275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13260 = bitcast %union.rec* %1275 to %struct.word_type*
  %olist3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13260, i32 0, i32 0
  %arrayidx3262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3261, i32 0, i64 0
  %opred3263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3262, i32 0, i32 0
  %1276 = load %union.rec*, %union.rec** %opred3263, align 8
  %1277 = load i32, i32* @zz_size, align 4
  %idxprom3264 = sext i32 %1277 to i64
  %arrayidx3265 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3264
  store %union.rec* %1276, %union.rec** %arrayidx3265, align 8
  br label %if.end.3266

if.end.3266:                                      ; preds = %if.else.3257, %if.then.3255
  br label %if.end.3267

if.end.3267:                                      ; preds = %if.end.3266, %if.then.3248
  %1278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13268 = bitcast %union.rec* %1278 to %struct.word_type*
  %ou13269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13268, i32 0, i32 1
  %os113270 = bitcast %union.FIRST_UNION* %ou13269 to %struct.anon*
  %otype3271 = getelementptr inbounds %struct.anon, %struct.anon* %os113270, i32 0, i32 0
  store i8 0, i8* %otype3271, align 1
  %1279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13272 = bitcast %union.rec* %1280 to %struct.word_type*
  %olist3273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13272, i32 0, i32 0
  %arrayidx3274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3273, i32 0, i64 1
  %osucc3275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3274, i32 0, i32 1
  store %union.rec* %1279, %union.rec** %osucc3275, align 8
  %1281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13276 = bitcast %union.rec* %1281 to %struct.word_type*
  %olist3277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13276, i32 0, i32 0
  %arrayidx3278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3277, i32 0, i64 1
  %opred3279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3278, i32 0, i32 0
  store %union.rec* %1279, %union.rec** %opred3279, align 8
  %1282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13280 = bitcast %union.rec* %1282 to %struct.word_type*
  %olist3281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13280, i32 0, i32 0
  %arrayidx3282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3281, i32 0, i64 0
  %osucc3283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3282, i32 0, i32 1
  store %union.rec* %1279, %union.rec** %osucc3283, align 8
  %1283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13284 = bitcast %union.rec* %1283 to %struct.word_type*
  %olist3285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13284, i32 0, i32 0
  %arrayidx3286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3285, i32 0, i64 0
  %opred3287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3286, i32 0, i32 0
  store %union.rec* %1279, %union.rec** %opred3287, align 8
  store %union.rec* %1279, %union.rec** @xx_link, align 8
  %1284 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1284, %union.rec** @zz_res, align 8
  %1285 = load %union.rec**, %union.rec*** %inners.addr, align 8
  %1286 = load %union.rec*, %union.rec** %1285, align 8
  store %union.rec* %1286, %union.rec** @zz_hold, align 8
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3288 = icmp eq %union.rec* %1287, null
  br i1 %cmp3288, label %cond.true.3290, label %cond.false.3291

cond.true.3290:                                   ; preds = %if.end.3267
  %1288 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3326

cond.false.3291:                                  ; preds = %if.end.3267
  %1289 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3292 = icmp eq %union.rec* %1289, null
  br i1 %cmp3292, label %cond.true.3294, label %cond.false.3295

cond.true.3294:                                   ; preds = %cond.false.3291
  %1290 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3324

cond.false.3295:                                  ; preds = %cond.false.3291
  %1291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13296 = bitcast %union.rec* %1291 to %struct.word_type*
  %olist3297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13296, i32 0, i32 0
  %arrayidx3298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3297, i32 0, i64 0
  %opred3299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3298, i32 0, i32 0
  %1292 = load %union.rec*, %union.rec** %opred3299, align 8
  store %union.rec* %1292, %union.rec** @zz_tmp, align 8
  %1293 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13300 = bitcast %union.rec* %1293 to %struct.word_type*
  %olist3301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13300, i32 0, i32 0
  %arrayidx3302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3301, i32 0, i64 0
  %opred3303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3302, i32 0, i32 0
  %1294 = load %union.rec*, %union.rec** %opred3303, align 8
  %1295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13304 = bitcast %union.rec* %1295 to %struct.word_type*
  %olist3305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13304, i32 0, i32 0
  %arrayidx3306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3305, i32 0, i64 0
  %opred3307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3306, i32 0, i32 0
  store %union.rec* %1294, %union.rec** %opred3307, align 8
  %1296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1297 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13308 = bitcast %union.rec* %1297 to %struct.word_type*
  %olist3309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13308, i32 0, i32 0
  %arrayidx3310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3309, i32 0, i64 0
  %opred3311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3310, i32 0, i32 0
  %1298 = load %union.rec*, %union.rec** %opred3311, align 8
  %os13312 = bitcast %union.rec* %1298 to %struct.word_type*
  %olist3313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13312, i32 0, i32 0
  %arrayidx3314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3313, i32 0, i64 0
  %osucc3315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3314, i32 0, i32 1
  store %union.rec* %1296, %union.rec** %osucc3315, align 8
  %1299 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1300 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13316 = bitcast %union.rec* %1300 to %struct.word_type*
  %olist3317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13316, i32 0, i32 0
  %arrayidx3318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3317, i32 0, i64 0
  %opred3319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3318, i32 0, i32 0
  store %union.rec* %1299, %union.rec** %opred3319, align 8
  %1301 = load %union.rec*, %union.rec** @zz_res, align 8
  %1302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13320 = bitcast %union.rec* %1302 to %struct.word_type*
  %olist3321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13320, i32 0, i32 0
  %arrayidx3322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3321, i32 0, i64 0
  %osucc3323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3322, i32 0, i32 1
  store %union.rec* %1301, %union.rec** %osucc3323, align 8
  br label %cond.end.3324

cond.end.3324:                                    ; preds = %cond.false.3295, %cond.true.3294
  %cond3325 = phi %union.rec* [ %1290, %cond.true.3294 ], [ %1301, %cond.false.3295 ]
  br label %cond.end.3326

cond.end.3326:                                    ; preds = %cond.end.3324, %cond.true.3290
  %cond3327 = phi %union.rec* [ %1288, %cond.true.3290 ], [ %cond3325, %cond.end.3324 ]
  %1303 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1303, %union.rec** @zz_res, align 8
  %1304 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %1304, %union.rec** @zz_hold, align 8
  %1305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3328 = icmp eq %union.rec* %1305, null
  br i1 %cmp3328, label %cond.true.3330, label %cond.false.3331

cond.true.3330:                                   ; preds = %cond.end.3326
  %1306 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3366

cond.false.3331:                                  ; preds = %cond.end.3326
  %1307 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3332 = icmp eq %union.rec* %1307, null
  br i1 %cmp3332, label %cond.true.3334, label %cond.false.3335

cond.true.3334:                                   ; preds = %cond.false.3331
  %1308 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3364

cond.false.3335:                                  ; preds = %cond.false.3331
  %1309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13336 = bitcast %union.rec* %1309 to %struct.word_type*
  %olist3337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13336, i32 0, i32 0
  %arrayidx3338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3337, i32 0, i64 1
  %opred3339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3338, i32 0, i32 0
  %1310 = load %union.rec*, %union.rec** %opred3339, align 8
  store %union.rec* %1310, %union.rec** @zz_tmp, align 8
  %1311 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13340 = bitcast %union.rec* %1311 to %struct.word_type*
  %olist3341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13340, i32 0, i32 0
  %arrayidx3342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3341, i32 0, i64 1
  %opred3343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3342, i32 0, i32 0
  %1312 = load %union.rec*, %union.rec** %opred3343, align 8
  %1313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13344 = bitcast %union.rec* %1313 to %struct.word_type*
  %olist3345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13344, i32 0, i32 0
  %arrayidx3346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3345, i32 0, i64 1
  %opred3347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3346, i32 0, i32 0
  store %union.rec* %1312, %union.rec** %opred3347, align 8
  %1314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1315 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13348 = bitcast %union.rec* %1315 to %struct.word_type*
  %olist3349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13348, i32 0, i32 0
  %arrayidx3350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3349, i32 0, i64 1
  %opred3351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3350, i32 0, i32 0
  %1316 = load %union.rec*, %union.rec** %opred3351, align 8
  %os13352 = bitcast %union.rec* %1316 to %struct.word_type*
  %olist3353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13352, i32 0, i32 0
  %arrayidx3354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3353, i32 0, i64 1
  %osucc3355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3354, i32 0, i32 1
  store %union.rec* %1314, %union.rec** %osucc3355, align 8
  %1317 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1318 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13356 = bitcast %union.rec* %1318 to %struct.word_type*
  %olist3357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13356, i32 0, i32 0
  %arrayidx3358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3357, i32 0, i64 1
  %opred3359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3358, i32 0, i32 0
  store %union.rec* %1317, %union.rec** %opred3359, align 8
  %1319 = load %union.rec*, %union.rec** @zz_res, align 8
  %1320 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13360 = bitcast %union.rec* %1320 to %struct.word_type*
  %olist3361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13360, i32 0, i32 0
  %arrayidx3362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3361, i32 0, i64 1
  %osucc3363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3362, i32 0, i32 1
  store %union.rec* %1319, %union.rec** %osucc3363, align 8
  br label %cond.end.3364

cond.end.3364:                                    ; preds = %cond.false.3335, %cond.true.3334
  %cond3365 = phi %union.rec* [ %1308, %cond.true.3334 ], [ %1319, %cond.false.3335 ]
  br label %cond.end.3366

cond.end.3366:                                    ; preds = %cond.end.3364, %cond.true.3330
  %cond3367 = phi %union.rec* [ %1306, %cond.true.3330 ], [ %cond3365, %cond.end.3364 ]
  br label %if.end.3368

if.end.3368:                                      ; preds = %cond.end.3366, %sw.bb.3193
  br label %sw.epilog.3751

sw.bb.3369:                                       ; preds = %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943, %for.end.2943
  br label %sw.epilog.3751

sw.bb.3370:                                       ; preds = %for.end.2943
  %1321 = load %union.rec*, %union.rec** %z, align 8
  %os23389 = bitcast %union.rec* %1321 to %struct.closure_type*
  %oactual3390 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23389, i32 0, i32 5
  %1322 = load %union.rec*, %union.rec** %oactual3390, align 8
  store %union.rec* %1322, %union.rec** %cover, align 8
  %1323 = load %union.rec*, %union.rec** %cover, align 8
  %os13391 = bitcast %union.rec* %1323 to %struct.word_type*
  %ou13392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13391, i32 0, i32 1
  %os113393 = bitcast %union.FIRST_UNION* %ou13392 to %struct.anon*
  %otype3394 = getelementptr inbounds %struct.anon, %struct.anon* %os113393, i32 0, i32 0
  %1324 = load i8, i8* %otype3394, align 1
  %conv3395 = zext i8 %1324 to i32
  %cmp3396 = icmp eq i32 %conv3395, 32
  br i1 %cmp3396, label %if.then.3398, label %if.else.3399

if.then.3398:                                     ; preds = %sw.bb.3370
  store i32 0, i32* %dirn, align 4
  store i32 16, i32* %thr_type, align 4
  store i32 19, i32* %ok1, align 4
  store i32 19, i32* %ok2, align 4
  store i32 30, i32* %subst, align 4
  store i32 24, i32* %esubst, align 4
  br label %if.end.3400

if.else.3399:                                     ; preds = %sw.bb.3370
  store i32 1, i32* %dirn, align 4
  store i32 15, i32* %thr_type, align 4
  store i32 17, i32* %ok1, align 4
  store i32 18, i32* %ok2, align 4
  store i32 31, i32* %subst, align 4
  store i32 25, i32* %esubst, align 4
  br label %if.end.3400

if.end.3400:                                      ; preds = %if.else.3399, %if.then.3398
  %1325 = load i32, i32* %dirn, align 4
  %cmp3401 = icmp eq i32 %1325, 0
  br i1 %cmp3401, label %cond.true.3403, label %cond.false.3408

cond.true.3403:                                   ; preds = %if.end.3400
  %1326 = load %union.rec*, %union.rec** %cover, align 8
  %os13404 = bitcast %union.rec* %1326 to %struct.word_type*
  %olist3405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13404, i32 0, i32 0
  %arrayidx3406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3405, i32 0, i64 1
  %osucc3407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3406, i32 0, i32 1
  %1327 = load %union.rec*, %union.rec** %osucc3407, align 8
  br label %cond.end.3413

cond.false.3408:                                  ; preds = %if.end.3400
  %1328 = load %union.rec*, %union.rec** %cover, align 8
  %os13409 = bitcast %union.rec* %1328 to %struct.word_type*
  %olist3410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13409, i32 0, i32 0
  %arrayidx3411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3410, i32 0, i64 1
  %opred3412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3411, i32 0, i32 0
  %1329 = load %union.rec*, %union.rec** %opred3412, align 8
  br label %cond.end.3413

cond.end.3413:                                    ; preds = %cond.false.3408, %cond.true.3403
  %cond3414 = phi %union.rec* [ %1327, %cond.true.3403 ], [ %1329, %cond.false.3408 ]
  %os13415 = bitcast %union.rec* %cond3414 to %struct.word_type*
  %olist3416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13415, i32 0, i32 0
  %arrayidx3417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3416, i32 0, i64 0
  %opred3418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3417, i32 0, i32 0
  %1330 = load %union.rec*, %union.rec** %opred3418, align 8
  store %union.rec* %1330, %union.rec** %prnt, align 8
  br label %for.cond.3419

for.cond.3419:                                    ; preds = %for.inc.3428, %cond.end.3413
  %1331 = load %union.rec*, %union.rec** %prnt, align 8
  %os13420 = bitcast %union.rec* %1331 to %struct.word_type*
  %ou13421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13420, i32 0, i32 1
  %os113422 = bitcast %union.FIRST_UNION* %ou13421 to %struct.anon*
  %otype3423 = getelementptr inbounds %struct.anon, %struct.anon* %os113422, i32 0, i32 0
  %1332 = load i8, i8* %otype3423, align 1
  %conv3424 = zext i8 %1332 to i32
  %cmp3425 = icmp eq i32 %conv3424, 0
  br i1 %cmp3425, label %for.body.3427, label %for.end.3433

for.body.3427:                                    ; preds = %for.cond.3419
  br label %for.inc.3428

for.inc.3428:                                     ; preds = %for.body.3427
  %1333 = load %union.rec*, %union.rec** %prnt, align 8
  %os13429 = bitcast %union.rec* %1333 to %struct.word_type*
  %olist3430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13429, i32 0, i32 0
  %arrayidx3431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3430, i32 0, i64 0
  %opred3432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3431, i32 0, i32 0
  %1334 = load %union.rec*, %union.rec** %opred3432, align 8
  store %union.rec* %1334, %union.rec** %prnt, align 8
  br label %for.cond.3419

for.end.3433:                                     ; preds = %for.cond.3419
  br label %while.cond

while.cond:                                       ; preds = %for.end.3480, %for.end.3433
  %1335 = load %union.rec*, %union.rec** %prnt, align 8
  %os13434 = bitcast %union.rec* %1335 to %struct.word_type*
  %ou13435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13434, i32 0, i32 1
  %os113436 = bitcast %union.FIRST_UNION* %ou13435 to %struct.anon*
  %otype3437 = getelementptr inbounds %struct.anon, %struct.anon* %os113436, i32 0, i32 0
  %1336 = load i8, i8* %otype3437, align 1
  %conv3438 = zext i8 %1336 to i32
  %cmp3439 = icmp eq i32 %conv3438, 9
  br i1 %cmp3439, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1337 = load %union.rec*, %union.rec** %prnt, align 8
  %os13441 = bitcast %union.rec* %1337 to %struct.word_type*
  %ou13442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13441, i32 0, i32 1
  %os113443 = bitcast %union.FIRST_UNION* %ou13442 to %struct.anon*
  %otype3444 = getelementptr inbounds %struct.anon, %struct.anon* %os113443, i32 0, i32 0
  %1338 = load i8, i8* %otype3444, align 1
  %conv3445 = zext i8 %1338 to i32
  %1339 = load i32, i32* %thr_type, align 4
  %cmp3446 = icmp eq i32 %conv3445, %1339
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %1340 = phi i1 [ true, %while.cond ], [ %cmp3446, %lor.rhs ]
  br i1 %1340, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %1341 = load i32, i32* %dirn, align 4
  %cmp3448 = icmp eq i32 %1341, 0
  br i1 %cmp3448, label %cond.true.3450, label %cond.false.3455

cond.true.3450:                                   ; preds = %while.body
  %1342 = load %union.rec*, %union.rec** %prnt, align 8
  %os13451 = bitcast %union.rec* %1342 to %struct.word_type*
  %olist3452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13451, i32 0, i32 0
  %arrayidx3453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3452, i32 0, i64 1
  %osucc3454 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3453, i32 0, i32 1
  %1343 = load %union.rec*, %union.rec** %osucc3454, align 8
  br label %cond.end.3460

cond.false.3455:                                  ; preds = %while.body
  %1344 = load %union.rec*, %union.rec** %prnt, align 8
  %os13456 = bitcast %union.rec* %1344 to %struct.word_type*
  %olist3457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13456, i32 0, i32 0
  %arrayidx3458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3457, i32 0, i64 1
  %opred3459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3458, i32 0, i32 0
  %1345 = load %union.rec*, %union.rec** %opred3459, align 8
  br label %cond.end.3460

cond.end.3460:                                    ; preds = %cond.false.3455, %cond.true.3450
  %cond3461 = phi %union.rec* [ %1343, %cond.true.3450 ], [ %1345, %cond.false.3455 ]
  %os13462 = bitcast %union.rec* %cond3461 to %struct.word_type*
  %olist3463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13462, i32 0, i32 0
  %arrayidx3464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3463, i32 0, i64 0
  %opred3465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3464, i32 0, i32 0
  %1346 = load %union.rec*, %union.rec** %opred3465, align 8
  store %union.rec* %1346, %union.rec** %prnt, align 8
  br label %for.cond.3466

for.cond.3466:                                    ; preds = %for.inc.3475, %cond.end.3460
  %1347 = load %union.rec*, %union.rec** %prnt, align 8
  %os13467 = bitcast %union.rec* %1347 to %struct.word_type*
  %ou13468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13467, i32 0, i32 1
  %os113469 = bitcast %union.FIRST_UNION* %ou13468 to %struct.anon*
  %otype3470 = getelementptr inbounds %struct.anon, %struct.anon* %os113469, i32 0, i32 0
  %1348 = load i8, i8* %otype3470, align 1
  %conv3471 = zext i8 %1348 to i32
  %cmp3472 = icmp eq i32 %conv3471, 0
  br i1 %cmp3472, label %for.body.3474, label %for.end.3480

for.body.3474:                                    ; preds = %for.cond.3466
  br label %for.inc.3475

for.inc.3475:                                     ; preds = %for.body.3474
  %1349 = load %union.rec*, %union.rec** %prnt, align 8
  %os13476 = bitcast %union.rec* %1349 to %struct.word_type*
  %olist3477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13476, i32 0, i32 0
  %arrayidx3478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3477, i32 0, i64 0
  %opred3479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3478, i32 0, i32 0
  %1350 = load %union.rec*, %union.rec** %opred3479, align 8
  store %union.rec* %1350, %union.rec** %prnt, align 8
  br label %for.cond.3466

for.end.3480:                                     ; preds = %for.cond.3466
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %1351 = load %union.rec*, %union.rec** %cover, align 8
  %os13481 = bitcast %union.rec* %1351 to %struct.word_type*
  %olist3482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13481, i32 0, i32 0
  %arrayidx3483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3482, i32 0, i64 0
  %osucc3484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3483, i32 0, i32 1
  %1352 = load %union.rec*, %union.rec** %osucc3484, align 8
  %os13485 = bitcast %union.rec* %1352 to %struct.word_type*
  %olist3486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13485, i32 0, i32 0
  %arrayidx3487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3486, i32 0, i64 1
  %opred3488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3487, i32 0, i32 0
  %1353 = load %union.rec*, %union.rec** %opred3488, align 8
  store %union.rec* %1353, %union.rec** %chld, align 8
  br label %for.cond.3489

for.cond.3489:                                    ; preds = %for.inc.3498, %while.end
  %1354 = load %union.rec*, %union.rec** %chld, align 8
  %os13490 = bitcast %union.rec* %1354 to %struct.word_type*
  %ou13491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13490, i32 0, i32 1
  %os113492 = bitcast %union.FIRST_UNION* %ou13491 to %struct.anon*
  %otype3493 = getelementptr inbounds %struct.anon, %struct.anon* %os113492, i32 0, i32 0
  %1355 = load i8, i8* %otype3493, align 1
  %conv3494 = zext i8 %1355 to i32
  %cmp3495 = icmp eq i32 %conv3494, 0
  br i1 %cmp3495, label %for.body.3497, label %for.end.3503

for.body.3497:                                    ; preds = %for.cond.3489
  br label %for.inc.3498

for.inc.3498:                                     ; preds = %for.body.3497
  %1356 = load %union.rec*, %union.rec** %chld, align 8
  %os13499 = bitcast %union.rec* %1356 to %struct.word_type*
  %olist3500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13499, i32 0, i32 0
  %arrayidx3501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3500, i32 0, i64 1
  %opred3502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3501, i32 0, i32 0
  %1357 = load %union.rec*, %union.rec** %opred3502, align 8
  store %union.rec* %1357, %union.rec** %chld, align 8
  br label %for.cond.3489

for.end.3503:                                     ; preds = %for.cond.3489
  %1358 = load %union.rec*, %union.rec** %prnt, align 8
  %os13504 = bitcast %union.rec* %1358 to %struct.word_type*
  %ou13505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13504, i32 0, i32 1
  %os113506 = bitcast %union.FIRST_UNION* %ou13505 to %struct.anon*
  %otype3507 = getelementptr inbounds %struct.anon, %struct.anon* %os113506, i32 0, i32 0
  %1359 = load i8, i8* %otype3507, align 1
  %conv3508 = zext i8 %1359 to i32
  %1360 = load i32, i32* %ok1, align 4
  %cmp3509 = icmp ne i32 %conv3508, %1360
  br i1 %cmp3509, label %land.lhs.true.3511, label %if.else.3536

land.lhs.true.3511:                               ; preds = %for.end.3503
  %1361 = load %union.rec*, %union.rec** %prnt, align 8
  %os13512 = bitcast %union.rec* %1361 to %struct.word_type*
  %ou13513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13512, i32 0, i32 1
  %os113514 = bitcast %union.FIRST_UNION* %ou13513 to %struct.anon*
  %otype3515 = getelementptr inbounds %struct.anon, %struct.anon* %os113514, i32 0, i32 0
  %1362 = load i8, i8* %otype3515, align 1
  %conv3516 = zext i8 %1362 to i32
  %1363 = load i32, i32* %ok2, align 4
  %cmp3517 = icmp ne i32 %conv3516, %1363
  br i1 %cmp3517, label %if.then.3519, label %if.else.3536

if.then.3519:                                     ; preds = %land.lhs.true.3511
  %1364 = load %union.rec*, %union.rec** %cover, align 8
  %os13520 = bitcast %union.rec* %1364 to %struct.word_type*
  %ou13521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13520, i32 0, i32 1
  %ofpos3522 = bitcast %union.FIRST_UNION* %ou13521 to %struct.FILE_POS*
  %1365 = load %union.rec*, %union.rec** %cover, align 8
  %os13523 = bitcast %union.rec* %1365 to %struct.word_type*
  %ou13524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13523, i32 0, i32 1
  %os113525 = bitcast %union.FIRST_UNION* %ou13524 to %struct.anon*
  %otype3526 = getelementptr inbounds %struct.anon, %struct.anon* %os113525, i32 0, i32 0
  %1366 = load i8, i8* %otype3526, align 1
  %conv3527 = zext i8 %1366 to i32
  %call3528 = call i8* @Image(i32 %conv3527)
  %1367 = load i32, i32* %subst, align 4
  %call3529 = call i8* @Image(i32 %1367)
  %call3530 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3522, i8* %call3528, i8* %call3529)
  %1368 = load i32, i32* %subst, align 4
  %conv3531 = trunc i32 %1368 to i8
  %1369 = load %union.rec*, %union.rec** %cover, align 8
  %os13532 = bitcast %union.rec* %1369 to %struct.word_type*
  %ou13533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13532, i32 0, i32 1
  %os113534 = bitcast %union.FIRST_UNION* %ou13533 to %struct.anon*
  %otype3535 = getelementptr inbounds %struct.anon, %struct.anon* %os113534, i32 0, i32 0
  store i8 %conv3531, i8* %otype3535, align 1
  br label %if.end.3742

if.else.3536:                                     ; preds = %land.lhs.true.3511, %for.end.3503
  %1370 = load i32, i32* %dirn, align 4
  %idxprom3537 = sext i32 %1370 to i64
  %1371 = load %union.rec*, %union.rec** %chld, align 8
  %os13538 = bitcast %union.rec* %1371 to %struct.word_type*
  %ou33539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13538, i32 0, i32 3
  %os313540 = bitcast %union.THIRD_UNION* %ou33539 to %struct.anon.6*
  %oback3541 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313540, i32 0, i32 0
  %arrayidx3542 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3541, i32 0, i64 %idxprom3537
  %1372 = load i32, i32* %arrayidx3542, align 4
  %cmp3543 = icmp eq i32 %1372, 0
  br i1 %cmp3543, label %land.lhs.true.3545, label %if.else.3560

land.lhs.true.3545:                               ; preds = %if.else.3536
  %1373 = load i32, i32* %dirn, align 4
  %idxprom3546 = sext i32 %1373 to i64
  %1374 = load %union.rec*, %union.rec** %chld, align 8
  %os13547 = bitcast %union.rec* %1374 to %struct.word_type*
  %ou33548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13547, i32 0, i32 3
  %os313549 = bitcast %union.THIRD_UNION* %ou33548 to %struct.anon.6*
  %ofwd3550 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313549, i32 0, i32 1
  %arrayidx3551 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3550, i32 0, i64 %idxprom3546
  %1375 = load i32, i32* %arrayidx3551, align 4
  %cmp3552 = icmp eq i32 %1375, 0
  br i1 %cmp3552, label %if.then.3554, label %if.else.3560

if.then.3554:                                     ; preds = %land.lhs.true.3545
  %1376 = load i32, i32* %esubst, align 4
  %conv3555 = trunc i32 %1376 to i8
  %1377 = load %union.rec*, %union.rec** %cover, align 8
  %os13556 = bitcast %union.rec* %1377 to %struct.word_type*
  %ou13557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13556, i32 0, i32 1
  %os113558 = bitcast %union.FIRST_UNION* %ou13557 to %struct.anon*
  %otype3559 = getelementptr inbounds %struct.anon, %struct.anon* %os113558, i32 0, i32 0
  store i8 %conv3555, i8* %otype3559, align 1
  br label %if.end.3741

if.else.3560:                                     ; preds = %land.lhs.true.3545, %if.else.3536
  %1378 = load i32, i32* %dirn, align 4
  %idxprom3561 = sext i32 %1378 to i64
  %1379 = load %union.rec*, %union.rec** %chld, align 8
  %os13562 = bitcast %union.rec* %1379 to %struct.word_type*
  %ou33563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13562, i32 0, i32 3
  %os313564 = bitcast %union.THIRD_UNION* %ou33563 to %struct.anon.6*
  %oback3565 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313564, i32 0, i32 0
  %arrayidx3566 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3565, i32 0, i64 %idxprom3561
  %1380 = load i32, i32* %arrayidx3566, align 4
  %cmp3567 = icmp eq i32 %1380, 0
  br i1 %cmp3567, label %if.then.3578, label %lor.lhs.false.3569

lor.lhs.false.3569:                               ; preds = %if.else.3560
  %1381 = load i32, i32* %dirn, align 4
  %idxprom3570 = sext i32 %1381 to i64
  %1382 = load %union.rec*, %union.rec** %chld, align 8
  %os13571 = bitcast %union.rec* %1382 to %struct.word_type*
  %ou33572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13571, i32 0, i32 3
  %os313573 = bitcast %union.THIRD_UNION* %ou33572 to %struct.anon.6*
  %ofwd3574 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313573, i32 0, i32 1
  %arrayidx3575 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3574, i32 0, i64 %idxprom3570
  %1383 = load i32, i32* %arrayidx3575, align 4
  %cmp3576 = icmp eq i32 %1383, 0
  br i1 %cmp3576, label %if.then.3578, label %if.else.3595

if.then.3578:                                     ; preds = %lor.lhs.false.3569, %if.else.3560
  %1384 = load %union.rec*, %union.rec** %cover, align 8
  %os13579 = bitcast %union.rec* %1384 to %struct.word_type*
  %ou13580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13579, i32 0, i32 1
  %ofpos3581 = bitcast %union.FIRST_UNION* %ou13580 to %struct.FILE_POS*
  %1385 = load %union.rec*, %union.rec** %cover, align 8
  %os13582 = bitcast %union.rec* %1385 to %struct.word_type*
  %ou13583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13582, i32 0, i32 1
  %os113584 = bitcast %union.FIRST_UNION* %ou13583 to %struct.anon*
  %otype3585 = getelementptr inbounds %struct.anon, %struct.anon* %os113584, i32 0, i32 0
  %1386 = load i8, i8* %otype3585, align 1
  %conv3586 = zext i8 %1386 to i32
  %call3587 = call i8* @Image(i32 %conv3586)
  %1387 = load i32, i32* %subst, align 4
  %call3588 = call i8* @Image(i32 %1387)
  %call3589 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3581, i8* %call3587, i8* %call3588)
  %1388 = load i32, i32* %subst, align 4
  %conv3590 = trunc i32 %1388 to i8
  %1389 = load %union.rec*, %union.rec** %cover, align 8
  %os13591 = bitcast %union.rec* %1389 to %struct.word_type*
  %ou13592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13591, i32 0, i32 1
  %os113593 = bitcast %union.FIRST_UNION* %ou13592 to %struct.anon*
  %otype3594 = getelementptr inbounds %struct.anon, %struct.anon* %os113593, i32 0, i32 0
  store i8 %conv3590, i8* %otype3594, align 1
  br label %if.end.3740

if.else.3595:                                     ; preds = %lor.lhs.false.3569
  %1390 = load i32, i32* %dirn, align 4
  %idxprom3596 = sext i32 %1390 to i64
  %1391 = load %union.rec*, %union.rec** %prnt, align 8
  %os13597 = bitcast %union.rec* %1391 to %struct.word_type*
  %ou33598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13597, i32 0, i32 3
  %os313599 = bitcast %union.THIRD_UNION* %ou33598 to %struct.anon.6*
  %oback3600 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313599, i32 0, i32 0
  %arrayidx3601 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3600, i32 0, i64 %idxprom3596
  %1392 = load i32, i32* %arrayidx3601, align 4
  %1393 = load i32, i32* %dirn, align 4
  %idxprom3602 = sext i32 %1393 to i64
  %1394 = load %union.rec*, %union.rec** %prnt, align 8
  %os13603 = bitcast %union.rec* %1394 to %struct.word_type*
  %ou33604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13603, i32 0, i32 3
  %os313605 = bitcast %union.THIRD_UNION* %ou33604 to %struct.anon.6*
  %ofwd3606 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313605, i32 0, i32 1
  %arrayidx3607 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3606, i32 0, i64 %idxprom3602
  %1395 = load i32, i32* %arrayidx3607, align 4
  %add3608 = add nsw i32 %1392, %1395
  %cmp3609 = icmp eq i32 %add3608, 0
  br i1 %cmp3609, label %if.then.3611, label %if.else.3628

if.then.3611:                                     ; preds = %if.else.3595
  %1396 = load %union.rec*, %union.rec** %cover, align 8
  %os13612 = bitcast %union.rec* %1396 to %struct.word_type*
  %ou13613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13612, i32 0, i32 1
  %ofpos3614 = bitcast %union.FIRST_UNION* %ou13613 to %struct.FILE_POS*
  %1397 = load %union.rec*, %union.rec** %cover, align 8
  %os13615 = bitcast %union.rec* %1397 to %struct.word_type*
  %ou13616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13615, i32 0, i32 1
  %os113617 = bitcast %union.FIRST_UNION* %ou13616 to %struct.anon*
  %otype3618 = getelementptr inbounds %struct.anon, %struct.anon* %os113617, i32 0, i32 0
  %1398 = load i8, i8* %otype3618, align 1
  %conv3619 = zext i8 %1398 to i32
  %call3620 = call i8* @Image(i32 %conv3619)
  %1399 = load i32, i32* %subst, align 4
  %call3621 = call i8* @Image(i32 %1399)
  %call3622 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3614, i8* %call3620, i8* %call3621)
  %1400 = load i32, i32* %subst, align 4
  %conv3623 = trunc i32 %1400 to i8
  %1401 = load %union.rec*, %union.rec** %cover, align 8
  %os13624 = bitcast %union.rec* %1401 to %struct.word_type*
  %ou13625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13624, i32 0, i32 1
  %os113626 = bitcast %union.FIRST_UNION* %ou13625 to %struct.anon*
  %otype3627 = getelementptr inbounds %struct.anon, %struct.anon* %os113626, i32 0, i32 0
  store i8 %conv3623, i8* %otype3627, align 1
  br label %if.end.3739

if.else.3628:                                     ; preds = %if.else.3595
  %1402 = load i32, i32* %dirn, align 4
  %idxprom3629 = sext i32 %1402 to i64
  %1403 = load %union.rec*, %union.rec** %prnt, align 8
  %os13630 = bitcast %union.rec* %1403 to %struct.word_type*
  %ou33631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13630, i32 0, i32 3
  %os313632 = bitcast %union.THIRD_UNION* %ou33631 to %struct.anon.6*
  %oback3633 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313632, i32 0, i32 0
  %arrayidx3634 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3633, i32 0, i64 %idxprom3629
  %1404 = load i32, i32* %arrayidx3634, align 4
  %conv3635 = sitofp i32 %1404 to float
  %1405 = load i32, i32* %dirn, align 4
  %idxprom3636 = sext i32 %1405 to i64
  %1406 = load %union.rec*, %union.rec** %chld, align 8
  %os13637 = bitcast %union.rec* %1406 to %struct.word_type*
  %ou33638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13637, i32 0, i32 3
  %os313639 = bitcast %union.THIRD_UNION* %ou33638 to %struct.anon.6*
  %oback3640 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313639, i32 0, i32 0
  %arrayidx3641 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3640, i32 0, i64 %idxprom3636
  %1407 = load i32, i32* %arrayidx3641, align 4
  %conv3642 = sitofp i32 %1407 to float
  %div3643 = fdiv float %conv3635, %conv3642
  store float %div3643, float* %sf1, align 4
  %1408 = load i32, i32* %dirn, align 4
  %idxprom3644 = sext i32 %1408 to i64
  %1409 = load %union.rec*, %union.rec** %prnt, align 8
  %os13645 = bitcast %union.rec* %1409 to %struct.word_type*
  %ou33646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13645, i32 0, i32 3
  %os313647 = bitcast %union.THIRD_UNION* %ou33646 to %struct.anon.6*
  %ofwd3648 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313647, i32 0, i32 1
  %arrayidx3649 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3648, i32 0, i64 %idxprom3644
  %1410 = load i32, i32* %arrayidx3649, align 4
  %conv3650 = sitofp i32 %1410 to float
  %1411 = load i32, i32* %dirn, align 4
  %idxprom3651 = sext i32 %1411 to i64
  %1412 = load %union.rec*, %union.rec** %chld, align 8
  %os13652 = bitcast %union.rec* %1412 to %struct.word_type*
  %ou33653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13652, i32 0, i32 3
  %os313654 = bitcast %union.THIRD_UNION* %ou33653 to %struct.anon.6*
  %ofwd3655 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313654, i32 0, i32 1
  %arrayidx3656 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3655, i32 0, i64 %idxprom3651
  %1413 = load i32, i32* %arrayidx3656, align 4
  %conv3657 = sitofp i32 %1413 to float
  %div3658 = fdiv float %conv3650, %conv3657
  store float %div3658, float* %sf2, align 4
  %1414 = load float, float* %sf1, align 4
  %1415 = load float, float* %sf2, align 4
  %cmp3659 = fcmp olt float %1414, %1415
  br i1 %cmp3659, label %cond.true.3661, label %cond.false.3662

cond.true.3661:                                   ; preds = %if.else.3628
  %1416 = load float, float* %sf2, align 4
  br label %cond.end.3663

cond.false.3662:                                  ; preds = %if.else.3628
  %1417 = load float, float* %sf1, align 4
  br label %cond.end.3663

cond.end.3663:                                    ; preds = %cond.false.3662, %cond.true.3661
  %cond3664 = phi float [ %1416, %cond.true.3661 ], [ %1417, %cond.false.3662 ]
  %mul3665 = fmul float %cond3664, 1.280000e+02
  %conv3666 = fptosi float %mul3665 to i32
  store i32 %conv3666, i32* %sf, align 4
  %1418 = load i32, i32* %dirn, align 4
  %idxprom3667 = sext i32 %1418 to i64
  %1419 = load %union.rec*, %union.rec** %chld, align 8
  %os13668 = bitcast %union.rec* %1419 to %struct.word_type*
  %ou33669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13668, i32 0, i32 3
  %os313670 = bitcast %union.THIRD_UNION* %ou33669 to %struct.anon.6*
  %oback3671 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313670, i32 0, i32 0
  %arrayidx3672 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3671, i32 0, i64 %idxprom3667
  %1420 = load i32, i32* %arrayidx3672, align 4
  %1421 = load i32, i32* %sf, align 4
  %mul3673 = mul nsw i32 %1420, %1421
  %div3674 = sdiv i32 %mul3673, 128
  store i32 %div3674, i32* %b3386, align 4
  %1422 = load i32, i32* %dirn, align 4
  %idxprom3675 = sext i32 %1422 to i64
  %1423 = load %union.rec*, %union.rec** %chld, align 8
  %os13676 = bitcast %union.rec* %1423 to %struct.word_type*
  %ou33677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13676, i32 0, i32 3
  %os313678 = bitcast %union.THIRD_UNION* %ou33677 to %struct.anon.6*
  %ofwd3679 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313678, i32 0, i32 1
  %arrayidx3680 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3679, i32 0, i64 %idxprom3675
  %1424 = load i32, i32* %arrayidx3680, align 4
  %1425 = load i32, i32* %sf, align 4
  %mul3681 = mul nsw i32 %1424, %1425
  %div3682 = sdiv i32 %mul3681, 128
  store i32 %div3682, i32* %f3388, align 4
  %1426 = load %union.rec*, %union.rec** %cover, align 8
  %1427 = load i32, i32* %dirn, align 4
  call void @Constrained(%union.rec* %1426, %struct.CONSTRAINT* %c3384, i32 %1427, %union.rec** %why)
  %1428 = load i32, i32* %b3386, align 4
  %obc3683 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3384, i32 0, i32 0
  %1429 = load i32, i32* %obc3683, align 4
  %cmp3684 = icmp sle i32 %1428, %1429
  br i1 %cmp3684, label %land.lhs.true.3686, label %if.else.3721

land.lhs.true.3686:                               ; preds = %cond.end.3663
  %1430 = load i32, i32* %b3386, align 4
  %1431 = load i32, i32* %f3388, align 4
  %add3687 = add nsw i32 %1430, %1431
  %obfc3688 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3384, i32 0, i32 1
  %1432 = load i32, i32* %obfc3688, align 4
  %cmp3689 = icmp sle i32 %add3687, %1432
  br i1 %cmp3689, label %land.lhs.true.3691, label %if.else.3721

land.lhs.true.3691:                               ; preds = %land.lhs.true.3686
  %1433 = load i32, i32* %f3388, align 4
  %ofc3692 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3384, i32 0, i32 2
  %1434 = load i32, i32* %ofc3692, align 4
  %cmp3693 = icmp sle i32 %1433, %1434
  br i1 %cmp3693, label %if.then.3695, label %if.else.3721

if.then.3695:                                     ; preds = %land.lhs.true.3691
  %1435 = load %union.rec*, %union.rec** %cover, align 8
  %os13696 = bitcast %union.rec* %1435 to %struct.word_type*
  %ou13697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13696, i32 0, i32 1
  %os113698 = bitcast %union.FIRST_UNION* %ou13697 to %struct.anon*
  %otype3699 = getelementptr inbounds %struct.anon, %struct.anon* %os113698, i32 0, i32 0
  store i8 34, i8* %otype3699, align 1
  %1436 = load i32, i32* %dirn, align 4
  %cmp3700 = icmp eq i32 %1436, 0
  br i1 %cmp3700, label %if.then.3702, label %if.else.3711

if.then.3702:                                     ; preds = %if.then.3695
  %1437 = load i32, i32* %sf, align 4
  %1438 = load %union.rec*, %union.rec** %cover, align 8
  %os23703 = bitcast %union.rec* %1438 to %struct.closure_type*
  %ou43704 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23703, i32 0, i32 4
  %oconstraint3705 = bitcast %union.FOURTH_UNION* %ou43704 to %struct.CONSTRAINT*
  %obc3706 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3705, i32 0, i32 0
  store i32 %1437, i32* %obc3706, align 4
  %1439 = load %union.rec*, %union.rec** %cover, align 8
  %os23707 = bitcast %union.rec* %1439 to %struct.closure_type*
  %ou43708 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23707, i32 0, i32 4
  %oconstraint3709 = bitcast %union.FOURTH_UNION* %ou43708 to %struct.CONSTRAINT*
  %ofc3710 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3709, i32 0, i32 2
  store i32 128, i32* %ofc3710, align 4
  br label %if.end.3720

if.else.3711:                                     ; preds = %if.then.3695
  %1440 = load %union.rec*, %union.rec** %cover, align 8
  %os23712 = bitcast %union.rec* %1440 to %struct.closure_type*
  %ou43713 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23712, i32 0, i32 4
  %oconstraint3714 = bitcast %union.FOURTH_UNION* %ou43713 to %struct.CONSTRAINT*
  %obc3715 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3714, i32 0, i32 0
  store i32 128, i32* %obc3715, align 4
  %1441 = load i32, i32* %sf, align 4
  %1442 = load %union.rec*, %union.rec** %cover, align 8
  %os23716 = bitcast %union.rec* %1442 to %struct.closure_type*
  %ou43717 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23716, i32 0, i32 4
  %oconstraint3718 = bitcast %union.FOURTH_UNION* %ou43717 to %struct.CONSTRAINT*
  %ofc3719 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3718, i32 0, i32 2
  store i32 %1441, i32* %ofc3719, align 4
  br label %if.end.3720

if.end.3720:                                      ; preds = %if.else.3711, %if.then.3702
  %1443 = load %union.rec*, %union.rec** %cover, align 8
  %1444 = load i32, i32* %b3386, align 4
  %1445 = load i32, i32* %f3388, align 4
  %1446 = load i32, i32* %dirn, align 4
  call void @AdjustSize(%union.rec* %1443, i32 %1444, i32 %1445, i32 %1446)
  br label %if.end.3738

if.else.3721:                                     ; preds = %land.lhs.true.3691, %land.lhs.true.3686, %cond.end.3663
  %1447 = load %union.rec*, %union.rec** %cover, align 8
  %os13722 = bitcast %union.rec* %1447 to %struct.word_type*
  %ou13723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13722, i32 0, i32 1
  %ofpos3724 = bitcast %union.FIRST_UNION* %ou13723 to %struct.FILE_POS*
  %1448 = load %union.rec*, %union.rec** %cover, align 8
  %os13725 = bitcast %union.rec* %1448 to %struct.word_type*
  %ou13726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13725, i32 0, i32 1
  %os113727 = bitcast %union.FIRST_UNION* %ou13726 to %struct.anon*
  %otype3728 = getelementptr inbounds %struct.anon, %struct.anon* %os113727, i32 0, i32 0
  %1449 = load i8, i8* %otype3728, align 1
  %conv3729 = zext i8 %1449 to i32
  %call3730 = call i8* @Image(i32 %conv3729)
  %1450 = load i32, i32* %subst, align 4
  %call3731 = call i8* @Image(i32 %1450)
  %call3732 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3724, i8* %call3730, i8* %call3731)
  %1451 = load i32, i32* %subst, align 4
  %conv3733 = trunc i32 %1451 to i8
  %1452 = load %union.rec*, %union.rec** %cover, align 8
  %os13734 = bitcast %union.rec* %1452 to %struct.word_type*
  %ou13735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13734, i32 0, i32 1
  %os113736 = bitcast %union.FIRST_UNION* %ou13735 to %struct.anon*
  %otype3737 = getelementptr inbounds %struct.anon, %struct.anon* %os113736, i32 0, i32 0
  store i8 %conv3733, i8* %otype3737, align 1
  br label %if.end.3738

if.end.3738:                                      ; preds = %if.else.3721, %if.end.3720
  br label %if.end.3739

if.end.3739:                                      ; preds = %if.end.3738, %if.then.3611
  br label %if.end.3740

if.end.3740:                                      ; preds = %if.end.3739, %if.then.3578
  br label %if.end.3741

if.end.3741:                                      ; preds = %if.end.3740, %if.then.3554
  br label %if.end.3742

if.end.3742:                                      ; preds = %if.end.3741, %if.then.3519
  br label %sw.epilog.3751

sw.default.3743:                                  ; preds = %for.end.2943
  %1453 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1454 = load %union.rec*, %union.rec** %z, align 8
  %os13744 = bitcast %union.rec* %1454 to %struct.word_type*
  %ou13745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13744, i32 0, i32 1
  %os113746 = bitcast %union.FIRST_UNION* %ou13745 to %struct.anon*
  %otype3747 = getelementptr inbounds %struct.anon, %struct.anon* %os113746, i32 0, i32 0
  %1455 = load i8, i8* %otype3747, align 1
  %conv3748 = zext i8 %1455 to i32
  %call3749 = call i8* @Image(i32 %conv3748)
  %call3750 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32 0, %struct.FILE_POS* %1453, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* %call3749)
  br label %sw.epilog.3751

sw.epilog.3751:                                   ; preds = %sw.default.3743, %if.end.3742, %sw.bb.3369, %if.end.3368, %cond.end.3191, %if.end.3019
  br label %for.inc.3752

for.inc.3752:                                     ; preds = %sw.epilog.3751
  %1456 = load %union.rec*, %union.rec** %zlink, align 8
  %os13753 = bitcast %union.rec* %1456 to %struct.word_type*
  %olist3754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13753, i32 0, i32 0
  %arrayidx3755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3754, i32 0, i64 0
  %osucc3756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3755, i32 0, i32 1
  %1457 = load %union.rec*, %union.rec** %osucc3756, align 8
  store %union.rec* %1457, %union.rec** %zlink, align 8
  br label %for.cond.2921

for.end.3757:                                     ; preds = %for.cond.2921
  %1458 = load %union.rec*, %union.rec** %extras, align 8
  %os13760 = bitcast %union.rec* %1458 to %struct.word_type*
  %olist3761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13760, i32 0, i32 0
  %arrayidx3762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3761, i32 0, i64 0
  %osucc3763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3762, i32 0, i32 1
  %1459 = load %union.rec*, %union.rec** %osucc3763, align 8
  store %union.rec* %1459, %union.rec** %xxstart3759, align 8
  %1460 = load %union.rec*, %union.rec** %extras, align 8
  store %union.rec* %1460, %union.rec** %xxstop3765, align 8
  %1461 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %1461, %union.rec** %xxdest3767, align 8
  %1462 = load %union.rec*, %union.rec** %xxstart3759, align 8
  %1463 = load %union.rec*, %union.rec** %xxstop3765, align 8
  %cmp3768 = icmp ne %union.rec* %1462, %1463
  br i1 %cmp3768, label %if.then.3770, label %if.end.3861

if.then.3770:                                     ; preds = %for.end.3757
  %1464 = load %union.rec*, %union.rec** %xxstart3759, align 8
  %os13771 = bitcast %union.rec* %1464 to %struct.word_type*
  %ou13772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13771, i32 0, i32 1
  %os113773 = bitcast %union.FIRST_UNION* %ou13772 to %struct.anon*
  %otype3774 = getelementptr inbounds %struct.anon, %struct.anon* %os113773, i32 0, i32 0
  %1465 = load i8, i8* %otype3774, align 1
  %conv3775 = zext i8 %1465 to i32
  %cmp3776 = icmp eq i32 %conv3775, 0
  br i1 %cmp3776, label %if.end.3780, label %if.then.3778

if.then.3778:                                     ; preds = %if.then.3770
  %1466 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3779 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1466, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.3780

if.end.3780:                                      ; preds = %if.then.3778, %if.then.3770
  %1467 = load %union.rec*, %union.rec** %xxstart3759, align 8
  store %union.rec* %1467, %union.rec** @zz_res, align 8
  %1468 = load %union.rec*, %union.rec** %xxstop3765, align 8
  store %union.rec* %1468, %union.rec** @zz_hold, align 8
  %1469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3781 = icmp eq %union.rec* %1469, null
  br i1 %cmp3781, label %cond.true.3783, label %cond.false.3784

cond.true.3783:                                   ; preds = %if.end.3780
  %1470 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3819

cond.false.3784:                                  ; preds = %if.end.3780
  %1471 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3785 = icmp eq %union.rec* %1471, null
  br i1 %cmp3785, label %cond.true.3787, label %cond.false.3788

cond.true.3787:                                   ; preds = %cond.false.3784
  %1472 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3817

cond.false.3788:                                  ; preds = %cond.false.3784
  %1473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13789 = bitcast %union.rec* %1473 to %struct.word_type*
  %olist3790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13789, i32 0, i32 0
  %arrayidx3791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3790, i32 0, i64 0
  %opred3792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3791, i32 0, i32 0
  %1474 = load %union.rec*, %union.rec** %opred3792, align 8
  store %union.rec* %1474, %union.rec** @zz_tmp, align 8
  %1475 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13793 = bitcast %union.rec* %1475 to %struct.word_type*
  %olist3794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13793, i32 0, i32 0
  %arrayidx3795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3794, i32 0, i64 0
  %opred3796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3795, i32 0, i32 0
  %1476 = load %union.rec*, %union.rec** %opred3796, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13797 = bitcast %union.rec* %1477 to %struct.word_type*
  %olist3798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13797, i32 0, i32 0
  %arrayidx3799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3798, i32 0, i64 0
  %opred3800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3799, i32 0, i32 0
  store %union.rec* %1476, %union.rec** %opred3800, align 8
  %1478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1479 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13801 = bitcast %union.rec* %1479 to %struct.word_type*
  %olist3802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13801, i32 0, i32 0
  %arrayidx3803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3802, i32 0, i64 0
  %opred3804 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3803, i32 0, i32 0
  %1480 = load %union.rec*, %union.rec** %opred3804, align 8
  %os13805 = bitcast %union.rec* %1480 to %struct.word_type*
  %olist3806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13805, i32 0, i32 0
  %arrayidx3807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3806, i32 0, i64 0
  %osucc3808 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3807, i32 0, i32 1
  store %union.rec* %1478, %union.rec** %osucc3808, align 8
  %1481 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1482 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13809 = bitcast %union.rec* %1482 to %struct.word_type*
  %olist3810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13809, i32 0, i32 0
  %arrayidx3811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3810, i32 0, i64 0
  %opred3812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3811, i32 0, i32 0
  store %union.rec* %1481, %union.rec** %opred3812, align 8
  %1483 = load %union.rec*, %union.rec** @zz_res, align 8
  %1484 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13813 = bitcast %union.rec* %1484 to %struct.word_type*
  %olist3814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13813, i32 0, i32 0
  %arrayidx3815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3814, i32 0, i64 0
  %osucc3816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3815, i32 0, i32 1
  store %union.rec* %1483, %union.rec** %osucc3816, align 8
  br label %cond.end.3817

cond.end.3817:                                    ; preds = %cond.false.3788, %cond.true.3787
  %cond3818 = phi %union.rec* [ %1472, %cond.true.3787 ], [ %1483, %cond.false.3788 ]
  br label %cond.end.3819

cond.end.3819:                                    ; preds = %cond.end.3817, %cond.true.3783
  %cond3820 = phi %union.rec* [ %1470, %cond.true.3783 ], [ %cond3818, %cond.end.3817 ]
  %1485 = load %union.rec*, %union.rec** %xxstart3759, align 8
  store %union.rec* %1485, %union.rec** @zz_res, align 8
  %1486 = load %union.rec*, %union.rec** %xxdest3767, align 8
  store %union.rec* %1486, %union.rec** @zz_hold, align 8
  %1487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3821 = icmp eq %union.rec* %1487, null
  br i1 %cmp3821, label %cond.true.3823, label %cond.false.3824

cond.true.3823:                                   ; preds = %cond.end.3819
  %1488 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3859

cond.false.3824:                                  ; preds = %cond.end.3819
  %1489 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3825 = icmp eq %union.rec* %1489, null
  br i1 %cmp3825, label %cond.true.3827, label %cond.false.3828

cond.true.3827:                                   ; preds = %cond.false.3824
  %1490 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3857

cond.false.3828:                                  ; preds = %cond.false.3824
  %1491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13829 = bitcast %union.rec* %1491 to %struct.word_type*
  %olist3830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13829, i32 0, i32 0
  %arrayidx3831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3830, i32 0, i64 0
  %opred3832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3831, i32 0, i32 0
  %1492 = load %union.rec*, %union.rec** %opred3832, align 8
  store %union.rec* %1492, %union.rec** @zz_tmp, align 8
  %1493 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13833 = bitcast %union.rec* %1493 to %struct.word_type*
  %olist3834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13833, i32 0, i32 0
  %arrayidx3835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3834, i32 0, i64 0
  %opred3836 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3835, i32 0, i32 0
  %1494 = load %union.rec*, %union.rec** %opred3836, align 8
  %1495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13837 = bitcast %union.rec* %1495 to %struct.word_type*
  %olist3838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13837, i32 0, i32 0
  %arrayidx3839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3838, i32 0, i64 0
  %opred3840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3839, i32 0, i32 0
  store %union.rec* %1494, %union.rec** %opred3840, align 8
  %1496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1497 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13841 = bitcast %union.rec* %1497 to %struct.word_type*
  %olist3842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13841, i32 0, i32 0
  %arrayidx3843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3842, i32 0, i64 0
  %opred3844 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3843, i32 0, i32 0
  %1498 = load %union.rec*, %union.rec** %opred3844, align 8
  %os13845 = bitcast %union.rec* %1498 to %struct.word_type*
  %olist3846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13845, i32 0, i32 0
  %arrayidx3847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3846, i32 0, i64 0
  %osucc3848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3847, i32 0, i32 1
  store %union.rec* %1496, %union.rec** %osucc3848, align 8
  %1499 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1500 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13849 = bitcast %union.rec* %1500 to %struct.word_type*
  %olist3850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13849, i32 0, i32 0
  %arrayidx3851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3850, i32 0, i64 0
  %opred3852 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3851, i32 0, i32 0
  store %union.rec* %1499, %union.rec** %opred3852, align 8
  %1501 = load %union.rec*, %union.rec** @zz_res, align 8
  %1502 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13853 = bitcast %union.rec* %1502 to %struct.word_type*
  %olist3854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13853, i32 0, i32 0
  %arrayidx3855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3854, i32 0, i64 0
  %osucc3856 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3855, i32 0, i32 1
  store %union.rec* %1501, %union.rec** %osucc3856, align 8
  br label %cond.end.3857

cond.end.3857:                                    ; preds = %cond.false.3828, %cond.true.3827
  %cond3858 = phi %union.rec* [ %1490, %cond.true.3827 ], [ %1501, %cond.false.3828 ]
  br label %cond.end.3859

cond.end.3859:                                    ; preds = %cond.end.3857, %cond.true.3823
  %cond3860 = phi %union.rec* [ %1488, %cond.true.3823 ], [ %cond3858, %cond.end.3857 ]
  br label %if.end.3861

if.end.3861:                                      ; preds = %cond.end.3859, %for.end.3757
  %1503 = load %union.rec*, %union.rec** %extras, align 8
  %os13862 = bitcast %union.rec* %1503 to %struct.word_type*
  %olist3863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13862, i32 0, i32 0
  %arrayidx3864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3863, i32 0, i64 0
  %osucc3865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3864, i32 0, i32 1
  %1504 = load %union.rec*, %union.rec** %osucc3865, align 8
  %1505 = load %union.rec*, %union.rec** %extras, align 8
  %cmp3866 = icmp eq %union.rec* %1504, %1505
  br i1 %cmp3866, label %land.lhs.true.3868, label %if.then.3875

land.lhs.true.3868:                               ; preds = %if.end.3861
  %1506 = load %union.rec*, %union.rec** %extras, align 8
  %os13869 = bitcast %union.rec* %1506 to %struct.word_type*
  %olist3870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13869, i32 0, i32 0
  %arrayidx3871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3870, i32 0, i64 1
  %osucc3872 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3871, i32 0, i32 1
  %1507 = load %union.rec*, %union.rec** %osucc3872, align 8
  %1508 = load %union.rec*, %union.rec** %extras, align 8
  %cmp3873 = icmp eq %union.rec* %1507, %1508
  br i1 %cmp3873, label %if.end.3877, label %if.then.3875

if.then.3875:                                     ; preds = %land.lhs.true.3868, %if.end.3861
  %1509 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3876 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1509, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.3877

if.end.3877:                                      ; preds = %if.then.3875, %land.lhs.true.3868
  %1510 = load %union.rec*, %union.rec** %extras, align 8
  store %union.rec* %1510, %union.rec** @zz_hold, align 8
  %1511 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1511, %union.rec** @zz_hold, align 8
  %1512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13878 = bitcast %union.rec* %1512 to %struct.word_type*
  %ou13879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13878, i32 0, i32 1
  %os113880 = bitcast %union.FIRST_UNION* %ou13879 to %struct.anon*
  %otype3881 = getelementptr inbounds %struct.anon, %struct.anon* %os113880, i32 0, i32 0
  %1513 = load i8, i8* %otype3881, align 1
  %conv3882 = zext i8 %1513 to i32
  %cmp3883 = icmp eq i32 %conv3882, 11
  br i1 %cmp3883, label %cond.true.3893, label %lor.lhs.false.3885

lor.lhs.false.3885:                               ; preds = %if.end.3877
  %1514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13886 = bitcast %union.rec* %1514 to %struct.word_type*
  %ou13887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13886, i32 0, i32 1
  %os113888 = bitcast %union.FIRST_UNION* %ou13887 to %struct.anon*
  %otype3889 = getelementptr inbounds %struct.anon, %struct.anon* %os113888, i32 0, i32 0
  %1515 = load i8, i8* %otype3889, align 1
  %conv3890 = zext i8 %1515 to i32
  %cmp3891 = icmp eq i32 %conv3890, 12
  br i1 %cmp3891, label %cond.true.3893, label %cond.false.3899

cond.true.3893:                                   ; preds = %lor.lhs.false.3885, %if.end.3877
  %1516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13894 = bitcast %union.rec* %1516 to %struct.word_type*
  %ou13895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13894, i32 0, i32 1
  %os113896 = bitcast %union.FIRST_UNION* %ou13895 to %struct.anon*
  %orec_size3897 = getelementptr inbounds %struct.anon, %struct.anon* %os113896, i32 0, i32 1
  %1517 = load i8, i8* %orec_size3897, align 1
  %conv3898 = zext i8 %1517 to i32
  br label %cond.end.3907

cond.false.3899:                                  ; preds = %lor.lhs.false.3885
  %1518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13900 = bitcast %union.rec* %1518 to %struct.word_type*
  %ou13901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13900, i32 0, i32 1
  %os113902 = bitcast %union.FIRST_UNION* %ou13901 to %struct.anon*
  %otype3903 = getelementptr inbounds %struct.anon, %struct.anon* %os113902, i32 0, i32 0
  %1519 = load i8, i8* %otype3903, align 1
  %idxprom3904 = zext i8 %1519 to i64
  %arrayidx3905 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3904
  %1520 = load i8, i8* %arrayidx3905, align 1
  %conv3906 = zext i8 %1520 to i32
  br label %cond.end.3907

cond.end.3907:                                    ; preds = %cond.false.3899, %cond.true.3893
  %cond3908 = phi i32 [ %conv3898, %cond.true.3893 ], [ %conv3906, %cond.false.3899 ]
  store i32 %cond3908, i32* @zz_size, align 4
  %1521 = load i32, i32* @zz_size, align 4
  %idxprom3909 = sext i32 %1521 to i64
  %arrayidx3910 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3909
  %1522 = load %union.rec*, %union.rec** %arrayidx3910, align 8
  %1523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13911 = bitcast %union.rec* %1523 to %struct.word_type*
  %olist3912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13911, i32 0, i32 0
  %arrayidx3913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3912, i32 0, i64 0
  %opred3914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3913, i32 0, i32 0
  store %union.rec* %1522, %union.rec** %opred3914, align 8
  %1524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1525 = load i32, i32* @zz_size, align 4
  %idxprom3915 = sext i32 %1525 to i64
  %arrayidx3916 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3915
  store %union.rec* %1524, %union.rec** %arrayidx3916, align 8
  br label %for.inc.3917

for.inc.3917:                                     ; preds = %cond.end.3907, %if.then.2870
  %1526 = load %union.rec*, %union.rec** %link, align 8
  %os13918 = bitcast %union.rec* %1526 to %struct.word_type*
  %olist3919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13918, i32 0, i32 0
  %arrayidx3920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3919, i32 0, i64 0
  %osucc3921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3920, i32 0, i32 1
  %1527 = load %union.rec*, %union.rec** %osucc3921, align 8
  store %union.rec* %1527, %union.rec** %link, align 8
  br label %for.cond.2824

for.end.3922:                                     ; preds = %for.cond.2824
  %1528 = load %union.rec*, %union.rec** %crs, align 8
  %cmp3923 = icmp ne %union.rec* %1528, null
  br i1 %cmp3923, label %if.then.3925, label %if.end.4035

if.then.3925:                                     ; preds = %for.end.3922
  %1529 = load %union.rec*, %union.rec** %crs, align 8
  %os13928 = bitcast %union.rec* %1529 to %struct.word_type*
  %olist3929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13928, i32 0, i32 0
  %arrayidx3930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3929, i32 0, i64 0
  %osucc3931 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3930, i32 0, i32 1
  %1530 = load %union.rec*, %union.rec** %osucc3931, align 8
  store %union.rec* %1530, %union.rec** %xxstart3927, align 8
  %1531 = load %union.rec*, %union.rec** %crs, align 8
  store %union.rec* %1531, %union.rec** %xxstop3933, align 8
  %1532 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os13936 = bitcast %union.rec* %1532 to %struct.word_type*
  %olist3937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13936, i32 0, i32 0
  %arrayidx3938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3937, i32 0, i64 0
  %osucc3939 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3938, i32 0, i32 1
  %1533 = load %union.rec*, %union.rec** %osucc3939, align 8
  store %union.rec* %1533, %union.rec** %xxdest3935, align 8
  %1534 = load %union.rec*, %union.rec** %xxstart3927, align 8
  %1535 = load %union.rec*, %union.rec** %xxstop3933, align 8
  %cmp3940 = icmp ne %union.rec* %1534, %1535
  br i1 %cmp3940, label %if.then.3942, label %if.end.4033

if.then.3942:                                     ; preds = %if.then.3925
  %1536 = load %union.rec*, %union.rec** %xxstart3927, align 8
  %os13943 = bitcast %union.rec* %1536 to %struct.word_type*
  %ou13944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13943, i32 0, i32 1
  %os113945 = bitcast %union.FIRST_UNION* %ou13944 to %struct.anon*
  %otype3946 = getelementptr inbounds %struct.anon, %struct.anon* %os113945, i32 0, i32 0
  %1537 = load i8, i8* %otype3946, align 1
  %conv3947 = zext i8 %1537 to i32
  %cmp3948 = icmp eq i32 %conv3947, 0
  br i1 %cmp3948, label %if.end.3952, label %if.then.3950

if.then.3950:                                     ; preds = %if.then.3942
  %1538 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3951 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1538, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.3952

if.end.3952:                                      ; preds = %if.then.3950, %if.then.3942
  %1539 = load %union.rec*, %union.rec** %xxstart3927, align 8
  store %union.rec* %1539, %union.rec** @zz_res, align 8
  %1540 = load %union.rec*, %union.rec** %xxstop3933, align 8
  store %union.rec* %1540, %union.rec** @zz_hold, align 8
  %1541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3953 = icmp eq %union.rec* %1541, null
  br i1 %cmp3953, label %cond.true.3955, label %cond.false.3956

cond.true.3955:                                   ; preds = %if.end.3952
  %1542 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3991

cond.false.3956:                                  ; preds = %if.end.3952
  %1543 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3957 = icmp eq %union.rec* %1543, null
  br i1 %cmp3957, label %cond.true.3959, label %cond.false.3960

cond.true.3959:                                   ; preds = %cond.false.3956
  %1544 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3989

cond.false.3960:                                  ; preds = %cond.false.3956
  %1545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13961 = bitcast %union.rec* %1545 to %struct.word_type*
  %olist3962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13961, i32 0, i32 0
  %arrayidx3963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3962, i32 0, i64 0
  %opred3964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3963, i32 0, i32 0
  %1546 = load %union.rec*, %union.rec** %opred3964, align 8
  store %union.rec* %1546, %union.rec** @zz_tmp, align 8
  %1547 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13965 = bitcast %union.rec* %1547 to %struct.word_type*
  %olist3966 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13965, i32 0, i32 0
  %arrayidx3967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3966, i32 0, i64 0
  %opred3968 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3967, i32 0, i32 0
  %1548 = load %union.rec*, %union.rec** %opred3968, align 8
  %1549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13969 = bitcast %union.rec* %1549 to %struct.word_type*
  %olist3970 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13969, i32 0, i32 0
  %arrayidx3971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3970, i32 0, i64 0
  %opred3972 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3971, i32 0, i32 0
  store %union.rec* %1548, %union.rec** %opred3972, align 8
  %1550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1551 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13973 = bitcast %union.rec* %1551 to %struct.word_type*
  %olist3974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13973, i32 0, i32 0
  %arrayidx3975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3974, i32 0, i64 0
  %opred3976 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3975, i32 0, i32 0
  %1552 = load %union.rec*, %union.rec** %opred3976, align 8
  %os13977 = bitcast %union.rec* %1552 to %struct.word_type*
  %olist3978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13977, i32 0, i32 0
  %arrayidx3979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3978, i32 0, i64 0
  %osucc3980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3979, i32 0, i32 1
  store %union.rec* %1550, %union.rec** %osucc3980, align 8
  %1553 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1554 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13981 = bitcast %union.rec* %1554 to %struct.word_type*
  %olist3982 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13981, i32 0, i32 0
  %arrayidx3983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3982, i32 0, i64 0
  %opred3984 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3983, i32 0, i32 0
  store %union.rec* %1553, %union.rec** %opred3984, align 8
  %1555 = load %union.rec*, %union.rec** @zz_res, align 8
  %1556 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13985 = bitcast %union.rec* %1556 to %struct.word_type*
  %olist3986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13985, i32 0, i32 0
  %arrayidx3987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3986, i32 0, i64 0
  %osucc3988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3987, i32 0, i32 1
  store %union.rec* %1555, %union.rec** %osucc3988, align 8
  br label %cond.end.3989

cond.end.3989:                                    ; preds = %cond.false.3960, %cond.true.3959
  %cond3990 = phi %union.rec* [ %1544, %cond.true.3959 ], [ %1555, %cond.false.3960 ]
  br label %cond.end.3991

cond.end.3991:                                    ; preds = %cond.end.3989, %cond.true.3955
  %cond3992 = phi %union.rec* [ %1542, %cond.true.3955 ], [ %cond3990, %cond.end.3989 ]
  %1557 = load %union.rec*, %union.rec** %xxstart3927, align 8
  store %union.rec* %1557, %union.rec** @zz_res, align 8
  %1558 = load %union.rec*, %union.rec** %xxdest3935, align 8
  store %union.rec* %1558, %union.rec** @zz_hold, align 8
  %1559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3993 = icmp eq %union.rec* %1559, null
  br i1 %cmp3993, label %cond.true.3995, label %cond.false.3996

cond.true.3995:                                   ; preds = %cond.end.3991
  %1560 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4031

cond.false.3996:                                  ; preds = %cond.end.3991
  %1561 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3997 = icmp eq %union.rec* %1561, null
  br i1 %cmp3997, label %cond.true.3999, label %cond.false.4000

cond.true.3999:                                   ; preds = %cond.false.3996
  %1562 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4029

cond.false.4000:                                  ; preds = %cond.false.3996
  %1563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14001 = bitcast %union.rec* %1563 to %struct.word_type*
  %olist4002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14001, i32 0, i32 0
  %arrayidx4003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4002, i32 0, i64 0
  %opred4004 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4003, i32 0, i32 0
  %1564 = load %union.rec*, %union.rec** %opred4004, align 8
  store %union.rec* %1564, %union.rec** @zz_tmp, align 8
  %1565 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14005 = bitcast %union.rec* %1565 to %struct.word_type*
  %olist4006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14005, i32 0, i32 0
  %arrayidx4007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4006, i32 0, i64 0
  %opred4008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4007, i32 0, i32 0
  %1566 = load %union.rec*, %union.rec** %opred4008, align 8
  %1567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14009 = bitcast %union.rec* %1567 to %struct.word_type*
  %olist4010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14009, i32 0, i32 0
  %arrayidx4011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4010, i32 0, i64 0
  %opred4012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4011, i32 0, i32 0
  store %union.rec* %1566, %union.rec** %opred4012, align 8
  %1568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1569 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14013 = bitcast %union.rec* %1569 to %struct.word_type*
  %olist4014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14013, i32 0, i32 0
  %arrayidx4015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4014, i32 0, i64 0
  %opred4016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4015, i32 0, i32 0
  %1570 = load %union.rec*, %union.rec** %opred4016, align 8
  %os14017 = bitcast %union.rec* %1570 to %struct.word_type*
  %olist4018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14017, i32 0, i32 0
  %arrayidx4019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4018, i32 0, i64 0
  %osucc4020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4019, i32 0, i32 1
  store %union.rec* %1568, %union.rec** %osucc4020, align 8
  %1571 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1572 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14021 = bitcast %union.rec* %1572 to %struct.word_type*
  %olist4022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14021, i32 0, i32 0
  %arrayidx4023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4022, i32 0, i64 0
  %opred4024 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4023, i32 0, i32 0
  store %union.rec* %1571, %union.rec** %opred4024, align 8
  %1573 = load %union.rec*, %union.rec** @zz_res, align 8
  %1574 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14025 = bitcast %union.rec* %1574 to %struct.word_type*
  %olist4026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14025, i32 0, i32 0
  %arrayidx4027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4026, i32 0, i64 0
  %osucc4028 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4027, i32 0, i32 1
  store %union.rec* %1573, %union.rec** %osucc4028, align 8
  br label %cond.end.4029

cond.end.4029:                                    ; preds = %cond.false.4000, %cond.true.3999
  %cond4030 = phi %union.rec* [ %1562, %cond.true.3999 ], [ %1573, %cond.false.4000 ]
  br label %cond.end.4031

cond.end.4031:                                    ; preds = %cond.end.4029, %cond.true.3995
  %cond4032 = phi %union.rec* [ %1560, %cond.true.3995 ], [ %cond4030, %cond.end.4029 ]
  br label %if.end.4033

if.end.4033:                                      ; preds = %cond.end.4031, %if.then.3925
  %1575 = load %union.rec*, %union.rec** %crs, align 8
  %call4034 = call i32 @DisposeObject(%union.rec* %1575)
  br label %if.end.4035

if.end.4035:                                      ; preds = %if.end.4033, %for.end.3922
  %1576 = load %union.rec*, %union.rec** %target.addr, align 8
  %cmp4036 = icmp ne %union.rec* %1576, null
  br i1 %cmp4036, label %land.lhs.true.4038, label %if.end.4050

land.lhs.true.4038:                               ; preds = %if.end.4035
  %1577 = load %union.rec**, %union.rec*** %dest_index.addr, align 8
  %1578 = load %union.rec*, %union.rec** %1577, align 8
  %cmp4039 = icmp eq %union.rec* %1578, null
  br i1 %cmp4039, label %if.then.4041, label %if.end.4050

if.then.4041:                                     ; preds = %land.lhs.true.4038
  %1579 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os14042 = bitcast %union.rec* %1579 to %struct.word_type*
  %ou14043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14042, i32 0, i32 1
  %ofpos4044 = bitcast %union.FIRST_UNION* %ou14043 to %struct.FILE_POS*
  %1580 = load %union.rec*, %union.rec** %target.addr, align 8
  %call4045 = call i8* @SymName(%union.rec* %1580)
  %1581 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os24046 = bitcast %union.rec* %1581 to %struct.closure_type*
  %oactual4047 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24046, i32 0, i32 5
  %1582 = load %union.rec*, %union.rec** %oactual4047, align 8
  %call4048 = call i8* @SymName(%union.rec* %1582)
  %call4049 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 21, i32 12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos4044, i8* %call4045, i8* %call4048)
  br label %if.end.4050

if.end.4050:                                      ; preds = %if.then.4041, %land.lhs.true.4038, %if.end.4035
  %1583 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os14051 = bitcast %union.rec* %1583 to %struct.word_type*
  %ou24052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14051, i32 0, i32 2
  %os234053 = bitcast %union.SECOND_UNION* %ou24052 to %struct.anon.2*
  %osized4054 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234053, i32 0, i32 2
  %bf.load4055 = load i16, i16* %osized4054, align 2
  %bf.clear4056 = and i16 %bf.load4055, -3
  %bf.set4057 = or i16 %bf.clear4056, 2
  store i16 %bf.set4057, i16* %osized4054, align 2
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @FindOptimize(%union.rec*, %union.rec*) #1

declare void @SetOptimize(%union.rec*, %struct.STYLE*) #1

declare %union.rec* @Manifest(%union.rec*, %union.rec*, %struct.STYLE*, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32, i32, %union.rec**, i32) #1

declare i8* @SymName(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @MinSize(%union.rec*, i32, %union.rec**) #1

declare %union.rec* @BreakObject(%union.rec*, %struct.CONSTRAINT*) #1

declare i8* @EchoLength(i32) #1

declare %union.rec* @Hyphenate(%union.rec*) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

declare i8* @Image(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
