; ModuleID = './MultiSource.Benchmarks.MiBench/54.consumer-typeset.z14.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.INTERVAL = type { %union.rec*, %union.rec*, %union.rec*, i32, i32, i32, i8, i8, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.0 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.9 = type { i8, [3 x i8] }

@FillObject.hyph_word = internal global %union.rec* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"FillObject: type(x) != ACAT!\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"FillObject: initial size!\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"paragraph deleted (assigned width %s is too narrow)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"1rt\00", align 1
@xx_link = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"FillObject/extend_unbreakable:  link == x!\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"hyphen or nohyphen option missing\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"MoveRightToGap: newg!\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SIB: glink!\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"SetIntervalBadness: badness < 0!\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"IntervalShiftRightEnd: AT_END!\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"IntervalShiftRightEnd: type(g)!\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"IntervalShiftRightEnd: rlink == x!\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"IntervalShiftLeftEnd: AT_END!\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"IntervalShiftLeftEnd: llink == x!\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"IntervalShiftLeftEnd: tab_count <= 0!\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"FillObject: IntervalClass(I)\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"almost empty paragraph!\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"FillObject: last word!\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"FillObject: last gap_obj!\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"FillObject: type(gp) != GAP_OBJ (a)!\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"FillObject: type(gp) != GAP_OBJ (b)!\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"FillObject: empty paragraph!\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"FillObject: last line is empty!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @FillObject(%union.rec* %x, %struct.CONSTRAINT* %c, %union.rec* %multi, i32 %can_hyphenate, i32 %allow_shrink, i32 %extend_unbreakable, i32* %hyph_used) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %x.addr = alloca %union.rec*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %multi.addr = alloca %union.rec*, align 8
  %can_hyphenate.addr = alloca i32, align 4
  %allow_shrink.addr = alloca i32, align 4
  %extend_unbreakable.addr = alloca i32, align 4
  %hyph_used.addr = alloca i32*, align 8
  %I = alloca %struct.INTERVAL, align 8
  %BestI = alloca %struct.INTERVAL, align 8
  %res = alloca %union.rec*, align 8
  %gp = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %next = alloca %union.rec*, align 8
  %max_width = alloca i32, align 4
  %etc_width = alloca i32, align 4
  %outdent_margin = alloca i32, align 4
  %f = alloca i32, align 4
  %jn = alloca i32, align 4
  %typ = alloca i32, align 4
  %hyph_allowed = alloca i32, align 4
  %f733 = alloca i32, align 4
  %max_f = alloca i32, align 4
  %g = alloca %union.rec*, align 8
  %rlink = alloca %union.rec*, align 8
  %right = alloca %union.rec*, align 8
  %jn1080 = alloca i32, align 4
  %newg = alloca %union.rec*, align 8
  %foll = alloca %union.rec*, align 8
  %tmp1216 = alloca %union.rec*, align 8
  %jn1218 = alloca i32, align 4
  %unbreakable_at_right = alloca i32, align 4
  %g1646 = alloca %union.rec*, align 8
  %badness = alloca i32, align 4
  %col_width = alloca i32, align 4
  %glink = alloca %union.rec*, align 8
  %rlink1922 = alloca %union.rec*, align 8
  %g1924 = alloca %union.rec*, align 8
  %right1926 = alloca %union.rec*, align 8
  %newg2126 = alloca %union.rec*, align 8
  %foll2128 = alloca %union.rec*, align 8
  %tmp2130 = alloca %union.rec*, align 8
  %jn2132 = alloca i32, align 4
  %unbreakable_at_right2134 = alloca i32, align 4
  %g2569 = alloca %union.rec*, align 8
  %badness2571 = alloca i32, align 4
  %col_width2573 = alloca i32, align 4
  %glink2636 = alloca %union.rec*, align 8
  %llink2843 = alloca %union.rec*, align 8
  %left = alloca %union.rec*, align 8
  %lgap = alloca %union.rec*, align 8
  %y2847 = alloca %union.rec*, align 8
  %jn2849 = alloca i32, align 4
  %tlink = alloca %union.rec*, align 8
  %g3176 = alloca %union.rec*, align 8
  %badness3178 = alloca i32, align 4
  %col_width3180 = alloca i32, align 4
  %glink3241 = alloca %union.rec*, align 8
  %lgap3727 = alloca %union.rec*, align 8
  %llink3729 = alloca %union.rec*, align 8
  %t1 = alloca %union.rec*, align 8
  %t2 = alloca %union.rec*, align 8
  %z4527 = alloca %union.rec*, align 8
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %z5235 = alloca %union.rec*, align 8
  %under = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  store %union.rec* %multi, %union.rec** %multi.addr, align 8
  store i32 %can_hyphenate, i32* %can_hyphenate.addr, align 4
  store i32 %allow_shrink, i32* %allow_shrink.addr, align 4
  store i32 %extend_unbreakable, i32* %extend_unbreakable.addr, align 4
  store i32* %hyph_used, i32** %hyph_used.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 17
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %hyph_used.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %multi.addr, align 8
  %cmp15 = icmp eq %union.rec* %4, null
  br i1 %cmp15, label %if.then.17, label %if.else.227

if.then.17:                                       ; preds = %if.end
  %5 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %5, i32 0, i32 2
  %6 = load i32, i32* %ofc, align 4
  %7 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %7, i32 0, i32 1
  %8 = load i32, i32* %obfc, align 4
  %cmp18 = icmp slt i32 %6, %8
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %9 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc20 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %9, i32 0, i32 2
  %10 = load i32, i32* %ofc20, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc21 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 1
  %12 = load i32, i32* %obfc21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %max_width, align 4
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %13 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %14 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load = load i8, i8* %14, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %cmp22 = icmp eq i32 %bf.cast, 2
  br i1 %cmp22, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os224 = bitcast %union.rec* %15 to %struct.closure_type*
  %ou425 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os224, i32 0, i32 4
  %osave_style26 = bitcast %union.FOURTH_UNION* %ou425 to %struct.STYLE*
  %osu227 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style26, i32 0, i32 1
  %oss228 = bitcast %union.anon.10* %osu227 to %struct.anon.11*
  %16 = bitcast %struct.anon.11* %oss228 to i8*
  %bf.load29 = load i8, i8* %16, align 4
  %bf.lshr30 = lshr i8 %bf.load29, 4
  %bf.clear31 = and i8 %bf.lshr30, 7
  %bf.cast32 = zext i8 %bf.clear31 to i32
  %cmp33 = icmp eq i32 %bf.cast32, 3
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false, %cond.end
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %os236 = bitcast %union.rec* %17 to %struct.closure_type*
  %ou437 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os236, i32 0, i32 4
  %osave_style38 = bitcast %union.FOURTH_UNION* %ou437 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style38, i32 0, i32 4
  %bf.load39 = load i32, i32* %ofont, align 4
  %bf.clear40 = and i32 %bf.load39, 4095
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %call41 = call i32 @FontSize(i32 %bf.clear40, %union.rec* %18)
  %mul = mul nsw i32 2, %call41
  store i32 %mul, i32* %outdent_margin, align 4
  %19 = load i32, i32* %max_width, align 4
  %20 = load i32, i32* %outdent_margin, align 4
  %sub = sub nsw i32 %19, %20
  store i32 %sub, i32* %etc_width, align 4
  br label %if.end.42

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i32, i32* %max_width, align 4
  store i32 %21, i32* %etc_width, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.35
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os143 = bitcast %union.rec* %22 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %23 = load i32, i32* %arrayidx, align 4
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os144 = bitcast %union.rec* %24 to %struct.word_type*
  %ou345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 3
  %os3146 = bitcast %union.THIRD_UNION* %ou345 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3146, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %25 = load i32, i32* %arrayidx47, align 4
  %add = add nsw i32 %23, %25
  %26 = load i32, i32* %max_width, align 4
  %cmp48 = icmp sgt i32 %add, %26
  br i1 %cmp48, label %if.end.52, label %if.then.50

if.then.50:                                       ; preds = %if.end.42
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call51 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.42
  %28 = load i32, i32* %max_width, align 4
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os253 = bitcast %union.rec* %29 to %struct.closure_type*
  %ou454 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os253, i32 0, i32 4
  %osave_style55 = bitcast %union.FOURTH_UNION* %ou454 to %struct.STYLE*
  %ofont56 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style55, i32 0, i32 4
  %bf.load57 = load i32, i32* %ofont56, align 4
  %bf.clear58 = and i32 %bf.load57, 4095
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %call59 = call i32 @FontSize(i32 %bf.clear58, %union.rec* %30)
  %mul60 = mul nsw i32 2, %call59
  %cmp61 = icmp sle i32 %28, %mul60
  br i1 %cmp61, label %if.then.63, label %if.end.226

if.then.63:                                       ; preds = %if.end.52
  %31 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %31 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou165 to %struct.FILE_POS*
  %32 = load i32, i32* %max_width, align 4
  %call66 = call i8* @EchoLength(i32 %32)
  %call67 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 14, i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %call66)
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os168 = bitcast %union.rec* %33 to %struct.word_type*
  %ou169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 1
  %ofpos70 = bitcast %union.FIRST_UNION* %ou169 to %struct.FILE_POS*
  %call71 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %ofpos70)
  store %union.rec* %call71, %union.rec** %res, align 8
  %34 = load %union.rec*, %union.rec** %x.addr, align 8
  %os272 = bitcast %union.rec* %34 to %struct.closure_type*
  %ou473 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os272, i32 0, i32 4
  %osave_style74 = bitcast %union.FOURTH_UNION* %ou473 to %struct.STYLE*
  %ofont75 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style74, i32 0, i32 4
  %bf.load76 = load i32, i32* %ofont75, align 4
  %bf.clear77 = and i32 %bf.load76, 4095
  %35 = load %union.rec*, %union.rec** %res, align 8
  %os178 = bitcast %union.rec* %35 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %36 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load79 = load i32, i32* %36, align 4
  %bf.value = and i32 %bf.clear77, 4095
  %bf.clear80 = and i32 %bf.load79, -4096
  %bf.set = or i32 %bf.clear80, %bf.value
  store i32 %bf.set, i32* %36, align 4
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %os281 = bitcast %union.rec* %37 to %struct.closure_type*
  %ou482 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os281, i32 0, i32 4
  %osave_style83 = bitcast %union.FOURTH_UNION* %ou482 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style83, i32 0, i32 4
  %bf.load84 = load i32, i32* %ocolour, align 4
  %bf.lshr85 = lshr i32 %bf.load84, 12
  %bf.clear86 = and i32 %bf.lshr85, 1023
  %38 = load %union.rec*, %union.rec** %res, align 8
  %os187 = bitcast %union.rec* %38 to %struct.word_type*
  %ou288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 2
  %os2289 = bitcast %union.SECOND_UNION* %ou288 to %struct.anon.1*
  %39 = bitcast %struct.anon.1* %os2289 to i32*
  %bf.load90 = load i32, i32* %39, align 4
  %bf.value91 = and i32 %bf.clear86, 1023
  %bf.shl = shl i32 %bf.value91, 12
  %bf.clear92 = and i32 %bf.load90, -4190209
  %bf.set93 = or i32 %bf.clear92, %bf.shl
  store i32 %bf.set93, i32* %39, align 4
  %40 = load %union.rec*, %union.rec** %x.addr, align 8
  %os294 = bitcast %union.rec* %40 to %struct.closure_type*
  %ou495 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os294, i32 0, i32 4
  %osave_style96 = bitcast %union.FOURTH_UNION* %ou495 to %struct.STYLE*
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style96, i32 0, i32 4
  %bf.load97 = load i32, i32* %ooutline, align 4
  %bf.lshr98 = lshr i32 %bf.load97, 22
  %bf.clear99 = and i32 %bf.lshr98, 3
  %41 = load %union.rec*, %union.rec** %res, align 8
  %os1100 = bitcast %union.rec* %41 to %struct.word_type*
  %ou2101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 2
  %os22102 = bitcast %union.SECOND_UNION* %ou2101 to %struct.anon.1*
  %42 = bitcast %struct.anon.1* %os22102 to i32*
  %bf.load103 = load i32, i32* %42, align 4
  %bf.value104 = and i32 %bf.clear99, 1
  %bf.shl105 = shl i32 %bf.value104, 22
  %bf.clear106 = and i32 %bf.load103, -4194305
  %bf.set107 = or i32 %bf.clear106, %bf.shl105
  store i32 %bf.set107, i32* %42, align 4
  %43 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2108 = bitcast %union.rec* %43 to %struct.closure_type*
  %ou4109 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2108, i32 0, i32 4
  %osave_style110 = bitcast %union.FOURTH_UNION* %ou4109 to %struct.STYLE*
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style110, i32 0, i32 4
  %bf.load111 = load i32, i32* %olanguage, align 4
  %bf.lshr112 = lshr i32 %bf.load111, 24
  %bf.clear113 = and i32 %bf.lshr112, 63
  %44 = load %union.rec*, %union.rec** %res, align 8
  %os1114 = bitcast %union.rec* %44 to %struct.word_type*
  %ou2115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 2
  %os22116 = bitcast %union.SECOND_UNION* %ou2115 to %struct.anon.1*
  %45 = bitcast %struct.anon.1* %os22116 to i32*
  %bf.load117 = load i32, i32* %45, align 4
  %bf.value118 = and i32 %bf.clear113, 63
  %bf.shl119 = shl i32 %bf.value118, 23
  %bf.clear120 = and i32 %bf.load117, -528482305
  %bf.set121 = or i32 %bf.clear120, %bf.shl119
  store i32 %bf.set121, i32* %45, align 4
  %46 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2122 = bitcast %union.rec* %46 to %struct.closure_type*
  %ou4123 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2122, i32 0, i32 4
  %osave_style124 = bitcast %union.FOURTH_UNION* %ou4123 to %struct.STYLE*
  %osu2125 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style124, i32 0, i32 1
  %oss2126 = bitcast %union.anon.10* %osu2125 to %struct.anon.11*
  %47 = bitcast %struct.anon.11* %oss2126 to i8*
  %bf.load127 = load i8, i8* %47, align 4
  %bf.clear128 = and i8 %bf.load127, 3
  %bf.cast129 = zext i8 %bf.clear128 to i32
  %cmp130 = icmp eq i32 %bf.cast129, 2
  %conv131 = zext i1 %cmp130 to i32
  %48 = load %union.rec*, %union.rec** %res, align 8
  %os1132 = bitcast %union.rec* %48 to %struct.word_type*
  %ou2133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 2
  %os22134 = bitcast %union.SECOND_UNION* %ou2133 to %struct.anon.1*
  %49 = bitcast %struct.anon.1* %os22134 to i32*
  %bf.load135 = load i32, i32* %49, align 4
  %bf.value136 = and i32 %conv131, 1
  %bf.shl137 = shl i32 %bf.value136, 31
  %bf.clear138 = and i32 %bf.load135, 2147483647
  %bf.set139 = or i32 %bf.clear138, %bf.shl137
  store i32 %bf.set139, i32* %49, align 4
  %50 = load %union.rec*, %union.rec** %res, align 8
  %os1140 = bitcast %union.rec* %50 to %struct.word_type*
  %ou3141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 3
  %os31142 = bitcast %union.THIRD_UNION* %ou3141 to %struct.anon.6*
  %ofwd143 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31142, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd143, i32 0, i64 0
  store i32 0, i32* %arrayidx144, align 4
  %51 = load %union.rec*, %union.rec** %res, align 8
  %os1145 = bitcast %union.rec* %51 to %struct.word_type*
  %ou3146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 3
  %os31147 = bitcast %union.THIRD_UNION* %ou3146 to %struct.anon.6*
  %oback148 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x i32], [2 x i32]* %oback148, i32 0, i64 0
  store i32 0, i32* %arrayidx149, align 4
  %52 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %52, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1150 = bitcast %union.rec* %53 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 1
  %54 = load %union.rec*, %union.rec** %osucc, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp152 = icmp eq %union.rec* %54, %55
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %if.then.63
  br label %cond.end.183

cond.false.155:                                   ; preds = %if.then.63
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1156 = bitcast %union.rec* %56 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 1
  %osucc159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %osucc159, align 8
  store %union.rec* %57, %union.rec** @zz_res, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1160 = bitcast %union.rec* %58 to %struct.word_type*
  %olist161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist161, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx162, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %opred, align 8
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1163 = bitcast %union.rec* %60 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 1
  %opred166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 0
  store %union.rec* %59, %union.rec** %opred166, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %62 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 1
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred170, align 8
  %os1171 = bitcast %union.rec* %63 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 1
  %osucc174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 1
  store %union.rec* %61, %union.rec** %osucc174, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %65 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 1
  %osucc178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc178, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1179 = bitcast %union.rec* %66 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 1
  %opred182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred182, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.155, %cond.true.154
  %cond184 = phi %union.rec* [ null, %cond.true.154 ], [ %67, %cond.false.155 ]
  store %union.rec* %cond184, %union.rec** @xx_tmp, align 8
  %68 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %68, %union.rec** @zz_res, align 8
  %69 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %69, %union.rec** @zz_hold, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp185 = icmp eq %union.rec* %70, null
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.end.183
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.223

cond.false.188:                                   ; preds = %cond.end.183
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp189 = icmp eq %union.rec* %72, null
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.false.188
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.221

cond.false.192:                                   ; preds = %cond.false.188
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %74 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 1
  %opred196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %opred196, align 8
  store %union.rec* %75, %union.rec** @zz_tmp, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1197 = bitcast %union.rec* %76 to %struct.word_type*
  %olist198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist198, i32 0, i64 1
  %opred200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx199, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %opred200, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1201 = bitcast %union.rec* %78 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  store %union.rec* %77, %union.rec** %opred204, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1205 = bitcast %union.rec* %80 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 1
  %opred208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred208, align 8
  %os1209 = bitcast %union.rec* %81 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 1
  %osucc212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 1
  store %union.rec* %79, %union.rec** %osucc212, align 8
  %82 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1213 = bitcast %union.rec* %83 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 1
  %opred216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 0
  store %union.rec* %82, %union.rec** %opred216, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %85 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1217 = bitcast %union.rec* %85 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 1
  %osucc220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 1
  store %union.rec* %84, %union.rec** %osucc220, align 8
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.192, %cond.true.191
  %cond222 = phi %union.rec* [ %73, %cond.true.191 ], [ %84, %cond.false.192 ]
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.end.221, %cond.true.187
  %cond224 = phi %union.rec* [ %71, %cond.true.187 ], [ %cond222, %cond.end.221 ]
  %86 = load %union.rec*, %union.rec** %x.addr, align 8
  %call225 = call i32 @DisposeObject(%union.rec* %86)
  %87 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %87, %union.rec** %retval
  br label %return

if.end.226:                                       ; preds = %if.end.52
  br label %if.end.228

if.else.227:                                      ; preds = %if.end
  store i32 0, i32* %etc_width, align 4
  store i32 0, i32* %max_width, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.227, %if.end.226
  %88 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv229 = zext i8 %88 to i32
  store i32 %conv229, i32* @zz_size, align 4
  %conv230 = sext i32 %conv229 to i64
  %cmp231 = icmp uge i64 %conv230, 265
  br i1 %cmp231, label %if.then.233, label %if.else.235

if.then.233:                                      ; preds = %if.end.228
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call234 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %89)
  br label %if.end.251

if.else.235:                                      ; preds = %if.end.228
  %90 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %90 to i64
  %arrayidx236 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %91 = load %union.rec*, %union.rec** %arrayidx236, align 8
  %cmp237 = icmp eq %union.rec* %91, null
  br i1 %cmp237, label %if.then.239, label %if.else.241

if.then.239:                                      ; preds = %if.else.235
  %92 = load i32, i32* @zz_size, align 4
  %93 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call240 = call %union.rec* @GetMemory(i32 %92, %struct.FILE_POS* %93)
  store %union.rec* %call240, %union.rec** @zz_hold, align 8
  br label %if.end.250

if.else.241:                                      ; preds = %if.else.235
  %94 = load i32, i32* @zz_size, align 4
  %idxprom242 = sext i32 %94 to i64
  %arrayidx243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom242
  %95 = load %union.rec*, %union.rec** %arrayidx243, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1244 = bitcast %union.rec* %96 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 0
  %opred247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred247, align 8
  %98 = load i32, i32* @zz_size, align 4
  %idxprom248 = sext i32 %98 to i64
  %arrayidx249 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom248
  store %union.rec* %97, %union.rec** %arrayidx249, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.241, %if.then.239
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.233
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1252 = bitcast %union.rec* %99 to %struct.word_type*
  %ou1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 1
  %os11254 = bitcast %union.FIRST_UNION* %ou1253 to %struct.anon*
  %otype255 = getelementptr inbounds %struct.anon, %struct.anon* %os11254, i32 0, i32 0
  store i8 1, i8* %otype255, align 1
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1256 = bitcast %union.rec* %101 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 1
  %osucc259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc259, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1260 = bitcast %union.rec* %102 to %struct.word_type*
  %olist261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 0
  %arrayidx262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist261, i32 0, i64 1
  %opred263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx262, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred263, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1264 = bitcast %union.rec* %103 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %osucc267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc267, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1268 = bitcast %union.rec* %104 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 0
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred271, align 8
  store %union.rec* %100, %union.rec** %gp, align 8
  %105 = load %union.rec*, %union.rec** %gp, align 8
  %os1272 = bitcast %union.rec* %105 to %struct.word_type*
  %ou2273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2273 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  store i8 1, i8* %ohspace, align 1
  %106 = load %union.rec*, %union.rec** %gp, align 8
  %os1274 = bitcast %union.rec* %106 to %struct.word_type*
  %ou2275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 2
  %os21276 = bitcast %union.SECOND_UNION* %ou2275 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21276, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %107 = load %union.rec*, %union.rec** %gp, align 8
  %os5 = bitcast %union.rec* %107 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %108 = bitcast %struct.GAP* %ogap to i16*
  %bf.load277 = load i16, i16* %108, align 4
  %bf.clear278 = and i16 %bf.load277, -129
  store i16 %bf.clear278, i16* %108, align 4
  %109 = load %union.rec*, %union.rec** %gp, align 8
  %os5279 = bitcast %union.rec* %109 to %struct.gapobj_type*
  %ogap280 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5279, i32 0, i32 3
  %110 = bitcast %struct.GAP* %ogap280 to i16*
  %bf.load281 = load i16, i16* %110, align 4
  %bf.clear282 = and i16 %bf.load281, -257
  store i16 %bf.clear282, i16* %110, align 4
  %111 = load %union.rec*, %union.rec** %gp, align 8
  %os5283 = bitcast %union.rec* %111 to %struct.gapobj_type*
  %ogap284 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5283, i32 0, i32 3
  %112 = bitcast %struct.GAP* %ogap284 to i16*
  %bf.load285 = load i16, i16* %112, align 4
  %bf.clear286 = and i16 %bf.load285, -513
  %bf.set287 = or i16 %bf.clear286, 512
  store i16 %bf.set287, i16* %112, align 4
  %113 = load %union.rec*, %union.rec** %gp, align 8
  %os5288 = bitcast %union.rec* %113 to %struct.gapobj_type*
  %ogap289 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5288, i32 0, i32 3
  %114 = bitcast %struct.GAP* %ogap289 to i16*
  %bf.load290 = load i16, i16* %114, align 4
  %bf.clear291 = and i16 %bf.load290, -7169
  %bf.set292 = or i16 %bf.clear291, 3072
  store i16 %bf.set292, i16* %114, align 4
  %115 = load %union.rec*, %union.rec** %gp, align 8
  %os5293 = bitcast %union.rec* %115 to %struct.gapobj_type*
  %ogap294 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5293, i32 0, i32 3
  %116 = bitcast %struct.GAP* %ogap294 to i16*
  %bf.load295 = load i16, i16* %116, align 4
  %bf.clear296 = and i16 %bf.load295, 8191
  %bf.set297 = or i16 %bf.clear296, -16384
  store i16 %bf.set297, i16* %116, align 4
  %117 = load %union.rec*, %union.rec** %gp, align 8
  %os5298 = bitcast %union.rec* %117 to %struct.gapobj_type*
  %ogap299 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5298, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap299, i32 0, i32 1
  store i16 4096, i16* %owidth, align 2
  %118 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1300 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 1
  %ofpos302 = bitcast %union.FIRST_UNION* %ou1301 to %struct.FILE_POS*
  %call303 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.FILE_POS* %ofpos302)
  store %union.rec* %call303, %union.rec** %tmp, align 8
  %119 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv304 = zext i8 %119 to i32
  store i32 %conv304, i32* @zz_size, align 4
  %conv305 = sext i32 %conv304 to i64
  %cmp306 = icmp uge i64 %conv305, 265
  br i1 %cmp306, label %if.then.308, label %if.else.310

if.then.308:                                      ; preds = %if.end.251
  %120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call309 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %120)
  br label %if.end.327

if.else.310:                                      ; preds = %if.end.251
  %121 = load i32, i32* @zz_size, align 4
  %idxprom311 = sext i32 %121 to i64
  %arrayidx312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom311
  %122 = load %union.rec*, %union.rec** %arrayidx312, align 8
  %cmp313 = icmp eq %union.rec* %122, null
  br i1 %cmp313, label %if.then.315, label %if.else.317

if.then.315:                                      ; preds = %if.else.310
  %123 = load i32, i32* @zz_size, align 4
  %124 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call316 = call %union.rec* @GetMemory(i32 %123, %struct.FILE_POS* %124)
  store %union.rec* %call316, %union.rec** @zz_hold, align 8
  br label %if.end.326

if.else.317:                                      ; preds = %if.else.310
  %125 = load i32, i32* @zz_size, align 4
  %idxprom318 = sext i32 %125 to i64
  %arrayidx319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom318
  %126 = load %union.rec*, %union.rec** %arrayidx319, align 8
  store %union.rec* %126, %union.rec** @zz_hold, align 8
  store %union.rec* %126, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %127 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 0
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %opred323, align 8
  %129 = load i32, i32* @zz_size, align 4
  %idxprom324 = sext i32 %129 to i64
  %arrayidx325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom324
  store %union.rec* %128, %union.rec** %arrayidx325, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.317, %if.then.315
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.308
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %130 to %struct.word_type*
  %ou1329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 1
  %os11330 = bitcast %union.FIRST_UNION* %ou1329 to %struct.anon*
  %otype331 = getelementptr inbounds %struct.anon, %struct.anon* %os11330, i32 0, i32 0
  store i8 0, i8* %otype331, align 1
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %132 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  store %union.rec* %131, %union.rec** %osucc335, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %133 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %131, %union.rec** %opred339, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %134 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 0
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  store %union.rec* %131, %union.rec** %osucc343, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %135 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 0
  %opred347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 0
  store %union.rec* %131, %union.rec** %opred347, align 8
  store %union.rec* %131, %union.rec** @xx_link, align 8
  %136 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %136, %union.rec** @zz_res, align 8
  %137 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %137, %union.rec** @zz_hold, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp348 = icmp eq %union.rec* %138, null
  br i1 %cmp348, label %cond.true.350, label %cond.false.351

cond.true.350:                                    ; preds = %if.end.327
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.386

cond.false.351:                                   ; preds = %if.end.327
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp352 = icmp eq %union.rec* %140, null
  br i1 %cmp352, label %cond.true.354, label %cond.false.355

cond.true.354:                                    ; preds = %cond.false.351
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.384

cond.false.355:                                   ; preds = %cond.false.351
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1356 = bitcast %union.rec* %142 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 0
  %opred359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %opred359, align 8
  store %union.rec* %143, %union.rec** @zz_tmp, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1360 = bitcast %union.rec* %144 to %struct.word_type*
  %olist361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1360, i32 0, i32 0
  %arrayidx362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist361, i32 0, i64 0
  %opred363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx362, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %opred363, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1364 = bitcast %union.rec* %146 to %struct.word_type*
  %olist365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist365, i32 0, i64 0
  %opred367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx366, i32 0, i32 0
  store %union.rec* %145, %union.rec** %opred367, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1368 = bitcast %union.rec* %148 to %struct.word_type*
  %olist369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1368, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist369, i32 0, i64 0
  %opred371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx370, i32 0, i32 0
  %149 = load %union.rec*, %union.rec** %opred371, align 8
  %os1372 = bitcast %union.rec* %149 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 0
  %osucc375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc375, align 8
  %150 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1376 = bitcast %union.rec* %151 to %struct.word_type*
  %olist377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist377, i32 0, i64 0
  %opred379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx378, i32 0, i32 0
  store %union.rec* %150, %union.rec** %opred379, align 8
  %152 = load %union.rec*, %union.rec** @zz_res, align 8
  %153 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1380 = bitcast %union.rec* %153 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 0
  %osucc383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 1
  store %union.rec* %152, %union.rec** %osucc383, align 8
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.false.355, %cond.true.354
  %cond385 = phi %union.rec* [ %141, %cond.true.354 ], [ %152, %cond.false.355 ]
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.end.384, %cond.true.350
  %cond387 = phi %union.rec* [ %139, %cond.true.350 ], [ %cond385, %cond.end.384 ]
  %154 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %154, %union.rec** @zz_res, align 8
  %155 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %155, %union.rec** @zz_hold, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp388 = icmp eq %union.rec* %156, null
  br i1 %cmp388, label %cond.true.390, label %cond.false.391

cond.true.390:                                    ; preds = %cond.end.386
  %157 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.426

cond.false.391:                                   ; preds = %cond.end.386
  %158 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp392 = icmp eq %union.rec* %158, null
  br i1 %cmp392, label %cond.true.394, label %cond.false.395

cond.true.394:                                    ; preds = %cond.false.391
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.424

cond.false.395:                                   ; preds = %cond.false.391
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1396 = bitcast %union.rec* %160 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 1
  %opred399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 0
  %161 = load %union.rec*, %union.rec** %opred399, align 8
  store %union.rec* %161, %union.rec** @zz_tmp, align 8
  %162 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1400 = bitcast %union.rec* %162 to %struct.word_type*
  %olist401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist401, i32 0, i64 1
  %opred403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx402, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %opred403, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1404 = bitcast %union.rec* %164 to %struct.word_type*
  %olist405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1404, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist405, i32 0, i64 1
  %opred407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx406, i32 0, i32 0
  store %union.rec* %163, %union.rec** %opred407, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1408 = bitcast %union.rec* %166 to %struct.word_type*
  %olist409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist409, i32 0, i64 1
  %opred411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx410, i32 0, i32 0
  %167 = load %union.rec*, %union.rec** %opred411, align 8
  %os1412 = bitcast %union.rec* %167 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 1
  %osucc415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 1
  store %union.rec* %165, %union.rec** %osucc415, align 8
  %168 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1416 = bitcast %union.rec* %169 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 1
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  store %union.rec* %168, %union.rec** %opred419, align 8
  %170 = load %union.rec*, %union.rec** @zz_res, align 8
  %171 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1420 = bitcast %union.rec* %171 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 1
  %osucc423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 1
  store %union.rec* %170, %union.rec** %osucc423, align 8
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.395, %cond.true.394
  %cond425 = phi %union.rec* [ %159, %cond.true.394 ], [ %170, %cond.false.395 ]
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.end.424, %cond.true.390
  %cond427 = phi %union.rec* [ %157, %cond.true.390 ], [ %cond425, %cond.end.424 ]
  %172 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv428 = zext i8 %172 to i32
  store i32 %conv428, i32* @zz_size, align 4
  %conv429 = sext i32 %conv428 to i64
  %cmp430 = icmp uge i64 %conv429, 265
  br i1 %cmp430, label %if.then.432, label %if.else.434

if.then.432:                                      ; preds = %cond.end.426
  %173 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call433 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %173)
  br label %if.end.451

if.else.434:                                      ; preds = %cond.end.426
  %174 = load i32, i32* @zz_size, align 4
  %idxprom435 = sext i32 %174 to i64
  %arrayidx436 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom435
  %175 = load %union.rec*, %union.rec** %arrayidx436, align 8
  %cmp437 = icmp eq %union.rec* %175, null
  br i1 %cmp437, label %if.then.439, label %if.else.441

if.then.439:                                      ; preds = %if.else.434
  %176 = load i32, i32* @zz_size, align 4
  %177 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call440 = call %union.rec* @GetMemory(i32 %176, %struct.FILE_POS* %177)
  store %union.rec* %call440, %union.rec** @zz_hold, align 8
  br label %if.end.450

if.else.441:                                      ; preds = %if.else.434
  %178 = load i32, i32* @zz_size, align 4
  %idxprom442 = sext i32 %178 to i64
  %arrayidx443 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom442
  %179 = load %union.rec*, %union.rec** %arrayidx443, align 8
  store %union.rec* %179, %union.rec** @zz_hold, align 8
  store %union.rec* %179, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1444 = bitcast %union.rec* %180 to %struct.word_type*
  %olist445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1444, i32 0, i32 0
  %arrayidx446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist445, i32 0, i64 0
  %opred447 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx446, i32 0, i32 0
  %181 = load %union.rec*, %union.rec** %opred447, align 8
  %182 = load i32, i32* @zz_size, align 4
  %idxprom448 = sext i32 %182 to i64
  %arrayidx449 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom448
  store %union.rec* %181, %union.rec** %arrayidx449, align 8
  br label %if.end.450

if.end.450:                                       ; preds = %if.else.441, %if.then.439
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.432
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1452 = bitcast %union.rec* %183 to %struct.word_type*
  %ou1453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 1
  %os11454 = bitcast %union.FIRST_UNION* %ou1453 to %struct.anon*
  %otype455 = getelementptr inbounds %struct.anon, %struct.anon* %os11454, i32 0, i32 0
  store i8 0, i8* %otype455, align 1
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1456 = bitcast %union.rec* %185 to %struct.word_type*
  %olist457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist457, i32 0, i64 1
  %osucc459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx458, i32 0, i32 1
  store %union.rec* %184, %union.rec** %osucc459, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1460 = bitcast %union.rec* %186 to %struct.word_type*
  %olist461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 0
  %arrayidx462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist461, i32 0, i64 1
  %opred463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx462, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred463, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1464 = bitcast %union.rec* %187 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 0
  %osucc467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 1
  store %union.rec* %184, %union.rec** %osucc467, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1468 = bitcast %union.rec* %188 to %struct.word_type*
  %olist469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1468, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist469, i32 0, i64 0
  %opred471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx470, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred471, align 8
  store %union.rec* %184, %union.rec** @xx_link, align 8
  %189 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %189, %union.rec** @zz_res, align 8
  %190 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %190, %union.rec** @zz_hold, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp472 = icmp eq %union.rec* %191, null
  br i1 %cmp472, label %cond.true.474, label %cond.false.475

cond.true.474:                                    ; preds = %if.end.451
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.510

cond.false.475:                                   ; preds = %if.end.451
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp476 = icmp eq %union.rec* %193, null
  br i1 %cmp476, label %cond.true.478, label %cond.false.479

cond.true.478:                                    ; preds = %cond.false.475
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.508

cond.false.479:                                   ; preds = %cond.false.475
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1480 = bitcast %union.rec* %195 to %struct.word_type*
  %olist481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist481, i32 0, i64 0
  %opred483 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx482, i32 0, i32 0
  %196 = load %union.rec*, %union.rec** %opred483, align 8
  store %union.rec* %196, %union.rec** @zz_tmp, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1484 = bitcast %union.rec* %197 to %struct.word_type*
  %olist485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1484, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist485, i32 0, i64 0
  %opred487 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx486, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %opred487, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1488 = bitcast %union.rec* %199 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 0
  %opred491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 0
  store %union.rec* %198, %union.rec** %opred491, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1492 = bitcast %union.rec* %201 to %struct.word_type*
  %olist493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist493, i32 0, i64 0
  %opred495 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx494, i32 0, i32 0
  %202 = load %union.rec*, %union.rec** %opred495, align 8
  %os1496 = bitcast %union.rec* %202 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 0
  %osucc499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 1
  store %union.rec* %200, %union.rec** %osucc499, align 8
  %203 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1500 = bitcast %union.rec* %204 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 0
  %opred503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 0
  store %union.rec* %203, %union.rec** %opred503, align 8
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  %206 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1504 = bitcast %union.rec* %206 to %struct.word_type*
  %olist505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist505, i32 0, i64 0
  %osucc507 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx506, i32 0, i32 1
  store %union.rec* %205, %union.rec** %osucc507, align 8
  br label %cond.end.508

cond.end.508:                                     ; preds = %cond.false.479, %cond.true.478
  %cond509 = phi %union.rec* [ %194, %cond.true.478 ], [ %205, %cond.false.479 ]
  br label %cond.end.510

cond.end.510:                                     ; preds = %cond.end.508, %cond.true.474
  %cond511 = phi %union.rec* [ %192, %cond.true.474 ], [ %cond509, %cond.end.508 ]
  %207 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %207, %union.rec** @zz_res, align 8
  %208 = load %union.rec*, %union.rec** %gp, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp512 = icmp eq %union.rec* %209, null
  br i1 %cmp512, label %cond.true.514, label %cond.false.515

cond.true.514:                                    ; preds = %cond.end.510
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.550

cond.false.515:                                   ; preds = %cond.end.510
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp516 = icmp eq %union.rec* %211, null
  br i1 %cmp516, label %cond.true.518, label %cond.false.519

cond.true.518:                                    ; preds = %cond.false.515
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.548

cond.false.519:                                   ; preds = %cond.false.515
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1520 = bitcast %union.rec* %213 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 1
  %opred523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %opred523, align 8
  store %union.rec* %214, %union.rec** @zz_tmp, align 8
  %215 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1524 = bitcast %union.rec* %215 to %struct.word_type*
  %olist525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist525, i32 0, i64 1
  %opred527 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx526, i32 0, i32 0
  %216 = load %union.rec*, %union.rec** %opred527, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1528 = bitcast %union.rec* %217 to %struct.word_type*
  %olist529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 0
  %arrayidx530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist529, i32 0, i64 1
  %opred531 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx530, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred531, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1532 = bitcast %union.rec* %219 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 1
  %opred535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 0
  %220 = load %union.rec*, %union.rec** %opred535, align 8
  %os1536 = bitcast %union.rec* %220 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 1
  %osucc539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 1
  store %union.rec* %218, %union.rec** %osucc539, align 8
  %221 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1540 = bitcast %union.rec* %222 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 1
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  store %union.rec* %221, %union.rec** %opred543, align 8
  %223 = load %union.rec*, %union.rec** @zz_res, align 8
  %224 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1544 = bitcast %union.rec* %224 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 1
  %osucc547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 1
  store %union.rec* %223, %union.rec** %osucc547, align 8
  br label %cond.end.548

cond.end.548:                                     ; preds = %cond.false.519, %cond.true.518
  %cond549 = phi %union.rec* [ %212, %cond.true.518 ], [ %223, %cond.false.519 ]
  br label %cond.end.550

cond.end.550:                                     ; preds = %cond.end.548, %cond.true.514
  %cond551 = phi %union.rec* [ %210, %cond.true.514 ], [ %cond549, %cond.end.548 ]
  %225 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1552 = bitcast %union.rec* %225 to %struct.word_type*
  %ou1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 1
  %ofpos554 = bitcast %union.FIRST_UNION* %ou1553 to %struct.FILE_POS*
  %call555 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %ofpos554)
  store %union.rec* %call555, %union.rec** %tmp, align 8
  %226 = load %union.rec*, %union.rec** %tmp, align 8
  %os1556 = bitcast %union.rec* %226 to %struct.word_type*
  %ou3557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 3
  %os31558 = bitcast %union.THIRD_UNION* %ou3557 to %struct.anon.6*
  %ofwd559 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31558, i32 0, i32 1
  %arrayidx560 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd559, i32 0, i64 1
  store i32 0, i32* %arrayidx560, align 4
  %227 = load %union.rec*, %union.rec** %tmp, align 8
  %os1561 = bitcast %union.rec* %227 to %struct.word_type*
  %ou3562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 3
  %os31563 = bitcast %union.THIRD_UNION* %ou3562 to %struct.anon.6*
  %oback564 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31563, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [2 x i32], [2 x i32]* %oback564, i32 0, i64 1
  store i32 0, i32* %arrayidx565, align 4
  %228 = load %union.rec*, %union.rec** %tmp, align 8
  %os1566 = bitcast %union.rec* %228 to %struct.word_type*
  %ou3567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1566, i32 0, i32 3
  %os31568 = bitcast %union.THIRD_UNION* %ou3567 to %struct.anon.6*
  %ofwd569 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31568, i32 0, i32 1
  %arrayidx570 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd569, i32 0, i64 0
  store i32 0, i32* %arrayidx570, align 4
  %229 = load %union.rec*, %union.rec** %tmp, align 8
  %os1571 = bitcast %union.rec* %229 to %struct.word_type*
  %ou3572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 3
  %os31573 = bitcast %union.THIRD_UNION* %ou3572 to %struct.anon.6*
  %oback574 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x i32], [2 x i32]* %oback574, i32 0, i64 0
  store i32 0, i32* %arrayidx575, align 4
  %230 = load %union.rec*, %union.rec** %tmp, align 8
  %os1576 = bitcast %union.rec* %230 to %struct.word_type*
  %ou2577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 2
  %os22578 = bitcast %union.SECOND_UNION* %ou2577 to %struct.anon.1*
  %231 = bitcast %struct.anon.1* %os22578 to i32*
  %bf.load579 = load i32, i32* %231, align 4
  %bf.clear580 = and i32 %bf.load579, -4096
  store i32 %bf.clear580, i32* %231, align 4
  %232 = load %union.rec*, %union.rec** %tmp, align 8
  %os1581 = bitcast %union.rec* %232 to %struct.word_type*
  %ou2582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 2
  %os22583 = bitcast %union.SECOND_UNION* %ou2582 to %struct.anon.1*
  %233 = bitcast %struct.anon.1* %os22583 to i32*
  %bf.load584 = load i32, i32* %233, align 4
  %bf.clear585 = and i32 %bf.load584, -4190209
  store i32 %bf.clear585, i32* %233, align 4
  %234 = load %union.rec*, %union.rec** %tmp, align 8
  %os1586 = bitcast %union.rec* %234 to %struct.word_type*
  %ou2587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1586, i32 0, i32 2
  %os22588 = bitcast %union.SECOND_UNION* %ou2587 to %struct.anon.1*
  %235 = bitcast %struct.anon.1* %os22588 to i32*
  %bf.load589 = load i32, i32* %235, align 4
  %bf.clear590 = and i32 %bf.load589, -4194305
  store i32 %bf.clear590, i32* %235, align 4
  %236 = load %union.rec*, %union.rec** %tmp, align 8
  %os1591 = bitcast %union.rec* %236 to %struct.word_type*
  %ou2592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 2
  %os22593 = bitcast %union.SECOND_UNION* %ou2592 to %struct.anon.1*
  %237 = bitcast %struct.anon.1* %os22593 to i32*
  %bf.load594 = load i32, i32* %237, align 4
  %bf.clear595 = and i32 %bf.load594, -528482305
  store i32 %bf.clear595, i32* %237, align 4
  %238 = load %union.rec*, %union.rec** %tmp, align 8
  %os1596 = bitcast %union.rec* %238 to %struct.word_type*
  %ou2597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 2
  %os22598 = bitcast %union.SECOND_UNION* %ou2597 to %struct.anon.1*
  %239 = bitcast %struct.anon.1* %os22598 to i32*
  %bf.load599 = load i32, i32* %239, align 4
  %bf.clear600 = and i32 %bf.load599, 2147483647
  store i32 %bf.clear600, i32* %239, align 4
  %240 = load %union.rec*, %union.rec** %tmp, align 8
  %os1601 = bitcast %union.rec* %240 to %struct.word_type*
  %ou2602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 2
  %os22603 = bitcast %union.SECOND_UNION* %ou2602 to %struct.anon.1*
  %241 = bitcast %struct.anon.1* %os22603 to i32*
  %bf.load604 = load i32, i32* %241, align 4
  %bf.clear605 = and i32 %bf.load604, -1610612737
  %bf.set606 = or i32 %bf.clear605, 536870912
  store i32 %bf.set606, i32* %241, align 4
  %242 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv607 = zext i8 %242 to i32
  store i32 %conv607, i32* @zz_size, align 4
  %conv608 = sext i32 %conv607 to i64
  %cmp609 = icmp uge i64 %conv608, 265
  br i1 %cmp609, label %if.then.611, label %if.else.613

if.then.611:                                      ; preds = %cond.end.550
  %243 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call612 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %243)
  br label %if.end.630

if.else.613:                                      ; preds = %cond.end.550
  %244 = load i32, i32* @zz_size, align 4
  %idxprom614 = sext i32 %244 to i64
  %arrayidx615 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom614
  %245 = load %union.rec*, %union.rec** %arrayidx615, align 8
  %cmp616 = icmp eq %union.rec* %245, null
  br i1 %cmp616, label %if.then.618, label %if.else.620

if.then.618:                                      ; preds = %if.else.613
  %246 = load i32, i32* @zz_size, align 4
  %247 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call619 = call %union.rec* @GetMemory(i32 %246, %struct.FILE_POS* %247)
  store %union.rec* %call619, %union.rec** @zz_hold, align 8
  br label %if.end.629

if.else.620:                                      ; preds = %if.else.613
  %248 = load i32, i32* @zz_size, align 4
  %idxprom621 = sext i32 %248 to i64
  %arrayidx622 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom621
  %249 = load %union.rec*, %union.rec** %arrayidx622, align 8
  store %union.rec* %249, %union.rec** @zz_hold, align 8
  store %union.rec* %249, %union.rec** @zz_hold, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1623 = bitcast %union.rec* %250 to %struct.word_type*
  %olist624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1623, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist624, i32 0, i64 0
  %opred626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx625, i32 0, i32 0
  %251 = load %union.rec*, %union.rec** %opred626, align 8
  %252 = load i32, i32* @zz_size, align 4
  %idxprom627 = sext i32 %252 to i64
  %arrayidx628 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom627
  store %union.rec* %251, %union.rec** %arrayidx628, align 8
  br label %if.end.629

if.end.629:                                       ; preds = %if.else.620, %if.then.618
  br label %if.end.630

if.end.630:                                       ; preds = %if.end.629, %if.then.611
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1631 = bitcast %union.rec* %253 to %struct.word_type*
  %ou1632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1631, i32 0, i32 1
  %os11633 = bitcast %union.FIRST_UNION* %ou1632 to %struct.anon*
  %otype634 = getelementptr inbounds %struct.anon, %struct.anon* %os11633, i32 0, i32 0
  store i8 0, i8* %otype634, align 1
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1635 = bitcast %union.rec* %255 to %struct.word_type*
  %olist636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist636, i32 0, i64 1
  %osucc638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx637, i32 0, i32 1
  store %union.rec* %254, %union.rec** %osucc638, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1639 = bitcast %union.rec* %256 to %struct.word_type*
  %olist640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist640, i32 0, i64 1
  %opred642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx641, i32 0, i32 0
  store %union.rec* %254, %union.rec** %opred642, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1643 = bitcast %union.rec* %257 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 0
  %osucc646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 1
  store %union.rec* %254, %union.rec** %osucc646, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1647 = bitcast %union.rec* %258 to %struct.word_type*
  %olist648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1647, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist648, i32 0, i64 0
  %opred650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx649, i32 0, i32 0
  store %union.rec* %254, %union.rec** %opred650, align 8
  store %union.rec* %254, %union.rec** @xx_link, align 8
  %259 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %259, %union.rec** @zz_res, align 8
  %260 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %260, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp651 = icmp eq %union.rec* %261, null
  br i1 %cmp651, label %cond.true.653, label %cond.false.654

cond.true.653:                                    ; preds = %if.end.630
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.689

cond.false.654:                                   ; preds = %if.end.630
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp655 = icmp eq %union.rec* %263, null
  br i1 %cmp655, label %cond.true.657, label %cond.false.658

cond.true.657:                                    ; preds = %cond.false.654
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.687

cond.false.658:                                   ; preds = %cond.false.654
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1659 = bitcast %union.rec* %265 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 0
  %opred662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %opred662, align 8
  store %union.rec* %266, %union.rec** @zz_tmp, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1663 = bitcast %union.rec* %267 to %struct.word_type*
  %olist664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 0
  %arrayidx665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist664, i32 0, i64 0
  %opred666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx665, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %opred666, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1667 = bitcast %union.rec* %269 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 0
  %opred670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 0
  store %union.rec* %268, %union.rec** %opred670, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1671 = bitcast %union.rec* %271 to %struct.word_type*
  %olist672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist672, i32 0, i64 0
  %opred674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx673, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %opred674, align 8
  %os1675 = bitcast %union.rec* %272 to %struct.word_type*
  %olist676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist676, i32 0, i64 0
  %osucc678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx677, i32 0, i32 1
  store %union.rec* %270, %union.rec** %osucc678, align 8
  %273 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1679 = bitcast %union.rec* %274 to %struct.word_type*
  %olist680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1679, i32 0, i32 0
  %arrayidx681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist680, i32 0, i64 0
  %opred682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx681, i32 0, i32 0
  store %union.rec* %273, %union.rec** %opred682, align 8
  %275 = load %union.rec*, %union.rec** @zz_res, align 8
  %276 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1683 = bitcast %union.rec* %276 to %struct.word_type*
  %olist684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1683, i32 0, i32 0
  %arrayidx685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist684, i32 0, i64 0
  %osucc686 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx685, i32 0, i32 1
  store %union.rec* %275, %union.rec** %osucc686, align 8
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.false.658, %cond.true.657
  %cond688 = phi %union.rec* [ %264, %cond.true.657 ], [ %275, %cond.false.658 ]
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.end.687, %cond.true.653
  %cond690 = phi %union.rec* [ %262, %cond.true.653 ], [ %cond688, %cond.end.687 ]
  %277 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %277, %union.rec** @zz_res, align 8
  %278 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %278, %union.rec** @zz_hold, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp691 = icmp eq %union.rec* %279, null
  br i1 %cmp691, label %cond.true.693, label %cond.false.694

cond.true.693:                                    ; preds = %cond.end.689
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.729

cond.false.694:                                   ; preds = %cond.end.689
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp695 = icmp eq %union.rec* %281, null
  br i1 %cmp695, label %cond.true.697, label %cond.false.698

cond.true.697:                                    ; preds = %cond.false.694
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.727

cond.false.698:                                   ; preds = %cond.false.694
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1699 = bitcast %union.rec* %283 to %struct.word_type*
  %olist700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist700, i32 0, i64 1
  %opred702 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx701, i32 0, i32 0
  %284 = load %union.rec*, %union.rec** %opred702, align 8
  store %union.rec* %284, %union.rec** @zz_tmp, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1703 = bitcast %union.rec* %285 to %struct.word_type*
  %olist704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist704, i32 0, i64 1
  %opred706 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx705, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %opred706, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1707 = bitcast %union.rec* %287 to %struct.word_type*
  %olist708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1707, i32 0, i32 0
  %arrayidx709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist708, i32 0, i64 1
  %opred710 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx709, i32 0, i32 0
  store %union.rec* %286, %union.rec** %opred710, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1711 = bitcast %union.rec* %289 to %struct.word_type*
  %olist712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1711, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist712, i32 0, i64 1
  %opred714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx713, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred714, align 8
  %os1715 = bitcast %union.rec* %290 to %struct.word_type*
  %olist716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist716, i32 0, i64 1
  %osucc718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx717, i32 0, i32 1
  store %union.rec* %288, %union.rec** %osucc718, align 8
  %291 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1719 = bitcast %union.rec* %292 to %struct.word_type*
  %olist720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1719, i32 0, i32 0
  %arrayidx721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist720, i32 0, i64 1
  %opred722 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx721, i32 0, i32 0
  store %union.rec* %291, %union.rec** %opred722, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %294 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1723 = bitcast %union.rec* %294 to %struct.word_type*
  %olist724 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1723, i32 0, i32 0
  %arrayidx725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist724, i32 0, i64 1
  %osucc726 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx725, i32 0, i32 1
  store %union.rec* %293, %union.rec** %osucc726, align 8
  br label %cond.end.727

cond.end.727:                                     ; preds = %cond.false.698, %cond.true.697
  %cond728 = phi %union.rec* [ %282, %cond.true.697 ], [ %293, %cond.false.698 ]
  br label %cond.end.729

cond.end.729:                                     ; preds = %cond.end.727, %cond.true.693
  %cond730 = phi %union.rec* [ %280, %cond.true.693 ], [ %cond728, %cond.end.727 ]
  %295 = load i32, i32* %extend_unbreakable.addr, align 4
  %tobool = icmp ne i32 %295, 0
  br i1 %tobool, label %if.then.731, label %if.end.1060

if.then.731:                                      ; preds = %cond.end.729
  store i32 1, i32* %jn, align 4
  %296 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1736 = bitcast %union.rec* %296 to %struct.word_type*
  %olist737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1736, i32 0, i32 0
  %arrayidx738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist737, i32 0, i64 0
  %osucc739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx738, i32 0, i32 1
  %297 = load %union.rec*, %union.rec** %osucc739, align 8
  store %union.rec* %297, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.807, %if.then.731
  %298 = load %union.rec*, %union.rec** %link, align 8
  %299 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp740 = icmp ne %union.rec* %298, %299
  br i1 %cmp740, label %for.body, label %for.end.812

for.body:                                         ; preds = %for.cond
  %300 = load %union.rec*, %union.rec** %link, align 8
  %os1742 = bitcast %union.rec* %300 to %struct.word_type*
  %olist743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist743, i32 0, i64 1
  %opred745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx744, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %opred745, align 8
  store %union.rec* %301, %union.rec** %y, align 8
  br label %for.cond.746

for.cond.746:                                     ; preds = %for.inc, %for.body
  %302 = load %union.rec*, %union.rec** %y, align 8
  %os1747 = bitcast %union.rec* %302 to %struct.word_type*
  %ou1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 1
  %os11749 = bitcast %union.FIRST_UNION* %ou1748 to %struct.anon*
  %otype750 = getelementptr inbounds %struct.anon, %struct.anon* %os11749, i32 0, i32 0
  %303 = load i8, i8* %otype750, align 1
  %conv751 = zext i8 %303 to i32
  %cmp752 = icmp eq i32 %conv751, 0
  br i1 %cmp752, label %for.body.754, label %for.end

for.body.754:                                     ; preds = %for.cond.746
  br label %for.inc

for.inc:                                          ; preds = %for.body.754
  %304 = load %union.rec*, %union.rec** %y, align 8
  %os1755 = bitcast %union.rec* %304 to %struct.word_type*
  %olist756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1755, i32 0, i32 0
  %arrayidx757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist756, i32 0, i64 1
  %opred758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx757, i32 0, i32 0
  %305 = load %union.rec*, %union.rec** %opred758, align 8
  store %union.rec* %305, %union.rec** %y, align 8
  br label %for.cond.746

for.end:                                          ; preds = %for.cond.746
  %306 = load %union.rec*, %union.rec** %y, align 8
  %os1759 = bitcast %union.rec* %306 to %struct.word_type*
  %ou1760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1759, i32 0, i32 1
  %os11761 = bitcast %union.FIRST_UNION* %ou1760 to %struct.anon*
  %otype762 = getelementptr inbounds %struct.anon, %struct.anon* %os11761, i32 0, i32 0
  %307 = load i8, i8* %otype762, align 1
  %conv763 = zext i8 %307 to i32
  %cmp764 = icmp eq i32 %conv763, 1
  br i1 %cmp764, label %if.then.766, label %if.else.775

if.then.766:                                      ; preds = %for.end
  %308 = load i32, i32* %jn, align 4
  %tobool767 = icmp ne i32 %308, 0
  br i1 %tobool767, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.766
  %309 = load %union.rec*, %union.rec** %y, align 8
  %os5768 = bitcast %union.rec* %309 to %struct.gapobj_type*
  %ogap769 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5768, i32 0, i32 3
  %310 = bitcast %struct.GAP* %ogap769 to i16*
  %bf.load770 = load i16, i16* %310, align 4
  %bf.lshr771 = lshr i16 %bf.load770, 9
  %bf.clear772 = and i16 %bf.lshr771, 1
  %bf.cast773 = zext i16 %bf.clear772 to i32
  %tobool774 = icmp ne i32 %bf.cast773, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.766
  %311 = phi i1 [ false, %if.then.766 ], [ %tobool774, %land.rhs ]
  %land.ext = zext i1 %311 to i32
  store i32 %land.ext, i32* %jn, align 4
  br label %if.end.806

if.else.775:                                      ; preds = %for.end
  %312 = load %union.rec*, %union.rec** %y, align 8
  %os1776 = bitcast %union.rec* %312 to %struct.word_type*
  %ou1777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 1
  %os11778 = bitcast %union.FIRST_UNION* %ou1777 to %struct.anon*
  %otype779 = getelementptr inbounds %struct.anon, %struct.anon* %os11778, i32 0, i32 0
  %313 = load i8, i8* %otype779, align 1
  %conv780 = zext i8 %313 to i32
  %cmp781 = icmp eq i32 %conv780, 9
  br i1 %cmp781, label %cond.true.783, label %cond.false.786

cond.true.783:                                    ; preds = %if.else.775
  %314 = load %union.rec*, %union.rec** %y, align 8
  %call784 = call i32 @SplitIsDefinite(%union.rec* %314)
  %tobool785 = icmp ne i32 %call784, 0
  br i1 %tobool785, label %if.then.804, label %if.end.805

cond.false.786:                                   ; preds = %if.else.775
  %315 = load %union.rec*, %union.rec** %y, align 8
  %os1787 = bitcast %union.rec* %315 to %struct.word_type*
  %ou1788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1787, i32 0, i32 1
  %os11789 = bitcast %union.FIRST_UNION* %ou1788 to %struct.anon*
  %otype790 = getelementptr inbounds %struct.anon, %struct.anon* %os11789, i32 0, i32 0
  %316 = load i8, i8* %otype790, align 1
  %conv791 = zext i8 %316 to i32
  %cmp792 = icmp sge i32 %conv791, 9
  br i1 %cmp792, label %land.rhs.794, label %land.end.802

land.rhs.794:                                     ; preds = %cond.false.786
  %317 = load %union.rec*, %union.rec** %y, align 8
  %os1795 = bitcast %union.rec* %317 to %struct.word_type*
  %ou1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1795, i32 0, i32 1
  %os11797 = bitcast %union.FIRST_UNION* %ou1796 to %struct.anon*
  %otype798 = getelementptr inbounds %struct.anon, %struct.anon* %os11797, i32 0, i32 0
  %318 = load i8, i8* %otype798, align 1
  %conv799 = zext i8 %318 to i32
  %cmp800 = icmp sle i32 %conv799, 99
  br label %land.end.802

land.end.802:                                     ; preds = %land.rhs.794, %cond.false.786
  %319 = phi i1 [ false, %cond.false.786 ], [ %cmp800, %land.rhs.794 ]
  br i1 %319, label %if.then.804, label %if.end.805

if.then.804:                                      ; preds = %land.end.802, %cond.true.783
  br label %for.end.812

if.end.805:                                       ; preds = %land.end.802, %cond.true.783
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %land.end
  br label %for.inc.807

for.inc.807:                                      ; preds = %if.end.806
  %320 = load %union.rec*, %union.rec** %link, align 8
  %os1808 = bitcast %union.rec* %320 to %struct.word_type*
  %olist809 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1808, i32 0, i32 0
  %arrayidx810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist809, i32 0, i64 0
  %osucc811 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx810, i32 0, i32 1
  %321 = load %union.rec*, %union.rec** %osucc811, align 8
  store %union.rec* %321, %union.rec** %link, align 8
  br label %for.cond

for.end.812:                                      ; preds = %if.then.804, %for.cond
  %322 = load %union.rec*, %union.rec** %link, align 8
  %323 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp813 = icmp ne %union.rec* %322, %323
  br i1 %cmp813, label %if.end.817, label %if.then.815

if.then.815:                                      ; preds = %for.end.812
  %324 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call816 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %324, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.817

if.end.817:                                       ; preds = %if.then.815, %for.end.812
  %325 = load %union.rec*, %union.rec** %y, align 8
  %os1818 = bitcast %union.rec* %325 to %struct.word_type*
  %ou3819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 3
  %os31820 = bitcast %union.THIRD_UNION* %ou3819 to %struct.anon.6*
  %oback821 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31820, i32 0, i32 0
  %arrayidx822 = getelementptr inbounds [2 x i32], [2 x i32]* %oback821, i32 0, i64 0
  %326 = load i32, i32* %arrayidx822, align 4
  %327 = load %union.rec*, %union.rec** %y, align 8
  %os1823 = bitcast %union.rec* %327 to %struct.word_type*
  %ou3824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 3
  %os31825 = bitcast %union.THIRD_UNION* %ou3824 to %struct.anon.6*
  %ofwd826 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31825, i32 0, i32 1
  %arrayidx827 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd826, i32 0, i64 0
  %328 = load i32, i32* %arrayidx827, align 4
  %add828 = add nsw i32 %326, %328
  store i32 %add828, i32* %max_f, align 4
  store i32 %add828, i32* %f733, align 4
  %329 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %329, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %330 = load %union.rec*, %union.rec** %link, align 8
  %os1829 = bitcast %union.rec* %330 to %struct.word_type*
  %olist830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1829, i32 0, i32 0
  %arrayidx831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist830, i32 0, i64 0
  %osucc832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx831, i32 0, i32 1
  %331 = load %union.rec*, %union.rec** %osucc832, align 8
  store %union.rec* %331, %union.rec** %link, align 8
  br label %for.cond.833

for.cond.833:                                     ; preds = %for.inc.912, %if.end.817
  %332 = load %union.rec*, %union.rec** %link, align 8
  %333 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp834 = icmp ne %union.rec* %332, %333
  br i1 %cmp834, label %for.body.836, label %for.end.917

for.body.836:                                     ; preds = %for.cond.833
  %334 = load %union.rec*, %union.rec** %link, align 8
  %os1837 = bitcast %union.rec* %334 to %struct.word_type*
  %olist838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 0
  %arrayidx839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist838, i32 0, i64 1
  %opred840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx839, i32 0, i32 0
  %335 = load %union.rec*, %union.rec** %opred840, align 8
  store %union.rec* %335, %union.rec** %y, align 8
  br label %for.cond.841

for.cond.841:                                     ; preds = %for.inc.850, %for.body.836
  %336 = load %union.rec*, %union.rec** %y, align 8
  %os1842 = bitcast %union.rec* %336 to %struct.word_type*
  %ou1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1842, i32 0, i32 1
  %os11844 = bitcast %union.FIRST_UNION* %ou1843 to %struct.anon*
  %otype845 = getelementptr inbounds %struct.anon, %struct.anon* %os11844, i32 0, i32 0
  %337 = load i8, i8* %otype845, align 1
  %conv846 = zext i8 %337 to i32
  %cmp847 = icmp eq i32 %conv846, 0
  br i1 %cmp847, label %for.body.849, label %for.end.855

for.body.849:                                     ; preds = %for.cond.841
  br label %for.inc.850

for.inc.850:                                      ; preds = %for.body.849
  %338 = load %union.rec*, %union.rec** %y, align 8
  %os1851 = bitcast %union.rec* %338 to %struct.word_type*
  %olist852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 0
  %arrayidx853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist852, i32 0, i64 1
  %opred854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx853, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %opred854, align 8
  store %union.rec* %339, %union.rec** %y, align 8
  br label %for.cond.841

for.end.855:                                      ; preds = %for.cond.841
  %340 = load %union.rec*, %union.rec** %y, align 8
  %os1856 = bitcast %union.rec* %340 to %struct.word_type*
  %ou1857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1856, i32 0, i32 1
  %os11858 = bitcast %union.FIRST_UNION* %ou1857 to %struct.anon*
  %otype859 = getelementptr inbounds %struct.anon, %struct.anon* %os11858, i32 0, i32 0
  %341 = load i8, i8* %otype859, align 1
  %conv860 = zext i8 %341 to i32
  %cmp861 = icmp eq i32 %conv860, 1
  br i1 %cmp861, label %if.then.863, label %if.else.875

if.then.863:                                      ; preds = %for.end.855
  %342 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %342, %union.rec** %g, align 8
  %343 = load i32, i32* %jn, align 4
  %tobool864 = icmp ne i32 %343, 0
  br i1 %tobool864, label %land.rhs.865, label %land.end.873

land.rhs.865:                                     ; preds = %if.then.863
  %344 = load %union.rec*, %union.rec** %y, align 8
  %os5866 = bitcast %union.rec* %344 to %struct.gapobj_type*
  %ogap867 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5866, i32 0, i32 3
  %345 = bitcast %struct.GAP* %ogap867 to i16*
  %bf.load868 = load i16, i16* %345, align 4
  %bf.lshr869 = lshr i16 %bf.load868, 9
  %bf.clear870 = and i16 %bf.lshr869, 1
  %bf.cast871 = zext i16 %bf.clear870 to i32
  %tobool872 = icmp ne i32 %bf.cast871, 0
  br label %land.end.873

land.end.873:                                     ; preds = %land.rhs.865, %if.then.863
  %346 = phi i1 [ false, %if.then.863 ], [ %tobool872, %land.rhs.865 ]
  %land.ext874 = zext i1 %346 to i32
  store i32 %land.ext874, i32* %jn, align 4
  br label %if.end.911

if.else.875:                                      ; preds = %for.end.855
  %347 = load %union.rec*, %union.rec** %y, align 8
  %os1876 = bitcast %union.rec* %347 to %struct.word_type*
  %ou1877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 1
  %os11878 = bitcast %union.FIRST_UNION* %ou1877 to %struct.anon*
  %otype879 = getelementptr inbounds %struct.anon, %struct.anon* %os11878, i32 0, i32 0
  %348 = load i8, i8* %otype879, align 1
  %conv880 = zext i8 %348 to i32
  %cmp881 = icmp eq i32 %conv880, 9
  br i1 %cmp881, label %cond.true.883, label %cond.false.886

cond.true.883:                                    ; preds = %if.else.875
  %349 = load %union.rec*, %union.rec** %y, align 8
  %call884 = call i32 @SplitIsDefinite(%union.rec* %349)
  %tobool885 = icmp ne i32 %call884, 0
  br i1 %tobool885, label %if.then.904, label %if.end.910

cond.false.886:                                   ; preds = %if.else.875
  %350 = load %union.rec*, %union.rec** %y, align 8
  %os1887 = bitcast %union.rec* %350 to %struct.word_type*
  %ou1888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1887, i32 0, i32 1
  %os11889 = bitcast %union.FIRST_UNION* %ou1888 to %struct.anon*
  %otype890 = getelementptr inbounds %struct.anon, %struct.anon* %os11889, i32 0, i32 0
  %351 = load i8, i8* %otype890, align 1
  %conv891 = zext i8 %351 to i32
  %cmp892 = icmp sge i32 %conv891, 9
  br i1 %cmp892, label %land.rhs.894, label %land.end.902

land.rhs.894:                                     ; preds = %cond.false.886
  %352 = load %union.rec*, %union.rec** %y, align 8
  %os1895 = bitcast %union.rec* %352 to %struct.word_type*
  %ou1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1895, i32 0, i32 1
  %os11897 = bitcast %union.FIRST_UNION* %ou1896 to %struct.anon*
  %otype898 = getelementptr inbounds %struct.anon, %struct.anon* %os11897, i32 0, i32 0
  %353 = load i8, i8* %otype898, align 1
  %conv899 = zext i8 %353 to i32
  %cmp900 = icmp sle i32 %conv899, 99
  br label %land.end.902

land.end.902:                                     ; preds = %land.rhs.894, %cond.false.886
  %354 = phi i1 [ false, %cond.false.886 ], [ %cmp900, %land.rhs.894 ]
  br i1 %354, label %if.then.904, label %if.end.910

if.then.904:                                      ; preds = %land.end.902, %cond.true.883
  %355 = load %union.rec*, %union.rec** %g, align 8
  %cmp905 = icmp ne %union.rec* %355, null
  br i1 %cmp905, label %if.end.909, label %if.then.907

if.then.907:                                      ; preds = %if.then.904
  %356 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call908 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %356, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.907, %if.then.904
  br label %for.end.917

if.end.910:                                       ; preds = %land.end.902, %cond.true.883
  br label %if.end.911

if.end.911:                                       ; preds = %if.end.910, %land.end.873
  br label %for.inc.912

for.inc.912:                                      ; preds = %if.end.911
  %357 = load %union.rec*, %union.rec** %link, align 8
  %os1913 = bitcast %union.rec* %357 to %struct.word_type*
  %olist914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1913, i32 0, i32 0
  %arrayidx915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist914, i32 0, i64 0
  %osucc916 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx915, i32 0, i32 1
  %358 = load %union.rec*, %union.rec** %osucc916, align 8
  store %union.rec* %358, %union.rec** %link, align 8
  br label %for.cond.833

for.end.917:                                      ; preds = %if.end.909, %for.cond.833
  br label %while.cond

while.cond:                                       ; preds = %for.end.1059, %for.end.917
  %359 = load %union.rec*, %union.rec** %link, align 8
  %360 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp918 = icmp ne %union.rec* %359, %360
  br i1 %cmp918, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %361 = load %union.rec*, %union.rec** %prev, align 8
  %os1920 = bitcast %union.rec* %361 to %struct.word_type*
  %ou3921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1920, i32 0, i32 3
  %os31922 = bitcast %union.THIRD_UNION* %ou3921 to %struct.anon.6*
  %ofwd923 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31922, i32 0, i32 1
  %arrayidx924 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd923, i32 0, i64 0
  %362 = load i32, i32* %arrayidx924, align 4
  %363 = load %union.rec*, %union.rec** %y, align 8
  %os1925 = bitcast %union.rec* %363 to %struct.word_type*
  %ou3926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1925, i32 0, i32 3
  %os31927 = bitcast %union.THIRD_UNION* %ou3926 to %struct.anon.6*
  %oback928 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x i32], [2 x i32]* %oback928, i32 0, i64 0
  %364 = load i32, i32* %arrayidx929, align 4
  %365 = load %union.rec*, %union.rec** %y, align 8
  %os1930 = bitcast %union.rec* %365 to %struct.word_type*
  %ou3931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1930, i32 0, i32 3
  %os31932 = bitcast %union.THIRD_UNION* %ou3931 to %struct.anon.6*
  %ofwd933 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31932, i32 0, i32 1
  %arrayidx934 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd933, i32 0, i64 0
  %366 = load i32, i32* %arrayidx934, align 4
  %367 = load %union.rec*, %union.rec** %g, align 8
  %os5935 = bitcast %union.rec* %367 to %struct.gapobj_type*
  %ogap936 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5935, i32 0, i32 3
  %call937 = call i32 @MinGap(i32 %362, i32 %364, i32 %366, %struct.GAP* %ogap936)
  %368 = load %union.rec*, %union.rec** %prev, align 8
  %os1938 = bitcast %union.rec* %368 to %struct.word_type*
  %ou3939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1938, i32 0, i32 3
  %os31940 = bitcast %union.THIRD_UNION* %ou3939 to %struct.anon.6*
  %ofwd941 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31940, i32 0, i32 1
  %arrayidx942 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd941, i32 0, i64 0
  %369 = load i32, i32* %arrayidx942, align 4
  %sub943 = sub nsw i32 %call937, %369
  %370 = load %union.rec*, %union.rec** %y, align 8
  %os1944 = bitcast %union.rec* %370 to %struct.word_type*
  %ou3945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1944, i32 0, i32 3
  %os31946 = bitcast %union.THIRD_UNION* %ou3945 to %struct.anon.6*
  %oback947 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31946, i32 0, i32 0
  %arrayidx948 = getelementptr inbounds [2 x i32], [2 x i32]* %oback947, i32 0, i64 0
  %371 = load i32, i32* %arrayidx948, align 4
  %add949 = add nsw i32 %sub943, %371
  %372 = load i32, i32* %f733, align 4
  %add950 = add nsw i32 %372, %add949
  store i32 %add950, i32* %f733, align 4
  %373 = load i32, i32* %f733, align 4
  %374 = load i32, i32* %max_f, align 4
  %cmp951 = icmp slt i32 %373, %374
  br i1 %cmp951, label %if.then.953, label %if.else.969

if.then.953:                                      ; preds = %while.body
  %375 = load %union.rec*, %union.rec** %g, align 8
  %os5954 = bitcast %union.rec* %375 to %struct.gapobj_type*
  %ogap955 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5954, i32 0, i32 3
  %376 = bitcast %struct.GAP* %ogap955 to i16*
  %bf.load956 = load i16, i16* %376, align 4
  %bf.lshr957 = lshr i16 %bf.load956, 10
  %bf.clear958 = and i16 %bf.lshr957, 7
  %bf.cast959 = zext i16 %bf.clear958 to i32
  %cmp960 = icmp eq i32 %bf.cast959, 1
  br i1 %cmp960, label %if.then.962, label %if.end.968

if.then.962:                                      ; preds = %if.then.953
  %377 = load %union.rec*, %union.rec** %g, align 8
  %os5963 = bitcast %union.rec* %377 to %struct.gapobj_type*
  %ogap964 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5963, i32 0, i32 3
  %378 = bitcast %struct.GAP* %ogap964 to i16*
  %bf.load965 = load i16, i16* %378, align 4
  %bf.clear966 = and i16 %bf.load965, -129
  %bf.set967 = or i16 %bf.clear966, 128
  store i16 %bf.set967, i16* %378, align 4
  br label %if.end.968

if.end.968:                                       ; preds = %if.then.962, %if.then.953
  br label %if.end.970

if.else.969:                                      ; preds = %while.body
  %379 = load i32, i32* %f733, align 4
  store i32 %379, i32* %max_f, align 4
  br label %if.end.970

if.end.970:                                       ; preds = %if.else.969, %if.end.968
  %380 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %380, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %381 = load %union.rec*, %union.rec** %link, align 8
  %os1971 = bitcast %union.rec* %381 to %struct.word_type*
  %olist972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1971, i32 0, i32 0
  %arrayidx973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist972, i32 0, i64 0
  %osucc974 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx973, i32 0, i32 1
  %382 = load %union.rec*, %union.rec** %osucc974, align 8
  store %union.rec* %382, %union.rec** %link, align 8
  br label %for.cond.975

for.cond.975:                                     ; preds = %for.inc.1054, %if.end.970
  %383 = load %union.rec*, %union.rec** %link, align 8
  %384 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp976 = icmp ne %union.rec* %383, %384
  br i1 %cmp976, label %for.body.978, label %for.end.1059

for.body.978:                                     ; preds = %for.cond.975
  %385 = load %union.rec*, %union.rec** %link, align 8
  %os1979 = bitcast %union.rec* %385 to %struct.word_type*
  %olist980 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1979, i32 0, i32 0
  %arrayidx981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist980, i32 0, i64 1
  %opred982 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx981, i32 0, i32 0
  %386 = load %union.rec*, %union.rec** %opred982, align 8
  store %union.rec* %386, %union.rec** %y, align 8
  br label %for.cond.983

for.cond.983:                                     ; preds = %for.inc.992, %for.body.978
  %387 = load %union.rec*, %union.rec** %y, align 8
  %os1984 = bitcast %union.rec* %387 to %struct.word_type*
  %ou1985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1984, i32 0, i32 1
  %os11986 = bitcast %union.FIRST_UNION* %ou1985 to %struct.anon*
  %otype987 = getelementptr inbounds %struct.anon, %struct.anon* %os11986, i32 0, i32 0
  %388 = load i8, i8* %otype987, align 1
  %conv988 = zext i8 %388 to i32
  %cmp989 = icmp eq i32 %conv988, 0
  br i1 %cmp989, label %for.body.991, label %for.end.997

for.body.991:                                     ; preds = %for.cond.983
  br label %for.inc.992

for.inc.992:                                      ; preds = %for.body.991
  %389 = load %union.rec*, %union.rec** %y, align 8
  %os1993 = bitcast %union.rec* %389 to %struct.word_type*
  %olist994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1993, i32 0, i32 0
  %arrayidx995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist994, i32 0, i64 1
  %opred996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx995, i32 0, i32 0
  %390 = load %union.rec*, %union.rec** %opred996, align 8
  store %union.rec* %390, %union.rec** %y, align 8
  br label %for.cond.983

for.end.997:                                      ; preds = %for.cond.983
  %391 = load %union.rec*, %union.rec** %y, align 8
  %os1998 = bitcast %union.rec* %391 to %struct.word_type*
  %ou1999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1998, i32 0, i32 1
  %os111000 = bitcast %union.FIRST_UNION* %ou1999 to %struct.anon*
  %otype1001 = getelementptr inbounds %struct.anon, %struct.anon* %os111000, i32 0, i32 0
  %392 = load i8, i8* %otype1001, align 1
  %conv1002 = zext i8 %392 to i32
  %cmp1003 = icmp eq i32 %conv1002, 1
  br i1 %cmp1003, label %if.then.1005, label %if.else.1017

if.then.1005:                                     ; preds = %for.end.997
  %393 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %393, %union.rec** %g, align 8
  %394 = load i32, i32* %jn, align 4
  %tobool1006 = icmp ne i32 %394, 0
  br i1 %tobool1006, label %land.rhs.1007, label %land.end.1015

land.rhs.1007:                                    ; preds = %if.then.1005
  %395 = load %union.rec*, %union.rec** %y, align 8
  %os51008 = bitcast %union.rec* %395 to %struct.gapobj_type*
  %ogap1009 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51008, i32 0, i32 3
  %396 = bitcast %struct.GAP* %ogap1009 to i16*
  %bf.load1010 = load i16, i16* %396, align 4
  %bf.lshr1011 = lshr i16 %bf.load1010, 9
  %bf.clear1012 = and i16 %bf.lshr1011, 1
  %bf.cast1013 = zext i16 %bf.clear1012 to i32
  %tobool1014 = icmp ne i32 %bf.cast1013, 0
  br label %land.end.1015

land.end.1015:                                    ; preds = %land.rhs.1007, %if.then.1005
  %397 = phi i1 [ false, %if.then.1005 ], [ %tobool1014, %land.rhs.1007 ]
  %land.ext1016 = zext i1 %397 to i32
  store i32 %land.ext1016, i32* %jn, align 4
  br label %if.end.1053

if.else.1017:                                     ; preds = %for.end.997
  %398 = load %union.rec*, %union.rec** %y, align 8
  %os11018 = bitcast %union.rec* %398 to %struct.word_type*
  %ou11019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11018, i32 0, i32 1
  %os111020 = bitcast %union.FIRST_UNION* %ou11019 to %struct.anon*
  %otype1021 = getelementptr inbounds %struct.anon, %struct.anon* %os111020, i32 0, i32 0
  %399 = load i8, i8* %otype1021, align 1
  %conv1022 = zext i8 %399 to i32
  %cmp1023 = icmp eq i32 %conv1022, 9
  br i1 %cmp1023, label %cond.true.1025, label %cond.false.1028

cond.true.1025:                                   ; preds = %if.else.1017
  %400 = load %union.rec*, %union.rec** %y, align 8
  %call1026 = call i32 @SplitIsDefinite(%union.rec* %400)
  %tobool1027 = icmp ne i32 %call1026, 0
  br i1 %tobool1027, label %if.then.1046, label %if.end.1052

cond.false.1028:                                  ; preds = %if.else.1017
  %401 = load %union.rec*, %union.rec** %y, align 8
  %os11029 = bitcast %union.rec* %401 to %struct.word_type*
  %ou11030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 1
  %os111031 = bitcast %union.FIRST_UNION* %ou11030 to %struct.anon*
  %otype1032 = getelementptr inbounds %struct.anon, %struct.anon* %os111031, i32 0, i32 0
  %402 = load i8, i8* %otype1032, align 1
  %conv1033 = zext i8 %402 to i32
  %cmp1034 = icmp sge i32 %conv1033, 9
  br i1 %cmp1034, label %land.rhs.1036, label %land.end.1044

land.rhs.1036:                                    ; preds = %cond.false.1028
  %403 = load %union.rec*, %union.rec** %y, align 8
  %os11037 = bitcast %union.rec* %403 to %struct.word_type*
  %ou11038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 1
  %os111039 = bitcast %union.FIRST_UNION* %ou11038 to %struct.anon*
  %otype1040 = getelementptr inbounds %struct.anon, %struct.anon* %os111039, i32 0, i32 0
  %404 = load i8, i8* %otype1040, align 1
  %conv1041 = zext i8 %404 to i32
  %cmp1042 = icmp sle i32 %conv1041, 99
  br label %land.end.1044

land.end.1044:                                    ; preds = %land.rhs.1036, %cond.false.1028
  %405 = phi i1 [ false, %cond.false.1028 ], [ %cmp1042, %land.rhs.1036 ]
  br i1 %405, label %if.then.1046, label %if.end.1052

if.then.1046:                                     ; preds = %land.end.1044, %cond.true.1025
  %406 = load %union.rec*, %union.rec** %g, align 8
  %cmp1047 = icmp ne %union.rec* %406, null
  br i1 %cmp1047, label %if.end.1051, label %if.then.1049

if.then.1049:                                     ; preds = %if.then.1046
  %407 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1050 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %407, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1051

if.end.1051:                                      ; preds = %if.then.1049, %if.then.1046
  br label %for.end.1059

if.end.1052:                                      ; preds = %land.end.1044, %cond.true.1025
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.end.1052, %land.end.1015
  br label %for.inc.1054

for.inc.1054:                                     ; preds = %if.end.1053
  %408 = load %union.rec*, %union.rec** %link, align 8
  %os11055 = bitcast %union.rec* %408 to %struct.word_type*
  %olist1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11055, i32 0, i32 0
  %arrayidx1057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1056, i32 0, i64 0
  %osucc1058 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1057, i32 0, i32 1
  %409 = load %union.rec*, %union.rec** %osucc1058, align 8
  store %union.rec* %409, %union.rec** %link, align 8
  br label %for.cond.975

for.end.1059:                                     ; preds = %if.end.1051, %for.cond.975
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.1060

if.end.1060:                                      ; preds = %while.end, %cond.end.729
  %410 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21061 = bitcast %union.rec* %410 to %struct.closure_type*
  %ou41062 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21061, i32 0, i32 4
  %osave_style1063 = bitcast %union.FOURTH_UNION* %ou41062 to %struct.STYLE*
  %osu21064 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1063, i32 0, i32 1
  %oss21065 = bitcast %union.anon.10* %osu21064 to %struct.anon.11*
  %411 = bitcast %struct.anon.11* %oss21065 to i8*
  %bf.load1066 = load i8, i8* %411, align 4
  %bf.clear1067 = and i8 %bf.load1066, 3
  %bf.cast1068 = zext i8 %bf.clear1067 to i32
  %cmp1069 = icmp eq i32 %bf.cast1068, 0
  br i1 %cmp1069, label %if.then.1071, label %if.end.1076

if.then.1071:                                     ; preds = %if.end.1060
  %412 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11072 = bitcast %union.rec* %412 to %struct.word_type*
  %ou11073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11072, i32 0, i32 1
  %ofpos1074 = bitcast %union.FIRST_UNION* %ou11073 to %struct.FILE_POS*
  %call1075 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 14, i32 7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1074)
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.then.1071, %if.end.1060
  store i32 0, i32* %hyph_allowed, align 4
  br label %RESTART

RESTART:                                          ; preds = %if.then.3453, %if.end.1076
  %413 = load %union.rec*, %union.rec** %x.addr, align 8
  %llink = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  store %union.rec* %413, %union.rec** %llink, align 8
  store i32 1, i32* %jn1080, align 4
  %414 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11081 = bitcast %union.rec* %414 to %struct.word_type*
  %olist1082 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11081, i32 0, i32 0
  %arrayidx1083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1082, i32 0, i64 0
  %osucc1084 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1083, i32 0, i32 1
  %415 = load %union.rec*, %union.rec** %osucc1084, align 8
  store %union.rec* %415, %union.rec** %rlink, align 8
  br label %for.cond.1085

for.cond.1085:                                    ; preds = %for.inc.1159, %RESTART
  %416 = load %union.rec*, %union.rec** %rlink, align 8
  %417 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1086 = icmp ne %union.rec* %416, %417
  br i1 %cmp1086, label %for.body.1088, label %for.end.1164

for.body.1088:                                    ; preds = %for.cond.1085
  %418 = load %union.rec*, %union.rec** %rlink, align 8
  %os11089 = bitcast %union.rec* %418 to %struct.word_type*
  %olist1090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11089, i32 0, i32 0
  %arrayidx1091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1090, i32 0, i64 1
  %opred1092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1091, i32 0, i32 0
  %419 = load %union.rec*, %union.rec** %opred1092, align 8
  store %union.rec* %419, %union.rec** %right, align 8
  br label %for.cond.1093

for.cond.1093:                                    ; preds = %for.inc.1102, %for.body.1088
  %420 = load %union.rec*, %union.rec** %right, align 8
  %os11094 = bitcast %union.rec* %420 to %struct.word_type*
  %ou11095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11094, i32 0, i32 1
  %os111096 = bitcast %union.FIRST_UNION* %ou11095 to %struct.anon*
  %otype1097 = getelementptr inbounds %struct.anon, %struct.anon* %os111096, i32 0, i32 0
  %421 = load i8, i8* %otype1097, align 1
  %conv1098 = zext i8 %421 to i32
  %cmp1099 = icmp eq i32 %conv1098, 0
  br i1 %cmp1099, label %for.body.1101, label %for.end.1107

for.body.1101:                                    ; preds = %for.cond.1093
  br label %for.inc.1102

for.inc.1102:                                     ; preds = %for.body.1101
  %422 = load %union.rec*, %union.rec** %right, align 8
  %os11103 = bitcast %union.rec* %422 to %struct.word_type*
  %olist1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11103, i32 0, i32 0
  %arrayidx1105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1104, i32 0, i64 1
  %opred1106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1105, i32 0, i32 0
  %423 = load %union.rec*, %union.rec** %opred1106, align 8
  store %union.rec* %423, %union.rec** %right, align 8
  br label %for.cond.1093

for.end.1107:                                     ; preds = %for.cond.1093
  %424 = load %union.rec*, %union.rec** %right, align 8
  %os11108 = bitcast %union.rec* %424 to %struct.word_type*
  %ou11109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 1
  %os111110 = bitcast %union.FIRST_UNION* %ou11109 to %struct.anon*
  %otype1111 = getelementptr inbounds %struct.anon, %struct.anon* %os111110, i32 0, i32 0
  %425 = load i8, i8* %otype1111, align 1
  %conv1112 = zext i8 %425 to i32
  %cmp1113 = icmp eq i32 %conv1112, 1
  br i1 %cmp1113, label %if.then.1115, label %if.else.1127

if.then.1115:                                     ; preds = %for.end.1107
  %426 = load i32, i32* %jn1080, align 4
  %tobool1116 = icmp ne i32 %426, 0
  br i1 %tobool1116, label %land.rhs.1117, label %land.end.1125

land.rhs.1117:                                    ; preds = %if.then.1115
  %427 = load %union.rec*, %union.rec** %right, align 8
  %os51118 = bitcast %union.rec* %427 to %struct.gapobj_type*
  %ogap1119 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51118, i32 0, i32 3
  %428 = bitcast %struct.GAP* %ogap1119 to i16*
  %bf.load1120 = load i16, i16* %428, align 4
  %bf.lshr1121 = lshr i16 %bf.load1120, 9
  %bf.clear1122 = and i16 %bf.lshr1121, 1
  %bf.cast1123 = zext i16 %bf.clear1122 to i32
  %tobool1124 = icmp ne i32 %bf.cast1123, 0
  br label %land.end.1125

land.end.1125:                                    ; preds = %land.rhs.1117, %if.then.1115
  %429 = phi i1 [ false, %if.then.1115 ], [ %tobool1124, %land.rhs.1117 ]
  %land.ext1126 = zext i1 %429 to i32
  store i32 %land.ext1126, i32* %jn1080, align 4
  br label %if.end.1158

if.else.1127:                                     ; preds = %for.end.1107
  %430 = load %union.rec*, %union.rec** %right, align 8
  %os11128 = bitcast %union.rec* %430 to %struct.word_type*
  %ou11129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11128, i32 0, i32 1
  %os111130 = bitcast %union.FIRST_UNION* %ou11129 to %struct.anon*
  %otype1131 = getelementptr inbounds %struct.anon, %struct.anon* %os111130, i32 0, i32 0
  %431 = load i8, i8* %otype1131, align 1
  %conv1132 = zext i8 %431 to i32
  %cmp1133 = icmp eq i32 %conv1132, 9
  br i1 %cmp1133, label %cond.true.1135, label %cond.false.1138

cond.true.1135:                                   ; preds = %if.else.1127
  %432 = load %union.rec*, %union.rec** %right, align 8
  %call1136 = call i32 @SplitIsDefinite(%union.rec* %432)
  %tobool1137 = icmp ne i32 %call1136, 0
  br i1 %tobool1137, label %if.then.1156, label %if.end.1157

cond.false.1138:                                  ; preds = %if.else.1127
  %433 = load %union.rec*, %union.rec** %right, align 8
  %os11139 = bitcast %union.rec* %433 to %struct.word_type*
  %ou11140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11139, i32 0, i32 1
  %os111141 = bitcast %union.FIRST_UNION* %ou11140 to %struct.anon*
  %otype1142 = getelementptr inbounds %struct.anon, %struct.anon* %os111141, i32 0, i32 0
  %434 = load i8, i8* %otype1142, align 1
  %conv1143 = zext i8 %434 to i32
  %cmp1144 = icmp sge i32 %conv1143, 9
  br i1 %cmp1144, label %land.rhs.1146, label %land.end.1154

land.rhs.1146:                                    ; preds = %cond.false.1138
  %435 = load %union.rec*, %union.rec** %right, align 8
  %os11147 = bitcast %union.rec* %435 to %struct.word_type*
  %ou11148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11147, i32 0, i32 1
  %os111149 = bitcast %union.FIRST_UNION* %ou11148 to %struct.anon*
  %otype1150 = getelementptr inbounds %struct.anon, %struct.anon* %os111149, i32 0, i32 0
  %436 = load i8, i8* %otype1150, align 1
  %conv1151 = zext i8 %436 to i32
  %cmp1152 = icmp sle i32 %conv1151, 99
  br label %land.end.1154

land.end.1154:                                    ; preds = %land.rhs.1146, %cond.false.1138
  %437 = phi i1 [ false, %cond.false.1138 ], [ %cmp1152, %land.rhs.1146 ]
  br i1 %437, label %if.then.1156, label %if.end.1157

if.then.1156:                                     ; preds = %land.end.1154, %cond.true.1135
  br label %for.end.1164

if.end.1157:                                      ; preds = %land.end.1154, %cond.true.1135
  br label %if.end.1158

if.end.1158:                                      ; preds = %if.end.1157, %land.end.1125
  br label %for.inc.1159

for.inc.1159:                                     ; preds = %if.end.1158
  %438 = load %union.rec*, %union.rec** %rlink, align 8
  %os11160 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11160, i32 0, i32 0
  %arrayidx1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1161, i32 0, i64 0
  %osucc1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1162, i32 0, i32 1
  %439 = load %union.rec*, %union.rec** %osucc1163, align 8
  store %union.rec* %439, %union.rec** %rlink, align 8
  br label %for.cond.1085

for.end.1164:                                     ; preds = %if.then.1156, %for.cond.1085
  %440 = load %union.rec*, %union.rec** %rlink, align 8
  %441 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1165 = icmp eq %union.rec* %440, %441
  br i1 %cmp1165, label %if.then.1167, label %if.else.1169

if.then.1167:                                     ; preds = %for.end.1164
  %class = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 5, i8* %class, align 1
  %442 = load %union.rec*, %union.rec** %x.addr, align 8
  %rlink1168 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %442, %union.rec** %rlink1168, align 8
  br label %if.end.1900

if.else.1169:                                     ; preds = %for.end.1164
  %443 = load %union.rec*, %union.rec** %multi.addr, align 8
  %cmp1170 = icmp ne %union.rec* %443, null
  br i1 %cmp1170, label %if.then.1172, label %if.else.1199

if.then.1172:                                     ; preds = %if.else.1169
  %444 = load %union.rec*, %union.rec** %multi.addr, align 8
  %os11173 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11173, i32 0, i32 0
  %arrayidx1175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1174, i32 0, i64 0
  %osucc1176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1175, i32 0, i32 1
  %445 = load %union.rec*, %union.rec** %osucc1176, align 8
  %os11177 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11177, i32 0, i32 0
  %arrayidx1179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1178, i32 0, i64 1
  %opred1180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1179, i32 0, i32 0
  %446 = load %union.rec*, %union.rec** %opred1180, align 8
  %cwid = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %446, %union.rec** %cwid, align 8
  br label %for.cond.1181

for.cond.1181:                                    ; preds = %for.inc.1191, %if.then.1172
  %cwid1182 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %447 = load %union.rec*, %union.rec** %cwid1182, align 8
  %os11183 = bitcast %union.rec* %447 to %struct.word_type*
  %ou11184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 1
  %os111185 = bitcast %union.FIRST_UNION* %ou11184 to %struct.anon*
  %otype1186 = getelementptr inbounds %struct.anon, %struct.anon* %os111185, i32 0, i32 0
  %448 = load i8, i8* %otype1186, align 1
  %conv1187 = zext i8 %448 to i32
  %cmp1188 = icmp eq i32 %conv1187, 0
  br i1 %cmp1188, label %for.body.1190, label %for.end.1198

for.body.1190:                                    ; preds = %for.cond.1181
  br label %for.inc.1191

for.inc.1191:                                     ; preds = %for.body.1190
  %cwid1192 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %449 = load %union.rec*, %union.rec** %cwid1192, align 8
  %os11193 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11193, i32 0, i32 0
  %arrayidx1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1194, i32 0, i64 1
  %opred1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1195, i32 0, i32 0
  %450 = load %union.rec*, %union.rec** %opred1196, align 8
  %cwid1197 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %450, %union.rec** %cwid1197, align 8
  br label %for.cond.1181

for.end.1198:                                     ; preds = %for.cond.1181
  br label %if.end.1201

if.else.1199:                                     ; preds = %if.else.1169
  %cwid1200 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* null, %union.rec** %cwid1200, align 8
  br label %if.end.1201

if.end.1201:                                      ; preds = %if.else.1199, %for.end.1198
  %451 = load %union.rec*, %union.rec** %right, align 8
  %os11202 = bitcast %union.rec* %451 to %struct.word_type*
  %ou31203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11202, i32 0, i32 3
  %os311204 = bitcast %union.THIRD_UNION* %ou31203 to %struct.anon.6*
  %oback1205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311204, i32 0, i32 0
  %arrayidx1206 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1205, i32 0, i64 0
  %452 = load i32, i32* %arrayidx1206, align 4
  %453 = load %union.rec*, %union.rec** %right, align 8
  %os11207 = bitcast %union.rec* %453 to %struct.word_type*
  %ou31208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11207, i32 0, i32 3
  %os311209 = bitcast %union.THIRD_UNION* %ou31208 to %struct.anon.6*
  %ofwd1210 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311209, i32 0, i32 1
  %arrayidx1211 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1210, i32 0, i64 0
  %454 = load i32, i32* %arrayidx1211, align 4
  %add1212 = add nsw i32 %452, %454
  %nat_width = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  store i32 %add1212, i32* %nat_width, align 4
  %space_width = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  store i32 0, i32* %space_width, align 4
  %tab_count = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  store i8 0, i8* %tab_count, align 1
  store i32 0, i32* %unbreakable_at_right, align 4
  %455 = load %union.rec*, %union.rec** %rlink, align 8
  %os11220 = bitcast %union.rec* %455 to %struct.word_type*
  %olist1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11220, i32 0, i32 0
  %arrayidx1222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1221, i32 0, i64 1
  %opred1223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1222, i32 0, i32 0
  %456 = load %union.rec*, %union.rec** %opred1223, align 8
  store %union.rec* %456, %union.rec** %tmp1216, align 8
  br label %for.cond.1224

for.cond.1224:                                    ; preds = %for.inc.1233, %if.end.1201
  %457 = load %union.rec*, %union.rec** %tmp1216, align 8
  %os11225 = bitcast %union.rec* %457 to %struct.word_type*
  %ou11226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 1
  %os111227 = bitcast %union.FIRST_UNION* %ou11226 to %struct.anon*
  %otype1228 = getelementptr inbounds %struct.anon, %struct.anon* %os111227, i32 0, i32 0
  %458 = load i8, i8* %otype1228, align 1
  %conv1229 = zext i8 %458 to i32
  %cmp1230 = icmp eq i32 %conv1229, 0
  br i1 %cmp1230, label %for.body.1232, label %for.end.1238

for.body.1232:                                    ; preds = %for.cond.1224
  br label %for.inc.1233

for.inc.1233:                                     ; preds = %for.body.1232
  %459 = load %union.rec*, %union.rec** %tmp1216, align 8
  %os11234 = bitcast %union.rec* %459 to %struct.word_type*
  %olist1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11234, i32 0, i32 0
  %arrayidx1236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1235, i32 0, i64 1
  %opred1237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1236, i32 0, i32 0
  %460 = load %union.rec*, %union.rec** %opred1237, align 8
  store %union.rec* %460, %union.rec** %tmp1216, align 8
  br label %for.cond.1224

for.end.1238:                                     ; preds = %for.cond.1224
  store %union.rec* null, %union.rec** %newg, align 8
  store i32 1, i32* %jn1218, align 4
  %461 = load %union.rec*, %union.rec** %rlink, align 8
  %os11239 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11239, i32 0, i32 0
  %arrayidx1241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1240, i32 0, i64 0
  %osucc1242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1241, i32 0, i32 1
  %462 = load %union.rec*, %union.rec** %osucc1242, align 8
  store %union.rec* %462, %union.rec** %rlink, align 8
  br label %for.cond.1243

for.cond.1243:                                    ; preds = %for.inc.1322, %for.end.1238
  %463 = load %union.rec*, %union.rec** %rlink, align 8
  %464 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1244 = icmp ne %union.rec* %463, %464
  br i1 %cmp1244, label %for.body.1246, label %for.end.1327

for.body.1246:                                    ; preds = %for.cond.1243
  %465 = load %union.rec*, %union.rec** %rlink, align 8
  %os11247 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11247, i32 0, i32 0
  %arrayidx1249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1248, i32 0, i64 1
  %opred1250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1249, i32 0, i32 0
  %466 = load %union.rec*, %union.rec** %opred1250, align 8
  store %union.rec* %466, %union.rec** %foll, align 8
  br label %for.cond.1251

for.cond.1251:                                    ; preds = %for.inc.1260, %for.body.1246
  %467 = load %union.rec*, %union.rec** %foll, align 8
  %os11252 = bitcast %union.rec* %467 to %struct.word_type*
  %ou11253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11252, i32 0, i32 1
  %os111254 = bitcast %union.FIRST_UNION* %ou11253 to %struct.anon*
  %otype1255 = getelementptr inbounds %struct.anon, %struct.anon* %os111254, i32 0, i32 0
  %468 = load i8, i8* %otype1255, align 1
  %conv1256 = zext i8 %468 to i32
  %cmp1257 = icmp eq i32 %conv1256, 0
  br i1 %cmp1257, label %for.body.1259, label %for.end.1265

for.body.1259:                                    ; preds = %for.cond.1251
  br label %for.inc.1260

for.inc.1260:                                     ; preds = %for.body.1259
  %469 = load %union.rec*, %union.rec** %foll, align 8
  %os11261 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11261, i32 0, i32 0
  %arrayidx1263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1262, i32 0, i64 1
  %opred1264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1263, i32 0, i32 0
  %470 = load %union.rec*, %union.rec** %opred1264, align 8
  store %union.rec* %470, %union.rec** %foll, align 8
  br label %for.cond.1251

for.end.1265:                                     ; preds = %for.cond.1251
  %471 = load %union.rec*, %union.rec** %foll, align 8
  %os11266 = bitcast %union.rec* %471 to %struct.word_type*
  %ou11267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11266, i32 0, i32 1
  %os111268 = bitcast %union.FIRST_UNION* %ou11267 to %struct.anon*
  %otype1269 = getelementptr inbounds %struct.anon, %struct.anon* %os111268, i32 0, i32 0
  %472 = load i8, i8* %otype1269, align 1
  %conv1270 = zext i8 %472 to i32
  %cmp1271 = icmp eq i32 %conv1270, 1
  br i1 %cmp1271, label %if.then.1273, label %if.else.1285

if.then.1273:                                     ; preds = %for.end.1265
  %473 = load %union.rec*, %union.rec** %foll, align 8
  store %union.rec* %473, %union.rec** %newg, align 8
  %474 = load i32, i32* %jn1218, align 4
  %tobool1274 = icmp ne i32 %474, 0
  br i1 %tobool1274, label %land.rhs.1275, label %land.end.1283

land.rhs.1275:                                    ; preds = %if.then.1273
  %475 = load %union.rec*, %union.rec** %foll, align 8
  %os51276 = bitcast %union.rec* %475 to %struct.gapobj_type*
  %ogap1277 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51276, i32 0, i32 3
  %476 = bitcast %struct.GAP* %ogap1277 to i16*
  %bf.load1278 = load i16, i16* %476, align 4
  %bf.lshr1279 = lshr i16 %bf.load1278, 9
  %bf.clear1280 = and i16 %bf.lshr1279, 1
  %bf.cast1281 = zext i16 %bf.clear1280 to i32
  %tobool1282 = icmp ne i32 %bf.cast1281, 0
  br label %land.end.1283

land.end.1283:                                    ; preds = %land.rhs.1275, %if.then.1273
  %477 = phi i1 [ false, %if.then.1273 ], [ %tobool1282, %land.rhs.1275 ]
  %land.ext1284 = zext i1 %477 to i32
  store i32 %land.ext1284, i32* %jn1218, align 4
  br label %if.end.1321

if.else.1285:                                     ; preds = %for.end.1265
  %478 = load %union.rec*, %union.rec** %foll, align 8
  %os11286 = bitcast %union.rec* %478 to %struct.word_type*
  %ou11287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11286, i32 0, i32 1
  %os111288 = bitcast %union.FIRST_UNION* %ou11287 to %struct.anon*
  %otype1289 = getelementptr inbounds %struct.anon, %struct.anon* %os111288, i32 0, i32 0
  %479 = load i8, i8* %otype1289, align 1
  %conv1290 = zext i8 %479 to i32
  %cmp1291 = icmp eq i32 %conv1290, 9
  br i1 %cmp1291, label %cond.true.1293, label %cond.false.1296

cond.true.1293:                                   ; preds = %if.else.1285
  %480 = load %union.rec*, %union.rec** %foll, align 8
  %call1294 = call i32 @SplitIsDefinite(%union.rec* %480)
  %tobool1295 = icmp ne i32 %call1294, 0
  br i1 %tobool1295, label %if.then.1314, label %if.end.1320

cond.false.1296:                                  ; preds = %if.else.1285
  %481 = load %union.rec*, %union.rec** %foll, align 8
  %os11297 = bitcast %union.rec* %481 to %struct.word_type*
  %ou11298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11297, i32 0, i32 1
  %os111299 = bitcast %union.FIRST_UNION* %ou11298 to %struct.anon*
  %otype1300 = getelementptr inbounds %struct.anon, %struct.anon* %os111299, i32 0, i32 0
  %482 = load i8, i8* %otype1300, align 1
  %conv1301 = zext i8 %482 to i32
  %cmp1302 = icmp sge i32 %conv1301, 9
  br i1 %cmp1302, label %land.rhs.1304, label %land.end.1312

land.rhs.1304:                                    ; preds = %cond.false.1296
  %483 = load %union.rec*, %union.rec** %foll, align 8
  %os11305 = bitcast %union.rec* %483 to %struct.word_type*
  %ou11306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11305, i32 0, i32 1
  %os111307 = bitcast %union.FIRST_UNION* %ou11306 to %struct.anon*
  %otype1308 = getelementptr inbounds %struct.anon, %struct.anon* %os111307, i32 0, i32 0
  %484 = load i8, i8* %otype1308, align 1
  %conv1309 = zext i8 %484 to i32
  %cmp1310 = icmp sle i32 %conv1309, 99
  br label %land.end.1312

land.end.1312:                                    ; preds = %land.rhs.1304, %cond.false.1296
  %485 = phi i1 [ false, %cond.false.1296 ], [ %cmp1310, %land.rhs.1304 ]
  br i1 %485, label %if.then.1314, label %if.end.1320

if.then.1314:                                     ; preds = %land.end.1312, %cond.true.1293
  %486 = load %union.rec*, %union.rec** %newg, align 8
  %cmp1315 = icmp ne %union.rec* %486, null
  br i1 %cmp1315, label %if.end.1319, label %if.then.1317

if.then.1317:                                     ; preds = %if.then.1314
  %487 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1318 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %487, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.then.1317, %if.then.1314
  br label %for.end.1327

if.end.1320:                                      ; preds = %land.end.1312, %cond.true.1293
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.end.1320, %land.end.1283
  br label %for.inc.1322

for.inc.1322:                                     ; preds = %if.end.1321
  %488 = load %union.rec*, %union.rec** %rlink, align 8
  %os11323 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11323, i32 0, i32 0
  %arrayidx1325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1324, i32 0, i64 0
  %osucc1326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1325, i32 0, i32 1
  %489 = load %union.rec*, %union.rec** %osucc1326, align 8
  store %union.rec* %489, %union.rec** %rlink, align 8
  br label %for.cond.1243

for.end.1327:                                     ; preds = %if.end.1319, %for.cond.1243
  %490 = load %union.rec*, %union.rec** %rlink, align 8
  %491 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1328 = icmp ne %union.rec* %490, %491
  br i1 %cmp1328, label %if.then.1330, label %if.else.1642

if.then.1330:                                     ; preds = %for.end.1327
  %492 = load %union.rec*, %union.rec** %newg, align 8
  %os11331 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11331, i32 0, i32 0
  %arrayidx1333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1332, i32 0, i64 1
  %osucc1334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1333, i32 0, i32 1
  %493 = load %union.rec*, %union.rec** %osucc1334, align 8
  %494 = load %union.rec*, %union.rec** %newg, align 8
  %os11335 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11335, i32 0, i32 0
  %arrayidx1337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1336, i32 0, i64 1
  %opred1338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1337, i32 0, i32 0
  %495 = load %union.rec*, %union.rec** %opred1338, align 8
  %cmp1339 = icmp eq %union.rec* %493, %495
  br i1 %cmp1339, label %if.end.1343, label %if.then.1341

if.then.1341:                                     ; preds = %if.then.1330
  %496 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1342 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %496, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.1343

if.end.1343:                                      ; preds = %if.then.1341, %if.then.1330
  %cwid1344 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %497 = load %union.rec*, %union.rec** %cwid1344, align 8
  %cmp1345 = icmp ne %union.rec* %497, null
  br i1 %cmp1345, label %if.then.1347, label %if.end.1352

if.then.1347:                                     ; preds = %if.end.1343
  %cwid1348 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %498 = load %union.rec*, %union.rec** %cwid1348, align 8
  %os21349 = bitcast %union.rec* %498 to %struct.closure_type*
  %ou41350 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21349, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou41350 to %struct.CONSTRAINT*
  %obfc1351 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 1
  %499 = load i32, i32* %obfc1351, align 4
  store i32 %499, i32* %etc_width, align 4
  br label %if.end.1352

if.end.1352:                                      ; preds = %if.then.1347, %if.end.1343
  %500 = load %union.rec*, %union.rec** %newg, align 8
  %os51353 = bitcast %union.rec* %500 to %struct.gapobj_type*
  %ogap1354 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51353, i32 0, i32 3
  %501 = bitcast %struct.GAP* %ogap1354 to i16*
  %bf.load1355 = load i16, i16* %501, align 4
  %bf.lshr1356 = lshr i16 %bf.load1355, 13
  %bf.cast1357 = zext i16 %bf.lshr1356 to i32
  %cmp1358 = icmp eq i32 %bf.cast1357, 6
  br i1 %cmp1358, label %if.then.1360, label %if.else.1382

if.then.1360:                                     ; preds = %if.end.1352
  %502 = load %union.rec*, %union.rec** %foll, align 8
  %os11361 = bitcast %union.rec* %502 to %struct.word_type*
  %ou31362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11361, i32 0, i32 3
  %os311363 = bitcast %union.THIRD_UNION* %ou31362 to %struct.anon.6*
  %oback1364 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311363, i32 0, i32 0
  %arrayidx1365 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1364, i32 0, i64 0
  %503 = load i32, i32* %arrayidx1365, align 4
  %504 = load %union.rec*, %union.rec** %foll, align 8
  %os11366 = bitcast %union.rec* %504 to %struct.word_type*
  %ou31367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11366, i32 0, i32 3
  %os311368 = bitcast %union.THIRD_UNION* %ou31367 to %struct.anon.6*
  %ofwd1369 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311368, i32 0, i32 1
  %arrayidx1370 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1369, i32 0, i64 0
  %505 = load i32, i32* %arrayidx1370, align 4
  %506 = load %union.rec*, %union.rec** %newg, align 8
  %os51371 = bitcast %union.rec* %506 to %struct.gapobj_type*
  %ogap1372 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51371, i32 0, i32 3
  %507 = load i32, i32* %etc_width, align 4
  %call1373 = call i32 @ActualGap(i32 0, i32 %503, i32 %505, %struct.GAP* %ogap1372, i32 %507, i32 0)
  %508 = load %union.rec*, %union.rec** %foll, align 8
  %os11374 = bitcast %union.rec* %508 to %struct.word_type*
  %ou31375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11374, i32 0, i32 3
  %os311376 = bitcast %union.THIRD_UNION* %ou31375 to %struct.anon.6*
  %oback1377 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311376, i32 0, i32 0
  %arrayidx1378 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1377, i32 0, i64 0
  %509 = load i32, i32* %arrayidx1378, align 4
  %sub1379 = sub nsw i32 %call1373, %509
  %conv1380 = trunc i32 %sub1379 to i16
  %510 = load %union.rec*, %union.rec** %newg, align 8
  %os51381 = bitcast %union.rec* %510 to %struct.gapobj_type*
  %osave_space = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51381, i32 0, i32 5
  store i16 %conv1380, i16* %osave_space, align 2
  br label %if.end.1423

if.else.1382:                                     ; preds = %if.end.1352
  %511 = load %union.rec*, %union.rec** %right, align 8
  %os11383 = bitcast %union.rec* %511 to %struct.word_type*
  %ou31384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11383, i32 0, i32 3
  %os311385 = bitcast %union.THIRD_UNION* %ou31384 to %struct.anon.6*
  %ofwd1386 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311385, i32 0, i32 1
  %arrayidx1387 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1386, i32 0, i64 0
  %512 = load i32, i32* %arrayidx1387, align 4
  %513 = load %union.rec*, %union.rec** %foll, align 8
  %os11388 = bitcast %union.rec* %513 to %struct.word_type*
  %ou31389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11388, i32 0, i32 3
  %os311390 = bitcast %union.THIRD_UNION* %ou31389 to %struct.anon.6*
  %oback1391 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311390, i32 0, i32 0
  %arrayidx1392 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1391, i32 0, i64 0
  %514 = load i32, i32* %arrayidx1392, align 4
  %515 = load %union.rec*, %union.rec** %foll, align 8
  %os11393 = bitcast %union.rec* %515 to %struct.word_type*
  %ou31394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11393, i32 0, i32 3
  %os311395 = bitcast %union.THIRD_UNION* %ou31394 to %struct.anon.6*
  %ofwd1396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311395, i32 0, i32 1
  %arrayidx1397 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1396, i32 0, i64 0
  %516 = load i32, i32* %arrayidx1397, align 4
  %517 = load %union.rec*, %union.rec** %newg, align 8
  %os51398 = bitcast %union.rec* %517 to %struct.gapobj_type*
  %ogap1399 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51398, i32 0, i32 3
  %518 = load i32, i32* %etc_width, align 4
  %nat_width1400 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %519 = load i32, i32* %nat_width1400, align 4
  %520 = load %union.rec*, %union.rec** %right, align 8
  %os11401 = bitcast %union.rec* %520 to %struct.word_type*
  %ou31402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11401, i32 0, i32 3
  %os311403 = bitcast %union.THIRD_UNION* %ou31402 to %struct.anon.6*
  %ofwd1404 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311403, i32 0, i32 1
  %arrayidx1405 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1404, i32 0, i64 0
  %521 = load i32, i32* %arrayidx1405, align 4
  %sub1406 = sub nsw i32 %519, %521
  %call1407 = call i32 @ActualGap(i32 %512, i32 %514, i32 %516, %struct.GAP* %ogap1399, i32 %518, i32 %sub1406)
  %522 = load %union.rec*, %union.rec** %foll, align 8
  %os11408 = bitcast %union.rec* %522 to %struct.word_type*
  %ou31409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11408, i32 0, i32 3
  %os311410 = bitcast %union.THIRD_UNION* %ou31409 to %struct.anon.6*
  %oback1411 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311410, i32 0, i32 0
  %arrayidx1412 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1411, i32 0, i64 0
  %523 = load i32, i32* %arrayidx1412, align 4
  %sub1413 = sub nsw i32 %call1407, %523
  %524 = load %union.rec*, %union.rec** %right, align 8
  %os11414 = bitcast %union.rec* %524 to %struct.word_type*
  %ou31415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11414, i32 0, i32 3
  %os311416 = bitcast %union.THIRD_UNION* %ou31415 to %struct.anon.6*
  %ofwd1417 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311416, i32 0, i32 1
  %arrayidx1418 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1417, i32 0, i64 0
  %525 = load i32, i32* %arrayidx1418, align 4
  %sub1419 = sub nsw i32 %sub1413, %525
  %conv1420 = trunc i32 %sub1419 to i16
  %526 = load %union.rec*, %union.rec** %newg, align 8
  %os51421 = bitcast %union.rec* %526 to %struct.gapobj_type*
  %osave_space1422 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51421, i32 0, i32 5
  store i16 %conv1420, i16* %osave_space1422, align 2
  br label %if.end.1423

if.end.1423:                                      ; preds = %if.else.1382, %if.then.1360
  %527 = load %union.rec*, %union.rec** %newg, align 8
  %os51424 = bitcast %union.rec* %527 to %struct.gapobj_type*
  %ogap1425 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51424, i32 0, i32 3
  %528 = bitcast %struct.GAP* %ogap1425 to i16*
  %bf.load1426 = load i16, i16* %528, align 4
  %bf.lshr1427 = lshr i16 %bf.load1426, 13
  %bf.cast1428 = zext i16 %bf.lshr1427 to i32
  %cmp1429 = icmp eq i32 %bf.cast1428, 2
  br i1 %cmp1429, label %if.then.1439, label %lor.lhs.false.1431

lor.lhs.false.1431:                               ; preds = %if.end.1423
  %529 = load %union.rec*, %union.rec** %newg, align 8
  %os51432 = bitcast %union.rec* %529 to %struct.gapobj_type*
  %ogap1433 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51432, i32 0, i32 3
  %530 = bitcast %struct.GAP* %ogap1433 to i16*
  %bf.load1434 = load i16, i16* %530, align 4
  %bf.lshr1435 = lshr i16 %bf.load1434, 13
  %bf.cast1436 = zext i16 %bf.lshr1435 to i32
  %cmp1437 = icmp eq i32 %bf.cast1436, 7
  br i1 %cmp1437, label %if.then.1439, label %if.else.1626

if.then.1439:                                     ; preds = %lor.lhs.false.1431, %if.end.1423
  %531 = load i32, i32* %hyph_allowed, align 4
  %tobool1440 = icmp ne i32 %531, 0
  br i1 %tobool1440, label %if.then.1441, label %if.else.1624

if.then.1441:                                     ; preds = %if.then.1439
  %532 = load %union.rec*, %union.rec** %right, align 8
  %os11442 = bitcast %union.rec* %532 to %struct.word_type*
  %ou11443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11442, i32 0, i32 1
  %os111444 = bitcast %union.FIRST_UNION* %ou11443 to %struct.anon*
  %otype1445 = getelementptr inbounds %struct.anon, %struct.anon* %os111444, i32 0, i32 0
  %533 = load i8, i8* %otype1445, align 1
  %conv1446 = zext i8 %533 to i32
  %cmp1447 = icmp eq i32 %conv1446, 11
  br i1 %cmp1447, label %land.lhs.true, label %lor.lhs.false.1449

lor.lhs.false.1449:                               ; preds = %if.then.1441
  %534 = load %union.rec*, %union.rec** %right, align 8
  %os11450 = bitcast %union.rec* %534 to %struct.word_type*
  %ou11451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11450, i32 0, i32 1
  %os111452 = bitcast %union.FIRST_UNION* %ou11451 to %struct.anon*
  %otype1453 = getelementptr inbounds %struct.anon, %struct.anon* %os111452, i32 0, i32 0
  %535 = load i8, i8* %otype1453, align 1
  %conv1454 = zext i8 %535 to i32
  %cmp1455 = icmp eq i32 %conv1454, 12
  br i1 %cmp1455, label %land.lhs.true, label %if.end.1623

land.lhs.true:                                    ; preds = %lor.lhs.false.1449, %if.then.1441
  %536 = load %union.rec*, %union.rec** %right, align 8
  %os11457 = bitcast %union.rec* %536 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os11457, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call1458 = call i64 @strlen(i8* %arraydecay) #4
  %sub1459 = sub i64 %call1458, 1
  %537 = load %union.rec*, %union.rec** %right, align 8
  %os11460 = bitcast %union.rec* %537 to %struct.word_type*
  %ostring1461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11460, i32 0, i32 4
  %arrayidx1462 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1461, i32 0, i64 %sub1459
  %538 = load i8, i8* %arrayidx1462, align 1
  %conv1463 = zext i8 %538 to i32
  %cmp1464 = icmp eq i32 %conv1463, 45
  br i1 %cmp1464, label %if.end.1623, label %if.then.1466

if.then.1466:                                     ; preds = %land.lhs.true
  %539 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %cmp1467 = icmp eq %union.rec* %539, null
  br i1 %cmp1467, label %if.then.1469, label %if.end.1542

if.then.1469:                                     ; preds = %if.then.1466
  %540 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11470 = bitcast %union.rec* %540 to %struct.word_type*
  %ou11471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11470, i32 0, i32 1
  %ofpos1472 = bitcast %union.FIRST_UNION* %ou11471 to %struct.FILE_POS*
  %call1473 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.FILE_POS* %ofpos1472)
  store %union.rec* %call1473, %union.rec** @FillObject.hyph_word, align 8
  %541 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11474 = bitcast %union.rec* %541 to %struct.word_type*
  %ou21475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11474, i32 0, i32 2
  %os221476 = bitcast %union.SECOND_UNION* %ou21475 to %struct.anon.1*
  %542 = bitcast %struct.anon.1* %os221476 to i32*
  %bf.load1477 = load i32, i32* %542, align 4
  %bf.clear1478 = and i32 %bf.load1477, -4096
  store i32 %bf.clear1478, i32* %542, align 4
  %543 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21479 = bitcast %union.rec* %543 to %struct.closure_type*
  %ou41480 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21479, i32 0, i32 4
  %osave_style1481 = bitcast %union.FOURTH_UNION* %ou41480 to %struct.STYLE*
  %ocolour1482 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1481, i32 0, i32 4
  %bf.load1483 = load i32, i32* %ocolour1482, align 4
  %bf.lshr1484 = lshr i32 %bf.load1483, 12
  %bf.clear1485 = and i32 %bf.lshr1484, 1023
  %544 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11486 = bitcast %union.rec* %544 to %struct.word_type*
  %ou21487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11486, i32 0, i32 2
  %os221488 = bitcast %union.SECOND_UNION* %ou21487 to %struct.anon.1*
  %545 = bitcast %struct.anon.1* %os221488 to i32*
  %bf.load1489 = load i32, i32* %545, align 4
  %bf.value1490 = and i32 %bf.clear1485, 1023
  %bf.shl1491 = shl i32 %bf.value1490, 12
  %bf.clear1492 = and i32 %bf.load1489, -4190209
  %bf.set1493 = or i32 %bf.clear1492, %bf.shl1491
  store i32 %bf.set1493, i32* %545, align 4
  %546 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21494 = bitcast %union.rec* %546 to %struct.closure_type*
  %ou41495 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21494, i32 0, i32 4
  %osave_style1496 = bitcast %union.FOURTH_UNION* %ou41495 to %struct.STYLE*
  %ooutline1497 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1496, i32 0, i32 4
  %bf.load1498 = load i32, i32* %ooutline1497, align 4
  %bf.lshr1499 = lshr i32 %bf.load1498, 22
  %bf.clear1500 = and i32 %bf.lshr1499, 3
  %547 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11501 = bitcast %union.rec* %547 to %struct.word_type*
  %ou21502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11501, i32 0, i32 2
  %os221503 = bitcast %union.SECOND_UNION* %ou21502 to %struct.anon.1*
  %548 = bitcast %struct.anon.1* %os221503 to i32*
  %bf.load1504 = load i32, i32* %548, align 4
  %bf.value1505 = and i32 %bf.clear1500, 1
  %bf.shl1506 = shl i32 %bf.value1505, 22
  %bf.clear1507 = and i32 %bf.load1504, -4194305
  %bf.set1508 = or i32 %bf.clear1507, %bf.shl1506
  store i32 %bf.set1508, i32* %548, align 4
  %549 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21509 = bitcast %union.rec* %549 to %struct.closure_type*
  %ou41510 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21509, i32 0, i32 4
  %osave_style1511 = bitcast %union.FOURTH_UNION* %ou41510 to %struct.STYLE*
  %olanguage1512 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1511, i32 0, i32 4
  %bf.load1513 = load i32, i32* %olanguage1512, align 4
  %bf.lshr1514 = lshr i32 %bf.load1513, 24
  %bf.clear1515 = and i32 %bf.lshr1514, 63
  %550 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11516 = bitcast %union.rec* %550 to %struct.word_type*
  %ou21517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11516, i32 0, i32 2
  %os221518 = bitcast %union.SECOND_UNION* %ou21517 to %struct.anon.1*
  %551 = bitcast %struct.anon.1* %os221518 to i32*
  %bf.load1519 = load i32, i32* %551, align 4
  %bf.value1520 = and i32 %bf.clear1515, 63
  %bf.shl1521 = shl i32 %bf.value1520, 23
  %bf.clear1522 = and i32 %bf.load1519, -528482305
  %bf.set1523 = or i32 %bf.clear1522, %bf.shl1521
  store i32 %bf.set1523, i32* %551, align 4
  %552 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21524 = bitcast %union.rec* %552 to %struct.closure_type*
  %ou41525 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21524, i32 0, i32 4
  %osave_style1526 = bitcast %union.FOURTH_UNION* %ou41525 to %struct.STYLE*
  %osu21527 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1526, i32 0, i32 1
  %oss21528 = bitcast %union.anon.10* %osu21527 to %struct.anon.11*
  %553 = bitcast %struct.anon.11* %oss21528 to i8*
  %bf.load1529 = load i8, i8* %553, align 4
  %bf.clear1530 = and i8 %bf.load1529, 3
  %bf.cast1531 = zext i8 %bf.clear1530 to i32
  %cmp1532 = icmp eq i32 %bf.cast1531, 2
  %conv1533 = zext i1 %cmp1532 to i32
  %554 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11534 = bitcast %union.rec* %554 to %struct.word_type*
  %ou21535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11534, i32 0, i32 2
  %os221536 = bitcast %union.SECOND_UNION* %ou21535 to %struct.anon.1*
  %555 = bitcast %struct.anon.1* %os221536 to i32*
  %bf.load1537 = load i32, i32* %555, align 4
  %bf.value1538 = and i32 %conv1533, 1
  %bf.shl1539 = shl i32 %bf.value1538, 31
  %bf.clear1540 = and i32 %bf.load1537, 2147483647
  %bf.set1541 = or i32 %bf.clear1540, %bf.shl1539
  store i32 %bf.set1541, i32* %555, align 4
  br label %if.end.1542

if.end.1542:                                      ; preds = %if.then.1469, %if.then.1466
  %556 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11543 = bitcast %union.rec* %556 to %struct.word_type*
  %ou21544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11543, i32 0, i32 2
  %os221545 = bitcast %union.SECOND_UNION* %ou21544 to %struct.anon.1*
  %557 = bitcast %struct.anon.1* %os221545 to i32*
  %bf.load1546 = load i32, i32* %557, align 4
  %bf.clear1547 = and i32 %bf.load1546, 4095
  %558 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21548 = bitcast %union.rec* %558 to %struct.closure_type*
  %ou41549 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21548, i32 0, i32 4
  %osave_style1550 = bitcast %union.FOURTH_UNION* %ou41549 to %struct.STYLE*
  %ofont1551 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1550, i32 0, i32 4
  %bf.load1552 = load i32, i32* %ofont1551, align 4
  %bf.clear1553 = and i32 %bf.load1552, 4095
  %cmp1554 = icmp ne i32 %bf.clear1547, %bf.clear1553
  br i1 %cmp1554, label %if.then.1556, label %if.end.1604

if.then.1556:                                     ; preds = %if.end.1542
  %559 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21557 = bitcast %union.rec* %559 to %struct.closure_type*
  %ou41558 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21557, i32 0, i32 4
  %osave_style1559 = bitcast %union.FOURTH_UNION* %ou41558 to %struct.STYLE*
  %ofont1560 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1559, i32 0, i32 4
  %bf.load1561 = load i32, i32* %ofont1560, align 4
  %bf.clear1562 = and i32 %bf.load1561, 4095
  %560 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11563 = bitcast %union.rec* %560 to %struct.word_type*
  %ou21564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11563, i32 0, i32 2
  %os221565 = bitcast %union.SECOND_UNION* %ou21564 to %struct.anon.1*
  %561 = bitcast %struct.anon.1* %os221565 to i32*
  %bf.load1566 = load i32, i32* %561, align 4
  %bf.value1567 = and i32 %bf.clear1562, 4095
  %bf.clear1568 = and i32 %bf.load1566, -4096
  %bf.set1569 = or i32 %bf.clear1568, %bf.value1567
  store i32 %bf.set1569, i32* %561, align 4
  %562 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11570 = bitcast %union.rec* %562 to %struct.word_type*
  %ou11571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11570, i32 0, i32 1
  %ofpos1572 = bitcast %union.FIRST_UNION* %ou11571 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1572, i32 0, i32 2
  %563 = load i16, i16* %ofile_num, align 2
  %564 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11573 = bitcast %union.rec* %564 to %struct.word_type*
  %ou11574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11573, i32 0, i32 1
  %ofpos1575 = bitcast %union.FIRST_UNION* %ou11574 to %struct.FILE_POS*
  %ofile_num1576 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1575, i32 0, i32 2
  store i16 %563, i16* %ofile_num1576, align 2
  %565 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11577 = bitcast %union.rec* %565 to %struct.word_type*
  %ou11578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11577, i32 0, i32 1
  %ofpos1579 = bitcast %union.FIRST_UNION* %ou11578 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1579, i32 0, i32 3
  %bf.load1580 = load i32, i32* %oline_num, align 4
  %bf.clear1581 = and i32 %bf.load1580, 1048575
  %566 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11582 = bitcast %union.rec* %566 to %struct.word_type*
  %ou11583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11582, i32 0, i32 1
  %ofpos1584 = bitcast %union.FIRST_UNION* %ou11583 to %struct.FILE_POS*
  %oline_num1585 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1584, i32 0, i32 3
  %bf.load1586 = load i32, i32* %oline_num1585, align 4
  %bf.value1587 = and i32 %bf.clear1581, 1048575
  %bf.clear1588 = and i32 %bf.load1586, -1048576
  %bf.set1589 = or i32 %bf.clear1588, %bf.value1587
  store i32 %bf.set1589, i32* %oline_num1585, align 4
  %567 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11590 = bitcast %union.rec* %567 to %struct.word_type*
  %ou11591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11590, i32 0, i32 1
  %ofpos1592 = bitcast %union.FIRST_UNION* %ou11591 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1592, i32 0, i32 3
  %bf.load1593 = load i32, i32* %ocol_num, align 4
  %bf.lshr1594 = lshr i32 %bf.load1593, 20
  %568 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11595 = bitcast %union.rec* %568 to %struct.word_type*
  %ou11596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11595, i32 0, i32 1
  %ofpos1597 = bitcast %union.FIRST_UNION* %ou11596 to %struct.FILE_POS*
  %ocol_num1598 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1597, i32 0, i32 3
  %bf.load1599 = load i32, i32* %ocol_num1598, align 4
  %bf.value1600 = and i32 %bf.lshr1594, 4095
  %bf.shl1601 = shl i32 %bf.value1600, 20
  %bf.clear1602 = and i32 %bf.load1599, 1048575
  %bf.set1603 = or i32 %bf.clear1602, %bf.shl1601
  store i32 %bf.set1603, i32* %ocol_num1598, align 4
  %569 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  call void @FontWordSize(%union.rec* %569)
  br label %if.end.1604

if.end.1604:                                      ; preds = %if.then.1556, %if.end.1542
  %570 = load %union.rec*, %union.rec** %newg, align 8
  %os51605 = bitcast %union.rec* %570 to %struct.gapobj_type*
  %ogap1606 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51605, i32 0, i32 3
  %571 = bitcast %struct.GAP* %ogap1606 to i16*
  %bf.load1607 = load i16, i16* %571, align 4
  %bf.clear1608 = and i16 %bf.load1607, 8191
  %bf.set1609 = or i16 %bf.clear1608, -8192
  store i16 %bf.set1609, i16* %571, align 4
  %572 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11610 = bitcast %union.rec* %572 to %struct.word_type*
  %ou31611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11610, i32 0, i32 3
  %os311612 = bitcast %union.THIRD_UNION* %ou31611 to %struct.anon.6*
  %oback1613 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311612, i32 0, i32 0
  %arrayidx1614 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1613, i32 0, i64 0
  %573 = load i32, i32* %arrayidx1614, align 4
  %574 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11615 = bitcast %union.rec* %574 to %struct.word_type*
  %ou31616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11615, i32 0, i32 3
  %os311617 = bitcast %union.THIRD_UNION* %ou31616 to %struct.anon.6*
  %ofwd1618 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311617, i32 0, i32 1
  %arrayidx1619 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1618, i32 0, i64 0
  %575 = load i32, i32* %arrayidx1619, align 4
  %add1620 = add nsw i32 %573, %575
  %nat_width1621 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %576 = load i32, i32* %nat_width1621, align 4
  %add1622 = add nsw i32 %576, %add1620
  store i32 %add1622, i32* %nat_width1621, align 4
  br label %if.end.1623

if.end.1623:                                      ; preds = %if.end.1604, %land.lhs.true, %lor.lhs.false.1449
  br label %if.end.1625

if.else.1624:                                     ; preds = %if.then.1439
  store i32 1, i32* %unbreakable_at_right, align 4
  br label %if.end.1625

if.end.1625:                                      ; preds = %if.else.1624, %if.end.1623
  br label %if.end.1636

if.else.1626:                                     ; preds = %lor.lhs.false.1431
  %577 = load %union.rec*, %union.rec** %newg, align 8
  %os51627 = bitcast %union.rec* %577 to %struct.gapobj_type*
  %ogap1628 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51627, i32 0, i32 3
  %578 = bitcast %struct.GAP* %ogap1628 to i16*
  %bf.load1629 = load i16, i16* %578, align 4
  %bf.lshr1630 = lshr i16 %bf.load1629, 7
  %bf.clear1631 = and i16 %bf.lshr1630, 1
  %bf.cast1632 = zext i16 %bf.clear1631 to i32
  %tobool1633 = icmp ne i32 %bf.cast1632, 0
  br i1 %tobool1633, label %if.then.1634, label %if.end.1635

if.then.1634:                                     ; preds = %if.else.1626
  store i32 1, i32* %unbreakable_at_right, align 4
  br label %if.end.1635

if.end.1635:                                      ; preds = %if.then.1634, %if.else.1626
  br label %if.end.1636

if.end.1636:                                      ; preds = %if.end.1635, %if.end.1625
  %579 = load %union.rec*, %union.rec** %newg, align 8
  %os11637 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11637, i32 0, i32 0
  %arrayidx1639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1638, i32 0, i64 1
  %osucc1640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1639, i32 0, i32 1
  %580 = load %union.rec*, %union.rec** %osucc1640, align 8
  %rlink1641 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %580, %union.rec** %rlink1641, align 8
  br label %if.end.1644

if.else.1642:                                     ; preds = %for.end.1327
  %581 = load %union.rec*, %union.rec** %x.addr, align 8
  %rlink1643 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %581, %union.rec** %rlink1643, align 8
  br label %if.end.1644

if.end.1644:                                      ; preds = %if.else.1642, %if.end.1636
  %llink1649 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %582 = load %union.rec*, %union.rec** %llink1649, align 8
  %583 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1650 = icmp eq %union.rec* %582, %583
  br i1 %cmp1650, label %if.then.1652, label %if.else.1666

if.then.1652:                                     ; preds = %if.end.1644
  %cwid1653 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %584 = load %union.rec*, %union.rec** %cwid1653, align 8
  %cmp1654 = icmp ne %union.rec* %584, null
  br i1 %cmp1654, label %cond.true.1656, label %cond.false.1662

cond.true.1656:                                   ; preds = %if.then.1652
  %cwid1657 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %585 = load %union.rec*, %union.rec** %cwid1657, align 8
  %os21658 = bitcast %union.rec* %585 to %struct.closure_type*
  %ou41659 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21658, i32 0, i32 4
  %oconstraint1660 = bitcast %union.FOURTH_UNION* %ou41659 to %struct.CONSTRAINT*
  %obfc1661 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1660, i32 0, i32 1
  %586 = load i32, i32* %obfc1661, align 4
  br label %cond.end.1663

cond.false.1662:                                  ; preds = %if.then.1652
  %587 = load i32, i32* %max_width, align 4
  br label %cond.end.1663

cond.end.1663:                                    ; preds = %cond.false.1662, %cond.true.1656
  %cond1664 = phi i32 [ %586, %cond.true.1656 ], [ %587, %cond.false.1662 ]
  store i32 %cond1664, i32* %col_width, align 4
  %badness1665 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 0, i32* %badness1665, align 4
  br label %if.end.1701

if.else.1666:                                     ; preds = %if.end.1644
  %cwid1667 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %588 = load %union.rec*, %union.rec** %cwid1667, align 8
  %cmp1668 = icmp ne %union.rec* %588, null
  br i1 %cmp1668, label %cond.true.1670, label %cond.false.1676

cond.true.1670:                                   ; preds = %if.else.1666
  %cwid1671 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %589 = load %union.rec*, %union.rec** %cwid1671, align 8
  %os21672 = bitcast %union.rec* %589 to %struct.closure_type*
  %ou41673 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21672, i32 0, i32 4
  %oconstraint1674 = bitcast %union.FOURTH_UNION* %ou41673 to %struct.CONSTRAINT*
  %obfc1675 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1674, i32 0, i32 1
  %590 = load i32, i32* %obfc1675, align 4
  br label %cond.end.1677

cond.false.1676:                                  ; preds = %if.else.1666
  %591 = load i32, i32* %etc_width, align 4
  br label %cond.end.1677

cond.end.1677:                                    ; preds = %cond.false.1676, %cond.true.1670
  %cond1678 = phi i32 [ %590, %cond.true.1670 ], [ %591, %cond.false.1676 ]
  store i32 %cond1678, i32* %col_width, align 4
  %llink1679 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %592 = load %union.rec*, %union.rec** %llink1679, align 8
  %os11680 = bitcast %union.rec* %592 to %struct.word_type*
  %olist1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11680, i32 0, i32 0
  %arrayidx1682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1681, i32 0, i64 1
  %opred1683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1682, i32 0, i32 0
  %593 = load %union.rec*, %union.rec** %opred1683, align 8
  store %union.rec* %593, %union.rec** %g1646, align 8
  br label %for.cond.1684

for.cond.1684:                                    ; preds = %for.inc.1693, %cond.end.1677
  %594 = load %union.rec*, %union.rec** %g1646, align 8
  %os11685 = bitcast %union.rec* %594 to %struct.word_type*
  %ou11686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11685, i32 0, i32 1
  %os111687 = bitcast %union.FIRST_UNION* %ou11686 to %struct.anon*
  %otype1688 = getelementptr inbounds %struct.anon, %struct.anon* %os111687, i32 0, i32 0
  %595 = load i8, i8* %otype1688, align 1
  %conv1689 = zext i8 %595 to i32
  %cmp1690 = icmp eq i32 %conv1689, 0
  br i1 %cmp1690, label %for.body.1692, label %for.end.1698

for.body.1692:                                    ; preds = %for.cond.1684
  br label %for.inc.1693

for.inc.1693:                                     ; preds = %for.body.1692
  %596 = load %union.rec*, %union.rec** %g1646, align 8
  %os11694 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11694, i32 0, i32 0
  %arrayidx1696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1695, i32 0, i64 1
  %opred1697 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1696, i32 0, i32 0
  %597 = load %union.rec*, %union.rec** %opred1697, align 8
  store %union.rec* %597, %union.rec** %g1646, align 8
  br label %for.cond.1684

for.end.1698:                                     ; preds = %for.cond.1684
  %598 = load %union.rec*, %union.rec** %g1646, align 8
  %os51699 = bitcast %union.rec* %598 to %struct.gapobj_type*
  %osave_badness = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51699, i32 0, i32 4
  %599 = load i32, i32* %osave_badness, align 4
  %badness1700 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 %599, i32* %badness1700, align 4
  br label %if.end.1701

if.end.1701:                                      ; preds = %for.end.1698, %cond.end.1663
  %tab_count1702 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %600 = load i8, i8* %tab_count1702, align 1
  %conv1703 = zext i8 %600 to i32
  %cmp1704 = icmp sgt i32 %conv1703, 0
  br i1 %cmp1704, label %if.then.1706, label %if.end.1781

if.then.1706:                                     ; preds = %if.end.1701
  %llink1708 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %601 = load %union.rec*, %union.rec** %llink1708, align 8
  %os11709 = bitcast %union.rec* %601 to %struct.word_type*
  %olist1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11709, i32 0, i32 0
  %arrayidx1711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1710, i32 0, i64 0
  %osucc1712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1711, i32 0, i32 1
  %602 = load %union.rec*, %union.rec** %osucc1712, align 8
  %os11713 = bitcast %union.rec* %602 to %struct.word_type*
  %olist1714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11713, i32 0, i32 0
  %arrayidx1715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1714, i32 0, i64 0
  %osucc1716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1715, i32 0, i32 1
  %603 = load %union.rec*, %union.rec** %osucc1716, align 8
  store %union.rec* %603, %union.rec** %glink, align 8
  %604 = load %union.rec*, %union.rec** %glink, align 8
  %os11717 = bitcast %union.rec* %604 to %struct.word_type*
  %ou11718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11717, i32 0, i32 1
  %os111719 = bitcast %union.FIRST_UNION* %ou11718 to %struct.anon*
  %otype1720 = getelementptr inbounds %struct.anon, %struct.anon* %os111719, i32 0, i32 0
  %605 = load i8, i8* %otype1720, align 1
  %conv1721 = zext i8 %605 to i32
  %cmp1722 = icmp eq i32 %conv1721, 0
  br i1 %cmp1722, label %if.end.1726, label %if.then.1724

if.then.1724:                                     ; preds = %if.then.1706
  %606 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1725 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %606, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.1726

if.end.1726:                                      ; preds = %if.then.1724, %if.then.1706
  %607 = load %union.rec*, %union.rec** %glink, align 8
  %os11727 = bitcast %union.rec* %607 to %struct.word_type*
  %olist1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11727, i32 0, i32 0
  %arrayidx1729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1728, i32 0, i64 1
  %opred1730 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1729, i32 0, i32 0
  %608 = load %union.rec*, %union.rec** %opred1730, align 8
  store %union.rec* %608, %union.rec** %g1646, align 8
  br label %for.cond.1731

for.cond.1731:                                    ; preds = %for.inc.1740, %if.end.1726
  %609 = load %union.rec*, %union.rec** %g1646, align 8
  %os11732 = bitcast %union.rec* %609 to %struct.word_type*
  %ou11733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11732, i32 0, i32 1
  %os111734 = bitcast %union.FIRST_UNION* %ou11733 to %struct.anon*
  %otype1735 = getelementptr inbounds %struct.anon, %struct.anon* %os111734, i32 0, i32 0
  %610 = load i8, i8* %otype1735, align 1
  %conv1736 = zext i8 %610 to i32
  %cmp1737 = icmp eq i32 %conv1736, 0
  br i1 %cmp1737, label %for.body.1739, label %for.end.1745

for.body.1739:                                    ; preds = %for.cond.1731
  br label %for.inc.1740

for.inc.1740:                                     ; preds = %for.body.1739
  %611 = load %union.rec*, %union.rec** %g1646, align 8
  %os11741 = bitcast %union.rec* %611 to %struct.word_type*
  %olist1742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11741, i32 0, i32 0
  %arrayidx1743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1742, i32 0, i64 1
  %opred1744 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1743, i32 0, i32 0
  %612 = load %union.rec*, %union.rec** %opred1744, align 8
  store %union.rec* %612, %union.rec** %g1646, align 8
  br label %for.cond.1731

for.end.1745:                                     ; preds = %for.cond.1731
  %613 = load %union.rec*, %union.rec** %g1646, align 8
  %os11746 = bitcast %union.rec* %613 to %struct.word_type*
  %ou11747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11746, i32 0, i32 1
  %os111748 = bitcast %union.FIRST_UNION* %ou11747 to %struct.anon*
  %otype1749 = getelementptr inbounds %struct.anon, %struct.anon* %os111748, i32 0, i32 0
  %614 = load i8, i8* %otype1749, align 1
  %conv1750 = zext i8 %614 to i32
  %cmp1751 = icmp eq i32 %conv1750, 1
  br i1 %cmp1751, label %land.lhs.true.1753, label %if.end.1780

land.lhs.true.1753:                               ; preds = %for.end.1745
  %615 = load %union.rec*, %union.rec** %g1646, align 8
  %os51754 = bitcast %union.rec* %615 to %struct.gapobj_type*
  %ogap1755 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51754, i32 0, i32 3
  %616 = bitcast %struct.GAP* %ogap1755 to i16*
  %bf.load1756 = load i16, i16* %616, align 4
  %bf.lshr1757 = lshr i16 %bf.load1756, 13
  %bf.cast1758 = zext i16 %bf.lshr1757 to i32
  %cmp1759 = icmp eq i32 %bf.cast1758, 6
  br i1 %cmp1759, label %land.lhs.true.1761, label %if.end.1780

land.lhs.true.1761:                               ; preds = %land.lhs.true.1753
  %617 = load %union.rec*, %union.rec** %g1646, align 8
  %os51762 = bitcast %union.rec* %617 to %struct.gapobj_type*
  %ogap1763 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51762, i32 0, i32 3
  %618 = bitcast %struct.GAP* %ogap1763 to i16*
  %bf.load1764 = load i16, i16* %618, align 4
  %bf.lshr1765 = lshr i16 %bf.load1764, 10
  %bf.clear1766 = and i16 %bf.lshr1765, 7
  %bf.cast1767 = zext i16 %bf.clear1766 to i32
  %cmp1768 = icmp eq i32 %bf.cast1767, 3
  br i1 %cmp1768, label %land.lhs.true.1770, label %if.end.1780

land.lhs.true.1770:                               ; preds = %land.lhs.true.1761
  %619 = load %union.rec*, %union.rec** %g1646, align 8
  %os51771 = bitcast %union.rec* %619 to %struct.gapobj_type*
  %ogap1772 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51771, i32 0, i32 3
  %owidth1773 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap1772, i32 0, i32 1
  %620 = load i16, i16* %owidth1773, align 2
  %conv1774 = sext i16 %620 to i32
  %cmp1775 = icmp eq i32 %conv1774, 4096
  br i1 %cmp1775, label %if.then.1777, label %if.end.1780

if.then.1777:                                     ; preds = %land.lhs.true.1770
  %badness1778 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %621 = load i32, i32* %badness1778, align 4
  %add1779 = add nsw i32 %621, 128
  store i32 %add1779, i32* %badness1778, align 4
  br label %if.end.1780

if.end.1780:                                      ; preds = %if.then.1777, %land.lhs.true.1770, %land.lhs.true.1761, %land.lhs.true.1753, %for.end.1745
  br label %if.end.1781

if.end.1781:                                      ; preds = %if.end.1780, %if.end.1701
  %622 = load i32, i32* %col_width, align 4
  %cmp1782 = icmp sle i32 %622, 0
  br i1 %cmp1782, label %if.then.1784, label %if.else.1797

if.then.1784:                                     ; preds = %if.end.1781
  %nat_width1785 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %623 = load i32, i32* %nat_width1785, align 4
  %cmp1786 = icmp eq i32 %623, 0
  br i1 %cmp1786, label %if.then.1788, label %if.else.1792

if.then.1788:                                     ; preds = %if.then.1784
  %class1789 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 0, i8* %class1789, align 1
  %badness1790 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %624 = load i32, i32* %badness1790, align 4
  %add1791 = add nsw i32 %624, 0
  store i32 %add1791, i32* %badness1790, align 4
  br label %if.end.1796

if.else.1792:                                     ; preds = %if.then.1784
  %class1793 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %class1793, align 1
  %badness1794 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %625 = load i32, i32* %badness1794, align 4
  %add1795 = add nsw i32 %625, 1048576
  store i32 %add1795, i32* %badness1794, align 4
  br label %if.end.1796

if.end.1796:                                      ; preds = %if.else.1792, %if.then.1788
  br label %if.end.1872

if.else.1797:                                     ; preds = %if.end.1781
  %tab_count1798 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %626 = load i8, i8* %tab_count1798, align 1
  %conv1799 = zext i8 %626 to i32
  %cmp1800 = icmp sgt i32 %conv1799, 0
  br i1 %cmp1800, label %land.lhs.true.1802, label %if.else.1809

land.lhs.true.1802:                               ; preds = %if.else.1797
  %width_to_tab = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %627 = load i32, i32* %width_to_tab, align 4
  %tab_pos = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  %628 = load i32, i32* %tab_pos, align 4
  %cmp1803 = icmp sgt i32 %627, %628
  br i1 %cmp1803, label %if.then.1805, label %if.else.1809

if.then.1805:                                     ; preds = %land.lhs.true.1802
  %class1806 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 4, i8* %class1806, align 1
  %badness1807 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %629 = load i32, i32* %badness1807, align 4
  %add1808 = add nsw i32 %629, 1048576
  store i32 %add1808, i32* %badness1807, align 4
  br label %if.end.1871

if.else.1809:                                     ; preds = %land.lhs.true.1802, %if.else.1797
  %630 = load i32, i32* %col_width, align 4
  %nat_width1810 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %631 = load i32, i32* %nat_width1810, align 4
  %sub1811 = sub nsw i32 %630, %631
  %mul1812 = mul nsw i32 1, %sub1811
  %space_width1813 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %632 = load i32, i32* %space_width1813, align 4
  %mul1814 = mul nsw i32 2, %632
  %cmp1815 = icmp sgt i32 %mul1812, %mul1814
  br i1 %cmp1815, label %if.then.1817, label %if.else.1831

if.then.1817:                                     ; preds = %if.else.1809
  %tab_count1818 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %633 = load i8, i8* %tab_count1818, align 1
  %conv1819 = zext i8 %633 to i32
  %cmp1820 = icmp sgt i32 %conv1819, 0
  %cond1822 = select i1 %cmp1820, i32 1, i32 0
  %conv1823 = trunc i32 %cond1822 to i8
  %class1824 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 %conv1823, i8* %class1824, align 1
  %634 = load i32, i32* %col_width, align 4
  %nat_width1825 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %635 = load i32, i32* %nat_width1825, align 4
  %sub1826 = sub nsw i32 %634, %635
  %mul1827 = mul nsw i32 512, %sub1826
  %636 = load i32, i32* %col_width, align 4
  %div = sdiv i32 %mul1827, %636
  store i32 %div, i32* %badness, align 4
  %637 = load i32, i32* %badness, align 4
  %638 = load i32, i32* %badness, align 4
  %mul1828 = mul nsw i32 %637, %638
  %badness1829 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %639 = load i32, i32* %badness1829, align 4
  %add1830 = add nsw i32 %639, %mul1828
  store i32 %add1830, i32* %badness1829, align 4
  br label %if.end.1870

if.else.1831:                                     ; preds = %if.else.1809
  %nat_width1832 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %640 = load i32, i32* %nat_width1832, align 4
  %641 = load i32, i32* %col_width, align 4
  %cmp1833 = icmp sle i32 %640, %641
  br i1 %cmp1833, label %if.then.1835, label %if.else.1844

if.then.1835:                                     ; preds = %if.else.1831
  %class1836 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 1, i8* %class1836, align 1
  %642 = load i32, i32* %col_width, align 4
  %nat_width1837 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %643 = load i32, i32* %nat_width1837, align 4
  %sub1838 = sub nsw i32 %642, %643
  %mul1839 = mul nsw i32 128, %sub1838
  %644 = load i32, i32* %col_width, align 4
  %div1840 = sdiv i32 %mul1839, %644
  store i32 %div1840, i32* %badness, align 4
  %645 = load i32, i32* %badness, align 4
  %646 = load i32, i32* %badness, align 4
  %mul1841 = mul nsw i32 %645, %646
  %badness1842 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %647 = load i32, i32* %badness1842, align 4
  %add1843 = add nsw i32 %647, %mul1841
  store i32 %add1843, i32* %badness1842, align 4
  br label %if.end.1869

if.else.1844:                                     ; preds = %if.else.1831
  %648 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %fractional_spacing_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %648, i32 0, i32 7
  %649 = load i32, i32* %fractional_spacing_avail, align 4
  %tobool1845 = icmp ne i32 %649, 0
  br i1 %tobool1845, label %land.lhs.true.1846, label %if.else.1864

land.lhs.true.1846:                               ; preds = %if.else.1844
  %650 = load i32, i32* %allow_shrink.addr, align 4
  %tobool1847 = icmp ne i32 %650, 0
  br i1 %tobool1847, label %land.lhs.true.1848, label %if.else.1864

land.lhs.true.1848:                               ; preds = %land.lhs.true.1846
  %nat_width1849 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %651 = load i32, i32* %nat_width1849, align 4
  %652 = load i32, i32* %col_width, align 4
  %sub1850 = sub nsw i32 %651, %652
  %mul1851 = mul nsw i32 4, %sub1850
  %space_width1852 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %653 = load i32, i32* %space_width1852, align 4
  %cmp1853 = icmp sle i32 %mul1851, %653
  br i1 %cmp1853, label %if.then.1855, label %if.else.1864

if.then.1855:                                     ; preds = %land.lhs.true.1848
  %class1856 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %class1856, align 1
  %654 = load i32, i32* %col_width, align 4
  %nat_width1857 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %655 = load i32, i32* %nat_width1857, align 4
  %sub1858 = sub nsw i32 %654, %655
  %mul1859 = mul nsw i32 128, %sub1858
  %656 = load i32, i32* %col_width, align 4
  %div1860 = sdiv i32 %mul1859, %656
  store i32 %div1860, i32* %badness, align 4
  %657 = load i32, i32* %badness, align 4
  %658 = load i32, i32* %badness, align 4
  %mul1861 = mul nsw i32 %657, %658
  %badness1862 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %659 = load i32, i32* %badness1862, align 4
  %add1863 = add nsw i32 %659, %mul1861
  store i32 %add1863, i32* %badness1862, align 4
  br label %if.end.1868

if.else.1864:                                     ; preds = %land.lhs.true.1848, %land.lhs.true.1846, %if.else.1844
  %class1865 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %class1865, align 1
  %badness1866 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %660 = load i32, i32* %badness1866, align 4
  %add1867 = add nsw i32 %660, 1048576
  store i32 %add1867, i32* %badness1866, align 4
  br label %if.end.1868

if.end.1868:                                      ; preds = %if.else.1864, %if.then.1855
  br label %if.end.1869

if.end.1869:                                      ; preds = %if.end.1868, %if.then.1835
  br label %if.end.1870

if.end.1870:                                      ; preds = %if.end.1869, %if.then.1817
  br label %if.end.1871

if.end.1871:                                      ; preds = %if.end.1870, %if.then.1805
  br label %if.end.1872

if.end.1872:                                      ; preds = %if.end.1871, %if.end.1796
  %badness1873 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %661 = load i32, i32* %badness1873, align 4
  %cmp1874 = icmp sge i32 %661, 0
  br i1 %cmp1874, label %if.end.1878, label %if.then.1876

if.then.1876:                                     ; preds = %if.end.1872
  %662 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1877 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %662, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.1878

if.end.1878:                                      ; preds = %if.then.1876, %if.end.1872
  %663 = load i32, i32* %unbreakable_at_right, align 4
  %tobool1879 = icmp ne i32 %663, 0
  br i1 %tobool1879, label %if.then.1880, label %if.else.1882

if.then.1880:                                     ; preds = %if.end.1878
  %class1881 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 7, i8* %class1881, align 1
  br label %if.end.1899

if.else.1882:                                     ; preds = %if.end.1878
  %class1883 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %664 = load i8, i8* %class1883, align 1
  %conv1884 = zext i8 %664 to i32
  %cmp1885 = icmp eq i32 %conv1884, 2
  br i1 %cmp1885, label %land.lhs.true.1887, label %if.end.1898

land.lhs.true.1887:                               ; preds = %if.else.1882
  %665 = load %union.rec*, %union.rec** %newg, align 8
  %os51888 = bitcast %union.rec* %665 to %struct.gapobj_type*
  %ogap1889 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51888, i32 0, i32 3
  %666 = bitcast %struct.GAP* %ogap1889 to i16*
  %bf.load1890 = load i16, i16* %666, align 4
  %bf.lshr1891 = lshr i16 %bf.load1890, 13
  %bf.cast1892 = zext i16 %bf.lshr1891 to i32
  %cmp1893 = icmp eq i32 %bf.cast1892, 6
  br i1 %cmp1893, label %if.then.1895, label %if.end.1898

if.then.1895:                                     ; preds = %land.lhs.true.1887
  %class1896 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %class1896, align 1
  %badness1897 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 1048576, i32* %badness1897, align 4
  br label %if.end.1898

if.end.1898:                                      ; preds = %if.then.1895, %land.lhs.true.1887, %if.else.1882
  br label %if.end.1899

if.end.1899:                                      ; preds = %if.end.1898, %if.then.1880
  br label %if.end.1900

if.end.1900:                                      ; preds = %if.end.1899, %if.then.1167
  %667 = bitcast %struct.INTERVAL* %BestI to i8*
  %668 = bitcast %struct.INTERVAL* %I to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %667, i8* %668, i64 48, i32 8, i1 false)
  br label %while.cond.1901

while.cond.1901:                                  ; preds = %sw.epilog, %if.end.1900
  %class1902 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %669 = load i8, i8* %class1902, align 1
  %conv1903 = zext i8 %669 to i32
  %cmp1904 = icmp ne i32 %conv1903, 5
  br i1 %cmp1904, label %while.body.1906, label %while.end.3447

while.body.1906:                                  ; preds = %while.cond.1901
  %class1907 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %670 = load i8, i8* %class1907, align 1
  %conv1908 = zext i8 %670 to i32
  switch i32 %conv1908, label %sw.default [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 7, label %sw.bb.1920
    i32 1, label %sw.bb.2834
    i32 2, label %sw.bb.2834
    i32 3, label %sw.bb.2834
    i32 6, label %sw.bb.2841
    i32 4, label %sw.bb.2841
  ]

sw.bb:                                            ; preds = %while.body.1906, %while.body.1906
  %class1909 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %671 = load i8, i8* %class1909, align 1
  %conv1910 = zext i8 %671 to i32
  %cmp1911 = icmp eq i32 %conv1910, 8
  br i1 %cmp1911, label %if.then.1918, label %lor.lhs.false.1913

lor.lhs.false.1913:                               ; preds = %sw.bb
  %badness1914 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %BestI, i32 0, i32 5
  %672 = load i32, i32* %badness1914, align 4
  %badness1915 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %673 = load i32, i32* %badness1915, align 4
  %cmp1916 = icmp sle i32 %672, %673
  br i1 %cmp1916, label %if.then.1918, label %if.end.1919

if.then.1918:                                     ; preds = %lor.lhs.false.1913, %sw.bb
  %674 = bitcast %struct.INTERVAL* %I to i8*
  %675 = bitcast %struct.INTERVAL* %BestI to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %674, i8* %675, i64 48, i32 8, i1 false)
  br label %if.end.1919

if.end.1919:                                      ; preds = %if.then.1918, %lor.lhs.false.1913
  br label %sw.bb.1920

sw.bb.1920:                                       ; preds = %while.body.1906, %if.end.1919
  %class1927 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %676 = load i8, i8* %class1927, align 1
  %conv1928 = zext i8 %676 to i32
  %cmp1929 = icmp ne i32 %conv1928, 5
  br i1 %cmp1929, label %if.end.1933, label %if.then.1931

if.then.1931:                                     ; preds = %sw.bb.1920
  %677 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1932 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %677, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.1933

if.end.1933:                                      ; preds = %if.then.1931, %sw.bb.1920
  %rlink1934 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  %678 = load %union.rec*, %union.rec** %rlink1934, align 8
  store %union.rec* %678, %union.rec** %rlink1922, align 8
  %679 = load %union.rec*, %union.rec** %rlink1922, align 8
  %680 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1935 = icmp eq %union.rec* %679, %680
  br i1 %cmp1935, label %if.then.1937, label %if.else.1939

if.then.1937:                                     ; preds = %if.end.1933
  %class1938 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 5, i8* %class1938, align 1
  br label %if.end.2833

if.else.1939:                                     ; preds = %if.end.1933
  %681 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os11940 = bitcast %union.rec* %681 to %struct.word_type*
  %olist1941 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11940, i32 0, i32 0
  %arrayidx1942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1941, i32 0, i64 1
  %opred1943 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1942, i32 0, i32 0
  %682 = load %union.rec*, %union.rec** %opred1943, align 8
  store %union.rec* %682, %union.rec** %g1924, align 8
  br label %for.cond.1944

for.cond.1944:                                    ; preds = %for.inc.1953, %if.else.1939
  %683 = load %union.rec*, %union.rec** %g1924, align 8
  %os11945 = bitcast %union.rec* %683 to %struct.word_type*
  %ou11946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11945, i32 0, i32 1
  %os111947 = bitcast %union.FIRST_UNION* %ou11946 to %struct.anon*
  %otype1948 = getelementptr inbounds %struct.anon, %struct.anon* %os111947, i32 0, i32 0
  %684 = load i8, i8* %otype1948, align 1
  %conv1949 = zext i8 %684 to i32
  %cmp1950 = icmp eq i32 %conv1949, 0
  br i1 %cmp1950, label %for.body.1952, label %for.end.1958

for.body.1952:                                    ; preds = %for.cond.1944
  br label %for.inc.1953

for.inc.1953:                                     ; preds = %for.body.1952
  %685 = load %union.rec*, %union.rec** %g1924, align 8
  %os11954 = bitcast %union.rec* %685 to %struct.word_type*
  %olist1955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11954, i32 0, i32 0
  %arrayidx1956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1955, i32 0, i64 1
  %opred1957 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1956, i32 0, i32 0
  %686 = load %union.rec*, %union.rec** %opred1957, align 8
  store %union.rec* %686, %union.rec** %g1924, align 8
  br label %for.cond.1944

for.end.1958:                                     ; preds = %for.cond.1944
  %687 = load %union.rec*, %union.rec** %g1924, align 8
  %os11959 = bitcast %union.rec* %687 to %struct.word_type*
  %ou11960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11959, i32 0, i32 1
  %os111961 = bitcast %union.FIRST_UNION* %ou11960 to %struct.anon*
  %otype1962 = getelementptr inbounds %struct.anon, %struct.anon* %os111961, i32 0, i32 0
  %688 = load i8, i8* %otype1962, align 1
  %conv1963 = zext i8 %688 to i32
  %cmp1964 = icmp eq i32 %conv1963, 1
  br i1 %cmp1964, label %if.end.1968, label %if.then.1966

if.then.1966:                                     ; preds = %for.end.1958
  %689 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1967 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %689, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.1968

if.end.1968:                                      ; preds = %if.then.1966, %for.end.1958
  %badness1969 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %690 = load i32, i32* %badness1969, align 4
  %691 = load %union.rec*, %union.rec** %g1924, align 8
  %os51970 = bitcast %union.rec* %691 to %struct.gapobj_type*
  %osave_badness1971 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51970, i32 0, i32 4
  store i32 %690, i32* %osave_badness1971, align 4
  %llink1972 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %692 = load %union.rec*, %union.rec** %llink1972, align 8
  %693 = load %union.rec*, %union.rec** %g1924, align 8
  %os51973 = bitcast %union.rec* %693 to %struct.gapobj_type*
  %osave_prev = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51973, i32 0, i32 7
  store %union.rec* %692, %union.rec** %osave_prev, align 8
  %cwid1974 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %694 = load %union.rec*, %union.rec** %cwid1974, align 8
  %695 = load %union.rec*, %union.rec** %g1924, align 8
  %os51975 = bitcast %union.rec* %695 to %struct.gapobj_type*
  %osave_cwid = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51975, i32 0, i32 8
  store %union.rec* %694, %union.rec** %osave_cwid, align 8
  %696 = load %union.rec*, %union.rec** %g1924, align 8
  %os51976 = bitcast %union.rec* %696 to %struct.gapobj_type*
  %ogap1977 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51976, i32 0, i32 3
  %697 = bitcast %struct.GAP* %ogap1977 to i16*
  %bf.load1978 = load i16, i16* %697, align 4
  %bf.lshr1979 = lshr i16 %bf.load1978, 13
  %bf.cast1980 = zext i16 %bf.lshr1979 to i32
  %cmp1981 = icmp eq i32 %bf.cast1980, 7
  br i1 %cmp1981, label %if.then.1983, label %if.end.2000

if.then.1983:                                     ; preds = %if.end.1968
  %698 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11984 = bitcast %union.rec* %698 to %struct.word_type*
  %ou31985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11984, i32 0, i32 3
  %os311986 = bitcast %union.THIRD_UNION* %ou31985 to %struct.anon.6*
  %oback1987 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311986, i32 0, i32 0
  %arrayidx1988 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1987, i32 0, i64 0
  %699 = load i32, i32* %arrayidx1988, align 4
  %700 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os11989 = bitcast %union.rec* %700 to %struct.word_type*
  %ou31990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11989, i32 0, i32 3
  %os311991 = bitcast %union.THIRD_UNION* %ou31990 to %struct.anon.6*
  %ofwd1992 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311991, i32 0, i32 1
  %arrayidx1993 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1992, i32 0, i64 0
  %701 = load i32, i32* %arrayidx1993, align 4
  %add1994 = add nsw i32 %699, %701
  %nat_width1995 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %702 = load i32, i32* %nat_width1995, align 4
  %sub1996 = sub nsw i32 %702, %add1994
  store i32 %sub1996, i32* %nat_width1995, align 4
  %703 = load %union.rec*, %union.rec** %g1924, align 8
  %os51997 = bitcast %union.rec* %703 to %struct.gapobj_type*
  %osave_badness1998 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51997, i32 0, i32 4
  %704 = load i32, i32* %osave_badness1998, align 4
  %add1999 = add nsw i32 %704, 16
  store i32 %add1999, i32* %osave_badness1998, align 4
  br label %if.end.2000

if.end.2000:                                      ; preds = %if.then.1983, %if.end.1968
  %705 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12001 = bitcast %union.rec* %705 to %struct.word_type*
  %olist2002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12001, i32 0, i32 0
  %arrayidx2003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2002, i32 0, i64 0
  %osucc2004 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2003, i32 0, i32 1
  %706 = load %union.rec*, %union.rec** %osucc2004, align 8
  store %union.rec* %706, %union.rec** %rlink1922, align 8
  br label %for.cond.2005

for.cond.2005:                                    ; preds = %for.inc.2058, %if.end.2000
  %707 = load %union.rec*, %union.rec** %rlink1922, align 8
  %708 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2006 = icmp ne %union.rec* %707, %708
  br i1 %cmp2006, label %for.body.2008, label %for.end.2063

for.body.2008:                                    ; preds = %for.cond.2005
  %709 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12009 = bitcast %union.rec* %709 to %struct.word_type*
  %olist2010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12009, i32 0, i32 0
  %arrayidx2011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2010, i32 0, i64 1
  %opred2012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2011, i32 0, i32 0
  %710 = load %union.rec*, %union.rec** %opred2012, align 8
  store %union.rec* %710, %union.rec** %right1926, align 8
  br label %for.cond.2013

for.cond.2013:                                    ; preds = %for.inc.2022, %for.body.2008
  %711 = load %union.rec*, %union.rec** %right1926, align 8
  %os12014 = bitcast %union.rec* %711 to %struct.word_type*
  %ou12015 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12014, i32 0, i32 1
  %os112016 = bitcast %union.FIRST_UNION* %ou12015 to %struct.anon*
  %otype2017 = getelementptr inbounds %struct.anon, %struct.anon* %os112016, i32 0, i32 0
  %712 = load i8, i8* %otype2017, align 1
  %conv2018 = zext i8 %712 to i32
  %cmp2019 = icmp eq i32 %conv2018, 0
  br i1 %cmp2019, label %for.body.2021, label %for.end.2027

for.body.2021:                                    ; preds = %for.cond.2013
  br label %for.inc.2022

for.inc.2022:                                     ; preds = %for.body.2021
  %713 = load %union.rec*, %union.rec** %right1926, align 8
  %os12023 = bitcast %union.rec* %713 to %struct.word_type*
  %olist2024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12023, i32 0, i32 0
  %arrayidx2025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2024, i32 0, i64 1
  %opred2026 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2025, i32 0, i32 0
  %714 = load %union.rec*, %union.rec** %opred2026, align 8
  store %union.rec* %714, %union.rec** %right1926, align 8
  br label %for.cond.2013

for.end.2027:                                     ; preds = %for.cond.2013
  %715 = load %union.rec*, %union.rec** %right1926, align 8
  %os12028 = bitcast %union.rec* %715 to %struct.word_type*
  %ou12029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12028, i32 0, i32 1
  %os112030 = bitcast %union.FIRST_UNION* %ou12029 to %struct.anon*
  %otype2031 = getelementptr inbounds %struct.anon, %struct.anon* %os112030, i32 0, i32 0
  %716 = load i8, i8* %otype2031, align 1
  %conv2032 = zext i8 %716 to i32
  %cmp2033 = icmp eq i32 %conv2032, 9
  br i1 %cmp2033, label %cond.true.2035, label %cond.false.2038

cond.true.2035:                                   ; preds = %for.end.2027
  %717 = load %union.rec*, %union.rec** %right1926, align 8
  %call2036 = call i32 @SplitIsDefinite(%union.rec* %717)
  %tobool2037 = icmp ne i32 %call2036, 0
  br i1 %tobool2037, label %if.then.2056, label %if.end.2057

cond.false.2038:                                  ; preds = %for.end.2027
  %718 = load %union.rec*, %union.rec** %right1926, align 8
  %os12039 = bitcast %union.rec* %718 to %struct.word_type*
  %ou12040 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12039, i32 0, i32 1
  %os112041 = bitcast %union.FIRST_UNION* %ou12040 to %struct.anon*
  %otype2042 = getelementptr inbounds %struct.anon, %struct.anon* %os112041, i32 0, i32 0
  %719 = load i8, i8* %otype2042, align 1
  %conv2043 = zext i8 %719 to i32
  %cmp2044 = icmp sge i32 %conv2043, 9
  br i1 %cmp2044, label %land.rhs.2046, label %land.end.2054

land.rhs.2046:                                    ; preds = %cond.false.2038
  %720 = load %union.rec*, %union.rec** %right1926, align 8
  %os12047 = bitcast %union.rec* %720 to %struct.word_type*
  %ou12048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12047, i32 0, i32 1
  %os112049 = bitcast %union.FIRST_UNION* %ou12048 to %struct.anon*
  %otype2050 = getelementptr inbounds %struct.anon, %struct.anon* %os112049, i32 0, i32 0
  %721 = load i8, i8* %otype2050, align 1
  %conv2051 = zext i8 %721 to i32
  %cmp2052 = icmp sle i32 %conv2051, 99
  br label %land.end.2054

land.end.2054:                                    ; preds = %land.rhs.2046, %cond.false.2038
  %722 = phi i1 [ false, %cond.false.2038 ], [ %cmp2052, %land.rhs.2046 ]
  br i1 %722, label %if.then.2056, label %if.end.2057

if.then.2056:                                     ; preds = %land.end.2054, %cond.true.2035
  br label %for.end.2063

if.end.2057:                                      ; preds = %land.end.2054, %cond.true.2035
  br label %for.inc.2058

for.inc.2058:                                     ; preds = %if.end.2057
  %723 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12059 = bitcast %union.rec* %723 to %struct.word_type*
  %olist2060 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12059, i32 0, i32 0
  %arrayidx2061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2060, i32 0, i64 0
  %osucc2062 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2061, i32 0, i32 1
  %724 = load %union.rec*, %union.rec** %osucc2062, align 8
  store %union.rec* %724, %union.rec** %rlink1922, align 8
  br label %for.cond.2005

for.end.2063:                                     ; preds = %if.then.2056, %for.cond.2005
  %725 = load %union.rec*, %union.rec** %rlink1922, align 8
  %726 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2064 = icmp ne %union.rec* %725, %726
  br i1 %cmp2064, label %if.end.2068, label %if.then.2066

if.then.2066:                                     ; preds = %for.end.2063
  %727 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2067 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %727, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.2068

if.end.2068:                                      ; preds = %if.then.2066, %for.end.2063
  %728 = load %union.rec*, %union.rec** %g1924, align 8
  %os52069 = bitcast %union.rec* %728 to %struct.gapobj_type*
  %ogap2070 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52069, i32 0, i32 3
  %729 = bitcast %struct.GAP* %ogap2070 to i16*
  %bf.load2071 = load i16, i16* %729, align 4
  %bf.lshr2072 = lshr i16 %bf.load2071, 13
  %bf.cast2073 = zext i16 %bf.lshr2072 to i32
  %cmp2074 = icmp eq i32 %bf.cast2073, 6
  br i1 %cmp2074, label %if.then.2076, label %if.else.2101

if.then.2076:                                     ; preds = %if.end.2068
  %tab_count2077 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %730 = load i8, i8* %tab_count2077, align 1
  %inc = add i8 %730, 1
  store i8 %inc, i8* %tab_count2077, align 1
  %731 = load %union.rec*, %union.rec** %g1924, align 8
  %os52078 = bitcast %union.rec* %731 to %struct.gapobj_type*
  %osave_space2079 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52078, i32 0, i32 5
  %732 = load i16, i16* %osave_space2079, align 2
  %conv2080 = sext i16 %732 to i32
  %tab_pos2081 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  store i32 %conv2080, i32* %tab_pos2081, align 4
  %nat_width2082 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %733 = load i32, i32* %nat_width2082, align 4
  %width_to_tab2083 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  store i32 %733, i32* %width_to_tab2083, align 4
  %734 = load %union.rec*, %union.rec** %g1924, align 8
  %os52084 = bitcast %union.rec* %734 to %struct.gapobj_type*
  %osave_space2085 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52084, i32 0, i32 5
  %735 = load i16, i16* %osave_space2085, align 2
  %conv2086 = sext i16 %735 to i32
  %736 = load %union.rec*, %union.rec** %right1926, align 8
  %os12087 = bitcast %union.rec* %736 to %struct.word_type*
  %ou32088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12087, i32 0, i32 3
  %os312089 = bitcast %union.THIRD_UNION* %ou32088 to %struct.anon.6*
  %oback2090 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312089, i32 0, i32 0
  %arrayidx2091 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2090, i32 0, i64 0
  %737 = load i32, i32* %arrayidx2091, align 4
  %738 = load %union.rec*, %union.rec** %right1926, align 8
  %os12092 = bitcast %union.rec* %738 to %struct.word_type*
  %ou32093 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12092, i32 0, i32 3
  %os312094 = bitcast %union.THIRD_UNION* %ou32093 to %struct.anon.6*
  %ofwd2095 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312094, i32 0, i32 1
  %arrayidx2096 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2095, i32 0, i64 0
  %739 = load i32, i32* %arrayidx2096, align 4
  %add2097 = add nsw i32 %737, %739
  %add2098 = add nsw i32 %conv2086, %add2097
  %nat_width2099 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  store i32 %add2098, i32* %nat_width2099, align 4
  %space_width2100 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  store i32 0, i32* %space_width2100, align 4
  br label %if.end.2124

if.else.2101:                                     ; preds = %if.end.2068
  %740 = load %union.rec*, %union.rec** %g1924, align 8
  %os52102 = bitcast %union.rec* %740 to %struct.gapobj_type*
  %osave_space2103 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52102, i32 0, i32 5
  %741 = load i16, i16* %osave_space2103, align 2
  %conv2104 = sext i16 %741 to i32
  %742 = load %union.rec*, %union.rec** %right1926, align 8
  %os12105 = bitcast %union.rec* %742 to %struct.word_type*
  %ou32106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12105, i32 0, i32 3
  %os312107 = bitcast %union.THIRD_UNION* %ou32106 to %struct.anon.6*
  %oback2108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312107, i32 0, i32 0
  %arrayidx2109 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2108, i32 0, i64 0
  %743 = load i32, i32* %arrayidx2109, align 4
  %744 = load %union.rec*, %union.rec** %right1926, align 8
  %os12110 = bitcast %union.rec* %744 to %struct.word_type*
  %ou32111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12110, i32 0, i32 3
  %os312112 = bitcast %union.THIRD_UNION* %ou32111 to %struct.anon.6*
  %ofwd2113 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312112, i32 0, i32 1
  %arrayidx2114 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2113, i32 0, i64 0
  %745 = load i32, i32* %arrayidx2114, align 4
  %add2115 = add nsw i32 %743, %745
  %add2116 = add nsw i32 %conv2104, %add2115
  %nat_width2117 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %746 = load i32, i32* %nat_width2117, align 4
  %add2118 = add nsw i32 %746, %add2116
  store i32 %add2118, i32* %nat_width2117, align 4
  %747 = load %union.rec*, %union.rec** %g1924, align 8
  %os52119 = bitcast %union.rec* %747 to %struct.gapobj_type*
  %osave_space2120 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52119, i32 0, i32 5
  %748 = load i16, i16* %osave_space2120, align 2
  %conv2121 = sext i16 %748 to i32
  %space_width2122 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %749 = load i32, i32* %space_width2122, align 4
  %add2123 = add nsw i32 %749, %conv2121
  store i32 %add2123, i32* %space_width2122, align 4
  br label %if.end.2124

if.end.2124:                                      ; preds = %if.else.2101, %if.then.2076
  store i32 0, i32* %unbreakable_at_right2134, align 4
  %750 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12135 = bitcast %union.rec* %750 to %struct.word_type*
  %olist2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12135, i32 0, i32 0
  %arrayidx2137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2136, i32 0, i64 1
  %opred2138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2137, i32 0, i32 0
  %751 = load %union.rec*, %union.rec** %opred2138, align 8
  store %union.rec* %751, %union.rec** %tmp2130, align 8
  br label %for.cond.2139

for.cond.2139:                                    ; preds = %for.inc.2148, %if.end.2124
  %752 = load %union.rec*, %union.rec** %tmp2130, align 8
  %os12140 = bitcast %union.rec* %752 to %struct.word_type*
  %ou12141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12140, i32 0, i32 1
  %os112142 = bitcast %union.FIRST_UNION* %ou12141 to %struct.anon*
  %otype2143 = getelementptr inbounds %struct.anon, %struct.anon* %os112142, i32 0, i32 0
  %753 = load i8, i8* %otype2143, align 1
  %conv2144 = zext i8 %753 to i32
  %cmp2145 = icmp eq i32 %conv2144, 0
  br i1 %cmp2145, label %for.body.2147, label %for.end.2153

for.body.2147:                                    ; preds = %for.cond.2139
  br label %for.inc.2148

for.inc.2148:                                     ; preds = %for.body.2147
  %754 = load %union.rec*, %union.rec** %tmp2130, align 8
  %os12149 = bitcast %union.rec* %754 to %struct.word_type*
  %olist2150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12149, i32 0, i32 0
  %arrayidx2151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2150, i32 0, i64 1
  %opred2152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2151, i32 0, i32 0
  %755 = load %union.rec*, %union.rec** %opred2152, align 8
  store %union.rec* %755, %union.rec** %tmp2130, align 8
  br label %for.cond.2139

for.end.2153:                                     ; preds = %for.cond.2139
  store %union.rec* null, %union.rec** %newg2126, align 8
  store i32 1, i32* %jn2132, align 4
  %756 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12154 = bitcast %union.rec* %756 to %struct.word_type*
  %olist2155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12154, i32 0, i32 0
  %arrayidx2156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2155, i32 0, i64 0
  %osucc2157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2156, i32 0, i32 1
  %757 = load %union.rec*, %union.rec** %osucc2157, align 8
  store %union.rec* %757, %union.rec** %rlink1922, align 8
  br label %for.cond.2158

for.cond.2158:                                    ; preds = %for.inc.2237, %for.end.2153
  %758 = load %union.rec*, %union.rec** %rlink1922, align 8
  %759 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2159 = icmp ne %union.rec* %758, %759
  br i1 %cmp2159, label %for.body.2161, label %for.end.2242

for.body.2161:                                    ; preds = %for.cond.2158
  %760 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12162 = bitcast %union.rec* %760 to %struct.word_type*
  %olist2163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12162, i32 0, i32 0
  %arrayidx2164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2163, i32 0, i64 1
  %opred2165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2164, i32 0, i32 0
  %761 = load %union.rec*, %union.rec** %opred2165, align 8
  store %union.rec* %761, %union.rec** %foll2128, align 8
  br label %for.cond.2166

for.cond.2166:                                    ; preds = %for.inc.2175, %for.body.2161
  %762 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12167 = bitcast %union.rec* %762 to %struct.word_type*
  %ou12168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12167, i32 0, i32 1
  %os112169 = bitcast %union.FIRST_UNION* %ou12168 to %struct.anon*
  %otype2170 = getelementptr inbounds %struct.anon, %struct.anon* %os112169, i32 0, i32 0
  %763 = load i8, i8* %otype2170, align 1
  %conv2171 = zext i8 %763 to i32
  %cmp2172 = icmp eq i32 %conv2171, 0
  br i1 %cmp2172, label %for.body.2174, label %for.end.2180

for.body.2174:                                    ; preds = %for.cond.2166
  br label %for.inc.2175

for.inc.2175:                                     ; preds = %for.body.2174
  %764 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12176 = bitcast %union.rec* %764 to %struct.word_type*
  %olist2177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12176, i32 0, i32 0
  %arrayidx2178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2177, i32 0, i64 1
  %opred2179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2178, i32 0, i32 0
  %765 = load %union.rec*, %union.rec** %opred2179, align 8
  store %union.rec* %765, %union.rec** %foll2128, align 8
  br label %for.cond.2166

for.end.2180:                                     ; preds = %for.cond.2166
  %766 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12181 = bitcast %union.rec* %766 to %struct.word_type*
  %ou12182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12181, i32 0, i32 1
  %os112183 = bitcast %union.FIRST_UNION* %ou12182 to %struct.anon*
  %otype2184 = getelementptr inbounds %struct.anon, %struct.anon* %os112183, i32 0, i32 0
  %767 = load i8, i8* %otype2184, align 1
  %conv2185 = zext i8 %767 to i32
  %cmp2186 = icmp eq i32 %conv2185, 1
  br i1 %cmp2186, label %if.then.2188, label %if.else.2200

if.then.2188:                                     ; preds = %for.end.2180
  %768 = load %union.rec*, %union.rec** %foll2128, align 8
  store %union.rec* %768, %union.rec** %newg2126, align 8
  %769 = load i32, i32* %jn2132, align 4
  %tobool2189 = icmp ne i32 %769, 0
  br i1 %tobool2189, label %land.rhs.2190, label %land.end.2198

land.rhs.2190:                                    ; preds = %if.then.2188
  %770 = load %union.rec*, %union.rec** %foll2128, align 8
  %os52191 = bitcast %union.rec* %770 to %struct.gapobj_type*
  %ogap2192 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52191, i32 0, i32 3
  %771 = bitcast %struct.GAP* %ogap2192 to i16*
  %bf.load2193 = load i16, i16* %771, align 4
  %bf.lshr2194 = lshr i16 %bf.load2193, 9
  %bf.clear2195 = and i16 %bf.lshr2194, 1
  %bf.cast2196 = zext i16 %bf.clear2195 to i32
  %tobool2197 = icmp ne i32 %bf.cast2196, 0
  br label %land.end.2198

land.end.2198:                                    ; preds = %land.rhs.2190, %if.then.2188
  %772 = phi i1 [ false, %if.then.2188 ], [ %tobool2197, %land.rhs.2190 ]
  %land.ext2199 = zext i1 %772 to i32
  store i32 %land.ext2199, i32* %jn2132, align 4
  br label %if.end.2236

if.else.2200:                                     ; preds = %for.end.2180
  %773 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12201 = bitcast %union.rec* %773 to %struct.word_type*
  %ou12202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12201, i32 0, i32 1
  %os112203 = bitcast %union.FIRST_UNION* %ou12202 to %struct.anon*
  %otype2204 = getelementptr inbounds %struct.anon, %struct.anon* %os112203, i32 0, i32 0
  %774 = load i8, i8* %otype2204, align 1
  %conv2205 = zext i8 %774 to i32
  %cmp2206 = icmp eq i32 %conv2205, 9
  br i1 %cmp2206, label %cond.true.2208, label %cond.false.2211

cond.true.2208:                                   ; preds = %if.else.2200
  %775 = load %union.rec*, %union.rec** %foll2128, align 8
  %call2209 = call i32 @SplitIsDefinite(%union.rec* %775)
  %tobool2210 = icmp ne i32 %call2209, 0
  br i1 %tobool2210, label %if.then.2229, label %if.end.2235

cond.false.2211:                                  ; preds = %if.else.2200
  %776 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12212 = bitcast %union.rec* %776 to %struct.word_type*
  %ou12213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12212, i32 0, i32 1
  %os112214 = bitcast %union.FIRST_UNION* %ou12213 to %struct.anon*
  %otype2215 = getelementptr inbounds %struct.anon, %struct.anon* %os112214, i32 0, i32 0
  %777 = load i8, i8* %otype2215, align 1
  %conv2216 = zext i8 %777 to i32
  %cmp2217 = icmp sge i32 %conv2216, 9
  br i1 %cmp2217, label %land.rhs.2219, label %land.end.2227

land.rhs.2219:                                    ; preds = %cond.false.2211
  %778 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12220 = bitcast %union.rec* %778 to %struct.word_type*
  %ou12221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12220, i32 0, i32 1
  %os112222 = bitcast %union.FIRST_UNION* %ou12221 to %struct.anon*
  %otype2223 = getelementptr inbounds %struct.anon, %struct.anon* %os112222, i32 0, i32 0
  %779 = load i8, i8* %otype2223, align 1
  %conv2224 = zext i8 %779 to i32
  %cmp2225 = icmp sle i32 %conv2224, 99
  br label %land.end.2227

land.end.2227:                                    ; preds = %land.rhs.2219, %cond.false.2211
  %780 = phi i1 [ false, %cond.false.2211 ], [ %cmp2225, %land.rhs.2219 ]
  br i1 %780, label %if.then.2229, label %if.end.2235

if.then.2229:                                     ; preds = %land.end.2227, %cond.true.2208
  %781 = load %union.rec*, %union.rec** %newg2126, align 8
  %cmp2230 = icmp ne %union.rec* %781, null
  br i1 %cmp2230, label %if.end.2234, label %if.then.2232

if.then.2232:                                     ; preds = %if.then.2229
  %782 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2233 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %782, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.2234

if.end.2234:                                      ; preds = %if.then.2232, %if.then.2229
  br label %for.end.2242

if.end.2235:                                      ; preds = %land.end.2227, %cond.true.2208
  br label %if.end.2236

if.end.2236:                                      ; preds = %if.end.2235, %land.end.2198
  br label %for.inc.2237

for.inc.2237:                                     ; preds = %if.end.2236
  %783 = load %union.rec*, %union.rec** %rlink1922, align 8
  %os12238 = bitcast %union.rec* %783 to %struct.word_type*
  %olist2239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12238, i32 0, i32 0
  %arrayidx2240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2239, i32 0, i64 0
  %osucc2241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2240, i32 0, i32 1
  %784 = load %union.rec*, %union.rec** %osucc2241, align 8
  store %union.rec* %784, %union.rec** %rlink1922, align 8
  br label %for.cond.2158

for.end.2242:                                     ; preds = %if.end.2234, %for.cond.2158
  %785 = load %union.rec*, %union.rec** %rlink1922, align 8
  %786 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2243 = icmp ne %union.rec* %785, %786
  br i1 %cmp2243, label %if.then.2245, label %if.else.2565

if.then.2245:                                     ; preds = %for.end.2242
  %787 = load %union.rec*, %union.rec** %newg2126, align 8
  %os12246 = bitcast %union.rec* %787 to %struct.word_type*
  %olist2247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12246, i32 0, i32 0
  %arrayidx2248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2247, i32 0, i64 1
  %osucc2249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2248, i32 0, i32 1
  %788 = load %union.rec*, %union.rec** %osucc2249, align 8
  %789 = load %union.rec*, %union.rec** %newg2126, align 8
  %os12250 = bitcast %union.rec* %789 to %struct.word_type*
  %olist2251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12250, i32 0, i32 0
  %arrayidx2252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2251, i32 0, i64 1
  %opred2253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2252, i32 0, i32 0
  %790 = load %union.rec*, %union.rec** %opred2253, align 8
  %cmp2254 = icmp eq %union.rec* %788, %790
  br i1 %cmp2254, label %if.end.2258, label %if.then.2256

if.then.2256:                                     ; preds = %if.then.2245
  %791 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2257 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %791, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.2258

if.end.2258:                                      ; preds = %if.then.2256, %if.then.2245
  %cwid2259 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %792 = load %union.rec*, %union.rec** %cwid2259, align 8
  %cmp2260 = icmp ne %union.rec* %792, null
  br i1 %cmp2260, label %if.then.2262, label %if.end.2268

if.then.2262:                                     ; preds = %if.end.2258
  %cwid2263 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %793 = load %union.rec*, %union.rec** %cwid2263, align 8
  %os22264 = bitcast %union.rec* %793 to %struct.closure_type*
  %ou42265 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22264, i32 0, i32 4
  %oconstraint2266 = bitcast %union.FOURTH_UNION* %ou42265 to %struct.CONSTRAINT*
  %obfc2267 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2266, i32 0, i32 1
  %794 = load i32, i32* %obfc2267, align 4
  store i32 %794, i32* %etc_width, align 4
  br label %if.end.2268

if.end.2268:                                      ; preds = %if.then.2262, %if.end.2258
  %795 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52269 = bitcast %union.rec* %795 to %struct.gapobj_type*
  %ogap2270 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52269, i32 0, i32 3
  %796 = bitcast %struct.GAP* %ogap2270 to i16*
  %bf.load2271 = load i16, i16* %796, align 4
  %bf.lshr2272 = lshr i16 %bf.load2271, 13
  %bf.cast2273 = zext i16 %bf.lshr2272 to i32
  %cmp2274 = icmp eq i32 %bf.cast2273, 6
  br i1 %cmp2274, label %if.then.2276, label %if.else.2299

if.then.2276:                                     ; preds = %if.end.2268
  %797 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12277 = bitcast %union.rec* %797 to %struct.word_type*
  %ou32278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12277, i32 0, i32 3
  %os312279 = bitcast %union.THIRD_UNION* %ou32278 to %struct.anon.6*
  %oback2280 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312279, i32 0, i32 0
  %arrayidx2281 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2280, i32 0, i64 0
  %798 = load i32, i32* %arrayidx2281, align 4
  %799 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12282 = bitcast %union.rec* %799 to %struct.word_type*
  %ou32283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12282, i32 0, i32 3
  %os312284 = bitcast %union.THIRD_UNION* %ou32283 to %struct.anon.6*
  %ofwd2285 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312284, i32 0, i32 1
  %arrayidx2286 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2285, i32 0, i64 0
  %800 = load i32, i32* %arrayidx2286, align 4
  %801 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52287 = bitcast %union.rec* %801 to %struct.gapobj_type*
  %ogap2288 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52287, i32 0, i32 3
  %802 = load i32, i32* %etc_width, align 4
  %call2289 = call i32 @ActualGap(i32 0, i32 %798, i32 %800, %struct.GAP* %ogap2288, i32 %802, i32 0)
  %803 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12290 = bitcast %union.rec* %803 to %struct.word_type*
  %ou32291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12290, i32 0, i32 3
  %os312292 = bitcast %union.THIRD_UNION* %ou32291 to %struct.anon.6*
  %oback2293 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312292, i32 0, i32 0
  %arrayidx2294 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2293, i32 0, i64 0
  %804 = load i32, i32* %arrayidx2294, align 4
  %sub2295 = sub nsw i32 %call2289, %804
  %conv2296 = trunc i32 %sub2295 to i16
  %805 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52297 = bitcast %union.rec* %805 to %struct.gapobj_type*
  %osave_space2298 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52297, i32 0, i32 5
  store i16 %conv2296, i16* %osave_space2298, align 2
  br label %if.end.2340

if.else.2299:                                     ; preds = %if.end.2268
  %806 = load %union.rec*, %union.rec** %right1926, align 8
  %os12300 = bitcast %union.rec* %806 to %struct.word_type*
  %ou32301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12300, i32 0, i32 3
  %os312302 = bitcast %union.THIRD_UNION* %ou32301 to %struct.anon.6*
  %ofwd2303 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312302, i32 0, i32 1
  %arrayidx2304 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2303, i32 0, i64 0
  %807 = load i32, i32* %arrayidx2304, align 4
  %808 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12305 = bitcast %union.rec* %808 to %struct.word_type*
  %ou32306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12305, i32 0, i32 3
  %os312307 = bitcast %union.THIRD_UNION* %ou32306 to %struct.anon.6*
  %oback2308 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312307, i32 0, i32 0
  %arrayidx2309 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2308, i32 0, i64 0
  %809 = load i32, i32* %arrayidx2309, align 4
  %810 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12310 = bitcast %union.rec* %810 to %struct.word_type*
  %ou32311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12310, i32 0, i32 3
  %os312312 = bitcast %union.THIRD_UNION* %ou32311 to %struct.anon.6*
  %ofwd2313 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312312, i32 0, i32 1
  %arrayidx2314 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2313, i32 0, i64 0
  %811 = load i32, i32* %arrayidx2314, align 4
  %812 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52315 = bitcast %union.rec* %812 to %struct.gapobj_type*
  %ogap2316 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52315, i32 0, i32 3
  %813 = load i32, i32* %etc_width, align 4
  %nat_width2317 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %814 = load i32, i32* %nat_width2317, align 4
  %815 = load %union.rec*, %union.rec** %right1926, align 8
  %os12318 = bitcast %union.rec* %815 to %struct.word_type*
  %ou32319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12318, i32 0, i32 3
  %os312320 = bitcast %union.THIRD_UNION* %ou32319 to %struct.anon.6*
  %ofwd2321 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312320, i32 0, i32 1
  %arrayidx2322 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2321, i32 0, i64 0
  %816 = load i32, i32* %arrayidx2322, align 4
  %sub2323 = sub nsw i32 %814, %816
  %call2324 = call i32 @ActualGap(i32 %807, i32 %809, i32 %811, %struct.GAP* %ogap2316, i32 %813, i32 %sub2323)
  %817 = load %union.rec*, %union.rec** %foll2128, align 8
  %os12325 = bitcast %union.rec* %817 to %struct.word_type*
  %ou32326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12325, i32 0, i32 3
  %os312327 = bitcast %union.THIRD_UNION* %ou32326 to %struct.anon.6*
  %oback2328 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312327, i32 0, i32 0
  %arrayidx2329 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2328, i32 0, i64 0
  %818 = load i32, i32* %arrayidx2329, align 4
  %sub2330 = sub nsw i32 %call2324, %818
  %819 = load %union.rec*, %union.rec** %right1926, align 8
  %os12331 = bitcast %union.rec* %819 to %struct.word_type*
  %ou32332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12331, i32 0, i32 3
  %os312333 = bitcast %union.THIRD_UNION* %ou32332 to %struct.anon.6*
  %ofwd2334 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312333, i32 0, i32 1
  %arrayidx2335 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2334, i32 0, i64 0
  %820 = load i32, i32* %arrayidx2335, align 4
  %sub2336 = sub nsw i32 %sub2330, %820
  %conv2337 = trunc i32 %sub2336 to i16
  %821 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52338 = bitcast %union.rec* %821 to %struct.gapobj_type*
  %osave_space2339 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52338, i32 0, i32 5
  store i16 %conv2337, i16* %osave_space2339, align 2
  br label %if.end.2340

if.end.2340:                                      ; preds = %if.else.2299, %if.then.2276
  %822 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52341 = bitcast %union.rec* %822 to %struct.gapobj_type*
  %ogap2342 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52341, i32 0, i32 3
  %823 = bitcast %struct.GAP* %ogap2342 to i16*
  %bf.load2343 = load i16, i16* %823, align 4
  %bf.lshr2344 = lshr i16 %bf.load2343, 13
  %bf.cast2345 = zext i16 %bf.lshr2344 to i32
  %cmp2346 = icmp eq i32 %bf.cast2345, 2
  br i1 %cmp2346, label %if.then.2356, label %lor.lhs.false.2348

lor.lhs.false.2348:                               ; preds = %if.end.2340
  %824 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52349 = bitcast %union.rec* %824 to %struct.gapobj_type*
  %ogap2350 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52349, i32 0, i32 3
  %825 = bitcast %struct.GAP* %ogap2350 to i16*
  %bf.load2351 = load i16, i16* %825, align 4
  %bf.lshr2352 = lshr i16 %bf.load2351, 13
  %bf.cast2353 = zext i16 %bf.lshr2352 to i32
  %cmp2354 = icmp eq i32 %bf.cast2353, 7
  br i1 %cmp2354, label %if.then.2356, label %if.else.2549

if.then.2356:                                     ; preds = %lor.lhs.false.2348, %if.end.2340
  %826 = load i32, i32* %hyph_allowed, align 4
  %tobool2357 = icmp ne i32 %826, 0
  br i1 %tobool2357, label %if.then.2358, label %if.else.2547

if.then.2358:                                     ; preds = %if.then.2356
  %827 = load %union.rec*, %union.rec** %right1926, align 8
  %os12359 = bitcast %union.rec* %827 to %struct.word_type*
  %ou12360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12359, i32 0, i32 1
  %os112361 = bitcast %union.FIRST_UNION* %ou12360 to %struct.anon*
  %otype2362 = getelementptr inbounds %struct.anon, %struct.anon* %os112361, i32 0, i32 0
  %828 = load i8, i8* %otype2362, align 1
  %conv2363 = zext i8 %828 to i32
  %cmp2364 = icmp eq i32 %conv2363, 11
  br i1 %cmp2364, label %land.lhs.true.2374, label %lor.lhs.false.2366

lor.lhs.false.2366:                               ; preds = %if.then.2358
  %829 = load %union.rec*, %union.rec** %right1926, align 8
  %os12367 = bitcast %union.rec* %829 to %struct.word_type*
  %ou12368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12367, i32 0, i32 1
  %os112369 = bitcast %union.FIRST_UNION* %ou12368 to %struct.anon*
  %otype2370 = getelementptr inbounds %struct.anon, %struct.anon* %os112369, i32 0, i32 0
  %830 = load i8, i8* %otype2370, align 1
  %conv2371 = zext i8 %830 to i32
  %cmp2372 = icmp eq i32 %conv2371, 12
  br i1 %cmp2372, label %land.lhs.true.2374, label %if.end.2546

land.lhs.true.2374:                               ; preds = %lor.lhs.false.2366, %if.then.2358
  %831 = load %union.rec*, %union.rec** %right1926, align 8
  %os12375 = bitcast %union.rec* %831 to %struct.word_type*
  %ostring2376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12375, i32 0, i32 4
  %arraydecay2377 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2376, i32 0, i32 0
  %call2378 = call i64 @strlen(i8* %arraydecay2377) #4
  %sub2379 = sub i64 %call2378, 1
  %832 = load %union.rec*, %union.rec** %right1926, align 8
  %os12380 = bitcast %union.rec* %832 to %struct.word_type*
  %ostring2381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12380, i32 0, i32 4
  %arrayidx2382 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2381, i32 0, i64 %sub2379
  %833 = load i8, i8* %arrayidx2382, align 1
  %conv2383 = zext i8 %833 to i32
  %cmp2384 = icmp eq i32 %conv2383, 45
  br i1 %cmp2384, label %if.end.2546, label %if.then.2386

if.then.2386:                                     ; preds = %land.lhs.true.2374
  %834 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %cmp2387 = icmp eq %union.rec* %834, null
  br i1 %cmp2387, label %if.then.2389, label %if.end.2462

if.then.2389:                                     ; preds = %if.then.2386
  %835 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12390 = bitcast %union.rec* %835 to %struct.word_type*
  %ou12391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12390, i32 0, i32 1
  %ofpos2392 = bitcast %union.FIRST_UNION* %ou12391 to %struct.FILE_POS*
  %call2393 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.FILE_POS* %ofpos2392)
  store %union.rec* %call2393, %union.rec** @FillObject.hyph_word, align 8
  %836 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12394 = bitcast %union.rec* %836 to %struct.word_type*
  %ou22395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12394, i32 0, i32 2
  %os222396 = bitcast %union.SECOND_UNION* %ou22395 to %struct.anon.1*
  %837 = bitcast %struct.anon.1* %os222396 to i32*
  %bf.load2397 = load i32, i32* %837, align 4
  %bf.clear2398 = and i32 %bf.load2397, -4096
  store i32 %bf.clear2398, i32* %837, align 4
  %838 = load %union.rec*, %union.rec** %x.addr, align 8
  %os22399 = bitcast %union.rec* %838 to %struct.closure_type*
  %ou42400 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22399, i32 0, i32 4
  %osave_style2401 = bitcast %union.FOURTH_UNION* %ou42400 to %struct.STYLE*
  %ocolour2402 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style2401, i32 0, i32 4
  %bf.load2403 = load i32, i32* %ocolour2402, align 4
  %bf.lshr2404 = lshr i32 %bf.load2403, 12
  %bf.clear2405 = and i32 %bf.lshr2404, 1023
  %839 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12406 = bitcast %union.rec* %839 to %struct.word_type*
  %ou22407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12406, i32 0, i32 2
  %os222408 = bitcast %union.SECOND_UNION* %ou22407 to %struct.anon.1*
  %840 = bitcast %struct.anon.1* %os222408 to i32*
  %bf.load2409 = load i32, i32* %840, align 4
  %bf.value2410 = and i32 %bf.clear2405, 1023
  %bf.shl2411 = shl i32 %bf.value2410, 12
  %bf.clear2412 = and i32 %bf.load2409, -4190209
  %bf.set2413 = or i32 %bf.clear2412, %bf.shl2411
  store i32 %bf.set2413, i32* %840, align 4
  %841 = load %union.rec*, %union.rec** %x.addr, align 8
  %os22414 = bitcast %union.rec* %841 to %struct.closure_type*
  %ou42415 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22414, i32 0, i32 4
  %osave_style2416 = bitcast %union.FOURTH_UNION* %ou42415 to %struct.STYLE*
  %ooutline2417 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style2416, i32 0, i32 4
  %bf.load2418 = load i32, i32* %ooutline2417, align 4
  %bf.lshr2419 = lshr i32 %bf.load2418, 22
  %bf.clear2420 = and i32 %bf.lshr2419, 3
  %842 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12421 = bitcast %union.rec* %842 to %struct.word_type*
  %ou22422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12421, i32 0, i32 2
  %os222423 = bitcast %union.SECOND_UNION* %ou22422 to %struct.anon.1*
  %843 = bitcast %struct.anon.1* %os222423 to i32*
  %bf.load2424 = load i32, i32* %843, align 4
  %bf.value2425 = and i32 %bf.clear2420, 1
  %bf.shl2426 = shl i32 %bf.value2425, 22
  %bf.clear2427 = and i32 %bf.load2424, -4194305
  %bf.set2428 = or i32 %bf.clear2427, %bf.shl2426
  store i32 %bf.set2428, i32* %843, align 4
  %844 = load %union.rec*, %union.rec** %x.addr, align 8
  %os22429 = bitcast %union.rec* %844 to %struct.closure_type*
  %ou42430 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22429, i32 0, i32 4
  %osave_style2431 = bitcast %union.FOURTH_UNION* %ou42430 to %struct.STYLE*
  %olanguage2432 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style2431, i32 0, i32 4
  %bf.load2433 = load i32, i32* %olanguage2432, align 4
  %bf.lshr2434 = lshr i32 %bf.load2433, 24
  %bf.clear2435 = and i32 %bf.lshr2434, 63
  %845 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12436 = bitcast %union.rec* %845 to %struct.word_type*
  %ou22437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12436, i32 0, i32 2
  %os222438 = bitcast %union.SECOND_UNION* %ou22437 to %struct.anon.1*
  %846 = bitcast %struct.anon.1* %os222438 to i32*
  %bf.load2439 = load i32, i32* %846, align 4
  %bf.value2440 = and i32 %bf.clear2435, 63
  %bf.shl2441 = shl i32 %bf.value2440, 23
  %bf.clear2442 = and i32 %bf.load2439, -528482305
  %bf.set2443 = or i32 %bf.clear2442, %bf.shl2441
  store i32 %bf.set2443, i32* %846, align 4
  %847 = load %union.rec*, %union.rec** %x.addr, align 8
  %os22444 = bitcast %union.rec* %847 to %struct.closure_type*
  %ou42445 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22444, i32 0, i32 4
  %osave_style2446 = bitcast %union.FOURTH_UNION* %ou42445 to %struct.STYLE*
  %osu22447 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style2446, i32 0, i32 1
  %oss22448 = bitcast %union.anon.10* %osu22447 to %struct.anon.11*
  %848 = bitcast %struct.anon.11* %oss22448 to i8*
  %bf.load2449 = load i8, i8* %848, align 4
  %bf.clear2450 = and i8 %bf.load2449, 3
  %bf.cast2451 = zext i8 %bf.clear2450 to i32
  %cmp2452 = icmp eq i32 %bf.cast2451, 2
  %conv2453 = zext i1 %cmp2452 to i32
  %849 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12454 = bitcast %union.rec* %849 to %struct.word_type*
  %ou22455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12454, i32 0, i32 2
  %os222456 = bitcast %union.SECOND_UNION* %ou22455 to %struct.anon.1*
  %850 = bitcast %struct.anon.1* %os222456 to i32*
  %bf.load2457 = load i32, i32* %850, align 4
  %bf.value2458 = and i32 %conv2453, 1
  %bf.shl2459 = shl i32 %bf.value2458, 31
  %bf.clear2460 = and i32 %bf.load2457, 2147483647
  %bf.set2461 = or i32 %bf.clear2460, %bf.shl2459
  store i32 %bf.set2461, i32* %850, align 4
  br label %if.end.2462

if.end.2462:                                      ; preds = %if.then.2389, %if.then.2386
  %851 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12463 = bitcast %union.rec* %851 to %struct.word_type*
  %ou22464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12463, i32 0, i32 2
  %os222465 = bitcast %union.SECOND_UNION* %ou22464 to %struct.anon.1*
  %852 = bitcast %struct.anon.1* %os222465 to i32*
  %bf.load2466 = load i32, i32* %852, align 4
  %bf.clear2467 = and i32 %bf.load2466, 4095
  %853 = load %union.rec*, %union.rec** %x.addr, align 8
  %os22468 = bitcast %union.rec* %853 to %struct.closure_type*
  %ou42469 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22468, i32 0, i32 4
  %osave_style2470 = bitcast %union.FOURTH_UNION* %ou42469 to %struct.STYLE*
  %ofont2471 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style2470, i32 0, i32 4
  %bf.load2472 = load i32, i32* %ofont2471, align 4
  %bf.clear2473 = and i32 %bf.load2472, 4095
  %cmp2474 = icmp ne i32 %bf.clear2467, %bf.clear2473
  br i1 %cmp2474, label %if.then.2476, label %if.end.2527

if.then.2476:                                     ; preds = %if.end.2462
  %854 = load %union.rec*, %union.rec** %x.addr, align 8
  %os22477 = bitcast %union.rec* %854 to %struct.closure_type*
  %ou42478 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22477, i32 0, i32 4
  %osave_style2479 = bitcast %union.FOURTH_UNION* %ou42478 to %struct.STYLE*
  %ofont2480 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style2479, i32 0, i32 4
  %bf.load2481 = load i32, i32* %ofont2480, align 4
  %bf.clear2482 = and i32 %bf.load2481, 4095
  %855 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12483 = bitcast %union.rec* %855 to %struct.word_type*
  %ou22484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12483, i32 0, i32 2
  %os222485 = bitcast %union.SECOND_UNION* %ou22484 to %struct.anon.1*
  %856 = bitcast %struct.anon.1* %os222485 to i32*
  %bf.load2486 = load i32, i32* %856, align 4
  %bf.value2487 = and i32 %bf.clear2482, 4095
  %bf.clear2488 = and i32 %bf.load2486, -4096
  %bf.set2489 = or i32 %bf.clear2488, %bf.value2487
  store i32 %bf.set2489, i32* %856, align 4
  %857 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12490 = bitcast %union.rec* %857 to %struct.word_type*
  %ou12491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12490, i32 0, i32 1
  %ofpos2492 = bitcast %union.FIRST_UNION* %ou12491 to %struct.FILE_POS*
  %ofile_num2493 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos2492, i32 0, i32 2
  %858 = load i16, i16* %ofile_num2493, align 2
  %859 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12494 = bitcast %union.rec* %859 to %struct.word_type*
  %ou12495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12494, i32 0, i32 1
  %ofpos2496 = bitcast %union.FIRST_UNION* %ou12495 to %struct.FILE_POS*
  %ofile_num2497 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos2496, i32 0, i32 2
  store i16 %858, i16* %ofile_num2497, align 2
  %860 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12498 = bitcast %union.rec* %860 to %struct.word_type*
  %ou12499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12498, i32 0, i32 1
  %ofpos2500 = bitcast %union.FIRST_UNION* %ou12499 to %struct.FILE_POS*
  %oline_num2501 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos2500, i32 0, i32 3
  %bf.load2502 = load i32, i32* %oline_num2501, align 4
  %bf.clear2503 = and i32 %bf.load2502, 1048575
  %861 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12504 = bitcast %union.rec* %861 to %struct.word_type*
  %ou12505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12504, i32 0, i32 1
  %ofpos2506 = bitcast %union.FIRST_UNION* %ou12505 to %struct.FILE_POS*
  %oline_num2507 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos2506, i32 0, i32 3
  %bf.load2508 = load i32, i32* %oline_num2507, align 4
  %bf.value2509 = and i32 %bf.clear2503, 1048575
  %bf.clear2510 = and i32 %bf.load2508, -1048576
  %bf.set2511 = or i32 %bf.clear2510, %bf.value2509
  store i32 %bf.set2511, i32* %oline_num2507, align 4
  %862 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12512 = bitcast %union.rec* %862 to %struct.word_type*
  %ou12513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12512, i32 0, i32 1
  %ofpos2514 = bitcast %union.FIRST_UNION* %ou12513 to %struct.FILE_POS*
  %ocol_num2515 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos2514, i32 0, i32 3
  %bf.load2516 = load i32, i32* %ocol_num2515, align 4
  %bf.lshr2517 = lshr i32 %bf.load2516, 20
  %863 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12518 = bitcast %union.rec* %863 to %struct.word_type*
  %ou12519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12518, i32 0, i32 1
  %ofpos2520 = bitcast %union.FIRST_UNION* %ou12519 to %struct.FILE_POS*
  %ocol_num2521 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos2520, i32 0, i32 3
  %bf.load2522 = load i32, i32* %ocol_num2521, align 4
  %bf.value2523 = and i32 %bf.lshr2517, 4095
  %bf.shl2524 = shl i32 %bf.value2523, 20
  %bf.clear2525 = and i32 %bf.load2522, 1048575
  %bf.set2526 = or i32 %bf.clear2525, %bf.shl2524
  store i32 %bf.set2526, i32* %ocol_num2521, align 4
  %864 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  call void @FontWordSize(%union.rec* %864)
  br label %if.end.2527

if.end.2527:                                      ; preds = %if.then.2476, %if.end.2462
  %865 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52528 = bitcast %union.rec* %865 to %struct.gapobj_type*
  %ogap2529 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52528, i32 0, i32 3
  %866 = bitcast %struct.GAP* %ogap2529 to i16*
  %bf.load2530 = load i16, i16* %866, align 4
  %bf.clear2531 = and i16 %bf.load2530, 8191
  %bf.set2532 = or i16 %bf.clear2531, -8192
  store i16 %bf.set2532, i16* %866, align 4
  %867 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12533 = bitcast %union.rec* %867 to %struct.word_type*
  %ou32534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12533, i32 0, i32 3
  %os312535 = bitcast %union.THIRD_UNION* %ou32534 to %struct.anon.6*
  %oback2536 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312535, i32 0, i32 0
  %arrayidx2537 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2536, i32 0, i64 0
  %868 = load i32, i32* %arrayidx2537, align 4
  %869 = load %union.rec*, %union.rec** @FillObject.hyph_word, align 8
  %os12538 = bitcast %union.rec* %869 to %struct.word_type*
  %ou32539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12538, i32 0, i32 3
  %os312540 = bitcast %union.THIRD_UNION* %ou32539 to %struct.anon.6*
  %ofwd2541 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312540, i32 0, i32 1
  %arrayidx2542 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2541, i32 0, i64 0
  %870 = load i32, i32* %arrayidx2542, align 4
  %add2543 = add nsw i32 %868, %870
  %nat_width2544 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %871 = load i32, i32* %nat_width2544, align 4
  %add2545 = add nsw i32 %871, %add2543
  store i32 %add2545, i32* %nat_width2544, align 4
  br label %if.end.2546

if.end.2546:                                      ; preds = %if.end.2527, %land.lhs.true.2374, %lor.lhs.false.2366
  br label %if.end.2548

if.else.2547:                                     ; preds = %if.then.2356
  store i32 1, i32* %unbreakable_at_right2134, align 4
  br label %if.end.2548

if.end.2548:                                      ; preds = %if.else.2547, %if.end.2546
  br label %if.end.2559

if.else.2549:                                     ; preds = %lor.lhs.false.2348
  %872 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52550 = bitcast %union.rec* %872 to %struct.gapobj_type*
  %ogap2551 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52550, i32 0, i32 3
  %873 = bitcast %struct.GAP* %ogap2551 to i16*
  %bf.load2552 = load i16, i16* %873, align 4
  %bf.lshr2553 = lshr i16 %bf.load2552, 7
  %bf.clear2554 = and i16 %bf.lshr2553, 1
  %bf.cast2555 = zext i16 %bf.clear2554 to i32
  %tobool2556 = icmp ne i32 %bf.cast2555, 0
  br i1 %tobool2556, label %if.then.2557, label %if.end.2558

if.then.2557:                                     ; preds = %if.else.2549
  store i32 1, i32* %unbreakable_at_right2134, align 4
  br label %if.end.2558

if.end.2558:                                      ; preds = %if.then.2557, %if.else.2549
  br label %if.end.2559

if.end.2559:                                      ; preds = %if.end.2558, %if.end.2548
  %874 = load %union.rec*, %union.rec** %newg2126, align 8
  %os12560 = bitcast %union.rec* %874 to %struct.word_type*
  %olist2561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12560, i32 0, i32 0
  %arrayidx2562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2561, i32 0, i64 1
  %osucc2563 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2562, i32 0, i32 1
  %875 = load %union.rec*, %union.rec** %osucc2563, align 8
  %rlink2564 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %875, %union.rec** %rlink2564, align 8
  br label %if.end.2567

if.else.2565:                                     ; preds = %for.end.2242
  %876 = load %union.rec*, %union.rec** %x.addr, align 8
  %rlink2566 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  store %union.rec* %876, %union.rec** %rlink2566, align 8
  br label %if.end.2567

if.end.2567:                                      ; preds = %if.else.2565, %if.end.2559
  %llink2574 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %877 = load %union.rec*, %union.rec** %llink2574, align 8
  %878 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2575 = icmp eq %union.rec* %877, %878
  br i1 %cmp2575, label %if.then.2577, label %if.else.2592

if.then.2577:                                     ; preds = %if.end.2567
  %cwid2578 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %879 = load %union.rec*, %union.rec** %cwid2578, align 8
  %cmp2579 = icmp ne %union.rec* %879, null
  br i1 %cmp2579, label %cond.true.2581, label %cond.false.2588

cond.true.2581:                                   ; preds = %if.then.2577
  %cwid2582 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %880 = load %union.rec*, %union.rec** %cwid2582, align 8
  %os22584 = bitcast %union.rec* %880 to %struct.closure_type*
  %ou42585 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22584, i32 0, i32 4
  %oconstraint2586 = bitcast %union.FOURTH_UNION* %ou42585 to %struct.CONSTRAINT*
  %obfc2587 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2586, i32 0, i32 1
  %881 = load i32, i32* %obfc2587, align 4
  br label %cond.end.2589

cond.false.2588:                                  ; preds = %if.then.2577
  %882 = load i32, i32* %max_width, align 4
  br label %cond.end.2589

cond.end.2589:                                    ; preds = %cond.false.2588, %cond.true.2581
  %cond2590 = phi i32 [ %881, %cond.true.2581 ], [ %882, %cond.false.2588 ]
  store i32 %cond2590, i32* %col_width2573, align 4
  %badness2591 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 0, i32* %badness2591, align 4
  br label %if.end.2629

if.else.2592:                                     ; preds = %if.end.2567
  %cwid2593 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %883 = load %union.rec*, %union.rec** %cwid2593, align 8
  %cmp2594 = icmp ne %union.rec* %883, null
  br i1 %cmp2594, label %cond.true.2596, label %cond.false.2603

cond.true.2596:                                   ; preds = %if.else.2592
  %cwid2597 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %884 = load %union.rec*, %union.rec** %cwid2597, align 8
  %os22599 = bitcast %union.rec* %884 to %struct.closure_type*
  %ou42600 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22599, i32 0, i32 4
  %oconstraint2601 = bitcast %union.FOURTH_UNION* %ou42600 to %struct.CONSTRAINT*
  %obfc2602 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2601, i32 0, i32 1
  %885 = load i32, i32* %obfc2602, align 4
  br label %cond.end.2604

cond.false.2603:                                  ; preds = %if.else.2592
  %886 = load i32, i32* %etc_width, align 4
  br label %cond.end.2604

cond.end.2604:                                    ; preds = %cond.false.2603, %cond.true.2596
  %cond2605 = phi i32 [ %885, %cond.true.2596 ], [ %886, %cond.false.2603 ]
  store i32 %cond2605, i32* %col_width2573, align 4
  %llink2606 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %887 = load %union.rec*, %union.rec** %llink2606, align 8
  %os12607 = bitcast %union.rec* %887 to %struct.word_type*
  %olist2608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12607, i32 0, i32 0
  %arrayidx2609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2608, i32 0, i64 1
  %opred2610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2609, i32 0, i32 0
  %888 = load %union.rec*, %union.rec** %opred2610, align 8
  store %union.rec* %888, %union.rec** %g2569, align 8
  br label %for.cond.2611

for.cond.2611:                                    ; preds = %for.inc.2620, %cond.end.2604
  %889 = load %union.rec*, %union.rec** %g2569, align 8
  %os12612 = bitcast %union.rec* %889 to %struct.word_type*
  %ou12613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12612, i32 0, i32 1
  %os112614 = bitcast %union.FIRST_UNION* %ou12613 to %struct.anon*
  %otype2615 = getelementptr inbounds %struct.anon, %struct.anon* %os112614, i32 0, i32 0
  %890 = load i8, i8* %otype2615, align 1
  %conv2616 = zext i8 %890 to i32
  %cmp2617 = icmp eq i32 %conv2616, 0
  br i1 %cmp2617, label %for.body.2619, label %for.end.2625

for.body.2619:                                    ; preds = %for.cond.2611
  br label %for.inc.2620

for.inc.2620:                                     ; preds = %for.body.2619
  %891 = load %union.rec*, %union.rec** %g2569, align 8
  %os12621 = bitcast %union.rec* %891 to %struct.word_type*
  %olist2622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12621, i32 0, i32 0
  %arrayidx2623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2622, i32 0, i64 1
  %opred2624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2623, i32 0, i32 0
  %892 = load %union.rec*, %union.rec** %opred2624, align 8
  store %union.rec* %892, %union.rec** %g2569, align 8
  br label %for.cond.2611

for.end.2625:                                     ; preds = %for.cond.2611
  %893 = load %union.rec*, %union.rec** %g2569, align 8
  %os52626 = bitcast %union.rec* %893 to %struct.gapobj_type*
  %osave_badness2627 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52626, i32 0, i32 4
  %894 = load i32, i32* %osave_badness2627, align 4
  %badness2628 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 %894, i32* %badness2628, align 4
  br label %if.end.2629

if.end.2629:                                      ; preds = %for.end.2625, %cond.end.2589
  %tab_count2630 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %895 = load i8, i8* %tab_count2630, align 1
  %conv2631 = zext i8 %895 to i32
  %cmp2632 = icmp sgt i32 %conv2631, 0
  br i1 %cmp2632, label %if.then.2634, label %if.end.2710

if.then.2634:                                     ; preds = %if.end.2629
  %llink2637 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %896 = load %union.rec*, %union.rec** %llink2637, align 8
  %os12638 = bitcast %union.rec* %896 to %struct.word_type*
  %olist2639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12638, i32 0, i32 0
  %arrayidx2640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2639, i32 0, i64 0
  %osucc2641 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2640, i32 0, i32 1
  %897 = load %union.rec*, %union.rec** %osucc2641, align 8
  %os12642 = bitcast %union.rec* %897 to %struct.word_type*
  %olist2643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12642, i32 0, i32 0
  %arrayidx2644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2643, i32 0, i64 0
  %osucc2645 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2644, i32 0, i32 1
  %898 = load %union.rec*, %union.rec** %osucc2645, align 8
  store %union.rec* %898, %union.rec** %glink2636, align 8
  %899 = load %union.rec*, %union.rec** %glink2636, align 8
  %os12646 = bitcast %union.rec* %899 to %struct.word_type*
  %ou12647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12646, i32 0, i32 1
  %os112648 = bitcast %union.FIRST_UNION* %ou12647 to %struct.anon*
  %otype2649 = getelementptr inbounds %struct.anon, %struct.anon* %os112648, i32 0, i32 0
  %900 = load i8, i8* %otype2649, align 1
  %conv2650 = zext i8 %900 to i32
  %cmp2651 = icmp eq i32 %conv2650, 0
  br i1 %cmp2651, label %if.end.2655, label %if.then.2653

if.then.2653:                                     ; preds = %if.then.2634
  %901 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2654 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %901, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.2655

if.end.2655:                                      ; preds = %if.then.2653, %if.then.2634
  %902 = load %union.rec*, %union.rec** %glink2636, align 8
  %os12656 = bitcast %union.rec* %902 to %struct.word_type*
  %olist2657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12656, i32 0, i32 0
  %arrayidx2658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2657, i32 0, i64 1
  %opred2659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2658, i32 0, i32 0
  %903 = load %union.rec*, %union.rec** %opred2659, align 8
  store %union.rec* %903, %union.rec** %g2569, align 8
  br label %for.cond.2660

for.cond.2660:                                    ; preds = %for.inc.2669, %if.end.2655
  %904 = load %union.rec*, %union.rec** %g2569, align 8
  %os12661 = bitcast %union.rec* %904 to %struct.word_type*
  %ou12662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12661, i32 0, i32 1
  %os112663 = bitcast %union.FIRST_UNION* %ou12662 to %struct.anon*
  %otype2664 = getelementptr inbounds %struct.anon, %struct.anon* %os112663, i32 0, i32 0
  %905 = load i8, i8* %otype2664, align 1
  %conv2665 = zext i8 %905 to i32
  %cmp2666 = icmp eq i32 %conv2665, 0
  br i1 %cmp2666, label %for.body.2668, label %for.end.2674

for.body.2668:                                    ; preds = %for.cond.2660
  br label %for.inc.2669

for.inc.2669:                                     ; preds = %for.body.2668
  %906 = load %union.rec*, %union.rec** %g2569, align 8
  %os12670 = bitcast %union.rec* %906 to %struct.word_type*
  %olist2671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12670, i32 0, i32 0
  %arrayidx2672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2671, i32 0, i64 1
  %opred2673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2672, i32 0, i32 0
  %907 = load %union.rec*, %union.rec** %opred2673, align 8
  store %union.rec* %907, %union.rec** %g2569, align 8
  br label %for.cond.2660

for.end.2674:                                     ; preds = %for.cond.2660
  %908 = load %union.rec*, %union.rec** %g2569, align 8
  %os12675 = bitcast %union.rec* %908 to %struct.word_type*
  %ou12676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12675, i32 0, i32 1
  %os112677 = bitcast %union.FIRST_UNION* %ou12676 to %struct.anon*
  %otype2678 = getelementptr inbounds %struct.anon, %struct.anon* %os112677, i32 0, i32 0
  %909 = load i8, i8* %otype2678, align 1
  %conv2679 = zext i8 %909 to i32
  %cmp2680 = icmp eq i32 %conv2679, 1
  br i1 %cmp2680, label %land.lhs.true.2682, label %if.end.2709

land.lhs.true.2682:                               ; preds = %for.end.2674
  %910 = load %union.rec*, %union.rec** %g2569, align 8
  %os52683 = bitcast %union.rec* %910 to %struct.gapobj_type*
  %ogap2684 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52683, i32 0, i32 3
  %911 = bitcast %struct.GAP* %ogap2684 to i16*
  %bf.load2685 = load i16, i16* %911, align 4
  %bf.lshr2686 = lshr i16 %bf.load2685, 13
  %bf.cast2687 = zext i16 %bf.lshr2686 to i32
  %cmp2688 = icmp eq i32 %bf.cast2687, 6
  br i1 %cmp2688, label %land.lhs.true.2690, label %if.end.2709

land.lhs.true.2690:                               ; preds = %land.lhs.true.2682
  %912 = load %union.rec*, %union.rec** %g2569, align 8
  %os52691 = bitcast %union.rec* %912 to %struct.gapobj_type*
  %ogap2692 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52691, i32 0, i32 3
  %913 = bitcast %struct.GAP* %ogap2692 to i16*
  %bf.load2693 = load i16, i16* %913, align 4
  %bf.lshr2694 = lshr i16 %bf.load2693, 10
  %bf.clear2695 = and i16 %bf.lshr2694, 7
  %bf.cast2696 = zext i16 %bf.clear2695 to i32
  %cmp2697 = icmp eq i32 %bf.cast2696, 3
  br i1 %cmp2697, label %land.lhs.true.2699, label %if.end.2709

land.lhs.true.2699:                               ; preds = %land.lhs.true.2690
  %914 = load %union.rec*, %union.rec** %g2569, align 8
  %os52700 = bitcast %union.rec* %914 to %struct.gapobj_type*
  %ogap2701 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52700, i32 0, i32 3
  %owidth2702 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap2701, i32 0, i32 1
  %915 = load i16, i16* %owidth2702, align 2
  %conv2703 = sext i16 %915 to i32
  %cmp2704 = icmp eq i32 %conv2703, 4096
  br i1 %cmp2704, label %if.then.2706, label %if.end.2709

if.then.2706:                                     ; preds = %land.lhs.true.2699
  %badness2707 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %916 = load i32, i32* %badness2707, align 4
  %add2708 = add nsw i32 %916, 128
  store i32 %add2708, i32* %badness2707, align 4
  br label %if.end.2709

if.end.2709:                                      ; preds = %if.then.2706, %land.lhs.true.2699, %land.lhs.true.2690, %land.lhs.true.2682, %for.end.2674
  br label %if.end.2710

if.end.2710:                                      ; preds = %if.end.2709, %if.end.2629
  %917 = load i32, i32* %col_width2573, align 4
  %cmp2711 = icmp sle i32 %917, 0
  br i1 %cmp2711, label %if.then.2713, label %if.else.2726

if.then.2713:                                     ; preds = %if.end.2710
  %nat_width2714 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %918 = load i32, i32* %nat_width2714, align 4
  %cmp2715 = icmp eq i32 %918, 0
  br i1 %cmp2715, label %if.then.2717, label %if.else.2721

if.then.2717:                                     ; preds = %if.then.2713
  %class2718 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 0, i8* %class2718, align 1
  %badness2719 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %919 = load i32, i32* %badness2719, align 4
  %add2720 = add nsw i32 %919, 0
  store i32 %add2720, i32* %badness2719, align 4
  br label %if.end.2725

if.else.2721:                                     ; preds = %if.then.2713
  %class2722 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %class2722, align 1
  %badness2723 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %920 = load i32, i32* %badness2723, align 4
  %add2724 = add nsw i32 %920, 1048576
  store i32 %add2724, i32* %badness2723, align 4
  br label %if.end.2725

if.end.2725:                                      ; preds = %if.else.2721, %if.then.2717
  br label %if.end.2805

if.else.2726:                                     ; preds = %if.end.2710
  %tab_count2727 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %921 = load i8, i8* %tab_count2727, align 1
  %conv2728 = zext i8 %921 to i32
  %cmp2729 = icmp sgt i32 %conv2728, 0
  br i1 %cmp2729, label %land.lhs.true.2731, label %if.else.2740

land.lhs.true.2731:                               ; preds = %if.else.2726
  %width_to_tab2732 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %922 = load i32, i32* %width_to_tab2732, align 4
  %tab_pos2733 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  %923 = load i32, i32* %tab_pos2733, align 4
  %cmp2734 = icmp sgt i32 %922, %923
  br i1 %cmp2734, label %if.then.2736, label %if.else.2740

if.then.2736:                                     ; preds = %land.lhs.true.2731
  %class2737 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 4, i8* %class2737, align 1
  %badness2738 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %924 = load i32, i32* %badness2738, align 4
  %add2739 = add nsw i32 %924, 1048576
  store i32 %add2739, i32* %badness2738, align 4
  br label %if.end.2804

if.else.2740:                                     ; preds = %land.lhs.true.2731, %if.else.2726
  %925 = load i32, i32* %col_width2573, align 4
  %nat_width2741 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %926 = load i32, i32* %nat_width2741, align 4
  %sub2742 = sub nsw i32 %925, %926
  %mul2743 = mul nsw i32 1, %sub2742
  %space_width2744 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %927 = load i32, i32* %space_width2744, align 4
  %mul2745 = mul nsw i32 2, %927
  %cmp2746 = icmp sgt i32 %mul2743, %mul2745
  br i1 %cmp2746, label %if.then.2748, label %if.else.2763

if.then.2748:                                     ; preds = %if.else.2740
  %tab_count2749 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %928 = load i8, i8* %tab_count2749, align 1
  %conv2750 = zext i8 %928 to i32
  %cmp2751 = icmp sgt i32 %conv2750, 0
  %cond2753 = select i1 %cmp2751, i32 1, i32 0
  %conv2754 = trunc i32 %cond2753 to i8
  %class2755 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 %conv2754, i8* %class2755, align 1
  %929 = load i32, i32* %col_width2573, align 4
  %nat_width2756 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %930 = load i32, i32* %nat_width2756, align 4
  %sub2757 = sub nsw i32 %929, %930
  %mul2758 = mul nsw i32 512, %sub2757
  %931 = load i32, i32* %col_width2573, align 4
  %div2759 = sdiv i32 %mul2758, %931
  store i32 %div2759, i32* %badness2571, align 4
  %932 = load i32, i32* %badness2571, align 4
  %933 = load i32, i32* %badness2571, align 4
  %mul2760 = mul nsw i32 %932, %933
  %badness2761 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %934 = load i32, i32* %badness2761, align 4
  %add2762 = add nsw i32 %934, %mul2760
  store i32 %add2762, i32* %badness2761, align 4
  br label %if.end.2803

if.else.2763:                                     ; preds = %if.else.2740
  %nat_width2764 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %935 = load i32, i32* %nat_width2764, align 4
  %936 = load i32, i32* %col_width2573, align 4
  %cmp2765 = icmp sle i32 %935, %936
  br i1 %cmp2765, label %if.then.2767, label %if.else.2776

if.then.2767:                                     ; preds = %if.else.2763
  %class2768 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 1, i8* %class2768, align 1
  %937 = load i32, i32* %col_width2573, align 4
  %nat_width2769 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %938 = load i32, i32* %nat_width2769, align 4
  %sub2770 = sub nsw i32 %937, %938
  %mul2771 = mul nsw i32 128, %sub2770
  %939 = load i32, i32* %col_width2573, align 4
  %div2772 = sdiv i32 %mul2771, %939
  store i32 %div2772, i32* %badness2571, align 4
  %940 = load i32, i32* %badness2571, align 4
  %941 = load i32, i32* %badness2571, align 4
  %mul2773 = mul nsw i32 %940, %941
  %badness2774 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %942 = load i32, i32* %badness2774, align 4
  %add2775 = add nsw i32 %942, %mul2773
  store i32 %add2775, i32* %badness2774, align 4
  br label %if.end.2802

if.else.2776:                                     ; preds = %if.else.2763
  %943 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %fractional_spacing_avail2777 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %943, i32 0, i32 7
  %944 = load i32, i32* %fractional_spacing_avail2777, align 4
  %tobool2778 = icmp ne i32 %944, 0
  br i1 %tobool2778, label %land.lhs.true.2779, label %if.else.2797

land.lhs.true.2779:                               ; preds = %if.else.2776
  %945 = load i32, i32* %allow_shrink.addr, align 4
  %tobool2780 = icmp ne i32 %945, 0
  br i1 %tobool2780, label %land.lhs.true.2781, label %if.else.2797

land.lhs.true.2781:                               ; preds = %land.lhs.true.2779
  %nat_width2782 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %946 = load i32, i32* %nat_width2782, align 4
  %947 = load i32, i32* %col_width2573, align 4
  %sub2783 = sub nsw i32 %946, %947
  %mul2784 = mul nsw i32 4, %sub2783
  %space_width2785 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %948 = load i32, i32* %space_width2785, align 4
  %cmp2786 = icmp sle i32 %mul2784, %948
  br i1 %cmp2786, label %if.then.2788, label %if.else.2797

if.then.2788:                                     ; preds = %land.lhs.true.2781
  %class2789 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %class2789, align 1
  %949 = load i32, i32* %col_width2573, align 4
  %nat_width2790 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %950 = load i32, i32* %nat_width2790, align 4
  %sub2791 = sub nsw i32 %949, %950
  %mul2792 = mul nsw i32 128, %sub2791
  %951 = load i32, i32* %col_width2573, align 4
  %div2793 = sdiv i32 %mul2792, %951
  store i32 %div2793, i32* %badness2571, align 4
  %952 = load i32, i32* %badness2571, align 4
  %953 = load i32, i32* %badness2571, align 4
  %mul2794 = mul nsw i32 %952, %953
  %badness2795 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %954 = load i32, i32* %badness2795, align 4
  %add2796 = add nsw i32 %954, %mul2794
  store i32 %add2796, i32* %badness2795, align 4
  br label %if.end.2801

if.else.2797:                                     ; preds = %land.lhs.true.2781, %land.lhs.true.2779, %if.else.2776
  %class2798 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %class2798, align 1
  %badness2799 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %955 = load i32, i32* %badness2799, align 4
  %add2800 = add nsw i32 %955, 1048576
  store i32 %add2800, i32* %badness2799, align 4
  br label %if.end.2801

if.end.2801:                                      ; preds = %if.else.2797, %if.then.2788
  br label %if.end.2802

if.end.2802:                                      ; preds = %if.end.2801, %if.then.2767
  br label %if.end.2803

if.end.2803:                                      ; preds = %if.end.2802, %if.then.2748
  br label %if.end.2804

if.end.2804:                                      ; preds = %if.end.2803, %if.then.2736
  br label %if.end.2805

if.end.2805:                                      ; preds = %if.end.2804, %if.end.2725
  %badness2806 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %956 = load i32, i32* %badness2806, align 4
  %cmp2807 = icmp sge i32 %956, 0
  br i1 %cmp2807, label %if.end.2811, label %if.then.2809

if.then.2809:                                     ; preds = %if.end.2805
  %957 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2810 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %957, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.2811

if.end.2811:                                      ; preds = %if.then.2809, %if.end.2805
  %958 = load i32, i32* %unbreakable_at_right2134, align 4
  %tobool2812 = icmp ne i32 %958, 0
  br i1 %tobool2812, label %if.then.2813, label %if.else.2815

if.then.2813:                                     ; preds = %if.end.2811
  %class2814 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 7, i8* %class2814, align 1
  br label %if.end.2832

if.else.2815:                                     ; preds = %if.end.2811
  %class2816 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %959 = load i8, i8* %class2816, align 1
  %conv2817 = zext i8 %959 to i32
  %cmp2818 = icmp eq i32 %conv2817, 2
  br i1 %cmp2818, label %land.lhs.true.2820, label %if.end.2831

land.lhs.true.2820:                               ; preds = %if.else.2815
  %960 = load %union.rec*, %union.rec** %newg2126, align 8
  %os52821 = bitcast %union.rec* %960 to %struct.gapobj_type*
  %ogap2822 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52821, i32 0, i32 3
  %961 = bitcast %struct.GAP* %ogap2822 to i16*
  %bf.load2823 = load i16, i16* %961, align 4
  %bf.lshr2824 = lshr i16 %bf.load2823, 13
  %bf.cast2825 = zext i16 %bf.lshr2824 to i32
  %cmp2826 = icmp eq i32 %bf.cast2825, 6
  br i1 %cmp2826, label %if.then.2828, label %if.end.2831

if.then.2828:                                     ; preds = %land.lhs.true.2820
  %class2829 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %class2829, align 1
  %badness2830 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 1048576, i32* %badness2830, align 4
  br label %if.end.2831

if.end.2831:                                      ; preds = %if.then.2828, %land.lhs.true.2820, %if.else.2815
  br label %if.end.2832

if.end.2832:                                      ; preds = %if.end.2831, %if.then.2813
  br label %if.end.2833

if.end.2833:                                      ; preds = %if.end.2832, %if.then.1937
  %962 = bitcast %struct.INTERVAL* %BestI to i8*
  %963 = bitcast %struct.INTERVAL* %I to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %962, i8* %963, i64 48, i32 8, i1 false)
  br label %sw.epilog

sw.bb.2834:                                       ; preds = %while.body.1906, %while.body.1906, %while.body.1906
  %badness2835 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %964 = load i32, i32* %badness2835, align 4
  %badness2836 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %BestI, i32 0, i32 5
  %965 = load i32, i32* %badness2836, align 4
  %cmp2837 = icmp slt i32 %964, %965
  br i1 %cmp2837, label %if.then.2839, label %if.end.2840

if.then.2839:                                     ; preds = %sw.bb.2834
  %966 = bitcast %struct.INTERVAL* %BestI to i8*
  %967 = bitcast %struct.INTERVAL* %I to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %966, i8* %967, i64 48, i32 8, i1 false)
  br label %if.end.2840

if.end.2840:                                      ; preds = %if.then.2839, %sw.bb.2834
  br label %sw.bb.2841

sw.bb.2841:                                       ; preds = %while.body.1906, %while.body.1906, %if.end.2840
  %class2850 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  %968 = load i8, i8* %class2850, align 1
  %conv2851 = zext i8 %968 to i32
  %cmp2852 = icmp ne i32 %conv2851, 5
  br i1 %cmp2852, label %if.end.2856, label %if.then.2854

if.then.2854:                                     ; preds = %sw.bb.2841
  %969 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2855 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %969, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.2856

if.end.2856:                                      ; preds = %if.then.2854, %sw.bb.2841
  %llink2857 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %llink2857, align 8
  store %union.rec* %970, %union.rec** %llink2843, align 8
  %971 = load %union.rec*, %union.rec** %llink2843, align 8
  %os12858 = bitcast %union.rec* %971 to %struct.word_type*
  %olist2859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12858, i32 0, i32 0
  %arrayidx2860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2859, i32 0, i64 0
  %osucc2861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2860, i32 0, i32 1
  %972 = load %union.rec*, %union.rec** %osucc2861, align 8
  store %union.rec* %972, %union.rec** %llink2843, align 8
  br label %for.cond.2862

for.cond.2862:                                    ; preds = %for.inc.2915, %if.end.2856
  %973 = load %union.rec*, %union.rec** %llink2843, align 8
  %974 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2863 = icmp ne %union.rec* %973, %974
  br i1 %cmp2863, label %for.body.2865, label %for.end.2920

for.body.2865:                                    ; preds = %for.cond.2862
  %975 = load %union.rec*, %union.rec** %llink2843, align 8
  %os12866 = bitcast %union.rec* %975 to %struct.word_type*
  %olist2867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12866, i32 0, i32 0
  %arrayidx2868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2867, i32 0, i64 1
  %opred2869 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2868, i32 0, i32 0
  %976 = load %union.rec*, %union.rec** %opred2869, align 8
  store %union.rec* %976, %union.rec** %left, align 8
  br label %for.cond.2870

for.cond.2870:                                    ; preds = %for.inc.2879, %for.body.2865
  %977 = load %union.rec*, %union.rec** %left, align 8
  %os12871 = bitcast %union.rec* %977 to %struct.word_type*
  %ou12872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12871, i32 0, i32 1
  %os112873 = bitcast %union.FIRST_UNION* %ou12872 to %struct.anon*
  %otype2874 = getelementptr inbounds %struct.anon, %struct.anon* %os112873, i32 0, i32 0
  %978 = load i8, i8* %otype2874, align 1
  %conv2875 = zext i8 %978 to i32
  %cmp2876 = icmp eq i32 %conv2875, 0
  br i1 %cmp2876, label %for.body.2878, label %for.end.2884

for.body.2878:                                    ; preds = %for.cond.2870
  br label %for.inc.2879

for.inc.2879:                                     ; preds = %for.body.2878
  %979 = load %union.rec*, %union.rec** %left, align 8
  %os12880 = bitcast %union.rec* %979 to %struct.word_type*
  %olist2881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12880, i32 0, i32 0
  %arrayidx2882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2881, i32 0, i64 1
  %opred2883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2882, i32 0, i32 0
  %980 = load %union.rec*, %union.rec** %opred2883, align 8
  store %union.rec* %980, %union.rec** %left, align 8
  br label %for.cond.2870

for.end.2884:                                     ; preds = %for.cond.2870
  %981 = load %union.rec*, %union.rec** %left, align 8
  %os12885 = bitcast %union.rec* %981 to %struct.word_type*
  %ou12886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12885, i32 0, i32 1
  %os112887 = bitcast %union.FIRST_UNION* %ou12886 to %struct.anon*
  %otype2888 = getelementptr inbounds %struct.anon, %struct.anon* %os112887, i32 0, i32 0
  %982 = load i8, i8* %otype2888, align 1
  %conv2889 = zext i8 %982 to i32
  %cmp2890 = icmp eq i32 %conv2889, 9
  br i1 %cmp2890, label %cond.true.2892, label %cond.false.2895

cond.true.2892:                                   ; preds = %for.end.2884
  %983 = load %union.rec*, %union.rec** %left, align 8
  %call2893 = call i32 @SplitIsDefinite(%union.rec* %983)
  %tobool2894 = icmp ne i32 %call2893, 0
  br i1 %tobool2894, label %if.then.2913, label %if.end.2914

cond.false.2895:                                  ; preds = %for.end.2884
  %984 = load %union.rec*, %union.rec** %left, align 8
  %os12896 = bitcast %union.rec* %984 to %struct.word_type*
  %ou12897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12896, i32 0, i32 1
  %os112898 = bitcast %union.FIRST_UNION* %ou12897 to %struct.anon*
  %otype2899 = getelementptr inbounds %struct.anon, %struct.anon* %os112898, i32 0, i32 0
  %985 = load i8, i8* %otype2899, align 1
  %conv2900 = zext i8 %985 to i32
  %cmp2901 = icmp sge i32 %conv2900, 9
  br i1 %cmp2901, label %land.rhs.2903, label %land.end.2911

land.rhs.2903:                                    ; preds = %cond.false.2895
  %986 = load %union.rec*, %union.rec** %left, align 8
  %os12904 = bitcast %union.rec* %986 to %struct.word_type*
  %ou12905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12904, i32 0, i32 1
  %os112906 = bitcast %union.FIRST_UNION* %ou12905 to %struct.anon*
  %otype2907 = getelementptr inbounds %struct.anon, %struct.anon* %os112906, i32 0, i32 0
  %987 = load i8, i8* %otype2907, align 1
  %conv2908 = zext i8 %987 to i32
  %cmp2909 = icmp sle i32 %conv2908, 99
  br label %land.end.2911

land.end.2911:                                    ; preds = %land.rhs.2903, %cond.false.2895
  %988 = phi i1 [ false, %cond.false.2895 ], [ %cmp2909, %land.rhs.2903 ]
  br i1 %988, label %if.then.2913, label %if.end.2914

if.then.2913:                                     ; preds = %land.end.2911, %cond.true.2892
  br label %for.end.2920

if.end.2914:                                      ; preds = %land.end.2911, %cond.true.2892
  br label %for.inc.2915

for.inc.2915:                                     ; preds = %if.end.2914
  %989 = load %union.rec*, %union.rec** %llink2843, align 8
  %os12916 = bitcast %union.rec* %989 to %struct.word_type*
  %olist2917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12916, i32 0, i32 0
  %arrayidx2918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2917, i32 0, i64 0
  %osucc2919 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2918, i32 0, i32 1
  %990 = load %union.rec*, %union.rec** %osucc2919, align 8
  store %union.rec* %990, %union.rec** %llink2843, align 8
  br label %for.cond.2862

for.end.2920:                                     ; preds = %if.then.2913, %for.cond.2862
  %991 = load %union.rec*, %union.rec** %llink2843, align 8
  %992 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2921 = icmp ne %union.rec* %991, %992
  br i1 %cmp2921, label %if.end.2925, label %if.then.2923

if.then.2923:                                     ; preds = %for.end.2920
  %993 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2924 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %993, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.2925

if.end.2925:                                      ; preds = %if.then.2923, %for.end.2920
  store %union.rec* null, %union.rec** %lgap, align 8
  store i32 1, i32* %jn2849, align 4
  %994 = load %union.rec*, %union.rec** %llink2843, align 8
  %os12926 = bitcast %union.rec* %994 to %struct.word_type*
  %olist2927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12926, i32 0, i32 0
  %arrayidx2928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2927, i32 0, i64 0
  %osucc2929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2928, i32 0, i32 1
  %995 = load %union.rec*, %union.rec** %osucc2929, align 8
  store %union.rec* %995, %union.rec** %llink2843, align 8
  br label %for.cond.2930

for.cond.2930:                                    ; preds = %for.inc.3009, %if.end.2925
  %996 = load %union.rec*, %union.rec** %llink2843, align 8
  %997 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2931 = icmp ne %union.rec* %996, %997
  br i1 %cmp2931, label %for.body.2933, label %for.end.3014

for.body.2933:                                    ; preds = %for.cond.2930
  %998 = load %union.rec*, %union.rec** %llink2843, align 8
  %os12934 = bitcast %union.rec* %998 to %struct.word_type*
  %olist2935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12934, i32 0, i32 0
  %arrayidx2936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2935, i32 0, i64 1
  %opred2937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2936, i32 0, i32 0
  %999 = load %union.rec*, %union.rec** %opred2937, align 8
  store %union.rec* %999, %union.rec** %y2847, align 8
  br label %for.cond.2938

for.cond.2938:                                    ; preds = %for.inc.2947, %for.body.2933
  %1000 = load %union.rec*, %union.rec** %y2847, align 8
  %os12939 = bitcast %union.rec* %1000 to %struct.word_type*
  %ou12940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12939, i32 0, i32 1
  %os112941 = bitcast %union.FIRST_UNION* %ou12940 to %struct.anon*
  %otype2942 = getelementptr inbounds %struct.anon, %struct.anon* %os112941, i32 0, i32 0
  %1001 = load i8, i8* %otype2942, align 1
  %conv2943 = zext i8 %1001 to i32
  %cmp2944 = icmp eq i32 %conv2943, 0
  br i1 %cmp2944, label %for.body.2946, label %for.end.2952

for.body.2946:                                    ; preds = %for.cond.2938
  br label %for.inc.2947

for.inc.2947:                                     ; preds = %for.body.2946
  %1002 = load %union.rec*, %union.rec** %y2847, align 8
  %os12948 = bitcast %union.rec* %1002 to %struct.word_type*
  %olist2949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12948, i32 0, i32 0
  %arrayidx2950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2949, i32 0, i64 1
  %opred2951 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2950, i32 0, i32 0
  %1003 = load %union.rec*, %union.rec** %opred2951, align 8
  store %union.rec* %1003, %union.rec** %y2847, align 8
  br label %for.cond.2938

for.end.2952:                                     ; preds = %for.cond.2938
  %1004 = load %union.rec*, %union.rec** %y2847, align 8
  %os12953 = bitcast %union.rec* %1004 to %struct.word_type*
  %ou12954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12953, i32 0, i32 1
  %os112955 = bitcast %union.FIRST_UNION* %ou12954 to %struct.anon*
  %otype2956 = getelementptr inbounds %struct.anon, %struct.anon* %os112955, i32 0, i32 0
  %1005 = load i8, i8* %otype2956, align 1
  %conv2957 = zext i8 %1005 to i32
  %cmp2958 = icmp eq i32 %conv2957, 1
  br i1 %cmp2958, label %if.then.2960, label %if.else.2972

if.then.2960:                                     ; preds = %for.end.2952
  %1006 = load %union.rec*, %union.rec** %y2847, align 8
  store %union.rec* %1006, %union.rec** %lgap, align 8
  %1007 = load i32, i32* %jn2849, align 4
  %tobool2961 = icmp ne i32 %1007, 0
  br i1 %tobool2961, label %land.rhs.2962, label %land.end.2970

land.rhs.2962:                                    ; preds = %if.then.2960
  %1008 = load %union.rec*, %union.rec** %y2847, align 8
  %os52963 = bitcast %union.rec* %1008 to %struct.gapobj_type*
  %ogap2964 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52963, i32 0, i32 3
  %1009 = bitcast %struct.GAP* %ogap2964 to i16*
  %bf.load2965 = load i16, i16* %1009, align 4
  %bf.lshr2966 = lshr i16 %bf.load2965, 9
  %bf.clear2967 = and i16 %bf.lshr2966, 1
  %bf.cast2968 = zext i16 %bf.clear2967 to i32
  %tobool2969 = icmp ne i32 %bf.cast2968, 0
  br label %land.end.2970

land.end.2970:                                    ; preds = %land.rhs.2962, %if.then.2960
  %1010 = phi i1 [ false, %if.then.2960 ], [ %tobool2969, %land.rhs.2962 ]
  %land.ext2971 = zext i1 %1010 to i32
  store i32 %land.ext2971, i32* %jn2849, align 4
  br label %if.end.3008

if.else.2972:                                     ; preds = %for.end.2952
  %1011 = load %union.rec*, %union.rec** %y2847, align 8
  %os12973 = bitcast %union.rec* %1011 to %struct.word_type*
  %ou12974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12973, i32 0, i32 1
  %os112975 = bitcast %union.FIRST_UNION* %ou12974 to %struct.anon*
  %otype2976 = getelementptr inbounds %struct.anon, %struct.anon* %os112975, i32 0, i32 0
  %1012 = load i8, i8* %otype2976, align 1
  %conv2977 = zext i8 %1012 to i32
  %cmp2978 = icmp eq i32 %conv2977, 9
  br i1 %cmp2978, label %cond.true.2980, label %cond.false.2983

cond.true.2980:                                   ; preds = %if.else.2972
  %1013 = load %union.rec*, %union.rec** %y2847, align 8
  %call2981 = call i32 @SplitIsDefinite(%union.rec* %1013)
  %tobool2982 = icmp ne i32 %call2981, 0
  br i1 %tobool2982, label %if.then.3001, label %if.end.3007

cond.false.2983:                                  ; preds = %if.else.2972
  %1014 = load %union.rec*, %union.rec** %y2847, align 8
  %os12984 = bitcast %union.rec* %1014 to %struct.word_type*
  %ou12985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12984, i32 0, i32 1
  %os112986 = bitcast %union.FIRST_UNION* %ou12985 to %struct.anon*
  %otype2987 = getelementptr inbounds %struct.anon, %struct.anon* %os112986, i32 0, i32 0
  %1015 = load i8, i8* %otype2987, align 1
  %conv2988 = zext i8 %1015 to i32
  %cmp2989 = icmp sge i32 %conv2988, 9
  br i1 %cmp2989, label %land.rhs.2991, label %land.end.2999

land.rhs.2991:                                    ; preds = %cond.false.2983
  %1016 = load %union.rec*, %union.rec** %y2847, align 8
  %os12992 = bitcast %union.rec* %1016 to %struct.word_type*
  %ou12993 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12992, i32 0, i32 1
  %os112994 = bitcast %union.FIRST_UNION* %ou12993 to %struct.anon*
  %otype2995 = getelementptr inbounds %struct.anon, %struct.anon* %os112994, i32 0, i32 0
  %1017 = load i8, i8* %otype2995, align 1
  %conv2996 = zext i8 %1017 to i32
  %cmp2997 = icmp sle i32 %conv2996, 99
  br label %land.end.2999

land.end.2999:                                    ; preds = %land.rhs.2991, %cond.false.2983
  %1018 = phi i1 [ false, %cond.false.2983 ], [ %cmp2997, %land.rhs.2991 ]
  br i1 %1018, label %if.then.3001, label %if.end.3007

if.then.3001:                                     ; preds = %land.end.2999, %cond.true.2980
  %1019 = load %union.rec*, %union.rec** %lgap, align 8
  %cmp3002 = icmp ne %union.rec* %1019, null
  br i1 %cmp3002, label %if.end.3006, label %if.then.3004

if.then.3004:                                     ; preds = %if.then.3001
  %1020 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3005 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1020, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.3006

if.end.3006:                                      ; preds = %if.then.3004, %if.then.3001
  br label %for.end.3014

if.end.3007:                                      ; preds = %land.end.2999, %cond.true.2980
  br label %if.end.3008

if.end.3008:                                      ; preds = %if.end.3007, %land.end.2970
  br label %for.inc.3009

for.inc.3009:                                     ; preds = %if.end.3008
  %1021 = load %union.rec*, %union.rec** %llink2843, align 8
  %os13010 = bitcast %union.rec* %1021 to %struct.word_type*
  %olist3011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13010, i32 0, i32 0
  %arrayidx3012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3011, i32 0, i64 0
  %osucc3013 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3012, i32 0, i32 1
  %1022 = load %union.rec*, %union.rec** %osucc3013, align 8
  store %union.rec* %1022, %union.rec** %llink2843, align 8
  br label %for.cond.2930

for.end.3014:                                     ; preds = %if.end.3006, %for.cond.2930
  %1023 = load %union.rec*, %union.rec** %llink2843, align 8
  %1024 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3015 = icmp ne %union.rec* %1023, %1024
  br i1 %cmp3015, label %if.end.3019, label %if.then.3017

if.then.3017:                                     ; preds = %for.end.3014
  %1025 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3018 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1025, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.3019

if.end.3019:                                      ; preds = %if.then.3017, %for.end.3014
  %1026 = load %union.rec*, %union.rec** %lgap, align 8
  %os53020 = bitcast %union.rec* %1026 to %struct.gapobj_type*
  %ogap3021 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53020, i32 0, i32 3
  %1027 = bitcast %struct.GAP* %ogap3021 to i16*
  %bf.load3022 = load i16, i16* %1027, align 4
  %bf.lshr3023 = lshr i16 %bf.load3022, 13
  %bf.cast3024 = zext i16 %bf.lshr3023 to i32
  %cmp3025 = icmp eq i32 %bf.cast3024, 6
  br i1 %cmp3025, label %if.then.3027, label %if.else.3055

if.then.3027:                                     ; preds = %if.end.3019
  %tab_count3028 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1028 = load i8, i8* %tab_count3028, align 1
  %conv3029 = zext i8 %1028 to i32
  %cmp3030 = icmp sgt i32 %conv3029, 0
  br i1 %cmp3030, label %if.end.3042, label %lor.lhs.false.3032

lor.lhs.false.3032:                               ; preds = %if.then.3027
  %1029 = load %union.rec*, %union.rec** %lgap, align 8
  %os13033 = bitcast %union.rec* %1029 to %struct.word_type*
  %olist3034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13033, i32 0, i32 0
  %arrayidx3035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3034, i32 0, i64 1
  %osucc3036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3035, i32 0, i32 1
  %1030 = load %union.rec*, %union.rec** %osucc3036, align 8
  %rlink3037 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  %1031 = load %union.rec*, %union.rec** %rlink3037, align 8
  %cmp3038 = icmp eq %union.rec* %1030, %1031
  br i1 %cmp3038, label %if.end.3042, label %if.then.3040

if.then.3040:                                     ; preds = %lor.lhs.false.3032
  %1032 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3041 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1032, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.3042

if.end.3042:                                      ; preds = %if.then.3040, %lor.lhs.false.3032, %if.then.3027
  %tab_count3043 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1033 = load i8, i8* %tab_count3043, align 1
  %dec = add i8 %1033, -1
  store i8 %dec, i8* %tab_count3043, align 1
  %tab_count3044 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1034 = load i8, i8* %tab_count3044, align 1
  %conv3045 = zext i8 %1034 to i32
  %cmp3046 = icmp eq i32 %conv3045, 0
  br i1 %cmp3046, label %if.then.3048, label %if.end.3054

if.then.3048:                                     ; preds = %if.end.3042
  %1035 = load %union.rec*, %union.rec** %lgap, align 8
  %os53049 = bitcast %union.rec* %1035 to %struct.gapobj_type*
  %osave_space3050 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53049, i32 0, i32 5
  %1036 = load i16, i16* %osave_space3050, align 2
  %conv3051 = sext i16 %1036 to i32
  %nat_width3052 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1037 = load i32, i32* %nat_width3052, align 4
  %sub3053 = sub nsw i32 %1037, %conv3051
  store i32 %sub3053, i32* %nat_width3052, align 4
  br label %if.end.3054

if.end.3054:                                      ; preds = %if.then.3048, %if.end.3042
  br label %if.end.3108

if.else.3055:                                     ; preds = %if.end.3019
  %tab_count3056 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1038 = load i8, i8* %tab_count3056, align 1
  %conv3057 = zext i8 %1038 to i32
  %cmp3058 = icmp eq i32 %conv3057, 0
  br i1 %cmp3058, label %if.then.3060, label %if.else.3083

if.then.3060:                                     ; preds = %if.else.3055
  %1039 = load %union.rec*, %union.rec** %lgap, align 8
  %os53061 = bitcast %union.rec* %1039 to %struct.gapobj_type*
  %osave_space3062 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53061, i32 0, i32 5
  %1040 = load i16, i16* %osave_space3062, align 2
  %conv3063 = sext i16 %1040 to i32
  %1041 = load %union.rec*, %union.rec** %left, align 8
  %os13064 = bitcast %union.rec* %1041 to %struct.word_type*
  %ou33065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13064, i32 0, i32 3
  %os313066 = bitcast %union.THIRD_UNION* %ou33065 to %struct.anon.6*
  %oback3067 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313066, i32 0, i32 0
  %arrayidx3068 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3067, i32 0, i64 0
  %1042 = load i32, i32* %arrayidx3068, align 4
  %1043 = load %union.rec*, %union.rec** %left, align 8
  %os13069 = bitcast %union.rec* %1043 to %struct.word_type*
  %ou33070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13069, i32 0, i32 3
  %os313071 = bitcast %union.THIRD_UNION* %ou33070 to %struct.anon.6*
  %ofwd3072 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313071, i32 0, i32 1
  %arrayidx3073 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3072, i32 0, i64 0
  %1044 = load i32, i32* %arrayidx3073, align 4
  %add3074 = add nsw i32 %1042, %1044
  %add3075 = add nsw i32 %conv3063, %add3074
  %nat_width3076 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1045 = load i32, i32* %nat_width3076, align 4
  %sub3077 = sub nsw i32 %1045, %add3075
  store i32 %sub3077, i32* %nat_width3076, align 4
  %1046 = load %union.rec*, %union.rec** %lgap, align 8
  %os53078 = bitcast %union.rec* %1046 to %struct.gapobj_type*
  %osave_space3079 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53078, i32 0, i32 5
  %1047 = load i16, i16* %osave_space3079, align 2
  %conv3080 = sext i16 %1047 to i32
  %space_width3081 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %1048 = load i32, i32* %space_width3081, align 4
  %sub3082 = sub nsw i32 %1048, %conv3080
  store i32 %sub3082, i32* %space_width3081, align 4
  br label %if.end.3107

if.else.3083:                                     ; preds = %if.else.3055
  %tab_count3084 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1049 = load i8, i8* %tab_count3084, align 1
  %conv3085 = zext i8 %1049 to i32
  %cmp3086 = icmp eq i32 %conv3085, 1
  br i1 %cmp3086, label %if.then.3088, label %if.end.3106

if.then.3088:                                     ; preds = %if.else.3083
  %1050 = load %union.rec*, %union.rec** %lgap, align 8
  %os53089 = bitcast %union.rec* %1050 to %struct.gapobj_type*
  %osave_space3090 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53089, i32 0, i32 5
  %1051 = load i16, i16* %osave_space3090, align 2
  %conv3091 = sext i16 %1051 to i32
  %1052 = load %union.rec*, %union.rec** %left, align 8
  %os13092 = bitcast %union.rec* %1052 to %struct.word_type*
  %ou33093 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13092, i32 0, i32 3
  %os313094 = bitcast %union.THIRD_UNION* %ou33093 to %struct.anon.6*
  %oback3095 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313094, i32 0, i32 0
  %arrayidx3096 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3095, i32 0, i64 0
  %1053 = load i32, i32* %arrayidx3096, align 4
  %1054 = load %union.rec*, %union.rec** %left, align 8
  %os13097 = bitcast %union.rec* %1054 to %struct.word_type*
  %ou33098 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13097, i32 0, i32 3
  %os313099 = bitcast %union.THIRD_UNION* %ou33098 to %struct.anon.6*
  %ofwd3100 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313099, i32 0, i32 1
  %arrayidx3101 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3100, i32 0, i64 0
  %1055 = load i32, i32* %arrayidx3101, align 4
  %add3102 = add nsw i32 %1053, %1055
  %add3103 = add nsw i32 %conv3091, %add3102
  %width_to_tab3104 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %1056 = load i32, i32* %width_to_tab3104, align 4
  %sub3105 = sub nsw i32 %1056, %add3103
  store i32 %sub3105, i32* %width_to_tab3104, align 4
  br label %if.end.3106

if.end.3106:                                      ; preds = %if.then.3088, %if.else.3083
  br label %if.end.3107

if.end.3107:                                      ; preds = %if.end.3106, %if.then.3060
  br label %if.end.3108

if.end.3108:                                      ; preds = %if.end.3107, %if.end.3054
  %1057 = load %union.rec*, %union.rec** %lgap, align 8
  %os13109 = bitcast %union.rec* %1057 to %struct.word_type*
  %olist3110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13109, i32 0, i32 0
  %arrayidx3111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3110, i32 0, i64 1
  %osucc3112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3111, i32 0, i32 1
  %1058 = load %union.rec*, %union.rec** %osucc3112, align 8
  %llink3113 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  store %union.rec* %1058, %union.rec** %llink3113, align 8
  %llink3114 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %1059 = load %union.rec*, %union.rec** %llink3114, align 8
  %rlink3115 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 1
  %1060 = load %union.rec*, %union.rec** %rlink3115, align 8
  %cmp3116 = icmp eq %union.rec* %1059, %1060
  br i1 %cmp3116, label %if.then.3118, label %if.else.3121

if.then.3118:                                     ; preds = %if.end.3108
  %class3119 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 8, i8* %class3119, align 1
  %badness3120 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 1048577, i32* %badness3120, align 4
  br label %if.end.3445

if.else.3121:                                     ; preds = %if.end.3108
  %1061 = load %union.rec*, %union.rec** %lgap, align 8
  %os53122 = bitcast %union.rec* %1061 to %struct.gapobj_type*
  %osave_cwid3123 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53122, i32 0, i32 8
  %1062 = load %union.rec*, %union.rec** %osave_cwid3123, align 8
  %cmp3124 = icmp ne %union.rec* %1062, null
  br i1 %cmp3124, label %if.then.3126, label %if.end.3174

if.then.3126:                                     ; preds = %if.else.3121
  %1063 = load %union.rec*, %union.rec** %lgap, align 8
  %os53128 = bitcast %union.rec* %1063 to %struct.gapobj_type*
  %osave_cwid3129 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53128, i32 0, i32 8
  %1064 = load %union.rec*, %union.rec** %osave_cwid3129, align 8
  %os13130 = bitcast %union.rec* %1064 to %struct.word_type*
  %olist3131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13130, i32 0, i32 0
  %arrayidx3132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3131, i32 0, i64 1
  %osucc3133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3132, i32 0, i32 1
  %1065 = load %union.rec*, %union.rec** %osucc3133, align 8
  %os13134 = bitcast %union.rec* %1065 to %struct.word_type*
  %olist3135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13134, i32 0, i32 0
  %arrayidx3136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3135, i32 0, i64 0
  %osucc3137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3136, i32 0, i32 1
  %1066 = load %union.rec*, %union.rec** %osucc3137, align 8
  store %union.rec* %1066, %union.rec** %tlink, align 8
  %1067 = load %union.rec*, %union.rec** %tlink, align 8
  %os13138 = bitcast %union.rec* %1067 to %struct.word_type*
  %ou13139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13138, i32 0, i32 1
  %os113140 = bitcast %union.FIRST_UNION* %ou13139 to %struct.anon*
  %otype3141 = getelementptr inbounds %struct.anon, %struct.anon* %os113140, i32 0, i32 0
  %1068 = load i8, i8* %otype3141, align 1
  %conv3142 = zext i8 %1068 to i32
  %cmp3143 = icmp eq i32 %conv3142, 17
  br i1 %cmp3143, label %if.then.3145, label %if.else.3149

if.then.3145:                                     ; preds = %if.then.3126
  %1069 = load %union.rec*, %union.rec** %lgap, align 8
  %os53146 = bitcast %union.rec* %1069 to %struct.gapobj_type*
  %osave_cwid3147 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53146, i32 0, i32 8
  %1070 = load %union.rec*, %union.rec** %osave_cwid3147, align 8
  %cwid3148 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %1070, %union.rec** %cwid3148, align 8
  br label %if.end.3173

if.else.3149:                                     ; preds = %if.then.3126
  %1071 = load %union.rec*, %union.rec** %tlink, align 8
  %os13150 = bitcast %union.rec* %1071 to %struct.word_type*
  %olist3151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13150, i32 0, i32 0
  %arrayidx3152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3151, i32 0, i64 1
  %opred3153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3152, i32 0, i32 0
  %1072 = load %union.rec*, %union.rec** %opred3153, align 8
  %cwid3154 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %1072, %union.rec** %cwid3154, align 8
  br label %for.cond.3155

for.cond.3155:                                    ; preds = %for.inc.3165, %if.else.3149
  %cwid3156 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1073 = load %union.rec*, %union.rec** %cwid3156, align 8
  %os13157 = bitcast %union.rec* %1073 to %struct.word_type*
  %ou13158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13157, i32 0, i32 1
  %os113159 = bitcast %union.FIRST_UNION* %ou13158 to %struct.anon*
  %otype3160 = getelementptr inbounds %struct.anon, %struct.anon* %os113159, i32 0, i32 0
  %1074 = load i8, i8* %otype3160, align 1
  %conv3161 = zext i8 %1074 to i32
  %cmp3162 = icmp eq i32 %conv3161, 0
  br i1 %cmp3162, label %for.body.3164, label %for.end.3172

for.body.3164:                                    ; preds = %for.cond.3155
  br label %for.inc.3165

for.inc.3165:                                     ; preds = %for.body.3164
  %cwid3166 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1075 = load %union.rec*, %union.rec** %cwid3166, align 8
  %os13167 = bitcast %union.rec* %1075 to %struct.word_type*
  %olist3168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13167, i32 0, i32 0
  %arrayidx3169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3168, i32 0, i64 1
  %opred3170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3169, i32 0, i32 0
  %1076 = load %union.rec*, %union.rec** %opred3170, align 8
  %cwid3171 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  store %union.rec* %1076, %union.rec** %cwid3171, align 8
  br label %for.cond.3155

for.end.3172:                                     ; preds = %for.cond.3155
  br label %if.end.3173

if.end.3173:                                      ; preds = %for.end.3172, %if.then.3145
  br label %if.end.3174

if.end.3174:                                      ; preds = %if.end.3173, %if.else.3121
  %llink3181 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %1077 = load %union.rec*, %union.rec** %llink3181, align 8
  %1078 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3182 = icmp eq %union.rec* %1077, %1078
  br i1 %cmp3182, label %if.then.3184, label %if.else.3198

if.then.3184:                                     ; preds = %if.end.3174
  %cwid3185 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1079 = load %union.rec*, %union.rec** %cwid3185, align 8
  %cmp3186 = icmp ne %union.rec* %1079, null
  br i1 %cmp3186, label %cond.true.3188, label %cond.false.3194

cond.true.3188:                                   ; preds = %if.then.3184
  %cwid3189 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1080 = load %union.rec*, %union.rec** %cwid3189, align 8
  %os23190 = bitcast %union.rec* %1080 to %struct.closure_type*
  %ou43191 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23190, i32 0, i32 4
  %oconstraint3192 = bitcast %union.FOURTH_UNION* %ou43191 to %struct.CONSTRAINT*
  %obfc3193 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3192, i32 0, i32 1
  %1081 = load i32, i32* %obfc3193, align 4
  br label %cond.end.3195

cond.false.3194:                                  ; preds = %if.then.3184
  %1082 = load i32, i32* %max_width, align 4
  br label %cond.end.3195

cond.end.3195:                                    ; preds = %cond.false.3194, %cond.true.3188
  %cond3196 = phi i32 [ %1081, %cond.true.3188 ], [ %1082, %cond.false.3194 ]
  store i32 %cond3196, i32* %col_width3180, align 4
  %badness3197 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 0, i32* %badness3197, align 4
  br label %if.end.3234

if.else.3198:                                     ; preds = %if.end.3174
  %cwid3199 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1083 = load %union.rec*, %union.rec** %cwid3199, align 8
  %cmp3200 = icmp ne %union.rec* %1083, null
  br i1 %cmp3200, label %cond.true.3202, label %cond.false.3208

cond.true.3202:                                   ; preds = %if.else.3198
  %cwid3203 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 2
  %1084 = load %union.rec*, %union.rec** %cwid3203, align 8
  %os23204 = bitcast %union.rec* %1084 to %struct.closure_type*
  %ou43205 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23204, i32 0, i32 4
  %oconstraint3206 = bitcast %union.FOURTH_UNION* %ou43205 to %struct.CONSTRAINT*
  %obfc3207 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3206, i32 0, i32 1
  %1085 = load i32, i32* %obfc3207, align 4
  br label %cond.end.3209

cond.false.3208:                                  ; preds = %if.else.3198
  %1086 = load i32, i32* %etc_width, align 4
  br label %cond.end.3209

cond.end.3209:                                    ; preds = %cond.false.3208, %cond.true.3202
  %cond3210 = phi i32 [ %1085, %cond.true.3202 ], [ %1086, %cond.false.3208 ]
  store i32 %cond3210, i32* %col_width3180, align 4
  %llink3211 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %1087 = load %union.rec*, %union.rec** %llink3211, align 8
  %os13212 = bitcast %union.rec* %1087 to %struct.word_type*
  %olist3213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13212, i32 0, i32 0
  %arrayidx3214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3213, i32 0, i64 1
  %opred3215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3214, i32 0, i32 0
  %1088 = load %union.rec*, %union.rec** %opred3215, align 8
  store %union.rec* %1088, %union.rec** %g3176, align 8
  br label %for.cond.3216

for.cond.3216:                                    ; preds = %for.inc.3225, %cond.end.3209
  %1089 = load %union.rec*, %union.rec** %g3176, align 8
  %os13217 = bitcast %union.rec* %1089 to %struct.word_type*
  %ou13218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13217, i32 0, i32 1
  %os113219 = bitcast %union.FIRST_UNION* %ou13218 to %struct.anon*
  %otype3220 = getelementptr inbounds %struct.anon, %struct.anon* %os113219, i32 0, i32 0
  %1090 = load i8, i8* %otype3220, align 1
  %conv3221 = zext i8 %1090 to i32
  %cmp3222 = icmp eq i32 %conv3221, 0
  br i1 %cmp3222, label %for.body.3224, label %for.end.3230

for.body.3224:                                    ; preds = %for.cond.3216
  br label %for.inc.3225

for.inc.3225:                                     ; preds = %for.body.3224
  %1091 = load %union.rec*, %union.rec** %g3176, align 8
  %os13226 = bitcast %union.rec* %1091 to %struct.word_type*
  %olist3227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13226, i32 0, i32 0
  %arrayidx3228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3227, i32 0, i64 1
  %opred3229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3228, i32 0, i32 0
  %1092 = load %union.rec*, %union.rec** %opred3229, align 8
  store %union.rec* %1092, %union.rec** %g3176, align 8
  br label %for.cond.3216

for.end.3230:                                     ; preds = %for.cond.3216
  %1093 = load %union.rec*, %union.rec** %g3176, align 8
  %os53231 = bitcast %union.rec* %1093 to %struct.gapobj_type*
  %osave_badness3232 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53231, i32 0, i32 4
  %1094 = load i32, i32* %osave_badness3232, align 4
  %badness3233 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  store i32 %1094, i32* %badness3233, align 4
  br label %if.end.3234

if.end.3234:                                      ; preds = %for.end.3230, %cond.end.3195
  %tab_count3235 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1095 = load i8, i8* %tab_count3235, align 1
  %conv3236 = zext i8 %1095 to i32
  %cmp3237 = icmp sgt i32 %conv3236, 0
  br i1 %cmp3237, label %if.then.3239, label %if.end.3315

if.then.3239:                                     ; preds = %if.end.3234
  %llink3242 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %1096 = load %union.rec*, %union.rec** %llink3242, align 8
  %os13243 = bitcast %union.rec* %1096 to %struct.word_type*
  %olist3244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13243, i32 0, i32 0
  %arrayidx3245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3244, i32 0, i64 0
  %osucc3246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3245, i32 0, i32 1
  %1097 = load %union.rec*, %union.rec** %osucc3246, align 8
  %os13247 = bitcast %union.rec* %1097 to %struct.word_type*
  %olist3248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13247, i32 0, i32 0
  %arrayidx3249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3248, i32 0, i64 0
  %osucc3250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3249, i32 0, i32 1
  %1098 = load %union.rec*, %union.rec** %osucc3250, align 8
  store %union.rec* %1098, %union.rec** %glink3241, align 8
  %1099 = load %union.rec*, %union.rec** %glink3241, align 8
  %os13251 = bitcast %union.rec* %1099 to %struct.word_type*
  %ou13252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13251, i32 0, i32 1
  %os113253 = bitcast %union.FIRST_UNION* %ou13252 to %struct.anon*
  %otype3254 = getelementptr inbounds %struct.anon, %struct.anon* %os113253, i32 0, i32 0
  %1100 = load i8, i8* %otype3254, align 1
  %conv3255 = zext i8 %1100 to i32
  %cmp3256 = icmp eq i32 %conv3255, 0
  br i1 %cmp3256, label %if.end.3260, label %if.then.3258

if.then.3258:                                     ; preds = %if.then.3239
  %1101 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3259 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.3260

if.end.3260:                                      ; preds = %if.then.3258, %if.then.3239
  %1102 = load %union.rec*, %union.rec** %glink3241, align 8
  %os13261 = bitcast %union.rec* %1102 to %struct.word_type*
  %olist3262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13261, i32 0, i32 0
  %arrayidx3263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3262, i32 0, i64 1
  %opred3264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3263, i32 0, i32 0
  %1103 = load %union.rec*, %union.rec** %opred3264, align 8
  store %union.rec* %1103, %union.rec** %g3176, align 8
  br label %for.cond.3265

for.cond.3265:                                    ; preds = %for.inc.3274, %if.end.3260
  %1104 = load %union.rec*, %union.rec** %g3176, align 8
  %os13266 = bitcast %union.rec* %1104 to %struct.word_type*
  %ou13267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13266, i32 0, i32 1
  %os113268 = bitcast %union.FIRST_UNION* %ou13267 to %struct.anon*
  %otype3269 = getelementptr inbounds %struct.anon, %struct.anon* %os113268, i32 0, i32 0
  %1105 = load i8, i8* %otype3269, align 1
  %conv3270 = zext i8 %1105 to i32
  %cmp3271 = icmp eq i32 %conv3270, 0
  br i1 %cmp3271, label %for.body.3273, label %for.end.3279

for.body.3273:                                    ; preds = %for.cond.3265
  br label %for.inc.3274

for.inc.3274:                                     ; preds = %for.body.3273
  %1106 = load %union.rec*, %union.rec** %g3176, align 8
  %os13275 = bitcast %union.rec* %1106 to %struct.word_type*
  %olist3276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13275, i32 0, i32 0
  %arrayidx3277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3276, i32 0, i64 1
  %opred3278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3277, i32 0, i32 0
  %1107 = load %union.rec*, %union.rec** %opred3278, align 8
  store %union.rec* %1107, %union.rec** %g3176, align 8
  br label %for.cond.3265

for.end.3279:                                     ; preds = %for.cond.3265
  %1108 = load %union.rec*, %union.rec** %g3176, align 8
  %os13280 = bitcast %union.rec* %1108 to %struct.word_type*
  %ou13281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13280, i32 0, i32 1
  %os113282 = bitcast %union.FIRST_UNION* %ou13281 to %struct.anon*
  %otype3283 = getelementptr inbounds %struct.anon, %struct.anon* %os113282, i32 0, i32 0
  %1109 = load i8, i8* %otype3283, align 1
  %conv3284 = zext i8 %1109 to i32
  %cmp3285 = icmp eq i32 %conv3284, 1
  br i1 %cmp3285, label %land.lhs.true.3287, label %if.end.3314

land.lhs.true.3287:                               ; preds = %for.end.3279
  %1110 = load %union.rec*, %union.rec** %g3176, align 8
  %os53288 = bitcast %union.rec* %1110 to %struct.gapobj_type*
  %ogap3289 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53288, i32 0, i32 3
  %1111 = bitcast %struct.GAP* %ogap3289 to i16*
  %bf.load3290 = load i16, i16* %1111, align 4
  %bf.lshr3291 = lshr i16 %bf.load3290, 13
  %bf.cast3292 = zext i16 %bf.lshr3291 to i32
  %cmp3293 = icmp eq i32 %bf.cast3292, 6
  br i1 %cmp3293, label %land.lhs.true.3295, label %if.end.3314

land.lhs.true.3295:                               ; preds = %land.lhs.true.3287
  %1112 = load %union.rec*, %union.rec** %g3176, align 8
  %os53296 = bitcast %union.rec* %1112 to %struct.gapobj_type*
  %ogap3297 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53296, i32 0, i32 3
  %1113 = bitcast %struct.GAP* %ogap3297 to i16*
  %bf.load3298 = load i16, i16* %1113, align 4
  %bf.lshr3299 = lshr i16 %bf.load3298, 10
  %bf.clear3300 = and i16 %bf.lshr3299, 7
  %bf.cast3301 = zext i16 %bf.clear3300 to i32
  %cmp3302 = icmp eq i32 %bf.cast3301, 3
  br i1 %cmp3302, label %land.lhs.true.3304, label %if.end.3314

land.lhs.true.3304:                               ; preds = %land.lhs.true.3295
  %1114 = load %union.rec*, %union.rec** %g3176, align 8
  %os53305 = bitcast %union.rec* %1114 to %struct.gapobj_type*
  %ogap3306 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53305, i32 0, i32 3
  %owidth3307 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap3306, i32 0, i32 1
  %1115 = load i16, i16* %owidth3307, align 2
  %conv3308 = sext i16 %1115 to i32
  %cmp3309 = icmp eq i32 %conv3308, 4096
  br i1 %cmp3309, label %if.then.3311, label %if.end.3314

if.then.3311:                                     ; preds = %land.lhs.true.3304
  %badness3312 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1116 = load i32, i32* %badness3312, align 4
  %add3313 = add nsw i32 %1116, 128
  store i32 %add3313, i32* %badness3312, align 4
  br label %if.end.3314

if.end.3314:                                      ; preds = %if.then.3311, %land.lhs.true.3304, %land.lhs.true.3295, %land.lhs.true.3287, %for.end.3279
  br label %if.end.3315

if.end.3315:                                      ; preds = %if.end.3314, %if.end.3234
  %1117 = load i32, i32* %col_width3180, align 4
  %cmp3316 = icmp sle i32 %1117, 0
  br i1 %cmp3316, label %if.then.3318, label %if.else.3331

if.then.3318:                                     ; preds = %if.end.3315
  %nat_width3319 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1118 = load i32, i32* %nat_width3319, align 4
  %cmp3320 = icmp eq i32 %1118, 0
  br i1 %cmp3320, label %if.then.3322, label %if.else.3326

if.then.3322:                                     ; preds = %if.then.3318
  %class3323 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 0, i8* %class3323, align 1
  %badness3324 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1119 = load i32, i32* %badness3324, align 4
  %add3325 = add nsw i32 %1119, 0
  store i32 %add3325, i32* %badness3324, align 4
  br label %if.end.3330

if.else.3326:                                     ; preds = %if.then.3318
  %class3327 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %class3327, align 1
  %badness3328 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1120 = load i32, i32* %badness3328, align 4
  %add3329 = add nsw i32 %1120, 1048576
  store i32 %add3329, i32* %badness3328, align 4
  br label %if.end.3330

if.end.3330:                                      ; preds = %if.else.3326, %if.then.3322
  br label %if.end.3410

if.else.3331:                                     ; preds = %if.end.3315
  %tab_count3332 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1121 = load i8, i8* %tab_count3332, align 1
  %conv3333 = zext i8 %1121 to i32
  %cmp3334 = icmp sgt i32 %conv3333, 0
  br i1 %cmp3334, label %land.lhs.true.3336, label %if.else.3345

land.lhs.true.3336:                               ; preds = %if.else.3331
  %width_to_tab3337 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 9
  %1122 = load i32, i32* %width_to_tab3337, align 4
  %tab_pos3338 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 8
  %1123 = load i32, i32* %tab_pos3338, align 4
  %cmp3339 = icmp sgt i32 %1122, %1123
  br i1 %cmp3339, label %if.then.3341, label %if.else.3345

if.then.3341:                                     ; preds = %land.lhs.true.3336
  %class3342 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 4, i8* %class3342, align 1
  %badness3343 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1124 = load i32, i32* %badness3343, align 4
  %add3344 = add nsw i32 %1124, 1048576
  store i32 %add3344, i32* %badness3343, align 4
  br label %if.end.3409

if.else.3345:                                     ; preds = %land.lhs.true.3336, %if.else.3331
  %1125 = load i32, i32* %col_width3180, align 4
  %nat_width3346 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1126 = load i32, i32* %nat_width3346, align 4
  %sub3347 = sub nsw i32 %1125, %1126
  %mul3348 = mul nsw i32 1, %sub3347
  %space_width3349 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %1127 = load i32, i32* %space_width3349, align 4
  %mul3350 = mul nsw i32 2, %1127
  %cmp3351 = icmp sgt i32 %mul3348, %mul3350
  br i1 %cmp3351, label %if.then.3353, label %if.else.3368

if.then.3353:                                     ; preds = %if.else.3345
  %tab_count3354 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 7
  %1128 = load i8, i8* %tab_count3354, align 1
  %conv3355 = zext i8 %1128 to i32
  %cmp3356 = icmp sgt i32 %conv3355, 0
  %cond3358 = select i1 %cmp3356, i32 1, i32 0
  %conv3359 = trunc i32 %cond3358 to i8
  %class3360 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 %conv3359, i8* %class3360, align 1
  %1129 = load i32, i32* %col_width3180, align 4
  %nat_width3361 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1130 = load i32, i32* %nat_width3361, align 4
  %sub3362 = sub nsw i32 %1129, %1130
  %mul3363 = mul nsw i32 512, %sub3362
  %1131 = load i32, i32* %col_width3180, align 4
  %div3364 = sdiv i32 %mul3363, %1131
  store i32 %div3364, i32* %badness3178, align 4
  %1132 = load i32, i32* %badness3178, align 4
  %1133 = load i32, i32* %badness3178, align 4
  %mul3365 = mul nsw i32 %1132, %1133
  %badness3366 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1134 = load i32, i32* %badness3366, align 4
  %add3367 = add nsw i32 %1134, %mul3365
  store i32 %add3367, i32* %badness3366, align 4
  br label %if.end.3408

if.else.3368:                                     ; preds = %if.else.3345
  %nat_width3369 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1135 = load i32, i32* %nat_width3369, align 4
  %1136 = load i32, i32* %col_width3180, align 4
  %cmp3370 = icmp sle i32 %1135, %1136
  br i1 %cmp3370, label %if.then.3372, label %if.else.3381

if.then.3372:                                     ; preds = %if.else.3368
  %class3373 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 1, i8* %class3373, align 1
  %1137 = load i32, i32* %col_width3180, align 4
  %nat_width3374 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1138 = load i32, i32* %nat_width3374, align 4
  %sub3375 = sub nsw i32 %1137, %1138
  %mul3376 = mul nsw i32 128, %sub3375
  %1139 = load i32, i32* %col_width3180, align 4
  %div3377 = sdiv i32 %mul3376, %1139
  store i32 %div3377, i32* %badness3178, align 4
  %1140 = load i32, i32* %badness3178, align 4
  %1141 = load i32, i32* %badness3178, align 4
  %mul3378 = mul nsw i32 %1140, %1141
  %badness3379 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1142 = load i32, i32* %badness3379, align 4
  %add3380 = add nsw i32 %1142, %mul3378
  store i32 %add3380, i32* %badness3379, align 4
  br label %if.end.3407

if.else.3381:                                     ; preds = %if.else.3368
  %1143 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %fractional_spacing_avail3382 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1143, i32 0, i32 7
  %1144 = load i32, i32* %fractional_spacing_avail3382, align 4
  %tobool3383 = icmp ne i32 %1144, 0
  br i1 %tobool3383, label %land.lhs.true.3384, label %if.else.3402

land.lhs.true.3384:                               ; preds = %if.else.3381
  %1145 = load i32, i32* %allow_shrink.addr, align 4
  %tobool3385 = icmp ne i32 %1145, 0
  br i1 %tobool3385, label %land.lhs.true.3386, label %if.else.3402

land.lhs.true.3386:                               ; preds = %land.lhs.true.3384
  %nat_width3387 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1146 = load i32, i32* %nat_width3387, align 4
  %1147 = load i32, i32* %col_width3180, align 4
  %sub3388 = sub nsw i32 %1146, %1147
  %mul3389 = mul nsw i32 4, %sub3388
  %space_width3390 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 4
  %1148 = load i32, i32* %space_width3390, align 4
  %cmp3391 = icmp sle i32 %mul3389, %1148
  br i1 %cmp3391, label %if.then.3393, label %if.else.3402

if.then.3393:                                     ; preds = %land.lhs.true.3386
  %class3394 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 2, i8* %class3394, align 1
  %1149 = load i32, i32* %col_width3180, align 4
  %nat_width3395 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 3
  %1150 = load i32, i32* %nat_width3395, align 4
  %sub3396 = sub nsw i32 %1149, %1150
  %mul3397 = mul nsw i32 128, %sub3396
  %1151 = load i32, i32* %col_width3180, align 4
  %div3398 = sdiv i32 %mul3397, %1151
  store i32 %div3398, i32* %badness3178, align 4
  %1152 = load i32, i32* %badness3178, align 4
  %1153 = load i32, i32* %badness3178, align 4
  %mul3399 = mul nsw i32 %1152, %1153
  %badness3400 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1154 = load i32, i32* %badness3400, align 4
  %add3401 = add nsw i32 %1154, %mul3399
  store i32 %add3401, i32* %badness3400, align 4
  br label %if.end.3406

if.else.3402:                                     ; preds = %land.lhs.true.3386, %land.lhs.true.3384, %if.else.3381
  %class3403 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 3, i8* %class3403, align 1
  %badness3404 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1155 = load i32, i32* %badness3404, align 4
  %add3405 = add nsw i32 %1155, 1048576
  store i32 %add3405, i32* %badness3404, align 4
  br label %if.end.3406

if.end.3406:                                      ; preds = %if.else.3402, %if.then.3393
  br label %if.end.3407

if.end.3407:                                      ; preds = %if.end.3406, %if.then.3372
  br label %if.end.3408

if.end.3408:                                      ; preds = %if.end.3407, %if.then.3353
  br label %if.end.3409

if.end.3409:                                      ; preds = %if.end.3408, %if.then.3341
  br label %if.end.3410

if.end.3410:                                      ; preds = %if.end.3409, %if.end.3330
  %badness3411 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 5
  %1156 = load i32, i32* %badness3411, align 4
  %cmp3412 = icmp sge i32 %1156, 0
  br i1 %cmp3412, label %if.end.3416, label %if.then.3414

if.then.3414:                                     ; preds = %if.end.3410
  %1157 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3415 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.3416

if.end.3416:                                      ; preds = %if.then.3414, %if.end.3410
  %1158 = load %union.rec*, %union.rec** %lgap, align 8
  %os53417 = bitcast %union.rec* %1158 to %struct.gapobj_type*
  %ogap3418 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53417, i32 0, i32 3
  %1159 = bitcast %struct.GAP* %ogap3418 to i16*
  %bf.load3419 = load i16, i16* %1159, align 4
  %bf.lshr3420 = lshr i16 %bf.load3419, 7
  %bf.clear3421 = and i16 %bf.lshr3420, 1
  %bf.cast3422 = zext i16 %bf.clear3421 to i32
  %tobool3423 = icmp ne i32 %bf.cast3422, 0
  br i1 %tobool3423, label %if.then.3442, label %lor.lhs.false.3424

lor.lhs.false.3424:                               ; preds = %if.end.3416
  %1160 = load i32, i32* %hyph_allowed, align 4
  %tobool3425 = icmp ne i32 %1160, 0
  br i1 %tobool3425, label %if.end.3444, label %land.lhs.true.3426

land.lhs.true.3426:                               ; preds = %lor.lhs.false.3424
  %1161 = load %union.rec*, %union.rec** %lgap, align 8
  %os53427 = bitcast %union.rec* %1161 to %struct.gapobj_type*
  %ogap3428 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53427, i32 0, i32 3
  %1162 = bitcast %struct.GAP* %ogap3428 to i16*
  %bf.load3429 = load i16, i16* %1162, align 4
  %bf.lshr3430 = lshr i16 %bf.load3429, 13
  %bf.cast3431 = zext i16 %bf.lshr3430 to i32
  %cmp3432 = icmp eq i32 %bf.cast3431, 2
  br i1 %cmp3432, label %if.then.3442, label %lor.lhs.false.3434

lor.lhs.false.3434:                               ; preds = %land.lhs.true.3426
  %1163 = load %union.rec*, %union.rec** %lgap, align 8
  %os53435 = bitcast %union.rec* %1163 to %struct.gapobj_type*
  %ogap3436 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53435, i32 0, i32 3
  %1164 = bitcast %struct.GAP* %ogap3436 to i16*
  %bf.load3437 = load i16, i16* %1164, align 4
  %bf.lshr3438 = lshr i16 %bf.load3437, 13
  %bf.cast3439 = zext i16 %bf.lshr3438 to i32
  %cmp3440 = icmp eq i32 %bf.cast3439, 7
  br i1 %cmp3440, label %if.then.3442, label %if.end.3444

if.then.3442:                                     ; preds = %lor.lhs.false.3434, %land.lhs.true.3426, %if.end.3416
  %class3443 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 6
  store i8 6, i8* %class3443, align 1
  br label %if.end.3444

if.end.3444:                                      ; preds = %if.then.3442, %lor.lhs.false.3434, %lor.lhs.false.3424
  br label %if.end.3445

if.end.3445:                                      ; preds = %if.end.3444, %if.then.3118
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.1906
  %1165 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3446 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.3445, %if.end.2833
  br label %while.cond.1901

while.end.3447:                                   ; preds = %while.cond.1901
  %1166 = load i32, i32* %can_hyphenate.addr, align 4
  %tobool3448 = icmp ne i32 %1166, 0
  br i1 %tobool3448, label %land.lhs.true.3449, label %if.else.3455

land.lhs.true.3449:                               ; preds = %while.end.3447
  %badness3450 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %BestI, i32 0, i32 5
  %1167 = load i32, i32* %badness3450, align 4
  %cmp3451 = icmp sgt i32 %1167, 128
  br i1 %cmp3451, label %if.then.3453, label %if.else.3455

if.then.3453:                                     ; preds = %land.lhs.true.3449
  %1168 = load %union.rec*, %union.rec** %x.addr, align 8
  %call3454 = call %union.rec* @Hyphenate(%union.rec* %1168)
  store %union.rec* %call3454, %union.rec** %x.addr, align 8
  store i32 0, i32* %can_hyphenate.addr, align 4
  store i32 1, i32* %hyph_allowed, align 4
  %1169 = load i32*, i32** %hyph_used.addr, align 8
  store i32 1, i32* %1169, align 4
  br label %RESTART

if.else.3455:                                     ; preds = %land.lhs.true.3449, %while.end.3447
  %llink3456 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %1170 = load %union.rec*, %union.rec** %llink3456, align 8
  %1171 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3457 = icmp eq %union.rec* %1170, %1171
  br i1 %cmp3457, label %if.then.3459, label %if.else.3725

if.then.3459:                                     ; preds = %if.else.3455
  %1172 = load %union.rec*, %union.rec** %multi.addr, align 8
  %cmp3460 = icmp eq %union.rec* %1172, null
  br i1 %cmp3460, label %if.then.3462, label %if.else.3473

if.then.3462:                                     ; preds = %if.then.3459
  %1173 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1173, %union.rec** %res, align 8
  %1174 = load %union.rec*, %union.rec** %res, align 8
  %os13463 = bitcast %union.rec* %1174 to %struct.word_type*
  %ou33464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13463, i32 0, i32 3
  %os313465 = bitcast %union.THIRD_UNION* %ou33464 to %struct.anon.6*
  %oback3466 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313465, i32 0, i32 0
  %arrayidx3467 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3466, i32 0, i64 0
  store i32 0, i32* %arrayidx3467, align 4
  %1175 = load i32, i32* %max_width, align 4
  %1176 = load %union.rec*, %union.rec** %res, align 8
  %os13468 = bitcast %union.rec* %1176 to %struct.word_type*
  %ou33469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13468, i32 0, i32 3
  %os313470 = bitcast %union.THIRD_UNION* %ou33469 to %struct.anon.6*
  %ofwd3471 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313470, i32 0, i32 1
  %arrayidx3472 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3471, i32 0, i64 0
  store i32 %1175, i32* %arrayidx3472, align 4
  br label %if.end.3724

if.else.3473:                                     ; preds = %if.then.3459
  %1177 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 19), align 1
  %conv3474 = zext i8 %1177 to i32
  store i32 %conv3474, i32* @zz_size, align 4
  %conv3475 = sext i32 %conv3474 to i64
  %cmp3476 = icmp uge i64 %conv3475, 265
  br i1 %cmp3476, label %if.then.3478, label %if.else.3480

if.then.3478:                                     ; preds = %if.else.3473
  %1178 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3479 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1178)
  br label %if.end.3497

if.else.3480:                                     ; preds = %if.else.3473
  %1179 = load i32, i32* @zz_size, align 4
  %idxprom3481 = sext i32 %1179 to i64
  %arrayidx3482 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3481
  %1180 = load %union.rec*, %union.rec** %arrayidx3482, align 8
  %cmp3483 = icmp eq %union.rec* %1180, null
  br i1 %cmp3483, label %if.then.3485, label %if.else.3487

if.then.3485:                                     ; preds = %if.else.3480
  %1181 = load i32, i32* @zz_size, align 4
  %1182 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3486 = call %union.rec* @GetMemory(i32 %1181, %struct.FILE_POS* %1182)
  store %union.rec* %call3486, %union.rec** @zz_hold, align 8
  br label %if.end.3496

if.else.3487:                                     ; preds = %if.else.3480
  %1183 = load i32, i32* @zz_size, align 4
  %idxprom3488 = sext i32 %1183 to i64
  %arrayidx3489 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3488
  %1184 = load %union.rec*, %union.rec** %arrayidx3489, align 8
  store %union.rec* %1184, %union.rec** @zz_hold, align 8
  store %union.rec* %1184, %union.rec** @zz_hold, align 8
  %1185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13490 = bitcast %union.rec* %1185 to %struct.word_type*
  %olist3491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13490, i32 0, i32 0
  %arrayidx3492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3491, i32 0, i64 0
  %opred3493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3492, i32 0, i32 0
  %1186 = load %union.rec*, %union.rec** %opred3493, align 8
  %1187 = load i32, i32* @zz_size, align 4
  %idxprom3494 = sext i32 %1187 to i64
  %arrayidx3495 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3494
  store %union.rec* %1186, %union.rec** %arrayidx3495, align 8
  br label %if.end.3496

if.end.3496:                                      ; preds = %if.else.3487, %if.then.3485
  br label %if.end.3497

if.end.3497:                                      ; preds = %if.end.3496, %if.then.3478
  %1188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13498 = bitcast %union.rec* %1188 to %struct.word_type*
  %ou13499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13498, i32 0, i32 1
  %os113500 = bitcast %union.FIRST_UNION* %ou13499 to %struct.anon*
  %otype3501 = getelementptr inbounds %struct.anon, %struct.anon* %os113500, i32 0, i32 0
  store i8 19, i8* %otype3501, align 1
  %1189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13502 = bitcast %union.rec* %1190 to %struct.word_type*
  %olist3503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13502, i32 0, i32 0
  %arrayidx3504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3503, i32 0, i64 1
  %osucc3505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3504, i32 0, i32 1
  store %union.rec* %1189, %union.rec** %osucc3505, align 8
  %1191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13506 = bitcast %union.rec* %1191 to %struct.word_type*
  %olist3507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13506, i32 0, i32 0
  %arrayidx3508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3507, i32 0, i64 1
  %opred3509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3508, i32 0, i32 0
  store %union.rec* %1189, %union.rec** %opred3509, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13510 = bitcast %union.rec* %1192 to %struct.word_type*
  %olist3511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13510, i32 0, i32 0
  %arrayidx3512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3511, i32 0, i64 0
  %osucc3513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3512, i32 0, i32 1
  store %union.rec* %1189, %union.rec** %osucc3513, align 8
  %1193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13514 = bitcast %union.rec* %1193 to %struct.word_type*
  %olist3515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13514, i32 0, i32 0
  %arrayidx3516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3515, i32 0, i64 0
  %opred3517 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3516, i32 0, i32 0
  store %union.rec* %1189, %union.rec** %opred3517, align 8
  store %union.rec* %1189, %union.rec** %res, align 8
  %1194 = load %union.rec*, %union.rec** %res, align 8
  %os13518 = bitcast %union.rec* %1194 to %struct.word_type*
  %ou23519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13518, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou23519 to %struct.anon.2*
  %oadjust_cat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load3520 = load i16, i16* %oadjust_cat, align 2
  %bf.clear3521 = and i16 %bf.load3520, -2049
  store i16 %bf.clear3521, i16* %oadjust_cat, align 2
  %1195 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1195, %union.rec** @zz_hold, align 8
  %1196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13522 = bitcast %union.rec* %1196 to %struct.word_type*
  %olist3523 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13522, i32 0, i32 0
  %arrayidx3524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3523, i32 0, i64 1
  %osucc3525 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3524, i32 0, i32 1
  %1197 = load %union.rec*, %union.rec** %osucc3525, align 8
  %1198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3526 = icmp eq %union.rec* %1197, %1198
  br i1 %cmp3526, label %cond.true.3528, label %cond.false.3529

cond.true.3528:                                   ; preds = %if.end.3497
  br label %cond.end.3558

cond.false.3529:                                  ; preds = %if.end.3497
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13530 = bitcast %union.rec* %1199 to %struct.word_type*
  %olist3531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13530, i32 0, i32 0
  %arrayidx3532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3531, i32 0, i64 1
  %osucc3533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3532, i32 0, i32 1
  %1200 = load %union.rec*, %union.rec** %osucc3533, align 8
  store %union.rec* %1200, %union.rec** @zz_res, align 8
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13534 = bitcast %union.rec* %1201 to %struct.word_type*
  %olist3535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13534, i32 0, i32 0
  %arrayidx3536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3535, i32 0, i64 1
  %opred3537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3536, i32 0, i32 0
  %1202 = load %union.rec*, %union.rec** %opred3537, align 8
  %1203 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13538 = bitcast %union.rec* %1203 to %struct.word_type*
  %olist3539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13538, i32 0, i32 0
  %arrayidx3540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3539, i32 0, i64 1
  %opred3541 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3540, i32 0, i32 0
  store %union.rec* %1202, %union.rec** %opred3541, align 8
  %1204 = load %union.rec*, %union.rec** @zz_res, align 8
  %1205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13542 = bitcast %union.rec* %1205 to %struct.word_type*
  %olist3543 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13542, i32 0, i32 0
  %arrayidx3544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3543, i32 0, i64 1
  %opred3545 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3544, i32 0, i32 0
  %1206 = load %union.rec*, %union.rec** %opred3545, align 8
  %os13546 = bitcast %union.rec* %1206 to %struct.word_type*
  %olist3547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13546, i32 0, i32 0
  %arrayidx3548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3547, i32 0, i64 1
  %osucc3549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3548, i32 0, i32 1
  store %union.rec* %1204, %union.rec** %osucc3549, align 8
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13550 = bitcast %union.rec* %1208 to %struct.word_type*
  %olist3551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13550, i32 0, i32 0
  %arrayidx3552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3551, i32 0, i64 1
  %osucc3553 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3552, i32 0, i32 1
  store %union.rec* %1207, %union.rec** %osucc3553, align 8
  %1209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13554 = bitcast %union.rec* %1209 to %struct.word_type*
  %olist3555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13554, i32 0, i32 0
  %arrayidx3556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3555, i32 0, i64 1
  %opred3557 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3556, i32 0, i32 0
  store %union.rec* %1207, %union.rec** %opred3557, align 8
  %1210 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3558

cond.end.3558:                                    ; preds = %cond.false.3529, %cond.true.3528
  %cond3559 = phi %union.rec* [ null, %cond.true.3528 ], [ %1210, %cond.false.3529 ]
  store %union.rec* %cond3559, %union.rec** @xx_tmp, align 8
  %1211 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1211, %union.rec** @zz_res, align 8
  %1212 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1212, %union.rec** @zz_hold, align 8
  %1213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3560 = icmp eq %union.rec* %1213, null
  br i1 %cmp3560, label %cond.true.3562, label %cond.false.3563

cond.true.3562:                                   ; preds = %cond.end.3558
  %1214 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3598

cond.false.3563:                                  ; preds = %cond.end.3558
  %1215 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3564 = icmp eq %union.rec* %1215, null
  br i1 %cmp3564, label %cond.true.3566, label %cond.false.3567

cond.true.3566:                                   ; preds = %cond.false.3563
  %1216 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3596

cond.false.3567:                                  ; preds = %cond.false.3563
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13568 = bitcast %union.rec* %1217 to %struct.word_type*
  %olist3569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13568, i32 0, i32 0
  %arrayidx3570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3569, i32 0, i64 1
  %opred3571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3570, i32 0, i32 0
  %1218 = load %union.rec*, %union.rec** %opred3571, align 8
  store %union.rec* %1218, %union.rec** @zz_tmp, align 8
  %1219 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13572 = bitcast %union.rec* %1219 to %struct.word_type*
  %olist3573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13572, i32 0, i32 0
  %arrayidx3574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3573, i32 0, i64 1
  %opred3575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3574, i32 0, i32 0
  %1220 = load %union.rec*, %union.rec** %opred3575, align 8
  %1221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13576 = bitcast %union.rec* %1221 to %struct.word_type*
  %olist3577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13576, i32 0, i32 0
  %arrayidx3578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3577, i32 0, i64 1
  %opred3579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3578, i32 0, i32 0
  store %union.rec* %1220, %union.rec** %opred3579, align 8
  %1222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1223 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13580 = bitcast %union.rec* %1223 to %struct.word_type*
  %olist3581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13580, i32 0, i32 0
  %arrayidx3582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3581, i32 0, i64 1
  %opred3583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3582, i32 0, i32 0
  %1224 = load %union.rec*, %union.rec** %opred3583, align 8
  %os13584 = bitcast %union.rec* %1224 to %struct.word_type*
  %olist3585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13584, i32 0, i32 0
  %arrayidx3586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3585, i32 0, i64 1
  %osucc3587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3586, i32 0, i32 1
  store %union.rec* %1222, %union.rec** %osucc3587, align 8
  %1225 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13588 = bitcast %union.rec* %1226 to %struct.word_type*
  %olist3589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13588, i32 0, i32 0
  %arrayidx3590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3589, i32 0, i64 1
  %opred3591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3590, i32 0, i32 0
  store %union.rec* %1225, %union.rec** %opred3591, align 8
  %1227 = load %union.rec*, %union.rec** @zz_res, align 8
  %1228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13592 = bitcast %union.rec* %1228 to %struct.word_type*
  %olist3593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13592, i32 0, i32 0
  %arrayidx3594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3593, i32 0, i64 1
  %osucc3595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3594, i32 0, i32 1
  store %union.rec* %1227, %union.rec** %osucc3595, align 8
  br label %cond.end.3596

cond.end.3596:                                    ; preds = %cond.false.3567, %cond.true.3566
  %cond3597 = phi %union.rec* [ %1216, %cond.true.3566 ], [ %1227, %cond.false.3567 ]
  br label %cond.end.3598

cond.end.3598:                                    ; preds = %cond.end.3596, %cond.true.3562
  %cond3599 = phi %union.rec* [ %1214, %cond.true.3562 ], [ %cond3597, %cond.end.3596 ]
  %1229 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3600 = zext i8 %1229 to i32
  store i32 %conv3600, i32* @zz_size, align 4
  %conv3601 = sext i32 %conv3600 to i64
  %cmp3602 = icmp uge i64 %conv3601, 265
  br i1 %cmp3602, label %if.then.3604, label %if.else.3606

if.then.3604:                                     ; preds = %cond.end.3598
  %1230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3605 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1230)
  br label %if.end.3623

if.else.3606:                                     ; preds = %cond.end.3598
  %1231 = load i32, i32* @zz_size, align 4
  %idxprom3607 = sext i32 %1231 to i64
  %arrayidx3608 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3607
  %1232 = load %union.rec*, %union.rec** %arrayidx3608, align 8
  %cmp3609 = icmp eq %union.rec* %1232, null
  br i1 %cmp3609, label %if.then.3611, label %if.else.3613

if.then.3611:                                     ; preds = %if.else.3606
  %1233 = load i32, i32* @zz_size, align 4
  %1234 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3612 = call %union.rec* @GetMemory(i32 %1233, %struct.FILE_POS* %1234)
  store %union.rec* %call3612, %union.rec** @zz_hold, align 8
  br label %if.end.3622

if.else.3613:                                     ; preds = %if.else.3606
  %1235 = load i32, i32* @zz_size, align 4
  %idxprom3614 = sext i32 %1235 to i64
  %arrayidx3615 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3614
  %1236 = load %union.rec*, %union.rec** %arrayidx3615, align 8
  store %union.rec* %1236, %union.rec** @zz_hold, align 8
  store %union.rec* %1236, %union.rec** @zz_hold, align 8
  %1237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13616 = bitcast %union.rec* %1237 to %struct.word_type*
  %olist3617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13616, i32 0, i32 0
  %arrayidx3618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3617, i32 0, i64 0
  %opred3619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3618, i32 0, i32 0
  %1238 = load %union.rec*, %union.rec** %opred3619, align 8
  %1239 = load i32, i32* @zz_size, align 4
  %idxprom3620 = sext i32 %1239 to i64
  %arrayidx3621 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3620
  store %union.rec* %1238, %union.rec** %arrayidx3621, align 8
  br label %if.end.3622

if.end.3622:                                      ; preds = %if.else.3613, %if.then.3611
  br label %if.end.3623

if.end.3623:                                      ; preds = %if.end.3622, %if.then.3604
  %1240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13624 = bitcast %union.rec* %1240 to %struct.word_type*
  %ou13625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13624, i32 0, i32 1
  %os113626 = bitcast %union.FIRST_UNION* %ou13625 to %struct.anon*
  %otype3627 = getelementptr inbounds %struct.anon, %struct.anon* %os113626, i32 0, i32 0
  store i8 0, i8* %otype3627, align 1
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13628 = bitcast %union.rec* %1242 to %struct.word_type*
  %olist3629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13628, i32 0, i32 0
  %arrayidx3630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3629, i32 0, i64 1
  %osucc3631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3630, i32 0, i32 1
  store %union.rec* %1241, %union.rec** %osucc3631, align 8
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13632 = bitcast %union.rec* %1243 to %struct.word_type*
  %olist3633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13632, i32 0, i32 0
  %arrayidx3634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3633, i32 0, i64 1
  %opred3635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3634, i32 0, i32 0
  store %union.rec* %1241, %union.rec** %opred3635, align 8
  %1244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13636 = bitcast %union.rec* %1244 to %struct.word_type*
  %olist3637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13636, i32 0, i32 0
  %arrayidx3638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3637, i32 0, i64 0
  %osucc3639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3638, i32 0, i32 1
  store %union.rec* %1241, %union.rec** %osucc3639, align 8
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13640 = bitcast %union.rec* %1245 to %struct.word_type*
  %olist3641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13640, i32 0, i32 0
  %arrayidx3642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3641, i32 0, i64 0
  %opred3643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3642, i32 0, i32 0
  store %union.rec* %1241, %union.rec** %opred3643, align 8
  store %union.rec* %1241, %union.rec** @xx_link, align 8
  %1246 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1246, %union.rec** @zz_res, align 8
  %1247 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1247, %union.rec** @zz_hold, align 8
  %1248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3644 = icmp eq %union.rec* %1248, null
  br i1 %cmp3644, label %cond.true.3646, label %cond.false.3647

cond.true.3646:                                   ; preds = %if.end.3623
  %1249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3682

cond.false.3647:                                  ; preds = %if.end.3623
  %1250 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3648 = icmp eq %union.rec* %1250, null
  br i1 %cmp3648, label %cond.true.3650, label %cond.false.3651

cond.true.3650:                                   ; preds = %cond.false.3647
  %1251 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3680

cond.false.3651:                                  ; preds = %cond.false.3647
  %1252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13652 = bitcast %union.rec* %1252 to %struct.word_type*
  %olist3653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13652, i32 0, i32 0
  %arrayidx3654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3653, i32 0, i64 0
  %opred3655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3654, i32 0, i32 0
  %1253 = load %union.rec*, %union.rec** %opred3655, align 8
  store %union.rec* %1253, %union.rec** @zz_tmp, align 8
  %1254 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13656 = bitcast %union.rec* %1254 to %struct.word_type*
  %olist3657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13656, i32 0, i32 0
  %arrayidx3658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3657, i32 0, i64 0
  %opred3659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3658, i32 0, i32 0
  %1255 = load %union.rec*, %union.rec** %opred3659, align 8
  %1256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13660 = bitcast %union.rec* %1256 to %struct.word_type*
  %olist3661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13660, i32 0, i32 0
  %arrayidx3662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3661, i32 0, i64 0
  %opred3663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3662, i32 0, i32 0
  store %union.rec* %1255, %union.rec** %opred3663, align 8
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1258 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13664 = bitcast %union.rec* %1258 to %struct.word_type*
  %olist3665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13664, i32 0, i32 0
  %arrayidx3666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3665, i32 0, i64 0
  %opred3667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3666, i32 0, i32 0
  %1259 = load %union.rec*, %union.rec** %opred3667, align 8
  %os13668 = bitcast %union.rec* %1259 to %struct.word_type*
  %olist3669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13668, i32 0, i32 0
  %arrayidx3670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3669, i32 0, i64 0
  %osucc3671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3670, i32 0, i32 1
  store %union.rec* %1257, %union.rec** %osucc3671, align 8
  %1260 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1261 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13672 = bitcast %union.rec* %1261 to %struct.word_type*
  %olist3673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13672, i32 0, i32 0
  %arrayidx3674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3673, i32 0, i64 0
  %opred3675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3674, i32 0, i32 0
  store %union.rec* %1260, %union.rec** %opred3675, align 8
  %1262 = load %union.rec*, %union.rec** @zz_res, align 8
  %1263 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13676 = bitcast %union.rec* %1263 to %struct.word_type*
  %olist3677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13676, i32 0, i32 0
  %arrayidx3678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3677, i32 0, i64 0
  %osucc3679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3678, i32 0, i32 1
  store %union.rec* %1262, %union.rec** %osucc3679, align 8
  br label %cond.end.3680

cond.end.3680:                                    ; preds = %cond.false.3651, %cond.true.3650
  %cond3681 = phi %union.rec* [ %1251, %cond.true.3650 ], [ %1262, %cond.false.3651 ]
  br label %cond.end.3682

cond.end.3682:                                    ; preds = %cond.end.3680, %cond.true.3646
  %cond3683 = phi %union.rec* [ %1249, %cond.true.3646 ], [ %cond3681, %cond.end.3680 ]
  %1264 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1264, %union.rec** @zz_res, align 8
  %1265 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1265, %union.rec** @zz_hold, align 8
  %1266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3684 = icmp eq %union.rec* %1266, null
  br i1 %cmp3684, label %cond.true.3686, label %cond.false.3687

cond.true.3686:                                   ; preds = %cond.end.3682
  %1267 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3722

cond.false.3687:                                  ; preds = %cond.end.3682
  %1268 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3688 = icmp eq %union.rec* %1268, null
  br i1 %cmp3688, label %cond.true.3690, label %cond.false.3691

cond.true.3690:                                   ; preds = %cond.false.3687
  %1269 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3720

cond.false.3691:                                  ; preds = %cond.false.3687
  %1270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13692 = bitcast %union.rec* %1270 to %struct.word_type*
  %olist3693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13692, i32 0, i32 0
  %arrayidx3694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3693, i32 0, i64 1
  %opred3695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3694, i32 0, i32 0
  %1271 = load %union.rec*, %union.rec** %opred3695, align 8
  store %union.rec* %1271, %union.rec** @zz_tmp, align 8
  %1272 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13696 = bitcast %union.rec* %1272 to %struct.word_type*
  %olist3697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13696, i32 0, i32 0
  %arrayidx3698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3697, i32 0, i64 1
  %opred3699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3698, i32 0, i32 0
  %1273 = load %union.rec*, %union.rec** %opred3699, align 8
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13700 = bitcast %union.rec* %1274 to %struct.word_type*
  %olist3701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13700, i32 0, i32 0
  %arrayidx3702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3701, i32 0, i64 1
  %opred3703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3702, i32 0, i32 0
  store %union.rec* %1273, %union.rec** %opred3703, align 8
  %1275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1276 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13704 = bitcast %union.rec* %1276 to %struct.word_type*
  %olist3705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13704, i32 0, i32 0
  %arrayidx3706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3705, i32 0, i64 1
  %opred3707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3706, i32 0, i32 0
  %1277 = load %union.rec*, %union.rec** %opred3707, align 8
  %os13708 = bitcast %union.rec* %1277 to %struct.word_type*
  %olist3709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13708, i32 0, i32 0
  %arrayidx3710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3709, i32 0, i64 1
  %osucc3711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3710, i32 0, i32 1
  store %union.rec* %1275, %union.rec** %osucc3711, align 8
  %1278 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1279 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13712 = bitcast %union.rec* %1279 to %struct.word_type*
  %olist3713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13712, i32 0, i32 0
  %arrayidx3714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3713, i32 0, i64 1
  %opred3715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3714, i32 0, i32 0
  store %union.rec* %1278, %union.rec** %opred3715, align 8
  %1280 = load %union.rec*, %union.rec** @zz_res, align 8
  %1281 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13716 = bitcast %union.rec* %1281 to %struct.word_type*
  %olist3717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13716, i32 0, i32 0
  %arrayidx3718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3717, i32 0, i64 1
  %osucc3719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3718, i32 0, i32 1
  store %union.rec* %1280, %union.rec** %osucc3719, align 8
  br label %cond.end.3720

cond.end.3720:                                    ; preds = %cond.false.3691, %cond.true.3690
  %cond3721 = phi %union.rec* [ %1269, %cond.true.3690 ], [ %1280, %cond.false.3691 ]
  br label %cond.end.3722

cond.end.3722:                                    ; preds = %cond.end.3720, %cond.true.3686
  %cond3723 = phi %union.rec* [ %1267, %cond.true.3686 ], [ %cond3721, %cond.end.3720 ]
  br label %if.end.3724

if.end.3724:                                      ; preds = %cond.end.3722, %if.then.3462
  br label %if.end.7443

if.else.3725:                                     ; preds = %if.else.3455
  %1282 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 19), align 1
  %conv3730 = zext i8 %1282 to i32
  store i32 %conv3730, i32* @zz_size, align 4
  %conv3731 = sext i32 %conv3730 to i64
  %cmp3732 = icmp uge i64 %conv3731, 265
  br i1 %cmp3732, label %if.then.3734, label %if.else.3736

if.then.3734:                                     ; preds = %if.else.3725
  %1283 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3735 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1283)
  br label %if.end.3753

if.else.3736:                                     ; preds = %if.else.3725
  %1284 = load i32, i32* @zz_size, align 4
  %idxprom3737 = sext i32 %1284 to i64
  %arrayidx3738 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3737
  %1285 = load %union.rec*, %union.rec** %arrayidx3738, align 8
  %cmp3739 = icmp eq %union.rec* %1285, null
  br i1 %cmp3739, label %if.then.3741, label %if.else.3743

if.then.3741:                                     ; preds = %if.else.3736
  %1286 = load i32, i32* @zz_size, align 4
  %1287 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3742 = call %union.rec* @GetMemory(i32 %1286, %struct.FILE_POS* %1287)
  store %union.rec* %call3742, %union.rec** @zz_hold, align 8
  br label %if.end.3752

if.else.3743:                                     ; preds = %if.else.3736
  %1288 = load i32, i32* @zz_size, align 4
  %idxprom3744 = sext i32 %1288 to i64
  %arrayidx3745 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3744
  %1289 = load %union.rec*, %union.rec** %arrayidx3745, align 8
  store %union.rec* %1289, %union.rec** @zz_hold, align 8
  store %union.rec* %1289, %union.rec** @zz_hold, align 8
  %1290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13746 = bitcast %union.rec* %1290 to %struct.word_type*
  %olist3747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13746, i32 0, i32 0
  %arrayidx3748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3747, i32 0, i64 0
  %opred3749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3748, i32 0, i32 0
  %1291 = load %union.rec*, %union.rec** %opred3749, align 8
  %1292 = load i32, i32* @zz_size, align 4
  %idxprom3750 = sext i32 %1292 to i64
  %arrayidx3751 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3750
  store %union.rec* %1291, %union.rec** %arrayidx3751, align 8
  br label %if.end.3752

if.end.3752:                                      ; preds = %if.else.3743, %if.then.3741
  br label %if.end.3753

if.end.3753:                                      ; preds = %if.end.3752, %if.then.3734
  %1293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13754 = bitcast %union.rec* %1293 to %struct.word_type*
  %ou13755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13754, i32 0, i32 1
  %os113756 = bitcast %union.FIRST_UNION* %ou13755 to %struct.anon*
  %otype3757 = getelementptr inbounds %struct.anon, %struct.anon* %os113756, i32 0, i32 0
  store i8 19, i8* %otype3757, align 1
  %1294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13758 = bitcast %union.rec* %1295 to %struct.word_type*
  %olist3759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13758, i32 0, i32 0
  %arrayidx3760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3759, i32 0, i64 1
  %osucc3761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3760, i32 0, i32 1
  store %union.rec* %1294, %union.rec** %osucc3761, align 8
  %1296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13762 = bitcast %union.rec* %1296 to %struct.word_type*
  %olist3763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13762, i32 0, i32 0
  %arrayidx3764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3763, i32 0, i64 1
  %opred3765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3764, i32 0, i32 0
  store %union.rec* %1294, %union.rec** %opred3765, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13766 = bitcast %union.rec* %1297 to %struct.word_type*
  %olist3767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13766, i32 0, i32 0
  %arrayidx3768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3767, i32 0, i64 0
  %osucc3769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3768, i32 0, i32 1
  store %union.rec* %1294, %union.rec** %osucc3769, align 8
  %1298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13770 = bitcast %union.rec* %1298 to %struct.word_type*
  %olist3771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13770, i32 0, i32 0
  %arrayidx3772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3771, i32 0, i64 0
  %opred3773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3772, i32 0, i32 0
  store %union.rec* %1294, %union.rec** %opred3773, align 8
  store %union.rec* %1294, %union.rec** %res, align 8
  %1299 = load %union.rec*, %union.rec** %res, align 8
  %os13774 = bitcast %union.rec* %1299 to %struct.word_type*
  %ou23775 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13774, i32 0, i32 2
  %os233776 = bitcast %union.SECOND_UNION* %ou23775 to %struct.anon.2*
  %oadjust_cat3777 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233776, i32 0, i32 2
  %bf.load3778 = load i16, i16* %oadjust_cat3777, align 2
  %bf.clear3779 = and i16 %bf.load3778, -2049
  store i16 %bf.clear3779, i16* %oadjust_cat3777, align 2
  %1300 = load %union.rec*, %union.rec** %res, align 8
  %os13780 = bitcast %union.rec* %1300 to %struct.word_type*
  %ou33781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13780, i32 0, i32 3
  %os313782 = bitcast %union.THIRD_UNION* %ou33781 to %struct.anon.6*
  %oback3783 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313782, i32 0, i32 0
  %arrayidx3784 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3783, i32 0, i64 0
  store i32 0, i32* %arrayidx3784, align 4
  %1301 = load i32, i32* %max_width, align 4
  %1302 = load %union.rec*, %union.rec** %res, align 8
  %os13785 = bitcast %union.rec* %1302 to %struct.word_type*
  %ou33786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13785, i32 0, i32 3
  %os313787 = bitcast %union.THIRD_UNION* %ou33786 to %struct.anon.6*
  %ofwd3788 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313787, i32 0, i32 1
  %arrayidx3789 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3788, i32 0, i64 0
  store i32 %1301, i32* %arrayidx3789, align 4
  %1303 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1303, %union.rec** @zz_hold, align 8
  %1304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13790 = bitcast %union.rec* %1304 to %struct.word_type*
  %olist3791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13790, i32 0, i32 0
  %arrayidx3792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3791, i32 0, i64 1
  %osucc3793 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3792, i32 0, i32 1
  %1305 = load %union.rec*, %union.rec** %osucc3793, align 8
  %1306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3794 = icmp eq %union.rec* %1305, %1306
  br i1 %cmp3794, label %cond.true.3796, label %cond.false.3797

cond.true.3796:                                   ; preds = %if.end.3753
  br label %cond.end.3826

cond.false.3797:                                  ; preds = %if.end.3753
  %1307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13798 = bitcast %union.rec* %1307 to %struct.word_type*
  %olist3799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13798, i32 0, i32 0
  %arrayidx3800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3799, i32 0, i64 1
  %osucc3801 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3800, i32 0, i32 1
  %1308 = load %union.rec*, %union.rec** %osucc3801, align 8
  store %union.rec* %1308, %union.rec** @zz_res, align 8
  %1309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13802 = bitcast %union.rec* %1309 to %struct.word_type*
  %olist3803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13802, i32 0, i32 0
  %arrayidx3804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3803, i32 0, i64 1
  %opred3805 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3804, i32 0, i32 0
  %1310 = load %union.rec*, %union.rec** %opred3805, align 8
  %1311 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13806 = bitcast %union.rec* %1311 to %struct.word_type*
  %olist3807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13806, i32 0, i32 0
  %arrayidx3808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3807, i32 0, i64 1
  %opred3809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3808, i32 0, i32 0
  store %union.rec* %1310, %union.rec** %opred3809, align 8
  %1312 = load %union.rec*, %union.rec** @zz_res, align 8
  %1313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13810 = bitcast %union.rec* %1313 to %struct.word_type*
  %olist3811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13810, i32 0, i32 0
  %arrayidx3812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3811, i32 0, i64 1
  %opred3813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3812, i32 0, i32 0
  %1314 = load %union.rec*, %union.rec** %opred3813, align 8
  %os13814 = bitcast %union.rec* %1314 to %struct.word_type*
  %olist3815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13814, i32 0, i32 0
  %arrayidx3816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3815, i32 0, i64 1
  %osucc3817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3816, i32 0, i32 1
  store %union.rec* %1312, %union.rec** %osucc3817, align 8
  %1315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13818 = bitcast %union.rec* %1316 to %struct.word_type*
  %olist3819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13818, i32 0, i32 0
  %arrayidx3820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3819, i32 0, i64 1
  %osucc3821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3820, i32 0, i32 1
  store %union.rec* %1315, %union.rec** %osucc3821, align 8
  %1317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13822 = bitcast %union.rec* %1317 to %struct.word_type*
  %olist3823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13822, i32 0, i32 0
  %arrayidx3824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3823, i32 0, i64 1
  %opred3825 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3824, i32 0, i32 0
  store %union.rec* %1315, %union.rec** %opred3825, align 8
  %1318 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3826

cond.end.3826:                                    ; preds = %cond.false.3797, %cond.true.3796
  %cond3827 = phi %union.rec* [ null, %cond.true.3796 ], [ %1318, %cond.false.3797 ]
  store %union.rec* %cond3827, %union.rec** @xx_tmp, align 8
  %1319 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1319, %union.rec** @zz_res, align 8
  %1320 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1320, %union.rec** @zz_hold, align 8
  %1321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3828 = icmp eq %union.rec* %1321, null
  br i1 %cmp3828, label %cond.true.3830, label %cond.false.3831

cond.true.3830:                                   ; preds = %cond.end.3826
  %1322 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3866

cond.false.3831:                                  ; preds = %cond.end.3826
  %1323 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3832 = icmp eq %union.rec* %1323, null
  br i1 %cmp3832, label %cond.true.3834, label %cond.false.3835

cond.true.3834:                                   ; preds = %cond.false.3831
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3864

cond.false.3835:                                  ; preds = %cond.false.3831
  %1325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13836 = bitcast %union.rec* %1325 to %struct.word_type*
  %olist3837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13836, i32 0, i32 0
  %arrayidx3838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3837, i32 0, i64 1
  %opred3839 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3838, i32 0, i32 0
  %1326 = load %union.rec*, %union.rec** %opred3839, align 8
  store %union.rec* %1326, %union.rec** @zz_tmp, align 8
  %1327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13840 = bitcast %union.rec* %1327 to %struct.word_type*
  %olist3841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13840, i32 0, i32 0
  %arrayidx3842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3841, i32 0, i64 1
  %opred3843 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3842, i32 0, i32 0
  %1328 = load %union.rec*, %union.rec** %opred3843, align 8
  %1329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13844 = bitcast %union.rec* %1329 to %struct.word_type*
  %olist3845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13844, i32 0, i32 0
  %arrayidx3846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3845, i32 0, i64 1
  %opred3847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3846, i32 0, i32 0
  store %union.rec* %1328, %union.rec** %opred3847, align 8
  %1330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1331 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13848 = bitcast %union.rec* %1331 to %struct.word_type*
  %olist3849 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13848, i32 0, i32 0
  %arrayidx3850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3849, i32 0, i64 1
  %opred3851 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3850, i32 0, i32 0
  %1332 = load %union.rec*, %union.rec** %opred3851, align 8
  %os13852 = bitcast %union.rec* %1332 to %struct.word_type*
  %olist3853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13852, i32 0, i32 0
  %arrayidx3854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3853, i32 0, i64 1
  %osucc3855 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3854, i32 0, i32 1
  store %union.rec* %1330, %union.rec** %osucc3855, align 8
  %1333 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1334 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13856 = bitcast %union.rec* %1334 to %struct.word_type*
  %olist3857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13856, i32 0, i32 0
  %arrayidx3858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3857, i32 0, i64 1
  %opred3859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3858, i32 0, i32 0
  store %union.rec* %1333, %union.rec** %opred3859, align 8
  %1335 = load %union.rec*, %union.rec** @zz_res, align 8
  %1336 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13860 = bitcast %union.rec* %1336 to %struct.word_type*
  %olist3861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13860, i32 0, i32 0
  %arrayidx3862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3861, i32 0, i64 1
  %osucc3863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3862, i32 0, i32 1
  store %union.rec* %1335, %union.rec** %osucc3863, align 8
  br label %cond.end.3864

cond.end.3864:                                    ; preds = %cond.false.3835, %cond.true.3834
  %cond3865 = phi %union.rec* [ %1324, %cond.true.3834 ], [ %1335, %cond.false.3835 ]
  br label %cond.end.3866

cond.end.3866:                                    ; preds = %cond.end.3864, %cond.true.3830
  %cond3867 = phi %union.rec* [ %1322, %cond.true.3830 ], [ %cond3865, %cond.end.3864 ]
  %llink3868 = getelementptr inbounds %struct.INTERVAL, %struct.INTERVAL* %I, i32 0, i32 0
  %1337 = load %union.rec*, %union.rec** %llink3868, align 8
  store %union.rec* %1337, %union.rec** %llink3729, align 8
  br label %while.cond.3869

while.cond.3869:                                  ; preds = %if.end.6135, %cond.end.3866
  %1338 = load %union.rec*, %union.rec** %llink3729, align 8
  %1339 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3870 = icmp ne %union.rec* %1338, %1339
  br i1 %cmp3870, label %while.body.3872, label %while.end.6138

while.body.3872:                                  ; preds = %while.cond.3869
  %1340 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv3873 = zext i8 %1340 to i32
  store i32 %conv3873, i32* @zz_size, align 4
  %conv3874 = sext i32 %conv3873 to i64
  %cmp3875 = icmp uge i64 %conv3874, 265
  br i1 %cmp3875, label %if.then.3877, label %if.else.3879

if.then.3877:                                     ; preds = %while.body.3872
  %1341 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3878 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1341)
  br label %if.end.3896

if.else.3879:                                     ; preds = %while.body.3872
  %1342 = load i32, i32* @zz_size, align 4
  %idxprom3880 = sext i32 %1342 to i64
  %arrayidx3881 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3880
  %1343 = load %union.rec*, %union.rec** %arrayidx3881, align 8
  %cmp3882 = icmp eq %union.rec* %1343, null
  br i1 %cmp3882, label %if.then.3884, label %if.else.3886

if.then.3884:                                     ; preds = %if.else.3879
  %1344 = load i32, i32* @zz_size, align 4
  %1345 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3885 = call %union.rec* @GetMemory(i32 %1344, %struct.FILE_POS* %1345)
  store %union.rec* %call3885, %union.rec** @zz_hold, align 8
  br label %if.end.3895

if.else.3886:                                     ; preds = %if.else.3879
  %1346 = load i32, i32* @zz_size, align 4
  %idxprom3887 = sext i32 %1346 to i64
  %arrayidx3888 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3887
  %1347 = load %union.rec*, %union.rec** %arrayidx3888, align 8
  store %union.rec* %1347, %union.rec** @zz_hold, align 8
  store %union.rec* %1347, %union.rec** @zz_hold, align 8
  %1348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13889 = bitcast %union.rec* %1348 to %struct.word_type*
  %olist3890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13889, i32 0, i32 0
  %arrayidx3891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3890, i32 0, i64 0
  %opred3892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3891, i32 0, i32 0
  %1349 = load %union.rec*, %union.rec** %opred3892, align 8
  %1350 = load i32, i32* @zz_size, align 4
  %idxprom3893 = sext i32 %1350 to i64
  %arrayidx3894 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3893
  store %union.rec* %1349, %union.rec** %arrayidx3894, align 8
  br label %if.end.3895

if.end.3895:                                      ; preds = %if.else.3886, %if.then.3884
  br label %if.end.3896

if.end.3896:                                      ; preds = %if.end.3895, %if.then.3877
  %1351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13897 = bitcast %union.rec* %1351 to %struct.word_type*
  %ou13898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13897, i32 0, i32 1
  %os113899 = bitcast %union.FIRST_UNION* %ou13898 to %struct.anon*
  %otype3900 = getelementptr inbounds %struct.anon, %struct.anon* %os113899, i32 0, i32 0
  store i8 17, i8* %otype3900, align 1
  %1352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13901 = bitcast %union.rec* %1353 to %struct.word_type*
  %olist3902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13901, i32 0, i32 0
  %arrayidx3903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3902, i32 0, i64 1
  %osucc3904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3903, i32 0, i32 1
  store %union.rec* %1352, %union.rec** %osucc3904, align 8
  %1354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13905 = bitcast %union.rec* %1354 to %struct.word_type*
  %olist3906 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13905, i32 0, i32 0
  %arrayidx3907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3906, i32 0, i64 1
  %opred3908 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3907, i32 0, i32 0
  store %union.rec* %1352, %union.rec** %opred3908, align 8
  %1355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13909 = bitcast %union.rec* %1355 to %struct.word_type*
  %olist3910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13909, i32 0, i32 0
  %arrayidx3911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3910, i32 0, i64 0
  %osucc3912 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3911, i32 0, i32 1
  store %union.rec* %1352, %union.rec** %osucc3912, align 8
  %1356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13913 = bitcast %union.rec* %1356 to %struct.word_type*
  %olist3914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13913, i32 0, i32 0
  %arrayidx3915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3914, i32 0, i64 0
  %opred3916 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3915, i32 0, i32 0
  store %union.rec* %1352, %union.rec** %opred3916, align 8
  store %union.rec* %1352, %union.rec** %y, align 8
  %1357 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13917 = bitcast %union.rec* %1357 to %struct.word_type*
  %ou23918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13917, i32 0, i32 2
  %os233919 = bitcast %union.SECOND_UNION* %ou23918 to %struct.anon.2*
  %oadjust_cat3920 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233919, i32 0, i32 2
  %bf.load3921 = load i16, i16* %oadjust_cat3920, align 2
  %bf.lshr3922 = lshr i16 %bf.load3921, 11
  %bf.clear3923 = and i16 %bf.lshr3922, 1
  %bf.cast3924 = zext i16 %bf.clear3923 to i32
  %1358 = load %union.rec*, %union.rec** %y, align 8
  %os13925 = bitcast %union.rec* %1358 to %struct.word_type*
  %ou23926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13925, i32 0, i32 2
  %os233927 = bitcast %union.SECOND_UNION* %ou23926 to %struct.anon.2*
  %oadjust_cat3928 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233927, i32 0, i32 2
  %1359 = trunc i32 %bf.cast3924 to i16
  %bf.load3929 = load i16, i16* %oadjust_cat3928, align 2
  %bf.value3930 = and i16 %1359, 1
  %bf.shl3931 = shl i16 %bf.value3930, 11
  %bf.clear3932 = and i16 %bf.load3929, -2049
  %bf.set3933 = or i16 %bf.clear3932, %bf.shl3931
  store i16 %bf.set3933, i16* %oadjust_cat3928, align 2
  %bf.result.cast = zext i16 %bf.value3930 to i32
  %1360 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13934 = bitcast %union.rec* %1360 to %struct.word_type*
  %ou13935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13934, i32 0, i32 1
  %ofpos3936 = bitcast %union.FIRST_UNION* %ou13935 to %struct.FILE_POS*
  %ofile_num3937 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3936, i32 0, i32 2
  %1361 = load i16, i16* %ofile_num3937, align 2
  %1362 = load %union.rec*, %union.rec** %y, align 8
  %os13938 = bitcast %union.rec* %1362 to %struct.word_type*
  %ou13939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13938, i32 0, i32 1
  %ofpos3940 = bitcast %union.FIRST_UNION* %ou13939 to %struct.FILE_POS*
  %ofile_num3941 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3940, i32 0, i32 2
  store i16 %1361, i16* %ofile_num3941, align 2
  %1363 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13942 = bitcast %union.rec* %1363 to %struct.word_type*
  %ou13943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13942, i32 0, i32 1
  %ofpos3944 = bitcast %union.FIRST_UNION* %ou13943 to %struct.FILE_POS*
  %oline_num3945 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3944, i32 0, i32 3
  %bf.load3946 = load i32, i32* %oline_num3945, align 4
  %bf.clear3947 = and i32 %bf.load3946, 1048575
  %1364 = load %union.rec*, %union.rec** %y, align 8
  %os13948 = bitcast %union.rec* %1364 to %struct.word_type*
  %ou13949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13948, i32 0, i32 1
  %ofpos3950 = bitcast %union.FIRST_UNION* %ou13949 to %struct.FILE_POS*
  %oline_num3951 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3950, i32 0, i32 3
  %bf.load3952 = load i32, i32* %oline_num3951, align 4
  %bf.value3953 = and i32 %bf.clear3947, 1048575
  %bf.clear3954 = and i32 %bf.load3952, -1048576
  %bf.set3955 = or i32 %bf.clear3954, %bf.value3953
  store i32 %bf.set3955, i32* %oline_num3951, align 4
  %1365 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13956 = bitcast %union.rec* %1365 to %struct.word_type*
  %ou13957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13956, i32 0, i32 1
  %ofpos3958 = bitcast %union.FIRST_UNION* %ou13957 to %struct.FILE_POS*
  %ocol_num3959 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3958, i32 0, i32 3
  %bf.load3960 = load i32, i32* %ocol_num3959, align 4
  %bf.lshr3961 = lshr i32 %bf.load3960, 20
  %1366 = load %union.rec*, %union.rec** %y, align 8
  %os13962 = bitcast %union.rec* %1366 to %struct.word_type*
  %ou13963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13962, i32 0, i32 1
  %ofpos3964 = bitcast %union.FIRST_UNION* %ou13963 to %struct.FILE_POS*
  %ocol_num3965 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3964, i32 0, i32 3
  %bf.load3966 = load i32, i32* %ocol_num3965, align 4
  %bf.value3967 = and i32 %bf.lshr3961, 4095
  %bf.shl3968 = shl i32 %bf.value3967, 20
  %bf.clear3969 = and i32 %bf.load3966, 1048575
  %bf.set3970 = or i32 %bf.clear3969, %bf.shl3968
  store i32 %bf.set3970, i32* %ocol_num3965, align 4
  %1367 = load %union.rec*, %union.rec** %x.addr, align 8
  %os23971 = bitcast %union.rec* %1367 to %struct.closure_type*
  %ou43972 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23971, i32 0, i32 4
  %osave_style3973 = bitcast %union.FOURTH_UNION* %ou43972 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style3973, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %1368 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load3974 = load i16, i16* %1368, align 4
  %bf.lshr3975 = lshr i16 %bf.load3974, 7
  %bf.clear3976 = and i16 %bf.lshr3975, 1
  %bf.cast3977 = zext i16 %bf.clear3976 to i32
  %1369 = load %union.rec*, %union.rec** %y, align 8
  %os23978 = bitcast %union.rec* %1369 to %struct.closure_type*
  %ou43979 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23978, i32 0, i32 4
  %osave_style3980 = bitcast %union.FOURTH_UNION* %ou43979 to %struct.STYLE*
  %osu13981 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style3980, i32 0, i32 0
  %oline_gap3982 = bitcast %union.anon* %osu13981 to %struct.GAP*
  %1370 = bitcast %struct.GAP* %oline_gap3982 to i16*
  %1371 = trunc i32 %bf.cast3977 to i16
  %bf.load3983 = load i16, i16* %1370, align 4
  %bf.value3984 = and i16 %1371, 1
  %bf.shl3985 = shl i16 %bf.value3984, 7
  %bf.clear3986 = and i16 %bf.load3983, -129
  %bf.set3987 = or i16 %bf.clear3986, %bf.shl3985
  store i16 %bf.set3987, i16* %1370, align 4
  %bf.result.cast3988 = zext i16 %bf.value3984 to i32
  %1372 = load %union.rec*, %union.rec** %x.addr, align 8
  %os23989 = bitcast %union.rec* %1372 to %struct.closure_type*
  %ou43990 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23989, i32 0, i32 4
  %osave_style3991 = bitcast %union.FOURTH_UNION* %ou43990 to %struct.STYLE*
  %osu13992 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style3991, i32 0, i32 0
  %oline_gap3993 = bitcast %union.anon* %osu13992 to %struct.GAP*
  %1373 = bitcast %struct.GAP* %oline_gap3993 to i16*
  %bf.load3994 = load i16, i16* %1373, align 4
  %bf.lshr3995 = lshr i16 %bf.load3994, 8
  %bf.clear3996 = and i16 %bf.lshr3995, 1
  %bf.cast3997 = zext i16 %bf.clear3996 to i32
  %1374 = load %union.rec*, %union.rec** %y, align 8
  %os23998 = bitcast %union.rec* %1374 to %struct.closure_type*
  %ou43999 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23998, i32 0, i32 4
  %osave_style4000 = bitcast %union.FOURTH_UNION* %ou43999 to %struct.STYLE*
  %osu14001 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4000, i32 0, i32 0
  %oline_gap4002 = bitcast %union.anon* %osu14001 to %struct.GAP*
  %1375 = bitcast %struct.GAP* %oline_gap4002 to i16*
  %1376 = trunc i32 %bf.cast3997 to i16
  %bf.load4003 = load i16, i16* %1375, align 4
  %bf.value4004 = and i16 %1376, 1
  %bf.shl4005 = shl i16 %bf.value4004, 8
  %bf.clear4006 = and i16 %bf.load4003, -257
  %bf.set4007 = or i16 %bf.clear4006, %bf.shl4005
  store i16 %bf.set4007, i16* %1375, align 4
  %bf.result.cast4008 = zext i16 %bf.value4004 to i32
  %1377 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24009 = bitcast %union.rec* %1377 to %struct.closure_type*
  %ou44010 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24009, i32 0, i32 4
  %osave_style4011 = bitcast %union.FOURTH_UNION* %ou44010 to %struct.STYLE*
  %osu14012 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4011, i32 0, i32 0
  %oline_gap4013 = bitcast %union.anon* %osu14012 to %struct.GAP*
  %1378 = bitcast %struct.GAP* %oline_gap4013 to i16*
  %bf.load4014 = load i16, i16* %1378, align 4
  %bf.lshr4015 = lshr i16 %bf.load4014, 9
  %bf.clear4016 = and i16 %bf.lshr4015, 1
  %bf.cast4017 = zext i16 %bf.clear4016 to i32
  %1379 = load %union.rec*, %union.rec** %y, align 8
  %os24018 = bitcast %union.rec* %1379 to %struct.closure_type*
  %ou44019 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24018, i32 0, i32 4
  %osave_style4020 = bitcast %union.FOURTH_UNION* %ou44019 to %struct.STYLE*
  %osu14021 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4020, i32 0, i32 0
  %oline_gap4022 = bitcast %union.anon* %osu14021 to %struct.GAP*
  %1380 = bitcast %struct.GAP* %oline_gap4022 to i16*
  %1381 = trunc i32 %bf.cast4017 to i16
  %bf.load4023 = load i16, i16* %1380, align 4
  %bf.value4024 = and i16 %1381, 1
  %bf.shl4025 = shl i16 %bf.value4024, 9
  %bf.clear4026 = and i16 %bf.load4023, -513
  %bf.set4027 = or i16 %bf.clear4026, %bf.shl4025
  store i16 %bf.set4027, i16* %1380, align 4
  %bf.result.cast4028 = zext i16 %bf.value4024 to i32
  %1382 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24029 = bitcast %union.rec* %1382 to %struct.closure_type*
  %ou44030 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24029, i32 0, i32 4
  %osave_style4031 = bitcast %union.FOURTH_UNION* %ou44030 to %struct.STYLE*
  %osu14032 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4031, i32 0, i32 0
  %oline_gap4033 = bitcast %union.anon* %osu14032 to %struct.GAP*
  %1383 = bitcast %struct.GAP* %oline_gap4033 to i16*
  %bf.load4034 = load i16, i16* %1383, align 4
  %bf.lshr4035 = lshr i16 %bf.load4034, 10
  %bf.clear4036 = and i16 %bf.lshr4035, 7
  %bf.cast4037 = zext i16 %bf.clear4036 to i32
  %1384 = load %union.rec*, %union.rec** %y, align 8
  %os24038 = bitcast %union.rec* %1384 to %struct.closure_type*
  %ou44039 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24038, i32 0, i32 4
  %osave_style4040 = bitcast %union.FOURTH_UNION* %ou44039 to %struct.STYLE*
  %osu14041 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4040, i32 0, i32 0
  %oline_gap4042 = bitcast %union.anon* %osu14041 to %struct.GAP*
  %1385 = bitcast %struct.GAP* %oline_gap4042 to i16*
  %1386 = trunc i32 %bf.cast4037 to i16
  %bf.load4043 = load i16, i16* %1385, align 4
  %bf.value4044 = and i16 %1386, 7
  %bf.shl4045 = shl i16 %bf.value4044, 10
  %bf.clear4046 = and i16 %bf.load4043, -7169
  %bf.set4047 = or i16 %bf.clear4046, %bf.shl4045
  store i16 %bf.set4047, i16* %1385, align 4
  %bf.result.cast4048 = zext i16 %bf.value4044 to i32
  %1387 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24049 = bitcast %union.rec* %1387 to %struct.closure_type*
  %ou44050 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24049, i32 0, i32 4
  %osave_style4051 = bitcast %union.FOURTH_UNION* %ou44050 to %struct.STYLE*
  %osu14052 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4051, i32 0, i32 0
  %oline_gap4053 = bitcast %union.anon* %osu14052 to %struct.GAP*
  %1388 = bitcast %struct.GAP* %oline_gap4053 to i16*
  %bf.load4054 = load i16, i16* %1388, align 4
  %bf.lshr4055 = lshr i16 %bf.load4054, 13
  %bf.cast4056 = zext i16 %bf.lshr4055 to i32
  %1389 = load %union.rec*, %union.rec** %y, align 8
  %os24057 = bitcast %union.rec* %1389 to %struct.closure_type*
  %ou44058 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24057, i32 0, i32 4
  %osave_style4059 = bitcast %union.FOURTH_UNION* %ou44058 to %struct.STYLE*
  %osu14060 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4059, i32 0, i32 0
  %oline_gap4061 = bitcast %union.anon* %osu14060 to %struct.GAP*
  %1390 = bitcast %struct.GAP* %oline_gap4061 to i16*
  %1391 = trunc i32 %bf.cast4056 to i16
  %bf.load4062 = load i16, i16* %1390, align 4
  %bf.value4063 = and i16 %1391, 7
  %bf.shl4064 = shl i16 %bf.value4063, 13
  %bf.clear4065 = and i16 %bf.load4062, 8191
  %bf.set4066 = or i16 %bf.clear4065, %bf.shl4064
  store i16 %bf.set4066, i16* %1390, align 4
  %bf.result.cast4067 = zext i16 %bf.value4063 to i32
  %1392 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24068 = bitcast %union.rec* %1392 to %struct.closure_type*
  %ou44069 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24068, i32 0, i32 4
  %osave_style4070 = bitcast %union.FOURTH_UNION* %ou44069 to %struct.STYLE*
  %osu14071 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4070, i32 0, i32 0
  %oline_gap4072 = bitcast %union.anon* %osu14071 to %struct.GAP*
  %owidth4073 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap4072, i32 0, i32 1
  %1393 = load i16, i16* %owidth4073, align 2
  %1394 = load %union.rec*, %union.rec** %y, align 8
  %os24074 = bitcast %union.rec* %1394 to %struct.closure_type*
  %ou44075 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24074, i32 0, i32 4
  %osave_style4076 = bitcast %union.FOURTH_UNION* %ou44075 to %struct.STYLE*
  %osu14077 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4076, i32 0, i32 0
  %oline_gap4078 = bitcast %union.anon* %osu14077 to %struct.GAP*
  %owidth4079 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap4078, i32 0, i32 1
  store i16 %1393, i16* %owidth4079, align 2
  %1395 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24080 = bitcast %union.rec* %1395 to %struct.closure_type*
  %ou44081 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24080, i32 0, i32 4
  %osave_style4082 = bitcast %union.FOURTH_UNION* %ou44081 to %struct.STYLE*
  %osu24083 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4082, i32 0, i32 1
  %oss24084 = bitcast %union.anon.10* %osu24083 to %struct.anon.11*
  %1396 = bitcast %struct.anon.11* %oss24084 to i8*
  %bf.load4085 = load i8, i8* %1396, align 4
  %bf.clear4086 = and i8 %bf.load4085, 3
  %bf.cast4087 = zext i8 %bf.clear4086 to i32
  %1397 = load %union.rec*, %union.rec** %y, align 8
  %os24088 = bitcast %union.rec* %1397 to %struct.closure_type*
  %ou44089 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24088, i32 0, i32 4
  %osave_style4090 = bitcast %union.FOURTH_UNION* %ou44089 to %struct.STYLE*
  %osu24091 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4090, i32 0, i32 1
  %oss24092 = bitcast %union.anon.10* %osu24091 to %struct.anon.11*
  %1398 = bitcast %struct.anon.11* %oss24092 to i8*
  %1399 = trunc i32 %bf.cast4087 to i8
  %bf.load4093 = load i8, i8* %1398, align 4
  %bf.value4094 = and i8 %1399, 3
  %bf.clear4095 = and i8 %bf.load4093, -4
  %bf.set4096 = or i8 %bf.clear4095, %bf.value4094
  store i8 %bf.set4096, i8* %1398, align 4
  %bf.result.cast4097 = zext i8 %bf.value4094 to i32
  %1400 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24098 = bitcast %union.rec* %1400 to %struct.closure_type*
  %ou44099 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24098, i32 0, i32 4
  %osave_style4100 = bitcast %union.FOURTH_UNION* %ou44099 to %struct.STYLE*
  %osu24101 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4100, i32 0, i32 1
  %oss24102 = bitcast %union.anon.10* %osu24101 to %struct.anon.11*
  %1401 = bitcast %struct.anon.11* %oss24102 to i8*
  %bf.load4103 = load i8, i8* %1401, align 4
  %bf.lshr4104 = lshr i8 %bf.load4103, 2
  %bf.clear4105 = and i8 %bf.lshr4104, 3
  %bf.cast4106 = zext i8 %bf.clear4105 to i32
  %1402 = load %union.rec*, %union.rec** %y, align 8
  %os24107 = bitcast %union.rec* %1402 to %struct.closure_type*
  %ou44108 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24107, i32 0, i32 4
  %osave_style4109 = bitcast %union.FOURTH_UNION* %ou44108 to %struct.STYLE*
  %osu24110 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4109, i32 0, i32 1
  %oss24111 = bitcast %union.anon.10* %osu24110 to %struct.anon.11*
  %1403 = bitcast %struct.anon.11* %oss24111 to i8*
  %1404 = trunc i32 %bf.cast4106 to i8
  %bf.load4112 = load i8, i8* %1403, align 4
  %bf.value4113 = and i8 %1404, 3
  %bf.shl4114 = shl i8 %bf.value4113, 2
  %bf.clear4115 = and i8 %bf.load4112, -13
  %bf.set4116 = or i8 %bf.clear4115, %bf.shl4114
  store i8 %bf.set4116, i8* %1403, align 4
  %bf.result.cast4117 = zext i8 %bf.value4113 to i32
  %1405 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24118 = bitcast %union.rec* %1405 to %struct.closure_type*
  %ou44119 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24118, i32 0, i32 4
  %osave_style4120 = bitcast %union.FOURTH_UNION* %ou44119 to %struct.STYLE*
  %osu24121 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4120, i32 0, i32 1
  %oss24122 = bitcast %union.anon.10* %osu24121 to %struct.anon.11*
  %1406 = bitcast %struct.anon.11* %oss24122 to i8*
  %bf.load4123 = load i8, i8* %1406, align 4
  %bf.lshr4124 = lshr i8 %bf.load4123, 4
  %bf.clear4125 = and i8 %bf.lshr4124, 7
  %bf.cast4126 = zext i8 %bf.clear4125 to i32
  %1407 = load %union.rec*, %union.rec** %y, align 8
  %os24127 = bitcast %union.rec* %1407 to %struct.closure_type*
  %ou44128 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24127, i32 0, i32 4
  %osave_style4129 = bitcast %union.FOURTH_UNION* %ou44128 to %struct.STYLE*
  %osu24130 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4129, i32 0, i32 1
  %oss24131 = bitcast %union.anon.10* %osu24130 to %struct.anon.11*
  %1408 = bitcast %struct.anon.11* %oss24131 to i8*
  %1409 = trunc i32 %bf.cast4126 to i8
  %bf.load4132 = load i8, i8* %1408, align 4
  %bf.value4133 = and i8 %1409, 7
  %bf.shl4134 = shl i8 %bf.value4133, 4
  %bf.clear4135 = and i8 %bf.load4132, -113
  %bf.set4136 = or i8 %bf.clear4135, %bf.shl4134
  store i8 %bf.set4136, i8* %1408, align 4
  %bf.result.cast4137 = zext i8 %bf.value4133 to i32
  %1410 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24138 = bitcast %union.rec* %1410 to %struct.closure_type*
  %ou44139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24138, i32 0, i32 4
  %osave_style4140 = bitcast %union.FOURTH_UNION* %ou44139 to %struct.STYLE*
  %osu14141 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4140, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu14141 to %struct.anon.9*
  %1411 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load4142 = load i8, i8* %1411, align 4
  %bf.lshr4143 = lshr i8 %bf.load4142, 3
  %bf.clear4144 = and i8 %bf.lshr4143, 1
  %bf.cast4145 = zext i8 %bf.clear4144 to i32
  %1412 = load %union.rec*, %union.rec** %y, align 8
  %os24146 = bitcast %union.rec* %1412 to %struct.closure_type*
  %ou44147 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24146, i32 0, i32 4
  %osave_style4148 = bitcast %union.FOURTH_UNION* %ou44147 to %struct.STYLE*
  %osu14149 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4148, i32 0, i32 0
  %oss14150 = bitcast %union.anon* %osu14149 to %struct.anon.9*
  %1413 = bitcast %struct.anon.9* %oss14150 to i8*
  %1414 = trunc i32 %bf.cast4145 to i8
  %bf.load4151 = load i8, i8* %1413, align 4
  %bf.value4152 = and i8 %1414, 1
  %bf.shl4153 = shl i8 %bf.value4152, 3
  %bf.clear4154 = and i8 %bf.load4151, -9
  %bf.set4155 = or i8 %bf.clear4154, %bf.shl4153
  store i8 %bf.set4155, i8* %1413, align 4
  %bf.result.cast4156 = zext i8 %bf.value4152 to i32
  %1415 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24157 = bitcast %union.rec* %1415 to %struct.closure_type*
  %ou44158 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24157, i32 0, i32 4
  %osave_style4159 = bitcast %union.FOURTH_UNION* %ou44158 to %struct.STYLE*
  %osu24160 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4159, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu24160 to %struct.GAP*
  %1416 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load4161 = load i16, i16* %1416, align 4
  %bf.lshr4162 = lshr i16 %bf.load4161, 7
  %bf.clear4163 = and i16 %bf.lshr4162, 1
  %bf.cast4164 = zext i16 %bf.clear4163 to i32
  %1417 = load %union.rec*, %union.rec** %y, align 8
  %os24165 = bitcast %union.rec* %1417 to %struct.closure_type*
  %ou44166 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24165, i32 0, i32 4
  %osave_style4167 = bitcast %union.FOURTH_UNION* %ou44166 to %struct.STYLE*
  %osu24168 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4167, i32 0, i32 1
  %ospace_gap4169 = bitcast %union.anon.10* %osu24168 to %struct.GAP*
  %1418 = bitcast %struct.GAP* %ospace_gap4169 to i16*
  %1419 = trunc i32 %bf.cast4164 to i16
  %bf.load4170 = load i16, i16* %1418, align 4
  %bf.value4171 = and i16 %1419, 1
  %bf.shl4172 = shl i16 %bf.value4171, 7
  %bf.clear4173 = and i16 %bf.load4170, -129
  %bf.set4174 = or i16 %bf.clear4173, %bf.shl4172
  store i16 %bf.set4174, i16* %1418, align 4
  %bf.result.cast4175 = zext i16 %bf.value4171 to i32
  %1420 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24176 = bitcast %union.rec* %1420 to %struct.closure_type*
  %ou44177 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24176, i32 0, i32 4
  %osave_style4178 = bitcast %union.FOURTH_UNION* %ou44177 to %struct.STYLE*
  %osu24179 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4178, i32 0, i32 1
  %ospace_gap4180 = bitcast %union.anon.10* %osu24179 to %struct.GAP*
  %1421 = bitcast %struct.GAP* %ospace_gap4180 to i16*
  %bf.load4181 = load i16, i16* %1421, align 4
  %bf.lshr4182 = lshr i16 %bf.load4181, 8
  %bf.clear4183 = and i16 %bf.lshr4182, 1
  %bf.cast4184 = zext i16 %bf.clear4183 to i32
  %1422 = load %union.rec*, %union.rec** %y, align 8
  %os24185 = bitcast %union.rec* %1422 to %struct.closure_type*
  %ou44186 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24185, i32 0, i32 4
  %osave_style4187 = bitcast %union.FOURTH_UNION* %ou44186 to %struct.STYLE*
  %osu24188 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4187, i32 0, i32 1
  %ospace_gap4189 = bitcast %union.anon.10* %osu24188 to %struct.GAP*
  %1423 = bitcast %struct.GAP* %ospace_gap4189 to i16*
  %1424 = trunc i32 %bf.cast4184 to i16
  %bf.load4190 = load i16, i16* %1423, align 4
  %bf.value4191 = and i16 %1424, 1
  %bf.shl4192 = shl i16 %bf.value4191, 8
  %bf.clear4193 = and i16 %bf.load4190, -257
  %bf.set4194 = or i16 %bf.clear4193, %bf.shl4192
  store i16 %bf.set4194, i16* %1423, align 4
  %bf.result.cast4195 = zext i16 %bf.value4191 to i32
  %1425 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24196 = bitcast %union.rec* %1425 to %struct.closure_type*
  %ou44197 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24196, i32 0, i32 4
  %osave_style4198 = bitcast %union.FOURTH_UNION* %ou44197 to %struct.STYLE*
  %osu24199 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4198, i32 0, i32 1
  %ospace_gap4200 = bitcast %union.anon.10* %osu24199 to %struct.GAP*
  %1426 = bitcast %struct.GAP* %ospace_gap4200 to i16*
  %bf.load4201 = load i16, i16* %1426, align 4
  %bf.lshr4202 = lshr i16 %bf.load4201, 9
  %bf.clear4203 = and i16 %bf.lshr4202, 1
  %bf.cast4204 = zext i16 %bf.clear4203 to i32
  %1427 = load %union.rec*, %union.rec** %y, align 8
  %os24205 = bitcast %union.rec* %1427 to %struct.closure_type*
  %ou44206 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24205, i32 0, i32 4
  %osave_style4207 = bitcast %union.FOURTH_UNION* %ou44206 to %struct.STYLE*
  %osu24208 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4207, i32 0, i32 1
  %ospace_gap4209 = bitcast %union.anon.10* %osu24208 to %struct.GAP*
  %1428 = bitcast %struct.GAP* %ospace_gap4209 to i16*
  %1429 = trunc i32 %bf.cast4204 to i16
  %bf.load4210 = load i16, i16* %1428, align 4
  %bf.value4211 = and i16 %1429, 1
  %bf.shl4212 = shl i16 %bf.value4211, 9
  %bf.clear4213 = and i16 %bf.load4210, -513
  %bf.set4214 = or i16 %bf.clear4213, %bf.shl4212
  store i16 %bf.set4214, i16* %1428, align 4
  %bf.result.cast4215 = zext i16 %bf.value4211 to i32
  %1430 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24216 = bitcast %union.rec* %1430 to %struct.closure_type*
  %ou44217 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24216, i32 0, i32 4
  %osave_style4218 = bitcast %union.FOURTH_UNION* %ou44217 to %struct.STYLE*
  %osu24219 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4218, i32 0, i32 1
  %ospace_gap4220 = bitcast %union.anon.10* %osu24219 to %struct.GAP*
  %1431 = bitcast %struct.GAP* %ospace_gap4220 to i16*
  %bf.load4221 = load i16, i16* %1431, align 4
  %bf.lshr4222 = lshr i16 %bf.load4221, 10
  %bf.clear4223 = and i16 %bf.lshr4222, 7
  %bf.cast4224 = zext i16 %bf.clear4223 to i32
  %1432 = load %union.rec*, %union.rec** %y, align 8
  %os24225 = bitcast %union.rec* %1432 to %struct.closure_type*
  %ou44226 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24225, i32 0, i32 4
  %osave_style4227 = bitcast %union.FOURTH_UNION* %ou44226 to %struct.STYLE*
  %osu24228 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4227, i32 0, i32 1
  %ospace_gap4229 = bitcast %union.anon.10* %osu24228 to %struct.GAP*
  %1433 = bitcast %struct.GAP* %ospace_gap4229 to i16*
  %1434 = trunc i32 %bf.cast4224 to i16
  %bf.load4230 = load i16, i16* %1433, align 4
  %bf.value4231 = and i16 %1434, 7
  %bf.shl4232 = shl i16 %bf.value4231, 10
  %bf.clear4233 = and i16 %bf.load4230, -7169
  %bf.set4234 = or i16 %bf.clear4233, %bf.shl4232
  store i16 %bf.set4234, i16* %1433, align 4
  %bf.result.cast4235 = zext i16 %bf.value4231 to i32
  %1435 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24236 = bitcast %union.rec* %1435 to %struct.closure_type*
  %ou44237 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24236, i32 0, i32 4
  %osave_style4238 = bitcast %union.FOURTH_UNION* %ou44237 to %struct.STYLE*
  %osu24239 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4238, i32 0, i32 1
  %ospace_gap4240 = bitcast %union.anon.10* %osu24239 to %struct.GAP*
  %1436 = bitcast %struct.GAP* %ospace_gap4240 to i16*
  %bf.load4241 = load i16, i16* %1436, align 4
  %bf.lshr4242 = lshr i16 %bf.load4241, 13
  %bf.cast4243 = zext i16 %bf.lshr4242 to i32
  %1437 = load %union.rec*, %union.rec** %y, align 8
  %os24244 = bitcast %union.rec* %1437 to %struct.closure_type*
  %ou44245 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24244, i32 0, i32 4
  %osave_style4246 = bitcast %union.FOURTH_UNION* %ou44245 to %struct.STYLE*
  %osu24247 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4246, i32 0, i32 1
  %ospace_gap4248 = bitcast %union.anon.10* %osu24247 to %struct.GAP*
  %1438 = bitcast %struct.GAP* %ospace_gap4248 to i16*
  %1439 = trunc i32 %bf.cast4243 to i16
  %bf.load4249 = load i16, i16* %1438, align 4
  %bf.value4250 = and i16 %1439, 7
  %bf.shl4251 = shl i16 %bf.value4250, 13
  %bf.clear4252 = and i16 %bf.load4249, 8191
  %bf.set4253 = or i16 %bf.clear4252, %bf.shl4251
  store i16 %bf.set4253, i16* %1438, align 4
  %bf.result.cast4254 = zext i16 %bf.value4250 to i32
  %1440 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24255 = bitcast %union.rec* %1440 to %struct.closure_type*
  %ou44256 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24255, i32 0, i32 4
  %osave_style4257 = bitcast %union.FOURTH_UNION* %ou44256 to %struct.STYLE*
  %osu24258 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4257, i32 0, i32 1
  %ospace_gap4259 = bitcast %union.anon.10* %osu24258 to %struct.GAP*
  %owidth4260 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap4259, i32 0, i32 1
  %1441 = load i16, i16* %owidth4260, align 2
  %1442 = load %union.rec*, %union.rec** %y, align 8
  %os24261 = bitcast %union.rec* %1442 to %struct.closure_type*
  %ou44262 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24261, i32 0, i32 4
  %osave_style4263 = bitcast %union.FOURTH_UNION* %ou44262 to %struct.STYLE*
  %osu24264 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4263, i32 0, i32 1
  %ospace_gap4265 = bitcast %union.anon.10* %osu24264 to %struct.GAP*
  %owidth4266 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap4265, i32 0, i32 1
  store i16 %1441, i16* %owidth4266, align 2
  %1443 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24267 = bitcast %union.rec* %1443 to %struct.closure_type*
  %ou44268 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24267, i32 0, i32 4
  %osave_style4269 = bitcast %union.FOURTH_UNION* %ou44268 to %struct.STYLE*
  %ofont4270 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4269, i32 0, i32 4
  %bf.load4271 = load i32, i32* %ofont4270, align 4
  %bf.clear4272 = and i32 %bf.load4271, 4095
  %1444 = load %union.rec*, %union.rec** %y, align 8
  %os24273 = bitcast %union.rec* %1444 to %struct.closure_type*
  %ou44274 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24273, i32 0, i32 4
  %osave_style4275 = bitcast %union.FOURTH_UNION* %ou44274 to %struct.STYLE*
  %ofont4276 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4275, i32 0, i32 4
  %bf.load4277 = load i32, i32* %ofont4276, align 4
  %bf.value4278 = and i32 %bf.clear4272, 4095
  %bf.clear4279 = and i32 %bf.load4277, -4096
  %bf.set4280 = or i32 %bf.clear4279, %bf.value4278
  store i32 %bf.set4280, i32* %ofont4276, align 4
  %1445 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24281 = bitcast %union.rec* %1445 to %struct.closure_type*
  %ou44282 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24281, i32 0, i32 4
  %osave_style4283 = bitcast %union.FOURTH_UNION* %ou44282 to %struct.STYLE*
  %ocolour4284 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4283, i32 0, i32 4
  %bf.load4285 = load i32, i32* %ocolour4284, align 4
  %bf.lshr4286 = lshr i32 %bf.load4285, 12
  %bf.clear4287 = and i32 %bf.lshr4286, 1023
  %1446 = load %union.rec*, %union.rec** %y, align 8
  %os24288 = bitcast %union.rec* %1446 to %struct.closure_type*
  %ou44289 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24288, i32 0, i32 4
  %osave_style4290 = bitcast %union.FOURTH_UNION* %ou44289 to %struct.STYLE*
  %ocolour4291 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4290, i32 0, i32 4
  %bf.load4292 = load i32, i32* %ocolour4291, align 4
  %bf.value4293 = and i32 %bf.clear4287, 1023
  %bf.shl4294 = shl i32 %bf.value4293, 12
  %bf.clear4295 = and i32 %bf.load4292, -4190209
  %bf.set4296 = or i32 %bf.clear4295, %bf.shl4294
  store i32 %bf.set4296, i32* %ocolour4291, align 4
  %1447 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24297 = bitcast %union.rec* %1447 to %struct.closure_type*
  %ou44298 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24297, i32 0, i32 4
  %osave_style4299 = bitcast %union.FOURTH_UNION* %ou44298 to %struct.STYLE*
  %ooutline4300 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4299, i32 0, i32 4
  %bf.load4301 = load i32, i32* %ooutline4300, align 4
  %bf.lshr4302 = lshr i32 %bf.load4301, 22
  %bf.clear4303 = and i32 %bf.lshr4302, 3
  %1448 = load %union.rec*, %union.rec** %y, align 8
  %os24304 = bitcast %union.rec* %1448 to %struct.closure_type*
  %ou44305 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24304, i32 0, i32 4
  %osave_style4306 = bitcast %union.FOURTH_UNION* %ou44305 to %struct.STYLE*
  %ooutline4307 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4306, i32 0, i32 4
  %bf.load4308 = load i32, i32* %ooutline4307, align 4
  %bf.value4309 = and i32 %bf.clear4303, 3
  %bf.shl4310 = shl i32 %bf.value4309, 22
  %bf.clear4311 = and i32 %bf.load4308, -12582913
  %bf.set4312 = or i32 %bf.clear4311, %bf.shl4310
  store i32 %bf.set4312, i32* %ooutline4307, align 4
  %1449 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24313 = bitcast %union.rec* %1449 to %struct.closure_type*
  %ou44314 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24313, i32 0, i32 4
  %osave_style4315 = bitcast %union.FOURTH_UNION* %ou44314 to %struct.STYLE*
  %olanguage4316 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4315, i32 0, i32 4
  %bf.load4317 = load i32, i32* %olanguage4316, align 4
  %bf.lshr4318 = lshr i32 %bf.load4317, 24
  %bf.clear4319 = and i32 %bf.lshr4318, 63
  %1450 = load %union.rec*, %union.rec** %y, align 8
  %os24320 = bitcast %union.rec* %1450 to %struct.closure_type*
  %ou44321 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24320, i32 0, i32 4
  %osave_style4322 = bitcast %union.FOURTH_UNION* %ou44321 to %struct.STYLE*
  %olanguage4323 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4322, i32 0, i32 4
  %bf.load4324 = load i32, i32* %olanguage4323, align 4
  %bf.value4325 = and i32 %bf.clear4319, 63
  %bf.shl4326 = shl i32 %bf.value4325, 24
  %bf.clear4327 = and i32 %bf.load4324, -1056964609
  %bf.set4328 = or i32 %bf.clear4327, %bf.shl4326
  store i32 %bf.set4328, i32* %olanguage4323, align 4
  %1451 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24329 = bitcast %union.rec* %1451 to %struct.closure_type*
  %ou44330 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24329, i32 0, i32 4
  %osave_style4331 = bitcast %union.FOURTH_UNION* %ou44330 to %struct.STYLE*
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4331, i32 0, i32 4
  %bf.load4332 = load i32, i32* %onobreaklast, align 4
  %bf.lshr4333 = lshr i32 %bf.load4332, 31
  %1452 = load %union.rec*, %union.rec** %y, align 8
  %os24334 = bitcast %union.rec* %1452 to %struct.closure_type*
  %ou44335 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24334, i32 0, i32 4
  %osave_style4336 = bitcast %union.FOURTH_UNION* %ou44335 to %struct.STYLE*
  %onobreaklast4337 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4336, i32 0, i32 4
  %bf.load4338 = load i32, i32* %onobreaklast4337, align 4
  %bf.value4339 = and i32 %bf.lshr4333, 1
  %bf.shl4340 = shl i32 %bf.value4339, 31
  %bf.clear4341 = and i32 %bf.load4338, 2147483647
  %bf.set4342 = or i32 %bf.clear4341, %bf.shl4340
  store i32 %bf.set4342, i32* %onobreaklast4337, align 4
  %1453 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24343 = bitcast %union.rec* %1453 to %struct.closure_type*
  %ou44344 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24343, i32 0, i32 4
  %osave_style4345 = bitcast %union.FOURTH_UNION* %ou44344 to %struct.STYLE*
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4345, i32 0, i32 4
  %bf.load4346 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr4347 = lshr i32 %bf.load4346, 30
  %bf.clear4348 = and i32 %bf.lshr4347, 1
  %1454 = load %union.rec*, %union.rec** %y, align 8
  %os24349 = bitcast %union.rec* %1454 to %struct.closure_type*
  %ou44350 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24349, i32 0, i32 4
  %osave_style4351 = bitcast %union.FOURTH_UNION* %ou44350 to %struct.STYLE*
  %onobreakfirst4352 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4351, i32 0, i32 4
  %bf.load4353 = load i32, i32* %onobreakfirst4352, align 4
  %bf.value4354 = and i32 %bf.clear4348, 1
  %bf.shl4355 = shl i32 %bf.value4354, 30
  %bf.clear4356 = and i32 %bf.load4353, -1073741825
  %bf.set4357 = or i32 %bf.clear4356, %bf.shl4355
  store i32 %bf.set4357, i32* %onobreakfirst4352, align 4
  %1455 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24358 = bitcast %union.rec* %1455 to %struct.closure_type*
  %ou44359 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24358, i32 0, i32 4
  %osave_style4360 = bitcast %union.FOURTH_UNION* %ou44359 to %struct.STYLE*
  %osu14361 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4360, i32 0, i32 0
  %oss14362 = bitcast %union.anon* %osu14361 to %struct.anon.9*
  %1456 = bitcast %struct.anon.9* %oss14362 to i8*
  %bf.load4363 = load i8, i8* %1456, align 4
  %bf.clear4364 = and i8 %bf.load4363, 1
  %bf.cast4365 = zext i8 %bf.clear4364 to i32
  %1457 = load %union.rec*, %union.rec** %y, align 8
  %os24366 = bitcast %union.rec* %1457 to %struct.closure_type*
  %ou44367 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24366, i32 0, i32 4
  %osave_style4368 = bitcast %union.FOURTH_UNION* %ou44367 to %struct.STYLE*
  %osu14369 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4368, i32 0, i32 0
  %oss14370 = bitcast %union.anon* %osu14369 to %struct.anon.9*
  %1458 = bitcast %struct.anon.9* %oss14370 to i8*
  %1459 = trunc i32 %bf.cast4365 to i8
  %bf.load4371 = load i8, i8* %1458, align 4
  %bf.value4372 = and i8 %1459, 1
  %bf.clear4373 = and i8 %bf.load4371, -2
  %bf.set4374 = or i8 %bf.clear4373, %bf.value4372
  store i8 %bf.set4374, i8* %1458, align 4
  %bf.result.cast4375 = zext i8 %bf.value4372 to i32
  %1460 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24376 = bitcast %union.rec* %1460 to %struct.closure_type*
  %ou44377 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24376, i32 0, i32 4
  %osave_style4378 = bitcast %union.FOURTH_UNION* %ou44377 to %struct.STYLE*
  %osu14379 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4378, i32 0, i32 0
  %oss14380 = bitcast %union.anon* %osu14379 to %struct.anon.9*
  %1461 = bitcast %struct.anon.9* %oss14380 to i8*
  %bf.load4381 = load i8, i8* %1461, align 4
  %bf.lshr4382 = lshr i8 %bf.load4381, 1
  %bf.clear4383 = and i8 %bf.lshr4382, 1
  %bf.cast4384 = zext i8 %bf.clear4383 to i32
  %1462 = load %union.rec*, %union.rec** %y, align 8
  %os24385 = bitcast %union.rec* %1462 to %struct.closure_type*
  %ou44386 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24385, i32 0, i32 4
  %osave_style4387 = bitcast %union.FOURTH_UNION* %ou44386 to %struct.STYLE*
  %osu14388 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4387, i32 0, i32 0
  %oss14389 = bitcast %union.anon* %osu14388 to %struct.anon.9*
  %1463 = bitcast %struct.anon.9* %oss14389 to i8*
  %1464 = trunc i32 %bf.cast4384 to i8
  %bf.load4390 = load i8, i8* %1463, align 4
  %bf.value4391 = and i8 %1464, 1
  %bf.shl4392 = shl i8 %bf.value4391, 1
  %bf.clear4393 = and i8 %bf.load4390, -3
  %bf.set4394 = or i8 %bf.clear4393, %bf.shl4392
  store i8 %bf.set4394, i8* %1463, align 4
  %bf.result.cast4395 = zext i8 %bf.value4391 to i32
  %1465 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24396 = bitcast %union.rec* %1465 to %struct.closure_type*
  %ou44397 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24396, i32 0, i32 4
  %osave_style4398 = bitcast %union.FOURTH_UNION* %ou44397 to %struct.STYLE*
  %osu14399 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4398, i32 0, i32 0
  %oss14400 = bitcast %union.anon* %osu14399 to %struct.anon.9*
  %1466 = bitcast %struct.anon.9* %oss14400 to i8*
  %bf.load4401 = load i8, i8* %1466, align 4
  %bf.lshr4402 = lshr i8 %bf.load4401, 2
  %bf.clear4403 = and i8 %bf.lshr4402, 1
  %bf.cast4404 = zext i8 %bf.clear4403 to i32
  %1467 = load %union.rec*, %union.rec** %y, align 8
  %os24405 = bitcast %union.rec* %1467 to %struct.closure_type*
  %ou44406 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24405, i32 0, i32 4
  %osave_style4407 = bitcast %union.FOURTH_UNION* %ou44406 to %struct.STYLE*
  %osu14408 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4407, i32 0, i32 0
  %oss14409 = bitcast %union.anon* %osu14408 to %struct.anon.9*
  %1468 = bitcast %struct.anon.9* %oss14409 to i8*
  %1469 = trunc i32 %bf.cast4404 to i8
  %bf.load4410 = load i8, i8* %1468, align 4
  %bf.value4411 = and i8 %1469, 1
  %bf.shl4412 = shl i8 %bf.value4411, 2
  %bf.clear4413 = and i8 %bf.load4410, -5
  %bf.set4414 = or i8 %bf.clear4413, %bf.shl4412
  store i8 %bf.set4414, i8* %1468, align 4
  %bf.result.cast4415 = zext i8 %bf.value4411 to i32
  %1470 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24416 = bitcast %union.rec* %1470 to %struct.closure_type*
  %ou44417 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24416, i32 0, i32 4
  %osave_style4418 = bitcast %union.FOURTH_UNION* %ou44417 to %struct.STYLE*
  %osu14419 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4418, i32 0, i32 0
  %oss14420 = bitcast %union.anon* %osu14419 to %struct.anon.9*
  %1471 = bitcast %struct.anon.9* %oss14420 to i8*
  %bf.load4421 = load i8, i8* %1471, align 4
  %bf.lshr4422 = lshr i8 %bf.load4421, 4
  %bf.clear4423 = and i8 %bf.lshr4422, 7
  %bf.cast4424 = zext i8 %bf.clear4423 to i32
  %1472 = load %union.rec*, %union.rec** %y, align 8
  %os24425 = bitcast %union.rec* %1472 to %struct.closure_type*
  %ou44426 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24425, i32 0, i32 4
  %osave_style4427 = bitcast %union.FOURTH_UNION* %ou44426 to %struct.STYLE*
  %osu14428 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4427, i32 0, i32 0
  %oss14429 = bitcast %union.anon* %osu14428 to %struct.anon.9*
  %1473 = bitcast %struct.anon.9* %oss14429 to i8*
  %1474 = trunc i32 %bf.cast4424 to i8
  %bf.load4430 = load i8, i8* %1473, align 4
  %bf.value4431 = and i8 %1474, 7
  %bf.shl4432 = shl i8 %bf.value4431, 4
  %bf.clear4433 = and i8 %bf.load4430, -113
  %bf.set4434 = or i8 %bf.clear4433, %bf.shl4432
  store i8 %bf.set4434, i8* %1473, align 4
  %bf.result.cast4435 = zext i8 %bf.value4431 to i32
  %1475 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24436 = bitcast %union.rec* %1475 to %struct.closure_type*
  %ou44437 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24436, i32 0, i32 4
  %osave_style4438 = bitcast %union.FOURTH_UNION* %ou44437 to %struct.STYLE*
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4438, i32 0, i32 2
  %1476 = load i16, i16* %oyunit, align 2
  %1477 = load %union.rec*, %union.rec** %y, align 8
  %os24439 = bitcast %union.rec* %1477 to %struct.closure_type*
  %ou44440 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24439, i32 0, i32 4
  %osave_style4441 = bitcast %union.FOURTH_UNION* %ou44440 to %struct.STYLE*
  %oyunit4442 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4441, i32 0, i32 2
  store i16 %1476, i16* %oyunit4442, align 2
  %1478 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24443 = bitcast %union.rec* %1478 to %struct.closure_type*
  %ou44444 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24443, i32 0, i32 4
  %osave_style4445 = bitcast %union.FOURTH_UNION* %ou44444 to %struct.STYLE*
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4445, i32 0, i32 3
  %1479 = load i16, i16* %ozunit, align 2
  %1480 = load %union.rec*, %union.rec** %y, align 8
  %os24446 = bitcast %union.rec* %1480 to %struct.closure_type*
  %ou44447 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24446, i32 0, i32 4
  %osave_style4448 = bitcast %union.FOURTH_UNION* %ou44447 to %struct.STYLE*
  %ozunit4449 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4448, i32 0, i32 3
  store i16 %1479, i16* %ozunit4449, align 2
  %1481 = load %union.rec*, %union.rec** %res, align 8
  %os14450 = bitcast %union.rec* %1481 to %struct.word_type*
  %olist4451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14450, i32 0, i32 0
  %arrayidx4452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4451, i32 0, i64 0
  %osucc4453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4452, i32 0, i32 1
  %1482 = load %union.rec*, %union.rec** %osucc4453, align 8
  %1483 = load %union.rec*, %union.rec** %res, align 8
  %cmp4454 = icmp ne %union.rec* %1482, %1483
  br i1 %cmp4454, label %land.lhs.true.4456, label %if.end.4489

land.lhs.true.4456:                               ; preds = %if.end.3896
  %1484 = load %union.rec*, %union.rec** %y, align 8
  %os24457 = bitcast %union.rec* %1484 to %struct.closure_type*
  %ou44458 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24457, i32 0, i32 4
  %osave_style4459 = bitcast %union.FOURTH_UNION* %ou44458 to %struct.STYLE*
  %osu24460 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4459, i32 0, i32 1
  %oss24461 = bitcast %union.anon.10* %osu24460 to %struct.anon.11*
  %1485 = bitcast %struct.anon.11* %oss24461 to i8*
  %bf.load4462 = load i8, i8* %1485, align 4
  %bf.lshr4463 = lshr i8 %bf.load4462, 4
  %bf.clear4464 = and i8 %bf.lshr4463, 7
  %bf.cast4465 = zext i8 %bf.clear4464 to i32
  %cmp4466 = icmp eq i32 %bf.cast4465, 1
  br i1 %cmp4466, label %if.then.4480, label %lor.lhs.false.4468

lor.lhs.false.4468:                               ; preds = %land.lhs.true.4456
  %1486 = load %union.rec*, %union.rec** %y, align 8
  %os24469 = bitcast %union.rec* %1486 to %struct.closure_type*
  %ou44470 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24469, i32 0, i32 4
  %osave_style4471 = bitcast %union.FOURTH_UNION* %ou44470 to %struct.STYLE*
  %osu24472 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4471, i32 0, i32 1
  %oss24473 = bitcast %union.anon.10* %osu24472 to %struct.anon.11*
  %1487 = bitcast %struct.anon.11* %oss24473 to i8*
  %bf.load4474 = load i8, i8* %1487, align 4
  %bf.lshr4475 = lshr i8 %bf.load4474, 4
  %bf.clear4476 = and i8 %bf.lshr4475, 7
  %bf.cast4477 = zext i8 %bf.clear4476 to i32
  %cmp4478 = icmp eq i32 %bf.cast4477, 2
  br i1 %cmp4478, label %if.then.4480, label %if.end.4489

if.then.4480:                                     ; preds = %lor.lhs.false.4468, %land.lhs.true.4456
  %1488 = load %union.rec*, %union.rec** %y, align 8
  %os24481 = bitcast %union.rec* %1488 to %struct.closure_type*
  %ou44482 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24481, i32 0, i32 4
  %osave_style4483 = bitcast %union.FOURTH_UNION* %ou44482 to %struct.STYLE*
  %osu24484 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4483, i32 0, i32 1
  %oss24485 = bitcast %union.anon.10* %osu24484 to %struct.anon.11*
  %1489 = bitcast %struct.anon.11* %oss24485 to i8*
  %bf.load4486 = load i8, i8* %1489, align 4
  %bf.clear4487 = and i8 %bf.load4486, -113
  %bf.set4488 = or i8 %bf.clear4487, 112
  store i8 %bf.set4488, i8* %1489, align 4
  br label %if.end.4489

if.end.4489:                                      ; preds = %if.then.4480, %lor.lhs.false.4468, %if.end.3896
  %1490 = load %union.rec*, %union.rec** %y, align 8
  %os14490 = bitcast %union.rec* %1490 to %struct.word_type*
  %ou34491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14490, i32 0, i32 3
  %os314492 = bitcast %union.THIRD_UNION* %ou34491 to %struct.anon.6*
  %oback4493 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314492, i32 0, i32 0
  %arrayidx4494 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4493, i32 0, i64 0
  store i32 0, i32* %arrayidx4494, align 4
  %1491 = load i32, i32* %max_width, align 4
  %1492 = load %union.rec*, %union.rec** %y, align 8
  %os14495 = bitcast %union.rec* %1492 to %struct.word_type*
  %ou34496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14495, i32 0, i32 3
  %os314497 = bitcast %union.THIRD_UNION* %ou34496 to %struct.anon.6*
  %ofwd4498 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314497, i32 0, i32 1
  %arrayidx4499 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4498, i32 0, i64 0
  store i32 %1491, i32* %arrayidx4499, align 4
  %1493 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24500 = bitcast %union.rec* %1493 to %struct.closure_type*
  %ou44501 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24500, i32 0, i32 4
  %osave_style4502 = bitcast %union.FOURTH_UNION* %ou44501 to %struct.STYLE*
  %osu24503 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4502, i32 0, i32 1
  %oss24504 = bitcast %union.anon.10* %osu24503 to %struct.anon.11*
  %1494 = bitcast %struct.anon.11* %oss24504 to i8*
  %bf.load4505 = load i8, i8* %1494, align 4
  %bf.lshr4506 = lshr i8 %bf.load4505, 4
  %bf.clear4507 = and i8 %bf.lshr4506, 7
  %bf.cast4508 = zext i8 %bf.clear4507 to i32
  %cmp4509 = icmp eq i32 %bf.cast4508, 2
  br i1 %cmp4509, label %if.then.4523, label %lor.lhs.false.4511

lor.lhs.false.4511:                               ; preds = %if.end.4489
  %1495 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24512 = bitcast %union.rec* %1495 to %struct.closure_type*
  %ou44513 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24512, i32 0, i32 4
  %osave_style4514 = bitcast %union.FOURTH_UNION* %ou44513 to %struct.STYLE*
  %osu24515 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4514, i32 0, i32 1
  %oss24516 = bitcast %union.anon.10* %osu24515 to %struct.anon.11*
  %1496 = bitcast %struct.anon.11* %oss24516 to i8*
  %bf.load4517 = load i8, i8* %1496, align 4
  %bf.lshr4518 = lshr i8 %bf.load4517, 4
  %bf.clear4519 = and i8 %bf.lshr4518, 7
  %bf.cast4520 = zext i8 %bf.clear4519 to i32
  %cmp4521 = icmp eq i32 %bf.cast4520, 3
  br i1 %cmp4521, label %if.then.4523, label %if.end.5105

if.then.4523:                                     ; preds = %lor.lhs.false.4511, %if.end.4489
  %1497 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14528 = bitcast %union.rec* %1497 to %struct.word_type*
  %ou14529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14528, i32 0, i32 1
  %ofpos4530 = bitcast %union.FIRST_UNION* %ou14529 to %struct.FILE_POS*
  %call4531 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %ofpos4530)
  store %union.rec* %call4531, %union.rec** %t1, align 8
  %1498 = load %union.rec*, %union.rec** %t1, align 8
  %os14532 = bitcast %union.rec* %1498 to %struct.word_type*
  %ou34533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14532, i32 0, i32 3
  %os314534 = bitcast %union.THIRD_UNION* %ou34533 to %struct.anon.6*
  %ofwd4535 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314534, i32 0, i32 1
  %arrayidx4536 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4535, i32 0, i64 1
  store i32 0, i32* %arrayidx4536, align 4
  %1499 = load %union.rec*, %union.rec** %t1, align 8
  %os14537 = bitcast %union.rec* %1499 to %struct.word_type*
  %ou34538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14537, i32 0, i32 3
  %os314539 = bitcast %union.THIRD_UNION* %ou34538 to %struct.anon.6*
  %oback4540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314539, i32 0, i32 0
  %arrayidx4541 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4540, i32 0, i64 1
  store i32 0, i32* %arrayidx4541, align 4
  %1500 = load %union.rec*, %union.rec** %t1, align 8
  %os14542 = bitcast %union.rec* %1500 to %struct.word_type*
  %ou34543 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14542, i32 0, i32 3
  %os314544 = bitcast %union.THIRD_UNION* %ou34543 to %struct.anon.6*
  %ofwd4545 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314544, i32 0, i32 1
  %arrayidx4546 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4545, i32 0, i64 0
  store i32 0, i32* %arrayidx4546, align 4
  %1501 = load %union.rec*, %union.rec** %t1, align 8
  %os14547 = bitcast %union.rec* %1501 to %struct.word_type*
  %ou34548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14547, i32 0, i32 3
  %os314549 = bitcast %union.THIRD_UNION* %ou34548 to %struct.anon.6*
  %oback4550 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314549, i32 0, i32 0
  %arrayidx4551 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4550, i32 0, i64 0
  store i32 0, i32* %arrayidx4551, align 4
  %1502 = load %union.rec*, %union.rec** %t1, align 8
  %os14552 = bitcast %union.rec* %1502 to %struct.word_type*
  %ou24553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14552, i32 0, i32 2
  %os224554 = bitcast %union.SECOND_UNION* %ou24553 to %struct.anon.1*
  %1503 = bitcast %struct.anon.1* %os224554 to i32*
  %bf.load4555 = load i32, i32* %1503, align 4
  %bf.clear4556 = and i32 %bf.load4555, -4096
  store i32 %bf.clear4556, i32* %1503, align 4
  %1504 = load %union.rec*, %union.rec** %t1, align 8
  %os14557 = bitcast %union.rec* %1504 to %struct.word_type*
  %ou24558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14557, i32 0, i32 2
  %os224559 = bitcast %union.SECOND_UNION* %ou24558 to %struct.anon.1*
  %1505 = bitcast %struct.anon.1* %os224559 to i32*
  %bf.load4560 = load i32, i32* %1505, align 4
  %bf.clear4561 = and i32 %bf.load4560, -4190209
  store i32 %bf.clear4561, i32* %1505, align 4
  %1506 = load %union.rec*, %union.rec** %t1, align 8
  %os14562 = bitcast %union.rec* %1506 to %struct.word_type*
  %ou24563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14562, i32 0, i32 2
  %os224564 = bitcast %union.SECOND_UNION* %ou24563 to %struct.anon.1*
  %1507 = bitcast %struct.anon.1* %os224564 to i32*
  %bf.load4565 = load i32, i32* %1507, align 4
  %bf.clear4566 = and i32 %bf.load4565, -4194305
  store i32 %bf.clear4566, i32* %1507, align 4
  %1508 = load %union.rec*, %union.rec** %t1, align 8
  %os14567 = bitcast %union.rec* %1508 to %struct.word_type*
  %ou24568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14567, i32 0, i32 2
  %os224569 = bitcast %union.SECOND_UNION* %ou24568 to %struct.anon.1*
  %1509 = bitcast %struct.anon.1* %os224569 to i32*
  %bf.load4570 = load i32, i32* %1509, align 4
  %bf.clear4571 = and i32 %bf.load4570, -528482305
  store i32 %bf.clear4571, i32* %1509, align 4
  %1510 = load %union.rec*, %union.rec** %t1, align 8
  %os14572 = bitcast %union.rec* %1510 to %struct.word_type*
  %ou24573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14572, i32 0, i32 2
  %os224574 = bitcast %union.SECOND_UNION* %ou24573 to %struct.anon.1*
  %1511 = bitcast %struct.anon.1* %os224574 to i32*
  %bf.load4575 = load i32, i32* %1511, align 4
  %bf.clear4576 = and i32 %bf.load4575, 2147483647
  store i32 %bf.clear4576, i32* %1511, align 4
  %1512 = load %union.rec*, %union.rec** %t1, align 8
  %os14577 = bitcast %union.rec* %1512 to %struct.word_type*
  %ou24578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14577, i32 0, i32 2
  %os224579 = bitcast %union.SECOND_UNION* %ou24578 to %struct.anon.1*
  %1513 = bitcast %struct.anon.1* %os224579 to i32*
  %bf.load4580 = load i32, i32* %1513, align 4
  %bf.clear4581 = and i32 %bf.load4580, -1610612737
  %bf.set4582 = or i32 %bf.clear4581, 536870912
  store i32 %bf.set4582, i32* %1513, align 4
  %1514 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %conv4583 = zext i8 %1514 to i32
  store i32 %conv4583, i32* @zz_size, align 4
  %conv4584 = sext i32 %conv4583 to i64
  %cmp4585 = icmp uge i64 %conv4584, 265
  br i1 %cmp4585, label %if.then.4587, label %if.else.4589

if.then.4587:                                     ; preds = %if.then.4523
  %1515 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4588 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1515)
  br label %if.end.4606

if.else.4589:                                     ; preds = %if.then.4523
  %1516 = load i32, i32* @zz_size, align 4
  %idxprom4590 = sext i32 %1516 to i64
  %arrayidx4591 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4590
  %1517 = load %union.rec*, %union.rec** %arrayidx4591, align 8
  %cmp4592 = icmp eq %union.rec* %1517, null
  br i1 %cmp4592, label %if.then.4594, label %if.else.4596

if.then.4594:                                     ; preds = %if.else.4589
  %1518 = load i32, i32* @zz_size, align 4
  %1519 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4595 = call %union.rec* @GetMemory(i32 %1518, %struct.FILE_POS* %1519)
  store %union.rec* %call4595, %union.rec** @zz_hold, align 8
  br label %if.end.4605

if.else.4596:                                     ; preds = %if.else.4589
  %1520 = load i32, i32* @zz_size, align 4
  %idxprom4597 = sext i32 %1520 to i64
  %arrayidx4598 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4597
  %1521 = load %union.rec*, %union.rec** %arrayidx4598, align 8
  store %union.rec* %1521, %union.rec** @zz_hold, align 8
  store %union.rec* %1521, %union.rec** @zz_hold, align 8
  %1522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14599 = bitcast %union.rec* %1522 to %struct.word_type*
  %olist4600 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14599, i32 0, i32 0
  %arrayidx4601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4600, i32 0, i64 0
  %opred4602 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4601, i32 0, i32 0
  %1523 = load %union.rec*, %union.rec** %opred4602, align 8
  %1524 = load i32, i32* @zz_size, align 4
  %idxprom4603 = sext i32 %1524 to i64
  %arrayidx4604 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4603
  store %union.rec* %1523, %union.rec** %arrayidx4604, align 8
  br label %if.end.4605

if.end.4605:                                      ; preds = %if.else.4596, %if.then.4594
  br label %if.end.4606

if.end.4606:                                      ; preds = %if.end.4605, %if.then.4587
  %1525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14607 = bitcast %union.rec* %1525 to %struct.word_type*
  %ou14608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14607, i32 0, i32 1
  %os114609 = bitcast %union.FIRST_UNION* %ou14608 to %struct.anon*
  %otype4610 = getelementptr inbounds %struct.anon, %struct.anon* %os114609, i32 0, i32 0
  store i8 26, i8* %otype4610, align 1
  %1526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14611 = bitcast %union.rec* %1527 to %struct.word_type*
  %olist4612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14611, i32 0, i32 0
  %arrayidx4613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4612, i32 0, i64 1
  %osucc4614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4613, i32 0, i32 1
  store %union.rec* %1526, %union.rec** %osucc4614, align 8
  %1528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14615 = bitcast %union.rec* %1528 to %struct.word_type*
  %olist4616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14615, i32 0, i32 0
  %arrayidx4617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4616, i32 0, i64 1
  %opred4618 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4617, i32 0, i32 0
  store %union.rec* %1526, %union.rec** %opred4618, align 8
  %1529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14619 = bitcast %union.rec* %1529 to %struct.word_type*
  %olist4620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14619, i32 0, i32 0
  %arrayidx4621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4620, i32 0, i64 0
  %osucc4622 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4621, i32 0, i32 1
  store %union.rec* %1526, %union.rec** %osucc4622, align 8
  %1530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14623 = bitcast %union.rec* %1530 to %struct.word_type*
  %olist4624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14623, i32 0, i32 0
  %arrayidx4625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4624, i32 0, i64 0
  %opred4626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4625, i32 0, i32 0
  store %union.rec* %1526, %union.rec** %opred4626, align 8
  store %union.rec* %1526, %union.rec** %t2, align 8
  %1531 = load %union.rec*, %union.rec** %t2, align 8
  %os24627 = bitcast %union.rec* %1531 to %struct.closure_type*
  %ou44628 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24627, i32 0, i32 4
  %oconstraint4629 = bitcast %union.FOURTH_UNION* %ou44628 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint4629, i32 0, i32 0
  store i32 8388607, i32* %obc, align 4
  %1532 = load i32, i32* %outdent_margin, align 4
  %1533 = load %union.rec*, %union.rec** %t2, align 8
  %os24630 = bitcast %union.rec* %1533 to %struct.closure_type*
  %ou44631 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24630, i32 0, i32 4
  %oconstraint4632 = bitcast %union.FOURTH_UNION* %ou44631 to %struct.CONSTRAINT*
  %obfc4633 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint4632, i32 0, i32 1
  store i32 %1532, i32* %obfc4633, align 4
  %1534 = load %union.rec*, %union.rec** %t2, align 8
  %os24634 = bitcast %union.rec* %1534 to %struct.closure_type*
  %ou44635 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24634, i32 0, i32 4
  %oconstraint4636 = bitcast %union.FOURTH_UNION* %ou44635 to %struct.CONSTRAINT*
  %ofc4637 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint4636, i32 0, i32 2
  store i32 8388607, i32* %ofc4637, align 4
  %1535 = load %union.rec*, %union.rec** %t2, align 8
  %os14638 = bitcast %union.rec* %1535 to %struct.word_type*
  %ou34639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14638, i32 0, i32 3
  %os314640 = bitcast %union.THIRD_UNION* %ou34639 to %struct.anon.6*
  %oback4641 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314640, i32 0, i32 0
  %arrayidx4642 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4641, i32 0, i64 0
  store i32 0, i32* %arrayidx4642, align 4
  %1536 = load i32, i32* %outdent_margin, align 4
  %1537 = load %union.rec*, %union.rec** %t2, align 8
  %os14643 = bitcast %union.rec* %1537 to %struct.word_type*
  %ou34644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14643, i32 0, i32 3
  %os314645 = bitcast %union.THIRD_UNION* %ou34644 to %struct.anon.6*
  %ofwd4646 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314645, i32 0, i32 1
  %arrayidx4647 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4646, i32 0, i64 0
  store i32 %1536, i32* %arrayidx4647, align 4
  %1538 = load %union.rec*, %union.rec** %t2, align 8
  %os14648 = bitcast %union.rec* %1538 to %struct.word_type*
  %ou24649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14648, i32 0, i32 2
  %os224650 = bitcast %union.SECOND_UNION* %ou24649 to %struct.anon.1*
  %1539 = bitcast %struct.anon.1* %os224650 to i32*
  %bf.load4651 = load i32, i32* %1539, align 4
  %bf.clear4652 = and i32 %bf.load4651, -1610612737
  %bf.set4653 = or i32 %bf.clear4652, 536870912
  store i32 %bf.set4653, i32* %1539, align 4
  %1540 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4654 = zext i8 %1540 to i32
  store i32 %conv4654, i32* @zz_size, align 4
  %conv4655 = sext i32 %conv4654 to i64
  %cmp4656 = icmp uge i64 %conv4655, 265
  br i1 %cmp4656, label %if.then.4658, label %if.else.4660

if.then.4658:                                     ; preds = %if.end.4606
  %1541 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4659 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1541)
  br label %if.end.4677

if.else.4660:                                     ; preds = %if.end.4606
  %1542 = load i32, i32* @zz_size, align 4
  %idxprom4661 = sext i32 %1542 to i64
  %arrayidx4662 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4661
  %1543 = load %union.rec*, %union.rec** %arrayidx4662, align 8
  %cmp4663 = icmp eq %union.rec* %1543, null
  br i1 %cmp4663, label %if.then.4665, label %if.else.4667

if.then.4665:                                     ; preds = %if.else.4660
  %1544 = load i32, i32* @zz_size, align 4
  %1545 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4666 = call %union.rec* @GetMemory(i32 %1544, %struct.FILE_POS* %1545)
  store %union.rec* %call4666, %union.rec** @zz_hold, align 8
  br label %if.end.4676

if.else.4667:                                     ; preds = %if.else.4660
  %1546 = load i32, i32* @zz_size, align 4
  %idxprom4668 = sext i32 %1546 to i64
  %arrayidx4669 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4668
  %1547 = load %union.rec*, %union.rec** %arrayidx4669, align 8
  store %union.rec* %1547, %union.rec** @zz_hold, align 8
  store %union.rec* %1547, %union.rec** @zz_hold, align 8
  %1548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14670 = bitcast %union.rec* %1548 to %struct.word_type*
  %olist4671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14670, i32 0, i32 0
  %arrayidx4672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4671, i32 0, i64 0
  %opred4673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4672, i32 0, i32 0
  %1549 = load %union.rec*, %union.rec** %opred4673, align 8
  %1550 = load i32, i32* @zz_size, align 4
  %idxprom4674 = sext i32 %1550 to i64
  %arrayidx4675 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4674
  store %union.rec* %1549, %union.rec** %arrayidx4675, align 8
  br label %if.end.4676

if.end.4676:                                      ; preds = %if.else.4667, %if.then.4665
  br label %if.end.4677

if.end.4677:                                      ; preds = %if.end.4676, %if.then.4658
  %1551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14678 = bitcast %union.rec* %1551 to %struct.word_type*
  %ou14679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14678, i32 0, i32 1
  %os114680 = bitcast %union.FIRST_UNION* %ou14679 to %struct.anon*
  %otype4681 = getelementptr inbounds %struct.anon, %struct.anon* %os114680, i32 0, i32 0
  store i8 0, i8* %otype4681, align 1
  %1552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14682 = bitcast %union.rec* %1553 to %struct.word_type*
  %olist4683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14682, i32 0, i32 0
  %arrayidx4684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4683, i32 0, i64 1
  %osucc4685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4684, i32 0, i32 1
  store %union.rec* %1552, %union.rec** %osucc4685, align 8
  %1554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14686 = bitcast %union.rec* %1554 to %struct.word_type*
  %olist4687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14686, i32 0, i32 0
  %arrayidx4688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4687, i32 0, i64 1
  %opred4689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4688, i32 0, i32 0
  store %union.rec* %1552, %union.rec** %opred4689, align 8
  %1555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14690 = bitcast %union.rec* %1555 to %struct.word_type*
  %olist4691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14690, i32 0, i32 0
  %arrayidx4692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4691, i32 0, i64 0
  %osucc4693 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4692, i32 0, i32 1
  store %union.rec* %1552, %union.rec** %osucc4693, align 8
  %1556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14694 = bitcast %union.rec* %1556 to %struct.word_type*
  %olist4695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14694, i32 0, i32 0
  %arrayidx4696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4695, i32 0, i64 0
  %opred4697 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4696, i32 0, i32 0
  store %union.rec* %1552, %union.rec** %opred4697, align 8
  store %union.rec* %1552, %union.rec** @xx_link, align 8
  %1557 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1557, %union.rec** @zz_res, align 8
  %1558 = load %union.rec*, %union.rec** %t2, align 8
  store %union.rec* %1558, %union.rec** @zz_hold, align 8
  %1559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4698 = icmp eq %union.rec* %1559, null
  br i1 %cmp4698, label %cond.true.4700, label %cond.false.4701

cond.true.4700:                                   ; preds = %if.end.4677
  %1560 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4736

cond.false.4701:                                  ; preds = %if.end.4677
  %1561 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4702 = icmp eq %union.rec* %1561, null
  br i1 %cmp4702, label %cond.true.4704, label %cond.false.4705

cond.true.4704:                                   ; preds = %cond.false.4701
  %1562 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4734

cond.false.4705:                                  ; preds = %cond.false.4701
  %1563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14706 = bitcast %union.rec* %1563 to %struct.word_type*
  %olist4707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14706, i32 0, i32 0
  %arrayidx4708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4707, i32 0, i64 0
  %opred4709 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4708, i32 0, i32 0
  %1564 = load %union.rec*, %union.rec** %opred4709, align 8
  store %union.rec* %1564, %union.rec** @zz_tmp, align 8
  %1565 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14710 = bitcast %union.rec* %1565 to %struct.word_type*
  %olist4711 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14710, i32 0, i32 0
  %arrayidx4712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4711, i32 0, i64 0
  %opred4713 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4712, i32 0, i32 0
  %1566 = load %union.rec*, %union.rec** %opred4713, align 8
  %1567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14714 = bitcast %union.rec* %1567 to %struct.word_type*
  %olist4715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14714, i32 0, i32 0
  %arrayidx4716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4715, i32 0, i64 0
  %opred4717 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4716, i32 0, i32 0
  store %union.rec* %1566, %union.rec** %opred4717, align 8
  %1568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1569 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14718 = bitcast %union.rec* %1569 to %struct.word_type*
  %olist4719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14718, i32 0, i32 0
  %arrayidx4720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4719, i32 0, i64 0
  %opred4721 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4720, i32 0, i32 0
  %1570 = load %union.rec*, %union.rec** %opred4721, align 8
  %os14722 = bitcast %union.rec* %1570 to %struct.word_type*
  %olist4723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14722, i32 0, i32 0
  %arrayidx4724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4723, i32 0, i64 0
  %osucc4725 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4724, i32 0, i32 1
  store %union.rec* %1568, %union.rec** %osucc4725, align 8
  %1571 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1572 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14726 = bitcast %union.rec* %1572 to %struct.word_type*
  %olist4727 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14726, i32 0, i32 0
  %arrayidx4728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4727, i32 0, i64 0
  %opred4729 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4728, i32 0, i32 0
  store %union.rec* %1571, %union.rec** %opred4729, align 8
  %1573 = load %union.rec*, %union.rec** @zz_res, align 8
  %1574 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14730 = bitcast %union.rec* %1574 to %struct.word_type*
  %olist4731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14730, i32 0, i32 0
  %arrayidx4732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4731, i32 0, i64 0
  %osucc4733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4732, i32 0, i32 1
  store %union.rec* %1573, %union.rec** %osucc4733, align 8
  br label %cond.end.4734

cond.end.4734:                                    ; preds = %cond.false.4705, %cond.true.4704
  %cond4735 = phi %union.rec* [ %1562, %cond.true.4704 ], [ %1573, %cond.false.4705 ]
  br label %cond.end.4736

cond.end.4736:                                    ; preds = %cond.end.4734, %cond.true.4700
  %cond4737 = phi %union.rec* [ %1560, %cond.true.4700 ], [ %cond4735, %cond.end.4734 ]
  %1575 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1575, %union.rec** @zz_res, align 8
  %1576 = load %union.rec*, %union.rec** %t1, align 8
  store %union.rec* %1576, %union.rec** @zz_hold, align 8
  %1577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4738 = icmp eq %union.rec* %1577, null
  br i1 %cmp4738, label %cond.true.4740, label %cond.false.4741

cond.true.4740:                                   ; preds = %cond.end.4736
  %1578 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4776

cond.false.4741:                                  ; preds = %cond.end.4736
  %1579 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4742 = icmp eq %union.rec* %1579, null
  br i1 %cmp4742, label %cond.true.4744, label %cond.false.4745

cond.true.4744:                                   ; preds = %cond.false.4741
  %1580 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4774

cond.false.4745:                                  ; preds = %cond.false.4741
  %1581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14746 = bitcast %union.rec* %1581 to %struct.word_type*
  %olist4747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14746, i32 0, i32 0
  %arrayidx4748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4747, i32 0, i64 1
  %opred4749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4748, i32 0, i32 0
  %1582 = load %union.rec*, %union.rec** %opred4749, align 8
  store %union.rec* %1582, %union.rec** @zz_tmp, align 8
  %1583 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14750 = bitcast %union.rec* %1583 to %struct.word_type*
  %olist4751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14750, i32 0, i32 0
  %arrayidx4752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4751, i32 0, i64 1
  %opred4753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4752, i32 0, i32 0
  %1584 = load %union.rec*, %union.rec** %opred4753, align 8
  %1585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14754 = bitcast %union.rec* %1585 to %struct.word_type*
  %olist4755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14754, i32 0, i32 0
  %arrayidx4756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4755, i32 0, i64 1
  %opred4757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4756, i32 0, i32 0
  store %union.rec* %1584, %union.rec** %opred4757, align 8
  %1586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1587 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14758 = bitcast %union.rec* %1587 to %struct.word_type*
  %olist4759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14758, i32 0, i32 0
  %arrayidx4760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4759, i32 0, i64 1
  %opred4761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4760, i32 0, i32 0
  %1588 = load %union.rec*, %union.rec** %opred4761, align 8
  %os14762 = bitcast %union.rec* %1588 to %struct.word_type*
  %olist4763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14762, i32 0, i32 0
  %arrayidx4764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4763, i32 0, i64 1
  %osucc4765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4764, i32 0, i32 1
  store %union.rec* %1586, %union.rec** %osucc4765, align 8
  %1589 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1590 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14766 = bitcast %union.rec* %1590 to %struct.word_type*
  %olist4767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14766, i32 0, i32 0
  %arrayidx4768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4767, i32 0, i64 1
  %opred4769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4768, i32 0, i32 0
  store %union.rec* %1589, %union.rec** %opred4769, align 8
  %1591 = load %union.rec*, %union.rec** @zz_res, align 8
  %1592 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14770 = bitcast %union.rec* %1592 to %struct.word_type*
  %olist4771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14770, i32 0, i32 0
  %arrayidx4772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4771, i32 0, i64 1
  %osucc4773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4772, i32 0, i32 1
  store %union.rec* %1591, %union.rec** %osucc4773, align 8
  br label %cond.end.4774

cond.end.4774:                                    ; preds = %cond.false.4745, %cond.true.4744
  %cond4775 = phi %union.rec* [ %1580, %cond.true.4744 ], [ %1591, %cond.false.4745 ]
  br label %cond.end.4776

cond.end.4776:                                    ; preds = %cond.end.4774, %cond.true.4740
  %cond4777 = phi %union.rec* [ %1578, %cond.true.4740 ], [ %cond4775, %cond.end.4774 ]
  %1593 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4778 = zext i8 %1593 to i32
  store i32 %conv4778, i32* @zz_size, align 4
  %conv4779 = sext i32 %conv4778 to i64
  %cmp4780 = icmp uge i64 %conv4779, 265
  br i1 %cmp4780, label %if.then.4782, label %if.else.4784

if.then.4782:                                     ; preds = %cond.end.4776
  %1594 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4783 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1594)
  br label %if.end.4801

if.else.4784:                                     ; preds = %cond.end.4776
  %1595 = load i32, i32* @zz_size, align 4
  %idxprom4785 = sext i32 %1595 to i64
  %arrayidx4786 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4785
  %1596 = load %union.rec*, %union.rec** %arrayidx4786, align 8
  %cmp4787 = icmp eq %union.rec* %1596, null
  br i1 %cmp4787, label %if.then.4789, label %if.else.4791

if.then.4789:                                     ; preds = %if.else.4784
  %1597 = load i32, i32* @zz_size, align 4
  %1598 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4790 = call %union.rec* @GetMemory(i32 %1597, %struct.FILE_POS* %1598)
  store %union.rec* %call4790, %union.rec** @zz_hold, align 8
  br label %if.end.4800

if.else.4791:                                     ; preds = %if.else.4784
  %1599 = load i32, i32* @zz_size, align 4
  %idxprom4792 = sext i32 %1599 to i64
  %arrayidx4793 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4792
  %1600 = load %union.rec*, %union.rec** %arrayidx4793, align 8
  store %union.rec* %1600, %union.rec** @zz_hold, align 8
  store %union.rec* %1600, %union.rec** @zz_hold, align 8
  %1601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14794 = bitcast %union.rec* %1601 to %struct.word_type*
  %olist4795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14794, i32 0, i32 0
  %arrayidx4796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4795, i32 0, i64 0
  %opred4797 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4796, i32 0, i32 0
  %1602 = load %union.rec*, %union.rec** %opred4797, align 8
  %1603 = load i32, i32* @zz_size, align 4
  %idxprom4798 = sext i32 %1603 to i64
  %arrayidx4799 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4798
  store %union.rec* %1602, %union.rec** %arrayidx4799, align 8
  br label %if.end.4800

if.end.4800:                                      ; preds = %if.else.4791, %if.then.4789
  br label %if.end.4801

if.end.4801:                                      ; preds = %if.end.4800, %if.then.4782
  %1604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14802 = bitcast %union.rec* %1604 to %struct.word_type*
  %ou14803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14802, i32 0, i32 1
  %os114804 = bitcast %union.FIRST_UNION* %ou14803 to %struct.anon*
  %otype4805 = getelementptr inbounds %struct.anon, %struct.anon* %os114804, i32 0, i32 0
  store i8 0, i8* %otype4805, align 1
  %1605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14806 = bitcast %union.rec* %1606 to %struct.word_type*
  %olist4807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14806, i32 0, i32 0
  %arrayidx4808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4807, i32 0, i64 1
  %osucc4809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4808, i32 0, i32 1
  store %union.rec* %1605, %union.rec** %osucc4809, align 8
  %1607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14810 = bitcast %union.rec* %1607 to %struct.word_type*
  %olist4811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14810, i32 0, i32 0
  %arrayidx4812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4811, i32 0, i64 1
  %opred4813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4812, i32 0, i32 0
  store %union.rec* %1605, %union.rec** %opred4813, align 8
  %1608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14814 = bitcast %union.rec* %1608 to %struct.word_type*
  %olist4815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14814, i32 0, i32 0
  %arrayidx4816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4815, i32 0, i64 0
  %osucc4817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4816, i32 0, i32 1
  store %union.rec* %1605, %union.rec** %osucc4817, align 8
  %1609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14818 = bitcast %union.rec* %1609 to %struct.word_type*
  %olist4819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14818, i32 0, i32 0
  %arrayidx4820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4819, i32 0, i64 0
  %opred4821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4820, i32 0, i32 0
  store %union.rec* %1605, %union.rec** %opred4821, align 8
  store %union.rec* %1605, %union.rec** @xx_link, align 8
  %1610 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1610, %union.rec** @zz_res, align 8
  %1611 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1611, %union.rec** @zz_hold, align 8
  %1612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4822 = icmp eq %union.rec* %1612, null
  br i1 %cmp4822, label %cond.true.4824, label %cond.false.4825

cond.true.4824:                                   ; preds = %if.end.4801
  %1613 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4860

cond.false.4825:                                  ; preds = %if.end.4801
  %1614 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4826 = icmp eq %union.rec* %1614, null
  br i1 %cmp4826, label %cond.true.4828, label %cond.false.4829

cond.true.4828:                                   ; preds = %cond.false.4825
  %1615 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4858

cond.false.4829:                                  ; preds = %cond.false.4825
  %1616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14830 = bitcast %union.rec* %1616 to %struct.word_type*
  %olist4831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14830, i32 0, i32 0
  %arrayidx4832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4831, i32 0, i64 0
  %opred4833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4832, i32 0, i32 0
  %1617 = load %union.rec*, %union.rec** %opred4833, align 8
  store %union.rec* %1617, %union.rec** @zz_tmp, align 8
  %1618 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14834 = bitcast %union.rec* %1618 to %struct.word_type*
  %olist4835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14834, i32 0, i32 0
  %arrayidx4836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4835, i32 0, i64 0
  %opred4837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4836, i32 0, i32 0
  %1619 = load %union.rec*, %union.rec** %opred4837, align 8
  %1620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14838 = bitcast %union.rec* %1620 to %struct.word_type*
  %olist4839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14838, i32 0, i32 0
  %arrayidx4840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4839, i32 0, i64 0
  %opred4841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4840, i32 0, i32 0
  store %union.rec* %1619, %union.rec** %opred4841, align 8
  %1621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1622 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14842 = bitcast %union.rec* %1622 to %struct.word_type*
  %olist4843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14842, i32 0, i32 0
  %arrayidx4844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4843, i32 0, i64 0
  %opred4845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4844, i32 0, i32 0
  %1623 = load %union.rec*, %union.rec** %opred4845, align 8
  %os14846 = bitcast %union.rec* %1623 to %struct.word_type*
  %olist4847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14846, i32 0, i32 0
  %arrayidx4848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4847, i32 0, i64 0
  %osucc4849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4848, i32 0, i32 1
  store %union.rec* %1621, %union.rec** %osucc4849, align 8
  %1624 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1625 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14850 = bitcast %union.rec* %1625 to %struct.word_type*
  %olist4851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14850, i32 0, i32 0
  %arrayidx4852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4851, i32 0, i64 0
  %opred4853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4852, i32 0, i32 0
  store %union.rec* %1624, %union.rec** %opred4853, align 8
  %1626 = load %union.rec*, %union.rec** @zz_res, align 8
  %1627 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14854 = bitcast %union.rec* %1627 to %struct.word_type*
  %olist4855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14854, i32 0, i32 0
  %arrayidx4856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4855, i32 0, i64 0
  %osucc4857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4856, i32 0, i32 1
  store %union.rec* %1626, %union.rec** %osucc4857, align 8
  br label %cond.end.4858

cond.end.4858:                                    ; preds = %cond.false.4829, %cond.true.4828
  %cond4859 = phi %union.rec* [ %1615, %cond.true.4828 ], [ %1626, %cond.false.4829 ]
  br label %cond.end.4860

cond.end.4860:                                    ; preds = %cond.end.4858, %cond.true.4824
  %cond4861 = phi %union.rec* [ %1613, %cond.true.4824 ], [ %cond4859, %cond.end.4858 ]
  %1628 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1628, %union.rec** @zz_res, align 8
  %1629 = load %union.rec*, %union.rec** %t2, align 8
  store %union.rec* %1629, %union.rec** @zz_hold, align 8
  %1630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4862 = icmp eq %union.rec* %1630, null
  br i1 %cmp4862, label %cond.true.4864, label %cond.false.4865

cond.true.4864:                                   ; preds = %cond.end.4860
  %1631 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4900

cond.false.4865:                                  ; preds = %cond.end.4860
  %1632 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4866 = icmp eq %union.rec* %1632, null
  br i1 %cmp4866, label %cond.true.4868, label %cond.false.4869

cond.true.4868:                                   ; preds = %cond.false.4865
  %1633 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4898

cond.false.4869:                                  ; preds = %cond.false.4865
  %1634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14870 = bitcast %union.rec* %1634 to %struct.word_type*
  %olist4871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14870, i32 0, i32 0
  %arrayidx4872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4871, i32 0, i64 1
  %opred4873 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4872, i32 0, i32 0
  %1635 = load %union.rec*, %union.rec** %opred4873, align 8
  store %union.rec* %1635, %union.rec** @zz_tmp, align 8
  %1636 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14874 = bitcast %union.rec* %1636 to %struct.word_type*
  %olist4875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14874, i32 0, i32 0
  %arrayidx4876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4875, i32 0, i64 1
  %opred4877 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4876, i32 0, i32 0
  %1637 = load %union.rec*, %union.rec** %opred4877, align 8
  %1638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14878 = bitcast %union.rec* %1638 to %struct.word_type*
  %olist4879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14878, i32 0, i32 0
  %arrayidx4880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4879, i32 0, i64 1
  %opred4881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4880, i32 0, i32 0
  store %union.rec* %1637, %union.rec** %opred4881, align 8
  %1639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1640 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14882 = bitcast %union.rec* %1640 to %struct.word_type*
  %olist4883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14882, i32 0, i32 0
  %arrayidx4884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4883, i32 0, i64 1
  %opred4885 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4884, i32 0, i32 0
  %1641 = load %union.rec*, %union.rec** %opred4885, align 8
  %os14886 = bitcast %union.rec* %1641 to %struct.word_type*
  %olist4887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14886, i32 0, i32 0
  %arrayidx4888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4887, i32 0, i64 1
  %osucc4889 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4888, i32 0, i32 1
  store %union.rec* %1639, %union.rec** %osucc4889, align 8
  %1642 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1643 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14890 = bitcast %union.rec* %1643 to %struct.word_type*
  %olist4891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14890, i32 0, i32 0
  %arrayidx4892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4891, i32 0, i64 1
  %opred4893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4892, i32 0, i32 0
  store %union.rec* %1642, %union.rec** %opred4893, align 8
  %1644 = load %union.rec*, %union.rec** @zz_res, align 8
  %1645 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14894 = bitcast %union.rec* %1645 to %struct.word_type*
  %olist4895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14894, i32 0, i32 0
  %arrayidx4896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4895, i32 0, i64 1
  %osucc4897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4896, i32 0, i32 1
  store %union.rec* %1644, %union.rec** %osucc4897, align 8
  br label %cond.end.4898

cond.end.4898:                                    ; preds = %cond.false.4869, %cond.true.4868
  %cond4899 = phi %union.rec* [ %1633, %cond.true.4868 ], [ %1644, %cond.false.4869 ]
  br label %cond.end.4900

cond.end.4900:                                    ; preds = %cond.end.4898, %cond.true.4864
  %cond4901 = phi %union.rec* [ %1631, %cond.true.4864 ], [ %cond4899, %cond.end.4898 ]
  %1646 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv4902 = zext i8 %1646 to i32
  store i32 %conv4902, i32* @zz_size, align 4
  %conv4903 = sext i32 %conv4902 to i64
  %cmp4904 = icmp uge i64 %conv4903, 265
  br i1 %cmp4904, label %if.then.4906, label %if.else.4908

if.then.4906:                                     ; preds = %cond.end.4900
  %1647 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4907 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1647)
  br label %if.end.4925

if.else.4908:                                     ; preds = %cond.end.4900
  %1648 = load i32, i32* @zz_size, align 4
  %idxprom4909 = sext i32 %1648 to i64
  %arrayidx4910 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4909
  %1649 = load %union.rec*, %union.rec** %arrayidx4910, align 8
  %cmp4911 = icmp eq %union.rec* %1649, null
  br i1 %cmp4911, label %if.then.4913, label %if.else.4915

if.then.4913:                                     ; preds = %if.else.4908
  %1650 = load i32, i32* @zz_size, align 4
  %1651 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4914 = call %union.rec* @GetMemory(i32 %1650, %struct.FILE_POS* %1651)
  store %union.rec* %call4914, %union.rec** @zz_hold, align 8
  br label %if.end.4924

if.else.4915:                                     ; preds = %if.else.4908
  %1652 = load i32, i32* @zz_size, align 4
  %idxprom4916 = sext i32 %1652 to i64
  %arrayidx4917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4916
  %1653 = load %union.rec*, %union.rec** %arrayidx4917, align 8
  store %union.rec* %1653, %union.rec** @zz_hold, align 8
  store %union.rec* %1653, %union.rec** @zz_hold, align 8
  %1654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14918 = bitcast %union.rec* %1654 to %struct.word_type*
  %olist4919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14918, i32 0, i32 0
  %arrayidx4920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4919, i32 0, i64 0
  %opred4921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4920, i32 0, i32 0
  %1655 = load %union.rec*, %union.rec** %opred4921, align 8
  %1656 = load i32, i32* @zz_size, align 4
  %idxprom4922 = sext i32 %1656 to i64
  %arrayidx4923 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4922
  store %union.rec* %1655, %union.rec** %arrayidx4923, align 8
  br label %if.end.4924

if.end.4924:                                      ; preds = %if.else.4915, %if.then.4913
  br label %if.end.4925

if.end.4925:                                      ; preds = %if.end.4924, %if.then.4906
  %1657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14926 = bitcast %union.rec* %1657 to %struct.word_type*
  %ou14927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14926, i32 0, i32 1
  %os114928 = bitcast %union.FIRST_UNION* %ou14927 to %struct.anon*
  %otype4929 = getelementptr inbounds %struct.anon, %struct.anon* %os114928, i32 0, i32 0
  store i8 1, i8* %otype4929, align 1
  %1658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14930 = bitcast %union.rec* %1659 to %struct.word_type*
  %olist4931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14930, i32 0, i32 0
  %arrayidx4932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4931, i32 0, i64 1
  %osucc4933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4932, i32 0, i32 1
  store %union.rec* %1658, %union.rec** %osucc4933, align 8
  %1660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14934 = bitcast %union.rec* %1660 to %struct.word_type*
  %olist4935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14934, i32 0, i32 0
  %arrayidx4936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4935, i32 0, i64 1
  %opred4937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4936, i32 0, i32 0
  store %union.rec* %1658, %union.rec** %opred4937, align 8
  %1661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14938 = bitcast %union.rec* %1661 to %struct.word_type*
  %olist4939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14938, i32 0, i32 0
  %arrayidx4940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4939, i32 0, i64 0
  %osucc4941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4940, i32 0, i32 1
  store %union.rec* %1658, %union.rec** %osucc4941, align 8
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14942 = bitcast %union.rec* %1662 to %struct.word_type*
  %olist4943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14942, i32 0, i32 0
  %arrayidx4944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4943, i32 0, i64 0
  %opred4945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4944, i32 0, i32 0
  store %union.rec* %1658, %union.rec** %opred4945, align 8
  store %union.rec* %1658, %union.rec** %z4527, align 8
  %1663 = load %union.rec*, %union.rec** %z4527, align 8
  %os14946 = bitcast %union.rec* %1663 to %struct.word_type*
  %ou24947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14946, i32 0, i32 2
  %os214948 = bitcast %union.SECOND_UNION* %ou24947 to %struct.anon.0*
  %ovspace4949 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os214948, i32 0, i32 2
  store i8 0, i8* %ovspace4949, align 1
  %1664 = load %union.rec*, %union.rec** %z4527, align 8
  %os14950 = bitcast %union.rec* %1664 to %struct.word_type*
  %ou24951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14950, i32 0, i32 2
  %os214952 = bitcast %union.SECOND_UNION* %ou24951 to %struct.anon.0*
  %ohspace4953 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os214952, i32 0, i32 1
  store i8 0, i8* %ohspace4953, align 1
  %1665 = load %union.rec*, %union.rec** %z4527, align 8
  %os54954 = bitcast %union.rec* %1665 to %struct.gapobj_type*
  %ogap4955 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54954, i32 0, i32 3
  %1666 = bitcast %struct.GAP* %ogap4955 to i16*
  %bf.load4956 = load i16, i16* %1666, align 4
  %bf.clear4957 = and i16 %bf.load4956, -129
  %bf.set4958 = or i16 %bf.clear4957, 128
  store i16 %bf.set4958, i16* %1666, align 4
  %1667 = load %union.rec*, %union.rec** %z4527, align 8
  %os54959 = bitcast %union.rec* %1667 to %struct.gapobj_type*
  %ogap4960 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54959, i32 0, i32 3
  %1668 = bitcast %struct.GAP* %ogap4960 to i16*
  %bf.load4961 = load i16, i16* %1668, align 4
  %bf.clear4962 = and i16 %bf.load4961, -257
  store i16 %bf.clear4962, i16* %1668, align 4
  %1669 = load %union.rec*, %union.rec** %z4527, align 8
  %os54963 = bitcast %union.rec* %1669 to %struct.gapobj_type*
  %ogap4964 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54963, i32 0, i32 3
  %1670 = bitcast %struct.GAP* %ogap4964 to i16*
  %bf.load4965 = load i16, i16* %1670, align 4
  %bf.clear4966 = and i16 %bf.load4965, -513
  %bf.set4967 = or i16 %bf.clear4966, 512
  store i16 %bf.set4967, i16* %1670, align 4
  %1671 = load %union.rec*, %union.rec** %z4527, align 8
  %os54968 = bitcast %union.rec* %1671 to %struct.gapobj_type*
  %ogap4969 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54968, i32 0, i32 3
  %1672 = bitcast %struct.GAP* %ogap4969 to i16*
  %bf.load4970 = load i16, i16* %1672, align 4
  %bf.clear4971 = and i16 %bf.load4970, -7169
  %bf.set4972 = or i16 %bf.clear4971, 1024
  store i16 %bf.set4972, i16* %1672, align 4
  %1673 = load %union.rec*, %union.rec** %z4527, align 8
  %os54973 = bitcast %union.rec* %1673 to %struct.gapobj_type*
  %ogap4974 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54973, i32 0, i32 3
  %1674 = bitcast %struct.GAP* %ogap4974 to i16*
  %bf.load4975 = load i16, i16* %1674, align 4
  %bf.clear4976 = and i16 %bf.load4975, 8191
  %bf.set4977 = or i16 %bf.clear4976, 8192
  store i16 %bf.set4977, i16* %1674, align 4
  %1675 = load %union.rec*, %union.rec** %z4527, align 8
  %os54978 = bitcast %union.rec* %1675 to %struct.gapobj_type*
  %ogap4979 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54978, i32 0, i32 3
  %owidth4980 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap4979, i32 0, i32 1
  store i16 0, i16* %owidth4980, align 2
  %1676 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4981 = zext i8 %1676 to i32
  store i32 %conv4981, i32* @zz_size, align 4
  %conv4982 = sext i32 %conv4981 to i64
  %cmp4983 = icmp uge i64 %conv4982, 265
  br i1 %cmp4983, label %if.then.4985, label %if.else.4987

if.then.4985:                                     ; preds = %if.end.4925
  %1677 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4986 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1677)
  br label %if.end.5004

if.else.4987:                                     ; preds = %if.end.4925
  %1678 = load i32, i32* @zz_size, align 4
  %idxprom4988 = sext i32 %1678 to i64
  %arrayidx4989 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4988
  %1679 = load %union.rec*, %union.rec** %arrayidx4989, align 8
  %cmp4990 = icmp eq %union.rec* %1679, null
  br i1 %cmp4990, label %if.then.4992, label %if.else.4994

if.then.4992:                                     ; preds = %if.else.4987
  %1680 = load i32, i32* @zz_size, align 4
  %1681 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4993 = call %union.rec* @GetMemory(i32 %1680, %struct.FILE_POS* %1681)
  store %union.rec* %call4993, %union.rec** @zz_hold, align 8
  br label %if.end.5003

if.else.4994:                                     ; preds = %if.else.4987
  %1682 = load i32, i32* @zz_size, align 4
  %idxprom4995 = sext i32 %1682 to i64
  %arrayidx4996 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4995
  %1683 = load %union.rec*, %union.rec** %arrayidx4996, align 8
  store %union.rec* %1683, %union.rec** @zz_hold, align 8
  store %union.rec* %1683, %union.rec** @zz_hold, align 8
  %1684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14997 = bitcast %union.rec* %1684 to %struct.word_type*
  %olist4998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14997, i32 0, i32 0
  %arrayidx4999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4998, i32 0, i64 0
  %opred5000 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4999, i32 0, i32 0
  %1685 = load %union.rec*, %union.rec** %opred5000, align 8
  %1686 = load i32, i32* @zz_size, align 4
  %idxprom5001 = sext i32 %1686 to i64
  %arrayidx5002 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5001
  store %union.rec* %1685, %union.rec** %arrayidx5002, align 8
  br label %if.end.5003

if.end.5003:                                      ; preds = %if.else.4994, %if.then.4992
  br label %if.end.5004

if.end.5004:                                      ; preds = %if.end.5003, %if.then.4985
  %1687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15005 = bitcast %union.rec* %1687 to %struct.word_type*
  %ou15006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15005, i32 0, i32 1
  %os115007 = bitcast %union.FIRST_UNION* %ou15006 to %struct.anon*
  %otype5008 = getelementptr inbounds %struct.anon, %struct.anon* %os115007, i32 0, i32 0
  store i8 0, i8* %otype5008, align 1
  %1688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15009 = bitcast %union.rec* %1689 to %struct.word_type*
  %olist5010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15009, i32 0, i32 0
  %arrayidx5011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5010, i32 0, i64 1
  %osucc5012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5011, i32 0, i32 1
  store %union.rec* %1688, %union.rec** %osucc5012, align 8
  %1690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15013 = bitcast %union.rec* %1690 to %struct.word_type*
  %olist5014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15013, i32 0, i32 0
  %arrayidx5015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5014, i32 0, i64 1
  %opred5016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5015, i32 0, i32 0
  store %union.rec* %1688, %union.rec** %opred5016, align 8
  %1691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15017 = bitcast %union.rec* %1691 to %struct.word_type*
  %olist5018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15017, i32 0, i32 0
  %arrayidx5019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5018, i32 0, i64 0
  %osucc5020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5019, i32 0, i32 1
  store %union.rec* %1688, %union.rec** %osucc5020, align 8
  %1692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15021 = bitcast %union.rec* %1692 to %struct.word_type*
  %olist5022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15021, i32 0, i32 0
  %arrayidx5023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5022, i32 0, i64 0
  %opred5024 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5023, i32 0, i32 0
  store %union.rec* %1688, %union.rec** %opred5024, align 8
  store %union.rec* %1688, %union.rec** @xx_link, align 8
  %1693 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1693, %union.rec** @zz_res, align 8
  %1694 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1694, %union.rec** @zz_hold, align 8
  %1695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5025 = icmp eq %union.rec* %1695, null
  br i1 %cmp5025, label %cond.true.5027, label %cond.false.5028

cond.true.5027:                                   ; preds = %if.end.5004
  %1696 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5063

cond.false.5028:                                  ; preds = %if.end.5004
  %1697 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5029 = icmp eq %union.rec* %1697, null
  br i1 %cmp5029, label %cond.true.5031, label %cond.false.5032

cond.true.5031:                                   ; preds = %cond.false.5028
  %1698 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5061

cond.false.5032:                                  ; preds = %cond.false.5028
  %1699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15033 = bitcast %union.rec* %1699 to %struct.word_type*
  %olist5034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15033, i32 0, i32 0
  %arrayidx5035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5034, i32 0, i64 0
  %opred5036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5035, i32 0, i32 0
  %1700 = load %union.rec*, %union.rec** %opred5036, align 8
  store %union.rec* %1700, %union.rec** @zz_tmp, align 8
  %1701 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15037 = bitcast %union.rec* %1701 to %struct.word_type*
  %olist5038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15037, i32 0, i32 0
  %arrayidx5039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5038, i32 0, i64 0
  %opred5040 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5039, i32 0, i32 0
  %1702 = load %union.rec*, %union.rec** %opred5040, align 8
  %1703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15041 = bitcast %union.rec* %1703 to %struct.word_type*
  %olist5042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15041, i32 0, i32 0
  %arrayidx5043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5042, i32 0, i64 0
  %opred5044 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5043, i32 0, i32 0
  store %union.rec* %1702, %union.rec** %opred5044, align 8
  %1704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1705 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15045 = bitcast %union.rec* %1705 to %struct.word_type*
  %olist5046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15045, i32 0, i32 0
  %arrayidx5047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5046, i32 0, i64 0
  %opred5048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5047, i32 0, i32 0
  %1706 = load %union.rec*, %union.rec** %opred5048, align 8
  %os15049 = bitcast %union.rec* %1706 to %struct.word_type*
  %olist5050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15049, i32 0, i32 0
  %arrayidx5051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5050, i32 0, i64 0
  %osucc5052 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5051, i32 0, i32 1
  store %union.rec* %1704, %union.rec** %osucc5052, align 8
  %1707 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1708 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15053 = bitcast %union.rec* %1708 to %struct.word_type*
  %olist5054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15053, i32 0, i32 0
  %arrayidx5055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5054, i32 0, i64 0
  %opred5056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5055, i32 0, i32 0
  store %union.rec* %1707, %union.rec** %opred5056, align 8
  %1709 = load %union.rec*, %union.rec** @zz_res, align 8
  %1710 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15057 = bitcast %union.rec* %1710 to %struct.word_type*
  %olist5058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15057, i32 0, i32 0
  %arrayidx5059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5058, i32 0, i64 0
  %osucc5060 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5059, i32 0, i32 1
  store %union.rec* %1709, %union.rec** %osucc5060, align 8
  br label %cond.end.5061

cond.end.5061:                                    ; preds = %cond.false.5032, %cond.true.5031
  %cond5062 = phi %union.rec* [ %1698, %cond.true.5031 ], [ %1709, %cond.false.5032 ]
  br label %cond.end.5063

cond.end.5063:                                    ; preds = %cond.end.5061, %cond.true.5027
  %cond5064 = phi %union.rec* [ %1696, %cond.true.5027 ], [ %cond5062, %cond.end.5061 ]
  %1711 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1711, %union.rec** @zz_res, align 8
  %1712 = load %union.rec*, %union.rec** %z4527, align 8
  store %union.rec* %1712, %union.rec** @zz_hold, align 8
  %1713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5065 = icmp eq %union.rec* %1713, null
  br i1 %cmp5065, label %cond.true.5067, label %cond.false.5068

cond.true.5067:                                   ; preds = %cond.end.5063
  %1714 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5103

cond.false.5068:                                  ; preds = %cond.end.5063
  %1715 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5069 = icmp eq %union.rec* %1715, null
  br i1 %cmp5069, label %cond.true.5071, label %cond.false.5072

cond.true.5071:                                   ; preds = %cond.false.5068
  %1716 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5101

cond.false.5072:                                  ; preds = %cond.false.5068
  %1717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15073 = bitcast %union.rec* %1717 to %struct.word_type*
  %olist5074 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15073, i32 0, i32 0
  %arrayidx5075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5074, i32 0, i64 1
  %opred5076 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5075, i32 0, i32 0
  %1718 = load %union.rec*, %union.rec** %opred5076, align 8
  store %union.rec* %1718, %union.rec** @zz_tmp, align 8
  %1719 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15077 = bitcast %union.rec* %1719 to %struct.word_type*
  %olist5078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15077, i32 0, i32 0
  %arrayidx5079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5078, i32 0, i64 1
  %opred5080 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5079, i32 0, i32 0
  %1720 = load %union.rec*, %union.rec** %opred5080, align 8
  %1721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15081 = bitcast %union.rec* %1721 to %struct.word_type*
  %olist5082 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15081, i32 0, i32 0
  %arrayidx5083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5082, i32 0, i64 1
  %opred5084 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5083, i32 0, i32 0
  store %union.rec* %1720, %union.rec** %opred5084, align 8
  %1722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1723 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15085 = bitcast %union.rec* %1723 to %struct.word_type*
  %olist5086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15085, i32 0, i32 0
  %arrayidx5087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5086, i32 0, i64 1
  %opred5088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5087, i32 0, i32 0
  %1724 = load %union.rec*, %union.rec** %opred5088, align 8
  %os15089 = bitcast %union.rec* %1724 to %struct.word_type*
  %olist5090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15089, i32 0, i32 0
  %arrayidx5091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5090, i32 0, i64 1
  %osucc5092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5091, i32 0, i32 1
  store %union.rec* %1722, %union.rec** %osucc5092, align 8
  %1725 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1726 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15093 = bitcast %union.rec* %1726 to %struct.word_type*
  %olist5094 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15093, i32 0, i32 0
  %arrayidx5095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5094, i32 0, i64 1
  %opred5096 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5095, i32 0, i32 0
  store %union.rec* %1725, %union.rec** %opred5096, align 8
  %1727 = load %union.rec*, %union.rec** @zz_res, align 8
  %1728 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15097 = bitcast %union.rec* %1728 to %struct.word_type*
  %olist5098 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15097, i32 0, i32 0
  %arrayidx5099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5098, i32 0, i64 1
  %osucc5100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5099, i32 0, i32 1
  store %union.rec* %1727, %union.rec** %osucc5100, align 8
  br label %cond.end.5101

cond.end.5101:                                    ; preds = %cond.false.5072, %cond.true.5071
  %cond5102 = phi %union.rec* [ %1716, %cond.true.5071 ], [ %1727, %cond.false.5072 ]
  br label %cond.end.5103

cond.end.5103:                                    ; preds = %cond.end.5101, %cond.true.5067
  %cond5104 = phi %union.rec* [ %1714, %cond.true.5067 ], [ %cond5102, %cond.end.5101 ]
  br label %if.end.5105

if.end.5105:                                      ; preds = %cond.end.5103, %lor.lhs.false.4511
  %1729 = load %union.rec*, %union.rec** %llink3729, align 8
  %os15107 = bitcast %union.rec* %1729 to %struct.word_type*
  %olist5108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15107, i32 0, i32 0
  %arrayidx5109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5108, i32 0, i64 0
  %osucc5110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5109, i32 0, i32 1
  %1730 = load %union.rec*, %union.rec** %osucc5110, align 8
  store %union.rec* %1730, %union.rec** %xxstart, align 8
  %1731 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1731, %union.rec** %xxstop, align 8
  %1732 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1732, %union.rec** %xxdest, align 8
  %1733 = load %union.rec*, %union.rec** %xxstart, align 8
  %1734 = load %union.rec*, %union.rec** %xxstop, align 8
  %cmp5113 = icmp ne %union.rec* %1733, %1734
  br i1 %cmp5113, label %if.then.5115, label %if.end.5206

if.then.5115:                                     ; preds = %if.end.5105
  %1735 = load %union.rec*, %union.rec** %xxstart, align 8
  %os15116 = bitcast %union.rec* %1735 to %struct.word_type*
  %ou15117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15116, i32 0, i32 1
  %os115118 = bitcast %union.FIRST_UNION* %ou15117 to %struct.anon*
  %otype5119 = getelementptr inbounds %struct.anon, %struct.anon* %os115118, i32 0, i32 0
  %1736 = load i8, i8* %otype5119, align 1
  %conv5120 = zext i8 %1736 to i32
  %cmp5121 = icmp eq i32 %conv5120, 0
  br i1 %cmp5121, label %if.end.5125, label %if.then.5123

if.then.5123:                                     ; preds = %if.then.5115
  %1737 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5124 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1737, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.5125

if.end.5125:                                      ; preds = %if.then.5123, %if.then.5115
  %1738 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %1738, %union.rec** @zz_res, align 8
  %1739 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %1739, %union.rec** @zz_hold, align 8
  %1740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5126 = icmp eq %union.rec* %1740, null
  br i1 %cmp5126, label %cond.true.5128, label %cond.false.5129

cond.true.5128:                                   ; preds = %if.end.5125
  %1741 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5164

cond.false.5129:                                  ; preds = %if.end.5125
  %1742 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5130 = icmp eq %union.rec* %1742, null
  br i1 %cmp5130, label %cond.true.5132, label %cond.false.5133

cond.true.5132:                                   ; preds = %cond.false.5129
  %1743 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5162

cond.false.5133:                                  ; preds = %cond.false.5129
  %1744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15134 = bitcast %union.rec* %1744 to %struct.word_type*
  %olist5135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15134, i32 0, i32 0
  %arrayidx5136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5135, i32 0, i64 0
  %opred5137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5136, i32 0, i32 0
  %1745 = load %union.rec*, %union.rec** %opred5137, align 8
  store %union.rec* %1745, %union.rec** @zz_tmp, align 8
  %1746 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15138 = bitcast %union.rec* %1746 to %struct.word_type*
  %olist5139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15138, i32 0, i32 0
  %arrayidx5140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5139, i32 0, i64 0
  %opred5141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5140, i32 0, i32 0
  %1747 = load %union.rec*, %union.rec** %opred5141, align 8
  %1748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15142 = bitcast %union.rec* %1748 to %struct.word_type*
  %olist5143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15142, i32 0, i32 0
  %arrayidx5144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5143, i32 0, i64 0
  %opred5145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5144, i32 0, i32 0
  store %union.rec* %1747, %union.rec** %opred5145, align 8
  %1749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1750 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15146 = bitcast %union.rec* %1750 to %struct.word_type*
  %olist5147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15146, i32 0, i32 0
  %arrayidx5148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5147, i32 0, i64 0
  %opred5149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5148, i32 0, i32 0
  %1751 = load %union.rec*, %union.rec** %opred5149, align 8
  %os15150 = bitcast %union.rec* %1751 to %struct.word_type*
  %olist5151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15150, i32 0, i32 0
  %arrayidx5152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5151, i32 0, i64 0
  %osucc5153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5152, i32 0, i32 1
  store %union.rec* %1749, %union.rec** %osucc5153, align 8
  %1752 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1753 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15154 = bitcast %union.rec* %1753 to %struct.word_type*
  %olist5155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15154, i32 0, i32 0
  %arrayidx5156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5155, i32 0, i64 0
  %opred5157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5156, i32 0, i32 0
  store %union.rec* %1752, %union.rec** %opred5157, align 8
  %1754 = load %union.rec*, %union.rec** @zz_res, align 8
  %1755 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15158 = bitcast %union.rec* %1755 to %struct.word_type*
  %olist5159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15158, i32 0, i32 0
  %arrayidx5160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5159, i32 0, i64 0
  %osucc5161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5160, i32 0, i32 1
  store %union.rec* %1754, %union.rec** %osucc5161, align 8
  br label %cond.end.5162

cond.end.5162:                                    ; preds = %cond.false.5133, %cond.true.5132
  %cond5163 = phi %union.rec* [ %1743, %cond.true.5132 ], [ %1754, %cond.false.5133 ]
  br label %cond.end.5164

cond.end.5164:                                    ; preds = %cond.end.5162, %cond.true.5128
  %cond5165 = phi %union.rec* [ %1741, %cond.true.5128 ], [ %cond5163, %cond.end.5162 ]
  %1756 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %1756, %union.rec** @zz_res, align 8
  %1757 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %1757, %union.rec** @zz_hold, align 8
  %1758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5166 = icmp eq %union.rec* %1758, null
  br i1 %cmp5166, label %cond.true.5168, label %cond.false.5169

cond.true.5168:                                   ; preds = %cond.end.5164
  %1759 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5204

cond.false.5169:                                  ; preds = %cond.end.5164
  %1760 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5170 = icmp eq %union.rec* %1760, null
  br i1 %cmp5170, label %cond.true.5172, label %cond.false.5173

cond.true.5172:                                   ; preds = %cond.false.5169
  %1761 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5202

cond.false.5173:                                  ; preds = %cond.false.5169
  %1762 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15174 = bitcast %union.rec* %1762 to %struct.word_type*
  %olist5175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15174, i32 0, i32 0
  %arrayidx5176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5175, i32 0, i64 0
  %opred5177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5176, i32 0, i32 0
  %1763 = load %union.rec*, %union.rec** %opred5177, align 8
  store %union.rec* %1763, %union.rec** @zz_tmp, align 8
  %1764 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15178 = bitcast %union.rec* %1764 to %struct.word_type*
  %olist5179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15178, i32 0, i32 0
  %arrayidx5180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5179, i32 0, i64 0
  %opred5181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5180, i32 0, i32 0
  %1765 = load %union.rec*, %union.rec** %opred5181, align 8
  %1766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15182 = bitcast %union.rec* %1766 to %struct.word_type*
  %olist5183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15182, i32 0, i32 0
  %arrayidx5184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5183, i32 0, i64 0
  %opred5185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5184, i32 0, i32 0
  store %union.rec* %1765, %union.rec** %opred5185, align 8
  %1767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1768 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15186 = bitcast %union.rec* %1768 to %struct.word_type*
  %olist5187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15186, i32 0, i32 0
  %arrayidx5188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5187, i32 0, i64 0
  %opred5189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5188, i32 0, i32 0
  %1769 = load %union.rec*, %union.rec** %opred5189, align 8
  %os15190 = bitcast %union.rec* %1769 to %struct.word_type*
  %olist5191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15190, i32 0, i32 0
  %arrayidx5192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5191, i32 0, i64 0
  %osucc5193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5192, i32 0, i32 1
  store %union.rec* %1767, %union.rec** %osucc5193, align 8
  %1770 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1771 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15194 = bitcast %union.rec* %1771 to %struct.word_type*
  %olist5195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15194, i32 0, i32 0
  %arrayidx5196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5195, i32 0, i64 0
  %opred5197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5196, i32 0, i32 0
  store %union.rec* %1770, %union.rec** %opred5197, align 8
  %1772 = load %union.rec*, %union.rec** @zz_res, align 8
  %1773 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15198 = bitcast %union.rec* %1773 to %struct.word_type*
  %olist5199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15198, i32 0, i32 0
  %arrayidx5200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5199, i32 0, i64 0
  %osucc5201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5200, i32 0, i32 1
  store %union.rec* %1772, %union.rec** %osucc5201, align 8
  br label %cond.end.5202

cond.end.5202:                                    ; preds = %cond.false.5173, %cond.true.5172
  %cond5203 = phi %union.rec* [ %1761, %cond.true.5172 ], [ %1772, %cond.false.5173 ]
  br label %cond.end.5204

cond.end.5204:                                    ; preds = %cond.end.5202, %cond.true.5168
  %cond5205 = phi %union.rec* [ %1759, %cond.true.5168 ], [ %cond5203, %cond.end.5202 ]
  br label %if.end.5206

if.end.5206:                                      ; preds = %cond.end.5204, %if.end.5105
  %1774 = load %union.rec*, %union.rec** %llink3729, align 8
  %os15207 = bitcast %union.rec* %1774 to %struct.word_type*
  %olist5208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15207, i32 0, i32 0
  %arrayidx5209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5208, i32 0, i64 1
  %opred5210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5209, i32 0, i32 0
  %1775 = load %union.rec*, %union.rec** %opred5210, align 8
  store %union.rec* %1775, %union.rec** %lgap3727, align 8
  br label %for.cond.5211

for.cond.5211:                                    ; preds = %for.inc.5220, %if.end.5206
  %1776 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os15212 = bitcast %union.rec* %1776 to %struct.word_type*
  %ou15213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15212, i32 0, i32 1
  %os115214 = bitcast %union.FIRST_UNION* %ou15213 to %struct.anon*
  %otype5215 = getelementptr inbounds %struct.anon, %struct.anon* %os115214, i32 0, i32 0
  %1777 = load i8, i8* %otype5215, align 1
  %conv5216 = zext i8 %1777 to i32
  %cmp5217 = icmp eq i32 %conv5216, 0
  br i1 %cmp5217, label %for.body.5219, label %for.end.5225

for.body.5219:                                    ; preds = %for.cond.5211
  br label %for.inc.5220

for.inc.5220:                                     ; preds = %for.body.5219
  %1778 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os15221 = bitcast %union.rec* %1778 to %struct.word_type*
  %olist5222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15221, i32 0, i32 0
  %arrayidx5223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5222, i32 0, i64 1
  %opred5224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5223, i32 0, i32 0
  %1779 = load %union.rec*, %union.rec** %opred5224, align 8
  store %union.rec* %1779, %union.rec** %lgap3727, align 8
  br label %for.cond.5211

for.end.5225:                                     ; preds = %for.cond.5211
  %1780 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55226 = bitcast %union.rec* %1780 to %struct.gapobj_type*
  %ogap5227 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55226, i32 0, i32 3
  %1781 = bitcast %struct.GAP* %ogap5227 to i16*
  %bf.load5228 = load i16, i16* %1781, align 4
  %bf.lshr5229 = lshr i16 %bf.load5228, 13
  %bf.cast5230 = zext i16 %bf.lshr5229 to i32
  %cmp5231 = icmp eq i32 %bf.cast5230, 7
  br i1 %cmp5231, label %if.then.5233, label %if.end.5689

if.then.5233:                                     ; preds = %for.end.5225
  %1782 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15237 = bitcast %union.rec* %1782 to %struct.word_type*
  %olist5238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15237, i32 0, i32 0
  %arrayidx5239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5238, i32 0, i64 0
  %opred5240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5239, i32 0, i32 0
  %1783 = load %union.rec*, %union.rec** %opred5240, align 8
  %os15241 = bitcast %union.rec* %1783 to %struct.word_type*
  %olist5242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15241, i32 0, i32 0
  %arrayidx5243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5242, i32 0, i64 1
  %opred5244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5243, i32 0, i32 0
  %1784 = load %union.rec*, %union.rec** %opred5244, align 8
  store %union.rec* %1784, %union.rec** %z5235, align 8
  br label %for.cond.5245

for.cond.5245:                                    ; preds = %for.inc.5254, %if.then.5233
  %1785 = load %union.rec*, %union.rec** %z5235, align 8
  %os15246 = bitcast %union.rec* %1785 to %struct.word_type*
  %ou15247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15246, i32 0, i32 1
  %os115248 = bitcast %union.FIRST_UNION* %ou15247 to %struct.anon*
  %otype5249 = getelementptr inbounds %struct.anon, %struct.anon* %os115248, i32 0, i32 0
  %1786 = load i8, i8* %otype5249, align 1
  %conv5250 = zext i8 %1786 to i32
  %cmp5251 = icmp eq i32 %conv5250, 0
  br i1 %cmp5251, label %for.body.5253, label %for.end.5259

for.body.5253:                                    ; preds = %for.cond.5245
  br label %for.inc.5254

for.inc.5254:                                     ; preds = %for.body.5253
  %1787 = load %union.rec*, %union.rec** %z5235, align 8
  %os15255 = bitcast %union.rec* %1787 to %struct.word_type*
  %olist5256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15255, i32 0, i32 0
  %arrayidx5257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5256, i32 0, i64 1
  %opred5258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5257, i32 0, i32 0
  %1788 = load %union.rec*, %union.rec** %opred5258, align 8
  store %union.rec* %1788, %union.rec** %z5235, align 8
  br label %for.cond.5245

for.end.5259:                                     ; preds = %for.cond.5245
  %1789 = load %union.rec*, %union.rec** %z5235, align 8
  %os15260 = bitcast %union.rec* %1789 to %struct.word_type*
  %ou25261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15260, i32 0, i32 2
  %os225262 = bitcast %union.SECOND_UNION* %ou25261 to %struct.anon.1*
  %1790 = bitcast %struct.anon.1* %os225262 to i32*
  %bf.load5263 = load i32, i32* %1790, align 4
  %bf.lshr5264 = lshr i32 %bf.load5263, 29
  %bf.clear5265 = and i32 %bf.lshr5264, 3
  store i32 %bf.clear5265, i32* %under, align 4
  %1791 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv5266 = zext i8 %1791 to i32
  store i32 %conv5266, i32* @zz_size, align 4
  %conv5267 = sext i32 %conv5266 to i64
  %cmp5268 = icmp uge i64 %conv5267, 265
  br i1 %cmp5268, label %if.then.5270, label %if.else.5272

if.then.5270:                                     ; preds = %for.end.5259
  %1792 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5271 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1792)
  br label %if.end.5289

if.else.5272:                                     ; preds = %for.end.5259
  %1793 = load i32, i32* @zz_size, align 4
  %idxprom5273 = sext i32 %1793 to i64
  %arrayidx5274 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5273
  %1794 = load %union.rec*, %union.rec** %arrayidx5274, align 8
  %cmp5275 = icmp eq %union.rec* %1794, null
  br i1 %cmp5275, label %if.then.5277, label %if.else.5279

if.then.5277:                                     ; preds = %if.else.5272
  %1795 = load i32, i32* @zz_size, align 4
  %1796 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5278 = call %union.rec* @GetMemory(i32 %1795, %struct.FILE_POS* %1796)
  store %union.rec* %call5278, %union.rec** @zz_hold, align 8
  br label %if.end.5288

if.else.5279:                                     ; preds = %if.else.5272
  %1797 = load i32, i32* @zz_size, align 4
  %idxprom5280 = sext i32 %1797 to i64
  %arrayidx5281 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5280
  %1798 = load %union.rec*, %union.rec** %arrayidx5281, align 8
  store %union.rec* %1798, %union.rec** @zz_hold, align 8
  store %union.rec* %1798, %union.rec** @zz_hold, align 8
  %1799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15282 = bitcast %union.rec* %1799 to %struct.word_type*
  %olist5283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15282, i32 0, i32 0
  %arrayidx5284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5283, i32 0, i64 0
  %opred5285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5284, i32 0, i32 0
  %1800 = load %union.rec*, %union.rec** %opred5285, align 8
  %1801 = load i32, i32* @zz_size, align 4
  %idxprom5286 = sext i32 %1801 to i64
  %arrayidx5287 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5286
  store %union.rec* %1800, %union.rec** %arrayidx5287, align 8
  br label %if.end.5288

if.end.5288:                                      ; preds = %if.else.5279, %if.then.5277
  br label %if.end.5289

if.end.5289:                                      ; preds = %if.end.5288, %if.then.5270
  %1802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15290 = bitcast %union.rec* %1802 to %struct.word_type*
  %ou15291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15290, i32 0, i32 1
  %os115292 = bitcast %union.FIRST_UNION* %ou15291 to %struct.anon*
  %otype5293 = getelementptr inbounds %struct.anon, %struct.anon* %os115292, i32 0, i32 0
  store i8 1, i8* %otype5293, align 1
  %1803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15294 = bitcast %union.rec* %1804 to %struct.word_type*
  %olist5295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15294, i32 0, i32 0
  %arrayidx5296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5295, i32 0, i64 1
  %osucc5297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5296, i32 0, i32 1
  store %union.rec* %1803, %union.rec** %osucc5297, align 8
  %1805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15298 = bitcast %union.rec* %1805 to %struct.word_type*
  %olist5299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15298, i32 0, i32 0
  %arrayidx5300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5299, i32 0, i64 1
  %opred5301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5300, i32 0, i32 0
  store %union.rec* %1803, %union.rec** %opred5301, align 8
  %1806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15302 = bitcast %union.rec* %1806 to %struct.word_type*
  %olist5303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15302, i32 0, i32 0
  %arrayidx5304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5303, i32 0, i64 0
  %osucc5305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5304, i32 0, i32 1
  store %union.rec* %1803, %union.rec** %osucc5305, align 8
  %1807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15306 = bitcast %union.rec* %1807 to %struct.word_type*
  %olist5307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15306, i32 0, i32 0
  %arrayidx5308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5307, i32 0, i64 0
  %opred5309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5308, i32 0, i32 0
  store %union.rec* %1803, %union.rec** %opred5309, align 8
  store %union.rec* %1803, %union.rec** %z5235, align 8
  %1808 = load %union.rec*, %union.rec** %z5235, align 8
  %os15310 = bitcast %union.rec* %1808 to %struct.word_type*
  %ou25311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15310, i32 0, i32 2
  %os215312 = bitcast %union.SECOND_UNION* %ou25311 to %struct.anon.0*
  %ovspace5313 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os215312, i32 0, i32 2
  store i8 0, i8* %ovspace5313, align 1
  %1809 = load %union.rec*, %union.rec** %z5235, align 8
  %os15314 = bitcast %union.rec* %1809 to %struct.word_type*
  %ou25315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15314, i32 0, i32 2
  %os215316 = bitcast %union.SECOND_UNION* %ou25315 to %struct.anon.0*
  %ohspace5317 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os215316, i32 0, i32 1
  store i8 0, i8* %ohspace5317, align 1
  %1810 = load i32, i32* %under, align 4
  %1811 = load %union.rec*, %union.rec** %z5235, align 8
  %os15318 = bitcast %union.rec* %1811 to %struct.word_type*
  %ou25319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15318, i32 0, i32 2
  %os225320 = bitcast %union.SECOND_UNION* %ou25319 to %struct.anon.1*
  %1812 = bitcast %struct.anon.1* %os225320 to i32*
  %bf.load5321 = load i32, i32* %1812, align 4
  %bf.value5322 = and i32 %1810, 3
  %bf.shl5323 = shl i32 %bf.value5322, 29
  %bf.clear5324 = and i32 %bf.load5321, -1610612737
  %bf.set5325 = or i32 %bf.clear5324, %bf.shl5323
  store i32 %bf.set5325, i32* %1812, align 4
  %1813 = load %union.rec*, %union.rec** %z5235, align 8
  %os55326 = bitcast %union.rec* %1813 to %struct.gapobj_type*
  %ogap5327 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55326, i32 0, i32 3
  %1814 = bitcast %struct.GAP* %ogap5327 to i16*
  %bf.load5328 = load i16, i16* %1814, align 4
  %bf.clear5329 = and i16 %bf.load5328, -129
  %bf.set5330 = or i16 %bf.clear5329, 128
  store i16 %bf.set5330, i16* %1814, align 4
  %1815 = load %union.rec*, %union.rec** %z5235, align 8
  %os55331 = bitcast %union.rec* %1815 to %struct.gapobj_type*
  %ogap5332 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55331, i32 0, i32 3
  %1816 = bitcast %struct.GAP* %ogap5332 to i16*
  %bf.load5333 = load i16, i16* %1816, align 4
  %bf.clear5334 = and i16 %bf.load5333, -257
  store i16 %bf.clear5334, i16* %1816, align 4
  %1817 = load %union.rec*, %union.rec** %z5235, align 8
  %os55335 = bitcast %union.rec* %1817 to %struct.gapobj_type*
  %ogap5336 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55335, i32 0, i32 3
  %1818 = bitcast %struct.GAP* %ogap5336 to i16*
  %bf.load5337 = load i16, i16* %1818, align 4
  %bf.clear5338 = and i16 %bf.load5337, -513
  %bf.set5339 = or i16 %bf.clear5338, 512
  store i16 %bf.set5339, i16* %1818, align 4
  %1819 = load %union.rec*, %union.rec** %z5235, align 8
  %os55340 = bitcast %union.rec* %1819 to %struct.gapobj_type*
  %ogap5341 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55340, i32 0, i32 3
  %1820 = bitcast %struct.GAP* %ogap5341 to i16*
  %bf.load5342 = load i16, i16* %1820, align 4
  %bf.clear5343 = and i16 %bf.load5342, -7169
  %bf.set5344 = or i16 %bf.clear5343, 1024
  store i16 %bf.set5344, i16* %1820, align 4
  %1821 = load %union.rec*, %union.rec** %z5235, align 8
  %os55345 = bitcast %union.rec* %1821 to %struct.gapobj_type*
  %ogap5346 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55345, i32 0, i32 3
  %1822 = bitcast %struct.GAP* %ogap5346 to i16*
  %bf.load5347 = load i16, i16* %1822, align 4
  %bf.clear5348 = and i16 %bf.load5347, 8191
  %bf.set5349 = or i16 %bf.clear5348, 8192
  store i16 %bf.set5349, i16* %1822, align 4
  %1823 = load %union.rec*, %union.rec** %z5235, align 8
  %os55350 = bitcast %union.rec* %1823 to %struct.gapobj_type*
  %ogap5351 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55350, i32 0, i32 3
  %owidth5352 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap5351, i32 0, i32 1
  store i16 0, i16* %owidth5352, align 2
  %1824 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5353 = zext i8 %1824 to i32
  store i32 %conv5353, i32* @zz_size, align 4
  %conv5354 = sext i32 %conv5353 to i64
  %cmp5355 = icmp uge i64 %conv5354, 265
  br i1 %cmp5355, label %if.then.5357, label %if.else.5359

if.then.5357:                                     ; preds = %if.end.5289
  %1825 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5358 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1825)
  br label %if.end.5376

if.else.5359:                                     ; preds = %if.end.5289
  %1826 = load i32, i32* @zz_size, align 4
  %idxprom5360 = sext i32 %1826 to i64
  %arrayidx5361 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5360
  %1827 = load %union.rec*, %union.rec** %arrayidx5361, align 8
  %cmp5362 = icmp eq %union.rec* %1827, null
  br i1 %cmp5362, label %if.then.5364, label %if.else.5366

if.then.5364:                                     ; preds = %if.else.5359
  %1828 = load i32, i32* @zz_size, align 4
  %1829 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5365 = call %union.rec* @GetMemory(i32 %1828, %struct.FILE_POS* %1829)
  store %union.rec* %call5365, %union.rec** @zz_hold, align 8
  br label %if.end.5375

if.else.5366:                                     ; preds = %if.else.5359
  %1830 = load i32, i32* @zz_size, align 4
  %idxprom5367 = sext i32 %1830 to i64
  %arrayidx5368 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5367
  %1831 = load %union.rec*, %union.rec** %arrayidx5368, align 8
  store %union.rec* %1831, %union.rec** @zz_hold, align 8
  store %union.rec* %1831, %union.rec** @zz_hold, align 8
  %1832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15369 = bitcast %union.rec* %1832 to %struct.word_type*
  %olist5370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15369, i32 0, i32 0
  %arrayidx5371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5370, i32 0, i64 0
  %opred5372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5371, i32 0, i32 0
  %1833 = load %union.rec*, %union.rec** %opred5372, align 8
  %1834 = load i32, i32* @zz_size, align 4
  %idxprom5373 = sext i32 %1834 to i64
  %arrayidx5374 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5373
  store %union.rec* %1833, %union.rec** %arrayidx5374, align 8
  br label %if.end.5375

if.end.5375:                                      ; preds = %if.else.5366, %if.then.5364
  br label %if.end.5376

if.end.5376:                                      ; preds = %if.end.5375, %if.then.5357
  %1835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15377 = bitcast %union.rec* %1835 to %struct.word_type*
  %ou15378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15377, i32 0, i32 1
  %os115379 = bitcast %union.FIRST_UNION* %ou15378 to %struct.anon*
  %otype5380 = getelementptr inbounds %struct.anon, %struct.anon* %os115379, i32 0, i32 0
  store i8 0, i8* %otype5380, align 1
  %1836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15381 = bitcast %union.rec* %1837 to %struct.word_type*
  %olist5382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15381, i32 0, i32 0
  %arrayidx5383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5382, i32 0, i64 1
  %osucc5384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5383, i32 0, i32 1
  store %union.rec* %1836, %union.rec** %osucc5384, align 8
  %1838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15385 = bitcast %union.rec* %1838 to %struct.word_type*
  %olist5386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15385, i32 0, i32 0
  %arrayidx5387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5386, i32 0, i64 1
  %opred5388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5387, i32 0, i32 0
  store %union.rec* %1836, %union.rec** %opred5388, align 8
  %1839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15389 = bitcast %union.rec* %1839 to %struct.word_type*
  %olist5390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15389, i32 0, i32 0
  %arrayidx5391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5390, i32 0, i64 0
  %osucc5392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5391, i32 0, i32 1
  store %union.rec* %1836, %union.rec** %osucc5392, align 8
  %1840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15393 = bitcast %union.rec* %1840 to %struct.word_type*
  %olist5394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15393, i32 0, i32 0
  %arrayidx5395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5394, i32 0, i64 0
  %opred5396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5395, i32 0, i32 0
  store %union.rec* %1836, %union.rec** %opred5396, align 8
  store %union.rec* %1836, %union.rec** @xx_link, align 8
  %1841 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1841, %union.rec** @zz_res, align 8
  %1842 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1842, %union.rec** @zz_hold, align 8
  %1843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5397 = icmp eq %union.rec* %1843, null
  br i1 %cmp5397, label %cond.true.5399, label %cond.false.5400

cond.true.5399:                                   ; preds = %if.end.5376
  %1844 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5435

cond.false.5400:                                  ; preds = %if.end.5376
  %1845 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5401 = icmp eq %union.rec* %1845, null
  br i1 %cmp5401, label %cond.true.5403, label %cond.false.5404

cond.true.5403:                                   ; preds = %cond.false.5400
  %1846 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5433

cond.false.5404:                                  ; preds = %cond.false.5400
  %1847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15405 = bitcast %union.rec* %1847 to %struct.word_type*
  %olist5406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15405, i32 0, i32 0
  %arrayidx5407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5406, i32 0, i64 0
  %opred5408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5407, i32 0, i32 0
  %1848 = load %union.rec*, %union.rec** %opred5408, align 8
  store %union.rec* %1848, %union.rec** @zz_tmp, align 8
  %1849 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15409 = bitcast %union.rec* %1849 to %struct.word_type*
  %olist5410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15409, i32 0, i32 0
  %arrayidx5411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5410, i32 0, i64 0
  %opred5412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5411, i32 0, i32 0
  %1850 = load %union.rec*, %union.rec** %opred5412, align 8
  %1851 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15413 = bitcast %union.rec* %1851 to %struct.word_type*
  %olist5414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15413, i32 0, i32 0
  %arrayidx5415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5414, i32 0, i64 0
  %opred5416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5415, i32 0, i32 0
  store %union.rec* %1850, %union.rec** %opred5416, align 8
  %1852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1853 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15417 = bitcast %union.rec* %1853 to %struct.word_type*
  %olist5418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15417, i32 0, i32 0
  %arrayidx5419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5418, i32 0, i64 0
  %opred5420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5419, i32 0, i32 0
  %1854 = load %union.rec*, %union.rec** %opred5420, align 8
  %os15421 = bitcast %union.rec* %1854 to %struct.word_type*
  %olist5422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15421, i32 0, i32 0
  %arrayidx5423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5422, i32 0, i64 0
  %osucc5424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5423, i32 0, i32 1
  store %union.rec* %1852, %union.rec** %osucc5424, align 8
  %1855 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1856 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15425 = bitcast %union.rec* %1856 to %struct.word_type*
  %olist5426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15425, i32 0, i32 0
  %arrayidx5427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5426, i32 0, i64 0
  %opred5428 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5427, i32 0, i32 0
  store %union.rec* %1855, %union.rec** %opred5428, align 8
  %1857 = load %union.rec*, %union.rec** @zz_res, align 8
  %1858 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15429 = bitcast %union.rec* %1858 to %struct.word_type*
  %olist5430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15429, i32 0, i32 0
  %arrayidx5431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5430, i32 0, i64 0
  %osucc5432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5431, i32 0, i32 1
  store %union.rec* %1857, %union.rec** %osucc5432, align 8
  br label %cond.end.5433

cond.end.5433:                                    ; preds = %cond.false.5404, %cond.true.5403
  %cond5434 = phi %union.rec* [ %1846, %cond.true.5403 ], [ %1857, %cond.false.5404 ]
  br label %cond.end.5435

cond.end.5435:                                    ; preds = %cond.end.5433, %cond.true.5399
  %cond5436 = phi %union.rec* [ %1844, %cond.true.5399 ], [ %cond5434, %cond.end.5433 ]
  %1859 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1859, %union.rec** @zz_res, align 8
  %1860 = load %union.rec*, %union.rec** %z5235, align 8
  store %union.rec* %1860, %union.rec** @zz_hold, align 8
  %1861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5437 = icmp eq %union.rec* %1861, null
  br i1 %cmp5437, label %cond.true.5439, label %cond.false.5440

cond.true.5439:                                   ; preds = %cond.end.5435
  %1862 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5475

cond.false.5440:                                  ; preds = %cond.end.5435
  %1863 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5441 = icmp eq %union.rec* %1863, null
  br i1 %cmp5441, label %cond.true.5443, label %cond.false.5444

cond.true.5443:                                   ; preds = %cond.false.5440
  %1864 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5473

cond.false.5444:                                  ; preds = %cond.false.5440
  %1865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15445 = bitcast %union.rec* %1865 to %struct.word_type*
  %olist5446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15445, i32 0, i32 0
  %arrayidx5447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5446, i32 0, i64 1
  %opred5448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5447, i32 0, i32 0
  %1866 = load %union.rec*, %union.rec** %opred5448, align 8
  store %union.rec* %1866, %union.rec** @zz_tmp, align 8
  %1867 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15449 = bitcast %union.rec* %1867 to %struct.word_type*
  %olist5450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15449, i32 0, i32 0
  %arrayidx5451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5450, i32 0, i64 1
  %opred5452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5451, i32 0, i32 0
  %1868 = load %union.rec*, %union.rec** %opred5452, align 8
  %1869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15453 = bitcast %union.rec* %1869 to %struct.word_type*
  %olist5454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15453, i32 0, i32 0
  %arrayidx5455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5454, i32 0, i64 1
  %opred5456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5455, i32 0, i32 0
  store %union.rec* %1868, %union.rec** %opred5456, align 8
  %1870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1871 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15457 = bitcast %union.rec* %1871 to %struct.word_type*
  %olist5458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15457, i32 0, i32 0
  %arrayidx5459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5458, i32 0, i64 1
  %opred5460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5459, i32 0, i32 0
  %1872 = load %union.rec*, %union.rec** %opred5460, align 8
  %os15461 = bitcast %union.rec* %1872 to %struct.word_type*
  %olist5462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15461, i32 0, i32 0
  %arrayidx5463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5462, i32 0, i64 1
  %osucc5464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5463, i32 0, i32 1
  store %union.rec* %1870, %union.rec** %osucc5464, align 8
  %1873 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1874 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15465 = bitcast %union.rec* %1874 to %struct.word_type*
  %olist5466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15465, i32 0, i32 0
  %arrayidx5467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5466, i32 0, i64 1
  %opred5468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5467, i32 0, i32 0
  store %union.rec* %1873, %union.rec** %opred5468, align 8
  %1875 = load %union.rec*, %union.rec** @zz_res, align 8
  %1876 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15469 = bitcast %union.rec* %1876 to %struct.word_type*
  %olist5470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15469, i32 0, i32 0
  %arrayidx5471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5470, i32 0, i64 1
  %osucc5472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5471, i32 0, i32 1
  store %union.rec* %1875, %union.rec** %osucc5472, align 8
  br label %cond.end.5473

cond.end.5473:                                    ; preds = %cond.false.5444, %cond.true.5443
  %cond5474 = phi %union.rec* [ %1864, %cond.true.5443 ], [ %1875, %cond.false.5444 ]
  br label %cond.end.5475

cond.end.5475:                                    ; preds = %cond.end.5473, %cond.true.5439
  %cond5476 = phi %union.rec* [ %1862, %cond.true.5439 ], [ %cond5474, %cond.end.5473 ]
  %1877 = load %union.rec*, %union.rec** %y, align 8
  %os15477 = bitcast %union.rec* %1877 to %struct.word_type*
  %ou15478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15477, i32 0, i32 1
  %ofpos5479 = bitcast %union.FIRST_UNION* %ou15478 to %struct.FILE_POS*
  %call5480 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.FILE_POS* %ofpos5479)
  store %union.rec* %call5480, %union.rec** %z5235, align 8
  %1878 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25481 = bitcast %union.rec* %1878 to %struct.closure_type*
  %ou45482 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25481, i32 0, i32 4
  %osave_style5483 = bitcast %union.FOURTH_UNION* %ou45482 to %struct.STYLE*
  %ofont5484 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5483, i32 0, i32 4
  %bf.load5485 = load i32, i32* %ofont5484, align 4
  %bf.clear5486 = and i32 %bf.load5485, 4095
  %1879 = load %union.rec*, %union.rec** %z5235, align 8
  %os15487 = bitcast %union.rec* %1879 to %struct.word_type*
  %ou25488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15487, i32 0, i32 2
  %os225489 = bitcast %union.SECOND_UNION* %ou25488 to %struct.anon.1*
  %1880 = bitcast %struct.anon.1* %os225489 to i32*
  %bf.load5490 = load i32, i32* %1880, align 4
  %bf.value5491 = and i32 %bf.clear5486, 4095
  %bf.clear5492 = and i32 %bf.load5490, -4096
  %bf.set5493 = or i32 %bf.clear5492, %bf.value5491
  store i32 %bf.set5493, i32* %1880, align 4
  %1881 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25494 = bitcast %union.rec* %1881 to %struct.closure_type*
  %ou45495 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25494, i32 0, i32 4
  %osave_style5496 = bitcast %union.FOURTH_UNION* %ou45495 to %struct.STYLE*
  %ocolour5497 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5496, i32 0, i32 4
  %bf.load5498 = load i32, i32* %ocolour5497, align 4
  %bf.lshr5499 = lshr i32 %bf.load5498, 12
  %bf.clear5500 = and i32 %bf.lshr5499, 1023
  %1882 = load %union.rec*, %union.rec** %z5235, align 8
  %os15501 = bitcast %union.rec* %1882 to %struct.word_type*
  %ou25502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15501, i32 0, i32 2
  %os225503 = bitcast %union.SECOND_UNION* %ou25502 to %struct.anon.1*
  %1883 = bitcast %struct.anon.1* %os225503 to i32*
  %bf.load5504 = load i32, i32* %1883, align 4
  %bf.value5505 = and i32 %bf.clear5500, 1023
  %bf.shl5506 = shl i32 %bf.value5505, 12
  %bf.clear5507 = and i32 %bf.load5504, -4190209
  %bf.set5508 = or i32 %bf.clear5507, %bf.shl5506
  store i32 %bf.set5508, i32* %1883, align 4
  %1884 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25509 = bitcast %union.rec* %1884 to %struct.closure_type*
  %ou45510 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25509, i32 0, i32 4
  %osave_style5511 = bitcast %union.FOURTH_UNION* %ou45510 to %struct.STYLE*
  %ooutline5512 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5511, i32 0, i32 4
  %bf.load5513 = load i32, i32* %ooutline5512, align 4
  %bf.lshr5514 = lshr i32 %bf.load5513, 22
  %bf.clear5515 = and i32 %bf.lshr5514, 3
  %1885 = load %union.rec*, %union.rec** %z5235, align 8
  %os15516 = bitcast %union.rec* %1885 to %struct.word_type*
  %ou25517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15516, i32 0, i32 2
  %os225518 = bitcast %union.SECOND_UNION* %ou25517 to %struct.anon.1*
  %1886 = bitcast %struct.anon.1* %os225518 to i32*
  %bf.load5519 = load i32, i32* %1886, align 4
  %bf.value5520 = and i32 %bf.clear5515, 1
  %bf.shl5521 = shl i32 %bf.value5520, 22
  %bf.clear5522 = and i32 %bf.load5519, -4194305
  %bf.set5523 = or i32 %bf.clear5522, %bf.shl5521
  store i32 %bf.set5523, i32* %1886, align 4
  %1887 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25524 = bitcast %union.rec* %1887 to %struct.closure_type*
  %ou45525 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25524, i32 0, i32 4
  %osave_style5526 = bitcast %union.FOURTH_UNION* %ou45525 to %struct.STYLE*
  %olanguage5527 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5526, i32 0, i32 4
  %bf.load5528 = load i32, i32* %olanguage5527, align 4
  %bf.lshr5529 = lshr i32 %bf.load5528, 24
  %bf.clear5530 = and i32 %bf.lshr5529, 63
  %1888 = load %union.rec*, %union.rec** %z5235, align 8
  %os15531 = bitcast %union.rec* %1888 to %struct.word_type*
  %ou25532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15531, i32 0, i32 2
  %os225533 = bitcast %union.SECOND_UNION* %ou25532 to %struct.anon.1*
  %1889 = bitcast %struct.anon.1* %os225533 to i32*
  %bf.load5534 = load i32, i32* %1889, align 4
  %bf.value5535 = and i32 %bf.clear5530, 63
  %bf.shl5536 = shl i32 %bf.value5535, 23
  %bf.clear5537 = and i32 %bf.load5534, -528482305
  %bf.set5538 = or i32 %bf.clear5537, %bf.shl5536
  store i32 %bf.set5538, i32* %1889, align 4
  %1890 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25539 = bitcast %union.rec* %1890 to %struct.closure_type*
  %ou45540 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25539, i32 0, i32 4
  %osave_style5541 = bitcast %union.FOURTH_UNION* %ou45540 to %struct.STYLE*
  %osu25542 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5541, i32 0, i32 1
  %oss25543 = bitcast %union.anon.10* %osu25542 to %struct.anon.11*
  %1891 = bitcast %struct.anon.11* %oss25543 to i8*
  %bf.load5544 = load i8, i8* %1891, align 4
  %bf.clear5545 = and i8 %bf.load5544, 3
  %bf.cast5546 = zext i8 %bf.clear5545 to i32
  %cmp5547 = icmp eq i32 %bf.cast5546, 2
  %conv5548 = zext i1 %cmp5547 to i32
  %1892 = load %union.rec*, %union.rec** %z5235, align 8
  %os15549 = bitcast %union.rec* %1892 to %struct.word_type*
  %ou25550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15549, i32 0, i32 2
  %os225551 = bitcast %union.SECOND_UNION* %ou25550 to %struct.anon.1*
  %1893 = bitcast %struct.anon.1* %os225551 to i32*
  %bf.load5552 = load i32, i32* %1893, align 4
  %bf.value5553 = and i32 %conv5548, 1
  %bf.shl5554 = shl i32 %bf.value5553, 31
  %bf.clear5555 = and i32 %bf.load5552, 2147483647
  %bf.set5556 = or i32 %bf.clear5555, %bf.shl5554
  store i32 %bf.set5556, i32* %1893, align 4
  %1894 = load i32, i32* %under, align 4
  %1895 = load %union.rec*, %union.rec** %z5235, align 8
  %os15557 = bitcast %union.rec* %1895 to %struct.word_type*
  %ou25558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15557, i32 0, i32 2
  %os225559 = bitcast %union.SECOND_UNION* %ou25558 to %struct.anon.1*
  %1896 = bitcast %struct.anon.1* %os225559 to i32*
  %bf.load5560 = load i32, i32* %1896, align 4
  %bf.value5561 = and i32 %1894, 3
  %bf.shl5562 = shl i32 %bf.value5561, 29
  %bf.clear5563 = and i32 %bf.load5560, -1610612737
  %bf.set5564 = or i32 %bf.clear5563, %bf.shl5562
  store i32 %bf.set5564, i32* %1896, align 4
  %1897 = load %union.rec*, %union.rec** %z5235, align 8
  call void @FontWordSize(%union.rec* %1897)
  %1898 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5565 = zext i8 %1898 to i32
  store i32 %conv5565, i32* @zz_size, align 4
  %conv5566 = sext i32 %conv5565 to i64
  %cmp5567 = icmp uge i64 %conv5566, 265
  br i1 %cmp5567, label %if.then.5569, label %if.else.5571

if.then.5569:                                     ; preds = %cond.end.5475
  %1899 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5570 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1899)
  br label %if.end.5588

if.else.5571:                                     ; preds = %cond.end.5475
  %1900 = load i32, i32* @zz_size, align 4
  %idxprom5572 = sext i32 %1900 to i64
  %arrayidx5573 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5572
  %1901 = load %union.rec*, %union.rec** %arrayidx5573, align 8
  %cmp5574 = icmp eq %union.rec* %1901, null
  br i1 %cmp5574, label %if.then.5576, label %if.else.5578

if.then.5576:                                     ; preds = %if.else.5571
  %1902 = load i32, i32* @zz_size, align 4
  %1903 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5577 = call %union.rec* @GetMemory(i32 %1902, %struct.FILE_POS* %1903)
  store %union.rec* %call5577, %union.rec** @zz_hold, align 8
  br label %if.end.5587

if.else.5578:                                     ; preds = %if.else.5571
  %1904 = load i32, i32* @zz_size, align 4
  %idxprom5579 = sext i32 %1904 to i64
  %arrayidx5580 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5579
  %1905 = load %union.rec*, %union.rec** %arrayidx5580, align 8
  store %union.rec* %1905, %union.rec** @zz_hold, align 8
  store %union.rec* %1905, %union.rec** @zz_hold, align 8
  %1906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15581 = bitcast %union.rec* %1906 to %struct.word_type*
  %olist5582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15581, i32 0, i32 0
  %arrayidx5583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5582, i32 0, i64 0
  %opred5584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5583, i32 0, i32 0
  %1907 = load %union.rec*, %union.rec** %opred5584, align 8
  %1908 = load i32, i32* @zz_size, align 4
  %idxprom5585 = sext i32 %1908 to i64
  %arrayidx5586 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5585
  store %union.rec* %1907, %union.rec** %arrayidx5586, align 8
  br label %if.end.5587

if.end.5587:                                      ; preds = %if.else.5578, %if.then.5576
  br label %if.end.5588

if.end.5588:                                      ; preds = %if.end.5587, %if.then.5569
  %1909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15589 = bitcast %union.rec* %1909 to %struct.word_type*
  %ou15590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15589, i32 0, i32 1
  %os115591 = bitcast %union.FIRST_UNION* %ou15590 to %struct.anon*
  %otype5592 = getelementptr inbounds %struct.anon, %struct.anon* %os115591, i32 0, i32 0
  store i8 0, i8* %otype5592, align 1
  %1910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15593 = bitcast %union.rec* %1911 to %struct.word_type*
  %olist5594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15593, i32 0, i32 0
  %arrayidx5595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5594, i32 0, i64 1
  %osucc5596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5595, i32 0, i32 1
  store %union.rec* %1910, %union.rec** %osucc5596, align 8
  %1912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15597 = bitcast %union.rec* %1912 to %struct.word_type*
  %olist5598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15597, i32 0, i32 0
  %arrayidx5599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5598, i32 0, i64 1
  %opred5600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5599, i32 0, i32 0
  store %union.rec* %1910, %union.rec** %opred5600, align 8
  %1913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15601 = bitcast %union.rec* %1913 to %struct.word_type*
  %olist5602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15601, i32 0, i32 0
  %arrayidx5603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5602, i32 0, i64 0
  %osucc5604 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5603, i32 0, i32 1
  store %union.rec* %1910, %union.rec** %osucc5604, align 8
  %1914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15605 = bitcast %union.rec* %1914 to %struct.word_type*
  %olist5606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15605, i32 0, i32 0
  %arrayidx5607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5606, i32 0, i64 0
  %opred5608 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5607, i32 0, i32 0
  store %union.rec* %1910, %union.rec** %opred5608, align 8
  store %union.rec* %1910, %union.rec** @xx_link, align 8
  %1915 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1915, %union.rec** @zz_res, align 8
  %1916 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1916, %union.rec** @zz_hold, align 8
  %1917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5609 = icmp eq %union.rec* %1917, null
  br i1 %cmp5609, label %cond.true.5611, label %cond.false.5612

cond.true.5611:                                   ; preds = %if.end.5588
  %1918 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5647

cond.false.5612:                                  ; preds = %if.end.5588
  %1919 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5613 = icmp eq %union.rec* %1919, null
  br i1 %cmp5613, label %cond.true.5615, label %cond.false.5616

cond.true.5615:                                   ; preds = %cond.false.5612
  %1920 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5645

cond.false.5616:                                  ; preds = %cond.false.5612
  %1921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15617 = bitcast %union.rec* %1921 to %struct.word_type*
  %olist5618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15617, i32 0, i32 0
  %arrayidx5619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5618, i32 0, i64 0
  %opred5620 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5619, i32 0, i32 0
  %1922 = load %union.rec*, %union.rec** %opred5620, align 8
  store %union.rec* %1922, %union.rec** @zz_tmp, align 8
  %1923 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15621 = bitcast %union.rec* %1923 to %struct.word_type*
  %olist5622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15621, i32 0, i32 0
  %arrayidx5623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5622, i32 0, i64 0
  %opred5624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5623, i32 0, i32 0
  %1924 = load %union.rec*, %union.rec** %opred5624, align 8
  %1925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15625 = bitcast %union.rec* %1925 to %struct.word_type*
  %olist5626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15625, i32 0, i32 0
  %arrayidx5627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5626, i32 0, i64 0
  %opred5628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5627, i32 0, i32 0
  store %union.rec* %1924, %union.rec** %opred5628, align 8
  %1926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1927 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15629 = bitcast %union.rec* %1927 to %struct.word_type*
  %olist5630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15629, i32 0, i32 0
  %arrayidx5631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5630, i32 0, i64 0
  %opred5632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5631, i32 0, i32 0
  %1928 = load %union.rec*, %union.rec** %opred5632, align 8
  %os15633 = bitcast %union.rec* %1928 to %struct.word_type*
  %olist5634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15633, i32 0, i32 0
  %arrayidx5635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5634, i32 0, i64 0
  %osucc5636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5635, i32 0, i32 1
  store %union.rec* %1926, %union.rec** %osucc5636, align 8
  %1929 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1930 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15637 = bitcast %union.rec* %1930 to %struct.word_type*
  %olist5638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15637, i32 0, i32 0
  %arrayidx5639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5638, i32 0, i64 0
  %opred5640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5639, i32 0, i32 0
  store %union.rec* %1929, %union.rec** %opred5640, align 8
  %1931 = load %union.rec*, %union.rec** @zz_res, align 8
  %1932 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15641 = bitcast %union.rec* %1932 to %struct.word_type*
  %olist5642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15641, i32 0, i32 0
  %arrayidx5643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5642, i32 0, i64 0
  %osucc5644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5643, i32 0, i32 1
  store %union.rec* %1931, %union.rec** %osucc5644, align 8
  br label %cond.end.5645

cond.end.5645:                                    ; preds = %cond.false.5616, %cond.true.5615
  %cond5646 = phi %union.rec* [ %1920, %cond.true.5615 ], [ %1931, %cond.false.5616 ]
  br label %cond.end.5647

cond.end.5647:                                    ; preds = %cond.end.5645, %cond.true.5611
  %cond5648 = phi %union.rec* [ %1918, %cond.true.5611 ], [ %cond5646, %cond.end.5645 ]
  %1933 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1933, %union.rec** @zz_res, align 8
  %1934 = load %union.rec*, %union.rec** %z5235, align 8
  store %union.rec* %1934, %union.rec** @zz_hold, align 8
  %1935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5649 = icmp eq %union.rec* %1935, null
  br i1 %cmp5649, label %cond.true.5651, label %cond.false.5652

cond.true.5651:                                   ; preds = %cond.end.5647
  %1936 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5687

cond.false.5652:                                  ; preds = %cond.end.5647
  %1937 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5653 = icmp eq %union.rec* %1937, null
  br i1 %cmp5653, label %cond.true.5655, label %cond.false.5656

cond.true.5655:                                   ; preds = %cond.false.5652
  %1938 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5685

cond.false.5656:                                  ; preds = %cond.false.5652
  %1939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15657 = bitcast %union.rec* %1939 to %struct.word_type*
  %olist5658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15657, i32 0, i32 0
  %arrayidx5659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5658, i32 0, i64 1
  %opred5660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5659, i32 0, i32 0
  %1940 = load %union.rec*, %union.rec** %opred5660, align 8
  store %union.rec* %1940, %union.rec** @zz_tmp, align 8
  %1941 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15661 = bitcast %union.rec* %1941 to %struct.word_type*
  %olist5662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15661, i32 0, i32 0
  %arrayidx5663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5662, i32 0, i64 1
  %opred5664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5663, i32 0, i32 0
  %1942 = load %union.rec*, %union.rec** %opred5664, align 8
  %1943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15665 = bitcast %union.rec* %1943 to %struct.word_type*
  %olist5666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15665, i32 0, i32 0
  %arrayidx5667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5666, i32 0, i64 1
  %opred5668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5667, i32 0, i32 0
  store %union.rec* %1942, %union.rec** %opred5668, align 8
  %1944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1945 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15669 = bitcast %union.rec* %1945 to %struct.word_type*
  %olist5670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15669, i32 0, i32 0
  %arrayidx5671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5670, i32 0, i64 1
  %opred5672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5671, i32 0, i32 0
  %1946 = load %union.rec*, %union.rec** %opred5672, align 8
  %os15673 = bitcast %union.rec* %1946 to %struct.word_type*
  %olist5674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15673, i32 0, i32 0
  %arrayidx5675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5674, i32 0, i64 1
  %osucc5676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5675, i32 0, i32 1
  store %union.rec* %1944, %union.rec** %osucc5676, align 8
  %1947 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1948 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15677 = bitcast %union.rec* %1948 to %struct.word_type*
  %olist5678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15677, i32 0, i32 0
  %arrayidx5679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5678, i32 0, i64 1
  %opred5680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5679, i32 0, i32 0
  store %union.rec* %1947, %union.rec** %opred5680, align 8
  %1949 = load %union.rec*, %union.rec** @zz_res, align 8
  %1950 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15681 = bitcast %union.rec* %1950 to %struct.word_type*
  %olist5682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15681, i32 0, i32 0
  %arrayidx5683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5682, i32 0, i64 1
  %osucc5684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5683, i32 0, i32 1
  store %union.rec* %1949, %union.rec** %osucc5684, align 8
  br label %cond.end.5685

cond.end.5685:                                    ; preds = %cond.false.5656, %cond.true.5655
  %cond5686 = phi %union.rec* [ %1938, %cond.true.5655 ], [ %1949, %cond.false.5656 ]
  br label %cond.end.5687

cond.end.5687:                                    ; preds = %cond.end.5685, %cond.true.5651
  %cond5688 = phi %union.rec* [ %1936, %cond.true.5651 ], [ %cond5686, %cond.end.5685 ]
  br label %if.end.5689

if.end.5689:                                      ; preds = %cond.end.5687, %for.end.5225
  %1951 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5690 = zext i8 %1951 to i32
  store i32 %conv5690, i32* @zz_size, align 4
  %conv5691 = sext i32 %conv5690 to i64
  %cmp5692 = icmp uge i64 %conv5691, 265
  br i1 %cmp5692, label %if.then.5694, label %if.else.5696

if.then.5694:                                     ; preds = %if.end.5689
  %1952 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5695 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1952)
  br label %if.end.5713

if.else.5696:                                     ; preds = %if.end.5689
  %1953 = load i32, i32* @zz_size, align 4
  %idxprom5697 = sext i32 %1953 to i64
  %arrayidx5698 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5697
  %1954 = load %union.rec*, %union.rec** %arrayidx5698, align 8
  %cmp5699 = icmp eq %union.rec* %1954, null
  br i1 %cmp5699, label %if.then.5701, label %if.else.5703

if.then.5701:                                     ; preds = %if.else.5696
  %1955 = load i32, i32* @zz_size, align 4
  %1956 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5702 = call %union.rec* @GetMemory(i32 %1955, %struct.FILE_POS* %1956)
  store %union.rec* %call5702, %union.rec** @zz_hold, align 8
  br label %if.end.5712

if.else.5703:                                     ; preds = %if.else.5696
  %1957 = load i32, i32* @zz_size, align 4
  %idxprom5704 = sext i32 %1957 to i64
  %arrayidx5705 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5704
  %1958 = load %union.rec*, %union.rec** %arrayidx5705, align 8
  store %union.rec* %1958, %union.rec** @zz_hold, align 8
  store %union.rec* %1958, %union.rec** @zz_hold, align 8
  %1959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15706 = bitcast %union.rec* %1959 to %struct.word_type*
  %olist5707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15706, i32 0, i32 0
  %arrayidx5708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5707, i32 0, i64 0
  %opred5709 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5708, i32 0, i32 0
  %1960 = load %union.rec*, %union.rec** %opred5709, align 8
  %1961 = load i32, i32* @zz_size, align 4
  %idxprom5710 = sext i32 %1961 to i64
  %arrayidx5711 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5710
  store %union.rec* %1960, %union.rec** %arrayidx5711, align 8
  br label %if.end.5712

if.end.5712:                                      ; preds = %if.else.5703, %if.then.5701
  br label %if.end.5713

if.end.5713:                                      ; preds = %if.end.5712, %if.then.5694
  %1962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15714 = bitcast %union.rec* %1962 to %struct.word_type*
  %ou15715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15714, i32 0, i32 1
  %os115716 = bitcast %union.FIRST_UNION* %ou15715 to %struct.anon*
  %otype5717 = getelementptr inbounds %struct.anon, %struct.anon* %os115716, i32 0, i32 0
  store i8 0, i8* %otype5717, align 1
  %1963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15718 = bitcast %union.rec* %1964 to %struct.word_type*
  %olist5719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15718, i32 0, i32 0
  %arrayidx5720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5719, i32 0, i64 1
  %osucc5721 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5720, i32 0, i32 1
  store %union.rec* %1963, %union.rec** %osucc5721, align 8
  %1965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15722 = bitcast %union.rec* %1965 to %struct.word_type*
  %olist5723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15722, i32 0, i32 0
  %arrayidx5724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5723, i32 0, i64 1
  %opred5725 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5724, i32 0, i32 0
  store %union.rec* %1963, %union.rec** %opred5725, align 8
  %1966 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15726 = bitcast %union.rec* %1966 to %struct.word_type*
  %olist5727 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15726, i32 0, i32 0
  %arrayidx5728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5727, i32 0, i64 0
  %osucc5729 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5728, i32 0, i32 1
  store %union.rec* %1963, %union.rec** %osucc5729, align 8
  %1967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15730 = bitcast %union.rec* %1967 to %struct.word_type*
  %olist5731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15730, i32 0, i32 0
  %arrayidx5732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5731, i32 0, i64 0
  %opred5733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5732, i32 0, i32 0
  store %union.rec* %1963, %union.rec** %opred5733, align 8
  store %union.rec* %1963, %union.rec** @xx_link, align 8
  %1968 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1968, %union.rec** @zz_res, align 8
  %1969 = load %union.rec*, %union.rec** %res, align 8
  %os15734 = bitcast %union.rec* %1969 to %struct.word_type*
  %olist5735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15734, i32 0, i32 0
  %arrayidx5736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5735, i32 0, i64 0
  %osucc5737 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5736, i32 0, i32 1
  %1970 = load %union.rec*, %union.rec** %osucc5737, align 8
  store %union.rec* %1970, %union.rec** @zz_hold, align 8
  %1971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5738 = icmp eq %union.rec* %1971, null
  br i1 %cmp5738, label %cond.true.5740, label %cond.false.5741

cond.true.5740:                                   ; preds = %if.end.5713
  %1972 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5776

cond.false.5741:                                  ; preds = %if.end.5713
  %1973 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5742 = icmp eq %union.rec* %1973, null
  br i1 %cmp5742, label %cond.true.5744, label %cond.false.5745

cond.true.5744:                                   ; preds = %cond.false.5741
  %1974 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5774

cond.false.5745:                                  ; preds = %cond.false.5741
  %1975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15746 = bitcast %union.rec* %1975 to %struct.word_type*
  %olist5747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15746, i32 0, i32 0
  %arrayidx5748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5747, i32 0, i64 0
  %opred5749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5748, i32 0, i32 0
  %1976 = load %union.rec*, %union.rec** %opred5749, align 8
  store %union.rec* %1976, %union.rec** @zz_tmp, align 8
  %1977 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15750 = bitcast %union.rec* %1977 to %struct.word_type*
  %olist5751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15750, i32 0, i32 0
  %arrayidx5752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5751, i32 0, i64 0
  %opred5753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5752, i32 0, i32 0
  %1978 = load %union.rec*, %union.rec** %opred5753, align 8
  %1979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15754 = bitcast %union.rec* %1979 to %struct.word_type*
  %olist5755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15754, i32 0, i32 0
  %arrayidx5756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5755, i32 0, i64 0
  %opred5757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5756, i32 0, i32 0
  store %union.rec* %1978, %union.rec** %opred5757, align 8
  %1980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1981 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15758 = bitcast %union.rec* %1981 to %struct.word_type*
  %olist5759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15758, i32 0, i32 0
  %arrayidx5760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5759, i32 0, i64 0
  %opred5761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5760, i32 0, i32 0
  %1982 = load %union.rec*, %union.rec** %opred5761, align 8
  %os15762 = bitcast %union.rec* %1982 to %struct.word_type*
  %olist5763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15762, i32 0, i32 0
  %arrayidx5764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5763, i32 0, i64 0
  %osucc5765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5764, i32 0, i32 1
  store %union.rec* %1980, %union.rec** %osucc5765, align 8
  %1983 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1984 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15766 = bitcast %union.rec* %1984 to %struct.word_type*
  %olist5767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15766, i32 0, i32 0
  %arrayidx5768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5767, i32 0, i64 0
  %opred5769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5768, i32 0, i32 0
  store %union.rec* %1983, %union.rec** %opred5769, align 8
  %1985 = load %union.rec*, %union.rec** @zz_res, align 8
  %1986 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15770 = bitcast %union.rec* %1986 to %struct.word_type*
  %olist5771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15770, i32 0, i32 0
  %arrayidx5772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5771, i32 0, i64 0
  %osucc5773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5772, i32 0, i32 1
  store %union.rec* %1985, %union.rec** %osucc5773, align 8
  br label %cond.end.5774

cond.end.5774:                                    ; preds = %cond.false.5745, %cond.true.5744
  %cond5775 = phi %union.rec* [ %1974, %cond.true.5744 ], [ %1985, %cond.false.5745 ]
  br label %cond.end.5776

cond.end.5776:                                    ; preds = %cond.end.5774, %cond.true.5740
  %cond5777 = phi %union.rec* [ %1972, %cond.true.5740 ], [ %cond5775, %cond.end.5774 ]
  %1987 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1987, %union.rec** @zz_res, align 8
  %1988 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1988, %union.rec** @zz_hold, align 8
  %1989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5778 = icmp eq %union.rec* %1989, null
  br i1 %cmp5778, label %cond.true.5780, label %cond.false.5781

cond.true.5780:                                   ; preds = %cond.end.5776
  %1990 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5816

cond.false.5781:                                  ; preds = %cond.end.5776
  %1991 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5782 = icmp eq %union.rec* %1991, null
  br i1 %cmp5782, label %cond.true.5784, label %cond.false.5785

cond.true.5784:                                   ; preds = %cond.false.5781
  %1992 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5814

cond.false.5785:                                  ; preds = %cond.false.5781
  %1993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15786 = bitcast %union.rec* %1993 to %struct.word_type*
  %olist5787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15786, i32 0, i32 0
  %arrayidx5788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5787, i32 0, i64 1
  %opred5789 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5788, i32 0, i32 0
  %1994 = load %union.rec*, %union.rec** %opred5789, align 8
  store %union.rec* %1994, %union.rec** @zz_tmp, align 8
  %1995 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15790 = bitcast %union.rec* %1995 to %struct.word_type*
  %olist5791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15790, i32 0, i32 0
  %arrayidx5792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5791, i32 0, i64 1
  %opred5793 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5792, i32 0, i32 0
  %1996 = load %union.rec*, %union.rec** %opred5793, align 8
  %1997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15794 = bitcast %union.rec* %1997 to %struct.word_type*
  %olist5795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15794, i32 0, i32 0
  %arrayidx5796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5795, i32 0, i64 1
  %opred5797 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5796, i32 0, i32 0
  store %union.rec* %1996, %union.rec** %opred5797, align 8
  %1998 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1999 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15798 = bitcast %union.rec* %1999 to %struct.word_type*
  %olist5799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15798, i32 0, i32 0
  %arrayidx5800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5799, i32 0, i64 1
  %opred5801 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5800, i32 0, i32 0
  %2000 = load %union.rec*, %union.rec** %opred5801, align 8
  %os15802 = bitcast %union.rec* %2000 to %struct.word_type*
  %olist5803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15802, i32 0, i32 0
  %arrayidx5804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5803, i32 0, i64 1
  %osucc5805 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5804, i32 0, i32 1
  store %union.rec* %1998, %union.rec** %osucc5805, align 8
  %2001 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2002 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15806 = bitcast %union.rec* %2002 to %struct.word_type*
  %olist5807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15806, i32 0, i32 0
  %arrayidx5808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5807, i32 0, i64 1
  %opred5809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5808, i32 0, i32 0
  store %union.rec* %2001, %union.rec** %opred5809, align 8
  %2003 = load %union.rec*, %union.rec** @zz_res, align 8
  %2004 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15810 = bitcast %union.rec* %2004 to %struct.word_type*
  %olist5811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15810, i32 0, i32 0
  %arrayidx5812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5811, i32 0, i64 1
  %osucc5813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5812, i32 0, i32 1
  store %union.rec* %2003, %union.rec** %osucc5813, align 8
  br label %cond.end.5814

cond.end.5814:                                    ; preds = %cond.false.5785, %cond.true.5784
  %cond5815 = phi %union.rec* [ %1992, %cond.true.5784 ], [ %2003, %cond.false.5785 ]
  br label %cond.end.5816

cond.end.5816:                                    ; preds = %cond.end.5814, %cond.true.5780
  %cond5817 = phi %union.rec* [ %1990, %cond.true.5780 ], [ %cond5815, %cond.end.5814 ]
  %2005 = load %union.rec*, %union.rec** %llink3729, align 8
  store %union.rec* %2005, %union.rec** @xx_link, align 8
  %2006 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2006, %union.rec** @zz_hold, align 8
  %2007 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15818 = bitcast %union.rec* %2007 to %struct.word_type*
  %olist5819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15818, i32 0, i32 0
  %arrayidx5820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5819, i32 0, i64 0
  %osucc5821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5820, i32 0, i32 1
  %2008 = load %union.rec*, %union.rec** %osucc5821, align 8
  %2009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5822 = icmp eq %union.rec* %2008, %2009
  br i1 %cmp5822, label %cond.true.5824, label %cond.false.5825

cond.true.5824:                                   ; preds = %cond.end.5816
  br label %cond.end.5854

cond.false.5825:                                  ; preds = %cond.end.5816
  %2010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15826 = bitcast %union.rec* %2010 to %struct.word_type*
  %olist5827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15826, i32 0, i32 0
  %arrayidx5828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5827, i32 0, i64 0
  %osucc5829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5828, i32 0, i32 1
  %2011 = load %union.rec*, %union.rec** %osucc5829, align 8
  store %union.rec* %2011, %union.rec** @zz_res, align 8
  %2012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15830 = bitcast %union.rec* %2012 to %struct.word_type*
  %olist5831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15830, i32 0, i32 0
  %arrayidx5832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5831, i32 0, i64 0
  %opred5833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5832, i32 0, i32 0
  %2013 = load %union.rec*, %union.rec** %opred5833, align 8
  %2014 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15834 = bitcast %union.rec* %2014 to %struct.word_type*
  %olist5835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15834, i32 0, i32 0
  %arrayidx5836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5835, i32 0, i64 0
  %opred5837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5836, i32 0, i32 0
  store %union.rec* %2013, %union.rec** %opred5837, align 8
  %2015 = load %union.rec*, %union.rec** @zz_res, align 8
  %2016 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15838 = bitcast %union.rec* %2016 to %struct.word_type*
  %olist5839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15838, i32 0, i32 0
  %arrayidx5840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5839, i32 0, i64 0
  %opred5841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5840, i32 0, i32 0
  %2017 = load %union.rec*, %union.rec** %opred5841, align 8
  %os15842 = bitcast %union.rec* %2017 to %struct.word_type*
  %olist5843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15842, i32 0, i32 0
  %arrayidx5844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5843, i32 0, i64 0
  %osucc5845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5844, i32 0, i32 1
  store %union.rec* %2015, %union.rec** %osucc5845, align 8
  %2018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15846 = bitcast %union.rec* %2019 to %struct.word_type*
  %olist5847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15846, i32 0, i32 0
  %arrayidx5848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5847, i32 0, i64 0
  %osucc5849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5848, i32 0, i32 1
  store %union.rec* %2018, %union.rec** %osucc5849, align 8
  %2020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15850 = bitcast %union.rec* %2020 to %struct.word_type*
  %olist5851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15850, i32 0, i32 0
  %arrayidx5852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5851, i32 0, i64 0
  %opred5853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5852, i32 0, i32 0
  store %union.rec* %2018, %union.rec** %opred5853, align 8
  %2021 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5854

cond.end.5854:                                    ; preds = %cond.false.5825, %cond.true.5824
  %cond5855 = phi %union.rec* [ null, %cond.true.5824 ], [ %2021, %cond.false.5825 ]
  %2022 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2022, %union.rec** @zz_res, align 8
  %2023 = load %union.rec*, %union.rec** %res, align 8
  %os15856 = bitcast %union.rec* %2023 to %struct.word_type*
  %olist5857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15856, i32 0, i32 0
  %arrayidx5858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5857, i32 0, i64 0
  %osucc5859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5858, i32 0, i32 1
  %2024 = load %union.rec*, %union.rec** %osucc5859, align 8
  store %union.rec* %2024, %union.rec** @zz_hold, align 8
  %2025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5860 = icmp eq %union.rec* %2025, null
  br i1 %cmp5860, label %cond.true.5862, label %cond.false.5863

cond.true.5862:                                   ; preds = %cond.end.5854
  %2026 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5898

cond.false.5863:                                  ; preds = %cond.end.5854
  %2027 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5864 = icmp eq %union.rec* %2027, null
  br i1 %cmp5864, label %cond.true.5866, label %cond.false.5867

cond.true.5866:                                   ; preds = %cond.false.5863
  %2028 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5896

cond.false.5867:                                  ; preds = %cond.false.5863
  %2029 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15868 = bitcast %union.rec* %2029 to %struct.word_type*
  %olist5869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15868, i32 0, i32 0
  %arrayidx5870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5869, i32 0, i64 0
  %opred5871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5870, i32 0, i32 0
  %2030 = load %union.rec*, %union.rec** %opred5871, align 8
  store %union.rec* %2030, %union.rec** @zz_tmp, align 8
  %2031 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15872 = bitcast %union.rec* %2031 to %struct.word_type*
  %olist5873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15872, i32 0, i32 0
  %arrayidx5874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5873, i32 0, i64 0
  %opred5875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5874, i32 0, i32 0
  %2032 = load %union.rec*, %union.rec** %opred5875, align 8
  %2033 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15876 = bitcast %union.rec* %2033 to %struct.word_type*
  %olist5877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15876, i32 0, i32 0
  %arrayidx5878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5877, i32 0, i64 0
  %opred5879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5878, i32 0, i32 0
  store %union.rec* %2032, %union.rec** %opred5879, align 8
  %2034 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2035 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15880 = bitcast %union.rec* %2035 to %struct.word_type*
  %olist5881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15880, i32 0, i32 0
  %arrayidx5882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5881, i32 0, i64 0
  %opred5883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5882, i32 0, i32 0
  %2036 = load %union.rec*, %union.rec** %opred5883, align 8
  %os15884 = bitcast %union.rec* %2036 to %struct.word_type*
  %olist5885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15884, i32 0, i32 0
  %arrayidx5886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5885, i32 0, i64 0
  %osucc5887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5886, i32 0, i32 1
  store %union.rec* %2034, %union.rec** %osucc5887, align 8
  %2037 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2038 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15888 = bitcast %union.rec* %2038 to %struct.word_type*
  %olist5889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15888, i32 0, i32 0
  %arrayidx5890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5889, i32 0, i64 0
  %opred5891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5890, i32 0, i32 0
  store %union.rec* %2037, %union.rec** %opred5891, align 8
  %2039 = load %union.rec*, %union.rec** @zz_res, align 8
  %2040 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15892 = bitcast %union.rec* %2040 to %struct.word_type*
  %olist5893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15892, i32 0, i32 0
  %arrayidx5894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5893, i32 0, i64 0
  %osucc5895 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5894, i32 0, i32 1
  store %union.rec* %2039, %union.rec** %osucc5895, align 8
  br label %cond.end.5896

cond.end.5896:                                    ; preds = %cond.false.5867, %cond.true.5866
  %cond5897 = phi %union.rec* [ %2028, %cond.true.5866 ], [ %2039, %cond.false.5867 ]
  br label %cond.end.5898

cond.end.5898:                                    ; preds = %cond.end.5896, %cond.true.5862
  %cond5899 = phi %union.rec* [ %2026, %cond.true.5862 ], [ %cond5897, %cond.end.5896 ]
  %2041 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os15900 = bitcast %union.rec* %2041 to %struct.word_type*
  %ou25901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15900, i32 0, i32 2
  %os215902 = bitcast %union.SECOND_UNION* %ou25901 to %struct.anon.0*
  %ohspace5903 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os215902, i32 0, i32 1
  store i8 0, i8* %ohspace5903, align 1
  %2042 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os15904 = bitcast %union.rec* %2042 to %struct.word_type*
  %ou25905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15904, i32 0, i32 2
  %os215906 = bitcast %union.SECOND_UNION* %ou25905 to %struct.anon.0*
  %ovspace5907 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os215906, i32 0, i32 2
  store i8 1, i8* %ovspace5907, align 1
  %2043 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25908 = bitcast %union.rec* %2043 to %struct.closure_type*
  %ou45909 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25908, i32 0, i32 4
  %osave_style5910 = bitcast %union.FOURTH_UNION* %ou45909 to %struct.STYLE*
  %osu15911 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5910, i32 0, i32 0
  %oline_gap5912 = bitcast %union.anon* %osu15911 to %struct.GAP*
  %2044 = bitcast %struct.GAP* %oline_gap5912 to i16*
  %bf.load5913 = load i16, i16* %2044, align 4
  %bf.lshr5914 = lshr i16 %bf.load5913, 7
  %bf.clear5915 = and i16 %bf.lshr5914, 1
  %bf.cast5916 = zext i16 %bf.clear5915 to i32
  %2045 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55917 = bitcast %union.rec* %2045 to %struct.gapobj_type*
  %ogap5918 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55917, i32 0, i32 3
  %2046 = bitcast %struct.GAP* %ogap5918 to i16*
  %2047 = trunc i32 %bf.cast5916 to i16
  %bf.load5919 = load i16, i16* %2046, align 4
  %bf.value5920 = and i16 %2047, 1
  %bf.shl5921 = shl i16 %bf.value5920, 7
  %bf.clear5922 = and i16 %bf.load5919, -129
  %bf.set5923 = or i16 %bf.clear5922, %bf.shl5921
  store i16 %bf.set5923, i16* %2046, align 4
  %bf.result.cast5924 = zext i16 %bf.value5920 to i32
  %2048 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25925 = bitcast %union.rec* %2048 to %struct.closure_type*
  %ou45926 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25925, i32 0, i32 4
  %osave_style5927 = bitcast %union.FOURTH_UNION* %ou45926 to %struct.STYLE*
  %osu15928 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5927, i32 0, i32 0
  %oline_gap5929 = bitcast %union.anon* %osu15928 to %struct.GAP*
  %2049 = bitcast %struct.GAP* %oline_gap5929 to i16*
  %bf.load5930 = load i16, i16* %2049, align 4
  %bf.lshr5931 = lshr i16 %bf.load5930, 8
  %bf.clear5932 = and i16 %bf.lshr5931, 1
  %bf.cast5933 = zext i16 %bf.clear5932 to i32
  %2050 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55934 = bitcast %union.rec* %2050 to %struct.gapobj_type*
  %ogap5935 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55934, i32 0, i32 3
  %2051 = bitcast %struct.GAP* %ogap5935 to i16*
  %2052 = trunc i32 %bf.cast5933 to i16
  %bf.load5936 = load i16, i16* %2051, align 4
  %bf.value5937 = and i16 %2052, 1
  %bf.shl5938 = shl i16 %bf.value5937, 8
  %bf.clear5939 = and i16 %bf.load5936, -257
  %bf.set5940 = or i16 %bf.clear5939, %bf.shl5938
  store i16 %bf.set5940, i16* %2051, align 4
  %bf.result.cast5941 = zext i16 %bf.value5937 to i32
  %2053 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25942 = bitcast %union.rec* %2053 to %struct.closure_type*
  %ou45943 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25942, i32 0, i32 4
  %osave_style5944 = bitcast %union.FOURTH_UNION* %ou45943 to %struct.STYLE*
  %osu15945 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5944, i32 0, i32 0
  %oline_gap5946 = bitcast %union.anon* %osu15945 to %struct.GAP*
  %2054 = bitcast %struct.GAP* %oline_gap5946 to i16*
  %bf.load5947 = load i16, i16* %2054, align 4
  %bf.lshr5948 = lshr i16 %bf.load5947, 9
  %bf.clear5949 = and i16 %bf.lshr5948, 1
  %bf.cast5950 = zext i16 %bf.clear5949 to i32
  %2055 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55951 = bitcast %union.rec* %2055 to %struct.gapobj_type*
  %ogap5952 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55951, i32 0, i32 3
  %2056 = bitcast %struct.GAP* %ogap5952 to i16*
  %2057 = trunc i32 %bf.cast5950 to i16
  %bf.load5953 = load i16, i16* %2056, align 4
  %bf.value5954 = and i16 %2057, 1
  %bf.shl5955 = shl i16 %bf.value5954, 9
  %bf.clear5956 = and i16 %bf.load5953, -513
  %bf.set5957 = or i16 %bf.clear5956, %bf.shl5955
  store i16 %bf.set5957, i16* %2056, align 4
  %bf.result.cast5958 = zext i16 %bf.value5954 to i32
  %2058 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25959 = bitcast %union.rec* %2058 to %struct.closure_type*
  %ou45960 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25959, i32 0, i32 4
  %osave_style5961 = bitcast %union.FOURTH_UNION* %ou45960 to %struct.STYLE*
  %osu15962 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5961, i32 0, i32 0
  %oline_gap5963 = bitcast %union.anon* %osu15962 to %struct.GAP*
  %2059 = bitcast %struct.GAP* %oline_gap5963 to i16*
  %bf.load5964 = load i16, i16* %2059, align 4
  %bf.lshr5965 = lshr i16 %bf.load5964, 10
  %bf.clear5966 = and i16 %bf.lshr5965, 7
  %bf.cast5967 = zext i16 %bf.clear5966 to i32
  %2060 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55968 = bitcast %union.rec* %2060 to %struct.gapobj_type*
  %ogap5969 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55968, i32 0, i32 3
  %2061 = bitcast %struct.GAP* %ogap5969 to i16*
  %2062 = trunc i32 %bf.cast5967 to i16
  %bf.load5970 = load i16, i16* %2061, align 4
  %bf.value5971 = and i16 %2062, 7
  %bf.shl5972 = shl i16 %bf.value5971, 10
  %bf.clear5973 = and i16 %bf.load5970, -7169
  %bf.set5974 = or i16 %bf.clear5973, %bf.shl5972
  store i16 %bf.set5974, i16* %2061, align 4
  %bf.result.cast5975 = zext i16 %bf.value5971 to i32
  %2063 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25976 = bitcast %union.rec* %2063 to %struct.closure_type*
  %ou45977 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25976, i32 0, i32 4
  %osave_style5978 = bitcast %union.FOURTH_UNION* %ou45977 to %struct.STYLE*
  %osu15979 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5978, i32 0, i32 0
  %oline_gap5980 = bitcast %union.anon* %osu15979 to %struct.GAP*
  %2064 = bitcast %struct.GAP* %oline_gap5980 to i16*
  %bf.load5981 = load i16, i16* %2064, align 4
  %bf.lshr5982 = lshr i16 %bf.load5981, 13
  %bf.cast5983 = zext i16 %bf.lshr5982 to i32
  %2065 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55984 = bitcast %union.rec* %2065 to %struct.gapobj_type*
  %ogap5985 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55984, i32 0, i32 3
  %2066 = bitcast %struct.GAP* %ogap5985 to i16*
  %2067 = trunc i32 %bf.cast5983 to i16
  %bf.load5986 = load i16, i16* %2066, align 4
  %bf.value5987 = and i16 %2067, 7
  %bf.shl5988 = shl i16 %bf.value5987, 13
  %bf.clear5989 = and i16 %bf.load5986, 8191
  %bf.set5990 = or i16 %bf.clear5989, %bf.shl5988
  store i16 %bf.set5990, i16* %2066, align 4
  %bf.result.cast5991 = zext i16 %bf.value5987 to i32
  %2068 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25992 = bitcast %union.rec* %2068 to %struct.closure_type*
  %ou45993 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25992, i32 0, i32 4
  %osave_style5994 = bitcast %union.FOURTH_UNION* %ou45993 to %struct.STYLE*
  %osu15995 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5994, i32 0, i32 0
  %oline_gap5996 = bitcast %union.anon* %osu15995 to %struct.GAP*
  %owidth5997 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap5996, i32 0, i32 1
  %2069 = load i16, i16* %owidth5997, align 2
  %2070 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os55998 = bitcast %union.rec* %2070 to %struct.gapobj_type*
  %ogap5999 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os55998, i32 0, i32 3
  %owidth6000 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap5999, i32 0, i32 1
  store i16 %2069, i16* %owidth6000, align 2
  %2071 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os16001 = bitcast %union.rec* %2071 to %struct.word_type*
  %olist6002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16001, i32 0, i32 0
  %arrayidx6003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6002, i32 0, i64 0
  %osucc6004 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6003, i32 0, i32 1
  %2072 = load %union.rec*, %union.rec** %osucc6004, align 8
  %2073 = load %union.rec*, %union.rec** %lgap3727, align 8
  %cmp6005 = icmp ne %union.rec* %2072, %2073
  br i1 %cmp6005, label %if.then.6007, label %if.end.6135

if.then.6007:                                     ; preds = %cond.end.5898
  %2074 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os16008 = bitcast %union.rec* %2074 to %struct.word_type*
  %olist6009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16008, i32 0, i32 0
  %arrayidx6010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6009, i32 0, i64 0
  %osucc6011 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6010, i32 0, i32 1
  %2075 = load %union.rec*, %union.rec** %osucc6011, align 8
  store %union.rec* %2075, %union.rec** @xx_link, align 8
  %2076 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2076, %union.rec** @zz_hold, align 8
  %2077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16012 = bitcast %union.rec* %2077 to %struct.word_type*
  %olist6013 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16012, i32 0, i32 0
  %arrayidx6014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6013, i32 0, i64 1
  %osucc6015 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6014, i32 0, i32 1
  %2078 = load %union.rec*, %union.rec** %osucc6015, align 8
  %2079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6016 = icmp eq %union.rec* %2078, %2079
  br i1 %cmp6016, label %cond.true.6018, label %cond.false.6019

cond.true.6018:                                   ; preds = %if.then.6007
  br label %cond.end.6048

cond.false.6019:                                  ; preds = %if.then.6007
  %2080 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16020 = bitcast %union.rec* %2080 to %struct.word_type*
  %olist6021 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16020, i32 0, i32 0
  %arrayidx6022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6021, i32 0, i64 1
  %osucc6023 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6022, i32 0, i32 1
  %2081 = load %union.rec*, %union.rec** %osucc6023, align 8
  store %union.rec* %2081, %union.rec** @zz_res, align 8
  %2082 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16024 = bitcast %union.rec* %2082 to %struct.word_type*
  %olist6025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16024, i32 0, i32 0
  %arrayidx6026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6025, i32 0, i64 1
  %opred6027 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6026, i32 0, i32 0
  %2083 = load %union.rec*, %union.rec** %opred6027, align 8
  %2084 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16028 = bitcast %union.rec* %2084 to %struct.word_type*
  %olist6029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16028, i32 0, i32 0
  %arrayidx6030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6029, i32 0, i64 1
  %opred6031 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6030, i32 0, i32 0
  store %union.rec* %2083, %union.rec** %opred6031, align 8
  %2085 = load %union.rec*, %union.rec** @zz_res, align 8
  %2086 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16032 = bitcast %union.rec* %2086 to %struct.word_type*
  %olist6033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16032, i32 0, i32 0
  %arrayidx6034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6033, i32 0, i64 1
  %opred6035 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6034, i32 0, i32 0
  %2087 = load %union.rec*, %union.rec** %opred6035, align 8
  %os16036 = bitcast %union.rec* %2087 to %struct.word_type*
  %olist6037 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16036, i32 0, i32 0
  %arrayidx6038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6037, i32 0, i64 1
  %osucc6039 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6038, i32 0, i32 1
  store %union.rec* %2085, %union.rec** %osucc6039, align 8
  %2088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16040 = bitcast %union.rec* %2089 to %struct.word_type*
  %olist6041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16040, i32 0, i32 0
  %arrayidx6042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6041, i32 0, i64 1
  %osucc6043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6042, i32 0, i32 1
  store %union.rec* %2088, %union.rec** %osucc6043, align 8
  %2090 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16044 = bitcast %union.rec* %2090 to %struct.word_type*
  %olist6045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16044, i32 0, i32 0
  %arrayidx6046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6045, i32 0, i64 1
  %opred6047 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6046, i32 0, i32 0
  store %union.rec* %2088, %union.rec** %opred6047, align 8
  %2091 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6048

cond.end.6048:                                    ; preds = %cond.false.6019, %cond.true.6018
  %cond6049 = phi %union.rec* [ null, %cond.true.6018 ], [ %2091, %cond.false.6019 ]
  store %union.rec* %cond6049, %union.rec** @xx_tmp, align 8
  %2092 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2092, %union.rec** @zz_hold, align 8
  %2093 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16050 = bitcast %union.rec* %2093 to %struct.word_type*
  %olist6051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16050, i32 0, i32 0
  %arrayidx6052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6051, i32 0, i64 0
  %osucc6053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6052, i32 0, i32 1
  %2094 = load %union.rec*, %union.rec** %osucc6053, align 8
  %2095 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6054 = icmp eq %union.rec* %2094, %2095
  br i1 %cmp6054, label %cond.true.6056, label %cond.false.6057

cond.true.6056:                                   ; preds = %cond.end.6048
  br label %cond.end.6086

cond.false.6057:                                  ; preds = %cond.end.6048
  %2096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16058 = bitcast %union.rec* %2096 to %struct.word_type*
  %olist6059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16058, i32 0, i32 0
  %arrayidx6060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6059, i32 0, i64 0
  %osucc6061 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6060, i32 0, i32 1
  %2097 = load %union.rec*, %union.rec** %osucc6061, align 8
  store %union.rec* %2097, %union.rec** @zz_res, align 8
  %2098 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16062 = bitcast %union.rec* %2098 to %struct.word_type*
  %olist6063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16062, i32 0, i32 0
  %arrayidx6064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6063, i32 0, i64 0
  %opred6065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6064, i32 0, i32 0
  %2099 = load %union.rec*, %union.rec** %opred6065, align 8
  %2100 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16066 = bitcast %union.rec* %2100 to %struct.word_type*
  %olist6067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16066, i32 0, i32 0
  %arrayidx6068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6067, i32 0, i64 0
  %opred6069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6068, i32 0, i32 0
  store %union.rec* %2099, %union.rec** %opred6069, align 8
  %2101 = load %union.rec*, %union.rec** @zz_res, align 8
  %2102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16070 = bitcast %union.rec* %2102 to %struct.word_type*
  %olist6071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16070, i32 0, i32 0
  %arrayidx6072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6071, i32 0, i64 0
  %opred6073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6072, i32 0, i32 0
  %2103 = load %union.rec*, %union.rec** %opred6073, align 8
  %os16074 = bitcast %union.rec* %2103 to %struct.word_type*
  %olist6075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16074, i32 0, i32 0
  %arrayidx6076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6075, i32 0, i64 0
  %osucc6077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6076, i32 0, i32 1
  store %union.rec* %2101, %union.rec** %osucc6077, align 8
  %2104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16078 = bitcast %union.rec* %2105 to %struct.word_type*
  %olist6079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16078, i32 0, i32 0
  %arrayidx6080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6079, i32 0, i64 0
  %osucc6081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6080, i32 0, i32 1
  store %union.rec* %2104, %union.rec** %osucc6081, align 8
  %2106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16082 = bitcast %union.rec* %2106 to %struct.word_type*
  %olist6083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16082, i32 0, i32 0
  %arrayidx6084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6083, i32 0, i64 0
  %opred6085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6084, i32 0, i32 0
  store %union.rec* %2104, %union.rec** %opred6085, align 8
  %2107 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6086

cond.end.6086:                                    ; preds = %cond.false.6057, %cond.true.6056
  %cond6087 = phi %union.rec* [ null, %cond.true.6056 ], [ %2107, %cond.false.6057 ]
  %2108 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2108, %union.rec** @zz_hold, align 8
  %2109 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2109, %union.rec** @zz_hold, align 8
  %2110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16088 = bitcast %union.rec* %2110 to %struct.word_type*
  %ou16089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16088, i32 0, i32 1
  %os116090 = bitcast %union.FIRST_UNION* %ou16089 to %struct.anon*
  %otype6091 = getelementptr inbounds %struct.anon, %struct.anon* %os116090, i32 0, i32 0
  %2111 = load i8, i8* %otype6091, align 1
  %conv6092 = zext i8 %2111 to i32
  %cmp6093 = icmp eq i32 %conv6092, 11
  br i1 %cmp6093, label %cond.true.6103, label %lor.lhs.false.6095

lor.lhs.false.6095:                               ; preds = %cond.end.6086
  %2112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16096 = bitcast %union.rec* %2112 to %struct.word_type*
  %ou16097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16096, i32 0, i32 1
  %os116098 = bitcast %union.FIRST_UNION* %ou16097 to %struct.anon*
  %otype6099 = getelementptr inbounds %struct.anon, %struct.anon* %os116098, i32 0, i32 0
  %2113 = load i8, i8* %otype6099, align 1
  %conv6100 = zext i8 %2113 to i32
  %cmp6101 = icmp eq i32 %conv6100, 12
  br i1 %cmp6101, label %cond.true.6103, label %cond.false.6108

cond.true.6103:                                   ; preds = %lor.lhs.false.6095, %cond.end.6086
  %2114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16104 = bitcast %union.rec* %2114 to %struct.word_type*
  %ou16105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16104, i32 0, i32 1
  %os116106 = bitcast %union.FIRST_UNION* %ou16105 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os116106, i32 0, i32 1
  %2115 = load i8, i8* %orec_size, align 1
  %conv6107 = zext i8 %2115 to i32
  br label %cond.end.6116

cond.false.6108:                                  ; preds = %lor.lhs.false.6095
  %2116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16109 = bitcast %union.rec* %2116 to %struct.word_type*
  %ou16110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16109, i32 0, i32 1
  %os116111 = bitcast %union.FIRST_UNION* %ou16110 to %struct.anon*
  %otype6112 = getelementptr inbounds %struct.anon, %struct.anon* %os116111, i32 0, i32 0
  %2117 = load i8, i8* %otype6112, align 1
  %idxprom6113 = zext i8 %2117 to i64
  %arrayidx6114 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6113
  %2118 = load i8, i8* %arrayidx6114, align 1
  %conv6115 = zext i8 %2118 to i32
  br label %cond.end.6116

cond.end.6116:                                    ; preds = %cond.false.6108, %cond.true.6103
  %cond6117 = phi i32 [ %conv6107, %cond.true.6103 ], [ %conv6115, %cond.false.6108 ]
  store i32 %cond6117, i32* @zz_size, align 4
  %2119 = load i32, i32* @zz_size, align 4
  %idxprom6118 = sext i32 %2119 to i64
  %arrayidx6119 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6118
  %2120 = load %union.rec*, %union.rec** %arrayidx6119, align 8
  %2121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16120 = bitcast %union.rec* %2121 to %struct.word_type*
  %olist6121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16120, i32 0, i32 0
  %arrayidx6122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6121, i32 0, i64 0
  %opred6123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6122, i32 0, i32 0
  store %union.rec* %2120, %union.rec** %opred6123, align 8
  %2122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2123 = load i32, i32* @zz_size, align 4
  %idxprom6124 = sext i32 %2123 to i64
  %arrayidx6125 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6124
  store %union.rec* %2122, %union.rec** %arrayidx6125, align 8
  %2124 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os16126 = bitcast %union.rec* %2124 to %struct.word_type*
  %olist6127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16126, i32 0, i32 0
  %arrayidx6128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6127, i32 0, i64 1
  %osucc6129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6128, i32 0, i32 1
  %2125 = load %union.rec*, %union.rec** %osucc6129, align 8
  %2126 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp6130 = icmp eq %union.rec* %2125, %2126
  br i1 %cmp6130, label %if.then.6132, label %if.end.6134

if.then.6132:                                     ; preds = %cond.end.6116
  %2127 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call6133 = call i32 @DisposeObject(%union.rec* %2127)
  br label %if.end.6134

if.end.6134:                                      ; preds = %if.then.6132, %cond.end.6116
  br label %if.end.6135

if.end.6135:                                      ; preds = %if.end.6134, %cond.end.5898
  %2128 = load %union.rec*, %union.rec** %lgap3727, align 8
  %os56136 = bitcast %union.rec* %2128 to %struct.gapobj_type*
  %osave_prev6137 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os56136, i32 0, i32 7
  %2129 = load %union.rec*, %union.rec** %osave_prev6137, align 8
  store %union.rec* %2129, %union.rec** %llink3729, align 8
  br label %while.cond.3869

while.end.6138:                                   ; preds = %while.cond.3869
  %2130 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv6139 = zext i8 %2130 to i32
  store i32 %conv6139, i32* @zz_size, align 4
  %conv6140 = sext i32 %conv6139 to i64
  %cmp6141 = icmp uge i64 %conv6140, 265
  br i1 %cmp6141, label %if.then.6143, label %if.else.6145

if.then.6143:                                     ; preds = %while.end.6138
  %2131 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6144 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %2131)
  br label %if.end.6162

if.else.6145:                                     ; preds = %while.end.6138
  %2132 = load i32, i32* @zz_size, align 4
  %idxprom6146 = sext i32 %2132 to i64
  %arrayidx6147 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6146
  %2133 = load %union.rec*, %union.rec** %arrayidx6147, align 8
  %cmp6148 = icmp eq %union.rec* %2133, null
  br i1 %cmp6148, label %if.then.6150, label %if.else.6152

if.then.6150:                                     ; preds = %if.else.6145
  %2134 = load i32, i32* @zz_size, align 4
  %2135 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6151 = call %union.rec* @GetMemory(i32 %2134, %struct.FILE_POS* %2135)
  store %union.rec* %call6151, %union.rec** @zz_hold, align 8
  br label %if.end.6161

if.else.6152:                                     ; preds = %if.else.6145
  %2136 = load i32, i32* @zz_size, align 4
  %idxprom6153 = sext i32 %2136 to i64
  %arrayidx6154 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6153
  %2137 = load %union.rec*, %union.rec** %arrayidx6154, align 8
  store %union.rec* %2137, %union.rec** @zz_hold, align 8
  store %union.rec* %2137, %union.rec** @zz_hold, align 8
  %2138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16155 = bitcast %union.rec* %2138 to %struct.word_type*
  %olist6156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16155, i32 0, i32 0
  %arrayidx6157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6156, i32 0, i64 0
  %opred6158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6157, i32 0, i32 0
  %2139 = load %union.rec*, %union.rec** %opred6158, align 8
  %2140 = load i32, i32* @zz_size, align 4
  %idxprom6159 = sext i32 %2140 to i64
  %arrayidx6160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6159
  store %union.rec* %2139, %union.rec** %arrayidx6160, align 8
  br label %if.end.6161

if.end.6161:                                      ; preds = %if.else.6152, %if.then.6150
  br label %if.end.6162

if.end.6162:                                      ; preds = %if.end.6161, %if.then.6143
  %2141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16163 = bitcast %union.rec* %2141 to %struct.word_type*
  %ou16164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16163, i32 0, i32 1
  %os116165 = bitcast %union.FIRST_UNION* %ou16164 to %struct.anon*
  %otype6166 = getelementptr inbounds %struct.anon, %struct.anon* %os116165, i32 0, i32 0
  store i8 0, i8* %otype6166, align 1
  %2142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16167 = bitcast %union.rec* %2143 to %struct.word_type*
  %olist6168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16167, i32 0, i32 0
  %arrayidx6169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6168, i32 0, i64 1
  %osucc6170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6169, i32 0, i32 1
  store %union.rec* %2142, %union.rec** %osucc6170, align 8
  %2144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16171 = bitcast %union.rec* %2144 to %struct.word_type*
  %olist6172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16171, i32 0, i32 0
  %arrayidx6173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6172, i32 0, i64 1
  %opred6174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6173, i32 0, i32 0
  store %union.rec* %2142, %union.rec** %opred6174, align 8
  %2145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16175 = bitcast %union.rec* %2145 to %struct.word_type*
  %olist6176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16175, i32 0, i32 0
  %arrayidx6177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6176, i32 0, i64 0
  %osucc6178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6177, i32 0, i32 1
  store %union.rec* %2142, %union.rec** %osucc6178, align 8
  %2146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16179 = bitcast %union.rec* %2146 to %struct.word_type*
  %olist6180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16179, i32 0, i32 0
  %arrayidx6181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6180, i32 0, i64 0
  %opred6182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6181, i32 0, i32 0
  store %union.rec* %2142, %union.rec** %opred6182, align 8
  store %union.rec* %2142, %union.rec** @xx_link, align 8
  %2147 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2147, %union.rec** @zz_res, align 8
  %2148 = load %union.rec*, %union.rec** %res, align 8
  %os16183 = bitcast %union.rec* %2148 to %struct.word_type*
  %olist6184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16183, i32 0, i32 0
  %arrayidx6185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6184, i32 0, i64 0
  %osucc6186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6185, i32 0, i32 1
  %2149 = load %union.rec*, %union.rec** %osucc6186, align 8
  store %union.rec* %2149, %union.rec** @zz_hold, align 8
  %2150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6187 = icmp eq %union.rec* %2150, null
  br i1 %cmp6187, label %cond.true.6189, label %cond.false.6190

cond.true.6189:                                   ; preds = %if.end.6162
  %2151 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6225

cond.false.6190:                                  ; preds = %if.end.6162
  %2152 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp6191 = icmp eq %union.rec* %2152, null
  br i1 %cmp6191, label %cond.true.6193, label %cond.false.6194

cond.true.6193:                                   ; preds = %cond.false.6190
  %2153 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.6223

cond.false.6194:                                  ; preds = %cond.false.6190
  %2154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16195 = bitcast %union.rec* %2154 to %struct.word_type*
  %olist6196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16195, i32 0, i32 0
  %arrayidx6197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6196, i32 0, i64 0
  %opred6198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6197, i32 0, i32 0
  %2155 = load %union.rec*, %union.rec** %opred6198, align 8
  store %union.rec* %2155, %union.rec** @zz_tmp, align 8
  %2156 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16199 = bitcast %union.rec* %2156 to %struct.word_type*
  %olist6200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16199, i32 0, i32 0
  %arrayidx6201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6200, i32 0, i64 0
  %opred6202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6201, i32 0, i32 0
  %2157 = load %union.rec*, %union.rec** %opred6202, align 8
  %2158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16203 = bitcast %union.rec* %2158 to %struct.word_type*
  %olist6204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16203, i32 0, i32 0
  %arrayidx6205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6204, i32 0, i64 0
  %opred6206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6205, i32 0, i32 0
  store %union.rec* %2157, %union.rec** %opred6206, align 8
  %2159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2160 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16207 = bitcast %union.rec* %2160 to %struct.word_type*
  %olist6208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16207, i32 0, i32 0
  %arrayidx6209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6208, i32 0, i64 0
  %opred6210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6209, i32 0, i32 0
  %2161 = load %union.rec*, %union.rec** %opred6210, align 8
  %os16211 = bitcast %union.rec* %2161 to %struct.word_type*
  %olist6212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16211, i32 0, i32 0
  %arrayidx6213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6212, i32 0, i64 0
  %osucc6214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6213, i32 0, i32 1
  store %union.rec* %2159, %union.rec** %osucc6214, align 8
  %2162 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2163 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16215 = bitcast %union.rec* %2163 to %struct.word_type*
  %olist6216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16215, i32 0, i32 0
  %arrayidx6217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6216, i32 0, i64 0
  %opred6218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6217, i32 0, i32 0
  store %union.rec* %2162, %union.rec** %opred6218, align 8
  %2164 = load %union.rec*, %union.rec** @zz_res, align 8
  %2165 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os16219 = bitcast %union.rec* %2165 to %struct.word_type*
  %olist6220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16219, i32 0, i32 0
  %arrayidx6221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6220, i32 0, i64 0
  %osucc6222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6221, i32 0, i32 1
  store %union.rec* %2164, %union.rec** %osucc6222, align 8
  br label %cond.end.6223

cond.end.6223:                                    ; preds = %cond.false.6194, %cond.true.6193
  %cond6224 = phi %union.rec* [ %2153, %cond.true.6193 ], [ %2164, %cond.false.6194 ]
  br label %cond.end.6225

cond.end.6225:                                    ; preds = %cond.end.6223, %cond.true.6189
  %cond6226 = phi %union.rec* [ %2151, %cond.true.6189 ], [ %cond6224, %cond.end.6223 ]
  %2166 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2166, %union.rec** @zz_res, align 8
  %2167 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %2167, %union.rec** @zz_hold, align 8
  %2168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6227 = icmp eq %union.rec* %2168, null
  br i1 %cmp6227, label %cond.true.6229, label %cond.false.6230

cond.true.6229:                                   ; preds = %cond.end.6225
  %2169 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6265

cond.false.6230:                                  ; preds = %cond.end.6225
  %2170 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp6231 = icmp eq %union.rec* %2170, null
  br i1 %cmp6231, label %cond.true.6233, label %cond.false.6234

cond.true.6233:                                   ; preds = %cond.false.6230
  %2171 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.6263

cond.false.6234:                                  ; preds = %cond.false.6230
  %2172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16235 = bitcast %union.rec* %2172 to %struct.word_type*
  %olist6236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16235, i32 0, i32 0
  %arrayidx6237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6236, i32 0, i64 1
  %opred6238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6237, i32 0, i32 0
  %2173 = load %union.rec*, %union.rec** %opred6238, align 8
  store %union.rec* %2173, %union.rec** @zz_tmp, align 8
  %2174 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16239 = bitcast %union.rec* %2174 to %struct.word_type*
  %olist6240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16239, i32 0, i32 0
  %arrayidx6241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6240, i32 0, i64 1
  %opred6242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6241, i32 0, i32 0
  %2175 = load %union.rec*, %union.rec** %opred6242, align 8
  %2176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16243 = bitcast %union.rec* %2176 to %struct.word_type*
  %olist6244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16243, i32 0, i32 0
  %arrayidx6245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6244, i32 0, i64 1
  %opred6246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6245, i32 0, i32 0
  store %union.rec* %2175, %union.rec** %opred6246, align 8
  %2177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2178 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16247 = bitcast %union.rec* %2178 to %struct.word_type*
  %olist6248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16247, i32 0, i32 0
  %arrayidx6249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6248, i32 0, i64 1
  %opred6250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6249, i32 0, i32 0
  %2179 = load %union.rec*, %union.rec** %opred6250, align 8
  %os16251 = bitcast %union.rec* %2179 to %struct.word_type*
  %olist6252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16251, i32 0, i32 0
  %arrayidx6253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6252, i32 0, i64 1
  %osucc6254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6253, i32 0, i32 1
  store %union.rec* %2177, %union.rec** %osucc6254, align 8
  %2180 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2181 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16255 = bitcast %union.rec* %2181 to %struct.word_type*
  %olist6256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16255, i32 0, i32 0
  %arrayidx6257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6256, i32 0, i64 1
  %opred6258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6257, i32 0, i32 0
  store %union.rec* %2180, %union.rec** %opred6258, align 8
  %2182 = load %union.rec*, %union.rec** @zz_res, align 8
  %2183 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os16259 = bitcast %union.rec* %2183 to %struct.word_type*
  %olist6260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16259, i32 0, i32 0
  %arrayidx6261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6260, i32 0, i64 1
  %osucc6262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6261, i32 0, i32 1
  store %union.rec* %2182, %union.rec** %osucc6262, align 8
  br label %cond.end.6263

cond.end.6263:                                    ; preds = %cond.false.6234, %cond.true.6233
  %cond6264 = phi %union.rec* [ %2171, %cond.true.6233 ], [ %2182, %cond.false.6234 ]
  br label %cond.end.6265

cond.end.6265:                                    ; preds = %cond.end.6263, %cond.true.6229
  %cond6266 = phi %union.rec* [ %2169, %cond.true.6229 ], [ %cond6264, %cond.end.6263 ]
  %2184 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16267 = bitcast %union.rec* %2184 to %struct.word_type*
  %ou36268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16267, i32 0, i32 3
  %os316269 = bitcast %union.THIRD_UNION* %ou36268 to %struct.anon.6*
  %oback6270 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os316269, i32 0, i32 0
  %arrayidx6271 = getelementptr inbounds [2 x i32], [2 x i32]* %oback6270, i32 0, i64 0
  store i32 0, i32* %arrayidx6271, align 4
  %2185 = load i32, i32* %max_width, align 4
  %2186 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16272 = bitcast %union.rec* %2186 to %struct.word_type*
  %ou36273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16272, i32 0, i32 3
  %os316274 = bitcast %union.THIRD_UNION* %ou36273 to %struct.anon.6*
  %ofwd6275 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os316274, i32 0, i32 1
  %arrayidx6276 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd6275, i32 0, i64 0
  store i32 %2185, i32* %arrayidx6276, align 4
  %2187 = load %union.rec*, %union.rec** %x.addr, align 8
  %os26277 = bitcast %union.rec* %2187 to %struct.closure_type*
  %ou46278 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26277, i32 0, i32 4
  %osave_style6279 = bitcast %union.FOURTH_UNION* %ou46278 to %struct.STYLE*
  %osu26280 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6279, i32 0, i32 1
  %oss26281 = bitcast %union.anon.10* %osu26280 to %struct.anon.11*
  %2188 = bitcast %struct.anon.11* %oss26281 to i8*
  %bf.load6282 = load i8, i8* %2188, align 4
  %bf.lshr6283 = lshr i8 %bf.load6282, 4
  %bf.clear6284 = and i8 %bf.lshr6283, 7
  %bf.cast6285 = zext i8 %bf.clear6284 to i32
  %cmp6286 = icmp eq i32 %bf.cast6285, 1
  br i1 %cmp6286, label %if.then.6300, label %lor.lhs.false.6288

lor.lhs.false.6288:                               ; preds = %cond.end.6265
  %2189 = load %union.rec*, %union.rec** %x.addr, align 8
  %os26289 = bitcast %union.rec* %2189 to %struct.closure_type*
  %ou46290 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26289, i32 0, i32 4
  %osave_style6291 = bitcast %union.FOURTH_UNION* %ou46290 to %struct.STYLE*
  %osu26292 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6291, i32 0, i32 1
  %oss26293 = bitcast %union.anon.10* %osu26292 to %struct.anon.11*
  %2190 = bitcast %struct.anon.11* %oss26293 to i8*
  %bf.load6294 = load i8, i8* %2190, align 4
  %bf.lshr6295 = lshr i8 %bf.load6294, 4
  %bf.clear6296 = and i8 %bf.lshr6295, 7
  %bf.cast6297 = zext i8 %bf.clear6296 to i32
  %cmp6298 = icmp eq i32 %bf.cast6297, 2
  br i1 %cmp6298, label %if.then.6300, label %if.end.6309

if.then.6300:                                     ; preds = %lor.lhs.false.6288, %cond.end.6265
  %2191 = load %union.rec*, %union.rec** %x.addr, align 8
  %os26301 = bitcast %union.rec* %2191 to %struct.closure_type*
  %ou46302 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26301, i32 0, i32 4
  %osave_style6303 = bitcast %union.FOURTH_UNION* %ou46302 to %struct.STYLE*
  %osu26304 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6303, i32 0, i32 1
  %oss26305 = bitcast %union.anon.10* %osu26304 to %struct.anon.11*
  %2192 = bitcast %struct.anon.11* %oss26305 to i8*
  %bf.load6306 = load i8, i8* %2192, align 4
  %bf.clear6307 = and i8 %bf.load6306, -113
  %bf.set6308 = or i8 %bf.clear6307, 112
  store i8 %bf.set6308, i8* %2192, align 4
  br label %if.end.6309

if.end.6309:                                      ; preds = %if.then.6300, %lor.lhs.false.6288
  %2193 = load %union.rec*, %union.rec** %res, align 8
  %os16310 = bitcast %union.rec* %2193 to %struct.word_type*
  %olist6311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16310, i32 0, i32 0
  %arrayidx6312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6311, i32 0, i64 0
  %opred6313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6312, i32 0, i32 0
  %2194 = load %union.rec*, %union.rec** %opred6313, align 8
  %os16314 = bitcast %union.rec* %2194 to %struct.word_type*
  %olist6315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16314, i32 0, i32 0
  %arrayidx6316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6315, i32 0, i64 1
  %opred6317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6316, i32 0, i32 0
  %2195 = load %union.rec*, %union.rec** %opred6317, align 8
  store %union.rec* %2195, %union.rec** %y, align 8
  br label %for.cond.6318

for.cond.6318:                                    ; preds = %for.inc.6327, %if.end.6309
  %2196 = load %union.rec*, %union.rec** %y, align 8
  %os16319 = bitcast %union.rec* %2196 to %struct.word_type*
  %ou16320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16319, i32 0, i32 1
  %os116321 = bitcast %union.FIRST_UNION* %ou16320 to %struct.anon*
  %otype6322 = getelementptr inbounds %struct.anon, %struct.anon* %os116321, i32 0, i32 0
  %2197 = load i8, i8* %otype6322, align 1
  %conv6323 = zext i8 %2197 to i32
  %cmp6324 = icmp eq i32 %conv6323, 0
  br i1 %cmp6324, label %for.body.6326, label %for.end.6332

for.body.6326:                                    ; preds = %for.cond.6318
  br label %for.inc.6327

for.inc.6327:                                     ; preds = %for.body.6326
  %2198 = load %union.rec*, %union.rec** %y, align 8
  %os16328 = bitcast %union.rec* %2198 to %struct.word_type*
  %olist6329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16328, i32 0, i32 0
  %arrayidx6330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6329, i32 0, i64 1
  %opred6331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6330, i32 0, i32 0
  %2199 = load %union.rec*, %union.rec** %opred6331, align 8
  store %union.rec* %2199, %union.rec** %y, align 8
  br label %for.cond.6318

for.end.6332:                                     ; preds = %for.cond.6318
  %2200 = load %union.rec*, %union.rec** %y, align 8
  %os16333 = bitcast %union.rec* %2200 to %struct.word_type*
  %olist6334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16333, i32 0, i32 0
  %arrayidx6335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6334, i32 0, i64 0
  %osucc6336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6335, i32 0, i32 1
  %2201 = load %union.rec*, %union.rec** %osucc6336, align 8
  %2202 = load %union.rec*, %union.rec** %y, align 8
  %os16337 = bitcast %union.rec* %2202 to %struct.word_type*
  %olist6338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16337, i32 0, i32 0
  %arrayidx6339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6338, i32 0, i64 0
  %opred6340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6339, i32 0, i32 0
  %2203 = load %union.rec*, %union.rec** %opred6340, align 8
  %cmp6341 = icmp eq %union.rec* %2201, %2203
  br i1 %cmp6341, label %if.then.6343, label %if.else.6613

if.then.6343:                                     ; preds = %for.end.6332
  %2204 = load %union.rec*, %union.rec** %res, align 8
  %os16344 = bitcast %union.rec* %2204 to %struct.word_type*
  %olist6345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16344, i32 0, i32 0
  %arrayidx6346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6345, i32 0, i64 0
  %opred6347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6346, i32 0, i32 0
  %2205 = load %union.rec*, %union.rec** %opred6347, align 8
  store %union.rec* %2205, %union.rec** @xx_link, align 8
  %2206 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2206, %union.rec** @zz_hold, align 8
  %2207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16348 = bitcast %union.rec* %2207 to %struct.word_type*
  %olist6349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16348, i32 0, i32 0
  %arrayidx6350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6349, i32 0, i64 1
  %osucc6351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6350, i32 0, i32 1
  %2208 = load %union.rec*, %union.rec** %osucc6351, align 8
  %2209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6352 = icmp eq %union.rec* %2208, %2209
  br i1 %cmp6352, label %cond.true.6354, label %cond.false.6355

cond.true.6354:                                   ; preds = %if.then.6343
  br label %cond.end.6384

cond.false.6355:                                  ; preds = %if.then.6343
  %2210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16356 = bitcast %union.rec* %2210 to %struct.word_type*
  %olist6357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16356, i32 0, i32 0
  %arrayidx6358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6357, i32 0, i64 1
  %osucc6359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6358, i32 0, i32 1
  %2211 = load %union.rec*, %union.rec** %osucc6359, align 8
  store %union.rec* %2211, %union.rec** @zz_res, align 8
  %2212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16360 = bitcast %union.rec* %2212 to %struct.word_type*
  %olist6361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16360, i32 0, i32 0
  %arrayidx6362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6361, i32 0, i64 1
  %opred6363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6362, i32 0, i32 0
  %2213 = load %union.rec*, %union.rec** %opred6363, align 8
  %2214 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16364 = bitcast %union.rec* %2214 to %struct.word_type*
  %olist6365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16364, i32 0, i32 0
  %arrayidx6366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6365, i32 0, i64 1
  %opred6367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6366, i32 0, i32 0
  store %union.rec* %2213, %union.rec** %opred6367, align 8
  %2215 = load %union.rec*, %union.rec** @zz_res, align 8
  %2216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16368 = bitcast %union.rec* %2216 to %struct.word_type*
  %olist6369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16368, i32 0, i32 0
  %arrayidx6370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6369, i32 0, i64 1
  %opred6371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6370, i32 0, i32 0
  %2217 = load %union.rec*, %union.rec** %opred6371, align 8
  %os16372 = bitcast %union.rec* %2217 to %struct.word_type*
  %olist6373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16372, i32 0, i32 0
  %arrayidx6374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6373, i32 0, i64 1
  %osucc6375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6374, i32 0, i32 1
  store %union.rec* %2215, %union.rec** %osucc6375, align 8
  %2218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16376 = bitcast %union.rec* %2219 to %struct.word_type*
  %olist6377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16376, i32 0, i32 0
  %arrayidx6378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6377, i32 0, i64 1
  %osucc6379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6378, i32 0, i32 1
  store %union.rec* %2218, %union.rec** %osucc6379, align 8
  %2220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16380 = bitcast %union.rec* %2220 to %struct.word_type*
  %olist6381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16380, i32 0, i32 0
  %arrayidx6382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6381, i32 0, i64 1
  %opred6383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6382, i32 0, i32 0
  store %union.rec* %2218, %union.rec** %opred6383, align 8
  %2221 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6384

cond.end.6384:                                    ; preds = %cond.false.6355, %cond.true.6354
  %cond6385 = phi %union.rec* [ null, %cond.true.6354 ], [ %2221, %cond.false.6355 ]
  store %union.rec* %cond6385, %union.rec** @xx_tmp, align 8
  %2222 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2222, %union.rec** @zz_hold, align 8
  %2223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16386 = bitcast %union.rec* %2223 to %struct.word_type*
  %olist6387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16386, i32 0, i32 0
  %arrayidx6388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6387, i32 0, i64 0
  %osucc6389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6388, i32 0, i32 1
  %2224 = load %union.rec*, %union.rec** %osucc6389, align 8
  %2225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6390 = icmp eq %union.rec* %2224, %2225
  br i1 %cmp6390, label %cond.true.6392, label %cond.false.6393

cond.true.6392:                                   ; preds = %cond.end.6384
  br label %cond.end.6422

cond.false.6393:                                  ; preds = %cond.end.6384
  %2226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16394 = bitcast %union.rec* %2226 to %struct.word_type*
  %olist6395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16394, i32 0, i32 0
  %arrayidx6396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6395, i32 0, i64 0
  %osucc6397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6396, i32 0, i32 1
  %2227 = load %union.rec*, %union.rec** %osucc6397, align 8
  store %union.rec* %2227, %union.rec** @zz_res, align 8
  %2228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16398 = bitcast %union.rec* %2228 to %struct.word_type*
  %olist6399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16398, i32 0, i32 0
  %arrayidx6400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6399, i32 0, i64 0
  %opred6401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6400, i32 0, i32 0
  %2229 = load %union.rec*, %union.rec** %opred6401, align 8
  %2230 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16402 = bitcast %union.rec* %2230 to %struct.word_type*
  %olist6403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16402, i32 0, i32 0
  %arrayidx6404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6403, i32 0, i64 0
  %opred6405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6404, i32 0, i32 0
  store %union.rec* %2229, %union.rec** %opred6405, align 8
  %2231 = load %union.rec*, %union.rec** @zz_res, align 8
  %2232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16406 = bitcast %union.rec* %2232 to %struct.word_type*
  %olist6407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16406, i32 0, i32 0
  %arrayidx6408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6407, i32 0, i64 0
  %opred6409 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6408, i32 0, i32 0
  %2233 = load %union.rec*, %union.rec** %opred6409, align 8
  %os16410 = bitcast %union.rec* %2233 to %struct.word_type*
  %olist6411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16410, i32 0, i32 0
  %arrayidx6412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6411, i32 0, i64 0
  %osucc6413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6412, i32 0, i32 1
  store %union.rec* %2231, %union.rec** %osucc6413, align 8
  %2234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16414 = bitcast %union.rec* %2235 to %struct.word_type*
  %olist6415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16414, i32 0, i32 0
  %arrayidx6416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6415, i32 0, i64 0
  %osucc6417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6416, i32 0, i32 1
  store %union.rec* %2234, %union.rec** %osucc6417, align 8
  %2236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16418 = bitcast %union.rec* %2236 to %struct.word_type*
  %olist6419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16418, i32 0, i32 0
  %arrayidx6420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6419, i32 0, i64 0
  %opred6421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6420, i32 0, i32 0
  store %union.rec* %2234, %union.rec** %opred6421, align 8
  %2237 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6422

cond.end.6422:                                    ; preds = %cond.false.6393, %cond.true.6392
  %cond6423 = phi %union.rec* [ null, %cond.true.6392 ], [ %2237, %cond.false.6393 ]
  %2238 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2238, %union.rec** @zz_hold, align 8
  %2239 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2239, %union.rec** @zz_hold, align 8
  %2240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16424 = bitcast %union.rec* %2240 to %struct.word_type*
  %ou16425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16424, i32 0, i32 1
  %os116426 = bitcast %union.FIRST_UNION* %ou16425 to %struct.anon*
  %otype6427 = getelementptr inbounds %struct.anon, %struct.anon* %os116426, i32 0, i32 0
  %2241 = load i8, i8* %otype6427, align 1
  %conv6428 = zext i8 %2241 to i32
  %cmp6429 = icmp eq i32 %conv6428, 11
  br i1 %cmp6429, label %cond.true.6439, label %lor.lhs.false.6431

lor.lhs.false.6431:                               ; preds = %cond.end.6422
  %2242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16432 = bitcast %union.rec* %2242 to %struct.word_type*
  %ou16433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16432, i32 0, i32 1
  %os116434 = bitcast %union.FIRST_UNION* %ou16433 to %struct.anon*
  %otype6435 = getelementptr inbounds %struct.anon, %struct.anon* %os116434, i32 0, i32 0
  %2243 = load i8, i8* %otype6435, align 1
  %conv6436 = zext i8 %2243 to i32
  %cmp6437 = icmp eq i32 %conv6436, 12
  br i1 %cmp6437, label %cond.true.6439, label %cond.false.6445

cond.true.6439:                                   ; preds = %lor.lhs.false.6431, %cond.end.6422
  %2244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16440 = bitcast %union.rec* %2244 to %struct.word_type*
  %ou16441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16440, i32 0, i32 1
  %os116442 = bitcast %union.FIRST_UNION* %ou16441 to %struct.anon*
  %orec_size6443 = getelementptr inbounds %struct.anon, %struct.anon* %os116442, i32 0, i32 1
  %2245 = load i8, i8* %orec_size6443, align 1
  %conv6444 = zext i8 %2245 to i32
  br label %cond.end.6453

cond.false.6445:                                  ; preds = %lor.lhs.false.6431
  %2246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16446 = bitcast %union.rec* %2246 to %struct.word_type*
  %ou16447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16446, i32 0, i32 1
  %os116448 = bitcast %union.FIRST_UNION* %ou16447 to %struct.anon*
  %otype6449 = getelementptr inbounds %struct.anon, %struct.anon* %os116448, i32 0, i32 0
  %2247 = load i8, i8* %otype6449, align 1
  %idxprom6450 = zext i8 %2247 to i64
  %arrayidx6451 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6450
  %2248 = load i8, i8* %arrayidx6451, align 1
  %conv6452 = zext i8 %2248 to i32
  br label %cond.end.6453

cond.end.6453:                                    ; preds = %cond.false.6445, %cond.true.6439
  %cond6454 = phi i32 [ %conv6444, %cond.true.6439 ], [ %conv6452, %cond.false.6445 ]
  store i32 %cond6454, i32* @zz_size, align 4
  %2249 = load i32, i32* @zz_size, align 4
  %idxprom6455 = sext i32 %2249 to i64
  %arrayidx6456 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6455
  %2250 = load %union.rec*, %union.rec** %arrayidx6456, align 8
  %2251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16457 = bitcast %union.rec* %2251 to %struct.word_type*
  %olist6458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16457, i32 0, i32 0
  %arrayidx6459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6458, i32 0, i64 0
  %opred6460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6459, i32 0, i32 0
  store %union.rec* %2250, %union.rec** %opred6460, align 8
  %2252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2253 = load i32, i32* @zz_size, align 4
  %idxprom6461 = sext i32 %2253 to i64
  %arrayidx6462 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6461
  store %union.rec* %2252, %union.rec** %arrayidx6462, align 8
  %2254 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os16463 = bitcast %union.rec* %2254 to %struct.word_type*
  %olist6464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16463, i32 0, i32 0
  %arrayidx6465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6464, i32 0, i64 1
  %osucc6466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6465, i32 0, i32 1
  %2255 = load %union.rec*, %union.rec** %osucc6466, align 8
  %2256 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp6467 = icmp eq %union.rec* %2255, %2256
  br i1 %cmp6467, label %if.then.6469, label %if.end.6471

if.then.6469:                                     ; preds = %cond.end.6453
  %2257 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call6470 = call i32 @DisposeObject(%union.rec* %2257)
  br label %if.end.6471

if.end.6471:                                      ; preds = %if.then.6469, %cond.end.6453
  %2258 = load %union.rec*, %union.rec** %res, align 8
  %os16472 = bitcast %union.rec* %2258 to %struct.word_type*
  %olist6473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16472, i32 0, i32 0
  %arrayidx6474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6473, i32 0, i64 0
  %osucc6475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6474, i32 0, i32 1
  %2259 = load %union.rec*, %union.rec** %osucc6475, align 8
  %2260 = load %union.rec*, %union.rec** %res, align 8
  %os16476 = bitcast %union.rec* %2260 to %struct.word_type*
  %olist6477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16476, i32 0, i32 0
  %arrayidx6478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6477, i32 0, i64 0
  %opred6479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6478, i32 0, i32 0
  %2261 = load %union.rec*, %union.rec** %opred6479, align 8
  %cmp6480 = icmp ne %union.rec* %2259, %2261
  br i1 %cmp6480, label %if.end.6484, label %if.then.6482

if.then.6482:                                     ; preds = %if.end.6471
  %2262 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6483 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.6484

if.end.6484:                                      ; preds = %if.then.6482, %if.end.6471
  %2263 = load %union.rec*, %union.rec** %res, align 8
  %os16485 = bitcast %union.rec* %2263 to %struct.word_type*
  %olist6486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16485, i32 0, i32 0
  %arrayidx6487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6486, i32 0, i64 0
  %opred6488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6487, i32 0, i32 0
  %2264 = load %union.rec*, %union.rec** %opred6488, align 8
  store %union.rec* %2264, %union.rec** @xx_link, align 8
  %2265 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2265, %union.rec** @zz_hold, align 8
  %2266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16489 = bitcast %union.rec* %2266 to %struct.word_type*
  %olist6490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16489, i32 0, i32 0
  %arrayidx6491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6490, i32 0, i64 1
  %osucc6492 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6491, i32 0, i32 1
  %2267 = load %union.rec*, %union.rec** %osucc6492, align 8
  %2268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6493 = icmp eq %union.rec* %2267, %2268
  br i1 %cmp6493, label %cond.true.6495, label %cond.false.6496

cond.true.6495:                                   ; preds = %if.end.6484
  br label %cond.end.6525

cond.false.6496:                                  ; preds = %if.end.6484
  %2269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16497 = bitcast %union.rec* %2269 to %struct.word_type*
  %olist6498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16497, i32 0, i32 0
  %arrayidx6499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6498, i32 0, i64 1
  %osucc6500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6499, i32 0, i32 1
  %2270 = load %union.rec*, %union.rec** %osucc6500, align 8
  store %union.rec* %2270, %union.rec** @zz_res, align 8
  %2271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16501 = bitcast %union.rec* %2271 to %struct.word_type*
  %olist6502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16501, i32 0, i32 0
  %arrayidx6503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6502, i32 0, i64 1
  %opred6504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6503, i32 0, i32 0
  %2272 = load %union.rec*, %union.rec** %opred6504, align 8
  %2273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16505 = bitcast %union.rec* %2273 to %struct.word_type*
  %olist6506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16505, i32 0, i32 0
  %arrayidx6507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6506, i32 0, i64 1
  %opred6508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6507, i32 0, i32 0
  store %union.rec* %2272, %union.rec** %opred6508, align 8
  %2274 = load %union.rec*, %union.rec** @zz_res, align 8
  %2275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16509 = bitcast %union.rec* %2275 to %struct.word_type*
  %olist6510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16509, i32 0, i32 0
  %arrayidx6511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6510, i32 0, i64 1
  %opred6512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6511, i32 0, i32 0
  %2276 = load %union.rec*, %union.rec** %opred6512, align 8
  %os16513 = bitcast %union.rec* %2276 to %struct.word_type*
  %olist6514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16513, i32 0, i32 0
  %arrayidx6515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6514, i32 0, i64 1
  %osucc6516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6515, i32 0, i32 1
  store %union.rec* %2274, %union.rec** %osucc6516, align 8
  %2277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16517 = bitcast %union.rec* %2278 to %struct.word_type*
  %olist6518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16517, i32 0, i32 0
  %arrayidx6519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6518, i32 0, i64 1
  %osucc6520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6519, i32 0, i32 1
  store %union.rec* %2277, %union.rec** %osucc6520, align 8
  %2279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16521 = bitcast %union.rec* %2279 to %struct.word_type*
  %olist6522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16521, i32 0, i32 0
  %arrayidx6523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6522, i32 0, i64 1
  %opred6524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6523, i32 0, i32 0
  store %union.rec* %2277, %union.rec** %opred6524, align 8
  %2280 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6525

cond.end.6525:                                    ; preds = %cond.false.6496, %cond.true.6495
  %cond6526 = phi %union.rec* [ null, %cond.true.6495 ], [ %2280, %cond.false.6496 ]
  store %union.rec* %cond6526, %union.rec** @xx_tmp, align 8
  %2281 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2281, %union.rec** @zz_hold, align 8
  %2282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16527 = bitcast %union.rec* %2282 to %struct.word_type*
  %olist6528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16527, i32 0, i32 0
  %arrayidx6529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6528, i32 0, i64 0
  %osucc6530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6529, i32 0, i32 1
  %2283 = load %union.rec*, %union.rec** %osucc6530, align 8
  %2284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6531 = icmp eq %union.rec* %2283, %2284
  br i1 %cmp6531, label %cond.true.6533, label %cond.false.6534

cond.true.6533:                                   ; preds = %cond.end.6525
  br label %cond.end.6563

cond.false.6534:                                  ; preds = %cond.end.6525
  %2285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16535 = bitcast %union.rec* %2285 to %struct.word_type*
  %olist6536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16535, i32 0, i32 0
  %arrayidx6537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6536, i32 0, i64 0
  %osucc6538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6537, i32 0, i32 1
  %2286 = load %union.rec*, %union.rec** %osucc6538, align 8
  store %union.rec* %2286, %union.rec** @zz_res, align 8
  %2287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16539 = bitcast %union.rec* %2287 to %struct.word_type*
  %olist6540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16539, i32 0, i32 0
  %arrayidx6541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6540, i32 0, i64 0
  %opred6542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6541, i32 0, i32 0
  %2288 = load %union.rec*, %union.rec** %opred6542, align 8
  %2289 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16543 = bitcast %union.rec* %2289 to %struct.word_type*
  %olist6544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16543, i32 0, i32 0
  %arrayidx6545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6544, i32 0, i64 0
  %opred6546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6545, i32 0, i32 0
  store %union.rec* %2288, %union.rec** %opred6546, align 8
  %2290 = load %union.rec*, %union.rec** @zz_res, align 8
  %2291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16547 = bitcast %union.rec* %2291 to %struct.word_type*
  %olist6548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16547, i32 0, i32 0
  %arrayidx6549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6548, i32 0, i64 0
  %opred6550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6549, i32 0, i32 0
  %2292 = load %union.rec*, %union.rec** %opred6550, align 8
  %os16551 = bitcast %union.rec* %2292 to %struct.word_type*
  %olist6552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16551, i32 0, i32 0
  %arrayidx6553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6552, i32 0, i64 0
  %osucc6554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6553, i32 0, i32 1
  store %union.rec* %2290, %union.rec** %osucc6554, align 8
  %2293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16555 = bitcast %union.rec* %2294 to %struct.word_type*
  %olist6556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16555, i32 0, i32 0
  %arrayidx6557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6556, i32 0, i64 0
  %osucc6558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6557, i32 0, i32 1
  store %union.rec* %2293, %union.rec** %osucc6558, align 8
  %2295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16559 = bitcast %union.rec* %2295 to %struct.word_type*
  %olist6560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16559, i32 0, i32 0
  %arrayidx6561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6560, i32 0, i64 0
  %opred6562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6561, i32 0, i32 0
  store %union.rec* %2293, %union.rec** %opred6562, align 8
  %2296 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6563

cond.end.6563:                                    ; preds = %cond.false.6534, %cond.true.6533
  %cond6564 = phi %union.rec* [ null, %cond.true.6533 ], [ %2296, %cond.false.6534 ]
  %2297 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2297, %union.rec** @zz_hold, align 8
  %2298 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2298, %union.rec** @zz_hold, align 8
  %2299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16565 = bitcast %union.rec* %2299 to %struct.word_type*
  %ou16566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16565, i32 0, i32 1
  %os116567 = bitcast %union.FIRST_UNION* %ou16566 to %struct.anon*
  %otype6568 = getelementptr inbounds %struct.anon, %struct.anon* %os116567, i32 0, i32 0
  %2300 = load i8, i8* %otype6568, align 1
  %conv6569 = zext i8 %2300 to i32
  %cmp6570 = icmp eq i32 %conv6569, 11
  br i1 %cmp6570, label %cond.true.6580, label %lor.lhs.false.6572

lor.lhs.false.6572:                               ; preds = %cond.end.6563
  %2301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16573 = bitcast %union.rec* %2301 to %struct.word_type*
  %ou16574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16573, i32 0, i32 1
  %os116575 = bitcast %union.FIRST_UNION* %ou16574 to %struct.anon*
  %otype6576 = getelementptr inbounds %struct.anon, %struct.anon* %os116575, i32 0, i32 0
  %2302 = load i8, i8* %otype6576, align 1
  %conv6577 = zext i8 %2302 to i32
  %cmp6578 = icmp eq i32 %conv6577, 12
  br i1 %cmp6578, label %cond.true.6580, label %cond.false.6586

cond.true.6580:                                   ; preds = %lor.lhs.false.6572, %cond.end.6563
  %2303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16581 = bitcast %union.rec* %2303 to %struct.word_type*
  %ou16582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16581, i32 0, i32 1
  %os116583 = bitcast %union.FIRST_UNION* %ou16582 to %struct.anon*
  %orec_size6584 = getelementptr inbounds %struct.anon, %struct.anon* %os116583, i32 0, i32 1
  %2304 = load i8, i8* %orec_size6584, align 1
  %conv6585 = zext i8 %2304 to i32
  br label %cond.end.6594

cond.false.6586:                                  ; preds = %lor.lhs.false.6572
  %2305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16587 = bitcast %union.rec* %2305 to %struct.word_type*
  %ou16588 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16587, i32 0, i32 1
  %os116589 = bitcast %union.FIRST_UNION* %ou16588 to %struct.anon*
  %otype6590 = getelementptr inbounds %struct.anon, %struct.anon* %os116589, i32 0, i32 0
  %2306 = load i8, i8* %otype6590, align 1
  %idxprom6591 = zext i8 %2306 to i64
  %arrayidx6592 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6591
  %2307 = load i8, i8* %arrayidx6592, align 1
  %conv6593 = zext i8 %2307 to i32
  br label %cond.end.6594

cond.end.6594:                                    ; preds = %cond.false.6586, %cond.true.6580
  %cond6595 = phi i32 [ %conv6585, %cond.true.6580 ], [ %conv6593, %cond.false.6586 ]
  store i32 %cond6595, i32* @zz_size, align 4
  %2308 = load i32, i32* @zz_size, align 4
  %idxprom6596 = sext i32 %2308 to i64
  %arrayidx6597 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6596
  %2309 = load %union.rec*, %union.rec** %arrayidx6597, align 8
  %2310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16598 = bitcast %union.rec* %2310 to %struct.word_type*
  %olist6599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16598, i32 0, i32 0
  %arrayidx6600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6599, i32 0, i64 0
  %opred6601 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6600, i32 0, i32 0
  store %union.rec* %2309, %union.rec** %opred6601, align 8
  %2311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2312 = load i32, i32* @zz_size, align 4
  %idxprom6602 = sext i32 %2312 to i64
  %arrayidx6603 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6602
  store %union.rec* %2311, %union.rec** %arrayidx6603, align 8
  %2313 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os16604 = bitcast %union.rec* %2313 to %struct.word_type*
  %olist6605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16604, i32 0, i32 0
  %arrayidx6606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6605, i32 0, i64 1
  %osucc6607 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6606, i32 0, i32 1
  %2314 = load %union.rec*, %union.rec** %osucc6607, align 8
  %2315 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp6608 = icmp eq %union.rec* %2314, %2315
  br i1 %cmp6608, label %if.then.6610, label %if.end.6612

if.then.6610:                                     ; preds = %cond.end.6594
  %2316 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call6611 = call i32 @DisposeObject(%union.rec* %2316)
  br label %if.end.6612

if.end.6612:                                      ; preds = %if.then.6610, %cond.end.6594
  br label %if.end.6943

if.else.6613:                                     ; preds = %for.end.6332
  %2317 = load %union.rec*, %union.rec** %y, align 8
  %os16614 = bitcast %union.rec* %2317 to %struct.word_type*
  %olist6615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16614, i32 0, i32 0
  %arrayidx6616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6615, i32 0, i64 0
  %opred6617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6616, i32 0, i32 0
  %2318 = load %union.rec*, %union.rec** %opred6617, align 8
  %os16618 = bitcast %union.rec* %2318 to %struct.word_type*
  %olist6619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16618, i32 0, i32 0
  %arrayidx6620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6619, i32 0, i64 1
  %opred6621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6620, i32 0, i32 0
  %2319 = load %union.rec*, %union.rec** %opred6621, align 8
  store %union.rec* %2319, %union.rec** %z, align 8
  br label %for.cond.6622

for.cond.6622:                                    ; preds = %for.inc.6631, %if.else.6613
  %2320 = load %union.rec*, %union.rec** %z, align 8
  %os16623 = bitcast %union.rec* %2320 to %struct.word_type*
  %ou16624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16623, i32 0, i32 1
  %os116625 = bitcast %union.FIRST_UNION* %ou16624 to %struct.anon*
  %otype6626 = getelementptr inbounds %struct.anon, %struct.anon* %os116625, i32 0, i32 0
  %2321 = load i8, i8* %otype6626, align 1
  %conv6627 = zext i8 %2321 to i32
  %cmp6628 = icmp eq i32 %conv6627, 0
  br i1 %cmp6628, label %for.body.6630, label %for.end.6636

for.body.6630:                                    ; preds = %for.cond.6622
  br label %for.inc.6631

for.inc.6631:                                     ; preds = %for.body.6630
  %2322 = load %union.rec*, %union.rec** %z, align 8
  %os16632 = bitcast %union.rec* %2322 to %struct.word_type*
  %olist6633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16632, i32 0, i32 0
  %arrayidx6634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6633, i32 0, i64 1
  %opred6635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6634, i32 0, i32 0
  %2323 = load %union.rec*, %union.rec** %opred6635, align 8
  store %union.rec* %2323, %union.rec** %z, align 8
  br label %for.cond.6622

for.end.6636:                                     ; preds = %for.cond.6622
  %2324 = load %union.rec*, %union.rec** %z, align 8
  %os16637 = bitcast %union.rec* %2324 to %struct.word_type*
  %ou16638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16637, i32 0, i32 1
  %os116639 = bitcast %union.FIRST_UNION* %ou16638 to %struct.anon*
  %otype6640 = getelementptr inbounds %struct.anon, %struct.anon* %os116639, i32 0, i32 0
  %2325 = load i8, i8* %otype6640, align 1
  %conv6641 = zext i8 %2325 to i32
  %cmp6642 = icmp eq i32 %conv6641, 11
  br i1 %cmp6642, label %land.lhs.true.6644, label %if.then.6651

land.lhs.true.6644:                               ; preds = %for.end.6636
  %2326 = load %union.rec*, %union.rec** %z, align 8
  %os16645 = bitcast %union.rec* %2326 to %struct.word_type*
  %ostring6646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16645, i32 0, i32 4
  %arrayidx6647 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring6646, i32 0, i64 0
  %2327 = load i8, i8* %arrayidx6647, align 1
  %conv6648 = zext i8 %2327 to i32
  %cmp6649 = icmp eq i32 %conv6648, 0
  br i1 %cmp6649, label %if.end.6653, label %if.then.6651

if.then.6651:                                     ; preds = %land.lhs.true.6644, %for.end.6636
  %2328 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6652 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.6653

if.end.6653:                                      ; preds = %if.then.6651, %land.lhs.true.6644
  %2329 = load %union.rec*, %union.rec** %y, align 8
  %os16654 = bitcast %union.rec* %2329 to %struct.word_type*
  %olist6655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16654, i32 0, i32 0
  %arrayidx6656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6655, i32 0, i64 0
  %opred6657 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6656, i32 0, i32 0
  %2330 = load %union.rec*, %union.rec** %opred6657, align 8
  store %union.rec* %2330, %union.rec** @xx_link, align 8
  %2331 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2331, %union.rec** @zz_hold, align 8
  %2332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16658 = bitcast %union.rec* %2332 to %struct.word_type*
  %olist6659 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16658, i32 0, i32 0
  %arrayidx6660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6659, i32 0, i64 1
  %osucc6661 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6660, i32 0, i32 1
  %2333 = load %union.rec*, %union.rec** %osucc6661, align 8
  %2334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6662 = icmp eq %union.rec* %2333, %2334
  br i1 %cmp6662, label %cond.true.6664, label %cond.false.6665

cond.true.6664:                                   ; preds = %if.end.6653
  br label %cond.end.6694

cond.false.6665:                                  ; preds = %if.end.6653
  %2335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16666 = bitcast %union.rec* %2335 to %struct.word_type*
  %olist6667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16666, i32 0, i32 0
  %arrayidx6668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6667, i32 0, i64 1
  %osucc6669 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6668, i32 0, i32 1
  %2336 = load %union.rec*, %union.rec** %osucc6669, align 8
  store %union.rec* %2336, %union.rec** @zz_res, align 8
  %2337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16670 = bitcast %union.rec* %2337 to %struct.word_type*
  %olist6671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16670, i32 0, i32 0
  %arrayidx6672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6671, i32 0, i64 1
  %opred6673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6672, i32 0, i32 0
  %2338 = load %union.rec*, %union.rec** %opred6673, align 8
  %2339 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16674 = bitcast %union.rec* %2339 to %struct.word_type*
  %olist6675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16674, i32 0, i32 0
  %arrayidx6676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6675, i32 0, i64 1
  %opred6677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6676, i32 0, i32 0
  store %union.rec* %2338, %union.rec** %opred6677, align 8
  %2340 = load %union.rec*, %union.rec** @zz_res, align 8
  %2341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16678 = bitcast %union.rec* %2341 to %struct.word_type*
  %olist6679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16678, i32 0, i32 0
  %arrayidx6680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6679, i32 0, i64 1
  %opred6681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6680, i32 0, i32 0
  %2342 = load %union.rec*, %union.rec** %opred6681, align 8
  %os16682 = bitcast %union.rec* %2342 to %struct.word_type*
  %olist6683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16682, i32 0, i32 0
  %arrayidx6684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6683, i32 0, i64 1
  %osucc6685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6684, i32 0, i32 1
  store %union.rec* %2340, %union.rec** %osucc6685, align 8
  %2343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16686 = bitcast %union.rec* %2344 to %struct.word_type*
  %olist6687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16686, i32 0, i32 0
  %arrayidx6688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6687, i32 0, i64 1
  %osucc6689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6688, i32 0, i32 1
  store %union.rec* %2343, %union.rec** %osucc6689, align 8
  %2345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16690 = bitcast %union.rec* %2345 to %struct.word_type*
  %olist6691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16690, i32 0, i32 0
  %arrayidx6692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6691, i32 0, i64 1
  %opred6693 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6692, i32 0, i32 0
  store %union.rec* %2343, %union.rec** %opred6693, align 8
  %2346 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6694

cond.end.6694:                                    ; preds = %cond.false.6665, %cond.true.6664
  %cond6695 = phi %union.rec* [ null, %cond.true.6664 ], [ %2346, %cond.false.6665 ]
  store %union.rec* %cond6695, %union.rec** @xx_tmp, align 8
  %2347 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2347, %union.rec** @zz_hold, align 8
  %2348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16696 = bitcast %union.rec* %2348 to %struct.word_type*
  %olist6697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16696, i32 0, i32 0
  %arrayidx6698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6697, i32 0, i64 0
  %osucc6699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6698, i32 0, i32 1
  %2349 = load %union.rec*, %union.rec** %osucc6699, align 8
  %2350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6700 = icmp eq %union.rec* %2349, %2350
  br i1 %cmp6700, label %cond.true.6702, label %cond.false.6703

cond.true.6702:                                   ; preds = %cond.end.6694
  br label %cond.end.6732

cond.false.6703:                                  ; preds = %cond.end.6694
  %2351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16704 = bitcast %union.rec* %2351 to %struct.word_type*
  %olist6705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16704, i32 0, i32 0
  %arrayidx6706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6705, i32 0, i64 0
  %osucc6707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6706, i32 0, i32 1
  %2352 = load %union.rec*, %union.rec** %osucc6707, align 8
  store %union.rec* %2352, %union.rec** @zz_res, align 8
  %2353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16708 = bitcast %union.rec* %2353 to %struct.word_type*
  %olist6709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16708, i32 0, i32 0
  %arrayidx6710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6709, i32 0, i64 0
  %opred6711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6710, i32 0, i32 0
  %2354 = load %union.rec*, %union.rec** %opred6711, align 8
  %2355 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16712 = bitcast %union.rec* %2355 to %struct.word_type*
  %olist6713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16712, i32 0, i32 0
  %arrayidx6714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6713, i32 0, i64 0
  %opred6715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6714, i32 0, i32 0
  store %union.rec* %2354, %union.rec** %opred6715, align 8
  %2356 = load %union.rec*, %union.rec** @zz_res, align 8
  %2357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16716 = bitcast %union.rec* %2357 to %struct.word_type*
  %olist6717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16716, i32 0, i32 0
  %arrayidx6718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6717, i32 0, i64 0
  %opred6719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6718, i32 0, i32 0
  %2358 = load %union.rec*, %union.rec** %opred6719, align 8
  %os16720 = bitcast %union.rec* %2358 to %struct.word_type*
  %olist6721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16720, i32 0, i32 0
  %arrayidx6722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6721, i32 0, i64 0
  %osucc6723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6722, i32 0, i32 1
  store %union.rec* %2356, %union.rec** %osucc6723, align 8
  %2359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16724 = bitcast %union.rec* %2360 to %struct.word_type*
  %olist6725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16724, i32 0, i32 0
  %arrayidx6726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6725, i32 0, i64 0
  %osucc6727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6726, i32 0, i32 1
  store %union.rec* %2359, %union.rec** %osucc6727, align 8
  %2361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16728 = bitcast %union.rec* %2361 to %struct.word_type*
  %olist6729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16728, i32 0, i32 0
  %arrayidx6730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6729, i32 0, i64 0
  %opred6731 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6730, i32 0, i32 0
  store %union.rec* %2359, %union.rec** %opred6731, align 8
  %2362 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6732

cond.end.6732:                                    ; preds = %cond.false.6703, %cond.true.6702
  %cond6733 = phi %union.rec* [ null, %cond.true.6702 ], [ %2362, %cond.false.6703 ]
  %2363 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2363, %union.rec** @zz_hold, align 8
  %2364 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2364, %union.rec** @zz_hold, align 8
  %2365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16734 = bitcast %union.rec* %2365 to %struct.word_type*
  %ou16735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16734, i32 0, i32 1
  %os116736 = bitcast %union.FIRST_UNION* %ou16735 to %struct.anon*
  %otype6737 = getelementptr inbounds %struct.anon, %struct.anon* %os116736, i32 0, i32 0
  %2366 = load i8, i8* %otype6737, align 1
  %conv6738 = zext i8 %2366 to i32
  %cmp6739 = icmp eq i32 %conv6738, 11
  br i1 %cmp6739, label %cond.true.6749, label %lor.lhs.false.6741

lor.lhs.false.6741:                               ; preds = %cond.end.6732
  %2367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16742 = bitcast %union.rec* %2367 to %struct.word_type*
  %ou16743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16742, i32 0, i32 1
  %os116744 = bitcast %union.FIRST_UNION* %ou16743 to %struct.anon*
  %otype6745 = getelementptr inbounds %struct.anon, %struct.anon* %os116744, i32 0, i32 0
  %2368 = load i8, i8* %otype6745, align 1
  %conv6746 = zext i8 %2368 to i32
  %cmp6747 = icmp eq i32 %conv6746, 12
  br i1 %cmp6747, label %cond.true.6749, label %cond.false.6755

cond.true.6749:                                   ; preds = %lor.lhs.false.6741, %cond.end.6732
  %2369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16750 = bitcast %union.rec* %2369 to %struct.word_type*
  %ou16751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16750, i32 0, i32 1
  %os116752 = bitcast %union.FIRST_UNION* %ou16751 to %struct.anon*
  %orec_size6753 = getelementptr inbounds %struct.anon, %struct.anon* %os116752, i32 0, i32 1
  %2370 = load i8, i8* %orec_size6753, align 1
  %conv6754 = zext i8 %2370 to i32
  br label %cond.end.6763

cond.false.6755:                                  ; preds = %lor.lhs.false.6741
  %2371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16756 = bitcast %union.rec* %2371 to %struct.word_type*
  %ou16757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16756, i32 0, i32 1
  %os116758 = bitcast %union.FIRST_UNION* %ou16757 to %struct.anon*
  %otype6759 = getelementptr inbounds %struct.anon, %struct.anon* %os116758, i32 0, i32 0
  %2372 = load i8, i8* %otype6759, align 1
  %idxprom6760 = zext i8 %2372 to i64
  %arrayidx6761 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6760
  %2373 = load i8, i8* %arrayidx6761, align 1
  %conv6762 = zext i8 %2373 to i32
  br label %cond.end.6763

cond.end.6763:                                    ; preds = %cond.false.6755, %cond.true.6749
  %cond6764 = phi i32 [ %conv6754, %cond.true.6749 ], [ %conv6762, %cond.false.6755 ]
  store i32 %cond6764, i32* @zz_size, align 4
  %2374 = load i32, i32* @zz_size, align 4
  %idxprom6765 = sext i32 %2374 to i64
  %arrayidx6766 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6765
  %2375 = load %union.rec*, %union.rec** %arrayidx6766, align 8
  %2376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16767 = bitcast %union.rec* %2376 to %struct.word_type*
  %olist6768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16767, i32 0, i32 0
  %arrayidx6769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6768, i32 0, i64 0
  %opred6770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6769, i32 0, i32 0
  store %union.rec* %2375, %union.rec** %opred6770, align 8
  %2377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2378 = load i32, i32* @zz_size, align 4
  %idxprom6771 = sext i32 %2378 to i64
  %arrayidx6772 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6771
  store %union.rec* %2377, %union.rec** %arrayidx6772, align 8
  %2379 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os16773 = bitcast %union.rec* %2379 to %struct.word_type*
  %olist6774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16773, i32 0, i32 0
  %arrayidx6775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6774, i32 0, i64 1
  %osucc6776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6775, i32 0, i32 1
  %2380 = load %union.rec*, %union.rec** %osucc6776, align 8
  %2381 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp6777 = icmp eq %union.rec* %2380, %2381
  br i1 %cmp6777, label %if.then.6779, label %if.end.6781

if.then.6779:                                     ; preds = %cond.end.6763
  %2382 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call6780 = call i32 @DisposeObject(%union.rec* %2382)
  br label %if.end.6781

if.end.6781:                                      ; preds = %if.then.6779, %cond.end.6763
  %2383 = load %union.rec*, %union.rec** %y, align 8
  %os16782 = bitcast %union.rec* %2383 to %struct.word_type*
  %olist6783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16782, i32 0, i32 0
  %arrayidx6784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6783, i32 0, i64 0
  %opred6785 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6784, i32 0, i32 0
  %2384 = load %union.rec*, %union.rec** %opred6785, align 8
  %os16786 = bitcast %union.rec* %2384 to %struct.word_type*
  %olist6787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16786, i32 0, i32 0
  %arrayidx6788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6787, i32 0, i64 1
  %opred6789 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6788, i32 0, i32 0
  %2385 = load %union.rec*, %union.rec** %opred6789, align 8
  store %union.rec* %2385, %union.rec** %z, align 8
  br label %for.cond.6790

for.cond.6790:                                    ; preds = %for.inc.6799, %if.end.6781
  %2386 = load %union.rec*, %union.rec** %z, align 8
  %os16791 = bitcast %union.rec* %2386 to %struct.word_type*
  %ou16792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16791, i32 0, i32 1
  %os116793 = bitcast %union.FIRST_UNION* %ou16792 to %struct.anon*
  %otype6794 = getelementptr inbounds %struct.anon, %struct.anon* %os116793, i32 0, i32 0
  %2387 = load i8, i8* %otype6794, align 1
  %conv6795 = zext i8 %2387 to i32
  %cmp6796 = icmp eq i32 %conv6795, 0
  br i1 %cmp6796, label %for.body.6798, label %for.end.6804

for.body.6798:                                    ; preds = %for.cond.6790
  br label %for.inc.6799

for.inc.6799:                                     ; preds = %for.body.6798
  %2388 = load %union.rec*, %union.rec** %z, align 8
  %os16800 = bitcast %union.rec* %2388 to %struct.word_type*
  %olist6801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16800, i32 0, i32 0
  %arrayidx6802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6801, i32 0, i64 1
  %opred6803 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6802, i32 0, i32 0
  %2389 = load %union.rec*, %union.rec** %opred6803, align 8
  store %union.rec* %2389, %union.rec** %z, align 8
  br label %for.cond.6790

for.end.6804:                                     ; preds = %for.cond.6790
  %2390 = load %union.rec*, %union.rec** %z, align 8
  %os16805 = bitcast %union.rec* %2390 to %struct.word_type*
  %ou16806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16805, i32 0, i32 1
  %os116807 = bitcast %union.FIRST_UNION* %ou16806 to %struct.anon*
  %otype6808 = getelementptr inbounds %struct.anon, %struct.anon* %os116807, i32 0, i32 0
  %2391 = load i8, i8* %otype6808, align 1
  %conv6809 = zext i8 %2391 to i32
  %cmp6810 = icmp eq i32 %conv6809, 1
  br i1 %cmp6810, label %if.end.6814, label %if.then.6812

if.then.6812:                                     ; preds = %for.end.6804
  %2392 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6813 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2392, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.6814

if.end.6814:                                      ; preds = %if.then.6812, %for.end.6804
  %2393 = load %union.rec*, %union.rec** %y, align 8
  %os16815 = bitcast %union.rec* %2393 to %struct.word_type*
  %olist6816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16815, i32 0, i32 0
  %arrayidx6817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6816, i32 0, i64 0
  %opred6818 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6817, i32 0, i32 0
  %2394 = load %union.rec*, %union.rec** %opred6818, align 8
  store %union.rec* %2394, %union.rec** @xx_link, align 8
  %2395 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2395, %union.rec** @zz_hold, align 8
  %2396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16819 = bitcast %union.rec* %2396 to %struct.word_type*
  %olist6820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16819, i32 0, i32 0
  %arrayidx6821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6820, i32 0, i64 1
  %osucc6822 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6821, i32 0, i32 1
  %2397 = load %union.rec*, %union.rec** %osucc6822, align 8
  %2398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6823 = icmp eq %union.rec* %2397, %2398
  br i1 %cmp6823, label %cond.true.6825, label %cond.false.6826

cond.true.6825:                                   ; preds = %if.end.6814
  br label %cond.end.6855

cond.false.6826:                                  ; preds = %if.end.6814
  %2399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16827 = bitcast %union.rec* %2399 to %struct.word_type*
  %olist6828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16827, i32 0, i32 0
  %arrayidx6829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6828, i32 0, i64 1
  %osucc6830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6829, i32 0, i32 1
  %2400 = load %union.rec*, %union.rec** %osucc6830, align 8
  store %union.rec* %2400, %union.rec** @zz_res, align 8
  %2401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16831 = bitcast %union.rec* %2401 to %struct.word_type*
  %olist6832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16831, i32 0, i32 0
  %arrayidx6833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6832, i32 0, i64 1
  %opred6834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6833, i32 0, i32 0
  %2402 = load %union.rec*, %union.rec** %opred6834, align 8
  %2403 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16835 = bitcast %union.rec* %2403 to %struct.word_type*
  %olist6836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16835, i32 0, i32 0
  %arrayidx6837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6836, i32 0, i64 1
  %opred6838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6837, i32 0, i32 0
  store %union.rec* %2402, %union.rec** %opred6838, align 8
  %2404 = load %union.rec*, %union.rec** @zz_res, align 8
  %2405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16839 = bitcast %union.rec* %2405 to %struct.word_type*
  %olist6840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16839, i32 0, i32 0
  %arrayidx6841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6840, i32 0, i64 1
  %opred6842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6841, i32 0, i32 0
  %2406 = load %union.rec*, %union.rec** %opred6842, align 8
  %os16843 = bitcast %union.rec* %2406 to %struct.word_type*
  %olist6844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16843, i32 0, i32 0
  %arrayidx6845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6844, i32 0, i64 1
  %osucc6846 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6845, i32 0, i32 1
  store %union.rec* %2404, %union.rec** %osucc6846, align 8
  %2407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16847 = bitcast %union.rec* %2408 to %struct.word_type*
  %olist6848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16847, i32 0, i32 0
  %arrayidx6849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6848, i32 0, i64 1
  %osucc6850 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6849, i32 0, i32 1
  store %union.rec* %2407, %union.rec** %osucc6850, align 8
  %2409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16851 = bitcast %union.rec* %2409 to %struct.word_type*
  %olist6852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16851, i32 0, i32 0
  %arrayidx6853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6852, i32 0, i64 1
  %opred6854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6853, i32 0, i32 0
  store %union.rec* %2407, %union.rec** %opred6854, align 8
  %2410 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6855

cond.end.6855:                                    ; preds = %cond.false.6826, %cond.true.6825
  %cond6856 = phi %union.rec* [ null, %cond.true.6825 ], [ %2410, %cond.false.6826 ]
  store %union.rec* %cond6856, %union.rec** @xx_tmp, align 8
  %2411 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2411, %union.rec** @zz_hold, align 8
  %2412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16857 = bitcast %union.rec* %2412 to %struct.word_type*
  %olist6858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16857, i32 0, i32 0
  %arrayidx6859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6858, i32 0, i64 0
  %osucc6860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6859, i32 0, i32 1
  %2413 = load %union.rec*, %union.rec** %osucc6860, align 8
  %2414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6861 = icmp eq %union.rec* %2413, %2414
  br i1 %cmp6861, label %cond.true.6863, label %cond.false.6864

cond.true.6863:                                   ; preds = %cond.end.6855
  br label %cond.end.6893

cond.false.6864:                                  ; preds = %cond.end.6855
  %2415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16865 = bitcast %union.rec* %2415 to %struct.word_type*
  %olist6866 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16865, i32 0, i32 0
  %arrayidx6867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6866, i32 0, i64 0
  %osucc6868 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6867, i32 0, i32 1
  %2416 = load %union.rec*, %union.rec** %osucc6868, align 8
  store %union.rec* %2416, %union.rec** @zz_res, align 8
  %2417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16869 = bitcast %union.rec* %2417 to %struct.word_type*
  %olist6870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16869, i32 0, i32 0
  %arrayidx6871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6870, i32 0, i64 0
  %opred6872 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6871, i32 0, i32 0
  %2418 = load %union.rec*, %union.rec** %opred6872, align 8
  %2419 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16873 = bitcast %union.rec* %2419 to %struct.word_type*
  %olist6874 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16873, i32 0, i32 0
  %arrayidx6875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6874, i32 0, i64 0
  %opred6876 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6875, i32 0, i32 0
  store %union.rec* %2418, %union.rec** %opred6876, align 8
  %2420 = load %union.rec*, %union.rec** @zz_res, align 8
  %2421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16877 = bitcast %union.rec* %2421 to %struct.word_type*
  %olist6878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16877, i32 0, i32 0
  %arrayidx6879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6878, i32 0, i64 0
  %opred6880 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6879, i32 0, i32 0
  %2422 = load %union.rec*, %union.rec** %opred6880, align 8
  %os16881 = bitcast %union.rec* %2422 to %struct.word_type*
  %olist6882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16881, i32 0, i32 0
  %arrayidx6883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6882, i32 0, i64 0
  %osucc6884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6883, i32 0, i32 1
  store %union.rec* %2420, %union.rec** %osucc6884, align 8
  %2423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16885 = bitcast %union.rec* %2424 to %struct.word_type*
  %olist6886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16885, i32 0, i32 0
  %arrayidx6887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6886, i32 0, i64 0
  %osucc6888 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6887, i32 0, i32 1
  store %union.rec* %2423, %union.rec** %osucc6888, align 8
  %2425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16889 = bitcast %union.rec* %2425 to %struct.word_type*
  %olist6890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16889, i32 0, i32 0
  %arrayidx6891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6890, i32 0, i64 0
  %opred6892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6891, i32 0, i32 0
  store %union.rec* %2423, %union.rec** %opred6892, align 8
  %2426 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6893

cond.end.6893:                                    ; preds = %cond.false.6864, %cond.true.6863
  %cond6894 = phi %union.rec* [ null, %cond.true.6863 ], [ %2426, %cond.false.6864 ]
  %2427 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2427, %union.rec** @zz_hold, align 8
  %2428 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2428, %union.rec** @zz_hold, align 8
  %2429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16895 = bitcast %union.rec* %2429 to %struct.word_type*
  %ou16896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16895, i32 0, i32 1
  %os116897 = bitcast %union.FIRST_UNION* %ou16896 to %struct.anon*
  %otype6898 = getelementptr inbounds %struct.anon, %struct.anon* %os116897, i32 0, i32 0
  %2430 = load i8, i8* %otype6898, align 1
  %conv6899 = zext i8 %2430 to i32
  %cmp6900 = icmp eq i32 %conv6899, 11
  br i1 %cmp6900, label %cond.true.6910, label %lor.lhs.false.6902

lor.lhs.false.6902:                               ; preds = %cond.end.6893
  %2431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16903 = bitcast %union.rec* %2431 to %struct.word_type*
  %ou16904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16903, i32 0, i32 1
  %os116905 = bitcast %union.FIRST_UNION* %ou16904 to %struct.anon*
  %otype6906 = getelementptr inbounds %struct.anon, %struct.anon* %os116905, i32 0, i32 0
  %2432 = load i8, i8* %otype6906, align 1
  %conv6907 = zext i8 %2432 to i32
  %cmp6908 = icmp eq i32 %conv6907, 12
  br i1 %cmp6908, label %cond.true.6910, label %cond.false.6916

cond.true.6910:                                   ; preds = %lor.lhs.false.6902, %cond.end.6893
  %2433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16911 = bitcast %union.rec* %2433 to %struct.word_type*
  %ou16912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16911, i32 0, i32 1
  %os116913 = bitcast %union.FIRST_UNION* %ou16912 to %struct.anon*
  %orec_size6914 = getelementptr inbounds %struct.anon, %struct.anon* %os116913, i32 0, i32 1
  %2434 = load i8, i8* %orec_size6914, align 1
  %conv6915 = zext i8 %2434 to i32
  br label %cond.end.6924

cond.false.6916:                                  ; preds = %lor.lhs.false.6902
  %2435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16917 = bitcast %union.rec* %2435 to %struct.word_type*
  %ou16918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16917, i32 0, i32 1
  %os116919 = bitcast %union.FIRST_UNION* %ou16918 to %struct.anon*
  %otype6920 = getelementptr inbounds %struct.anon, %struct.anon* %os116919, i32 0, i32 0
  %2436 = load i8, i8* %otype6920, align 1
  %idxprom6921 = zext i8 %2436 to i64
  %arrayidx6922 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6921
  %2437 = load i8, i8* %arrayidx6922, align 1
  %conv6923 = zext i8 %2437 to i32
  br label %cond.end.6924

cond.end.6924:                                    ; preds = %cond.false.6916, %cond.true.6910
  %cond6925 = phi i32 [ %conv6915, %cond.true.6910 ], [ %conv6923, %cond.false.6916 ]
  store i32 %cond6925, i32* @zz_size, align 4
  %2438 = load i32, i32* @zz_size, align 4
  %idxprom6926 = sext i32 %2438 to i64
  %arrayidx6927 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6926
  %2439 = load %union.rec*, %union.rec** %arrayidx6927, align 8
  %2440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16928 = bitcast %union.rec* %2440 to %struct.word_type*
  %olist6929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16928, i32 0, i32 0
  %arrayidx6930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6929, i32 0, i64 0
  %opred6931 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6930, i32 0, i32 0
  store %union.rec* %2439, %union.rec** %opred6931, align 8
  %2441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2442 = load i32, i32* @zz_size, align 4
  %idxprom6932 = sext i32 %2442 to i64
  %arrayidx6933 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6932
  store %union.rec* %2441, %union.rec** %arrayidx6933, align 8
  %2443 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os16934 = bitcast %union.rec* %2443 to %struct.word_type*
  %olist6935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16934, i32 0, i32 0
  %arrayidx6936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6935, i32 0, i64 1
  %osucc6937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6936, i32 0, i32 1
  %2444 = load %union.rec*, %union.rec** %osucc6937, align 8
  %2445 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp6938 = icmp eq %union.rec* %2444, %2445
  br i1 %cmp6938, label %if.then.6940, label %if.end.6942

if.then.6940:                                     ; preds = %cond.end.6924
  %2446 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call6941 = call i32 @DisposeObject(%union.rec* %2446)
  br label %if.end.6942

if.end.6942:                                      ; preds = %if.then.6940, %cond.end.6924
  br label %if.end.6943

if.end.6943:                                      ; preds = %if.end.6942, %if.end.6612
  %2447 = load %union.rec*, %union.rec** %x.addr, align 8
  %os26944 = bitcast %union.rec* %2447 to %struct.closure_type*
  %ou46945 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26944, i32 0, i32 4
  %osave_style6946 = bitcast %union.FOURTH_UNION* %ou46945 to %struct.STYLE*
  %onobreaklast6947 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style6946, i32 0, i32 4
  %bf.load6948 = load i32, i32* %onobreaklast6947, align 4
  %bf.lshr6949 = lshr i32 %bf.load6948, 31
  %tobool6950 = icmp ne i32 %bf.lshr6949, 0
  br i1 %tobool6950, label %land.lhs.true.6951, label %if.end.7005

land.lhs.true.6951:                               ; preds = %if.end.6943
  %2448 = load %union.rec*, %union.rec** %res, align 8
  %os16952 = bitcast %union.rec* %2448 to %struct.word_type*
  %olist6953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16952, i32 0, i32 0
  %arrayidx6954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6953, i32 0, i64 0
  %osucc6955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6954, i32 0, i32 1
  %2449 = load %union.rec*, %union.rec** %osucc6955, align 8
  %2450 = load %union.rec*, %union.rec** %res, align 8
  %os16956 = bitcast %union.rec* %2450 to %struct.word_type*
  %olist6957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16956, i32 0, i32 0
  %arrayidx6958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6957, i32 0, i64 0
  %opred6959 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6958, i32 0, i32 0
  %2451 = load %union.rec*, %union.rec** %opred6959, align 8
  %cmp6960 = icmp ne %union.rec* %2449, %2451
  br i1 %cmp6960, label %if.then.6962, label %if.end.7005

if.then.6962:                                     ; preds = %land.lhs.true.6951
  %2452 = load %union.rec*, %union.rec** %res, align 8
  %os16963 = bitcast %union.rec* %2452 to %struct.word_type*
  %olist6964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16963, i32 0, i32 0
  %arrayidx6965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6964, i32 0, i64 0
  %osucc6966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6965, i32 0, i32 1
  %2453 = load %union.rec*, %union.rec** %osucc6966, align 8
  %os16967 = bitcast %union.rec* %2453 to %struct.word_type*
  %olist6968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16967, i32 0, i32 0
  %arrayidx6969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6968, i32 0, i64 0
  %osucc6970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6969, i32 0, i32 1
  %2454 = load %union.rec*, %union.rec** %osucc6970, align 8
  %os16971 = bitcast %union.rec* %2454 to %struct.word_type*
  %olist6972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16971, i32 0, i32 0
  %arrayidx6973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6972, i32 0, i64 1
  %opred6974 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6973, i32 0, i32 0
  %2455 = load %union.rec*, %union.rec** %opred6974, align 8
  store %union.rec* %2455, %union.rec** %gp, align 8
  br label %for.cond.6975

for.cond.6975:                                    ; preds = %for.inc.6984, %if.then.6962
  %2456 = load %union.rec*, %union.rec** %gp, align 8
  %os16976 = bitcast %union.rec* %2456 to %struct.word_type*
  %ou16977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16976, i32 0, i32 1
  %os116978 = bitcast %union.FIRST_UNION* %ou16977 to %struct.anon*
  %otype6979 = getelementptr inbounds %struct.anon, %struct.anon* %os116978, i32 0, i32 0
  %2457 = load i8, i8* %otype6979, align 1
  %conv6980 = zext i8 %2457 to i32
  %cmp6981 = icmp eq i32 %conv6980, 0
  br i1 %cmp6981, label %for.body.6983, label %for.end.6989

for.body.6983:                                    ; preds = %for.cond.6975
  br label %for.inc.6984

for.inc.6984:                                     ; preds = %for.body.6983
  %2458 = load %union.rec*, %union.rec** %gp, align 8
  %os16985 = bitcast %union.rec* %2458 to %struct.word_type*
  %olist6986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16985, i32 0, i32 0
  %arrayidx6987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6986, i32 0, i64 1
  %opred6988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6987, i32 0, i32 0
  %2459 = load %union.rec*, %union.rec** %opred6988, align 8
  store %union.rec* %2459, %union.rec** %gp, align 8
  br label %for.cond.6975

for.end.6989:                                     ; preds = %for.cond.6975
  %2460 = load %union.rec*, %union.rec** %gp, align 8
  %os16990 = bitcast %union.rec* %2460 to %struct.word_type*
  %ou16991 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16990, i32 0, i32 1
  %os116992 = bitcast %union.FIRST_UNION* %ou16991 to %struct.anon*
  %otype6993 = getelementptr inbounds %struct.anon, %struct.anon* %os116992, i32 0, i32 0
  %2461 = load i8, i8* %otype6993, align 1
  %conv6994 = zext i8 %2461 to i32
  %cmp6995 = icmp eq i32 %conv6994, 1
  br i1 %cmp6995, label %if.end.6999, label %if.then.6997

if.then.6997:                                     ; preds = %for.end.6989
  %2462 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6998 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2462, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.6999

if.end.6999:                                      ; preds = %if.then.6997, %for.end.6989
  %2463 = load %union.rec*, %union.rec** %gp, align 8
  %os57000 = bitcast %union.rec* %2463 to %struct.gapobj_type*
  %ogap7001 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57000, i32 0, i32 3
  %2464 = bitcast %struct.GAP* %ogap7001 to i16*
  %bf.load7002 = load i16, i16* %2464, align 4
  %bf.clear7003 = and i16 %bf.load7002, -129
  %bf.set7004 = or i16 %bf.clear7003, 128
  store i16 %bf.set7004, i16* %2464, align 4
  br label %if.end.7005

if.end.7005:                                      ; preds = %if.end.6999, %land.lhs.true.6951, %if.end.6943
  %2465 = load %union.rec*, %union.rec** %x.addr, align 8
  %os27006 = bitcast %union.rec* %2465 to %struct.closure_type*
  %ou47007 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os27006, i32 0, i32 4
  %osave_style7008 = bitcast %union.FOURTH_UNION* %ou47007 to %struct.STYLE*
  %onobreakfirst7009 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style7008, i32 0, i32 4
  %bf.load7010 = load i32, i32* %onobreakfirst7009, align 4
  %bf.lshr7011 = lshr i32 %bf.load7010, 30
  %bf.clear7012 = and i32 %bf.lshr7011, 1
  %tobool7013 = icmp ne i32 %bf.clear7012, 0
  br i1 %tobool7013, label %land.lhs.true.7014, label %if.end.7068

land.lhs.true.7014:                               ; preds = %if.end.7005
  %2466 = load %union.rec*, %union.rec** %res, align 8
  %os17015 = bitcast %union.rec* %2466 to %struct.word_type*
  %olist7016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17015, i32 0, i32 0
  %arrayidx7017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7016, i32 0, i64 0
  %osucc7018 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7017, i32 0, i32 1
  %2467 = load %union.rec*, %union.rec** %osucc7018, align 8
  %2468 = load %union.rec*, %union.rec** %res, align 8
  %os17019 = bitcast %union.rec* %2468 to %struct.word_type*
  %olist7020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17019, i32 0, i32 0
  %arrayidx7021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7020, i32 0, i64 0
  %opred7022 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7021, i32 0, i32 0
  %2469 = load %union.rec*, %union.rec** %opred7022, align 8
  %cmp7023 = icmp ne %union.rec* %2467, %2469
  br i1 %cmp7023, label %if.then.7025, label %if.end.7068

if.then.7025:                                     ; preds = %land.lhs.true.7014
  %2470 = load %union.rec*, %union.rec** %res, align 8
  %os17026 = bitcast %union.rec* %2470 to %struct.word_type*
  %olist7027 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17026, i32 0, i32 0
  %arrayidx7028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7027, i32 0, i64 0
  %opred7029 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7028, i32 0, i32 0
  %2471 = load %union.rec*, %union.rec** %opred7029, align 8
  %os17030 = bitcast %union.rec* %2471 to %struct.word_type*
  %olist7031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17030, i32 0, i32 0
  %arrayidx7032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7031, i32 0, i64 0
  %opred7033 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7032, i32 0, i32 0
  %2472 = load %union.rec*, %union.rec** %opred7033, align 8
  %os17034 = bitcast %union.rec* %2472 to %struct.word_type*
  %olist7035 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17034, i32 0, i32 0
  %arrayidx7036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7035, i32 0, i64 1
  %opred7037 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7036, i32 0, i32 0
  %2473 = load %union.rec*, %union.rec** %opred7037, align 8
  store %union.rec* %2473, %union.rec** %gp, align 8
  br label %for.cond.7038

for.cond.7038:                                    ; preds = %for.inc.7047, %if.then.7025
  %2474 = load %union.rec*, %union.rec** %gp, align 8
  %os17039 = bitcast %union.rec* %2474 to %struct.word_type*
  %ou17040 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17039, i32 0, i32 1
  %os117041 = bitcast %union.FIRST_UNION* %ou17040 to %struct.anon*
  %otype7042 = getelementptr inbounds %struct.anon, %struct.anon* %os117041, i32 0, i32 0
  %2475 = load i8, i8* %otype7042, align 1
  %conv7043 = zext i8 %2475 to i32
  %cmp7044 = icmp eq i32 %conv7043, 0
  br i1 %cmp7044, label %for.body.7046, label %for.end.7052

for.body.7046:                                    ; preds = %for.cond.7038
  br label %for.inc.7047

for.inc.7047:                                     ; preds = %for.body.7046
  %2476 = load %union.rec*, %union.rec** %gp, align 8
  %os17048 = bitcast %union.rec* %2476 to %struct.word_type*
  %olist7049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17048, i32 0, i32 0
  %arrayidx7050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7049, i32 0, i64 1
  %opred7051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7050, i32 0, i32 0
  %2477 = load %union.rec*, %union.rec** %opred7051, align 8
  store %union.rec* %2477, %union.rec** %gp, align 8
  br label %for.cond.7038

for.end.7052:                                     ; preds = %for.cond.7038
  %2478 = load %union.rec*, %union.rec** %gp, align 8
  %os17053 = bitcast %union.rec* %2478 to %struct.word_type*
  %ou17054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17053, i32 0, i32 1
  %os117055 = bitcast %union.FIRST_UNION* %ou17054 to %struct.anon*
  %otype7056 = getelementptr inbounds %struct.anon, %struct.anon* %os117055, i32 0, i32 0
  %2479 = load i8, i8* %otype7056, align 1
  %conv7057 = zext i8 %2479 to i32
  %cmp7058 = icmp eq i32 %conv7057, 1
  br i1 %cmp7058, label %if.end.7062, label %if.then.7060

if.then.7060:                                     ; preds = %for.end.7052
  %2480 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7061 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2480, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.7062

if.end.7062:                                      ; preds = %if.then.7060, %for.end.7052
  %2481 = load %union.rec*, %union.rec** %gp, align 8
  %os57063 = bitcast %union.rec* %2481 to %struct.gapobj_type*
  %ogap7064 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57063, i32 0, i32 3
  %2482 = bitcast %struct.GAP* %ogap7064 to i16*
  %bf.load7065 = load i16, i16* %2482, align 4
  %bf.clear7066 = and i16 %bf.load7065, -129
  %bf.set7067 = or i16 %bf.clear7066, 128
  store i16 %bf.set7067, i16* %2482, align 4
  br label %if.end.7068

if.end.7068:                                      ; preds = %if.end.7062, %land.lhs.true.7014, %if.end.7005
  %2483 = load %union.rec*, %union.rec** %res, align 8
  %os17069 = bitcast %union.rec* %2483 to %struct.word_type*
  %olist7070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17069, i32 0, i32 0
  %arrayidx7071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7070, i32 0, i64 0
  %opred7072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7071, i32 0, i32 0
  %2484 = load %union.rec*, %union.rec** %opred7072, align 8
  %2485 = load %union.rec*, %union.rec** %res, align 8
  %cmp7073 = icmp ne %union.rec* %2484, %2485
  br i1 %cmp7073, label %if.end.7077, label %if.then.7075

if.then.7075:                                     ; preds = %if.end.7068
  %2486 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7076 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2486, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.7077

if.end.7077:                                      ; preds = %if.then.7075, %if.end.7068
  %2487 = load %union.rec*, %union.rec** %res, align 8
  %os17078 = bitcast %union.rec* %2487 to %struct.word_type*
  %olist7079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17078, i32 0, i32 0
  %arrayidx7080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7079, i32 0, i64 0
  %opred7081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7080, i32 0, i32 0
  %2488 = load %union.rec*, %union.rec** %opred7081, align 8
  %os17082 = bitcast %union.rec* %2488 to %struct.word_type*
  %olist7083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17082, i32 0, i32 0
  %arrayidx7084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7083, i32 0, i64 1
  %opred7085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7084, i32 0, i32 0
  %2489 = load %union.rec*, %union.rec** %opred7085, align 8
  store %union.rec* %2489, %union.rec** %y, align 8
  br label %for.cond.7086

for.cond.7086:                                    ; preds = %for.inc.7095, %if.end.7077
  %2490 = load %union.rec*, %union.rec** %y, align 8
  %os17087 = bitcast %union.rec* %2490 to %struct.word_type*
  %ou17088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17087, i32 0, i32 1
  %os117089 = bitcast %union.FIRST_UNION* %ou17088 to %struct.anon*
  %otype7090 = getelementptr inbounds %struct.anon, %struct.anon* %os117089, i32 0, i32 0
  %2491 = load i8, i8* %otype7090, align 1
  %conv7091 = zext i8 %2491 to i32
  %cmp7092 = icmp eq i32 %conv7091, 0
  br i1 %cmp7092, label %for.body.7094, label %for.end.7100

for.body.7094:                                    ; preds = %for.cond.7086
  br label %for.inc.7095

for.inc.7095:                                     ; preds = %for.body.7094
  %2492 = load %union.rec*, %union.rec** %y, align 8
  %os17096 = bitcast %union.rec* %2492 to %struct.word_type*
  %olist7097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17096, i32 0, i32 0
  %arrayidx7098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7097, i32 0, i64 1
  %opred7099 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7098, i32 0, i32 0
  %2493 = load %union.rec*, %union.rec** %opred7099, align 8
  store %union.rec* %2493, %union.rec** %y, align 8
  br label %for.cond.7086

for.end.7100:                                     ; preds = %for.cond.7086
  store i32 1, i32* %jn, align 4
  %2494 = load %union.rec*, %union.rec** %y, align 8
  %os17101 = bitcast %union.rec* %2494 to %struct.word_type*
  %olist7102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17101, i32 0, i32 0
  %arrayidx7103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7102, i32 0, i64 0
  %osucc7104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7103, i32 0, i32 1
  %2495 = load %union.rec*, %union.rec** %osucc7104, align 8
  store %union.rec* %2495, %union.rec** %link, align 8
  br label %for.cond.7105

for.cond.7105:                                    ; preds = %for.inc.7179, %for.end.7100
  %2496 = load %union.rec*, %union.rec** %link, align 8
  %2497 = load %union.rec*, %union.rec** %y, align 8
  %cmp7106 = icmp ne %union.rec* %2496, %2497
  br i1 %cmp7106, label %for.body.7108, label %for.end.7184

for.body.7108:                                    ; preds = %for.cond.7105
  %2498 = load %union.rec*, %union.rec** %link, align 8
  %os17109 = bitcast %union.rec* %2498 to %struct.word_type*
  %olist7110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17109, i32 0, i32 0
  %arrayidx7111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7110, i32 0, i64 1
  %opred7112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7111, i32 0, i32 0
  %2499 = load %union.rec*, %union.rec** %opred7112, align 8
  store %union.rec* %2499, %union.rec** %z, align 8
  br label %for.cond.7113

for.cond.7113:                                    ; preds = %for.inc.7122, %for.body.7108
  %2500 = load %union.rec*, %union.rec** %z, align 8
  %os17114 = bitcast %union.rec* %2500 to %struct.word_type*
  %ou17115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17114, i32 0, i32 1
  %os117116 = bitcast %union.FIRST_UNION* %ou17115 to %struct.anon*
  %otype7117 = getelementptr inbounds %struct.anon, %struct.anon* %os117116, i32 0, i32 0
  %2501 = load i8, i8* %otype7117, align 1
  %conv7118 = zext i8 %2501 to i32
  %cmp7119 = icmp eq i32 %conv7118, 0
  br i1 %cmp7119, label %for.body.7121, label %for.end.7127

for.body.7121:                                    ; preds = %for.cond.7113
  br label %for.inc.7122

for.inc.7122:                                     ; preds = %for.body.7121
  %2502 = load %union.rec*, %union.rec** %z, align 8
  %os17123 = bitcast %union.rec* %2502 to %struct.word_type*
  %olist7124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17123, i32 0, i32 0
  %arrayidx7125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7124, i32 0, i64 1
  %opred7126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7125, i32 0, i32 0
  %2503 = load %union.rec*, %union.rec** %opred7126, align 8
  store %union.rec* %2503, %union.rec** %z, align 8
  br label %for.cond.7113

for.end.7127:                                     ; preds = %for.cond.7113
  %2504 = load %union.rec*, %union.rec** %z, align 8
  %os17128 = bitcast %union.rec* %2504 to %struct.word_type*
  %ou17129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17128, i32 0, i32 1
  %os117130 = bitcast %union.FIRST_UNION* %ou17129 to %struct.anon*
  %otype7131 = getelementptr inbounds %struct.anon, %struct.anon* %os117130, i32 0, i32 0
  %2505 = load i8, i8* %otype7131, align 1
  %conv7132 = zext i8 %2505 to i32
  %cmp7133 = icmp eq i32 %conv7132, 1
  br i1 %cmp7133, label %if.then.7135, label %if.else.7147

if.then.7135:                                     ; preds = %for.end.7127
  %2506 = load i32, i32* %jn, align 4
  %tobool7136 = icmp ne i32 %2506, 0
  br i1 %tobool7136, label %land.rhs.7137, label %land.end.7145

land.rhs.7137:                                    ; preds = %if.then.7135
  %2507 = load %union.rec*, %union.rec** %z, align 8
  %os57138 = bitcast %union.rec* %2507 to %struct.gapobj_type*
  %ogap7139 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57138, i32 0, i32 3
  %2508 = bitcast %struct.GAP* %ogap7139 to i16*
  %bf.load7140 = load i16, i16* %2508, align 4
  %bf.lshr7141 = lshr i16 %bf.load7140, 9
  %bf.clear7142 = and i16 %bf.lshr7141, 1
  %bf.cast7143 = zext i16 %bf.clear7142 to i32
  %tobool7144 = icmp ne i32 %bf.cast7143, 0
  br label %land.end.7145

land.end.7145:                                    ; preds = %land.rhs.7137, %if.then.7135
  %2509 = phi i1 [ false, %if.then.7135 ], [ %tobool7144, %land.rhs.7137 ]
  %land.ext7146 = zext i1 %2509 to i32
  store i32 %land.ext7146, i32* %jn, align 4
  br label %if.end.7178

if.else.7147:                                     ; preds = %for.end.7127
  %2510 = load %union.rec*, %union.rec** %z, align 8
  %os17148 = bitcast %union.rec* %2510 to %struct.word_type*
  %ou17149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17148, i32 0, i32 1
  %os117150 = bitcast %union.FIRST_UNION* %ou17149 to %struct.anon*
  %otype7151 = getelementptr inbounds %struct.anon, %struct.anon* %os117150, i32 0, i32 0
  %2511 = load i8, i8* %otype7151, align 1
  %conv7152 = zext i8 %2511 to i32
  %cmp7153 = icmp eq i32 %conv7152, 9
  br i1 %cmp7153, label %cond.true.7155, label %cond.false.7158

cond.true.7155:                                   ; preds = %if.else.7147
  %2512 = load %union.rec*, %union.rec** %z, align 8
  %call7156 = call i32 @SplitIsDefinite(%union.rec* %2512)
  %tobool7157 = icmp ne i32 %call7156, 0
  br i1 %tobool7157, label %if.then.7176, label %if.end.7177

cond.false.7158:                                  ; preds = %if.else.7147
  %2513 = load %union.rec*, %union.rec** %z, align 8
  %os17159 = bitcast %union.rec* %2513 to %struct.word_type*
  %ou17160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17159, i32 0, i32 1
  %os117161 = bitcast %union.FIRST_UNION* %ou17160 to %struct.anon*
  %otype7162 = getelementptr inbounds %struct.anon, %struct.anon* %os117161, i32 0, i32 0
  %2514 = load i8, i8* %otype7162, align 1
  %conv7163 = zext i8 %2514 to i32
  %cmp7164 = icmp sge i32 %conv7163, 9
  br i1 %cmp7164, label %land.rhs.7166, label %land.end.7174

land.rhs.7166:                                    ; preds = %cond.false.7158
  %2515 = load %union.rec*, %union.rec** %z, align 8
  %os17167 = bitcast %union.rec* %2515 to %struct.word_type*
  %ou17168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17167, i32 0, i32 1
  %os117169 = bitcast %union.FIRST_UNION* %ou17168 to %struct.anon*
  %otype7170 = getelementptr inbounds %struct.anon, %struct.anon* %os117169, i32 0, i32 0
  %2516 = load i8, i8* %otype7170, align 1
  %conv7171 = zext i8 %2516 to i32
  %cmp7172 = icmp sle i32 %conv7171, 99
  br label %land.end.7174

land.end.7174:                                    ; preds = %land.rhs.7166, %cond.false.7158
  %2517 = phi i1 [ false, %cond.false.7158 ], [ %cmp7172, %land.rhs.7166 ]
  br i1 %2517, label %if.then.7176, label %if.end.7177

if.then.7176:                                     ; preds = %land.end.7174, %cond.true.7155
  br label %for.end.7184

if.end.7177:                                      ; preds = %land.end.7174, %cond.true.7155
  br label %if.end.7178

if.end.7178:                                      ; preds = %if.end.7177, %land.end.7145
  br label %for.inc.7179

for.inc.7179:                                     ; preds = %if.end.7178
  %2518 = load %union.rec*, %union.rec** %link, align 8
  %os17180 = bitcast %union.rec* %2518 to %struct.word_type*
  %olist7181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17180, i32 0, i32 0
  %arrayidx7182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7181, i32 0, i64 0
  %osucc7183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7182, i32 0, i32 1
  %2519 = load %union.rec*, %union.rec** %osucc7183, align 8
  store %union.rec* %2519, %union.rec** %link, align 8
  br label %for.cond.7105

for.end.7184:                                     ; preds = %if.then.7176, %for.cond.7105
  %2520 = load %union.rec*, %union.rec** %link, align 8
  %2521 = load %union.rec*, %union.rec** %y, align 8
  %cmp7185 = icmp ne %union.rec* %2520, %2521
  br i1 %cmp7185, label %if.end.7189, label %if.then.7187

if.then.7187:                                     ; preds = %for.end.7184
  %2522 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7188 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2522, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.7189

if.end.7189:                                      ; preds = %if.then.7187, %for.end.7184
  %2523 = load %union.rec*, %union.rec** %z, align 8
  %os17190 = bitcast %union.rec* %2523 to %struct.word_type*
  %ou37191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17190, i32 0, i32 3
  %os317192 = bitcast %union.THIRD_UNION* %ou37191 to %struct.anon.6*
  %oback7193 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317192, i32 0, i32 0
  %arrayidx7194 = getelementptr inbounds [2 x i32], [2 x i32]* %oback7193, i32 0, i64 0
  %2524 = load i32, i32* %arrayidx7194, align 4
  store i32 %2524, i32* %f, align 4
  %2525 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %2525, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %gp, align 8
  store i32 1, i32* %jn, align 4
  %2526 = load %union.rec*, %union.rec** %link, align 8
  %os17195 = bitcast %union.rec* %2526 to %struct.word_type*
  %olist7196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17195, i32 0, i32 0
  %arrayidx7197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7196, i32 0, i64 0
  %osucc7198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7197, i32 0, i32 1
  %2527 = load %union.rec*, %union.rec** %osucc7198, align 8
  store %union.rec* %2527, %union.rec** %link, align 8
  br label %for.cond.7199

for.cond.7199:                                    ; preds = %for.inc.7278, %if.end.7189
  %2528 = load %union.rec*, %union.rec** %link, align 8
  %2529 = load %union.rec*, %union.rec** %y, align 8
  %cmp7200 = icmp ne %union.rec* %2528, %2529
  br i1 %cmp7200, label %for.body.7202, label %for.end.7283

for.body.7202:                                    ; preds = %for.cond.7199
  %2530 = load %union.rec*, %union.rec** %link, align 8
  %os17203 = bitcast %union.rec* %2530 to %struct.word_type*
  %olist7204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17203, i32 0, i32 0
  %arrayidx7205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7204, i32 0, i64 1
  %opred7206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7205, i32 0, i32 0
  %2531 = load %union.rec*, %union.rec** %opred7206, align 8
  store %union.rec* %2531, %union.rec** %z, align 8
  br label %for.cond.7207

for.cond.7207:                                    ; preds = %for.inc.7216, %for.body.7202
  %2532 = load %union.rec*, %union.rec** %z, align 8
  %os17208 = bitcast %union.rec* %2532 to %struct.word_type*
  %ou17209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17208, i32 0, i32 1
  %os117210 = bitcast %union.FIRST_UNION* %ou17209 to %struct.anon*
  %otype7211 = getelementptr inbounds %struct.anon, %struct.anon* %os117210, i32 0, i32 0
  %2533 = load i8, i8* %otype7211, align 1
  %conv7212 = zext i8 %2533 to i32
  %cmp7213 = icmp eq i32 %conv7212, 0
  br i1 %cmp7213, label %for.body.7215, label %for.end.7221

for.body.7215:                                    ; preds = %for.cond.7207
  br label %for.inc.7216

for.inc.7216:                                     ; preds = %for.body.7215
  %2534 = load %union.rec*, %union.rec** %z, align 8
  %os17217 = bitcast %union.rec* %2534 to %struct.word_type*
  %olist7218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17217, i32 0, i32 0
  %arrayidx7219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7218, i32 0, i64 1
  %opred7220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7219, i32 0, i32 0
  %2535 = load %union.rec*, %union.rec** %opred7220, align 8
  store %union.rec* %2535, %union.rec** %z, align 8
  br label %for.cond.7207

for.end.7221:                                     ; preds = %for.cond.7207
  %2536 = load %union.rec*, %union.rec** %z, align 8
  %os17222 = bitcast %union.rec* %2536 to %struct.word_type*
  %ou17223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17222, i32 0, i32 1
  %os117224 = bitcast %union.FIRST_UNION* %ou17223 to %struct.anon*
  %otype7225 = getelementptr inbounds %struct.anon, %struct.anon* %os117224, i32 0, i32 0
  %2537 = load i8, i8* %otype7225, align 1
  %conv7226 = zext i8 %2537 to i32
  %cmp7227 = icmp eq i32 %conv7226, 1
  br i1 %cmp7227, label %if.then.7229, label %if.else.7241

if.then.7229:                                     ; preds = %for.end.7221
  %2538 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %2538, %union.rec** %gp, align 8
  %2539 = load i32, i32* %jn, align 4
  %tobool7230 = icmp ne i32 %2539, 0
  br i1 %tobool7230, label %land.rhs.7231, label %land.end.7239

land.rhs.7231:                                    ; preds = %if.then.7229
  %2540 = load %union.rec*, %union.rec** %z, align 8
  %os57232 = bitcast %union.rec* %2540 to %struct.gapobj_type*
  %ogap7233 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57232, i32 0, i32 3
  %2541 = bitcast %struct.GAP* %ogap7233 to i16*
  %bf.load7234 = load i16, i16* %2541, align 4
  %bf.lshr7235 = lshr i16 %bf.load7234, 9
  %bf.clear7236 = and i16 %bf.lshr7235, 1
  %bf.cast7237 = zext i16 %bf.clear7236 to i32
  %tobool7238 = icmp ne i32 %bf.cast7237, 0
  br label %land.end.7239

land.end.7239:                                    ; preds = %land.rhs.7231, %if.then.7229
  %2542 = phi i1 [ false, %if.then.7229 ], [ %tobool7238, %land.rhs.7231 ]
  %land.ext7240 = zext i1 %2542 to i32
  store i32 %land.ext7240, i32* %jn, align 4
  br label %if.end.7277

if.else.7241:                                     ; preds = %for.end.7221
  %2543 = load %union.rec*, %union.rec** %z, align 8
  %os17242 = bitcast %union.rec* %2543 to %struct.word_type*
  %ou17243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17242, i32 0, i32 1
  %os117244 = bitcast %union.FIRST_UNION* %ou17243 to %struct.anon*
  %otype7245 = getelementptr inbounds %struct.anon, %struct.anon* %os117244, i32 0, i32 0
  %2544 = load i8, i8* %otype7245, align 1
  %conv7246 = zext i8 %2544 to i32
  %cmp7247 = icmp eq i32 %conv7246, 9
  br i1 %cmp7247, label %cond.true.7249, label %cond.false.7252

cond.true.7249:                                   ; preds = %if.else.7241
  %2545 = load %union.rec*, %union.rec** %z, align 8
  %call7250 = call i32 @SplitIsDefinite(%union.rec* %2545)
  %tobool7251 = icmp ne i32 %call7250, 0
  br i1 %tobool7251, label %if.then.7270, label %if.end.7276

cond.false.7252:                                  ; preds = %if.else.7241
  %2546 = load %union.rec*, %union.rec** %z, align 8
  %os17253 = bitcast %union.rec* %2546 to %struct.word_type*
  %ou17254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17253, i32 0, i32 1
  %os117255 = bitcast %union.FIRST_UNION* %ou17254 to %struct.anon*
  %otype7256 = getelementptr inbounds %struct.anon, %struct.anon* %os117255, i32 0, i32 0
  %2547 = load i8, i8* %otype7256, align 1
  %conv7257 = zext i8 %2547 to i32
  %cmp7258 = icmp sge i32 %conv7257, 9
  br i1 %cmp7258, label %land.rhs.7260, label %land.end.7268

land.rhs.7260:                                    ; preds = %cond.false.7252
  %2548 = load %union.rec*, %union.rec** %z, align 8
  %os17261 = bitcast %union.rec* %2548 to %struct.word_type*
  %ou17262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17261, i32 0, i32 1
  %os117263 = bitcast %union.FIRST_UNION* %ou17262 to %struct.anon*
  %otype7264 = getelementptr inbounds %struct.anon, %struct.anon* %os117263, i32 0, i32 0
  %2549 = load i8, i8* %otype7264, align 1
  %conv7265 = zext i8 %2549 to i32
  %cmp7266 = icmp sle i32 %conv7265, 99
  br label %land.end.7268

land.end.7268:                                    ; preds = %land.rhs.7260, %cond.false.7252
  %2550 = phi i1 [ false, %cond.false.7252 ], [ %cmp7266, %land.rhs.7260 ]
  br i1 %2550, label %if.then.7270, label %if.end.7276

if.then.7270:                                     ; preds = %land.end.7268, %cond.true.7249
  %2551 = load %union.rec*, %union.rec** %gp, align 8
  %cmp7271 = icmp ne %union.rec* %2551, null
  br i1 %cmp7271, label %if.end.7275, label %if.then.7273

if.then.7273:                                     ; preds = %if.then.7270
  %2552 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7274 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2552, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.7275

if.end.7275:                                      ; preds = %if.then.7273, %if.then.7270
  br label %for.end.7283

if.end.7276:                                      ; preds = %land.end.7268, %cond.true.7249
  br label %if.end.7277

if.end.7277:                                      ; preds = %if.end.7276, %land.end.7239
  br label %for.inc.7278

for.inc.7278:                                     ; preds = %if.end.7277
  %2553 = load %union.rec*, %union.rec** %link, align 8
  %os17279 = bitcast %union.rec* %2553 to %struct.word_type*
  %olist7280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17279, i32 0, i32 0
  %arrayidx7281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7280, i32 0, i64 0
  %osucc7282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7281, i32 0, i32 1
  %2554 = load %union.rec*, %union.rec** %osucc7282, align 8
  store %union.rec* %2554, %union.rec** %link, align 8
  br label %for.cond.7199

for.end.7283:                                     ; preds = %if.end.7275, %for.cond.7199
  br label %while.cond.7284

while.cond.7284:                                  ; preds = %for.end.7395, %for.end.7283
  %2555 = load %union.rec*, %union.rec** %link, align 8
  %2556 = load %union.rec*, %union.rec** %y, align 8
  %cmp7285 = icmp ne %union.rec* %2555, %2556
  br i1 %cmp7285, label %while.body.7287, label %while.end.7396

while.body.7287:                                  ; preds = %while.cond.7284
  %2557 = load %union.rec*, %union.rec** %prev, align 8
  %os17288 = bitcast %union.rec* %2557 to %struct.word_type*
  %ou37289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17288, i32 0, i32 3
  %os317290 = bitcast %union.THIRD_UNION* %ou37289 to %struct.anon.6*
  %ofwd7291 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317290, i32 0, i32 1
  %arrayidx7292 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd7291, i32 0, i64 0
  %2558 = load i32, i32* %arrayidx7292, align 4
  %2559 = load %union.rec*, %union.rec** %z, align 8
  %os17293 = bitcast %union.rec* %2559 to %struct.word_type*
  %ou37294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17293, i32 0, i32 3
  %os317295 = bitcast %union.THIRD_UNION* %ou37294 to %struct.anon.6*
  %oback7296 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317295, i32 0, i32 0
  %arrayidx7297 = getelementptr inbounds [2 x i32], [2 x i32]* %oback7296, i32 0, i64 0
  %2560 = load i32, i32* %arrayidx7297, align 4
  %2561 = load %union.rec*, %union.rec** %z, align 8
  %os17298 = bitcast %union.rec* %2561 to %struct.word_type*
  %ou37299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17298, i32 0, i32 3
  %os317300 = bitcast %union.THIRD_UNION* %ou37299 to %struct.anon.6*
  %ofwd7301 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317300, i32 0, i32 1
  %arrayidx7302 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd7301, i32 0, i64 0
  %2562 = load i32, i32* %arrayidx7302, align 4
  %2563 = load %union.rec*, %union.rec** %gp, align 8
  %os57303 = bitcast %union.rec* %2563 to %struct.gapobj_type*
  %ogap7304 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57303, i32 0, i32 3
  %call7305 = call i32 @MinGap(i32 %2558, i32 %2560, i32 %2562, %struct.GAP* %ogap7304)
  %2564 = load i32, i32* %f, align 4
  %add7306 = add nsw i32 %2564, %call7305
  store i32 %add7306, i32* %f, align 4
  %2565 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %2565, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %gp, align 8
  store i32 1, i32* %jn, align 4
  %2566 = load %union.rec*, %union.rec** %link, align 8
  %os17307 = bitcast %union.rec* %2566 to %struct.word_type*
  %olist7308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17307, i32 0, i32 0
  %arrayidx7309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7308, i32 0, i64 0
  %osucc7310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7309, i32 0, i32 1
  %2567 = load %union.rec*, %union.rec** %osucc7310, align 8
  store %union.rec* %2567, %union.rec** %link, align 8
  br label %for.cond.7311

for.cond.7311:                                    ; preds = %for.inc.7390, %while.body.7287
  %2568 = load %union.rec*, %union.rec** %link, align 8
  %2569 = load %union.rec*, %union.rec** %y, align 8
  %cmp7312 = icmp ne %union.rec* %2568, %2569
  br i1 %cmp7312, label %for.body.7314, label %for.end.7395

for.body.7314:                                    ; preds = %for.cond.7311
  %2570 = load %union.rec*, %union.rec** %link, align 8
  %os17315 = bitcast %union.rec* %2570 to %struct.word_type*
  %olist7316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17315, i32 0, i32 0
  %arrayidx7317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7316, i32 0, i64 1
  %opred7318 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7317, i32 0, i32 0
  %2571 = load %union.rec*, %union.rec** %opred7318, align 8
  store %union.rec* %2571, %union.rec** %z, align 8
  br label %for.cond.7319

for.cond.7319:                                    ; preds = %for.inc.7328, %for.body.7314
  %2572 = load %union.rec*, %union.rec** %z, align 8
  %os17320 = bitcast %union.rec* %2572 to %struct.word_type*
  %ou17321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17320, i32 0, i32 1
  %os117322 = bitcast %union.FIRST_UNION* %ou17321 to %struct.anon*
  %otype7323 = getelementptr inbounds %struct.anon, %struct.anon* %os117322, i32 0, i32 0
  %2573 = load i8, i8* %otype7323, align 1
  %conv7324 = zext i8 %2573 to i32
  %cmp7325 = icmp eq i32 %conv7324, 0
  br i1 %cmp7325, label %for.body.7327, label %for.end.7333

for.body.7327:                                    ; preds = %for.cond.7319
  br label %for.inc.7328

for.inc.7328:                                     ; preds = %for.body.7327
  %2574 = load %union.rec*, %union.rec** %z, align 8
  %os17329 = bitcast %union.rec* %2574 to %struct.word_type*
  %olist7330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17329, i32 0, i32 0
  %arrayidx7331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7330, i32 0, i64 1
  %opred7332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7331, i32 0, i32 0
  %2575 = load %union.rec*, %union.rec** %opred7332, align 8
  store %union.rec* %2575, %union.rec** %z, align 8
  br label %for.cond.7319

for.end.7333:                                     ; preds = %for.cond.7319
  %2576 = load %union.rec*, %union.rec** %z, align 8
  %os17334 = bitcast %union.rec* %2576 to %struct.word_type*
  %ou17335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17334, i32 0, i32 1
  %os117336 = bitcast %union.FIRST_UNION* %ou17335 to %struct.anon*
  %otype7337 = getelementptr inbounds %struct.anon, %struct.anon* %os117336, i32 0, i32 0
  %2577 = load i8, i8* %otype7337, align 1
  %conv7338 = zext i8 %2577 to i32
  %cmp7339 = icmp eq i32 %conv7338, 1
  br i1 %cmp7339, label %if.then.7341, label %if.else.7353

if.then.7341:                                     ; preds = %for.end.7333
  %2578 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %2578, %union.rec** %gp, align 8
  %2579 = load i32, i32* %jn, align 4
  %tobool7342 = icmp ne i32 %2579, 0
  br i1 %tobool7342, label %land.rhs.7343, label %land.end.7351

land.rhs.7343:                                    ; preds = %if.then.7341
  %2580 = load %union.rec*, %union.rec** %z, align 8
  %os57344 = bitcast %union.rec* %2580 to %struct.gapobj_type*
  %ogap7345 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57344, i32 0, i32 3
  %2581 = bitcast %struct.GAP* %ogap7345 to i16*
  %bf.load7346 = load i16, i16* %2581, align 4
  %bf.lshr7347 = lshr i16 %bf.load7346, 9
  %bf.clear7348 = and i16 %bf.lshr7347, 1
  %bf.cast7349 = zext i16 %bf.clear7348 to i32
  %tobool7350 = icmp ne i32 %bf.cast7349, 0
  br label %land.end.7351

land.end.7351:                                    ; preds = %land.rhs.7343, %if.then.7341
  %2582 = phi i1 [ false, %if.then.7341 ], [ %tobool7350, %land.rhs.7343 ]
  %land.ext7352 = zext i1 %2582 to i32
  store i32 %land.ext7352, i32* %jn, align 4
  br label %if.end.7389

if.else.7353:                                     ; preds = %for.end.7333
  %2583 = load %union.rec*, %union.rec** %z, align 8
  %os17354 = bitcast %union.rec* %2583 to %struct.word_type*
  %ou17355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17354, i32 0, i32 1
  %os117356 = bitcast %union.FIRST_UNION* %ou17355 to %struct.anon*
  %otype7357 = getelementptr inbounds %struct.anon, %struct.anon* %os117356, i32 0, i32 0
  %2584 = load i8, i8* %otype7357, align 1
  %conv7358 = zext i8 %2584 to i32
  %cmp7359 = icmp eq i32 %conv7358, 9
  br i1 %cmp7359, label %cond.true.7361, label %cond.false.7364

cond.true.7361:                                   ; preds = %if.else.7353
  %2585 = load %union.rec*, %union.rec** %z, align 8
  %call7362 = call i32 @SplitIsDefinite(%union.rec* %2585)
  %tobool7363 = icmp ne i32 %call7362, 0
  br i1 %tobool7363, label %if.then.7382, label %if.end.7388

cond.false.7364:                                  ; preds = %if.else.7353
  %2586 = load %union.rec*, %union.rec** %z, align 8
  %os17365 = bitcast %union.rec* %2586 to %struct.word_type*
  %ou17366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17365, i32 0, i32 1
  %os117367 = bitcast %union.FIRST_UNION* %ou17366 to %struct.anon*
  %otype7368 = getelementptr inbounds %struct.anon, %struct.anon* %os117367, i32 0, i32 0
  %2587 = load i8, i8* %otype7368, align 1
  %conv7369 = zext i8 %2587 to i32
  %cmp7370 = icmp sge i32 %conv7369, 9
  br i1 %cmp7370, label %land.rhs.7372, label %land.end.7380

land.rhs.7372:                                    ; preds = %cond.false.7364
  %2588 = load %union.rec*, %union.rec** %z, align 8
  %os17373 = bitcast %union.rec* %2588 to %struct.word_type*
  %ou17374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17373, i32 0, i32 1
  %os117375 = bitcast %union.FIRST_UNION* %ou17374 to %struct.anon*
  %otype7376 = getelementptr inbounds %struct.anon, %struct.anon* %os117375, i32 0, i32 0
  %2589 = load i8, i8* %otype7376, align 1
  %conv7377 = zext i8 %2589 to i32
  %cmp7378 = icmp sle i32 %conv7377, 99
  br label %land.end.7380

land.end.7380:                                    ; preds = %land.rhs.7372, %cond.false.7364
  %2590 = phi i1 [ false, %cond.false.7364 ], [ %cmp7378, %land.rhs.7372 ]
  br i1 %2590, label %if.then.7382, label %if.end.7388

if.then.7382:                                     ; preds = %land.end.7380, %cond.true.7361
  %2591 = load %union.rec*, %union.rec** %gp, align 8
  %cmp7383 = icmp ne %union.rec* %2591, null
  br i1 %cmp7383, label %if.end.7387, label %if.then.7385

if.then.7385:                                     ; preds = %if.then.7382
  %2592 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7386 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2592, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.7387

if.end.7387:                                      ; preds = %if.then.7385, %if.then.7382
  br label %for.end.7395

if.end.7388:                                      ; preds = %land.end.7380, %cond.true.7361
  br label %if.end.7389

if.end.7389:                                      ; preds = %if.end.7388, %land.end.7351
  br label %for.inc.7390

for.inc.7390:                                     ; preds = %if.end.7389
  %2593 = load %union.rec*, %union.rec** %link, align 8
  %os17391 = bitcast %union.rec* %2593 to %struct.word_type*
  %olist7392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17391, i32 0, i32 0
  %arrayidx7393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7392, i32 0, i64 0
  %osucc7394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7393, i32 0, i32 1
  %2594 = load %union.rec*, %union.rec** %osucc7394, align 8
  store %union.rec* %2594, %union.rec** %link, align 8
  br label %for.cond.7311

for.end.7395:                                     ; preds = %if.end.7387, %for.cond.7311
  br label %while.cond.7284

while.end.7396:                                   ; preds = %while.cond.7284
  %2595 = load i32, i32* %f, align 4
  %2596 = load %union.rec*, %union.rec** %prev, align 8
  %os17397 = bitcast %union.rec* %2596 to %struct.word_type*
  %ou37398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17397, i32 0, i32 3
  %os317399 = bitcast %union.THIRD_UNION* %ou37398 to %struct.anon.6*
  %ofwd7400 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317399, i32 0, i32 1
  %arrayidx7401 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd7400, i32 0, i64 0
  %2597 = load i32, i32* %arrayidx7401, align 4
  %add7402 = add nsw i32 %2595, %2597
  %cmp7403 = icmp slt i32 8388607, %add7402
  br i1 %cmp7403, label %cond.true.7405, label %cond.false.7406

cond.true.7405:                                   ; preds = %while.end.7396
  br label %cond.end.7413

cond.false.7406:                                  ; preds = %while.end.7396
  %2598 = load i32, i32* %f, align 4
  %2599 = load %union.rec*, %union.rec** %prev, align 8
  %os17407 = bitcast %union.rec* %2599 to %struct.word_type*
  %ou37408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17407, i32 0, i32 3
  %os317409 = bitcast %union.THIRD_UNION* %ou37408 to %struct.anon.6*
  %ofwd7410 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317409, i32 0, i32 1
  %arrayidx7411 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd7410, i32 0, i64 0
  %2600 = load i32, i32* %arrayidx7411, align 4
  %add7412 = add nsw i32 %2598, %2600
  br label %cond.end.7413

cond.end.7413:                                    ; preds = %cond.false.7406, %cond.true.7405
  %cond7414 = phi i32 [ 8388607, %cond.true.7405 ], [ %add7412, %cond.false.7406 ]
  %2601 = load %union.rec*, %union.rec** %y, align 8
  %os17415 = bitcast %union.rec* %2601 to %struct.word_type*
  %ou37416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17415, i32 0, i32 3
  %os317417 = bitcast %union.THIRD_UNION* %ou37416 to %struct.anon.6*
  %ofwd7418 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317417, i32 0, i32 1
  %arrayidx7419 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd7418, i32 0, i64 0
  store i32 %cond7414, i32* %arrayidx7419, align 4
  %2602 = load %union.rec*, %union.rec** %y, align 8
  %os17420 = bitcast %union.rec* %2602 to %struct.word_type*
  %ou37421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17420, i32 0, i32 3
  %os317422 = bitcast %union.THIRD_UNION* %ou37421 to %struct.anon.6*
  %oback7423 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317422, i32 0, i32 0
  %arrayidx7424 = getelementptr inbounds [2 x i32], [2 x i32]* %oback7423, i32 0, i64 0
  %2603 = load i32, i32* %arrayidx7424, align 4
  %2604 = load %union.rec*, %union.rec** %y, align 8
  %os17425 = bitcast %union.rec* %2604 to %struct.word_type*
  %ou37426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17425, i32 0, i32 3
  %os317427 = bitcast %union.THIRD_UNION* %ou37426 to %struct.anon.6*
  %ofwd7428 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317427, i32 0, i32 1
  %arrayidx7429 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd7428, i32 0, i64 0
  %2605 = load i32, i32* %arrayidx7429, align 4
  %add7430 = add nsw i32 %2603, %2605
  %2606 = load i32, i32* %max_width, align 4
  %cmp7431 = icmp sgt i32 %add7430, %2606
  br i1 %cmp7431, label %if.then.7433, label %if.end.7442

if.then.7433:                                     ; preds = %cond.end.7413
  %2607 = load %union.rec*, %union.rec** %y, align 8
  %os27434 = bitcast %union.rec* %2607 to %struct.closure_type*
  %ou47435 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os27434, i32 0, i32 4
  %osave_style7436 = bitcast %union.FOURTH_UNION* %ou47435 to %struct.STYLE*
  %osu27437 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style7436, i32 0, i32 1
  %oss27438 = bitcast %union.anon.10* %osu27437 to %struct.anon.11*
  %2608 = bitcast %struct.anon.11* %oss27438 to i8*
  %bf.load7439 = load i8, i8* %2608, align 4
  %bf.clear7440 = and i8 %bf.load7439, -113
  %bf.set7441 = or i8 %bf.clear7440, 112
  store i8 %bf.set7441, i8* %2608, align 4
  br label %if.end.7442

if.end.7442:                                      ; preds = %if.then.7433, %cond.end.7413
  br label %if.end.7443

if.end.7443:                                      ; preds = %if.end.7442, %if.end.3724
  br label %if.end.7444

if.end.7444:                                      ; preds = %if.end.7443
  %2609 = load i32*, i32** %hyph_used.addr, align 8
  %2610 = load i32, i32* %2609, align 4
  %tobool7445 = icmp ne i32 %2610, 0
  br i1 %tobool7445, label %land.lhs.true.7446, label %if.end.8146

land.lhs.true.7446:                               ; preds = %if.end.7444
  %2611 = load %union.rec*, %union.rec** %res, align 8
  %os17447 = bitcast %union.rec* %2611 to %struct.word_type*
  %ou17448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17447, i32 0, i32 1
  %os117449 = bitcast %union.FIRST_UNION* %ou17448 to %struct.anon*
  %otype7450 = getelementptr inbounds %struct.anon, %struct.anon* %os117449, i32 0, i32 0
  %2612 = load i8, i8* %otype7450, align 1
  %conv7451 = zext i8 %2612 to i32
  %cmp7452 = icmp eq i32 %conv7451, 19
  br i1 %cmp7452, label %if.then.7454, label %if.end.8146

if.then.7454:                                     ; preds = %land.lhs.true.7446
  %2613 = load %union.rec*, %union.rec** %res, align 8
  %os17455 = bitcast %union.rec* %2613 to %struct.word_type*
  %olist7456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17455, i32 0, i32 0
  %arrayidx7457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7456, i32 0, i64 0
  %osucc7458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7457, i32 0, i32 1
  %2614 = load %union.rec*, %union.rec** %osucc7458, align 8
  store %union.rec* %2614, %union.rec** %link, align 8
  br label %for.cond.7459

for.cond.7459:                                    ; preds = %for.inc.8140, %if.then.7454
  %2615 = load %union.rec*, %union.rec** %link, align 8
  %2616 = load %union.rec*, %union.rec** %res, align 8
  %cmp7460 = icmp ne %union.rec* %2615, %2616
  br i1 %cmp7460, label %for.body.7462, label %for.end.8145

for.body.7462:                                    ; preds = %for.cond.7459
  %2617 = load %union.rec*, %union.rec** %link, align 8
  %os17463 = bitcast %union.rec* %2617 to %struct.word_type*
  %olist7464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17463, i32 0, i32 0
  %arrayidx7465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7464, i32 0, i64 1
  %opred7466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7465, i32 0, i32 0
  %2618 = load %union.rec*, %union.rec** %opred7466, align 8
  store %union.rec* %2618, %union.rec** %y, align 8
  br label %for.cond.7467

for.cond.7467:                                    ; preds = %for.inc.7476, %for.body.7462
  %2619 = load %union.rec*, %union.rec** %y, align 8
  %os17468 = bitcast %union.rec* %2619 to %struct.word_type*
  %ou17469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17468, i32 0, i32 1
  %os117470 = bitcast %union.FIRST_UNION* %ou17469 to %struct.anon*
  %otype7471 = getelementptr inbounds %struct.anon, %struct.anon* %os117470, i32 0, i32 0
  %2620 = load i8, i8* %otype7471, align 1
  %conv7472 = zext i8 %2620 to i32
  %cmp7473 = icmp eq i32 %conv7472, 0
  br i1 %cmp7473, label %for.body.7475, label %for.end.7481

for.body.7475:                                    ; preds = %for.cond.7467
  br label %for.inc.7476

for.inc.7476:                                     ; preds = %for.body.7475
  %2621 = load %union.rec*, %union.rec** %y, align 8
  %os17477 = bitcast %union.rec* %2621 to %struct.word_type*
  %olist7478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17477, i32 0, i32 0
  %arrayidx7479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7478, i32 0, i64 1
  %opred7480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7479, i32 0, i32 0
  %2622 = load %union.rec*, %union.rec** %opred7480, align 8
  store %union.rec* %2622, %union.rec** %y, align 8
  br label %for.cond.7467

for.end.7481:                                     ; preds = %for.cond.7467
  %2623 = load %union.rec*, %union.rec** %y, align 8
  %os17482 = bitcast %union.rec* %2623 to %struct.word_type*
  %ou17483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17482, i32 0, i32 1
  %os117484 = bitcast %union.FIRST_UNION* %ou17483 to %struct.anon*
  %otype7485 = getelementptr inbounds %struct.anon, %struct.anon* %os117484, i32 0, i32 0
  %2624 = load i8, i8* %otype7485, align 1
  %conv7486 = zext i8 %2624 to i32
  %cmp7487 = icmp eq i32 %conv7486, 17
  br i1 %cmp7487, label %if.then.7489, label %if.end.8139

if.then.7489:                                     ; preds = %for.end.7481
  %2625 = load %union.rec*, %union.rec** %y, align 8
  %os17490 = bitcast %union.rec* %2625 to %struct.word_type*
  %olist7491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17490, i32 0, i32 0
  %arrayidx7492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7491, i32 0, i64 0
  %osucc7493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7492, i32 0, i32 1
  %2626 = load %union.rec*, %union.rec** %osucc7493, align 8
  store %union.rec* %2626, %union.rec** %ylink, align 8
  br label %for.cond.7494

for.cond.7494:                                    ; preds = %for.inc.8133, %if.then.7489
  %2627 = load %union.rec*, %union.rec** %ylink, align 8
  %2628 = load %union.rec*, %union.rec** %y, align 8
  %cmp7495 = icmp ne %union.rec* %2627, %2628
  br i1 %cmp7495, label %for.body.7497, label %for.end.8138

for.body.7497:                                    ; preds = %for.cond.7494
  %2629 = load %union.rec*, %union.rec** %ylink, align 8
  %os17498 = bitcast %union.rec* %2629 to %struct.word_type*
  %olist7499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17498, i32 0, i32 0
  %arrayidx7500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7499, i32 0, i64 1
  %opred7501 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7500, i32 0, i32 0
  %2630 = load %union.rec*, %union.rec** %opred7501, align 8
  store %union.rec* %2630, %union.rec** %gp, align 8
  br label %for.cond.7502

for.cond.7502:                                    ; preds = %for.inc.7511, %for.body.7497
  %2631 = load %union.rec*, %union.rec** %gp, align 8
  %os17503 = bitcast %union.rec* %2631 to %struct.word_type*
  %ou17504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17503, i32 0, i32 1
  %os117505 = bitcast %union.FIRST_UNION* %ou17504 to %struct.anon*
  %otype7506 = getelementptr inbounds %struct.anon, %struct.anon* %os117505, i32 0, i32 0
  %2632 = load i8, i8* %otype7506, align 1
  %conv7507 = zext i8 %2632 to i32
  %cmp7508 = icmp eq i32 %conv7507, 0
  br i1 %cmp7508, label %for.body.7510, label %for.end.7516

for.body.7510:                                    ; preds = %for.cond.7502
  br label %for.inc.7511

for.inc.7511:                                     ; preds = %for.body.7510
  %2633 = load %union.rec*, %union.rec** %gp, align 8
  %os17512 = bitcast %union.rec* %2633 to %struct.word_type*
  %olist7513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17512, i32 0, i32 0
  %arrayidx7514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7513, i32 0, i64 1
  %opred7515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7514, i32 0, i32 0
  %2634 = load %union.rec*, %union.rec** %opred7515, align 8
  store %union.rec* %2634, %union.rec** %gp, align 8
  br label %for.cond.7502

for.end.7516:                                     ; preds = %for.cond.7502
  %2635 = load %union.rec*, %union.rec** %gp, align 8
  %os17517 = bitcast %union.rec* %2635 to %struct.word_type*
  %ou17518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17517, i32 0, i32 1
  %os117519 = bitcast %union.FIRST_UNION* %ou17518 to %struct.anon*
  %otype7520 = getelementptr inbounds %struct.anon, %struct.anon* %os117519, i32 0, i32 0
  %2636 = load i8, i8* %otype7520, align 1
  %conv7521 = zext i8 %2636 to i32
  %cmp7522 = icmp eq i32 %conv7521, 1
  br i1 %cmp7522, label %land.lhs.true.7524, label %if.end.8132

land.lhs.true.7524:                               ; preds = %for.end.7516
  %2637 = load %union.rec*, %union.rec** %gp, align 8
  %os57525 = bitcast %union.rec* %2637 to %struct.gapobj_type*
  %ogap7526 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57525, i32 0, i32 3
  %owidth7527 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap7526, i32 0, i32 1
  %2638 = load i16, i16* %owidth7527, align 2
  %conv7528 = sext i16 %2638 to i32
  %cmp7529 = icmp eq i32 %conv7528, 0
  br i1 %cmp7529, label %land.lhs.true.7531, label %if.end.8132

land.lhs.true.7531:                               ; preds = %land.lhs.true.7524
  %2639 = load %union.rec*, %union.rec** %gp, align 8
  %os57532 = bitcast %union.rec* %2639 to %struct.gapobj_type*
  %ogap7533 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os57532, i32 0, i32 3
  %2640 = bitcast %struct.GAP* %ogap7533 to i16*
  %bf.load7534 = load i16, i16* %2640, align 4
  %bf.lshr7535 = lshr i16 %bf.load7534, 13
  %bf.cast7536 = zext i16 %bf.lshr7535 to i32
  %cmp7537 = icmp eq i32 %bf.cast7536, 7
  br i1 %cmp7537, label %if.then.7539, label %if.end.8132

if.then.7539:                                     ; preds = %land.lhs.true.7531
  %2641 = load %union.rec*, %union.rec** %ylink, align 8
  %os17540 = bitcast %union.rec* %2641 to %struct.word_type*
  %olist7541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17540, i32 0, i32 0
  %arrayidx7542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7541, i32 0, i64 0
  %opred7543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7542, i32 0, i32 0
  %2642 = load %union.rec*, %union.rec** %opred7543, align 8
  %os17544 = bitcast %union.rec* %2642 to %struct.word_type*
  %olist7545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17544, i32 0, i32 0
  %arrayidx7546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7545, i32 0, i64 1
  %opred7547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7546, i32 0, i32 0
  %2643 = load %union.rec*, %union.rec** %opred7547, align 8
  store %union.rec* %2643, %union.rec** %prev, align 8
  br label %for.cond.7548

for.cond.7548:                                    ; preds = %for.inc.7557, %if.then.7539
  %2644 = load %union.rec*, %union.rec** %prev, align 8
  %os17549 = bitcast %union.rec* %2644 to %struct.word_type*
  %ou17550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17549, i32 0, i32 1
  %os117551 = bitcast %union.FIRST_UNION* %ou17550 to %struct.anon*
  %otype7552 = getelementptr inbounds %struct.anon, %struct.anon* %os117551, i32 0, i32 0
  %2645 = load i8, i8* %otype7552, align 1
  %conv7553 = zext i8 %2645 to i32
  %cmp7554 = icmp eq i32 %conv7553, 0
  br i1 %cmp7554, label %for.body.7556, label %for.end.7562

for.body.7556:                                    ; preds = %for.cond.7548
  br label %for.inc.7557

for.inc.7557:                                     ; preds = %for.body.7556
  %2646 = load %union.rec*, %union.rec** %prev, align 8
  %os17558 = bitcast %union.rec* %2646 to %struct.word_type*
  %olist7559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17558, i32 0, i32 0
  %arrayidx7560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7559, i32 0, i64 1
  %opred7561 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7560, i32 0, i32 0
  %2647 = load %union.rec*, %union.rec** %opred7561, align 8
  store %union.rec* %2647, %union.rec** %prev, align 8
  br label %for.cond.7548

for.end.7562:                                     ; preds = %for.cond.7548
  %2648 = load %union.rec*, %union.rec** %ylink, align 8
  %os17563 = bitcast %union.rec* %2648 to %struct.word_type*
  %olist7564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17563, i32 0, i32 0
  %arrayidx7565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7564, i32 0, i64 0
  %osucc7566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7565, i32 0, i32 1
  %2649 = load %union.rec*, %union.rec** %osucc7566, align 8
  %os17567 = bitcast %union.rec* %2649 to %struct.word_type*
  %olist7568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17567, i32 0, i32 0
  %arrayidx7569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7568, i32 0, i64 1
  %opred7570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7569, i32 0, i32 0
  %2650 = load %union.rec*, %union.rec** %opred7570, align 8
  store %union.rec* %2650, %union.rec** %next, align 8
  br label %for.cond.7571

for.cond.7571:                                    ; preds = %for.inc.7580, %for.end.7562
  %2651 = load %union.rec*, %union.rec** %next, align 8
  %os17572 = bitcast %union.rec* %2651 to %struct.word_type*
  %ou17573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17572, i32 0, i32 1
  %os117574 = bitcast %union.FIRST_UNION* %ou17573 to %struct.anon*
  %otype7575 = getelementptr inbounds %struct.anon, %struct.anon* %os117574, i32 0, i32 0
  %2652 = load i8, i8* %otype7575, align 1
  %conv7576 = zext i8 %2652 to i32
  %cmp7577 = icmp eq i32 %conv7576, 0
  br i1 %cmp7577, label %for.body.7579, label %for.end.7585

for.body.7579:                                    ; preds = %for.cond.7571
  br label %for.inc.7580

for.inc.7580:                                     ; preds = %for.body.7579
  %2653 = load %union.rec*, %union.rec** %next, align 8
  %os17581 = bitcast %union.rec* %2653 to %struct.word_type*
  %olist7582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17581, i32 0, i32 0
  %arrayidx7583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7582, i32 0, i64 1
  %opred7584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7583, i32 0, i32 0
  %2654 = load %union.rec*, %union.rec** %opred7584, align 8
  store %union.rec* %2654, %union.rec** %next, align 8
  br label %for.cond.7571

for.end.7585:                                     ; preds = %for.cond.7571
  %2655 = load %union.rec*, %union.rec** %prev, align 8
  %os17586 = bitcast %union.rec* %2655 to %struct.word_type*
  %ou17587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17586, i32 0, i32 1
  %os117588 = bitcast %union.FIRST_UNION* %ou17587 to %struct.anon*
  %otype7589 = getelementptr inbounds %struct.anon, %struct.anon* %os117588, i32 0, i32 0
  %2656 = load i8, i8* %otype7589, align 1
  %conv7590 = zext i8 %2656 to i32
  %cmp7591 = icmp eq i32 %conv7590, 11
  br i1 %cmp7591, label %land.lhs.true.7601, label %lor.lhs.false.7593

lor.lhs.false.7593:                               ; preds = %for.end.7585
  %2657 = load %union.rec*, %union.rec** %prev, align 8
  %os17594 = bitcast %union.rec* %2657 to %struct.word_type*
  %ou17595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17594, i32 0, i32 1
  %os117596 = bitcast %union.FIRST_UNION* %ou17595 to %struct.anon*
  %otype7597 = getelementptr inbounds %struct.anon, %struct.anon* %os117596, i32 0, i32 0
  %2658 = load i8, i8* %otype7597, align 1
  %conv7598 = zext i8 %2658 to i32
  %cmp7599 = icmp eq i32 %conv7598, 12
  br i1 %cmp7599, label %land.lhs.true.7601, label %if.end.8131

land.lhs.true.7601:                               ; preds = %lor.lhs.false.7593, %for.end.7585
  %2659 = load %union.rec*, %union.rec** %next, align 8
  %os17602 = bitcast %union.rec* %2659 to %struct.word_type*
  %ou17603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17602, i32 0, i32 1
  %os117604 = bitcast %union.FIRST_UNION* %ou17603 to %struct.anon*
  %otype7605 = getelementptr inbounds %struct.anon, %struct.anon* %os117604, i32 0, i32 0
  %2660 = load i8, i8* %otype7605, align 1
  %conv7606 = zext i8 %2660 to i32
  %cmp7607 = icmp eq i32 %conv7606, 11
  br i1 %cmp7607, label %land.lhs.true.7617, label %lor.lhs.false.7609

lor.lhs.false.7609:                               ; preds = %land.lhs.true.7601
  %2661 = load %union.rec*, %union.rec** %next, align 8
  %os17610 = bitcast %union.rec* %2661 to %struct.word_type*
  %ou17611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17610, i32 0, i32 1
  %os117612 = bitcast %union.FIRST_UNION* %ou17611 to %struct.anon*
  %otype7613 = getelementptr inbounds %struct.anon, %struct.anon* %os117612, i32 0, i32 0
  %2662 = load i8, i8* %otype7613, align 1
  %conv7614 = zext i8 %2662 to i32
  %cmp7615 = icmp eq i32 %conv7614, 12
  br i1 %cmp7615, label %land.lhs.true.7617, label %if.end.8131

land.lhs.true.7617:                               ; preds = %lor.lhs.false.7609, %land.lhs.true.7601
  %2663 = load %union.rec*, %union.rec** %prev, align 8
  %os17618 = bitcast %union.rec* %2663 to %struct.word_type*
  %ou27619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17618, i32 0, i32 2
  %os227620 = bitcast %union.SECOND_UNION* %ou27619 to %struct.anon.1*
  %2664 = bitcast %struct.anon.1* %os227620 to i32*
  %bf.load7621 = load i32, i32* %2664, align 4
  %bf.clear7622 = and i32 %bf.load7621, 4095
  %2665 = load %union.rec*, %union.rec** %next, align 8
  %os17623 = bitcast %union.rec* %2665 to %struct.word_type*
  %ou27624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17623, i32 0, i32 2
  %os227625 = bitcast %union.SECOND_UNION* %ou27624 to %struct.anon.1*
  %2666 = bitcast %struct.anon.1* %os227625 to i32*
  %bf.load7626 = load i32, i32* %2666, align 4
  %bf.clear7627 = and i32 %bf.load7626, 4095
  %cmp7628 = icmp eq i32 %bf.clear7622, %bf.clear7627
  br i1 %cmp7628, label %land.lhs.true.7630, label %if.end.8131

land.lhs.true.7630:                               ; preds = %land.lhs.true.7617
  %2667 = load %union.rec*, %union.rec** %prev, align 8
  %os17631 = bitcast %union.rec* %2667 to %struct.word_type*
  %ou27632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17631, i32 0, i32 2
  %os227633 = bitcast %union.SECOND_UNION* %ou27632 to %struct.anon.1*
  %2668 = bitcast %struct.anon.1* %os227633 to i32*
  %bf.load7634 = load i32, i32* %2668, align 4
  %bf.lshr7635 = lshr i32 %bf.load7634, 12
  %bf.clear7636 = and i32 %bf.lshr7635, 1023
  %2669 = load %union.rec*, %union.rec** %next, align 8
  %os17637 = bitcast %union.rec* %2669 to %struct.word_type*
  %ou27638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17637, i32 0, i32 2
  %os227639 = bitcast %union.SECOND_UNION* %ou27638 to %struct.anon.1*
  %2670 = bitcast %struct.anon.1* %os227639 to i32*
  %bf.load7640 = load i32, i32* %2670, align 4
  %bf.lshr7641 = lshr i32 %bf.load7640, 12
  %bf.clear7642 = and i32 %bf.lshr7641, 1023
  %cmp7643 = icmp eq i32 %bf.clear7636, %bf.clear7642
  br i1 %cmp7643, label %land.lhs.true.7645, label %if.end.8131

land.lhs.true.7645:                               ; preds = %land.lhs.true.7630
  %2671 = load %union.rec*, %union.rec** %prev, align 8
  %os17646 = bitcast %union.rec* %2671 to %struct.word_type*
  %ou27647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17646, i32 0, i32 2
  %os227648 = bitcast %union.SECOND_UNION* %ou27647 to %struct.anon.1*
  %2672 = bitcast %struct.anon.1* %os227648 to i32*
  %bf.load7649 = load i32, i32* %2672, align 4
  %bf.lshr7650 = lshr i32 %bf.load7649, 22
  %bf.clear7651 = and i32 %bf.lshr7650, 1
  %2673 = load %union.rec*, %union.rec** %next, align 8
  %os17652 = bitcast %union.rec* %2673 to %struct.word_type*
  %ou27653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17652, i32 0, i32 2
  %os227654 = bitcast %union.SECOND_UNION* %ou27653 to %struct.anon.1*
  %2674 = bitcast %struct.anon.1* %os227654 to i32*
  %bf.load7655 = load i32, i32* %2674, align 4
  %bf.lshr7656 = lshr i32 %bf.load7655, 22
  %bf.clear7657 = and i32 %bf.lshr7656, 1
  %cmp7658 = icmp eq i32 %bf.clear7651, %bf.clear7657
  br i1 %cmp7658, label %land.lhs.true.7660, label %if.end.8131

land.lhs.true.7660:                               ; preds = %land.lhs.true.7645
  %2675 = load %union.rec*, %union.rec** %prev, align 8
  %os17661 = bitcast %union.rec* %2675 to %struct.word_type*
  %ou27662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17661, i32 0, i32 2
  %os227663 = bitcast %union.SECOND_UNION* %ou27662 to %struct.anon.1*
  %2676 = bitcast %struct.anon.1* %os227663 to i32*
  %bf.load7664 = load i32, i32* %2676, align 4
  %bf.lshr7665 = lshr i32 %bf.load7664, 23
  %bf.clear7666 = and i32 %bf.lshr7665, 63
  %2677 = load %union.rec*, %union.rec** %next, align 8
  %os17667 = bitcast %union.rec* %2677 to %struct.word_type*
  %ou27668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17667, i32 0, i32 2
  %os227669 = bitcast %union.SECOND_UNION* %ou27668 to %struct.anon.1*
  %2678 = bitcast %struct.anon.1* %os227669 to i32*
  %bf.load7670 = load i32, i32* %2678, align 4
  %bf.lshr7671 = lshr i32 %bf.load7670, 23
  %bf.clear7672 = and i32 %bf.lshr7671, 63
  %cmp7673 = icmp eq i32 %bf.clear7666, %bf.clear7672
  br i1 %cmp7673, label %land.lhs.true.7675, label %if.end.8131

land.lhs.true.7675:                               ; preds = %land.lhs.true.7660
  %2679 = load %union.rec*, %union.rec** %prev, align 8
  %os17676 = bitcast %union.rec* %2679 to %struct.word_type*
  %ou27677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17676, i32 0, i32 2
  %os227678 = bitcast %union.SECOND_UNION* %ou27677 to %struct.anon.1*
  %2680 = bitcast %struct.anon.1* %os227678 to i32*
  %bf.load7679 = load i32, i32* %2680, align 4
  %bf.lshr7680 = lshr i32 %bf.load7679, 29
  %bf.clear7681 = and i32 %bf.lshr7680, 3
  %2681 = load %union.rec*, %union.rec** %next, align 8
  %os17682 = bitcast %union.rec* %2681 to %struct.word_type*
  %ou27683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17682, i32 0, i32 2
  %os227684 = bitcast %union.SECOND_UNION* %ou27683 to %struct.anon.1*
  %2682 = bitcast %struct.anon.1* %os227684 to i32*
  %bf.load7685 = load i32, i32* %2682, align 4
  %bf.lshr7686 = lshr i32 %bf.load7685, 29
  %bf.clear7687 = and i32 %bf.lshr7686, 3
  %cmp7688 = icmp eq i32 %bf.clear7681, %bf.clear7687
  br i1 %cmp7688, label %if.then.7690, label %if.end.8131

if.then.7690:                                     ; preds = %land.lhs.true.7675
  %2683 = load %union.rec*, %union.rec** %prev, align 8
  %os17691 = bitcast %union.rec* %2683 to %struct.word_type*
  %ou17692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17691, i32 0, i32 1
  %os117693 = bitcast %union.FIRST_UNION* %ou17692 to %struct.anon*
  %otype7694 = getelementptr inbounds %struct.anon, %struct.anon* %os117693, i32 0, i32 0
  %2684 = load i8, i8* %otype7694, align 1
  %conv7695 = zext i8 %2684 to i32
  %cmp7696 = icmp eq i32 %conv7695, 12
  br i1 %cmp7696, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.7690
  %2685 = load %union.rec*, %union.rec** %next, align 8
  %os17698 = bitcast %union.rec* %2685 to %struct.word_type*
  %ou17699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17698, i32 0, i32 1
  %os117700 = bitcast %union.FIRST_UNION* %ou17699 to %struct.anon*
  %otype7701 = getelementptr inbounds %struct.anon, %struct.anon* %os117700, i32 0, i32 0
  %2686 = load i8, i8* %otype7701, align 1
  %conv7702 = zext i8 %2686 to i32
  %cmp7703 = icmp eq i32 %conv7702, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.7690
  %2687 = phi i1 [ true, %if.then.7690 ], [ %cmp7703, %lor.rhs ]
  %cond7705 = select i1 %2687, i32 12, i32 11
  store i32 %cond7705, i32* %typ, align 4
  %2688 = load i32, i32* %typ, align 4
  %2689 = load %union.rec*, %union.rec** %prev, align 8
  %os17706 = bitcast %union.rec* %2689 to %struct.word_type*
  %ostring7707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17706, i32 0, i32 4
  %arraydecay7708 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring7707, i32 0, i32 0
  %2690 = load %union.rec*, %union.rec** %next, align 8
  %os17709 = bitcast %union.rec* %2690 to %struct.word_type*
  %ostring7710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17709, i32 0, i32 4
  %arraydecay7711 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring7710, i32 0, i32 0
  %2691 = load %union.rec*, %union.rec** %prev, align 8
  %os17712 = bitcast %union.rec* %2691 to %struct.word_type*
  %ou17713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17712, i32 0, i32 1
  %ofpos7714 = bitcast %union.FIRST_UNION* %ou17713 to %struct.FILE_POS*
  %call7715 = call %union.rec* @MakeWordTwo(i32 %2688, i8* %arraydecay7708, i8* %arraydecay7711, %struct.FILE_POS* %ofpos7714)
  store %union.rec* %call7715, %union.rec** %tmp, align 8
  %2692 = load %union.rec*, %union.rec** %prev, align 8
  %os17716 = bitcast %union.rec* %2692 to %struct.word_type*
  %ou27717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17716, i32 0, i32 2
  %os227718 = bitcast %union.SECOND_UNION* %ou27717 to %struct.anon.1*
  %2693 = bitcast %struct.anon.1* %os227718 to i32*
  %bf.load7719 = load i32, i32* %2693, align 4
  %bf.clear7720 = and i32 %bf.load7719, 4095
  %2694 = load %union.rec*, %union.rec** %tmp, align 8
  %os17721 = bitcast %union.rec* %2694 to %struct.word_type*
  %ou27722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17721, i32 0, i32 2
  %os227723 = bitcast %union.SECOND_UNION* %ou27722 to %struct.anon.1*
  %2695 = bitcast %struct.anon.1* %os227723 to i32*
  %bf.load7724 = load i32, i32* %2695, align 4
  %bf.value7725 = and i32 %bf.clear7720, 4095
  %bf.clear7726 = and i32 %bf.load7724, -4096
  %bf.set7727 = or i32 %bf.clear7726, %bf.value7725
  store i32 %bf.set7727, i32* %2695, align 4
  %2696 = load %union.rec*, %union.rec** %prev, align 8
  %os17728 = bitcast %union.rec* %2696 to %struct.word_type*
  %ou27729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17728, i32 0, i32 2
  %os227730 = bitcast %union.SECOND_UNION* %ou27729 to %struct.anon.1*
  %2697 = bitcast %struct.anon.1* %os227730 to i32*
  %bf.load7731 = load i32, i32* %2697, align 4
  %bf.lshr7732 = lshr i32 %bf.load7731, 12
  %bf.clear7733 = and i32 %bf.lshr7732, 1023
  %2698 = load %union.rec*, %union.rec** %tmp, align 8
  %os17734 = bitcast %union.rec* %2698 to %struct.word_type*
  %ou27735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17734, i32 0, i32 2
  %os227736 = bitcast %union.SECOND_UNION* %ou27735 to %struct.anon.1*
  %2699 = bitcast %struct.anon.1* %os227736 to i32*
  %bf.load7737 = load i32, i32* %2699, align 4
  %bf.value7738 = and i32 %bf.clear7733, 1023
  %bf.shl7739 = shl i32 %bf.value7738, 12
  %bf.clear7740 = and i32 %bf.load7737, -4190209
  %bf.set7741 = or i32 %bf.clear7740, %bf.shl7739
  store i32 %bf.set7741, i32* %2699, align 4
  %2700 = load %union.rec*, %union.rec** %prev, align 8
  %os17742 = bitcast %union.rec* %2700 to %struct.word_type*
  %ou27743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17742, i32 0, i32 2
  %os227744 = bitcast %union.SECOND_UNION* %ou27743 to %struct.anon.1*
  %2701 = bitcast %struct.anon.1* %os227744 to i32*
  %bf.load7745 = load i32, i32* %2701, align 4
  %bf.lshr7746 = lshr i32 %bf.load7745, 22
  %bf.clear7747 = and i32 %bf.lshr7746, 1
  %2702 = load %union.rec*, %union.rec** %tmp, align 8
  %os17748 = bitcast %union.rec* %2702 to %struct.word_type*
  %ou27749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17748, i32 0, i32 2
  %os227750 = bitcast %union.SECOND_UNION* %ou27749 to %struct.anon.1*
  %2703 = bitcast %struct.anon.1* %os227750 to i32*
  %bf.load7751 = load i32, i32* %2703, align 4
  %bf.value7752 = and i32 %bf.clear7747, 1
  %bf.shl7753 = shl i32 %bf.value7752, 22
  %bf.clear7754 = and i32 %bf.load7751, -4194305
  %bf.set7755 = or i32 %bf.clear7754, %bf.shl7753
  store i32 %bf.set7755, i32* %2703, align 4
  %2704 = load %union.rec*, %union.rec** %prev, align 8
  %os17756 = bitcast %union.rec* %2704 to %struct.word_type*
  %ou27757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17756, i32 0, i32 2
  %os227758 = bitcast %union.SECOND_UNION* %ou27757 to %struct.anon.1*
  %2705 = bitcast %struct.anon.1* %os227758 to i32*
  %bf.load7759 = load i32, i32* %2705, align 4
  %bf.lshr7760 = lshr i32 %bf.load7759, 23
  %bf.clear7761 = and i32 %bf.lshr7760, 63
  %2706 = load %union.rec*, %union.rec** %tmp, align 8
  %os17762 = bitcast %union.rec* %2706 to %struct.word_type*
  %ou27763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17762, i32 0, i32 2
  %os227764 = bitcast %union.SECOND_UNION* %ou27763 to %struct.anon.1*
  %2707 = bitcast %struct.anon.1* %os227764 to i32*
  %bf.load7765 = load i32, i32* %2707, align 4
  %bf.value7766 = and i32 %bf.clear7761, 63
  %bf.shl7767 = shl i32 %bf.value7766, 23
  %bf.clear7768 = and i32 %bf.load7765, -528482305
  %bf.set7769 = or i32 %bf.clear7768, %bf.shl7767
  store i32 %bf.set7769, i32* %2707, align 4
  %2708 = load %union.rec*, %union.rec** %prev, align 8
  %os17770 = bitcast %union.rec* %2708 to %struct.word_type*
  %ou27771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17770, i32 0, i32 2
  %os227772 = bitcast %union.SECOND_UNION* %ou27771 to %struct.anon.1*
  %2709 = bitcast %struct.anon.1* %os227772 to i32*
  %bf.load7773 = load i32, i32* %2709, align 4
  %bf.lshr7774 = lshr i32 %bf.load7773, 31
  %2710 = load %union.rec*, %union.rec** %tmp, align 8
  %os17775 = bitcast %union.rec* %2710 to %struct.word_type*
  %ou27776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17775, i32 0, i32 2
  %os227777 = bitcast %union.SECOND_UNION* %ou27776 to %struct.anon.1*
  %2711 = bitcast %struct.anon.1* %os227777 to i32*
  %bf.load7778 = load i32, i32* %2711, align 4
  %bf.value7779 = and i32 %bf.lshr7774, 1
  %bf.shl7780 = shl i32 %bf.value7779, 31
  %bf.clear7781 = and i32 %bf.load7778, 2147483647
  %bf.set7782 = or i32 %bf.clear7781, %bf.shl7780
  store i32 %bf.set7782, i32* %2711, align 4
  %2712 = load %union.rec*, %union.rec** %tmp, align 8
  call void @FontWordSize(%union.rec* %2712)
  %2713 = load %union.rec*, %union.rec** %prev, align 8
  %os17783 = bitcast %union.rec* %2713 to %struct.word_type*
  %ou27784 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17783, i32 0, i32 2
  %os227785 = bitcast %union.SECOND_UNION* %ou27784 to %struct.anon.1*
  %2714 = bitcast %struct.anon.1* %os227785 to i32*
  %bf.load7786 = load i32, i32* %2714, align 4
  %bf.lshr7787 = lshr i32 %bf.load7786, 29
  %bf.clear7788 = and i32 %bf.lshr7787, 3
  %2715 = load %union.rec*, %union.rec** %tmp, align 8
  %os17789 = bitcast %union.rec* %2715 to %struct.word_type*
  %ou27790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17789, i32 0, i32 2
  %os227791 = bitcast %union.SECOND_UNION* %ou27790 to %struct.anon.1*
  %2716 = bitcast %struct.anon.1* %os227791 to i32*
  %bf.load7792 = load i32, i32* %2716, align 4
  %bf.value7793 = and i32 %bf.clear7788, 3
  %bf.shl7794 = shl i32 %bf.value7793, 29
  %bf.clear7795 = and i32 %bf.load7792, -1610612737
  %bf.set7796 = or i32 %bf.clear7795, %bf.shl7794
  store i32 %bf.set7796, i32* %2716, align 4
  %2717 = load %union.rec*, %union.rec** %ylink, align 8
  store %union.rec* %2717, %union.rec** @xx_link, align 8
  %2718 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2718, %union.rec** @zz_hold, align 8
  %2719 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17797 = bitcast %union.rec* %2719 to %struct.word_type*
  %olist7798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17797, i32 0, i32 0
  %arrayidx7799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7798, i32 0, i64 1
  %osucc7800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7799, i32 0, i32 1
  %2720 = load %union.rec*, %union.rec** %osucc7800, align 8
  %2721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7801 = icmp eq %union.rec* %2720, %2721
  br i1 %cmp7801, label %cond.true.7803, label %cond.false.7804

cond.true.7803:                                   ; preds = %lor.end
  br label %cond.end.7833

cond.false.7804:                                  ; preds = %lor.end
  %2722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17805 = bitcast %union.rec* %2722 to %struct.word_type*
  %olist7806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17805, i32 0, i32 0
  %arrayidx7807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7806, i32 0, i64 1
  %osucc7808 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7807, i32 0, i32 1
  %2723 = load %union.rec*, %union.rec** %osucc7808, align 8
  store %union.rec* %2723, %union.rec** @zz_res, align 8
  %2724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17809 = bitcast %union.rec* %2724 to %struct.word_type*
  %olist7810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17809, i32 0, i32 0
  %arrayidx7811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7810, i32 0, i64 1
  %opred7812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7811, i32 0, i32 0
  %2725 = load %union.rec*, %union.rec** %opred7812, align 8
  %2726 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17813 = bitcast %union.rec* %2726 to %struct.word_type*
  %olist7814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17813, i32 0, i32 0
  %arrayidx7815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7814, i32 0, i64 1
  %opred7816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7815, i32 0, i32 0
  store %union.rec* %2725, %union.rec** %opred7816, align 8
  %2727 = load %union.rec*, %union.rec** @zz_res, align 8
  %2728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17817 = bitcast %union.rec* %2728 to %struct.word_type*
  %olist7818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17817, i32 0, i32 0
  %arrayidx7819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7818, i32 0, i64 1
  %opred7820 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7819, i32 0, i32 0
  %2729 = load %union.rec*, %union.rec** %opred7820, align 8
  %os17821 = bitcast %union.rec* %2729 to %struct.word_type*
  %olist7822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17821, i32 0, i32 0
  %arrayidx7823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7822, i32 0, i64 1
  %osucc7824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7823, i32 0, i32 1
  store %union.rec* %2727, %union.rec** %osucc7824, align 8
  %2730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17825 = bitcast %union.rec* %2731 to %struct.word_type*
  %olist7826 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17825, i32 0, i32 0
  %arrayidx7827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7826, i32 0, i64 1
  %osucc7828 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7827, i32 0, i32 1
  store %union.rec* %2730, %union.rec** %osucc7828, align 8
  %2732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17829 = bitcast %union.rec* %2732 to %struct.word_type*
  %olist7830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17829, i32 0, i32 0
  %arrayidx7831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7830, i32 0, i64 1
  %opred7832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7831, i32 0, i32 0
  store %union.rec* %2730, %union.rec** %opred7832, align 8
  %2733 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7833

cond.end.7833:                                    ; preds = %cond.false.7804, %cond.true.7803
  %cond7834 = phi %union.rec* [ null, %cond.true.7803 ], [ %2733, %cond.false.7804 ]
  %2734 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2734, %union.rec** @zz_res, align 8
  %2735 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2735, %union.rec** @zz_hold, align 8
  %2736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7835 = icmp eq %union.rec* %2736, null
  br i1 %cmp7835, label %cond.true.7837, label %cond.false.7838

cond.true.7837:                                   ; preds = %cond.end.7833
  %2737 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7873

cond.false.7838:                                  ; preds = %cond.end.7833
  %2738 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp7839 = icmp eq %union.rec* %2738, null
  br i1 %cmp7839, label %cond.true.7841, label %cond.false.7842

cond.true.7841:                                   ; preds = %cond.false.7838
  %2739 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.7871

cond.false.7842:                                  ; preds = %cond.false.7838
  %2740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17843 = bitcast %union.rec* %2740 to %struct.word_type*
  %olist7844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17843, i32 0, i32 0
  %arrayidx7845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7844, i32 0, i64 1
  %opred7846 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7845, i32 0, i32 0
  %2741 = load %union.rec*, %union.rec** %opred7846, align 8
  store %union.rec* %2741, %union.rec** @zz_tmp, align 8
  %2742 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17847 = bitcast %union.rec* %2742 to %struct.word_type*
  %olist7848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17847, i32 0, i32 0
  %arrayidx7849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7848, i32 0, i64 1
  %opred7850 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7849, i32 0, i32 0
  %2743 = load %union.rec*, %union.rec** %opred7850, align 8
  %2744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17851 = bitcast %union.rec* %2744 to %struct.word_type*
  %olist7852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17851, i32 0, i32 0
  %arrayidx7853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7852, i32 0, i64 1
  %opred7854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7853, i32 0, i32 0
  store %union.rec* %2743, %union.rec** %opred7854, align 8
  %2745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2746 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17855 = bitcast %union.rec* %2746 to %struct.word_type*
  %olist7856 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17855, i32 0, i32 0
  %arrayidx7857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7856, i32 0, i64 1
  %opred7858 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7857, i32 0, i32 0
  %2747 = load %union.rec*, %union.rec** %opred7858, align 8
  %os17859 = bitcast %union.rec* %2747 to %struct.word_type*
  %olist7860 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17859, i32 0, i32 0
  %arrayidx7861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7860, i32 0, i64 1
  %osucc7862 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7861, i32 0, i32 1
  store %union.rec* %2745, %union.rec** %osucc7862, align 8
  %2748 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2749 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17863 = bitcast %union.rec* %2749 to %struct.word_type*
  %olist7864 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17863, i32 0, i32 0
  %arrayidx7865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7864, i32 0, i64 1
  %opred7866 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7865, i32 0, i32 0
  store %union.rec* %2748, %union.rec** %opred7866, align 8
  %2750 = load %union.rec*, %union.rec** @zz_res, align 8
  %2751 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os17867 = bitcast %union.rec* %2751 to %struct.word_type*
  %olist7868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17867, i32 0, i32 0
  %arrayidx7869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7868, i32 0, i64 1
  %osucc7870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7869, i32 0, i32 1
  store %union.rec* %2750, %union.rec** %osucc7870, align 8
  br label %cond.end.7871

cond.end.7871:                                    ; preds = %cond.false.7842, %cond.true.7841
  %cond7872 = phi %union.rec* [ %2739, %cond.true.7841 ], [ %2750, %cond.false.7842 ]
  br label %cond.end.7873

cond.end.7873:                                    ; preds = %cond.end.7871, %cond.true.7837
  %cond7874 = phi %union.rec* [ %2737, %cond.true.7837 ], [ %cond7872, %cond.end.7871 ]
  %2752 = load %union.rec*, %union.rec** %prev, align 8
  %os17875 = bitcast %union.rec* %2752 to %struct.word_type*
  %olist7876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17875, i32 0, i32 0
  %arrayidx7877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7876, i32 0, i64 1
  %osucc7878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7877, i32 0, i32 1
  %2753 = load %union.rec*, %union.rec** %osucc7878, align 8
  store %union.rec* %2753, %union.rec** @xx_link, align 8
  %2754 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2754, %union.rec** @zz_hold, align 8
  %2755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17879 = bitcast %union.rec* %2755 to %struct.word_type*
  %olist7880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17879, i32 0, i32 0
  %arrayidx7881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7880, i32 0, i64 1
  %osucc7882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7881, i32 0, i32 1
  %2756 = load %union.rec*, %union.rec** %osucc7882, align 8
  %2757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7883 = icmp eq %union.rec* %2756, %2757
  br i1 %cmp7883, label %cond.true.7885, label %cond.false.7886

cond.true.7885:                                   ; preds = %cond.end.7873
  br label %cond.end.7915

cond.false.7886:                                  ; preds = %cond.end.7873
  %2758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17887 = bitcast %union.rec* %2758 to %struct.word_type*
  %olist7888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17887, i32 0, i32 0
  %arrayidx7889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7888, i32 0, i64 1
  %osucc7890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7889, i32 0, i32 1
  %2759 = load %union.rec*, %union.rec** %osucc7890, align 8
  store %union.rec* %2759, %union.rec** @zz_res, align 8
  %2760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17891 = bitcast %union.rec* %2760 to %struct.word_type*
  %olist7892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17891, i32 0, i32 0
  %arrayidx7893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7892, i32 0, i64 1
  %opred7894 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7893, i32 0, i32 0
  %2761 = load %union.rec*, %union.rec** %opred7894, align 8
  %2762 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17895 = bitcast %union.rec* %2762 to %struct.word_type*
  %olist7896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17895, i32 0, i32 0
  %arrayidx7897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7896, i32 0, i64 1
  %opred7898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7897, i32 0, i32 0
  store %union.rec* %2761, %union.rec** %opred7898, align 8
  %2763 = load %union.rec*, %union.rec** @zz_res, align 8
  %2764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17899 = bitcast %union.rec* %2764 to %struct.word_type*
  %olist7900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17899, i32 0, i32 0
  %arrayidx7901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7900, i32 0, i64 1
  %opred7902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7901, i32 0, i32 0
  %2765 = load %union.rec*, %union.rec** %opred7902, align 8
  %os17903 = bitcast %union.rec* %2765 to %struct.word_type*
  %olist7904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17903, i32 0, i32 0
  %arrayidx7905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7904, i32 0, i64 1
  %osucc7906 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7905, i32 0, i32 1
  store %union.rec* %2763, %union.rec** %osucc7906, align 8
  %2766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17907 = bitcast %union.rec* %2767 to %struct.word_type*
  %olist7908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17907, i32 0, i32 0
  %arrayidx7909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7908, i32 0, i64 1
  %osucc7910 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7909, i32 0, i32 1
  store %union.rec* %2766, %union.rec** %osucc7910, align 8
  %2768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17911 = bitcast %union.rec* %2768 to %struct.word_type*
  %olist7912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17911, i32 0, i32 0
  %arrayidx7913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7912, i32 0, i64 1
  %opred7914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7913, i32 0, i32 0
  store %union.rec* %2766, %union.rec** %opred7914, align 8
  %2769 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7915

cond.end.7915:                                    ; preds = %cond.false.7886, %cond.true.7885
  %cond7916 = phi %union.rec* [ null, %cond.true.7885 ], [ %2769, %cond.false.7886 ]
  store %union.rec* %cond7916, %union.rec** @xx_tmp, align 8
  %2770 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2770, %union.rec** @zz_hold, align 8
  %2771 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17917 = bitcast %union.rec* %2771 to %struct.word_type*
  %olist7918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17917, i32 0, i32 0
  %arrayidx7919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7918, i32 0, i64 0
  %osucc7920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7919, i32 0, i32 1
  %2772 = load %union.rec*, %union.rec** %osucc7920, align 8
  %2773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7921 = icmp eq %union.rec* %2772, %2773
  br i1 %cmp7921, label %cond.true.7923, label %cond.false.7924

cond.true.7923:                                   ; preds = %cond.end.7915
  br label %cond.end.7953

cond.false.7924:                                  ; preds = %cond.end.7915
  %2774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17925 = bitcast %union.rec* %2774 to %struct.word_type*
  %olist7926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17925, i32 0, i32 0
  %arrayidx7927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7926, i32 0, i64 0
  %osucc7928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7927, i32 0, i32 1
  %2775 = load %union.rec*, %union.rec** %osucc7928, align 8
  store %union.rec* %2775, %union.rec** @zz_res, align 8
  %2776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17929 = bitcast %union.rec* %2776 to %struct.word_type*
  %olist7930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17929, i32 0, i32 0
  %arrayidx7931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7930, i32 0, i64 0
  %opred7932 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7931, i32 0, i32 0
  %2777 = load %union.rec*, %union.rec** %opred7932, align 8
  %2778 = load %union.rec*, %union.rec** @zz_res, align 8
  %os17933 = bitcast %union.rec* %2778 to %struct.word_type*
  %olist7934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17933, i32 0, i32 0
  %arrayidx7935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7934, i32 0, i64 0
  %opred7936 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7935, i32 0, i32 0
  store %union.rec* %2777, %union.rec** %opred7936, align 8
  %2779 = load %union.rec*, %union.rec** @zz_res, align 8
  %2780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17937 = bitcast %union.rec* %2780 to %struct.word_type*
  %olist7938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17937, i32 0, i32 0
  %arrayidx7939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7938, i32 0, i64 0
  %opred7940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7939, i32 0, i32 0
  %2781 = load %union.rec*, %union.rec** %opred7940, align 8
  %os17941 = bitcast %union.rec* %2781 to %struct.word_type*
  %olist7942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17941, i32 0, i32 0
  %arrayidx7943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7942, i32 0, i64 0
  %osucc7944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7943, i32 0, i32 1
  store %union.rec* %2779, %union.rec** %osucc7944, align 8
  %2782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17945 = bitcast %union.rec* %2783 to %struct.word_type*
  %olist7946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17945, i32 0, i32 0
  %arrayidx7947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7946, i32 0, i64 0
  %osucc7948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7947, i32 0, i32 1
  store %union.rec* %2782, %union.rec** %osucc7948, align 8
  %2784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17949 = bitcast %union.rec* %2784 to %struct.word_type*
  %olist7950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17949, i32 0, i32 0
  %arrayidx7951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7950, i32 0, i64 0
  %opred7952 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7951, i32 0, i32 0
  store %union.rec* %2782, %union.rec** %opred7952, align 8
  %2785 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.7953

cond.end.7953:                                    ; preds = %cond.false.7924, %cond.true.7923
  %cond7954 = phi %union.rec* [ null, %cond.true.7923 ], [ %2785, %cond.false.7924 ]
  %2786 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2786, %union.rec** @zz_hold, align 8
  %2787 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2787, %union.rec** @zz_hold, align 8
  %2788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17955 = bitcast %union.rec* %2788 to %struct.word_type*
  %ou17956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17955, i32 0, i32 1
  %os117957 = bitcast %union.FIRST_UNION* %ou17956 to %struct.anon*
  %otype7958 = getelementptr inbounds %struct.anon, %struct.anon* %os117957, i32 0, i32 0
  %2789 = load i8, i8* %otype7958, align 1
  %conv7959 = zext i8 %2789 to i32
  %cmp7960 = icmp eq i32 %conv7959, 11
  br i1 %cmp7960, label %cond.true.7970, label %lor.lhs.false.7962

lor.lhs.false.7962:                               ; preds = %cond.end.7953
  %2790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17963 = bitcast %union.rec* %2790 to %struct.word_type*
  %ou17964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17963, i32 0, i32 1
  %os117965 = bitcast %union.FIRST_UNION* %ou17964 to %struct.anon*
  %otype7966 = getelementptr inbounds %struct.anon, %struct.anon* %os117965, i32 0, i32 0
  %2791 = load i8, i8* %otype7966, align 1
  %conv7967 = zext i8 %2791 to i32
  %cmp7968 = icmp eq i32 %conv7967, 12
  br i1 %cmp7968, label %cond.true.7970, label %cond.false.7976

cond.true.7970:                                   ; preds = %lor.lhs.false.7962, %cond.end.7953
  %2792 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17971 = bitcast %union.rec* %2792 to %struct.word_type*
  %ou17972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17971, i32 0, i32 1
  %os117973 = bitcast %union.FIRST_UNION* %ou17972 to %struct.anon*
  %orec_size7974 = getelementptr inbounds %struct.anon, %struct.anon* %os117973, i32 0, i32 1
  %2793 = load i8, i8* %orec_size7974, align 1
  %conv7975 = zext i8 %2793 to i32
  br label %cond.end.7984

cond.false.7976:                                  ; preds = %lor.lhs.false.7962
  %2794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17977 = bitcast %union.rec* %2794 to %struct.word_type*
  %ou17978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17977, i32 0, i32 1
  %os117979 = bitcast %union.FIRST_UNION* %ou17978 to %struct.anon*
  %otype7980 = getelementptr inbounds %struct.anon, %struct.anon* %os117979, i32 0, i32 0
  %2795 = load i8, i8* %otype7980, align 1
  %idxprom7981 = zext i8 %2795 to i64
  %arrayidx7982 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom7981
  %2796 = load i8, i8* %arrayidx7982, align 1
  %conv7983 = zext i8 %2796 to i32
  br label %cond.end.7984

cond.end.7984:                                    ; preds = %cond.false.7976, %cond.true.7970
  %cond7985 = phi i32 [ %conv7975, %cond.true.7970 ], [ %conv7983, %cond.false.7976 ]
  store i32 %cond7985, i32* @zz_size, align 4
  %2797 = load i32, i32* @zz_size, align 4
  %idxprom7986 = sext i32 %2797 to i64
  %arrayidx7987 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7986
  %2798 = load %union.rec*, %union.rec** %arrayidx7987, align 8
  %2799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os17988 = bitcast %union.rec* %2799 to %struct.word_type*
  %olist7989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17988, i32 0, i32 0
  %arrayidx7990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7989, i32 0, i64 0
  %opred7991 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7990, i32 0, i32 0
  store %union.rec* %2798, %union.rec** %opred7991, align 8
  %2800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2801 = load i32, i32* @zz_size, align 4
  %idxprom7992 = sext i32 %2801 to i64
  %arrayidx7993 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom7992
  store %union.rec* %2800, %union.rec** %arrayidx7993, align 8
  %2802 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os17994 = bitcast %union.rec* %2802 to %struct.word_type*
  %olist7995 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17994, i32 0, i32 0
  %arrayidx7996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7995, i32 0, i64 1
  %osucc7997 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7996, i32 0, i32 1
  %2803 = load %union.rec*, %union.rec** %osucc7997, align 8
  %2804 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp7998 = icmp eq %union.rec* %2803, %2804
  br i1 %cmp7998, label %if.then.8000, label %if.end.8002

if.then.8000:                                     ; preds = %cond.end.7984
  %2805 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call8001 = call i32 @DisposeObject(%union.rec* %2805)
  br label %if.end.8002

if.end.8002:                                      ; preds = %if.then.8000, %cond.end.7984
  %2806 = load %union.rec*, %union.rec** %next, align 8
  %os18003 = bitcast %union.rec* %2806 to %struct.word_type*
  %olist8004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18003, i32 0, i32 0
  %arrayidx8005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8004, i32 0, i64 1
  %osucc8006 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8005, i32 0, i32 1
  %2807 = load %union.rec*, %union.rec** %osucc8006, align 8
  store %union.rec* %2807, %union.rec** @xx_link, align 8
  %2808 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2808, %union.rec** @zz_hold, align 8
  %2809 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18007 = bitcast %union.rec* %2809 to %struct.word_type*
  %olist8008 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18007, i32 0, i32 0
  %arrayidx8009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8008, i32 0, i64 1
  %osucc8010 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8009, i32 0, i32 1
  %2810 = load %union.rec*, %union.rec** %osucc8010, align 8
  %2811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp8011 = icmp eq %union.rec* %2810, %2811
  br i1 %cmp8011, label %cond.true.8013, label %cond.false.8014

cond.true.8013:                                   ; preds = %if.end.8002
  br label %cond.end.8043

cond.false.8014:                                  ; preds = %if.end.8002
  %2812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18015 = bitcast %union.rec* %2812 to %struct.word_type*
  %olist8016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18015, i32 0, i32 0
  %arrayidx8017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8016, i32 0, i64 1
  %osucc8018 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8017, i32 0, i32 1
  %2813 = load %union.rec*, %union.rec** %osucc8018, align 8
  store %union.rec* %2813, %union.rec** @zz_res, align 8
  %2814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18019 = bitcast %union.rec* %2814 to %struct.word_type*
  %olist8020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18019, i32 0, i32 0
  %arrayidx8021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8020, i32 0, i64 1
  %opred8022 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8021, i32 0, i32 0
  %2815 = load %union.rec*, %union.rec** %opred8022, align 8
  %2816 = load %union.rec*, %union.rec** @zz_res, align 8
  %os18023 = bitcast %union.rec* %2816 to %struct.word_type*
  %olist8024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18023, i32 0, i32 0
  %arrayidx8025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8024, i32 0, i64 1
  %opred8026 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8025, i32 0, i32 0
  store %union.rec* %2815, %union.rec** %opred8026, align 8
  %2817 = load %union.rec*, %union.rec** @zz_res, align 8
  %2818 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18027 = bitcast %union.rec* %2818 to %struct.word_type*
  %olist8028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18027, i32 0, i32 0
  %arrayidx8029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8028, i32 0, i64 1
  %opred8030 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8029, i32 0, i32 0
  %2819 = load %union.rec*, %union.rec** %opred8030, align 8
  %os18031 = bitcast %union.rec* %2819 to %struct.word_type*
  %olist8032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18031, i32 0, i32 0
  %arrayidx8033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8032, i32 0, i64 1
  %osucc8034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8033, i32 0, i32 1
  store %union.rec* %2817, %union.rec** %osucc8034, align 8
  %2820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18035 = bitcast %union.rec* %2821 to %struct.word_type*
  %olist8036 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18035, i32 0, i32 0
  %arrayidx8037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8036, i32 0, i64 1
  %osucc8038 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8037, i32 0, i32 1
  store %union.rec* %2820, %union.rec** %osucc8038, align 8
  %2822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18039 = bitcast %union.rec* %2822 to %struct.word_type*
  %olist8040 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18039, i32 0, i32 0
  %arrayidx8041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8040, i32 0, i64 1
  %opred8042 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8041, i32 0, i32 0
  store %union.rec* %2820, %union.rec** %opred8042, align 8
  %2823 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.8043

cond.end.8043:                                    ; preds = %cond.false.8014, %cond.true.8013
  %cond8044 = phi %union.rec* [ null, %cond.true.8013 ], [ %2823, %cond.false.8014 ]
  store %union.rec* %cond8044, %union.rec** @xx_tmp, align 8
  %2824 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2824, %union.rec** @zz_hold, align 8
  %2825 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18045 = bitcast %union.rec* %2825 to %struct.word_type*
  %olist8046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18045, i32 0, i32 0
  %arrayidx8047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8046, i32 0, i64 0
  %osucc8048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8047, i32 0, i32 1
  %2826 = load %union.rec*, %union.rec** %osucc8048, align 8
  %2827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp8049 = icmp eq %union.rec* %2826, %2827
  br i1 %cmp8049, label %cond.true.8051, label %cond.false.8052

cond.true.8051:                                   ; preds = %cond.end.8043
  br label %cond.end.8081

cond.false.8052:                                  ; preds = %cond.end.8043
  %2828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18053 = bitcast %union.rec* %2828 to %struct.word_type*
  %olist8054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18053, i32 0, i32 0
  %arrayidx8055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8054, i32 0, i64 0
  %osucc8056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8055, i32 0, i32 1
  %2829 = load %union.rec*, %union.rec** %osucc8056, align 8
  store %union.rec* %2829, %union.rec** @zz_res, align 8
  %2830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18057 = bitcast %union.rec* %2830 to %struct.word_type*
  %olist8058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18057, i32 0, i32 0
  %arrayidx8059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8058, i32 0, i64 0
  %opred8060 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8059, i32 0, i32 0
  %2831 = load %union.rec*, %union.rec** %opred8060, align 8
  %2832 = load %union.rec*, %union.rec** @zz_res, align 8
  %os18061 = bitcast %union.rec* %2832 to %struct.word_type*
  %olist8062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18061, i32 0, i32 0
  %arrayidx8063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8062, i32 0, i64 0
  %opred8064 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8063, i32 0, i32 0
  store %union.rec* %2831, %union.rec** %opred8064, align 8
  %2833 = load %union.rec*, %union.rec** @zz_res, align 8
  %2834 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18065 = bitcast %union.rec* %2834 to %struct.word_type*
  %olist8066 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18065, i32 0, i32 0
  %arrayidx8067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8066, i32 0, i64 0
  %opred8068 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8067, i32 0, i32 0
  %2835 = load %union.rec*, %union.rec** %opred8068, align 8
  %os18069 = bitcast %union.rec* %2835 to %struct.word_type*
  %olist8070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18069, i32 0, i32 0
  %arrayidx8071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8070, i32 0, i64 0
  %osucc8072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8071, i32 0, i32 1
  store %union.rec* %2833, %union.rec** %osucc8072, align 8
  %2836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18073 = bitcast %union.rec* %2837 to %struct.word_type*
  %olist8074 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18073, i32 0, i32 0
  %arrayidx8075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8074, i32 0, i64 0
  %osucc8076 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8075, i32 0, i32 1
  store %union.rec* %2836, %union.rec** %osucc8076, align 8
  %2838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18077 = bitcast %union.rec* %2838 to %struct.word_type*
  %olist8078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18077, i32 0, i32 0
  %arrayidx8079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8078, i32 0, i64 0
  %opred8080 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8079, i32 0, i32 0
  store %union.rec* %2836, %union.rec** %opred8080, align 8
  %2839 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.8081

cond.end.8081:                                    ; preds = %cond.false.8052, %cond.true.8051
  %cond8082 = phi %union.rec* [ null, %cond.true.8051 ], [ %2839, %cond.false.8052 ]
  %2840 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2840, %union.rec** @zz_hold, align 8
  %2841 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2841, %union.rec** @zz_hold, align 8
  %2842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18083 = bitcast %union.rec* %2842 to %struct.word_type*
  %ou18084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18083, i32 0, i32 1
  %os118085 = bitcast %union.FIRST_UNION* %ou18084 to %struct.anon*
  %otype8086 = getelementptr inbounds %struct.anon, %struct.anon* %os118085, i32 0, i32 0
  %2843 = load i8, i8* %otype8086, align 1
  %conv8087 = zext i8 %2843 to i32
  %cmp8088 = icmp eq i32 %conv8087, 11
  br i1 %cmp8088, label %cond.true.8098, label %lor.lhs.false.8090

lor.lhs.false.8090:                               ; preds = %cond.end.8081
  %2844 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18091 = bitcast %union.rec* %2844 to %struct.word_type*
  %ou18092 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18091, i32 0, i32 1
  %os118093 = bitcast %union.FIRST_UNION* %ou18092 to %struct.anon*
  %otype8094 = getelementptr inbounds %struct.anon, %struct.anon* %os118093, i32 0, i32 0
  %2845 = load i8, i8* %otype8094, align 1
  %conv8095 = zext i8 %2845 to i32
  %cmp8096 = icmp eq i32 %conv8095, 12
  br i1 %cmp8096, label %cond.true.8098, label %cond.false.8104

cond.true.8098:                                   ; preds = %lor.lhs.false.8090, %cond.end.8081
  %2846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18099 = bitcast %union.rec* %2846 to %struct.word_type*
  %ou18100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18099, i32 0, i32 1
  %os118101 = bitcast %union.FIRST_UNION* %ou18100 to %struct.anon*
  %orec_size8102 = getelementptr inbounds %struct.anon, %struct.anon* %os118101, i32 0, i32 1
  %2847 = load i8, i8* %orec_size8102, align 1
  %conv8103 = zext i8 %2847 to i32
  br label %cond.end.8112

cond.false.8104:                                  ; preds = %lor.lhs.false.8090
  %2848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18105 = bitcast %union.rec* %2848 to %struct.word_type*
  %ou18106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18105, i32 0, i32 1
  %os118107 = bitcast %union.FIRST_UNION* %ou18106 to %struct.anon*
  %otype8108 = getelementptr inbounds %struct.anon, %struct.anon* %os118107, i32 0, i32 0
  %2849 = load i8, i8* %otype8108, align 1
  %idxprom8109 = zext i8 %2849 to i64
  %arrayidx8110 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom8109
  %2850 = load i8, i8* %arrayidx8110, align 1
  %conv8111 = zext i8 %2850 to i32
  br label %cond.end.8112

cond.end.8112:                                    ; preds = %cond.false.8104, %cond.true.8098
  %cond8113 = phi i32 [ %conv8103, %cond.true.8098 ], [ %conv8111, %cond.false.8104 ]
  store i32 %cond8113, i32* @zz_size, align 4
  %2851 = load i32, i32* @zz_size, align 4
  %idxprom8114 = sext i32 %2851 to i64
  %arrayidx8115 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8114
  %2852 = load %union.rec*, %union.rec** %arrayidx8115, align 8
  %2853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18116 = bitcast %union.rec* %2853 to %struct.word_type*
  %olist8117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18116, i32 0, i32 0
  %arrayidx8118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8117, i32 0, i64 0
  %opred8119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8118, i32 0, i32 0
  store %union.rec* %2852, %union.rec** %opred8119, align 8
  %2854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2855 = load i32, i32* @zz_size, align 4
  %idxprom8120 = sext i32 %2855 to i64
  %arrayidx8121 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8120
  store %union.rec* %2854, %union.rec** %arrayidx8121, align 8
  %2856 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os18122 = bitcast %union.rec* %2856 to %struct.word_type*
  %olist8123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18122, i32 0, i32 0
  %arrayidx8124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8123, i32 0, i64 1
  %osucc8125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8124, i32 0, i32 1
  %2857 = load %union.rec*, %union.rec** %osucc8125, align 8
  %2858 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp8126 = icmp eq %union.rec* %2857, %2858
  br i1 %cmp8126, label %if.then.8128, label %if.end.8130

if.then.8128:                                     ; preds = %cond.end.8112
  %2859 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call8129 = call i32 @DisposeObject(%union.rec* %2859)
  br label %if.end.8130

if.end.8130:                                      ; preds = %if.then.8128, %cond.end.8112
  br label %if.end.8131

if.end.8131:                                      ; preds = %if.end.8130, %land.lhs.true.7675, %land.lhs.true.7660, %land.lhs.true.7645, %land.lhs.true.7630, %land.lhs.true.7617, %lor.lhs.false.7609, %lor.lhs.false.7593
  br label %if.end.8132

if.end.8132:                                      ; preds = %if.end.8131, %land.lhs.true.7531, %land.lhs.true.7524, %for.end.7516
  br label %for.inc.8133

for.inc.8133:                                     ; preds = %if.end.8132
  %2860 = load %union.rec*, %union.rec** %ylink, align 8
  %os18134 = bitcast %union.rec* %2860 to %struct.word_type*
  %olist8135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18134, i32 0, i32 0
  %arrayidx8136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8135, i32 0, i64 0
  %osucc8137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8136, i32 0, i32 1
  %2861 = load %union.rec*, %union.rec** %osucc8137, align 8
  store %union.rec* %2861, %union.rec** %ylink, align 8
  br label %for.cond.7494

for.end.8138:                                     ; preds = %for.cond.7494
  br label %if.end.8139

if.end.8139:                                      ; preds = %for.end.8138, %for.end.7481
  br label %for.inc.8140

for.inc.8140:                                     ; preds = %if.end.8139
  %2862 = load %union.rec*, %union.rec** %link, align 8
  %os18141 = bitcast %union.rec* %2862 to %struct.word_type*
  %olist8142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18141, i32 0, i32 0
  %arrayidx8143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8142, i32 0, i64 0
  %osucc8144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8143, i32 0, i32 1
  %2863 = load %union.rec*, %union.rec** %osucc8144, align 8
  store %union.rec* %2863, %union.rec** %link, align 8
  br label %for.cond.7459

for.end.8145:                                     ; preds = %for.cond.7459
  br label %if.end.8146

if.end.8146:                                      ; preds = %for.end.8145, %land.lhs.true.7446, %if.end.7444
  %2864 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %2864, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.8146, %cond.end.223
  %2865 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %2865
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare i8* @EchoLength(i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @SplitIsDefinite(%union.rec*) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

declare i32 @ActualGap(i32, i32, i32, %struct.GAP*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @FontWordSize(%union.rec*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %union.rec* @Hyphenate(%union.rec*) #1

declare %union.rec* @MakeWordTwo(i32, i8*, i8*, %struct.FILE_POS*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
