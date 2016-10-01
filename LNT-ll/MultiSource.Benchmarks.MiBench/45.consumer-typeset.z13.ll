; ModuleID = './MultiSource.Benchmarks.MiBench/45.consumer-typeset.z13.bc'
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }

@.str = private unnamed_addr constant [63 x i8] c"replacing with empty object: negative size constraint %s,%s,%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"%s object scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s deleted (too wide; cannot break %s)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@xx_link = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"word %s scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"word %s deleted (too wide)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%s deleted (too wide)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"BreakObject: downs!\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"column mark of unbroken paragraph moved left\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"column mark of paragraph moved left before breaking\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"BreakObject:\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"BreakObject: back(x, COLM) < 0!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"BreakObject: fwd(x, COLM) < 0!\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"BreakTable: GAP_OBJ!\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"BreakTable: index!\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"BreakTable: GAP_OBJ is last!\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"reducing column gaps to 0i (object is too wide)\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"BreakTable: type(y) == GAP_OBJ!\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"BreakTable: type(g) != GAP_OBJ!\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"BreakTable: mside\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"failed to break column to fit into its available space\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"BreakVcat: Down(x) == x!\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"BreakVcat: start_group == nilobj!\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"BreakVcat: start_group == nilobj (2)!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @BreakObject(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %x.addr = alloca %union.rec*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %yc = alloca %struct.CONSTRAINT, align 4
  %f = alloca i32, align 4
  %junk = alloca i32, align 4
  %tmp = alloca %union.rec*, align 8
  %sz = alloca i32, align 4
  %rpos = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  %0 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %0, i32 0, i32 0
  %1 = load i32, i32* %obc, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2, i32 0, i32 1
  %3 = load i32, i32* %obfc, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 2
  %5 = load i32, i32* %ofc, align 4
  %cmp3 = icmp sge i32 %5, 0
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %7 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc4 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %7, i32 0, i32 0
  %8 = load i32, i32* %obc4, align 4
  %call = call i8* @EchoLength(i32 %8)
  %9 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc5 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %9, i32 0, i32 1
  %10 = load i32, i32* %obfc5, align 4
  %call6 = call i8* @EchoLength(i32 %10)
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc7 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 2
  %12 = load i32, i32* %ofc7, align 4
  %call8 = call i8* @EchoLength(i32 %12)
  %call9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %call, i8* %call6, i8* %call8)
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os110 = bitcast %union.rec* %13 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %ofpos12 = bitcast %union.FIRST_UNION* %ou111 to %struct.FILE_POS*
  %call13 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %ofpos12)
  store %union.rec* %call13, %union.rec** %y, align 8
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os114 = bitcast %union.rec* %14 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os115 = bitcast %union.rec* %15 to %struct.word_type*
  %ou316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 3
  %os3117 = bitcast %union.THIRD_UNION* %ou316 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3117, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  store i32 0, i32* %arrayidx18, align 4
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %16, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os119 = bitcast %union.rec* %17 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp21 = icmp eq %union.rec* %18, %19
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %20 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc25, align 8
  store %union.rec* %21, %union.rec** @zz_res, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %22 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred, align 8
  %24 = load %union.rec*, %union.rec** @zz_res, align 8
  %os129 = bitcast %union.rec* %24 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 1
  %opred32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 0
  store %union.rec* %23, %union.rec** %opred32, align 8
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %26 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred36, align 8
  %os137 = bitcast %union.rec* %27 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %25, %union.rec** %osucc40, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %29 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 1
  %osucc44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc44, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os145 = bitcast %union.rec* %30 to %struct.word_type*
  %olist46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist46, i32 0, i64 1
  %opred48 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx47, i32 0, i32 0
  store %union.rec* %28, %union.rec** %opred48, align 8
  %31 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %31, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %32 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %32, %union.rec** @zz_res, align 8
  %33 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp49 = icmp eq %union.rec* %34, null
  br i1 %cmp49, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.85

cond.false.51:                                    ; preds = %cond.end
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp52 = icmp eq %union.rec* %36, null
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.51
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.83

cond.false.54:                                    ; preds = %cond.false.51
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os155 = bitcast %union.rec* %38 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 1
  %opred58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred58, align 8
  store %union.rec* %39, %union.rec** @zz_tmp, align 8
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %os159 = bitcast %union.rec* %40 to %struct.word_type*
  %olist60 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist60, i32 0, i64 1
  %opred62 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx61, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %opred62, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os163 = bitcast %union.rec* %42 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 1
  %opred66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 0
  store %union.rec* %41, %union.rec** %opred66, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %os167 = bitcast %union.rec* %44 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 1
  %opred70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred70, align 8
  %os171 = bitcast %union.rec* %45 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 1
  %osucc74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 1
  store %union.rec* %43, %union.rec** %osucc74, align 8
  %46 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  %os175 = bitcast %union.rec* %47 to %struct.word_type*
  %olist76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist76, i32 0, i64 1
  %opred78 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx77, i32 0, i32 0
  store %union.rec* %46, %union.rec** %opred78, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %49 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os179 = bitcast %union.rec* %49 to %struct.word_type*
  %olist80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist80, i32 0, i64 1
  %osucc82 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx81, i32 0, i32 1
  store %union.rec* %48, %union.rec** %osucc82, align 8
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.54, %cond.true.53
  %cond84 = phi %union.rec* [ %37, %cond.true.53 ], [ %48, %cond.false.54 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.50
  %cond86 = phi %union.rec* [ %35, %cond.true.50 ], [ %cond84, %cond.end.83 ]
  %50 = load %union.rec*, %union.rec** %x.addr, align 8
  %call87 = call i32 @DisposeObject(%union.rec* %50)
  %51 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %51, %union.rec** %x.addr, align 8
  %52 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %52, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2
  %53 = load %union.rec*, %union.rec** %x.addr, align 8
  %os188 = bitcast %union.rec* %53 to %struct.word_type*
  %ou389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 3
  %os3190 = bitcast %union.THIRD_UNION* %ou389 to %struct.anon.6*
  %oback91 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %oback91, i32 0, i64 0
  %54 = load i32, i32* %arrayidx92, align 4
  %55 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc93 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %55, i32 0, i32 0
  %56 = load i32, i32* %obc93, align 4
  %cmp94 = icmp sle i32 %54, %56
  br i1 %cmp94, label %land.lhs.true.95, label %if.end.117

land.lhs.true.95:                                 ; preds = %if.end
  %57 = load %union.rec*, %union.rec** %x.addr, align 8
  %os196 = bitcast %union.rec* %57 to %struct.word_type*
  %ou397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 3
  %os3198 = bitcast %union.THIRD_UNION* %ou397 to %struct.anon.6*
  %oback99 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %oback99, i32 0, i64 0
  %58 = load i32, i32* %arrayidx100, align 4
  %59 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1101 = bitcast %union.rec* %59 to %struct.word_type*
  %ou3102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 3
  %os31103 = bitcast %union.THIRD_UNION* %ou3102 to %struct.anon.6*
  %ofwd104 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31103, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd104, i32 0, i64 0
  %60 = load i32, i32* %arrayidx105, align 4
  %add = add nsw i32 %58, %60
  %61 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc106 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %61, i32 0, i32 1
  %62 = load i32, i32* %obfc106, align 4
  %cmp107 = icmp sle i32 %add, %62
  br i1 %cmp107, label %land.lhs.true.108, label %if.end.117

land.lhs.true.108:                                ; preds = %land.lhs.true.95
  %63 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1109 = bitcast %union.rec* %63 to %struct.word_type*
  %ou3110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 3
  %os31111 = bitcast %union.THIRD_UNION* %ou3110 to %struct.anon.6*
  %ofwd112 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31111, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd112, i32 0, i64 0
  %64 = load i32, i32* %arrayidx113, align 4
  %65 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc114 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %65, i32 0, i32 2
  %66 = load i32, i32* %ofc114, align 4
  %cmp115 = icmp sle i32 %64, %66
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %land.lhs.true.108
  %67 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %67, %union.rec** %retval
  br label %return

if.end.117:                                       ; preds = %land.lhs.true.108, %land.lhs.true.95, %if.end
  %68 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1118 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1119 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %69 = load i8, i8* %otype, align 1
  %conv = zext i8 %69 to i32
  switch i32 %conv, label %sw.default [
    i32 50, label %sw.bb
    i32 34, label %sw.bb.248
    i32 35, label %sw.bb.308
    i32 11, label %sw.bb.353
    i32 12, label %sw.bb.353
    i32 26, label %sw.bb.991
    i32 94, label %sw.bb.1055
    i32 95, label %sw.bb.1055
    i32 27, label %sw.bb.1211
    i32 31, label %sw.bb.1211
    i32 33, label %sw.bb.1211
    i32 29, label %sw.bb.1211
    i32 36, label %sw.bb.1211
    i32 37, label %sw.bb.1211
    i32 38, label %sw.bb.1211
    i32 39, label %sw.bb.1211
    i32 40, label %sw.bb.1211
    i32 41, label %sw.bb.1211
    i32 24, label %sw.bb.1211
    i32 25, label %sw.bb.1211
    i32 13, label %sw.bb.1211
    i32 51, label %sw.bb.1270
    i32 44, label %sw.bb.1339
    i32 42, label %sw.bb.1339
    i32 43, label %sw.bb.1339
    i32 45, label %sw.bb.1339
    i32 46, label %sw.bb.1339
    i32 28, label %sw.bb.1415
    i32 21, label %sw.bb.1561
    i32 23, label %sw.bb.1561
    i32 20, label %sw.bb.1562
    i32 22, label %sw.bb.1562
    i32 96, label %sw.bb.1607
    i32 97, label %sw.bb.1607
    i32 98, label %sw.bb.1607
    i32 99, label %sw.bb.1607
    i32 9, label %sw.bb.1652
    i32 17, label %sw.bb.1697
    i32 18, label %sw.bb.1830
    i32 16, label %sw.bb.1832
    i32 19, label %sw.bb.1851
  ]

sw.bb:                                            ; preds = %if.end.117
  %70 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %70, i32 0, i32 2
  %71 = load i32, i32* %scale_avail, align 4
  %tobool = icmp ne i32 %71, 0
  br i1 %tobool, label %land.lhs.true.120, label %if.else

land.lhs.true.120:                                ; preds = %sw.bb
  %72 = load %union.rec*, %union.rec** %x.addr, align 8
  %73 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call121 = call i32 @InsertScale(%union.rec* %72, %struct.CONSTRAINT* %73)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.else

if.then.123:                                      ; preds = %land.lhs.true.120
  %74 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1124 = bitcast %union.rec* %74 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  %75 = load %union.rec*, %union.rec** %osucc127, align 8
  %os1128 = bitcast %union.rec* %75 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred131, align 8
  store %union.rec* %76, %union.rec** %x.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.123
  %77 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1132 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 1
  %os11134 = bitcast %union.FIRST_UNION* %ou1133 to %struct.anon*
  %otype135 = getelementptr inbounds %struct.anon, %struct.anon* %os11134, i32 0, i32 0
  %78 = load i8, i8* %otype135, align 1
  %conv136 = zext i8 %78 to i32
  %cmp137 = icmp eq i32 %conv136, 0
  br i1 %cmp137, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1139 = bitcast %union.rec* %79 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %opred142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred142, align 8
  store %union.rec* %80, %union.rec** %x.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1143 = bitcast %union.rec* %81 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %ofpos145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.FILE_POS*
  %82 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %82 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc146 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  %83 = load i32, i32* %obc146, align 4
  %conv147 = sitofp i32 %83 to float
  %div = fdiv float %conv147, 1.280000e+02
  %conv148 = fpext float %div to double
  %call149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), double %conv148)
  br label %if.end.247

if.else:                                          ; preds = %land.lhs.true.120, %sw.bb
  %84 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1150 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 1
  %ofpos152 = bitcast %union.FIRST_UNION* %ou1151 to %struct.FILE_POS*
  %call153 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %85 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1154 = bitcast %union.rec* %85 to %struct.word_type*
  %ou1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 1
  %ofpos156 = bitcast %union.FIRST_UNION* %ou1155 to %struct.FILE_POS*
  %call157 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %ofpos156)
  store %union.rec* %call157, %union.rec** %y, align 8
  %86 = load %union.rec*, %union.rec** %y, align 8
  %os1158 = bitcast %union.rec* %86 to %struct.word_type*
  %ou3159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 3
  %os31160 = bitcast %union.THIRD_UNION* %ou3159 to %struct.anon.6*
  %ofwd161 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31160, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd161, i32 0, i64 0
  store i32 0, i32* %arrayidx162, align 4
  %87 = load %union.rec*, %union.rec** %y, align 8
  %os1163 = bitcast %union.rec* %87 to %struct.word_type*
  %ou3164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 3
  %os31165 = bitcast %union.THIRD_UNION* %ou3164 to %struct.anon.6*
  %oback166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x i32], [2 x i32]* %oback166, i32 0, i64 0
  store i32 0, i32* %arrayidx167, align 4
  %88 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1168 = bitcast %union.rec* %89 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 1
  %osucc171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 1
  %90 = load %union.rec*, %union.rec** %osucc171, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp172 = icmp eq %union.rec* %90, %91
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %if.else
  br label %cond.end.204

cond.false.175:                                   ; preds = %if.else
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1176 = bitcast %union.rec* %92 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 1
  %osucc179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 1
  %93 = load %union.rec*, %union.rec** %osucc179, align 8
  store %union.rec* %93, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1180 = bitcast %union.rec* %94 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 1
  %opred183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %opred183, align 8
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1184 = bitcast %union.rec* %96 to %struct.word_type*
  %olist185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist185, i32 0, i64 1
  %opred187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx186, i32 0, i32 0
  store %union.rec* %95, %union.rec** %opred187, align 8
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %98 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 1
  %opred191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred191, align 8
  %os1192 = bitcast %union.rec* %99 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 1
  %osucc195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 1
  store %union.rec* %97, %union.rec** %osucc195, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1196 = bitcast %union.rec* %101 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 1
  %osucc199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc199, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %102 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 1
  %opred203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred203, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.175, %cond.true.174
  %cond205 = phi %union.rec* [ null, %cond.true.174 ], [ %103, %cond.false.175 ]
  store %union.rec* %cond205, %union.rec** @xx_tmp, align 8
  %104 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %104, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp206 = icmp eq %union.rec* %106, null
  br i1 %cmp206, label %cond.true.208, label %cond.false.209

cond.true.208:                                    ; preds = %cond.end.204
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.244

cond.false.209:                                   ; preds = %cond.end.204
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp210 = icmp eq %union.rec* %108, null
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.false.209
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.242

cond.false.213:                                   ; preds = %cond.false.209
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %110 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred217, align 8
  store %union.rec* %111, %union.rec** @zz_tmp, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1218 = bitcast %union.rec* %112 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred221, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1222 = bitcast %union.rec* %114 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 1
  %opred225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 0
  store %union.rec* %113, %union.rec** %opred225, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1226 = bitcast %union.rec* %116 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred229, align 8
  %os1230 = bitcast %union.rec* %117 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 1
  %osucc233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 1
  store %union.rec* %115, %union.rec** %osucc233, align 8
  %118 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1234 = bitcast %union.rec* %119 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 1
  %opred237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 0
  store %union.rec* %118, %union.rec** %opred237, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1238 = bitcast %union.rec* %121 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 1
  %osucc241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 1
  store %union.rec* %120, %union.rec** %osucc241, align 8
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.213, %cond.true.212
  %cond243 = phi %union.rec* [ %109, %cond.true.212 ], [ %120, %cond.false.213 ]
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.end.242, %cond.true.208
  %cond245 = phi %union.rec* [ %107, %cond.true.208 ], [ %cond243, %cond.end.242 ]
  %122 = load %union.rec*, %union.rec** %x.addr, align 8
  %call246 = call i32 @DisposeObject(%union.rec* %122)
  %123 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %123, %union.rec** %x.addr, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %cond.end.244, %for.end
  br label %sw.epilog

sw.bb.248:                                        ; preds = %if.end.117
  %124 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2249 = bitcast %union.rec* %124 to %struct.closure_type*
  %ou4250 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2249, i32 0, i32 4
  %oconstraint251 = bitcast %union.FOURTH_UNION* %ou4250 to %struct.CONSTRAINT*
  %obc252 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint251, i32 0, i32 0
  %125 = load i32, i32* %obc252, align 4
  %126 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  call void @InvScaleConstraint(%struct.CONSTRAINT* %yc, i32 %125, %struct.CONSTRAINT* %126)
  %127 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1253 = bitcast %union.rec* %127 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 0
  %osucc256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 1
  %128 = load %union.rec*, %union.rec** %osucc256, align 8
  %os1257 = bitcast %union.rec* %128 to %struct.word_type*
  %olist258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist258, i32 0, i64 1
  %opred260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx259, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %opred260, align 8
  store %union.rec* %129, %union.rec** %y, align 8
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.270, %sw.bb.248
  %130 = load %union.rec*, %union.rec** %y, align 8
  %os1262 = bitcast %union.rec* %130 to %struct.word_type*
  %ou1263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 1
  %os11264 = bitcast %union.FIRST_UNION* %ou1263 to %struct.anon*
  %otype265 = getelementptr inbounds %struct.anon, %struct.anon* %os11264, i32 0, i32 0
  %131 = load i8, i8* %otype265, align 1
  %conv266 = zext i8 %131 to i32
  %cmp267 = icmp eq i32 %conv266, 0
  br i1 %cmp267, label %for.body.269, label %for.end.275

for.body.269:                                     ; preds = %for.cond.261
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.269
  %132 = load %union.rec*, %union.rec** %y, align 8
  %os1271 = bitcast %union.rec* %132 to %struct.word_type*
  %olist272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist272, i32 0, i64 1
  %opred274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx273, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred274, align 8
  store %union.rec* %133, %union.rec** %y, align 8
  br label %for.cond.261

for.end.275:                                      ; preds = %for.cond.261
  %134 = load %union.rec*, %union.rec** %y, align 8
  %call276 = call %union.rec* @BreakObject(%union.rec* %134, %struct.CONSTRAINT* %yc)
  store %union.rec* %call276, %union.rec** %y, align 8
  %135 = load %union.rec*, %union.rec** %y, align 8
  %os1277 = bitcast %union.rec* %135 to %struct.word_type*
  %ou3278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 3
  %os31279 = bitcast %union.THIRD_UNION* %ou3278 to %struct.anon.6*
  %oback280 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31279, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [2 x i32], [2 x i32]* %oback280, i32 0, i64 0
  %136 = load i32, i32* %arrayidx281, align 4
  %137 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2282 = bitcast %union.rec* %137 to %struct.closure_type*
  %ou4283 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2282, i32 0, i32 4
  %oconstraint284 = bitcast %union.FOURTH_UNION* %ou4283 to %struct.CONSTRAINT*
  %obc285 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint284, i32 0, i32 0
  %138 = load i32, i32* %obc285, align 4
  %mul = mul nsw i32 %136, %138
  %div286 = sdiv i32 %mul, 128
  %139 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1287 = bitcast %union.rec* %139 to %struct.word_type*
  %ou3288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 3
  %os31289 = bitcast %union.THIRD_UNION* %ou3288 to %struct.anon.6*
  %oback290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x i32], [2 x i32]* %oback290, i32 0, i64 0
  store i32 %div286, i32* %arrayidx291, align 4
  %140 = load %union.rec*, %union.rec** %y, align 8
  %os1292 = bitcast %union.rec* %140 to %struct.word_type*
  %ou3293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 3
  %os31294 = bitcast %union.THIRD_UNION* %ou3293 to %struct.anon.6*
  %ofwd295 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31294, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd295, i32 0, i64 0
  %141 = load i32, i32* %arrayidx296, align 4
  %142 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2297 = bitcast %union.rec* %142 to %struct.closure_type*
  %ou4298 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2297, i32 0, i32 4
  %oconstraint299 = bitcast %union.FOURTH_UNION* %ou4298 to %struct.CONSTRAINT*
  %obc300 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint299, i32 0, i32 0
  %143 = load i32, i32* %obc300, align 4
  %mul301 = mul nsw i32 %141, %143
  %div302 = sdiv i32 %mul301, 128
  %144 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1303 = bitcast %union.rec* %144 to %struct.word_type*
  %ou3304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 3
  %os31305 = bitcast %union.THIRD_UNION* %ou3304 to %struct.anon.6*
  %ofwd306 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31305, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd306, i32 0, i64 0
  store i32 %div302, i32* %arrayidx307, align 4
  br label %sw.epilog

sw.bb.308:                                        ; preds = %if.end.117
  %145 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1309 = bitcast %union.rec* %145 to %struct.word_type*
  %olist310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist310, i32 0, i64 0
  %opred312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx311, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %opred312, align 8
  %os1313 = bitcast %union.rec* %146 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %opred316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 0
  %147 = load %union.rec*, %union.rec** %opred316, align 8
  store %union.rec* %147, %union.rec** %y, align 8
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.326, %sw.bb.308
  %148 = load %union.rec*, %union.rec** %y, align 8
  %os1318 = bitcast %union.rec* %148 to %struct.word_type*
  %ou1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 1
  %os11320 = bitcast %union.FIRST_UNION* %ou1319 to %struct.anon*
  %otype321 = getelementptr inbounds %struct.anon, %struct.anon* %os11320, i32 0, i32 0
  %149 = load i8, i8* %otype321, align 1
  %conv322 = zext i8 %149 to i32
  %cmp323 = icmp eq i32 %conv322, 0
  br i1 %cmp323, label %for.body.325, label %for.end.331

for.body.325:                                     ; preds = %for.cond.317
  br label %for.inc.326

for.inc.326:                                      ; preds = %for.body.325
  %150 = load %union.rec*, %union.rec** %y, align 8
  %os1327 = bitcast %union.rec* %150 to %struct.word_type*
  %olist328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1327, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist328, i32 0, i64 1
  %opred330 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx329, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %opred330, align 8
  store %union.rec* %151, %union.rec** %y, align 8
  br label %for.cond.317

for.end.331:                                      ; preds = %for.cond.317
  %152 = load %union.rec*, %union.rec** %y, align 8
  %153 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call332 = call %union.rec* @BreakObject(%union.rec* %152, %struct.CONSTRAINT* %153)
  store %union.rec* %call332, %union.rec** %y, align 8
  %154 = load %union.rec*, %union.rec** %y, align 8
  %os1333 = bitcast %union.rec* %154 to %struct.word_type*
  %ou3334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1333, i32 0, i32 3
  %os31335 = bitcast %union.THIRD_UNION* %ou3334 to %struct.anon.6*
  %oback336 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [2 x i32], [2 x i32]* %oback336, i32 0, i64 0
  %155 = load i32, i32* %arrayidx337, align 4
  %156 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1338 = bitcast %union.rec* %156 to %struct.word_type*
  %ou3339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 3
  %os31340 = bitcast %union.THIRD_UNION* %ou3339 to %struct.anon.6*
  %oback341 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x i32], [2 x i32]* %oback341, i32 0, i64 0
  store i32 %155, i32* %arrayidx342, align 4
  %157 = load %union.rec*, %union.rec** %y, align 8
  %os1343 = bitcast %union.rec* %157 to %struct.word_type*
  %ou3344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 3
  %os31345 = bitcast %union.THIRD_UNION* %ou3344 to %struct.anon.6*
  %ofwd346 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31345, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd346, i32 0, i64 0
  %158 = load i32, i32* %arrayidx347, align 4
  %159 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1348 = bitcast %union.rec* %159 to %struct.word_type*
  %ou3349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 3
  %os31350 = bitcast %union.THIRD_UNION* %ou3349 to %struct.anon.6*
  %ofwd351 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31350, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd351, i32 0, i64 0
  store i32 %158, i32* %arrayidx352, align 4
  br label %sw.epilog

sw.bb.353:                                        ; preds = %if.end.117, %if.end.117
  %160 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1354 = bitcast %union.rec* %160 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %161 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %161, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  %tobool355 = icmp ne i32 %bf.lshr, 0
  br i1 %tobool355, label %if.then.356, label %if.else.846

if.then.356:                                      ; preds = %sw.bb.353
  %162 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv357 = zext i8 %162 to i32
  store i32 %conv357, i32* @zz_size, align 4
  %conv358 = sext i32 %conv357 to i64
  %cmp359 = icmp uge i64 %conv358, 265
  br i1 %cmp359, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %if.then.356
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call362 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %163)
  br label %if.end.379

if.else.363:                                      ; preds = %if.then.356
  %164 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %164 to i64
  %arrayidx364 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %165 = load %union.rec*, %union.rec** %arrayidx364, align 8
  %cmp365 = icmp eq %union.rec* %165, null
  br i1 %cmp365, label %if.then.367, label %if.else.369

if.then.367:                                      ; preds = %if.else.363
  %166 = load i32, i32* @zz_size, align 4
  %167 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call368 = call %union.rec* @GetMemory(i32 %166, %struct.FILE_POS* %167)
  store %union.rec* %call368, %union.rec** @zz_hold, align 8
  br label %if.end.378

if.else.369:                                      ; preds = %if.else.363
  %168 = load i32, i32* @zz_size, align 4
  %idxprom370 = sext i32 %168 to i64
  %arrayidx371 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom370
  %169 = load %union.rec*, %union.rec** %arrayidx371, align 8
  store %union.rec* %169, %union.rec** @zz_hold, align 8
  store %union.rec* %169, %union.rec** @zz_hold, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1372 = bitcast %union.rec* %170 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 0
  %opred375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %opred375, align 8
  %172 = load i32, i32* @zz_size, align 4
  %idxprom376 = sext i32 %172 to i64
  %arrayidx377 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom376
  store %union.rec* %171, %union.rec** %arrayidx377, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.369, %if.then.367
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.361
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %173 to %struct.word_type*
  %ou1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 1
  %os11382 = bitcast %union.FIRST_UNION* %ou1381 to %struct.anon*
  %otype383 = getelementptr inbounds %struct.anon, %struct.anon* %os11382, i32 0, i32 0
  store i8 17, i8* %otype383, align 1
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1384 = bitcast %union.rec* %175 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 1
  %osucc387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 1
  store %union.rec* %174, %union.rec** %osucc387, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1388 = bitcast %union.rec* %176 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 1
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  store %union.rec* %174, %union.rec** %opred391, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1392 = bitcast %union.rec* %177 to %struct.word_type*
  %olist393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist393, i32 0, i64 0
  %osucc395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx394, i32 0, i32 1
  store %union.rec* %174, %union.rec** %osucc395, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1396 = bitcast %union.rec* %178 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 0
  %opred399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 0
  store %union.rec* %174, %union.rec** %opred399, align 8
  store %union.rec* %174, %union.rec** %y, align 8
  %179 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1400 = bitcast %union.rec* %179 to %struct.word_type*
  %ou1401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 1
  %ofpos402 = bitcast %union.FIRST_UNION* %ou1401 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos402, i32 0, i32 2
  %180 = load i16, i16* %ofile_num, align 2
  %181 = load %union.rec*, %union.rec** %y, align 8
  %os1403 = bitcast %union.rec* %181 to %struct.word_type*
  %ou1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 1
  %ofpos405 = bitcast %union.FIRST_UNION* %ou1404 to %struct.FILE_POS*
  %ofile_num406 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos405, i32 0, i32 2
  store i16 %180, i16* %ofile_num406, align 2
  %182 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1407 = bitcast %union.rec* %182 to %struct.word_type*
  %ou1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 1
  %ofpos409 = bitcast %union.FIRST_UNION* %ou1408 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos409, i32 0, i32 3
  %bf.load410 = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load410, 1048575
  %183 = load %union.rec*, %union.rec** %y, align 8
  %os1411 = bitcast %union.rec* %183 to %struct.word_type*
  %ou1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 1
  %ofpos413 = bitcast %union.FIRST_UNION* %ou1412 to %struct.FILE_POS*
  %oline_num414 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos413, i32 0, i32 3
  %bf.load415 = load i32, i32* %oline_num414, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear416 = and i32 %bf.load415, -1048576
  %bf.set = or i32 %bf.clear416, %bf.value
  store i32 %bf.set, i32* %oline_num414, align 4
  %184 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1417 = bitcast %union.rec* %184 to %struct.word_type*
  %ou1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1417, i32 0, i32 1
  %ofpos419 = bitcast %union.FIRST_UNION* %ou1418 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos419, i32 0, i32 3
  %bf.load420 = load i32, i32* %ocol_num, align 4
  %bf.lshr421 = lshr i32 %bf.load420, 20
  %185 = load %union.rec*, %union.rec** %y, align 8
  %os1422 = bitcast %union.rec* %185 to %struct.word_type*
  %ou1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 1
  %ofpos424 = bitcast %union.FIRST_UNION* %ou1423 to %struct.FILE_POS*
  %ocol_num425 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos424, i32 0, i32 3
  %bf.load426 = load i32, i32* %ocol_num425, align 4
  %bf.value427 = and i32 %bf.lshr421, 4095
  %bf.shl = shl i32 %bf.value427, 20
  %bf.clear428 = and i32 %bf.load426, 1048575
  %bf.set429 = or i32 %bf.clear428, %bf.shl
  store i32 %bf.set429, i32* %ocol_num425, align 4
  %186 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1430 = bitcast %union.rec* %186 to %struct.word_type*
  %ou3431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1430, i32 0, i32 3
  %os31432 = bitcast %union.THIRD_UNION* %ou3431 to %struct.anon.6*
  %oback433 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x i32], [2 x i32]* %oback433, i32 0, i64 0
  %187 = load i32, i32* %arrayidx434, align 4
  %188 = load %union.rec*, %union.rec** %y, align 8
  %os1435 = bitcast %union.rec* %188 to %struct.word_type*
  %ou3436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 3
  %os31437 = bitcast %union.THIRD_UNION* %ou3436 to %struct.anon.6*
  %oback438 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31437, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [2 x i32], [2 x i32]* %oback438, i32 0, i64 0
  store i32 %187, i32* %arrayidx439, align 4
  %189 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1440 = bitcast %union.rec* %189 to %struct.word_type*
  %ou3441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 3
  %os31442 = bitcast %union.THIRD_UNION* %ou3441 to %struct.anon.6*
  %ofwd443 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31442, i32 0, i32 1
  %arrayidx444 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd443, i32 0, i64 0
  %190 = load i32, i32* %arrayidx444, align 4
  %191 = load %union.rec*, %union.rec** %y, align 8
  %os1445 = bitcast %union.rec* %191 to %struct.word_type*
  %ou3446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 3
  %os31447 = bitcast %union.THIRD_UNION* %ou3446 to %struct.anon.6*
  %ofwd448 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31447, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd448, i32 0, i64 0
  store i32 %190, i32* %arrayidx449, align 4
  %192 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1450 = bitcast %union.rec* %192 to %struct.word_type*
  %ou3451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1450, i32 0, i32 3
  %os31452 = bitcast %union.THIRD_UNION* %ou3451 to %struct.anon.6*
  %oback453 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x i32], [2 x i32]* %oback453, i32 0, i64 1
  %193 = load i32, i32* %arrayidx454, align 4
  %194 = load %union.rec*, %union.rec** %y, align 8
  %os1455 = bitcast %union.rec* %194 to %struct.word_type*
  %ou3456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 3
  %os31457 = bitcast %union.THIRD_UNION* %ou3456 to %struct.anon.6*
  %oback458 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x i32], [2 x i32]* %oback458, i32 0, i64 1
  store i32 %193, i32* %arrayidx459, align 4
  %195 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1460 = bitcast %union.rec* %195 to %struct.word_type*
  %ou3461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 3
  %os31462 = bitcast %union.THIRD_UNION* %ou3461 to %struct.anon.6*
  %ofwd463 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31462, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd463, i32 0, i64 1
  %196 = load i32, i32* %arrayidx464, align 4
  %197 = load %union.rec*, %union.rec** %y, align 8
  %os1465 = bitcast %union.rec* %197 to %struct.word_type*
  %ou3466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 3
  %os31467 = bitcast %union.THIRD_UNION* %ou3466 to %struct.anon.6*
  %ofwd468 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31467, i32 0, i32 1
  %arrayidx469 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd468, i32 0, i64 1
  store i32 %196, i32* %arrayidx469, align 4
  %198 = load %union.rec*, %union.rec** %y, align 8
  %os2470 = bitcast %union.rec* %198 to %struct.closure_type*
  %ou4471 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2470, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4471 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %199 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load472 = load i16, i16* %199, align 4
  %bf.clear473 = and i16 %bf.load472, -129
  store i16 %bf.clear473, i16* %199, align 4
  %200 = load %union.rec*, %union.rec** %y, align 8
  %os2474 = bitcast %union.rec* %200 to %struct.closure_type*
  %ou4475 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2474, i32 0, i32 4
  %osave_style476 = bitcast %union.FOURTH_UNION* %ou4475 to %struct.STYLE*
  %osu1477 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style476, i32 0, i32 0
  %oline_gap478 = bitcast %union.anon* %osu1477 to %struct.GAP*
  %201 = bitcast %struct.GAP* %oline_gap478 to i16*
  %bf.load479 = load i16, i16* %201, align 4
  %bf.clear480 = and i16 %bf.load479, -257
  store i16 %bf.clear480, i16* %201, align 4
  %202 = load %union.rec*, %union.rec** %y, align 8
  %os2481 = bitcast %union.rec* %202 to %struct.closure_type*
  %ou4482 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2481, i32 0, i32 4
  %osave_style483 = bitcast %union.FOURTH_UNION* %ou4482 to %struct.STYLE*
  %osu1484 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style483, i32 0, i32 0
  %oline_gap485 = bitcast %union.anon* %osu1484 to %struct.GAP*
  %203 = bitcast %struct.GAP* %oline_gap485 to i16*
  %bf.load486 = load i16, i16* %203, align 4
  %bf.clear487 = and i16 %bf.load486, -513
  store i16 %bf.clear487, i16* %203, align 4
  %204 = load %union.rec*, %union.rec** %y, align 8
  %os2488 = bitcast %union.rec* %204 to %struct.closure_type*
  %ou4489 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2488, i32 0, i32 4
  %osave_style490 = bitcast %union.FOURTH_UNION* %ou4489 to %struct.STYLE*
  %osu1491 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style490, i32 0, i32 0
  %oline_gap492 = bitcast %union.anon* %osu1491 to %struct.GAP*
  %205 = bitcast %struct.GAP* %oline_gap492 to i16*
  %bf.load493 = load i16, i16* %205, align 4
  %bf.clear494 = and i16 %bf.load493, -7169
  %bf.set495 = or i16 %bf.clear494, 1024
  store i16 %bf.set495, i16* %205, align 4
  %206 = load %union.rec*, %union.rec** %y, align 8
  %os2496 = bitcast %union.rec* %206 to %struct.closure_type*
  %ou4497 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2496, i32 0, i32 4
  %osave_style498 = bitcast %union.FOURTH_UNION* %ou4497 to %struct.STYLE*
  %osu1499 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style498, i32 0, i32 0
  %oline_gap500 = bitcast %union.anon* %osu1499 to %struct.GAP*
  %207 = bitcast %struct.GAP* %oline_gap500 to i16*
  %bf.load501 = load i16, i16* %207, align 4
  %bf.clear502 = and i16 %bf.load501, 8191
  %bf.set503 = or i16 %bf.clear502, 24576
  store i16 %bf.set503, i16* %207, align 4
  %208 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1504 = bitcast %union.rec* %208 to %struct.word_type*
  %ou2505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 2
  %os22506 = bitcast %union.SECOND_UNION* %ou2505 to %struct.anon.1*
  %209 = bitcast %struct.anon.1* %os22506 to i32*
  %bf.load507 = load i32, i32* %209, align 4
  %bf.clear508 = and i32 %bf.load507, 4095
  %210 = load %union.rec*, %union.rec** %x.addr, align 8
  %call509 = call i32 @FontSize(i32 %bf.clear508, %union.rec* %210)
  %conv510 = sitofp i32 %call509 to double
  %mul511 = fmul double 1.100000e+00, %conv510
  %conv512 = fptosi double %mul511 to i16
  %211 = load %union.rec*, %union.rec** %y, align 8
  %os2513 = bitcast %union.rec* %211 to %struct.closure_type*
  %ou4514 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2513, i32 0, i32 4
  %osave_style515 = bitcast %union.FOURTH_UNION* %ou4514 to %struct.STYLE*
  %osu1516 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style515, i32 0, i32 0
  %oline_gap517 = bitcast %union.anon* %osu1516 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap517, i32 0, i32 1
  store i16 %conv512, i16* %owidth, align 2
  %212 = load %union.rec*, %union.rec** %y, align 8
  %os2518 = bitcast %union.rec* %212 to %struct.closure_type*
  %ou4519 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2518, i32 0, i32 4
  %osave_style520 = bitcast %union.FOURTH_UNION* %ou4519 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style520, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %213 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load521 = load i16, i16* %213, align 4
  %bf.clear522 = and i16 %bf.load521, -129
  store i16 %bf.clear522, i16* %213, align 4
  %214 = load %union.rec*, %union.rec** %y, align 8
  %os2523 = bitcast %union.rec* %214 to %struct.closure_type*
  %ou4524 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2523, i32 0, i32 4
  %osave_style525 = bitcast %union.FOURTH_UNION* %ou4524 to %struct.STYLE*
  %osu2526 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style525, i32 0, i32 1
  %ospace_gap527 = bitcast %union.anon.10* %osu2526 to %struct.GAP*
  %215 = bitcast %struct.GAP* %ospace_gap527 to i16*
  %bf.load528 = load i16, i16* %215, align 4
  %bf.clear529 = and i16 %bf.load528, -257
  store i16 %bf.clear529, i16* %215, align 4
  %216 = load %union.rec*, %union.rec** %y, align 8
  %os2530 = bitcast %union.rec* %216 to %struct.closure_type*
  %ou4531 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2530, i32 0, i32 4
  %osave_style532 = bitcast %union.FOURTH_UNION* %ou4531 to %struct.STYLE*
  %osu2533 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style532, i32 0, i32 1
  %ospace_gap534 = bitcast %union.anon.10* %osu2533 to %struct.GAP*
  %217 = bitcast %struct.GAP* %ospace_gap534 to i16*
  %bf.load535 = load i16, i16* %217, align 4
  %bf.clear536 = and i16 %bf.load535, -513
  %bf.set537 = or i16 %bf.clear536, 512
  store i16 %bf.set537, i16* %217, align 4
  %218 = load %union.rec*, %union.rec** %y, align 8
  %os2538 = bitcast %union.rec* %218 to %struct.closure_type*
  %ou4539 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2538, i32 0, i32 4
  %osave_style540 = bitcast %union.FOURTH_UNION* %ou4539 to %struct.STYLE*
  %osu2541 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style540, i32 0, i32 1
  %ospace_gap542 = bitcast %union.anon.10* %osu2541 to %struct.GAP*
  %219 = bitcast %struct.GAP* %ospace_gap542 to i16*
  %bf.load543 = load i16, i16* %219, align 4
  %bf.clear544 = and i16 %bf.load543, -7169
  %bf.set545 = or i16 %bf.clear544, 1024
  store i16 %bf.set545, i16* %219, align 4
  %220 = load %union.rec*, %union.rec** %y, align 8
  %os2546 = bitcast %union.rec* %220 to %struct.closure_type*
  %ou4547 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2546, i32 0, i32 4
  %osave_style548 = bitcast %union.FOURTH_UNION* %ou4547 to %struct.STYLE*
  %osu2549 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style548, i32 0, i32 1
  %ospace_gap550 = bitcast %union.anon.10* %osu2549 to %struct.GAP*
  %221 = bitcast %struct.GAP* %ospace_gap550 to i16*
  %bf.load551 = load i16, i16* %221, align 4
  %bf.clear552 = and i16 %bf.load551, 8191
  %bf.set553 = or i16 %bf.clear552, 8192
  store i16 %bf.set553, i16* %221, align 4
  %222 = load %union.rec*, %union.rec** %y, align 8
  %os2554 = bitcast %union.rec* %222 to %struct.closure_type*
  %ou4555 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2554, i32 0, i32 4
  %osave_style556 = bitcast %union.FOURTH_UNION* %ou4555 to %struct.STYLE*
  %osu2557 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style556, i32 0, i32 1
  %ospace_gap558 = bitcast %union.anon.10* %osu2557 to %struct.GAP*
  %owidth559 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap558, i32 0, i32 1
  store i16 0, i16* %owidth559, align 2
  %223 = load %union.rec*, %union.rec** %y, align 8
  %os2560 = bitcast %union.rec* %223 to %struct.closure_type*
  %ou4561 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2560, i32 0, i32 4
  %osave_style562 = bitcast %union.FOURTH_UNION* %ou4561 to %struct.STYLE*
  %osu2563 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style562, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2563 to %struct.anon.11*
  %224 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load564 = load i8, i8* %224, align 4
  %bf.clear565 = and i8 %bf.load564, -4
  %bf.set566 = or i8 %bf.clear565, 2
  store i8 %bf.set566, i8* %224, align 4
  %225 = load %union.rec*, %union.rec** %y, align 8
  %os2567 = bitcast %union.rec* %225 to %struct.closure_type*
  %ou4568 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2567, i32 0, i32 4
  %osave_style569 = bitcast %union.FOURTH_UNION* %ou4568 to %struct.STYLE*
  %osu2570 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style569, i32 0, i32 1
  %oss2571 = bitcast %union.anon.10* %osu2570 to %struct.anon.11*
  %226 = bitcast %struct.anon.11* %oss2571 to i8*
  %bf.load572 = load i8, i8* %226, align 4
  %bf.clear573 = and i8 %bf.load572, -13
  %bf.set574 = or i8 %bf.clear573, 8
  store i8 %bf.set574, i8* %226, align 4
  %227 = load %union.rec*, %union.rec** %y, align 8
  %os2575 = bitcast %union.rec* %227 to %struct.closure_type*
  %ou4576 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2575, i32 0, i32 4
  %osave_style577 = bitcast %union.FOURTH_UNION* %ou4576 to %struct.STYLE*
  %osu2578 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style577, i32 0, i32 1
  %oss2579 = bitcast %union.anon.10* %osu2578 to %struct.anon.11*
  %228 = bitcast %struct.anon.11* %oss2579 to i8*
  %bf.load580 = load i8, i8* %228, align 4
  %bf.clear581 = and i8 %bf.load580, -113
  %bf.set582 = or i8 %bf.clear581, 64
  store i8 %bf.set582, i8* %228, align 4
  %229 = load %union.rec*, %union.rec** %y, align 8
  %os2583 = bitcast %union.rec* %229 to %struct.closure_type*
  %ou4584 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2583, i32 0, i32 4
  %osave_style585 = bitcast %union.FOURTH_UNION* %ou4584 to %struct.STYLE*
  %osu1586 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style585, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu1586 to %struct.anon.9*
  %230 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load587 = load i8, i8* %230, align 4
  %bf.clear588 = and i8 %bf.load587, -9
  store i8 %bf.clear588, i8* %230, align 4
  %231 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1589 = bitcast %union.rec* %231 to %struct.word_type*
  %ou2590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 2
  %os22591 = bitcast %union.SECOND_UNION* %ou2590 to %struct.anon.1*
  %232 = bitcast %struct.anon.1* %os22591 to i32*
  %bf.load592 = load i32, i32* %232, align 4
  %bf.clear593 = and i32 %bf.load592, 4095
  %233 = load %union.rec*, %union.rec** %y, align 8
  %os2594 = bitcast %union.rec* %233 to %struct.closure_type*
  %ou4595 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2594, i32 0, i32 4
  %osave_style596 = bitcast %union.FOURTH_UNION* %ou4595 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style596, i32 0, i32 4
  %bf.load597 = load i32, i32* %ofont, align 4
  %bf.value598 = and i32 %bf.clear593, 4095
  %bf.clear599 = and i32 %bf.load597, -4096
  %bf.set600 = or i32 %bf.clear599, %bf.value598
  store i32 %bf.set600, i32* %ofont, align 4
  %234 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1601 = bitcast %union.rec* %234 to %struct.word_type*
  %ou2602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 2
  %os22603 = bitcast %union.SECOND_UNION* %ou2602 to %struct.anon.1*
  %235 = bitcast %struct.anon.1* %os22603 to i32*
  %bf.load604 = load i32, i32* %235, align 4
  %bf.lshr605 = lshr i32 %bf.load604, 12
  %bf.clear606 = and i32 %bf.lshr605, 1023
  %236 = load %union.rec*, %union.rec** %y, align 8
  %os2607 = bitcast %union.rec* %236 to %struct.closure_type*
  %ou4608 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2607, i32 0, i32 4
  %osave_style609 = bitcast %union.FOURTH_UNION* %ou4608 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style609, i32 0, i32 4
  %bf.load610 = load i32, i32* %ocolour, align 4
  %bf.value611 = and i32 %bf.clear606, 1023
  %bf.shl612 = shl i32 %bf.value611, 12
  %bf.clear613 = and i32 %bf.load610, -4190209
  %bf.set614 = or i32 %bf.clear613, %bf.shl612
  store i32 %bf.set614, i32* %ocolour, align 4
  %237 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1615 = bitcast %union.rec* %237 to %struct.word_type*
  %ou2616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1615, i32 0, i32 2
  %os22617 = bitcast %union.SECOND_UNION* %ou2616 to %struct.anon.1*
  %238 = bitcast %struct.anon.1* %os22617 to i32*
  %bf.load618 = load i32, i32* %238, align 4
  %bf.lshr619 = lshr i32 %bf.load618, 22
  %bf.clear620 = and i32 %bf.lshr619, 1
  %239 = load %union.rec*, %union.rec** %y, align 8
  %os2621 = bitcast %union.rec* %239 to %struct.closure_type*
  %ou4622 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2621, i32 0, i32 4
  %osave_style623 = bitcast %union.FOURTH_UNION* %ou4622 to %struct.STYLE*
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style623, i32 0, i32 4
  %bf.load624 = load i32, i32* %ooutline, align 4
  %bf.value625 = and i32 %bf.clear620, 3
  %bf.shl626 = shl i32 %bf.value625, 22
  %bf.clear627 = and i32 %bf.load624, -12582913
  %bf.set628 = or i32 %bf.clear627, %bf.shl626
  store i32 %bf.set628, i32* %ooutline, align 4
  %240 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1629 = bitcast %union.rec* %240 to %struct.word_type*
  %ou2630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 2
  %os22631 = bitcast %union.SECOND_UNION* %ou2630 to %struct.anon.1*
  %241 = bitcast %struct.anon.1* %os22631 to i32*
  %bf.load632 = load i32, i32* %241, align 4
  %bf.lshr633 = lshr i32 %bf.load632, 23
  %bf.clear634 = and i32 %bf.lshr633, 63
  %242 = load %union.rec*, %union.rec** %y, align 8
  %os2635 = bitcast %union.rec* %242 to %struct.closure_type*
  %ou4636 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2635, i32 0, i32 4
  %osave_style637 = bitcast %union.FOURTH_UNION* %ou4636 to %struct.STYLE*
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style637, i32 0, i32 4
  %bf.load638 = load i32, i32* %olanguage, align 4
  %bf.value639 = and i32 %bf.clear634, 63
  %bf.shl640 = shl i32 %bf.value639, 24
  %bf.clear641 = and i32 %bf.load638, -1056964609
  %bf.set642 = or i32 %bf.clear641, %bf.shl640
  store i32 %bf.set642, i32* %olanguage, align 4
  %243 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %243, %union.rec** @zz_hold, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1643 = bitcast %union.rec* %244 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 1
  %osucc646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 1
  %245 = load %union.rec*, %union.rec** %osucc646, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp647 = icmp eq %union.rec* %245, %246
  br i1 %cmp647, label %cond.true.649, label %cond.false.650

cond.true.649:                                    ; preds = %if.end.379
  br label %cond.end.679

cond.false.650:                                   ; preds = %if.end.379
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1651 = bitcast %union.rec* %247 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 1
  %osucc654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 1
  %248 = load %union.rec*, %union.rec** %osucc654, align 8
  store %union.rec* %248, %union.rec** @zz_res, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1655 = bitcast %union.rec* %249 to %struct.word_type*
  %olist656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist656, i32 0, i64 1
  %opred658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx657, i32 0, i32 0
  %250 = load %union.rec*, %union.rec** %opred658, align 8
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1659 = bitcast %union.rec* %251 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 1
  %opred662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 0
  store %union.rec* %250, %union.rec** %opred662, align 8
  %252 = load %union.rec*, %union.rec** @zz_res, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1663 = bitcast %union.rec* %253 to %struct.word_type*
  %olist664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 0
  %arrayidx665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist664, i32 0, i64 1
  %opred666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx665, i32 0, i32 0
  %254 = load %union.rec*, %union.rec** %opred666, align 8
  %os1667 = bitcast %union.rec* %254 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 1
  %osucc670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 1
  store %union.rec* %252, %union.rec** %osucc670, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1671 = bitcast %union.rec* %256 to %struct.word_type*
  %olist672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist672, i32 0, i64 1
  %osucc674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx673, i32 0, i32 1
  store %union.rec* %255, %union.rec** %osucc674, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1675 = bitcast %union.rec* %257 to %struct.word_type*
  %olist676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist676, i32 0, i64 1
  %opred678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx677, i32 0, i32 0
  store %union.rec* %255, %union.rec** %opred678, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.679

cond.end.679:                                     ; preds = %cond.false.650, %cond.true.649
  %cond680 = phi %union.rec* [ null, %cond.true.649 ], [ %258, %cond.false.650 ]
  store %union.rec* %cond680, %union.rec** @xx_tmp, align 8
  %259 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %259, %union.rec** @zz_res, align 8
  %260 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %260, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp681 = icmp eq %union.rec* %261, null
  br i1 %cmp681, label %cond.true.683, label %cond.false.684

cond.true.683:                                    ; preds = %cond.end.679
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.719

cond.false.684:                                   ; preds = %cond.end.679
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp685 = icmp eq %union.rec* %263, null
  br i1 %cmp685, label %cond.true.687, label %cond.false.688

cond.true.687:                                    ; preds = %cond.false.684
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.717

cond.false.688:                                   ; preds = %cond.false.684
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1689 = bitcast %union.rec* %265 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 1
  %opred692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %opred692, align 8
  store %union.rec* %266, %union.rec** @zz_tmp, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1693 = bitcast %union.rec* %267 to %struct.word_type*
  %olist694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1693, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist694, i32 0, i64 1
  %opred696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx695, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %opred696, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1697 = bitcast %union.rec* %269 to %struct.word_type*
  %olist698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist698, i32 0, i64 1
  %opred700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx699, i32 0, i32 0
  store %union.rec* %268, %union.rec** %opred700, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1701 = bitcast %union.rec* %271 to %struct.word_type*
  %olist702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist702, i32 0, i64 1
  %opred704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx703, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %opred704, align 8
  %os1705 = bitcast %union.rec* %272 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 1
  %osucc708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 1
  store %union.rec* %270, %union.rec** %osucc708, align 8
  %273 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1709 = bitcast %union.rec* %274 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 1
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  store %union.rec* %273, %union.rec** %opred712, align 8
  %275 = load %union.rec*, %union.rec** @zz_res, align 8
  %276 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1713 = bitcast %union.rec* %276 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 1
  %osucc716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 1
  store %union.rec* %275, %union.rec** %osucc716, align 8
  br label %cond.end.717

cond.end.717:                                     ; preds = %cond.false.688, %cond.true.687
  %cond718 = phi %union.rec* [ %264, %cond.true.687 ], [ %275, %cond.false.688 ]
  br label %cond.end.719

cond.end.719:                                     ; preds = %cond.end.717, %cond.true.683
  %cond720 = phi %union.rec* [ %262, %cond.true.683 ], [ %cond718, %cond.end.717 ]
  %277 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv721 = zext i8 %277 to i32
  store i32 %conv721, i32* @zz_size, align 4
  %conv722 = sext i32 %conv721 to i64
  %cmp723 = icmp uge i64 %conv722, 265
  br i1 %cmp723, label %if.then.725, label %if.else.727

if.then.725:                                      ; preds = %cond.end.719
  %278 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call726 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %278)
  br label %if.end.744

if.else.727:                                      ; preds = %cond.end.719
  %279 = load i32, i32* @zz_size, align 4
  %idxprom728 = sext i32 %279 to i64
  %arrayidx729 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom728
  %280 = load %union.rec*, %union.rec** %arrayidx729, align 8
  %cmp730 = icmp eq %union.rec* %280, null
  br i1 %cmp730, label %if.then.732, label %if.else.734

if.then.732:                                      ; preds = %if.else.727
  %281 = load i32, i32* @zz_size, align 4
  %282 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call733 = call %union.rec* @GetMemory(i32 %281, %struct.FILE_POS* %282)
  store %union.rec* %call733, %union.rec** @zz_hold, align 8
  br label %if.end.743

if.else.734:                                      ; preds = %if.else.727
  %283 = load i32, i32* @zz_size, align 4
  %idxprom735 = sext i32 %283 to i64
  %arrayidx736 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom735
  %284 = load %union.rec*, %union.rec** %arrayidx736, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1737 = bitcast %union.rec* %285 to %struct.word_type*
  %olist738 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1737, i32 0, i32 0
  %arrayidx739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist738, i32 0, i64 0
  %opred740 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx739, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %opred740, align 8
  %287 = load i32, i32* @zz_size, align 4
  %idxprom741 = sext i32 %287 to i64
  %arrayidx742 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom741
  store %union.rec* %286, %union.rec** %arrayidx742, align 8
  br label %if.end.743

if.end.743:                                       ; preds = %if.else.734, %if.then.732
  br label %if.end.744

if.end.744:                                       ; preds = %if.end.743, %if.then.725
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1745 = bitcast %union.rec* %288 to %struct.word_type*
  %ou1746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1745, i32 0, i32 1
  %os11747 = bitcast %union.FIRST_UNION* %ou1746 to %struct.anon*
  %otype748 = getelementptr inbounds %struct.anon, %struct.anon* %os11747, i32 0, i32 0
  store i8 0, i8* %otype748, align 1
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1749 = bitcast %union.rec* %290 to %struct.word_type*
  %olist750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1749, i32 0, i32 0
  %arrayidx751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist750, i32 0, i64 1
  %osucc752 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx751, i32 0, i32 1
  store %union.rec* %289, %union.rec** %osucc752, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1753 = bitcast %union.rec* %291 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 1
  %opred756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  store %union.rec* %289, %union.rec** %opred756, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1757 = bitcast %union.rec* %292 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %osucc760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 1
  store %union.rec* %289, %union.rec** %osucc760, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1761 = bitcast %union.rec* %293 to %struct.word_type*
  %olist762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 0
  %arrayidx763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist762, i32 0, i64 0
  %opred764 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx763, i32 0, i32 0
  store %union.rec* %289, %union.rec** %opred764, align 8
  store %union.rec* %289, %union.rec** @xx_link, align 8
  %294 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %294, %union.rec** @zz_res, align 8
  %295 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %295, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp765 = icmp eq %union.rec* %296, null
  br i1 %cmp765, label %cond.true.767, label %cond.false.768

cond.true.767:                                    ; preds = %if.end.744
  %297 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.803

cond.false.768:                                   ; preds = %if.end.744
  %298 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp769 = icmp eq %union.rec* %298, null
  br i1 %cmp769, label %cond.true.771, label %cond.false.772

cond.true.771:                                    ; preds = %cond.false.768
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.801

cond.false.772:                                   ; preds = %cond.false.768
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1773 = bitcast %union.rec* %300 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 0
  %opred776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %opred776, align 8
  store %union.rec* %301, %union.rec** @zz_tmp, align 8
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1777 = bitcast %union.rec* %302 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 0
  %opred780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 0
  %303 = load %union.rec*, %union.rec** %opred780, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1781 = bitcast %union.rec* %304 to %struct.word_type*
  %olist782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 0
  %arrayidx783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist782, i32 0, i64 0
  %opred784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx783, i32 0, i32 0
  store %union.rec* %303, %union.rec** %opred784, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1785 = bitcast %union.rec* %306 to %struct.word_type*
  %olist786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 0
  %arrayidx787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist786, i32 0, i64 0
  %opred788 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx787, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %opred788, align 8
  %os1789 = bitcast %union.rec* %307 to %struct.word_type*
  %olist790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 0
  %arrayidx791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist790, i32 0, i64 0
  %osucc792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx791, i32 0, i32 1
  store %union.rec* %305, %union.rec** %osucc792, align 8
  %308 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1793 = bitcast %union.rec* %309 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 0
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  store %union.rec* %308, %union.rec** %opred796, align 8
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  %311 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1797 = bitcast %union.rec* %311 to %struct.word_type*
  %olist798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist798, i32 0, i64 0
  %osucc800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx799, i32 0, i32 1
  store %union.rec* %310, %union.rec** %osucc800, align 8
  br label %cond.end.801

cond.end.801:                                     ; preds = %cond.false.772, %cond.true.771
  %cond802 = phi %union.rec* [ %299, %cond.true.771 ], [ %310, %cond.false.772 ]
  br label %cond.end.803

cond.end.803:                                     ; preds = %cond.end.801, %cond.true.767
  %cond804 = phi %union.rec* [ %297, %cond.true.767 ], [ %cond802, %cond.end.801 ]
  %312 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %312, %union.rec** @zz_res, align 8
  %313 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %313, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp805 = icmp eq %union.rec* %314, null
  br i1 %cmp805, label %cond.true.807, label %cond.false.808

cond.true.807:                                    ; preds = %cond.end.803
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.843

cond.false.808:                                   ; preds = %cond.end.803
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp809 = icmp eq %union.rec* %316, null
  br i1 %cmp809, label %cond.true.811, label %cond.false.812

cond.true.811:                                    ; preds = %cond.false.808
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.841

cond.false.812:                                   ; preds = %cond.false.808
  %318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1813 = bitcast %union.rec* %318 to %struct.word_type*
  %olist814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1813, i32 0, i32 0
  %arrayidx815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist814, i32 0, i64 1
  %opred816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx815, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %opred816, align 8
  store %union.rec* %319, %union.rec** @zz_tmp, align 8
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1817 = bitcast %union.rec* %320 to %struct.word_type*
  %olist818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1817, i32 0, i32 0
  %arrayidx819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist818, i32 0, i64 1
  %opred820 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx819, i32 0, i32 0
  %321 = load %union.rec*, %union.rec** %opred820, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1821 = bitcast %union.rec* %322 to %struct.word_type*
  %olist822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1821, i32 0, i32 0
  %arrayidx823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist822, i32 0, i64 1
  %opred824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx823, i32 0, i32 0
  store %union.rec* %321, %union.rec** %opred824, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1825 = bitcast %union.rec* %324 to %struct.word_type*
  %olist826 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1825, i32 0, i32 0
  %arrayidx827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist826, i32 0, i64 1
  %opred828 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx827, i32 0, i32 0
  %325 = load %union.rec*, %union.rec** %opred828, align 8
  %os1829 = bitcast %union.rec* %325 to %struct.word_type*
  %olist830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1829, i32 0, i32 0
  %arrayidx831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist830, i32 0, i64 1
  %osucc832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx831, i32 0, i32 1
  store %union.rec* %323, %union.rec** %osucc832, align 8
  %326 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1833 = bitcast %union.rec* %327 to %struct.word_type*
  %olist834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1833, i32 0, i32 0
  %arrayidx835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist834, i32 0, i64 1
  %opred836 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx835, i32 0, i32 0
  store %union.rec* %326, %union.rec** %opred836, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1837 = bitcast %union.rec* %329 to %struct.word_type*
  %olist838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 0
  %arrayidx839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist838, i32 0, i64 1
  %osucc840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx839, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc840, align 8
  br label %cond.end.841

cond.end.841:                                     ; preds = %cond.false.812, %cond.true.811
  %cond842 = phi %union.rec* [ %317, %cond.true.811 ], [ %328, %cond.false.812 ]
  br label %cond.end.843

cond.end.843:                                     ; preds = %cond.end.841, %cond.true.807
  %cond844 = phi %union.rec* [ %315, %cond.true.807 ], [ %cond842, %cond.end.841 ]
  %330 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %330, %union.rec** %x.addr, align 8
  %331 = load %union.rec*, %union.rec** %x.addr, align 8
  %332 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call845 = call %union.rec* @BreakObject(%union.rec* %331, %struct.CONSTRAINT* %332)
  store %union.rec* %call845, %union.rec** %x.addr, align 8
  br label %if.end.990

if.else.846:                                      ; preds = %sw.bb.353
  %333 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail847 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %333, i32 0, i32 2
  %334 = load i32, i32* %scale_avail847, align 4
  %tobool848 = icmp ne i32 %334, 0
  br i1 %tobool848, label %land.lhs.true.849, label %if.else.888

land.lhs.true.849:                                ; preds = %if.else.846
  %335 = load %union.rec*, %union.rec** %x.addr, align 8
  %336 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call850 = call i32 @InsertScale(%union.rec* %335, %struct.CONSTRAINT* %336)
  %tobool851 = icmp ne i32 %call850, 0
  br i1 %tobool851, label %if.then.852, label %if.else.888

if.then.852:                                      ; preds = %land.lhs.true.849
  %337 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %337, %union.rec** %tmp, align 8
  %338 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1853 = bitcast %union.rec* %338 to %struct.word_type*
  %olist854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1853, i32 0, i32 0
  %arrayidx855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist854, i32 0, i64 1
  %osucc856 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx855, i32 0, i32 1
  %339 = load %union.rec*, %union.rec** %osucc856, align 8
  %os1857 = bitcast %union.rec* %339 to %struct.word_type*
  %olist858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1857, i32 0, i32 0
  %arrayidx859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist858, i32 0, i64 0
  %opred860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx859, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %opred860, align 8
  store %union.rec* %340, %union.rec** %x.addr, align 8
  br label %for.cond.861

for.cond.861:                                     ; preds = %for.inc.870, %if.then.852
  %341 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1862 = bitcast %union.rec* %341 to %struct.word_type*
  %ou1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1862, i32 0, i32 1
  %os11864 = bitcast %union.FIRST_UNION* %ou1863 to %struct.anon*
  %otype865 = getelementptr inbounds %struct.anon, %struct.anon* %os11864, i32 0, i32 0
  %342 = load i8, i8* %otype865, align 1
  %conv866 = zext i8 %342 to i32
  %cmp867 = icmp eq i32 %conv866, 0
  br i1 %cmp867, label %for.body.869, label %for.end.875

for.body.869:                                     ; preds = %for.cond.861
  br label %for.inc.870

for.inc.870:                                      ; preds = %for.body.869
  %343 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1871 = bitcast %union.rec* %343 to %struct.word_type*
  %olist872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1871, i32 0, i32 0
  %arrayidx873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist872, i32 0, i64 0
  %opred874 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx873, i32 0, i32 0
  %344 = load %union.rec*, %union.rec** %opred874, align 8
  store %union.rec* %344, %union.rec** %x.addr, align 8
  br label %for.cond.861

for.end.875:                                      ; preds = %for.cond.861
  %345 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1876 = bitcast %union.rec* %345 to %struct.word_type*
  %ou1877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 1
  %ofpos878 = bitcast %union.FIRST_UNION* %ou1877 to %struct.FILE_POS*
  %346 = load %union.rec*, %union.rec** %tmp, align 8
  %os1879 = bitcast %union.rec* %346 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1879, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %347 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2880 = bitcast %union.rec* %347 to %struct.closure_type*
  %ou4881 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2880, i32 0, i32 4
  %oconstraint882 = bitcast %union.FOURTH_UNION* %ou4881 to %struct.CONSTRAINT*
  %obc883 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint882, i32 0, i32 0
  %348 = load i32, i32* %obc883, align 4
  %conv884 = sitofp i32 %348 to float
  %div885 = fdiv float %conv884, 1.280000e+02
  %conv886 = fpext float %div885 to double
  %call887 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos878, i8* %arraydecay, double %conv886)
  br label %if.end.989

if.else.888:                                      ; preds = %land.lhs.true.849, %if.else.846
  %349 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1889 = bitcast %union.rec* %349 to %struct.word_type*
  %ou1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1889, i32 0, i32 1
  %ofpos891 = bitcast %union.FIRST_UNION* %ou1890 to %struct.FILE_POS*
  %350 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1892 = bitcast %union.rec* %350 to %struct.word_type*
  %ostring893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1892, i32 0, i32 4
  %arraydecay894 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring893, i32 0, i32 0
  %call895 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos891, i8* %arraydecay894)
  %351 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1896 = bitcast %union.rec* %351 to %struct.word_type*
  %ou1897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1896, i32 0, i32 1
  %ofpos898 = bitcast %union.FIRST_UNION* %ou1897 to %struct.FILE_POS*
  %call899 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %ofpos898)
  store %union.rec* %call899, %union.rec** %y, align 8
  %352 = load %union.rec*, %union.rec** %y, align 8
  %os1900 = bitcast %union.rec* %352 to %struct.word_type*
  %ou3901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1900, i32 0, i32 3
  %os31902 = bitcast %union.THIRD_UNION* %ou3901 to %struct.anon.6*
  %ofwd903 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31902, i32 0, i32 1
  %arrayidx904 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd903, i32 0, i64 0
  store i32 0, i32* %arrayidx904, align 4
  %353 = load %union.rec*, %union.rec** %y, align 8
  %os1905 = bitcast %union.rec* %353 to %struct.word_type*
  %ou3906 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1905, i32 0, i32 3
  %os31907 = bitcast %union.THIRD_UNION* %ou3906 to %struct.anon.6*
  %oback908 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31907, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [2 x i32], [2 x i32]* %oback908, i32 0, i64 0
  store i32 0, i32* %arrayidx909, align 4
  %354 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %354, %union.rec** @zz_hold, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1910 = bitcast %union.rec* %355 to %struct.word_type*
  %olist911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1910, i32 0, i32 0
  %arrayidx912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist911, i32 0, i64 1
  %osucc913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx912, i32 0, i32 1
  %356 = load %union.rec*, %union.rec** %osucc913, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp914 = icmp eq %union.rec* %356, %357
  br i1 %cmp914, label %cond.true.916, label %cond.false.917

cond.true.916:                                    ; preds = %if.else.888
  br label %cond.end.946

cond.false.917:                                   ; preds = %if.else.888
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1918 = bitcast %union.rec* %358 to %struct.word_type*
  %olist919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist919, i32 0, i64 1
  %osucc921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx920, i32 0, i32 1
  %359 = load %union.rec*, %union.rec** %osucc921, align 8
  store %union.rec* %359, %union.rec** @zz_res, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1922 = bitcast %union.rec* %360 to %struct.word_type*
  %olist923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1922, i32 0, i32 0
  %arrayidx924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist923, i32 0, i64 1
  %opred925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx924, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %opred925, align 8
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1926 = bitcast %union.rec* %362 to %struct.word_type*
  %olist927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1926, i32 0, i32 0
  %arrayidx928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist927, i32 0, i64 1
  %opred929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx928, i32 0, i32 0
  store %union.rec* %361, %union.rec** %opred929, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1930 = bitcast %union.rec* %364 to %struct.word_type*
  %olist931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1930, i32 0, i32 0
  %arrayidx932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist931, i32 0, i64 1
  %opred933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx932, i32 0, i32 0
  %365 = load %union.rec*, %union.rec** %opred933, align 8
  %os1934 = bitcast %union.rec* %365 to %struct.word_type*
  %olist935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 0
  %arrayidx936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist935, i32 0, i64 1
  %osucc937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx936, i32 0, i32 1
  store %union.rec* %363, %union.rec** %osucc937, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1938 = bitcast %union.rec* %367 to %struct.word_type*
  %olist939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1938, i32 0, i32 0
  %arrayidx940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist939, i32 0, i64 1
  %osucc941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx940, i32 0, i32 1
  store %union.rec* %366, %union.rec** %osucc941, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1942 = bitcast %union.rec* %368 to %struct.word_type*
  %olist943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1942, i32 0, i32 0
  %arrayidx944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist943, i32 0, i64 1
  %opred945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx944, i32 0, i32 0
  store %union.rec* %366, %union.rec** %opred945, align 8
  %369 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.946

cond.end.946:                                     ; preds = %cond.false.917, %cond.true.916
  %cond947 = phi %union.rec* [ null, %cond.true.916 ], [ %369, %cond.false.917 ]
  store %union.rec* %cond947, %union.rec** @xx_tmp, align 8
  %370 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %370, %union.rec** @zz_res, align 8
  %371 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %371, %union.rec** @zz_hold, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp948 = icmp eq %union.rec* %372, null
  br i1 %cmp948, label %cond.true.950, label %cond.false.951

cond.true.950:                                    ; preds = %cond.end.946
  %373 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.986

cond.false.951:                                   ; preds = %cond.end.946
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp952 = icmp eq %union.rec* %374, null
  br i1 %cmp952, label %cond.true.954, label %cond.false.955

cond.true.954:                                    ; preds = %cond.false.951
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.984

cond.false.955:                                   ; preds = %cond.false.951
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1956 = bitcast %union.rec* %376 to %struct.word_type*
  %olist957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1956, i32 0, i32 0
  %arrayidx958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist957, i32 0, i64 1
  %opred959 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx958, i32 0, i32 0
  %377 = load %union.rec*, %union.rec** %opred959, align 8
  store %union.rec* %377, %union.rec** @zz_tmp, align 8
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1960 = bitcast %union.rec* %378 to %struct.word_type*
  %olist961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1960, i32 0, i32 0
  %arrayidx962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist961, i32 0, i64 1
  %opred963 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx962, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred963, align 8
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1964 = bitcast %union.rec* %380 to %struct.word_type*
  %olist965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1964, i32 0, i32 0
  %arrayidx966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist965, i32 0, i64 1
  %opred967 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx966, i32 0, i32 0
  store %union.rec* %379, %union.rec** %opred967, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1968 = bitcast %union.rec* %382 to %struct.word_type*
  %olist969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1968, i32 0, i32 0
  %arrayidx970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist969, i32 0, i64 1
  %opred971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx970, i32 0, i32 0
  %383 = load %union.rec*, %union.rec** %opred971, align 8
  %os1972 = bitcast %union.rec* %383 to %struct.word_type*
  %olist973 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1972, i32 0, i32 0
  %arrayidx974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist973, i32 0, i64 1
  %osucc975 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx974, i32 0, i32 1
  store %union.rec* %381, %union.rec** %osucc975, align 8
  %384 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1976 = bitcast %union.rec* %385 to %struct.word_type*
  %olist977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1976, i32 0, i32 0
  %arrayidx978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist977, i32 0, i64 1
  %opred979 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx978, i32 0, i32 0
  store %union.rec* %384, %union.rec** %opred979, align 8
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %387 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1980 = bitcast %union.rec* %387 to %struct.word_type*
  %olist981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1980, i32 0, i32 0
  %arrayidx982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist981, i32 0, i64 1
  %osucc983 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx982, i32 0, i32 1
  store %union.rec* %386, %union.rec** %osucc983, align 8
  br label %cond.end.984

cond.end.984:                                     ; preds = %cond.false.955, %cond.true.954
  %cond985 = phi %union.rec* [ %375, %cond.true.954 ], [ %386, %cond.false.955 ]
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.end.984, %cond.true.950
  %cond987 = phi %union.rec* [ %373, %cond.true.950 ], [ %cond985, %cond.end.984 ]
  %388 = load %union.rec*, %union.rec** %x.addr, align 8
  %call988 = call i32 @DisposeObject(%union.rec* %388)
  %389 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %389, %union.rec** %x.addr, align 8
  br label %if.end.989

if.end.989:                                       ; preds = %cond.end.986, %for.end.875
  br label %if.end.990

if.end.990:                                       ; preds = %if.end.989, %cond.end.843
  br label %sw.epilog

sw.bb.991:                                        ; preds = %if.end.117
  %390 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2992 = bitcast %union.rec* %390 to %struct.closure_type*
  %ou4993 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2992, i32 0, i32 4
  %oconstraint994 = bitcast %union.FOURTH_UNION* %ou4993 to %struct.CONSTRAINT*
  %391 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  call void @MinConstraint(%struct.CONSTRAINT* %oconstraint994, %struct.CONSTRAINT* %391)
  %392 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1995 = bitcast %union.rec* %392 to %struct.word_type*
  %olist996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1995, i32 0, i32 0
  %arrayidx997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist996, i32 0, i64 0
  %osucc998 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx997, i32 0, i32 1
  %393 = load %union.rec*, %union.rec** %osucc998, align 8
  %os1999 = bitcast %union.rec* %393 to %struct.word_type*
  %olist1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1999, i32 0, i32 0
  %arrayidx1001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1000, i32 0, i64 1
  %opred1002 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1001, i32 0, i32 0
  %394 = load %union.rec*, %union.rec** %opred1002, align 8
  store %union.rec* %394, %union.rec** %y, align 8
  br label %for.cond.1003

for.cond.1003:                                    ; preds = %for.inc.1012, %sw.bb.991
  %395 = load %union.rec*, %union.rec** %y, align 8
  %os11004 = bitcast %union.rec* %395 to %struct.word_type*
  %ou11005 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11004, i32 0, i32 1
  %os111006 = bitcast %union.FIRST_UNION* %ou11005 to %struct.anon*
  %otype1007 = getelementptr inbounds %struct.anon, %struct.anon* %os111006, i32 0, i32 0
  %396 = load i8, i8* %otype1007, align 1
  %conv1008 = zext i8 %396 to i32
  %cmp1009 = icmp eq i32 %conv1008, 0
  br i1 %cmp1009, label %for.body.1011, label %for.end.1017

for.body.1011:                                    ; preds = %for.cond.1003
  br label %for.inc.1012

for.inc.1012:                                     ; preds = %for.body.1011
  %397 = load %union.rec*, %union.rec** %y, align 8
  %os11013 = bitcast %union.rec* %397 to %struct.word_type*
  %olist1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11013, i32 0, i32 0
  %arrayidx1015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1014, i32 0, i64 1
  %opred1016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1015, i32 0, i32 0
  %398 = load %union.rec*, %union.rec** %opred1016, align 8
  store %union.rec* %398, %union.rec** %y, align 8
  br label %for.cond.1003

for.end.1017:                                     ; preds = %for.cond.1003
  %399 = load %union.rec*, %union.rec** %y, align 8
  %400 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21018 = bitcast %union.rec* %400 to %struct.closure_type*
  %ou41019 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21018, i32 0, i32 4
  %oconstraint1020 = bitcast %union.FOURTH_UNION* %ou41019 to %struct.CONSTRAINT*
  %call1021 = call %union.rec* @BreakObject(%union.rec* %399, %struct.CONSTRAINT* %oconstraint1020)
  store %union.rec* %call1021, %union.rec** %y, align 8
  %401 = load %union.rec*, %union.rec** %y, align 8
  %os11022 = bitcast %union.rec* %401 to %struct.word_type*
  %ou31023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11022, i32 0, i32 3
  %os311024 = bitcast %union.THIRD_UNION* %ou31023 to %struct.anon.6*
  %oback1025 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311024, i32 0, i32 0
  %arrayidx1026 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1025, i32 0, i64 0
  %402 = load i32, i32* %arrayidx1026, align 4
  %403 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11027 = bitcast %union.rec* %403 to %struct.word_type*
  %ou31028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11027, i32 0, i32 3
  %os311029 = bitcast %union.THIRD_UNION* %ou31028 to %struct.anon.6*
  %oback1030 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311029, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1030, i32 0, i64 0
  store i32 %402, i32* %arrayidx1031, align 4
  %404 = load %union.rec*, %union.rec** %y, align 8
  %os11032 = bitcast %union.rec* %404 to %struct.word_type*
  %ou31033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11032, i32 0, i32 3
  %os311034 = bitcast %union.THIRD_UNION* %ou31033 to %struct.anon.6*
  %ofwd1035 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311034, i32 0, i32 1
  %arrayidx1036 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1035, i32 0, i64 0
  %405 = load i32, i32* %arrayidx1036, align 4
  %406 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11037 = bitcast %union.rec* %406 to %struct.word_type*
  %ou31038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 3
  %os311039 = bitcast %union.THIRD_UNION* %ou31038 to %struct.anon.6*
  %ofwd1040 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311039, i32 0, i32 1
  %arrayidx1041 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1040, i32 0, i64 0
  store i32 %405, i32* %arrayidx1041, align 4
  %407 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11042 = bitcast %union.rec* %407 to %struct.word_type*
  %ou31043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11042, i32 0, i32 3
  %os311044 = bitcast %union.THIRD_UNION* %ou31043 to %struct.anon.6*
  %oback1045 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311044, i32 0, i32 0
  %arrayidx1046 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1045, i32 0, i64 0
  %408 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11047 = bitcast %union.rec* %408 to %struct.word_type*
  %ou31048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11047, i32 0, i32 3
  %os311049 = bitcast %union.THIRD_UNION* %ou31048 to %struct.anon.6*
  %ofwd1050 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311049, i32 0, i32 1
  %arrayidx1051 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1050, i32 0, i64 0
  %409 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21052 = bitcast %union.rec* %409 to %struct.closure_type*
  %ou41053 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21052, i32 0, i32 4
  %oconstraint1054 = bitcast %union.FOURTH_UNION* %ou41053 to %struct.CONSTRAINT*
  call void @EnlargeToConstraint(i32* %arrayidx1046, i32* %arrayidx1051, %struct.CONSTRAINT* %oconstraint1054)
  br label %sw.epilog

sw.bb.1055:                                       ; preds = %if.end.117, %if.end.117
  %410 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail1056 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %410, i32 0, i32 2
  %411 = load i32, i32* %scale_avail1056, align 4
  %tobool1057 = icmp ne i32 %411, 0
  br i1 %tobool1057, label %land.lhs.true.1058, label %if.else.1104

land.lhs.true.1058:                               ; preds = %sw.bb.1055
  %412 = load %union.rec*, %union.rec** %x.addr, align 8
  %413 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1059 = call i32 @InsertScale(%union.rec* %412, %struct.CONSTRAINT* %413)
  %tobool1060 = icmp ne i32 %call1059, 0
  br i1 %tobool1060, label %if.then.1061, label %if.else.1104

if.then.1061:                                     ; preds = %land.lhs.true.1058
  %414 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11062 = bitcast %union.rec* %414 to %struct.word_type*
  %olist1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11062, i32 0, i32 0
  %arrayidx1064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1063, i32 0, i64 1
  %osucc1065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1064, i32 0, i32 1
  %415 = load %union.rec*, %union.rec** %osucc1065, align 8
  %os11066 = bitcast %union.rec* %415 to %struct.word_type*
  %olist1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11066, i32 0, i32 0
  %arrayidx1068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1067, i32 0, i64 0
  %opred1069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1068, i32 0, i32 0
  %416 = load %union.rec*, %union.rec** %opred1069, align 8
  store %union.rec* %416, %union.rec** %x.addr, align 8
  br label %for.cond.1070

for.cond.1070:                                    ; preds = %for.inc.1079, %if.then.1061
  %417 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11071 = bitcast %union.rec* %417 to %struct.word_type*
  %ou11072 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11071, i32 0, i32 1
  %os111073 = bitcast %union.FIRST_UNION* %ou11072 to %struct.anon*
  %otype1074 = getelementptr inbounds %struct.anon, %struct.anon* %os111073, i32 0, i32 0
  %418 = load i8, i8* %otype1074, align 1
  %conv1075 = zext i8 %418 to i32
  %cmp1076 = icmp eq i32 %conv1075, 0
  br i1 %cmp1076, label %for.body.1078, label %for.end.1084

for.body.1078:                                    ; preds = %for.cond.1070
  br label %for.inc.1079

for.inc.1079:                                     ; preds = %for.body.1078
  %419 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11080 = bitcast %union.rec* %419 to %struct.word_type*
  %olist1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11080, i32 0, i32 0
  %arrayidx1082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1081, i32 0, i64 0
  %opred1083 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1082, i32 0, i32 0
  %420 = load %union.rec*, %union.rec** %opred1083, align 8
  store %union.rec* %420, %union.rec** %x.addr, align 8
  br label %for.cond.1070

for.end.1084:                                     ; preds = %for.cond.1070
  %421 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11085 = bitcast %union.rec* %421 to %struct.word_type*
  %ou11086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11085, i32 0, i32 1
  %ofpos1087 = bitcast %union.FIRST_UNION* %ou11086 to %struct.FILE_POS*
  %422 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11088 = bitcast %union.rec* %422 to %struct.word_type*
  %ou11089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11088, i32 0, i32 1
  %os111090 = bitcast %union.FIRST_UNION* %ou11089 to %struct.anon*
  %otype1091 = getelementptr inbounds %struct.anon, %struct.anon* %os111090, i32 0, i32 0
  %423 = load i8, i8* %otype1091, align 1
  %conv1092 = zext i8 %423 to i32
  %cmp1093 = icmp eq i32 %conv1092, 94
  %cond1095 = select i1 %cmp1093, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)
  %424 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21096 = bitcast %union.rec* %424 to %struct.closure_type*
  %ou41097 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21096, i32 0, i32 4
  %oconstraint1098 = bitcast %union.FOURTH_UNION* %ou41097 to %struct.CONSTRAINT*
  %obc1099 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1098, i32 0, i32 0
  %425 = load i32, i32* %obc1099, align 4
  %conv1100 = sitofp i32 %425 to float
  %div1101 = fdiv float %conv1100, 1.280000e+02
  %conv1102 = fpext float %div1101 to double
  %call1103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1087, i8* %cond1095, double %conv1102)
  br label %if.end.1210

if.else.1104:                                     ; preds = %land.lhs.true.1058, %sw.bb.1055
  %426 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11105 = bitcast %union.rec* %426 to %struct.word_type*
  %ou11106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11105, i32 0, i32 1
  %ofpos1107 = bitcast %union.FIRST_UNION* %ou11106 to %struct.FILE_POS*
  %427 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11108 = bitcast %union.rec* %427 to %struct.word_type*
  %ou11109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 1
  %os111110 = bitcast %union.FIRST_UNION* %ou11109 to %struct.anon*
  %otype1111 = getelementptr inbounds %struct.anon, %struct.anon* %os111110, i32 0, i32 0
  %428 = load i8, i8* %otype1111, align 1
  %conv1112 = zext i8 %428 to i32
  %cmp1113 = icmp eq i32 %conv1112, 94
  %cond1115 = select i1 %cmp1113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)
  %call1116 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1107, i8* %cond1115)
  %429 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11117 = bitcast %union.rec* %429 to %struct.word_type*
  %ou11118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11117, i32 0, i32 1
  %ofpos1119 = bitcast %union.FIRST_UNION* %ou11118 to %struct.FILE_POS*
  %call1120 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %ofpos1119)
  store %union.rec* %call1120, %union.rec** %y, align 8
  %430 = load %union.rec*, %union.rec** %y, align 8
  %os11121 = bitcast %union.rec* %430 to %struct.word_type*
  %ou31122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11121, i32 0, i32 3
  %os311123 = bitcast %union.THIRD_UNION* %ou31122 to %struct.anon.6*
  %ofwd1124 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311123, i32 0, i32 1
  %arrayidx1125 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1124, i32 0, i64 0
  store i32 0, i32* %arrayidx1125, align 4
  %431 = load %union.rec*, %union.rec** %y, align 8
  %os11126 = bitcast %union.rec* %431 to %struct.word_type*
  %ou31127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 3
  %os311128 = bitcast %union.THIRD_UNION* %ou31127 to %struct.anon.6*
  %oback1129 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311128, i32 0, i32 0
  %arrayidx1130 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1129, i32 0, i64 0
  store i32 0, i32* %arrayidx1130, align 4
  %432 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %432, %union.rec** @zz_hold, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11131 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11131, i32 0, i32 0
  %arrayidx1133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1132, i32 0, i64 1
  %osucc1134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1133, i32 0, i32 1
  %434 = load %union.rec*, %union.rec** %osucc1134, align 8
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1135 = icmp eq %union.rec* %434, %435
  br i1 %cmp1135, label %cond.true.1137, label %cond.false.1138

cond.true.1137:                                   ; preds = %if.else.1104
  br label %cond.end.1167

cond.false.1138:                                  ; preds = %if.else.1104
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11139 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11139, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1140, i32 0, i64 1
  %osucc1142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1141, i32 0, i32 1
  %437 = load %union.rec*, %union.rec** %osucc1142, align 8
  store %union.rec* %437, %union.rec** @zz_res, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11143 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11143, i32 0, i32 0
  %arrayidx1145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1144, i32 0, i64 1
  %opred1146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1145, i32 0, i32 0
  %439 = load %union.rec*, %union.rec** %opred1146, align 8
  %440 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11147 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11147, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1148, i32 0, i64 1
  %opred1150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1149, i32 0, i32 0
  store %union.rec* %439, %union.rec** %opred1150, align 8
  %441 = load %union.rec*, %union.rec** @zz_res, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11151 = bitcast %union.rec* %442 to %struct.word_type*
  %olist1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11151, i32 0, i32 0
  %arrayidx1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1152, i32 0, i64 1
  %opred1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1153, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %opred1154, align 8
  %os11155 = bitcast %union.rec* %443 to %struct.word_type*
  %olist1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11155, i32 0, i32 0
  %arrayidx1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1156, i32 0, i64 1
  %osucc1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1157, i32 0, i32 1
  store %union.rec* %441, %union.rec** %osucc1158, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11159 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11159, i32 0, i32 0
  %arrayidx1161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1160, i32 0, i64 1
  %osucc1162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1161, i32 0, i32 1
  store %union.rec* %444, %union.rec** %osucc1162, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11163 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11163, i32 0, i32 0
  %arrayidx1165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1164, i32 0, i64 1
  %opred1166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1165, i32 0, i32 0
  store %union.rec* %444, %union.rec** %opred1166, align 8
  %447 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1167

cond.end.1167:                                    ; preds = %cond.false.1138, %cond.true.1137
  %cond1168 = phi %union.rec* [ null, %cond.true.1137 ], [ %447, %cond.false.1138 ]
  store %union.rec* %cond1168, %union.rec** @xx_tmp, align 8
  %448 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %448, %union.rec** @zz_res, align 8
  %449 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %449, %union.rec** @zz_hold, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1169 = icmp eq %union.rec* %450, null
  br i1 %cmp1169, label %cond.true.1171, label %cond.false.1172

cond.true.1171:                                   ; preds = %cond.end.1167
  %451 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1207

cond.false.1172:                                  ; preds = %cond.end.1167
  %452 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1173 = icmp eq %union.rec* %452, null
  br i1 %cmp1173, label %cond.true.1175, label %cond.false.1176

cond.true.1175:                                   ; preds = %cond.false.1172
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1205

cond.false.1176:                                  ; preds = %cond.false.1172
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11177 = bitcast %union.rec* %454 to %struct.word_type*
  %olist1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11177, i32 0, i32 0
  %arrayidx1179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1178, i32 0, i64 1
  %opred1180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1179, i32 0, i32 0
  %455 = load %union.rec*, %union.rec** %opred1180, align 8
  store %union.rec* %455, %union.rec** @zz_tmp, align 8
  %456 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11181 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11181, i32 0, i32 0
  %arrayidx1183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1182, i32 0, i64 1
  %opred1184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1183, i32 0, i32 0
  %457 = load %union.rec*, %union.rec** %opred1184, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11185 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11185, i32 0, i32 0
  %arrayidx1187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1186, i32 0, i64 1
  %opred1188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1187, i32 0, i32 0
  store %union.rec* %457, %union.rec** %opred1188, align 8
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %460 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11189 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11189, i32 0, i32 0
  %arrayidx1191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1190, i32 0, i64 1
  %opred1192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1191, i32 0, i32 0
  %461 = load %union.rec*, %union.rec** %opred1192, align 8
  %os11193 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11193, i32 0, i32 0
  %arrayidx1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1194, i32 0, i64 1
  %osucc1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1195, i32 0, i32 1
  store %union.rec* %459, %union.rec** %osucc1196, align 8
  %462 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %463 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11197 = bitcast %union.rec* %463 to %struct.word_type*
  %olist1198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11197, i32 0, i32 0
  %arrayidx1199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1198, i32 0, i64 1
  %opred1200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1199, i32 0, i32 0
  store %union.rec* %462, %union.rec** %opred1200, align 8
  %464 = load %union.rec*, %union.rec** @zz_res, align 8
  %465 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11201 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11201, i32 0, i32 0
  %arrayidx1203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1202, i32 0, i64 1
  %osucc1204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1203, i32 0, i32 1
  store %union.rec* %464, %union.rec** %osucc1204, align 8
  br label %cond.end.1205

cond.end.1205:                                    ; preds = %cond.false.1176, %cond.true.1175
  %cond1206 = phi %union.rec* [ %453, %cond.true.1175 ], [ %464, %cond.false.1176 ]
  br label %cond.end.1207

cond.end.1207:                                    ; preds = %cond.end.1205, %cond.true.1171
  %cond1208 = phi %union.rec* [ %451, %cond.true.1171 ], [ %cond1206, %cond.end.1205 ]
  %466 = load %union.rec*, %union.rec** %x.addr, align 8
  %call1209 = call i32 @DisposeObject(%union.rec* %466)
  %467 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %467, %union.rec** %x.addr, align 8
  br label %if.end.1210

if.end.1210:                                      ; preds = %cond.end.1207, %for.end.1084
  br label %sw.epilog

sw.bb.1211:                                       ; preds = %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117
  %468 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11212 = bitcast %union.rec* %468 to %struct.word_type*
  %olist1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11212, i32 0, i32 0
  %arrayidx1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1213, i32 0, i64 0
  %osucc1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1214, i32 0, i32 1
  %469 = load %union.rec*, %union.rec** %osucc1215, align 8
  %470 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11216 = bitcast %union.rec* %470 to %struct.word_type*
  %olist1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11216, i32 0, i32 0
  %arrayidx1218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1217, i32 0, i64 0
  %opred1219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1218, i32 0, i32 0
  %471 = load %union.rec*, %union.rec** %opred1219, align 8
  %cmp1220 = icmp eq %union.rec* %469, %471
  br i1 %cmp1220, label %if.end.1224, label %if.then.1222

if.then.1222:                                     ; preds = %sw.bb.1211
  %472 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1223 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.1224

if.end.1224:                                      ; preds = %if.then.1222, %sw.bb.1211
  %473 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11225 = bitcast %union.rec* %473 to %struct.word_type*
  %olist1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 0
  %arrayidx1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1226, i32 0, i64 0
  %osucc1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1227, i32 0, i32 1
  %474 = load %union.rec*, %union.rec** %osucc1228, align 8
  %os11229 = bitcast %union.rec* %474 to %struct.word_type*
  %olist1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11229, i32 0, i32 0
  %arrayidx1231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1230, i32 0, i64 1
  %opred1232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1231, i32 0, i32 0
  %475 = load %union.rec*, %union.rec** %opred1232, align 8
  store %union.rec* %475, %union.rec** %y, align 8
  br label %for.cond.1233

for.cond.1233:                                    ; preds = %for.inc.1242, %if.end.1224
  %476 = load %union.rec*, %union.rec** %y, align 8
  %os11234 = bitcast %union.rec* %476 to %struct.word_type*
  %ou11235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11234, i32 0, i32 1
  %os111236 = bitcast %union.FIRST_UNION* %ou11235 to %struct.anon*
  %otype1237 = getelementptr inbounds %struct.anon, %struct.anon* %os111236, i32 0, i32 0
  %477 = load i8, i8* %otype1237, align 1
  %conv1238 = zext i8 %477 to i32
  %cmp1239 = icmp eq i32 %conv1238, 0
  br i1 %cmp1239, label %for.body.1241, label %for.end.1247

for.body.1241:                                    ; preds = %for.cond.1233
  br label %for.inc.1242

for.inc.1242:                                     ; preds = %for.body.1241
  %478 = load %union.rec*, %union.rec** %y, align 8
  %os11243 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11243, i32 0, i32 0
  %arrayidx1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1244, i32 0, i64 1
  %opred1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1245, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %opred1246, align 8
  store %union.rec* %479, %union.rec** %y, align 8
  br label %for.cond.1233

for.end.1247:                                     ; preds = %for.cond.1233
  %480 = load %union.rec*, %union.rec** %y, align 8
  %481 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1248 = call %union.rec* @BreakObject(%union.rec* %480, %struct.CONSTRAINT* %481)
  store %union.rec* %call1248, %union.rec** %y, align 8
  %482 = load %union.rec*, %union.rec** %y, align 8
  %os11249 = bitcast %union.rec* %482 to %struct.word_type*
  %ou31250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11249, i32 0, i32 3
  %os311251 = bitcast %union.THIRD_UNION* %ou31250 to %struct.anon.6*
  %oback1252 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311251, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1252, i32 0, i64 0
  %483 = load i32, i32* %arrayidx1253, align 4
  %484 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11254 = bitcast %union.rec* %484 to %struct.word_type*
  %ou31255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11254, i32 0, i32 3
  %os311256 = bitcast %union.THIRD_UNION* %ou31255 to %struct.anon.6*
  %oback1257 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311256, i32 0, i32 0
  %arrayidx1258 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1257, i32 0, i64 0
  store i32 %483, i32* %arrayidx1258, align 4
  %485 = load %union.rec*, %union.rec** %y, align 8
  %os11259 = bitcast %union.rec* %485 to %struct.word_type*
  %ou31260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 3
  %os311261 = bitcast %union.THIRD_UNION* %ou31260 to %struct.anon.6*
  %ofwd1262 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311261, i32 0, i32 1
  %arrayidx1263 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1262, i32 0, i64 0
  %486 = load i32, i32* %arrayidx1263, align 4
  %487 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11265 = bitcast %union.rec* %487 to %struct.word_type*
  %ou31266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11265, i32 0, i32 3
  %os311267 = bitcast %union.THIRD_UNION* %ou31266 to %struct.anon.6*
  %ofwd1268 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311267, i32 0, i32 1
  %arrayidx1269 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1268, i32 0, i64 0
  store i32 %486, i32* %arrayidx1269, align 4
  br label %sw.epilog

sw.bb.1270:                                       ; preds = %if.end.117
  %488 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11271 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11271, i32 0, i32 0
  %arrayidx1273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1272, i32 0, i64 0
  %osucc1274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1273, i32 0, i32 1
  %489 = load %union.rec*, %union.rec** %osucc1274, align 8
  %os11275 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11275, i32 0, i32 0
  %arrayidx1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1276, i32 0, i64 1
  %opred1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1277, i32 0, i32 0
  %490 = load %union.rec*, %union.rec** %opred1278, align 8
  store %union.rec* %490, %union.rec** %y, align 8
  br label %for.cond.1279

for.cond.1279:                                    ; preds = %for.inc.1288, %sw.bb.1270
  %491 = load %union.rec*, %union.rec** %y, align 8
  %os11280 = bitcast %union.rec* %491 to %struct.word_type*
  %ou11281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11280, i32 0, i32 1
  %os111282 = bitcast %union.FIRST_UNION* %ou11281 to %struct.anon*
  %otype1283 = getelementptr inbounds %struct.anon, %struct.anon* %os111282, i32 0, i32 0
  %492 = load i8, i8* %otype1283, align 1
  %conv1284 = zext i8 %492 to i32
  %cmp1285 = icmp eq i32 %conv1284, 0
  br i1 %cmp1285, label %for.body.1287, label %for.end.1293

for.body.1287:                                    ; preds = %for.cond.1279
  br label %for.inc.1288

for.inc.1288:                                     ; preds = %for.body.1287
  %493 = load %union.rec*, %union.rec** %y, align 8
  %os11289 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11289, i32 0, i32 0
  %arrayidx1291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1290, i32 0, i64 1
  %opred1292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1291, i32 0, i32 0
  %494 = load %union.rec*, %union.rec** %opred1292, align 8
  store %union.rec* %494, %union.rec** %y, align 8
  br label %for.cond.1279

for.end.1293:                                     ; preds = %for.cond.1279
  %495 = load %union.rec*, %union.rec** %y, align 8
  %496 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1294 = call %union.rec* @BreakObject(%union.rec* %495, %struct.CONSTRAINT* %496)
  store %union.rec* %call1294, %union.rec** %y, align 8
  %497 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11295 = bitcast %union.rec* %497 to %struct.word_type*
  %olist1296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11295, i32 0, i32 0
  %arrayidx1297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1296, i32 0, i64 0
  %opred1298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1297, i32 0, i32 0
  %498 = load %union.rec*, %union.rec** %opred1298, align 8
  %os11299 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11299, i32 0, i32 0
  %arrayidx1301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1300, i32 0, i64 1
  %opred1302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1301, i32 0, i32 0
  %499 = load %union.rec*, %union.rec** %opred1302, align 8
  store %union.rec* %499, %union.rec** %y, align 8
  br label %for.cond.1303

for.cond.1303:                                    ; preds = %for.inc.1312, %for.end.1293
  %500 = load %union.rec*, %union.rec** %y, align 8
  %os11304 = bitcast %union.rec* %500 to %struct.word_type*
  %ou11305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11304, i32 0, i32 1
  %os111306 = bitcast %union.FIRST_UNION* %ou11305 to %struct.anon*
  %otype1307 = getelementptr inbounds %struct.anon, %struct.anon* %os111306, i32 0, i32 0
  %501 = load i8, i8* %otype1307, align 1
  %conv1308 = zext i8 %501 to i32
  %cmp1309 = icmp eq i32 %conv1308, 0
  br i1 %cmp1309, label %for.body.1311, label %for.end.1317

for.body.1311:                                    ; preds = %for.cond.1303
  br label %for.inc.1312

for.inc.1312:                                     ; preds = %for.body.1311
  %502 = load %union.rec*, %union.rec** %y, align 8
  %os11313 = bitcast %union.rec* %502 to %struct.word_type*
  %olist1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11313, i32 0, i32 0
  %arrayidx1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1314, i32 0, i64 1
  %opred1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1315, i32 0, i32 0
  %503 = load %union.rec*, %union.rec** %opred1316, align 8
  store %union.rec* %503, %union.rec** %y, align 8
  br label %for.cond.1303

for.end.1317:                                     ; preds = %for.cond.1303
  %504 = load %union.rec*, %union.rec** %y, align 8
  %505 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1318 = call %union.rec* @BreakObject(%union.rec* %504, %struct.CONSTRAINT* %505)
  store %union.rec* %call1318, %union.rec** %y, align 8
  %506 = load %union.rec*, %union.rec** %y, align 8
  %os11319 = bitcast %union.rec* %506 to %struct.word_type*
  %ou31320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11319, i32 0, i32 3
  %os311321 = bitcast %union.THIRD_UNION* %ou31320 to %struct.anon.6*
  %oback1322 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311321, i32 0, i32 0
  %arrayidx1323 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1322, i32 0, i64 0
  %507 = load i32, i32* %arrayidx1323, align 4
  %508 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11324 = bitcast %union.rec* %508 to %struct.word_type*
  %ou31325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11324, i32 0, i32 3
  %os311326 = bitcast %union.THIRD_UNION* %ou31325 to %struct.anon.6*
  %oback1327 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311326, i32 0, i32 0
  %arrayidx1328 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1327, i32 0, i64 0
  store i32 %507, i32* %arrayidx1328, align 4
  %509 = load %union.rec*, %union.rec** %y, align 8
  %os11329 = bitcast %union.rec* %509 to %struct.word_type*
  %ou31330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11329, i32 0, i32 3
  %os311331 = bitcast %union.THIRD_UNION* %ou31330 to %struct.anon.6*
  %ofwd1332 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311331, i32 0, i32 1
  %arrayidx1333 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1332, i32 0, i64 0
  %510 = load i32, i32* %arrayidx1333, align 4
  %511 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11334 = bitcast %union.rec* %511 to %struct.word_type*
  %ou31335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11334, i32 0, i32 3
  %os311336 = bitcast %union.THIRD_UNION* %ou31335 to %struct.anon.6*
  %ofwd1337 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311336, i32 0, i32 1
  %arrayidx1338 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1337, i32 0, i64 0
  store i32 %510, i32* %arrayidx1338, align 4
  br label %sw.epilog

sw.bb.1339:                                       ; preds = %if.end.117, %if.end.117, %if.end.117, %if.end.117, %if.end.117
  %512 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11340 = bitcast %union.rec* %512 to %struct.word_type*
  %olist1341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11340, i32 0, i32 0
  %arrayidx1342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1341, i32 0, i64 0
  %osucc1343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1342, i32 0, i32 1
  %513 = load %union.rec*, %union.rec** %osucc1343, align 8
  %os11344 = bitcast %union.rec* %513 to %struct.word_type*
  %olist1345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11344, i32 0, i32 0
  %arrayidx1346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1345, i32 0, i64 1
  %opred1347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1346, i32 0, i32 0
  %514 = load %union.rec*, %union.rec** %opred1347, align 8
  store %union.rec* %514, %union.rec** %y, align 8
  br label %for.cond.1348

for.cond.1348:                                    ; preds = %for.inc.1357, %sw.bb.1339
  %515 = load %union.rec*, %union.rec** %y, align 8
  %os11349 = bitcast %union.rec* %515 to %struct.word_type*
  %ou11350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11349, i32 0, i32 1
  %os111351 = bitcast %union.FIRST_UNION* %ou11350 to %struct.anon*
  %otype1352 = getelementptr inbounds %struct.anon, %struct.anon* %os111351, i32 0, i32 0
  %516 = load i8, i8* %otype1352, align 1
  %conv1353 = zext i8 %516 to i32
  %cmp1354 = icmp eq i32 %conv1353, 0
  br i1 %cmp1354, label %for.body.1356, label %for.end.1362

for.body.1356:                                    ; preds = %for.cond.1348
  br label %for.inc.1357

for.inc.1357:                                     ; preds = %for.body.1356
  %517 = load %union.rec*, %union.rec** %y, align 8
  %os11358 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1359, i32 0, i64 1
  %opred1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1360, i32 0, i32 0
  %518 = load %union.rec*, %union.rec** %opred1361, align 8
  store %union.rec* %518, %union.rec** %y, align 8
  br label %for.cond.1348

for.end.1362:                                     ; preds = %for.cond.1348
  %519 = load %union.rec*, %union.rec** %y, align 8
  %os11363 = bitcast %union.rec* %519 to %struct.word_type*
  %ou11364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 1
  %os111365 = bitcast %union.FIRST_UNION* %ou11364 to %struct.anon*
  %otype1366 = getelementptr inbounds %struct.anon, %struct.anon* %os111365, i32 0, i32 0
  %520 = load i8, i8* %otype1366, align 1
  %conv1367 = zext i8 %520 to i32
  %cmp1368 = icmp ne i32 %conv1367, 13
  br i1 %cmp1368, label %if.then.1370, label %if.else.1393

if.then.1370:                                     ; preds = %for.end.1362
  %521 = load %union.rec*, %union.rec** %y, align 8
  %522 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1371 = call %union.rec* @BreakObject(%union.rec* %521, %struct.CONSTRAINT* %522)
  store %union.rec* %call1371, %union.rec** %y, align 8
  %523 = load %union.rec*, %union.rec** %y, align 8
  %os11372 = bitcast %union.rec* %523 to %struct.word_type*
  %ou31373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11372, i32 0, i32 3
  %os311374 = bitcast %union.THIRD_UNION* %ou31373 to %struct.anon.6*
  %oback1375 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311374, i32 0, i32 0
  %arrayidx1376 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1375, i32 0, i64 0
  %524 = load i32, i32* %arrayidx1376, align 4
  %525 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11377 = bitcast %union.rec* %525 to %struct.word_type*
  %ou31378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11377, i32 0, i32 3
  %os311379 = bitcast %union.THIRD_UNION* %ou31378 to %struct.anon.6*
  %oback1380 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311379, i32 0, i32 0
  %arrayidx1381 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1380, i32 0, i64 0
  store i32 %524, i32* %arrayidx1381, align 4
  %526 = load %union.rec*, %union.rec** %y, align 8
  %os11383 = bitcast %union.rec* %526 to %struct.word_type*
  %ou31384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11383, i32 0, i32 3
  %os311385 = bitcast %union.THIRD_UNION* %ou31384 to %struct.anon.6*
  %ofwd1386 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311385, i32 0, i32 1
  %arrayidx1387 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1386, i32 0, i64 0
  %527 = load i32, i32* %arrayidx1387, align 4
  %528 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11388 = bitcast %union.rec* %528 to %struct.word_type*
  %ou31389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11388, i32 0, i32 3
  %os311390 = bitcast %union.THIRD_UNION* %ou31389 to %struct.anon.6*
  %ofwd1391 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311390, i32 0, i32 1
  %arrayidx1392 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1391, i32 0, i64 0
  store i32 %527, i32* %arrayidx1392, align 4
  br label %if.end.1414

if.else.1393:                                     ; preds = %for.end.1362
  %529 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11394 = bitcast %union.rec* %529 to %struct.word_type*
  %ou31395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11394, i32 0, i32 3
  %os311396 = bitcast %union.THIRD_UNION* %ou31395 to %struct.anon.6*
  %oback1397 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311396, i32 0, i32 0
  %arrayidx1398 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1397, i32 0, i64 0
  store i32 0, i32* %arrayidx1398, align 4
  %530 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1399 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %530, i32 0, i32 1
  %531 = load i32, i32* %obfc1399, align 4
  %532 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc1400 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %532, i32 0, i32 2
  %533 = load i32, i32* %ofc1400, align 4
  %cmp1401 = icmp slt i32 %531, %533
  br i1 %cmp1401, label %cond.true.1403, label %cond.false.1405

cond.true.1403:                                   ; preds = %if.else.1393
  %534 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1404 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %534, i32 0, i32 1
  %535 = load i32, i32* %obfc1404, align 4
  br label %cond.end.1407

cond.false.1405:                                  ; preds = %if.else.1393
  %536 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc1406 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %536, i32 0, i32 2
  %537 = load i32, i32* %ofc1406, align 4
  br label %cond.end.1407

cond.end.1407:                                    ; preds = %cond.false.1405, %cond.true.1403
  %cond1408 = phi i32 [ %535, %cond.true.1403 ], [ %537, %cond.false.1405 ]
  %538 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11409 = bitcast %union.rec* %538 to %struct.word_type*
  %ou31410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11409, i32 0, i32 3
  %os311411 = bitcast %union.THIRD_UNION* %ou31410 to %struct.anon.6*
  %ofwd1412 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311411, i32 0, i32 1
  %arrayidx1413 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1412, i32 0, i64 0
  store i32 %cond1408, i32* %arrayidx1413, align 4
  br label %if.end.1414

if.end.1414:                                      ; preds = %cond.end.1407, %if.then.1370
  br label %sw.epilog

sw.bb.1415:                                       ; preds = %if.end.117
  %539 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11416 = bitcast %union.rec* %539 to %struct.word_type*
  %olist1417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11416, i32 0, i32 0
  %arrayidx1418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1417, i32 0, i64 0
  %osucc1419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1418, i32 0, i32 1
  %540 = load %union.rec*, %union.rec** %osucc1419, align 8
  %os11420 = bitcast %union.rec* %540 to %struct.word_type*
  %olist1421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11420, i32 0, i32 0
  %arrayidx1422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1421, i32 0, i64 1
  %opred1423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1422, i32 0, i32 0
  %541 = load %union.rec*, %union.rec** %opred1423, align 8
  store %union.rec* %541, %union.rec** %y, align 8
  br label %for.cond.1424

for.cond.1424:                                    ; preds = %for.inc.1433, %sw.bb.1415
  %542 = load %union.rec*, %union.rec** %y, align 8
  %os11425 = bitcast %union.rec* %542 to %struct.word_type*
  %ou11426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11425, i32 0, i32 1
  %os111427 = bitcast %union.FIRST_UNION* %ou11426 to %struct.anon*
  %otype1428 = getelementptr inbounds %struct.anon, %struct.anon* %os111427, i32 0, i32 0
  %543 = load i8, i8* %otype1428, align 1
  %conv1429 = zext i8 %543 to i32
  %cmp1430 = icmp eq i32 %conv1429, 0
  br i1 %cmp1430, label %for.body.1432, label %for.end.1438

for.body.1432:                                    ; preds = %for.cond.1424
  br label %for.inc.1433

for.inc.1433:                                     ; preds = %for.body.1432
  %544 = load %union.rec*, %union.rec** %y, align 8
  %os11434 = bitcast %union.rec* %544 to %struct.word_type*
  %olist1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11434, i32 0, i32 0
  %arrayidx1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1435, i32 0, i64 1
  %opred1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1436, i32 0, i32 0
  %545 = load %union.rec*, %union.rec** %opred1437, align 8
  store %union.rec* %545, %union.rec** %y, align 8
  br label %for.cond.1424

for.end.1438:                                     ; preds = %for.cond.1424
  %546 = load %union.rec*, %union.rec** %x.addr, align 8
  %547 = load %union.rec*, %union.rec** %y, align 8
  %call1439 = call i32 @FindShift(%union.rec* %546, %union.rec* %547, i32 0)
  store i32 %call1439, i32* %f, align 4
  %548 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc1440 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %548, i32 0, i32 0
  %549 = load i32, i32* %obc1440, align 4
  %550 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1441 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %550, i32 0, i32 1
  %551 = load i32, i32* %obfc1441, align 4
  %cmp1442 = icmp slt i32 %549, %551
  br i1 %cmp1442, label %cond.true.1444, label %cond.false.1446

cond.true.1444:                                   ; preds = %for.end.1438
  %552 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc1445 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %552, i32 0, i32 0
  %553 = load i32, i32* %obc1445, align 4
  br label %cond.end.1448

cond.false.1446:                                  ; preds = %for.end.1438
  %554 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1447 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %554, i32 0, i32 1
  %555 = load i32, i32* %obfc1447, align 4
  br label %cond.end.1448

cond.end.1448:                                    ; preds = %cond.false.1446, %cond.true.1444
  %cond1449 = phi i32 [ %553, %cond.true.1444 ], [ %555, %cond.false.1446 ]
  %556 = load i32, i32* %f, align 4
  %sub = sub nsw i32 %cond1449, %556
  %obc1450 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %sub, i32* %obc1450, align 4
  %557 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1451 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %557, i32 0, i32 1
  %558 = load i32, i32* %obfc1451, align 4
  %obfc1452 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %558, i32* %obfc1452, align 4
  %559 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc1453 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %559, i32 0, i32 2
  %560 = load i32, i32* %ofc1453, align 4
  %561 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1454 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %561, i32 0, i32 1
  %562 = load i32, i32* %obfc1454, align 4
  %cmp1455 = icmp slt i32 %560, %562
  br i1 %cmp1455, label %cond.true.1457, label %cond.false.1459

cond.true.1457:                                   ; preds = %cond.end.1448
  %563 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc1458 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %563, i32 0, i32 2
  %564 = load i32, i32* %ofc1458, align 4
  br label %cond.end.1461

cond.false.1459:                                  ; preds = %cond.end.1448
  %565 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1460 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %565, i32 0, i32 1
  %566 = load i32, i32* %obfc1460, align 4
  br label %cond.end.1461

cond.end.1461:                                    ; preds = %cond.false.1459, %cond.true.1457
  %cond1462 = phi i32 [ %564, %cond.true.1457 ], [ %566, %cond.false.1459 ]
  %567 = load i32, i32* %f, align 4
  %add1463 = add nsw i32 %cond1462, %567
  %ofc1464 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %add1463, i32* %ofc1464, align 4
  %568 = load %union.rec*, %union.rec** %y, align 8
  %call1465 = call %union.rec* @BreakObject(%union.rec* %568, %struct.CONSTRAINT* %yc)
  %569 = load %union.rec*, %union.rec** %x.addr, align 8
  %570 = load %union.rec*, %union.rec** %y, align 8
  %call1466 = call i32 @FindShift(%union.rec* %569, %union.rec* %570, i32 0)
  store i32 %call1466, i32* %f, align 4
  %571 = load %union.rec*, %union.rec** %y, align 8
  %os11467 = bitcast %union.rec* %571 to %struct.word_type*
  %ou31468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11467, i32 0, i32 3
  %os311469 = bitcast %union.THIRD_UNION* %ou31468 to %struct.anon.6*
  %oback1470 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311469, i32 0, i32 0
  %arrayidx1471 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1470, i32 0, i64 0
  %572 = load i32, i32* %arrayidx1471, align 4
  %573 = load i32, i32* %f, align 4
  %add1472 = add nsw i32 %572, %573
  %cmp1473 = icmp slt i32 0, %add1472
  br i1 %cmp1473, label %cond.true.1475, label %cond.false.1482

cond.true.1475:                                   ; preds = %cond.end.1461
  %574 = load %union.rec*, %union.rec** %y, align 8
  %os11476 = bitcast %union.rec* %574 to %struct.word_type*
  %ou31477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11476, i32 0, i32 3
  %os311478 = bitcast %union.THIRD_UNION* %ou31477 to %struct.anon.6*
  %oback1479 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311478, i32 0, i32 0
  %arrayidx1480 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1479, i32 0, i64 0
  %575 = load i32, i32* %arrayidx1480, align 4
  %576 = load i32, i32* %f, align 4
  %add1481 = add nsw i32 %575, %576
  br label %cond.end.1483

cond.false.1482:                                  ; preds = %cond.end.1461
  br label %cond.end.1483

cond.end.1483:                                    ; preds = %cond.false.1482, %cond.true.1475
  %cond1484 = phi i32 [ %add1481, %cond.true.1475 ], [ 0, %cond.false.1482 ]
  %cmp1485 = icmp slt i32 8388607, %cond1484
  br i1 %cmp1485, label %cond.true.1487, label %cond.false.1488

cond.true.1487:                                   ; preds = %cond.end.1483
  br label %cond.end.1507

cond.false.1488:                                  ; preds = %cond.end.1483
  %577 = load %union.rec*, %union.rec** %y, align 8
  %os11489 = bitcast %union.rec* %577 to %struct.word_type*
  %ou31490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11489, i32 0, i32 3
  %os311491 = bitcast %union.THIRD_UNION* %ou31490 to %struct.anon.6*
  %oback1492 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311491, i32 0, i32 0
  %arrayidx1493 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1492, i32 0, i64 0
  %578 = load i32, i32* %arrayidx1493, align 4
  %579 = load i32, i32* %f, align 4
  %add1494 = add nsw i32 %578, %579
  %cmp1495 = icmp slt i32 0, %add1494
  br i1 %cmp1495, label %cond.true.1497, label %cond.false.1504

cond.true.1497:                                   ; preds = %cond.false.1488
  %580 = load %union.rec*, %union.rec** %y, align 8
  %os11498 = bitcast %union.rec* %580 to %struct.word_type*
  %ou31499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11498, i32 0, i32 3
  %os311500 = bitcast %union.THIRD_UNION* %ou31499 to %struct.anon.6*
  %oback1501 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311500, i32 0, i32 0
  %arrayidx1502 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1501, i32 0, i64 0
  %581 = load i32, i32* %arrayidx1502, align 4
  %582 = load i32, i32* %f, align 4
  %add1503 = add nsw i32 %581, %582
  br label %cond.end.1505

cond.false.1504:                                  ; preds = %cond.false.1488
  br label %cond.end.1505

cond.end.1505:                                    ; preds = %cond.false.1504, %cond.true.1497
  %cond1506 = phi i32 [ %add1503, %cond.true.1497 ], [ 0, %cond.false.1504 ]
  br label %cond.end.1507

cond.end.1507:                                    ; preds = %cond.end.1505, %cond.true.1487
  %cond1508 = phi i32 [ 8388607, %cond.true.1487 ], [ %cond1506, %cond.end.1505 ]
  %583 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11509 = bitcast %union.rec* %583 to %struct.word_type*
  %ou31510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11509, i32 0, i32 3
  %os311511 = bitcast %union.THIRD_UNION* %ou31510 to %struct.anon.6*
  %oback1512 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311511, i32 0, i32 0
  %arrayidx1513 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1512, i32 0, i64 0
  store i32 %cond1508, i32* %arrayidx1513, align 4
  %584 = load %union.rec*, %union.rec** %y, align 8
  %os11514 = bitcast %union.rec* %584 to %struct.word_type*
  %ou31515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11514, i32 0, i32 3
  %os311516 = bitcast %union.THIRD_UNION* %ou31515 to %struct.anon.6*
  %ofwd1517 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311516, i32 0, i32 1
  %arrayidx1518 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1517, i32 0, i64 0
  %585 = load i32, i32* %arrayidx1518, align 4
  %586 = load i32, i32* %f, align 4
  %sub1519 = sub nsw i32 %585, %586
  %cmp1520 = icmp slt i32 0, %sub1519
  br i1 %cmp1520, label %cond.true.1522, label %cond.false.1529

cond.true.1522:                                   ; preds = %cond.end.1507
  %587 = load %union.rec*, %union.rec** %y, align 8
  %os11523 = bitcast %union.rec* %587 to %struct.word_type*
  %ou31524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11523, i32 0, i32 3
  %os311525 = bitcast %union.THIRD_UNION* %ou31524 to %struct.anon.6*
  %ofwd1526 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311525, i32 0, i32 1
  %arrayidx1527 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1526, i32 0, i64 0
  %588 = load i32, i32* %arrayidx1527, align 4
  %589 = load i32, i32* %f, align 4
  %sub1528 = sub nsw i32 %588, %589
  br label %cond.end.1530

cond.false.1529:                                  ; preds = %cond.end.1507
  br label %cond.end.1530

cond.end.1530:                                    ; preds = %cond.false.1529, %cond.true.1522
  %cond1531 = phi i32 [ %sub1528, %cond.true.1522 ], [ 0, %cond.false.1529 ]
  %cmp1532 = icmp slt i32 8388607, %cond1531
  br i1 %cmp1532, label %cond.true.1534, label %cond.false.1535

cond.true.1534:                                   ; preds = %cond.end.1530
  br label %cond.end.1554

cond.false.1535:                                  ; preds = %cond.end.1530
  %590 = load %union.rec*, %union.rec** %y, align 8
  %os11536 = bitcast %union.rec* %590 to %struct.word_type*
  %ou31537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11536, i32 0, i32 3
  %os311538 = bitcast %union.THIRD_UNION* %ou31537 to %struct.anon.6*
  %ofwd1539 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311538, i32 0, i32 1
  %arrayidx1540 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1539, i32 0, i64 0
  %591 = load i32, i32* %arrayidx1540, align 4
  %592 = load i32, i32* %f, align 4
  %sub1541 = sub nsw i32 %591, %592
  %cmp1542 = icmp slt i32 0, %sub1541
  br i1 %cmp1542, label %cond.true.1544, label %cond.false.1551

cond.true.1544:                                   ; preds = %cond.false.1535
  %593 = load %union.rec*, %union.rec** %y, align 8
  %os11545 = bitcast %union.rec* %593 to %struct.word_type*
  %ou31546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11545, i32 0, i32 3
  %os311547 = bitcast %union.THIRD_UNION* %ou31546 to %struct.anon.6*
  %ofwd1548 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311547, i32 0, i32 1
  %arrayidx1549 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1548, i32 0, i64 0
  %594 = load i32, i32* %arrayidx1549, align 4
  %595 = load i32, i32* %f, align 4
  %sub1550 = sub nsw i32 %594, %595
  br label %cond.end.1552

cond.false.1551:                                  ; preds = %cond.false.1535
  br label %cond.end.1552

cond.end.1552:                                    ; preds = %cond.false.1551, %cond.true.1544
  %cond1553 = phi i32 [ %sub1550, %cond.true.1544 ], [ 0, %cond.false.1551 ]
  br label %cond.end.1554

cond.end.1554:                                    ; preds = %cond.end.1552, %cond.true.1534
  %cond1555 = phi i32 [ 8388607, %cond.true.1534 ], [ %cond1553, %cond.end.1552 ]
  %596 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11556 = bitcast %union.rec* %596 to %struct.word_type*
  %ou31557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11556, i32 0, i32 3
  %os311558 = bitcast %union.THIRD_UNION* %ou31557 to %struct.anon.6*
  %ofwd1559 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311558, i32 0, i32 1
  %arrayidx1560 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1559, i32 0, i64 0
  store i32 %cond1555, i32* %arrayidx1560, align 4
  br label %sw.epilog

sw.bb.1561:                                       ; preds = %if.end.117, %if.end.117
  br label %sw.epilog

sw.bb.1562:                                       ; preds = %if.end.117, %if.end.117
  %597 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11563 = bitcast %union.rec* %597 to %struct.word_type*
  %olist1564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11563, i32 0, i32 0
  %arrayidx1565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1564, i32 0, i64 0
  %opred1566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1565, i32 0, i32 0
  %598 = load %union.rec*, %union.rec** %opred1566, align 8
  %os11567 = bitcast %union.rec* %598 to %struct.word_type*
  %olist1568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11567, i32 0, i32 0
  %arrayidx1569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1568, i32 0, i64 1
  %opred1570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1569, i32 0, i32 0
  %599 = load %union.rec*, %union.rec** %opred1570, align 8
  store %union.rec* %599, %union.rec** %y, align 8
  br label %for.cond.1571

for.cond.1571:                                    ; preds = %for.inc.1580, %sw.bb.1562
  %600 = load %union.rec*, %union.rec** %y, align 8
  %os11572 = bitcast %union.rec* %600 to %struct.word_type*
  %ou11573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11572, i32 0, i32 1
  %os111574 = bitcast %union.FIRST_UNION* %ou11573 to %struct.anon*
  %otype1575 = getelementptr inbounds %struct.anon, %struct.anon* %os111574, i32 0, i32 0
  %601 = load i8, i8* %otype1575, align 1
  %conv1576 = zext i8 %601 to i32
  %cmp1577 = icmp eq i32 %conv1576, 0
  br i1 %cmp1577, label %for.body.1579, label %for.end.1585

for.body.1579:                                    ; preds = %for.cond.1571
  br label %for.inc.1580

for.inc.1580:                                     ; preds = %for.body.1579
  %602 = load %union.rec*, %union.rec** %y, align 8
  %os11581 = bitcast %union.rec* %602 to %struct.word_type*
  %olist1582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11581, i32 0, i32 0
  %arrayidx1583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1582, i32 0, i64 1
  %opred1584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1583, i32 0, i32 0
  %603 = load %union.rec*, %union.rec** %opred1584, align 8
  store %union.rec* %603, %union.rec** %y, align 8
  br label %for.cond.1571

for.end.1585:                                     ; preds = %for.cond.1571
  %604 = load %union.rec*, %union.rec** %y, align 8
  %605 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1586 = call %union.rec* @BreakObject(%union.rec* %604, %struct.CONSTRAINT* %605)
  store %union.rec* %call1586, %union.rec** %y, align 8
  %606 = load %union.rec*, %union.rec** %y, align 8
  %os11587 = bitcast %union.rec* %606 to %struct.word_type*
  %ou31588 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11587, i32 0, i32 3
  %os311589 = bitcast %union.THIRD_UNION* %ou31588 to %struct.anon.6*
  %oback1590 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311589, i32 0, i32 0
  %arrayidx1591 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1590, i32 0, i64 0
  %607 = load i32, i32* %arrayidx1591, align 4
  %608 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11592 = bitcast %union.rec* %608 to %struct.word_type*
  %ou31593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11592, i32 0, i32 3
  %os311594 = bitcast %union.THIRD_UNION* %ou31593 to %struct.anon.6*
  %oback1595 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311594, i32 0, i32 0
  %arrayidx1596 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1595, i32 0, i64 0
  store i32 %607, i32* %arrayidx1596, align 4
  %609 = load %union.rec*, %union.rec** %y, align 8
  %os11597 = bitcast %union.rec* %609 to %struct.word_type*
  %ou31598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11597, i32 0, i32 3
  %os311599 = bitcast %union.THIRD_UNION* %ou31598 to %struct.anon.6*
  %ofwd1600 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311599, i32 0, i32 1
  %arrayidx1601 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1600, i32 0, i64 0
  %610 = load i32, i32* %arrayidx1601, align 4
  %611 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11602 = bitcast %union.rec* %611 to %struct.word_type*
  %ou31603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11602, i32 0, i32 3
  %os311604 = bitcast %union.THIRD_UNION* %ou31603 to %struct.anon.6*
  %ofwd1605 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311604, i32 0, i32 1
  %arrayidx1606 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1605, i32 0, i64 0
  store i32 %610, i32* %arrayidx1606, align 4
  br label %sw.epilog

sw.bb.1607:                                       ; preds = %if.end.117, %if.end.117, %if.end.117, %if.end.117
  %612 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11608 = bitcast %union.rec* %612 to %struct.word_type*
  %olist1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11608, i32 0, i32 0
  %arrayidx1610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1609, i32 0, i64 0
  %opred1611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1610, i32 0, i32 0
  %613 = load %union.rec*, %union.rec** %opred1611, align 8
  %os11612 = bitcast %union.rec* %613 to %struct.word_type*
  %olist1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11612, i32 0, i32 0
  %arrayidx1614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1613, i32 0, i64 1
  %opred1615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1614, i32 0, i32 0
  %614 = load %union.rec*, %union.rec** %opred1615, align 8
  store %union.rec* %614, %union.rec** %y, align 8
  br label %for.cond.1616

for.cond.1616:                                    ; preds = %for.inc.1625, %sw.bb.1607
  %615 = load %union.rec*, %union.rec** %y, align 8
  %os11617 = bitcast %union.rec* %615 to %struct.word_type*
  %ou11618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11617, i32 0, i32 1
  %os111619 = bitcast %union.FIRST_UNION* %ou11618 to %struct.anon*
  %otype1620 = getelementptr inbounds %struct.anon, %struct.anon* %os111619, i32 0, i32 0
  %616 = load i8, i8* %otype1620, align 1
  %conv1621 = zext i8 %616 to i32
  %cmp1622 = icmp eq i32 %conv1621, 0
  br i1 %cmp1622, label %for.body.1624, label %for.end.1630

for.body.1624:                                    ; preds = %for.cond.1616
  br label %for.inc.1625

for.inc.1625:                                     ; preds = %for.body.1624
  %617 = load %union.rec*, %union.rec** %y, align 8
  %os11626 = bitcast %union.rec* %617 to %struct.word_type*
  %olist1627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11626, i32 0, i32 0
  %arrayidx1628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1627, i32 0, i64 1
  %opred1629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1628, i32 0, i32 0
  %618 = load %union.rec*, %union.rec** %opred1629, align 8
  store %union.rec* %618, %union.rec** %y, align 8
  br label %for.cond.1616

for.end.1630:                                     ; preds = %for.cond.1616
  %619 = load %union.rec*, %union.rec** %y, align 8
  %620 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1631 = call %union.rec* @BreakObject(%union.rec* %619, %struct.CONSTRAINT* %620)
  store %union.rec* %call1631, %union.rec** %y, align 8
  %621 = load %union.rec*, %union.rec** %y, align 8
  %os11632 = bitcast %union.rec* %621 to %struct.word_type*
  %ou31633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11632, i32 0, i32 3
  %os311634 = bitcast %union.THIRD_UNION* %ou31633 to %struct.anon.6*
  %oback1635 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311634, i32 0, i32 0
  %arrayidx1636 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1635, i32 0, i64 0
  %622 = load i32, i32* %arrayidx1636, align 4
  %623 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11637 = bitcast %union.rec* %623 to %struct.word_type*
  %ou31638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11637, i32 0, i32 3
  %os311639 = bitcast %union.THIRD_UNION* %ou31638 to %struct.anon.6*
  %oback1640 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311639, i32 0, i32 0
  %arrayidx1641 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1640, i32 0, i64 0
  store i32 %622, i32* %arrayidx1641, align 4
  %624 = load %union.rec*, %union.rec** %y, align 8
  %os11642 = bitcast %union.rec* %624 to %struct.word_type*
  %ou31643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11642, i32 0, i32 3
  %os311644 = bitcast %union.THIRD_UNION* %ou31643 to %struct.anon.6*
  %ofwd1645 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311644, i32 0, i32 1
  %arrayidx1646 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1645, i32 0, i64 0
  %625 = load i32, i32* %arrayidx1646, align 4
  %626 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11647 = bitcast %union.rec* %626 to %struct.word_type*
  %ou31648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11647, i32 0, i32 3
  %os311649 = bitcast %union.THIRD_UNION* %ou31648 to %struct.anon.6*
  %ofwd1650 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311649, i32 0, i32 1
  %arrayidx1651 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1650, i32 0, i64 0
  store i32 %625, i32* %arrayidx1651, align 4
  br label %sw.epilog

sw.bb.1652:                                       ; preds = %if.end.117
  %627 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11653 = bitcast %union.rec* %627 to %struct.word_type*
  %olist1654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11653, i32 0, i32 0
  %arrayidx1655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1654, i32 0, i64 0
  %osucc1656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1655, i32 0, i32 1
  %628 = load %union.rec*, %union.rec** %osucc1656, align 8
  %os11657 = bitcast %union.rec* %628 to %struct.word_type*
  %olist1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11657, i32 0, i32 0
  %arrayidx1659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1658, i32 0, i64 1
  %opred1660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1659, i32 0, i32 0
  %629 = load %union.rec*, %union.rec** %opred1660, align 8
  store %union.rec* %629, %union.rec** %y, align 8
  br label %for.cond.1661

for.cond.1661:                                    ; preds = %for.inc.1670, %sw.bb.1652
  %630 = load %union.rec*, %union.rec** %y, align 8
  %os11662 = bitcast %union.rec* %630 to %struct.word_type*
  %ou11663 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11662, i32 0, i32 1
  %os111664 = bitcast %union.FIRST_UNION* %ou11663 to %struct.anon*
  %otype1665 = getelementptr inbounds %struct.anon, %struct.anon* %os111664, i32 0, i32 0
  %631 = load i8, i8* %otype1665, align 1
  %conv1666 = zext i8 %631 to i32
  %cmp1667 = icmp eq i32 %conv1666, 0
  br i1 %cmp1667, label %for.body.1669, label %for.end.1675

for.body.1669:                                    ; preds = %for.cond.1661
  br label %for.inc.1670

for.inc.1670:                                     ; preds = %for.body.1669
  %632 = load %union.rec*, %union.rec** %y, align 8
  %os11671 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11671, i32 0, i32 0
  %arrayidx1673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1672, i32 0, i64 1
  %opred1674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1673, i32 0, i32 0
  %633 = load %union.rec*, %union.rec** %opred1674, align 8
  store %union.rec* %633, %union.rec** %y, align 8
  br label %for.cond.1661

for.end.1675:                                     ; preds = %for.cond.1661
  %634 = load %union.rec*, %union.rec** %y, align 8
  %635 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1676 = call %union.rec* @BreakObject(%union.rec* %634, %struct.CONSTRAINT* %635)
  store %union.rec* %call1676, %union.rec** %y, align 8
  %636 = load %union.rec*, %union.rec** %y, align 8
  %os11677 = bitcast %union.rec* %636 to %struct.word_type*
  %ou31678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11677, i32 0, i32 3
  %os311679 = bitcast %union.THIRD_UNION* %ou31678 to %struct.anon.6*
  %oback1680 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311679, i32 0, i32 0
  %arrayidx1681 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1680, i32 0, i64 0
  %637 = load i32, i32* %arrayidx1681, align 4
  %638 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11682 = bitcast %union.rec* %638 to %struct.word_type*
  %ou31683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11682, i32 0, i32 3
  %os311684 = bitcast %union.THIRD_UNION* %ou31683 to %struct.anon.6*
  %oback1685 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311684, i32 0, i32 0
  %arrayidx1686 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1685, i32 0, i64 0
  store i32 %637, i32* %arrayidx1686, align 4
  %639 = load %union.rec*, %union.rec** %y, align 8
  %os11687 = bitcast %union.rec* %639 to %struct.word_type*
  %ou31688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11687, i32 0, i32 3
  %os311689 = bitcast %union.THIRD_UNION* %ou31688 to %struct.anon.6*
  %ofwd1690 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311689, i32 0, i32 1
  %arrayidx1691 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1690, i32 0, i64 0
  %640 = load i32, i32* %arrayidx1691, align 4
  %641 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11692 = bitcast %union.rec* %641 to %struct.word_type*
  %ou31693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11692, i32 0, i32 3
  %os311694 = bitcast %union.THIRD_UNION* %ou31693 to %struct.anon.6*
  %ofwd1695 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311694, i32 0, i32 1
  %arrayidx1696 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1695, i32 0, i64 0
  store i32 %640, i32* %arrayidx1696, align 4
  br label %sw.epilog

sw.bb.1697:                                       ; preds = %if.end.117
  %642 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11698 = bitcast %union.rec* %642 to %struct.word_type*
  %ou31699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11698, i32 0, i32 3
  %os311700 = bitcast %union.THIRD_UNION* %ou31699 to %struct.anon.6*
  %oback1701 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311700, i32 0, i32 0
  %arrayidx1702 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1701, i32 0, i64 0
  %643 = load i32, i32* %arrayidx1702, align 4
  %cmp1703 = icmp sgt i32 %643, 0
  br i1 %cmp1703, label %if.then.1705, label %if.end.1828

if.then.1705:                                     ; preds = %sw.bb.1697
  %644 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11708 = bitcast %union.rec* %644 to %struct.word_type*
  %ou31709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11708, i32 0, i32 3
  %os311710 = bitcast %union.THIRD_UNION* %ou31709 to %struct.anon.6*
  %oback1711 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311710, i32 0, i32 0
  %arrayidx1712 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1711, i32 0, i64 0
  %645 = load i32, i32* %arrayidx1712, align 4
  %646 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11713 = bitcast %union.rec* %646 to %struct.word_type*
  %ou31714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11713, i32 0, i32 3
  %os311715 = bitcast %union.THIRD_UNION* %ou31714 to %struct.anon.6*
  %ofwd1716 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311715, i32 0, i32 1
  %arrayidx1717 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1716, i32 0, i64 0
  %647 = load i32, i32* %arrayidx1717, align 4
  %add1718 = add nsw i32 %645, %647
  store i32 %add1718, i32* %sz, align 4
  %648 = load i32, i32* %sz, align 4
  %cmp1719 = icmp slt i32 8388607, %648
  br i1 %cmp1719, label %cond.true.1721, label %cond.false.1722

cond.true.1721:                                   ; preds = %if.then.1705
  br label %cond.end.1723

cond.false.1722:                                  ; preds = %if.then.1705
  %649 = load i32, i32* %sz, align 4
  br label %cond.end.1723

cond.end.1723:                                    ; preds = %cond.false.1722, %cond.true.1721
  %cond1724 = phi i32 [ 8388607, %cond.true.1721 ], [ %649, %cond.false.1722 ]
  %650 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11725 = bitcast %union.rec* %650 to %struct.word_type*
  %ou31726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11725, i32 0, i32 3
  %os311727 = bitcast %union.THIRD_UNION* %ou31726 to %struct.anon.6*
  %ofwd1728 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311727, i32 0, i32 1
  %arrayidx1729 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1728, i32 0, i64 0
  store i32 %cond1724, i32* %arrayidx1729, align 4
  %651 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11730 = bitcast %union.rec* %651 to %struct.word_type*
  %ou31731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11730, i32 0, i32 3
  %os311732 = bitcast %union.THIRD_UNION* %ou31731 to %struct.anon.6*
  %oback1733 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311732, i32 0, i32 0
  %arrayidx1734 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1733, i32 0, i64 0
  store i32 0, i32* %arrayidx1734, align 4
  %652 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %652, %union.rec** %rpos, align 8
  %653 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11735 = bitcast %union.rec* %653 to %struct.word_type*
  %olist1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11735, i32 0, i32 0
  %arrayidx1737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1736, i32 0, i64 0
  %osucc1738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1737, i32 0, i32 1
  %654 = load %union.rec*, %union.rec** %osucc1738, align 8
  store %union.rec* %654, %union.rec** %link, align 8
  br label %for.cond.1739

for.cond.1739:                                    ; preds = %for.inc.1780, %cond.end.1723
  %655 = load %union.rec*, %union.rec** %link, align 8
  %656 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1740 = icmp ne %union.rec* %655, %656
  br i1 %cmp1740, label %for.body.1742, label %for.end.1785

for.body.1742:                                    ; preds = %for.cond.1739
  %657 = load %union.rec*, %union.rec** %link, align 8
  %os11743 = bitcast %union.rec* %657 to %struct.word_type*
  %olist1744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11743, i32 0, i32 0
  %arrayidx1745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1744, i32 0, i64 1
  %opred1746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1745, i32 0, i32 0
  %658 = load %union.rec*, %union.rec** %opred1746, align 8
  store %union.rec* %658, %union.rec** %y, align 8
  br label %for.cond.1747

for.cond.1747:                                    ; preds = %for.inc.1756, %for.body.1742
  %659 = load %union.rec*, %union.rec** %y, align 8
  %os11748 = bitcast %union.rec* %659 to %struct.word_type*
  %ou11749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11748, i32 0, i32 1
  %os111750 = bitcast %union.FIRST_UNION* %ou11749 to %struct.anon*
  %otype1751 = getelementptr inbounds %struct.anon, %struct.anon* %os111750, i32 0, i32 0
  %660 = load i8, i8* %otype1751, align 1
  %conv1752 = zext i8 %660 to i32
  %cmp1753 = icmp eq i32 %conv1752, 0
  br i1 %cmp1753, label %for.body.1755, label %for.end.1761

for.body.1755:                                    ; preds = %for.cond.1747
  br label %for.inc.1756

for.inc.1756:                                     ; preds = %for.body.1755
  %661 = load %union.rec*, %union.rec** %y, align 8
  %os11757 = bitcast %union.rec* %661 to %struct.word_type*
  %olist1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11757, i32 0, i32 0
  %arrayidx1759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1758, i32 0, i64 1
  %opred1760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1759, i32 0, i32 0
  %662 = load %union.rec*, %union.rec** %opred1760, align 8
  store %union.rec* %662, %union.rec** %y, align 8
  br label %for.cond.1747

for.end.1761:                                     ; preds = %for.cond.1747
  %663 = load %union.rec*, %union.rec** %y, align 8
  %os11762 = bitcast %union.rec* %663 to %struct.word_type*
  %ou11763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11762, i32 0, i32 1
  %os111764 = bitcast %union.FIRST_UNION* %ou11763 to %struct.anon*
  %otype1765 = getelementptr inbounds %struct.anon, %struct.anon* %os111764, i32 0, i32 0
  %664 = load i8, i8* %otype1765, align 1
  %conv1766 = zext i8 %664 to i32
  %cmp1767 = icmp eq i32 %conv1766, 1
  br i1 %cmp1767, label %land.lhs.true.1769, label %if.end.1779

land.lhs.true.1769:                               ; preds = %for.end.1761
  %665 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %665 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %666 = bitcast %struct.GAP* %ogap to i16*
  %bf.load1770 = load i16, i16* %666, align 4
  %bf.lshr1771 = lshr i16 %bf.load1770, 8
  %bf.clear1772 = and i16 %bf.lshr1771, 1
  %bf.cast = zext i16 %bf.clear1772 to i32
  %tobool1773 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1773, label %if.then.1774, label %if.end.1779

if.then.1774:                                     ; preds = %land.lhs.true.1769
  %667 = load %union.rec*, %union.rec** %y, align 8
  %os51775 = bitcast %union.rec* %667 to %struct.gapobj_type*
  %ogap1776 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51775, i32 0, i32 3
  %668 = bitcast %struct.GAP* %ogap1776 to i16*
  %bf.load1777 = load i16, i16* %668, align 4
  %bf.clear1778 = and i16 %bf.load1777, -257
  store i16 %bf.clear1778, i16* %668, align 4
  %669 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %669, %union.rec** %rpos, align 8
  br label %if.end.1779

if.end.1779:                                      ; preds = %if.then.1774, %land.lhs.true.1769, %for.end.1761
  br label %for.inc.1780

for.inc.1780:                                     ; preds = %if.end.1779
  %670 = load %union.rec*, %union.rec** %link, align 8
  %os11781 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11781, i32 0, i32 0
  %arrayidx1783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1782, i32 0, i64 0
  %osucc1784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1783, i32 0, i32 1
  %671 = load %union.rec*, %union.rec** %osucc1784, align 8
  store %union.rec* %671, %union.rec** %link, align 8
  br label %for.cond.1739

for.end.1785:                                     ; preds = %for.cond.1739
  %672 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11786 = bitcast %union.rec* %672 to %struct.word_type*
  %ou31787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11786, i32 0, i32 3
  %os311788 = bitcast %union.THIRD_UNION* %ou31787 to %struct.anon.6*
  %oback1789 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311788, i32 0, i32 0
  %arrayidx1790 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1789, i32 0, i64 0
  %673 = load i32, i32* %arrayidx1790, align 4
  %674 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc1791 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %674, i32 0, i32 0
  %675 = load i32, i32* %obc1791, align 4
  %cmp1792 = icmp sle i32 %673, %675
  br i1 %cmp1792, label %land.lhs.true.1794, label %if.end.1823

land.lhs.true.1794:                               ; preds = %for.end.1785
  %676 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11795 = bitcast %union.rec* %676 to %struct.word_type*
  %ou31796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11795, i32 0, i32 3
  %os311797 = bitcast %union.THIRD_UNION* %ou31796 to %struct.anon.6*
  %oback1798 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311797, i32 0, i32 0
  %arrayidx1799 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1798, i32 0, i64 0
  %677 = load i32, i32* %arrayidx1799, align 4
  %678 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11800 = bitcast %union.rec* %678 to %struct.word_type*
  %ou31801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11800, i32 0, i32 3
  %os311802 = bitcast %union.THIRD_UNION* %ou31801 to %struct.anon.6*
  %ofwd1803 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311802, i32 0, i32 1
  %arrayidx1804 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1803, i32 0, i64 0
  %679 = load i32, i32* %arrayidx1804, align 4
  %add1805 = add nsw i32 %677, %679
  %680 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc1806 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %680, i32 0, i32 1
  %681 = load i32, i32* %obfc1806, align 4
  %cmp1807 = icmp sle i32 %add1805, %681
  br i1 %cmp1807, label %land.lhs.true.1809, label %if.end.1823

land.lhs.true.1809:                               ; preds = %land.lhs.true.1794
  %682 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11810 = bitcast %union.rec* %682 to %struct.word_type*
  %ou31811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11810, i32 0, i32 3
  %os311812 = bitcast %union.THIRD_UNION* %ou31811 to %struct.anon.6*
  %ofwd1813 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311812, i32 0, i32 1
  %arrayidx1814 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1813, i32 0, i64 0
  %683 = load i32, i32* %arrayidx1814, align 4
  %684 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc1815 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %684, i32 0, i32 2
  %685 = load i32, i32* %ofc1815, align 4
  %cmp1816 = icmp sle i32 %683, %685
  br i1 %cmp1816, label %if.then.1818, label %if.end.1823

if.then.1818:                                     ; preds = %land.lhs.true.1809
  %686 = load %union.rec*, %union.rec** %rpos, align 8
  %os11819 = bitcast %union.rec* %686 to %struct.word_type*
  %ou11820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11819, i32 0, i32 1
  %ofpos1821 = bitcast %union.FIRST_UNION* %ou11820 to %struct.FILE_POS*
  %call1822 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1821)
  br label %sw.epilog

if.end.1823:                                      ; preds = %land.lhs.true.1809, %land.lhs.true.1794, %for.end.1785
  %687 = load %union.rec*, %union.rec** %rpos, align 8
  %os11824 = bitcast %union.rec* %687 to %struct.word_type*
  %ou11825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11824, i32 0, i32 1
  %ofpos1826 = bitcast %union.FIRST_UNION* %ou11825 to %struct.FILE_POS*
  %call1827 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1826)
  br label %if.end.1828

if.end.1828:                                      ; preds = %if.end.1823, %sw.bb.1697
  %688 = load %union.rec*, %union.rec** %x.addr, align 8
  %689 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1829 = call %union.rec* @FillObject(%union.rec* %688, %struct.CONSTRAINT* %689, %union.rec* null, i32 1, i32 1, i32 0, i32* %junk)
  store %union.rec* %call1829, %union.rec** %x.addr, align 8
  br label %sw.epilog

sw.bb.1830:                                       ; preds = %if.end.117
  %690 = load %union.rec*, %union.rec** %x.addr, align 8
  %691 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1831 = call %union.rec* @BreakTable(%union.rec* %690, %struct.CONSTRAINT* %691)
  store %union.rec* %call1831, %union.rec** %x.addr, align 8
  br label %sw.epilog

sw.bb.1832:                                       ; preds = %if.end.117
  %692 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11833 = bitcast %union.rec* %692 to %struct.word_type*
  %olist1834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11833, i32 0, i32 0
  %arrayidx1835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1834, i32 0, i64 0
  %osucc1836 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1835, i32 0, i32 1
  %693 = load %union.rec*, %union.rec** %osucc1836, align 8
  %694 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11837 = bitcast %union.rec* %694 to %struct.word_type*
  %olist1838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11837, i32 0, i32 0
  %arrayidx1839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1838, i32 0, i64 0
  %opred1840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1839, i32 0, i32 0
  %695 = load %union.rec*, %union.rec** %opred1840, align 8
  %696 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %697 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11841 = bitcast %union.rec* %697 to %struct.word_type*
  %ou31842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11841, i32 0, i32 3
  %os311843 = bitcast %union.THIRD_UNION* %ou31842 to %struct.anon.6*
  %oback1844 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311843, i32 0, i32 0
  %arrayidx1845 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1844, i32 0, i64 0
  %698 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11846 = bitcast %union.rec* %698 to %struct.word_type*
  %ou31847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11846, i32 0, i32 3
  %os311848 = bitcast %union.THIRD_UNION* %ou31847 to %struct.anon.6*
  %ofwd1849 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311848, i32 0, i32 1
  %arrayidx1850 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1849, i32 0, i64 0
  call void @BreakJoinedGroup(%union.rec* %693, %union.rec* %695, %union.rec* null, %struct.CONSTRAINT* %696, i32* %arrayidx1845, i32* %arrayidx1850)
  br label %sw.epilog

sw.bb.1851:                                       ; preds = %if.end.117
  %699 = load %union.rec*, %union.rec** %x.addr, align 8
  %700 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %call1852 = call %union.rec* @BreakVcat(%union.rec* %699, %struct.CONSTRAINT* %700)
  store %union.rec* %call1852, %union.rec** %x.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.117
  %701 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %702 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11853 = bitcast %union.rec* %702 to %struct.word_type*
  %ou11854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11853, i32 0, i32 1
  %os111855 = bitcast %union.FIRST_UNION* %ou11854 to %struct.anon*
  %otype1856 = getelementptr inbounds %struct.anon, %struct.anon* %os111855, i32 0, i32 0
  %703 = load i8, i8* %otype1856, align 1
  %conv1857 = zext i8 %703 to i32
  %call1858 = call i8* @Image(i32 %conv1857)
  %call1859 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 0, %struct.FILE_POS* %701, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* %call1858)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1851, %sw.bb.1832, %sw.bb.1830, %if.end.1828, %if.then.1818, %for.end.1675, %for.end.1630, %for.end.1585, %sw.bb.1561, %cond.end.1554, %if.end.1414, %for.end.1317, %for.end.1247, %if.end.1210, %for.end.1017, %if.end.990, %for.end.331, %for.end.275, %if.end.247
  %704 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11860 = bitcast %union.rec* %704 to %struct.word_type*
  %ou31861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11860, i32 0, i32 3
  %os311862 = bitcast %union.THIRD_UNION* %ou31861 to %struct.anon.6*
  %oback1863 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311862, i32 0, i32 0
  %arrayidx1864 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1863, i32 0, i64 0
  %705 = load i32, i32* %arrayidx1864, align 4
  %cmp1865 = icmp sge i32 %705, 0
  br i1 %cmp1865, label %if.end.1869, label %if.then.1867

if.then.1867:                                     ; preds = %sw.epilog
  %706 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1868 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %706, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.1869

if.end.1869:                                      ; preds = %if.then.1867, %sw.epilog
  %707 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11870 = bitcast %union.rec* %707 to %struct.word_type*
  %ou31871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11870, i32 0, i32 3
  %os311872 = bitcast %union.THIRD_UNION* %ou31871 to %struct.anon.6*
  %ofwd1873 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311872, i32 0, i32 1
  %arrayidx1874 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1873, i32 0, i64 0
  %708 = load i32, i32* %arrayidx1874, align 4
  %cmp1875 = icmp sge i32 %708, 0
  br i1 %cmp1875, label %if.end.1879, label %if.then.1877

if.then.1877:                                     ; preds = %if.end.1869
  %709 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1878 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %709, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.1879

if.end.1879:                                      ; preds = %if.then.1877, %if.end.1869
  %710 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %710, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.1879, %if.then.116, %cond.end.85
  %711 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %711
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i8* @EchoLength(i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @InsertScale(%union.rec*, %struct.CONSTRAINT*) #1

declare void @InvScaleConstraint(%struct.CONSTRAINT*, i32, %struct.CONSTRAINT*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare void @MinConstraint(%struct.CONSTRAINT*, %struct.CONSTRAINT*) #1

declare void @EnlargeToConstraint(i32*, i32*, %struct.CONSTRAINT*) #1

declare i32 @FindShift(%union.rec*, %union.rec*, i32) #1

declare %union.rec* @FillObject(%union.rec*, %struct.CONSTRAINT*, %union.rec*, i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @BreakTable(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %bwidth = alloca i32, align 4
  %fwidth = alloca i32, align 4
  %bcount = alloca i32, align 4
  %fcount = alloca i32, align 4
  %mlink = alloca %union.rec*, align 8
  %my = alloca %union.rec*, align 8
  %ratm = alloca i32, align 4
  %mside = alloca i32, align 4
  %msize = alloca i32, align 4
  %mc = alloca %struct.CONSTRAINT, align 4
  %pg = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %sg = alloca %union.rec*, align 8
  %succ_def = alloca %union.rec*, align 8
  %pd_extra = alloca i32, align 4
  %sd_extra = alloca i32, align 4
  %av_colsize = alloca i32, align 4
  %fwd_max = alloca i32, align 4
  %back_max = alloca i32, align 4
  %col_size = alloca i32, align 4
  %prev_col_size = alloca i32, align 4
  %beffect = alloca i32, align 4
  %feffect = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  store i32 0, i32* %fcount, align 4
  store i32 0, i32* %bcount, align 4
  store i32 0, i32* %fwidth, align 4
  store i32 0, i32* %bwidth, align 4
  store %union.rec* null, %union.rec** %prev, align 8
  store i32 0, i32* %prev_col_size, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %os12 = bitcast %union.rec* %1 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %2, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union.rec*, %union.rec** %y, align 8
  %os15 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %union.rec*, %union.rec** %y, align 8
  %os17 = bitcast %union.rec* %5 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred10 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %opred10, align 8
  store %union.rec* %6, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %7 to %struct.word_type*
  %ou112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os1113 = bitcast %union.FIRST_UNION* %ou112 to %struct.anon*
  %otype14 = getelementptr inbounds %struct.anon, %struct.anon* %os1113, i32 0, i32 0
  %8 = load i8, i8* %otype14, align 1
  %conv15 = zext i8 %8 to i32
  %cmp16 = icmp ne i32 %conv15, 1
  br i1 %cmp16, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %10 to %struct.word_type*
  %ou119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 1
  %os1120 = bitcast %union.FIRST_UNION* %ou119 to %struct.anon*
  %otype21 = getelementptr inbounds %struct.anon, %struct.anon* %os1120, i32 0, i32 0
  %11 = load i8, i8* %otype21, align 1
  %conv22 = zext i8 %11 to i32
  %cmp23 = icmp sge i32 %conv22, 119
  br i1 %cmp23, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os125 = bitcast %union.rec* %12 to %struct.word_type*
  %ou126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1127 = bitcast %union.FIRST_UNION* %ou126 to %struct.anon*
  %otype28 = getelementptr inbounds %struct.anon, %struct.anon* %os1127, i32 0, i32 0
  %13 = load i8, i8* %otype28, align 1
  %conv29 = zext i8 %13 to i32
  %cmp30 = icmp sle i32 %conv29, 138
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call33 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true, %if.end
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os135 = bitcast %union.rec* %15 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %os1137 = bitcast %union.FIRST_UNION* %ou136 to %struct.anon*
  %otype38 = getelementptr inbounds %struct.anon, %struct.anon* %os1137, i32 0, i32 0
  %16 = load i8, i8* %otype38, align 1
  %conv39 = zext i8 %16 to i32
  %cmp40 = icmp sge i32 %conv39, 2
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.34
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os142 = bitcast %union.rec* %17 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %os1144 = bitcast %union.FIRST_UNION* %ou143 to %struct.anon*
  %otype45 = getelementptr inbounds %struct.anon, %struct.anon* %os1144, i32 0, i32 0
  %18 = load i8, i8* %otype45, align 1
  %conv46 = zext i8 %18 to i32
  %cmp47 = icmp sle i32 %conv46, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.34
  %19 = phi i1 [ false, %if.end.34 ], [ %cmp47, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os149 = bitcast %union.rec* %20 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  store i32 %land.ext, i32* %arrayidx50, align 4
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os151 = bitcast %union.rec* %21 to %struct.word_type*
  %ou352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 3
  %os3153 = bitcast %union.THIRD_UNION* %ou352 to %struct.anon.6*
  %oback54 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x i32], [2 x i32]* %oback54, i32 0, i64 1
  %22 = load i32, i32* %arrayidx55, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.end
  %23 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %23, %union.rec** %prev, align 8
  store i32 1, i32* %fcount, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.end
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os158 = bitcast %union.rec* %24 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  %25 = load %union.rec*, %union.rec** %osucc61, align 8
  %os162 = bitcast %union.rec* %25 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %osucc65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc65, align 8
  store %union.rec* %26, %union.rec** %link, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.207, %if.end.57
  %27 = load %union.rec*, %union.rec** %link, align 8
  %28 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp67 = icmp ne %union.rec* %27, %28
  br i1 %cmp67, label %for.body.69, label %for.end.216

for.body.69:                                      ; preds = %for.cond.66
  %29 = load %union.rec*, %union.rec** %link, align 8
  %os170 = bitcast %union.rec* %29 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 1
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred73, align 8
  store %union.rec* %30, %union.rec** %g, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.83, %for.body.69
  %31 = load %union.rec*, %union.rec** %g, align 8
  %os175 = bitcast %union.rec* %31 to %struct.word_type*
  %ou176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 1
  %os1177 = bitcast %union.FIRST_UNION* %ou176 to %struct.anon*
  %otype78 = getelementptr inbounds %struct.anon, %struct.anon* %os1177, i32 0, i32 0
  %32 = load i8, i8* %otype78, align 1
  %conv79 = zext i8 %32 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br i1 %cmp80, label %for.body.82, label %for.end.88

for.body.82:                                      ; preds = %for.cond.74
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.82
  %33 = load %union.rec*, %union.rec** %g, align 8
  %os184 = bitcast %union.rec* %33 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred87, align 8
  store %union.rec* %34, %union.rec** %g, align 8
  br label %for.cond.74

for.end.88:                                       ; preds = %for.cond.74
  %35 = load %union.rec*, %union.rec** %g, align 8
  %os189 = bitcast %union.rec* %35 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon*
  %otype92 = getelementptr inbounds %struct.anon, %struct.anon* %os1191, i32 0, i32 0
  %36 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %36 to i32
  %cmp94 = icmp eq i32 %conv93, 1
  br i1 %cmp94, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %for.end.88
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call97 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.end.88
  %38 = load %union.rec*, %union.rec** %link, align 8
  %os199 = bitcast %union.rec* %38 to %struct.word_type*
  %olist100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist100, i32 0, i64 0
  %osucc102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx101, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %osucc102, align 8
  %40 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp103 = icmp ne %union.rec* %39, %40
  br i1 %cmp103, label %if.end.107, label %if.then.105

if.then.105:                                      ; preds = %if.end.98
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call106 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.98
  %42 = load %union.rec*, %union.rec** %link, align 8
  %os1108 = bitcast %union.rec* %42 to %struct.word_type*
  %olist109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist109, i32 0, i64 0
  %osucc111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx110, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %osucc111, align 8
  %os1112 = bitcast %union.rec* %43 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 1
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred115, align 8
  store %union.rec* %44, %union.rec** %y, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.125, %if.end.107
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os1117 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 1
  %os11119 = bitcast %union.FIRST_UNION* %ou1118 to %struct.anon*
  %otype120 = getelementptr inbounds %struct.anon, %struct.anon* %os11119, i32 0, i32 0
  %46 = load i8, i8* %otype120, align 1
  %conv121 = zext i8 %46 to i32
  %cmp122 = icmp eq i32 %conv121, 0
  br i1 %cmp122, label %for.body.124, label %for.end.130

for.body.124:                                     ; preds = %for.cond.116
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.124
  %47 = load %union.rec*, %union.rec** %y, align 8
  %os1126 = bitcast %union.rec* %47 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 1
  %opred129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred129, align 8
  store %union.rec* %48, %union.rec** %y, align 8
  br label %for.cond.116

for.end.130:                                      ; preds = %for.cond.116
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os1131 = bitcast %union.rec* %49 to %struct.word_type*
  %ou1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 1
  %os11133 = bitcast %union.FIRST_UNION* %ou1132 to %struct.anon*
  %otype134 = getelementptr inbounds %struct.anon, %struct.anon* %os11133, i32 0, i32 0
  %50 = load i8, i8* %otype134, align 1
  %conv135 = zext i8 %50 to i32
  %cmp136 = icmp ne i32 %conv135, 1
  br i1 %cmp136, label %if.end.140, label %if.then.138

if.then.138:                                      ; preds = %for.end.130
  %51 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call139 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %for.end.130
  %52 = load %union.rec*, %union.rec** %y, align 8
  %os1141 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 1
  %os11143 = bitcast %union.FIRST_UNION* %ou1142 to %struct.anon*
  %otype144 = getelementptr inbounds %struct.anon, %struct.anon* %os11143, i32 0, i32 0
  %53 = load i8, i8* %otype144, align 1
  %conv145 = zext i8 %53 to i32
  %cmp146 = icmp sge i32 %conv145, 119
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.158

land.lhs.true.148:                                ; preds = %if.end.140
  %54 = load %union.rec*, %union.rec** %y, align 8
  %os1149 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 1
  %os11151 = bitcast %union.FIRST_UNION* %ou1150 to %struct.anon*
  %otype152 = getelementptr inbounds %struct.anon, %struct.anon* %os11151, i32 0, i32 0
  %55 = load i8, i8* %otype152, align 1
  %conv153 = zext i8 %55 to i32
  %cmp154 = icmp sle i32 %conv153, 138
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %land.lhs.true.148
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %land.lhs.true.148, %if.end.140
  %57 = load %union.rec*, %union.rec** %y, align 8
  %os1159 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 1
  %os11161 = bitcast %union.FIRST_UNION* %ou1160 to %struct.anon*
  %otype162 = getelementptr inbounds %struct.anon, %struct.anon* %os11161, i32 0, i32 0
  %58 = load i8, i8* %otype162, align 1
  %conv163 = zext i8 %58 to i32
  %cmp164 = icmp sge i32 %conv163, 2
  br i1 %cmp164, label %land.rhs.166, label %land.end.174

land.rhs.166:                                     ; preds = %if.end.158
  %59 = load %union.rec*, %union.rec** %y, align 8
  %os1167 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 1
  %os11169 = bitcast %union.FIRST_UNION* %ou1168 to %struct.anon*
  %otype170 = getelementptr inbounds %struct.anon, %struct.anon* %os11169, i32 0, i32 0
  %60 = load i8, i8* %otype170, align 1
  %conv171 = zext i8 %60 to i32
  %cmp172 = icmp sle i32 %conv171, 8
  br label %land.end.174

land.end.174:                                     ; preds = %land.rhs.166, %if.end.158
  %61 = phi i1 [ false, %if.end.158 ], [ %cmp172, %land.rhs.166 ]
  %land.ext175 = zext i1 %61 to i32
  %62 = load %union.rec*, %union.rec** %y, align 8
  %os1176 = bitcast %union.rec* %62 to %struct.word_type*
  %ou3177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 3
  %os31178 = bitcast %union.THIRD_UNION* %ou3177 to %struct.anon.6*
  %oback179 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x i32], [2 x i32]* %oback179, i32 0, i64 1
  store i32 %land.ext175, i32* %arrayidx180, align 4
  %63 = load %union.rec*, %union.rec** %y, align 8
  %os1181 = bitcast %union.rec* %63 to %struct.word_type*
  %ou3182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 3
  %os31183 = bitcast %union.THIRD_UNION* %ou3182 to %struct.anon.6*
  %oback184 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x i32], [2 x i32]* %oback184, i32 0, i64 1
  %64 = load i32, i32* %arrayidx185, align 4
  %tobool186 = icmp ne i32 %64, 0
  br i1 %tobool186, label %if.end.206, label %if.then.187

if.then.187:                                      ; preds = %land.end.174
  %65 = load %union.rec*, %union.rec** %prev, align 8
  %cmp188 = icmp eq %union.rec* %65, null
  br i1 %cmp188, label %if.then.190, label %if.else

if.then.190:                                      ; preds = %if.then.187
  store i32 1, i32* %fcount, align 4
  br label %if.end.205

if.else:                                          ; preds = %if.then.187
  %66 = load %union.rec*, %union.rec** %g, align 8
  %os5 = bitcast %union.rec* %66 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %67 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %67, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool191 = icmp ne i32 %bf.cast, 0
  br i1 %tobool191, label %if.then.192, label %if.else.198

if.then.192:                                      ; preds = %if.else
  %68 = load i32, i32* %fcount, align 4
  %69 = load i32, i32* %bcount, align 4
  %add = add nsw i32 %69, %68
  store i32 %add, i32* %bcount, align 4
  %70 = load i32, i32* %fwidth, align 4
  %71 = load %union.rec*, %union.rec** %g, align 8
  %os5193 = bitcast %union.rec* %71 to %struct.gapobj_type*
  %ogap194 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5193, i32 0, i32 3
  %call195 = call i32 @MinGap(i32 0, i32 0, i32 0, %struct.GAP* %ogap194)
  %add196 = add nsw i32 %70, %call195
  %72 = load i32, i32* %bwidth, align 4
  %add197 = add nsw i32 %72, %add196
  store i32 %add197, i32* %bwidth, align 4
  store i32 1, i32* %fcount, align 4
  store i32 0, i32* %fwidth, align 4
  br label %if.end.204

if.else.198:                                      ; preds = %if.else
  %73 = load %union.rec*, %union.rec** %g, align 8
  %os5199 = bitcast %union.rec* %73 to %struct.gapobj_type*
  %ogap200 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5199, i32 0, i32 3
  %call201 = call i32 @MinGap(i32 0, i32 0, i32 0, %struct.GAP* %ogap200)
  %74 = load i32, i32* %fwidth, align 4
  %add202 = add nsw i32 %74, %call201
  store i32 %add202, i32* %fwidth, align 4
  %75 = load i32, i32* %fcount, align 4
  %add203 = add nsw i32 %75, 1
  store i32 %add203, i32* %fcount, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.198, %if.then.192
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.190
  %76 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %76, %union.rec** %prev, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %land.end.174
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %77 = load %union.rec*, %union.rec** %link, align 8
  %os1208 = bitcast %union.rec* %77 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 0
  %osucc211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 1
  %78 = load %union.rec*, %union.rec** %osucc211, align 8
  %os1212 = bitcast %union.rec* %78 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %osucc215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 1
  %79 = load %union.rec*, %union.rec** %osucc215, align 8
  store %union.rec* %79, %union.rec** %link, align 8
  br label %for.cond.66

for.end.216:                                      ; preds = %for.cond.66
  %80 = load i32, i32* %bwidth, align 4
  %81 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %81, i32 0, i32 0
  %82 = load i32, i32* %obc, align 4
  %cmp217 = icmp sle i32 %80, %82
  br i1 %cmp217, label %land.lhs.true.219, label %if.then.226

land.lhs.true.219:                                ; preds = %for.end.216
  %83 = load i32, i32* %bwidth, align 4
  %84 = load i32, i32* %fwidth, align 4
  %add220 = add nsw i32 %83, %84
  %85 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %85, i32 0, i32 1
  %86 = load i32, i32* %obfc, align 4
  %cmp221 = icmp sle i32 %add220, %86
  br i1 %cmp221, label %land.lhs.true.223, label %if.then.226

land.lhs.true.223:                                ; preds = %land.lhs.true.219
  %87 = load i32, i32* %fwidth, align 4
  %88 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %88, i32 0, i32 2
  %89 = load i32, i32* %ofc, align 4
  %cmp224 = icmp sle i32 %87, %89
  br i1 %cmp224, label %if.end.322, label %if.then.226

if.then.226:                                      ; preds = %land.lhs.true.223, %land.lhs.true.219, %for.end.216
  %90 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1227 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1227, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1228 to %struct.FILE_POS*
  %call229 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos)
  %91 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1230 = bitcast %union.rec* %91 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 0
  %osucc233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 1
  %92 = load %union.rec*, %union.rec** %osucc233, align 8
  store %union.rec* %92, %union.rec** %link, align 8
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.316, %if.then.226
  %93 = load %union.rec*, %union.rec** %link, align 8
  %94 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp235 = icmp ne %union.rec* %93, %94
  br i1 %cmp235, label %for.body.237, label %for.end.321

for.body.237:                                     ; preds = %for.cond.234
  %95 = load %union.rec*, %union.rec** %link, align 8
  %os1238 = bitcast %union.rec* %95 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 1
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred241, align 8
  store %union.rec* %96, %union.rec** %g, align 8
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.251, %for.body.237
  %97 = load %union.rec*, %union.rec** %g, align 8
  %os1243 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1243, i32 0, i32 1
  %os11245 = bitcast %union.FIRST_UNION* %ou1244 to %struct.anon*
  %otype246 = getelementptr inbounds %struct.anon, %struct.anon* %os11245, i32 0, i32 0
  %98 = load i8, i8* %otype246, align 1
  %conv247 = zext i8 %98 to i32
  %cmp248 = icmp eq i32 %conv247, 0
  br i1 %cmp248, label %for.body.250, label %for.end.256

for.body.250:                                     ; preds = %for.cond.242
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.body.250
  %99 = load %union.rec*, %union.rec** %g, align 8
  %os1252 = bitcast %union.rec* %99 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 1
  %opred255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred255, align 8
  store %union.rec* %100, %union.rec** %g, align 8
  br label %for.cond.242

for.end.256:                                      ; preds = %for.cond.242
  %101 = load %union.rec*, %union.rec** %g, align 8
  %os1257 = bitcast %union.rec* %101 to %struct.word_type*
  %ou1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 1
  %os11259 = bitcast %union.FIRST_UNION* %ou1258 to %struct.anon*
  %otype260 = getelementptr inbounds %struct.anon, %struct.anon* %os11259, i32 0, i32 0
  %102 = load i8, i8* %otype260, align 1
  %conv261 = zext i8 %102 to i32
  %cmp262 = icmp eq i32 %conv261, 1
  br i1 %cmp262, label %if.then.264, label %if.end.315

if.then.264:                                      ; preds = %for.end.256
  %103 = load %union.rec*, %union.rec** %g, align 8
  %os5265 = bitcast %union.rec* %103 to %struct.gapobj_type*
  %ogap266 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5265, i32 0, i32 3
  %104 = bitcast %struct.GAP* %ogap266 to i16*
  %bf.load267 = load i16, i16* %104, align 4
  %bf.lshr268 = lshr i16 %bf.load267, 7
  %bf.clear269 = and i16 %bf.lshr268, 1
  %bf.cast270 = zext i16 %bf.clear269 to i32
  %105 = load %union.rec*, %union.rec** %g, align 8
  %os5271 = bitcast %union.rec* %105 to %struct.gapobj_type*
  %ogap272 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5271, i32 0, i32 3
  %106 = bitcast %struct.GAP* %ogap272 to i16*
  %107 = trunc i32 %bf.cast270 to i16
  %bf.load273 = load i16, i16* %106, align 4
  %bf.value = and i16 %107, 1
  %bf.shl = shl i16 %bf.value, 7
  %bf.clear274 = and i16 %bf.load273, -129
  %bf.set = or i16 %bf.clear274, %bf.shl
  store i16 %bf.set, i16* %106, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %108 = load %union.rec*, %union.rec** %g, align 8
  %os5275 = bitcast %union.rec* %108 to %struct.gapobj_type*
  %ogap276 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5275, i32 0, i32 3
  %109 = bitcast %struct.GAP* %ogap276 to i16*
  %bf.load277 = load i16, i16* %109, align 4
  %bf.lshr278 = lshr i16 %bf.load277, 8
  %bf.clear279 = and i16 %bf.lshr278, 1
  %bf.cast280 = zext i16 %bf.clear279 to i32
  %110 = load %union.rec*, %union.rec** %g, align 8
  %os5281 = bitcast %union.rec* %110 to %struct.gapobj_type*
  %ogap282 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5281, i32 0, i32 3
  %111 = bitcast %struct.GAP* %ogap282 to i16*
  %112 = trunc i32 %bf.cast280 to i16
  %bf.load283 = load i16, i16* %111, align 4
  %bf.value284 = and i16 %112, 1
  %bf.shl285 = shl i16 %bf.value284, 8
  %bf.clear286 = and i16 %bf.load283, -257
  %bf.set287 = or i16 %bf.clear286, %bf.shl285
  store i16 %bf.set287, i16* %111, align 4
  %bf.result.cast288 = zext i16 %bf.value284 to i32
  %113 = load %union.rec*, %union.rec** %g, align 8
  %os5289 = bitcast %union.rec* %113 to %struct.gapobj_type*
  %ogap290 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5289, i32 0, i32 3
  %114 = bitcast %struct.GAP* %ogap290 to i16*
  %bf.load291 = load i16, i16* %114, align 4
  %bf.lshr292 = lshr i16 %bf.load291, 9
  %bf.clear293 = and i16 %bf.lshr292, 1
  %bf.cast294 = zext i16 %bf.clear293 to i32
  %115 = load %union.rec*, %union.rec** %g, align 8
  %os5295 = bitcast %union.rec* %115 to %struct.gapobj_type*
  %ogap296 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5295, i32 0, i32 3
  %116 = bitcast %struct.GAP* %ogap296 to i16*
  %117 = trunc i32 %bf.cast294 to i16
  %bf.load297 = load i16, i16* %116, align 4
  %bf.value298 = and i16 %117, 1
  %bf.shl299 = shl i16 %bf.value298, 9
  %bf.clear300 = and i16 %bf.load297, -513
  %bf.set301 = or i16 %bf.clear300, %bf.shl299
  store i16 %bf.set301, i16* %116, align 4
  %bf.result.cast302 = zext i16 %bf.value298 to i32
  %118 = load %union.rec*, %union.rec** %g, align 8
  %os5303 = bitcast %union.rec* %118 to %struct.gapobj_type*
  %ogap304 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5303, i32 0, i32 3
  %119 = bitcast %struct.GAP* %ogap304 to i16*
  %bf.load305 = load i16, i16* %119, align 4
  %bf.clear306 = and i16 %bf.load305, -7169
  %bf.set307 = or i16 %bf.clear306, 1024
  store i16 %bf.set307, i16* %119, align 4
  %120 = load %union.rec*, %union.rec** %g, align 8
  %os5308 = bitcast %union.rec* %120 to %struct.gapobj_type*
  %ogap309 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5308, i32 0, i32 3
  %121 = bitcast %struct.GAP* %ogap309 to i16*
  %bf.load310 = load i16, i16* %121, align 4
  %bf.clear311 = and i16 %bf.load310, 8191
  %bf.set312 = or i16 %bf.clear311, 8192
  store i16 %bf.set312, i16* %121, align 4
  %122 = load %union.rec*, %union.rec** %g, align 8
  %os5313 = bitcast %union.rec* %122 to %struct.gapobj_type*
  %ogap314 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5313, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap314, i32 0, i32 1
  store i16 0, i16* %owidth, align 2
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.264, %for.end.256
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315
  %123 = load %union.rec*, %union.rec** %link, align 8
  %os1317 = bitcast %union.rec* %123 to %struct.word_type*
  %olist318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist318, i32 0, i64 0
  %osucc320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx319, i32 0, i32 1
  %124 = load %union.rec*, %union.rec** %osucc320, align 8
  store %union.rec* %124, %union.rec** %link, align 8
  br label %for.cond.234

for.end.321:                                      ; preds = %for.cond.234
  store i32 0, i32* %fwidth, align 4
  store i32 0, i32* %bwidth, align 4
  br label %if.end.322

if.end.322:                                       ; preds = %for.end.321, %land.lhs.true.223
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.811, %if.end.322
  %125 = load i32, i32* %bcount, align 4
  %126 = load i32, i32* %fcount, align 4
  %add323 = add nsw i32 %125, %126
  %cmp324 = icmp sgt i32 %add323, 0
  br i1 %cmp324, label %land.rhs.326, label %land.end.341

land.rhs.326:                                     ; preds = %while.cond
  %127 = load i32, i32* %bwidth, align 4
  %128 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc327 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %128, i32 0, i32 0
  %129 = load i32, i32* %obc327, align 4
  %cmp328 = icmp sle i32 %127, %129
  br i1 %cmp328, label %land.lhs.true.330, label %land.end.339

land.lhs.true.330:                                ; preds = %land.rhs.326
  %130 = load i32, i32* %bwidth, align 4
  %131 = load i32, i32* %fwidth, align 4
  %add331 = add nsw i32 %130, %131
  %132 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc332 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %132, i32 0, i32 1
  %133 = load i32, i32* %obfc332, align 4
  %cmp333 = icmp sle i32 %add331, %133
  br i1 %cmp333, label %land.rhs.335, label %land.end.339

land.rhs.335:                                     ; preds = %land.lhs.true.330
  %134 = load i32, i32* %fwidth, align 4
  %135 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc336 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %135, i32 0, i32 2
  %136 = load i32, i32* %ofc336, align 4
  %cmp337 = icmp sle i32 %134, %136
  br label %land.end.339

land.end.339:                                     ; preds = %land.rhs.335, %land.lhs.true.330, %land.rhs.326
  %137 = phi i1 [ false, %land.lhs.true.330 ], [ false, %land.rhs.326 ], [ %cmp337, %land.rhs.335 ]
  br label %land.end.341

land.end.341:                                     ; preds = %land.end.339, %while.cond
  %138 = phi i1 [ false, %while.cond ], [ %137, %land.end.339 ]
  br i1 %138, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.341
  store %union.rec* null, %union.rec** %my, align 8
  %139 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1343 = bitcast %union.rec* %139 to %struct.word_type*
  %ou3344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 3
  %os31345 = bitcast %union.THIRD_UNION* %ou3344 to %struct.anon.6*
  %oback346 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x i32], [2 x i32]* %oback346, i32 0, i64 0
  %140 = load i32, i32* %arrayidx347, align 4
  %141 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1348 = bitcast %union.rec* %141 to %struct.word_type*
  %ou3349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 3
  %os31350 = bitcast %union.THIRD_UNION* %ou3349 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31350, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %142 = load i32, i32* %arrayidx351, align 4
  %add352 = add nsw i32 %140, %142
  store i32 %add352, i32* %msize, align 4
  %143 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1353 = bitcast %union.rec* %143 to %struct.word_type*
  %olist354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1353, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist354, i32 0, i64 0
  %osucc356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx355, i32 0, i32 1
  %144 = load %union.rec*, %union.rec** %osucc356, align 8
  store %union.rec* %144, %union.rec** %link, align 8
  br label %for.cond.357

for.cond.357:                                     ; preds = %for.inc.468, %while.body
  %145 = load %union.rec*, %union.rec** %link, align 8
  %os1358 = bitcast %union.rec* %145 to %struct.word_type*
  %olist359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1358, i32 0, i32 0
  %arrayidx360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist359, i32 0, i64 1
  %opred361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx360, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %opred361, align 8
  store %union.rec* %146, %union.rec** %y, align 8
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.371, %for.cond.357
  %147 = load %union.rec*, %union.rec** %y, align 8
  %os1363 = bitcast %union.rec* %147 to %struct.word_type*
  %ou1364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1363, i32 0, i32 1
  %os11365 = bitcast %union.FIRST_UNION* %ou1364 to %struct.anon*
  %otype366 = getelementptr inbounds %struct.anon, %struct.anon* %os11365, i32 0, i32 0
  %148 = load i8, i8* %otype366, align 1
  %conv367 = zext i8 %148 to i32
  %cmp368 = icmp eq i32 %conv367, 0
  br i1 %cmp368, label %for.body.370, label %for.end.376

for.body.370:                                     ; preds = %for.cond.362
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.body.370
  %149 = load %union.rec*, %union.rec** %y, align 8
  %os1372 = bitcast %union.rec* %149 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 1
  %opred375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %opred375, align 8
  store %union.rec* %150, %union.rec** %y, align 8
  br label %for.cond.362

for.end.376:                                      ; preds = %for.cond.362
  %151 = load %union.rec*, %union.rec** %y, align 8
  %os1377 = bitcast %union.rec* %151 to %struct.word_type*
  %ou1378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 1
  %os11379 = bitcast %union.FIRST_UNION* %ou1378 to %struct.anon*
  %otype380 = getelementptr inbounds %struct.anon, %struct.anon* %os11379, i32 0, i32 0
  %152 = load i8, i8* %otype380, align 1
  %conv381 = zext i8 %152 to i32
  %cmp382 = icmp ne i32 %conv381, 1
  br i1 %cmp382, label %if.end.386, label %if.then.384

if.then.384:                                      ; preds = %for.end.376
  %153 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call385 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.384, %for.end.376
  %154 = load %union.rec*, %union.rec** %y, align 8
  %os1387 = bitcast %union.rec* %154 to %struct.word_type*
  %ou3388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1387, i32 0, i32 3
  %os31389 = bitcast %union.THIRD_UNION* %ou3388 to %struct.anon.6*
  %oback390 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x i32], [2 x i32]* %oback390, i32 0, i64 1
  %155 = load i32, i32* %arrayidx391, align 4
  %tobool392 = icmp ne i32 %155, 0
  br i1 %tobool392, label %if.end.421, label %land.lhs.true.393

land.lhs.true.393:                                ; preds = %if.end.386
  %156 = load %union.rec*, %union.rec** %y, align 8
  %os1394 = bitcast %union.rec* %156 to %struct.word_type*
  %ou3395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 3
  %os31396 = bitcast %union.THIRD_UNION* %ou3395 to %struct.anon.6*
  %oback397 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x i32], [2 x i32]* %oback397, i32 0, i64 0
  %157 = load i32, i32* %arrayidx398, align 4
  %158 = load %union.rec*, %union.rec** %y, align 8
  %os1399 = bitcast %union.rec* %158 to %struct.word_type*
  %ou3400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 3
  %os31401 = bitcast %union.THIRD_UNION* %ou3400 to %struct.anon.6*
  %ofwd402 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31401, i32 0, i32 1
  %arrayidx403 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd402, i32 0, i64 0
  %159 = load i32, i32* %arrayidx403, align 4
  %add404 = add nsw i32 %157, %159
  %160 = load i32, i32* %msize, align 4
  %cmp405 = icmp slt i32 %add404, %160
  br i1 %cmp405, label %if.then.409, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.393
  %161 = load %union.rec*, %union.rec** %my, align 8
  %cmp407 = icmp eq %union.rec* %161, null
  br i1 %cmp407, label %if.then.409, label %if.end.421

if.then.409:                                      ; preds = %lor.lhs.false, %land.lhs.true.393
  %162 = load %union.rec*, %union.rec** %y, align 8
  %os1410 = bitcast %union.rec* %162 to %struct.word_type*
  %ou3411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1410, i32 0, i32 3
  %os31412 = bitcast %union.THIRD_UNION* %ou3411 to %struct.anon.6*
  %oback413 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x i32], [2 x i32]* %oback413, i32 0, i64 0
  %163 = load i32, i32* %arrayidx414, align 4
  %164 = load %union.rec*, %union.rec** %y, align 8
  %os1415 = bitcast %union.rec* %164 to %struct.word_type*
  %ou3416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 3
  %os31417 = bitcast %union.THIRD_UNION* %ou3416 to %struct.anon.6*
  %ofwd418 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31417, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd418, i32 0, i64 0
  %165 = load i32, i32* %arrayidx419, align 4
  %add420 = add nsw i32 %163, %165
  store i32 %add420, i32* %msize, align 4
  %166 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %166, %union.rec** %my, align 8
  %167 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %167, %union.rec** %mlink, align 8
  store i32 0, i32* %ratm, align 4
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.409, %lor.lhs.false, %if.end.386
  %168 = load %union.rec*, %union.rec** %link, align 8
  %os1422 = bitcast %union.rec* %168 to %struct.word_type*
  %olist423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 0
  %arrayidx424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist423, i32 0, i64 0
  %osucc425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx424, i32 0, i32 1
  %169 = load %union.rec*, %union.rec** %osucc425, align 8
  store %union.rec* %169, %union.rec** %link, align 8
  %170 = load %union.rec*, %union.rec** %link, align 8
  %171 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp426 = icmp eq %union.rec* %170, %171
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.end.421
  br label %for.end.473

if.end.429:                                       ; preds = %if.end.421
  %172 = load %union.rec*, %union.rec** %link, align 8
  %os1430 = bitcast %union.rec* %172 to %struct.word_type*
  %olist431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1430, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist431, i32 0, i64 1
  %opred433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx432, i32 0, i32 0
  %173 = load %union.rec*, %union.rec** %opred433, align 8
  store %union.rec* %173, %union.rec** %g, align 8
  br label %for.cond.434

for.cond.434:                                     ; preds = %for.inc.443, %if.end.429
  %174 = load %union.rec*, %union.rec** %g, align 8
  %os1435 = bitcast %union.rec* %174 to %struct.word_type*
  %ou1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 1
  %os11437 = bitcast %union.FIRST_UNION* %ou1436 to %struct.anon*
  %otype438 = getelementptr inbounds %struct.anon, %struct.anon* %os11437, i32 0, i32 0
  %175 = load i8, i8* %otype438, align 1
  %conv439 = zext i8 %175 to i32
  %cmp440 = icmp eq i32 %conv439, 0
  br i1 %cmp440, label %for.body.442, label %for.end.448

for.body.442:                                     ; preds = %for.cond.434
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.body.442
  %176 = load %union.rec*, %union.rec** %g, align 8
  %os1444 = bitcast %union.rec* %176 to %struct.word_type*
  %olist445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1444, i32 0, i32 0
  %arrayidx446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist445, i32 0, i64 1
  %opred447 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx446, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %opred447, align 8
  store %union.rec* %177, %union.rec** %g, align 8
  br label %for.cond.434

for.end.448:                                      ; preds = %for.cond.434
  %178 = load %union.rec*, %union.rec** %g, align 8
  %os1449 = bitcast %union.rec* %178 to %struct.word_type*
  %ou1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 1
  %os11451 = bitcast %union.FIRST_UNION* %ou1450 to %struct.anon*
  %otype452 = getelementptr inbounds %struct.anon, %struct.anon* %os11451, i32 0, i32 0
  %179 = load i8, i8* %otype452, align 1
  %conv453 = zext i8 %179 to i32
  %cmp454 = icmp eq i32 %conv453, 1
  br i1 %cmp454, label %if.end.458, label %if.then.456

if.then.456:                                      ; preds = %for.end.448
  %180 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call457 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.456, %for.end.448
  %181 = load %union.rec*, %union.rec** %g, align 8
  %os5459 = bitcast %union.rec* %181 to %struct.gapobj_type*
  %ogap460 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5459, i32 0, i32 3
  %182 = bitcast %struct.GAP* %ogap460 to i16*
  %bf.load461 = load i16, i16* %182, align 4
  %bf.lshr462 = lshr i16 %bf.load461, 8
  %bf.clear463 = and i16 %bf.lshr462, 1
  %bf.cast464 = zext i16 %bf.clear463 to i32
  %tobool465 = icmp ne i32 %bf.cast464, 0
  br i1 %tobool465, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.458
  store i32 1, i32* %ratm, align 4
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.466, %if.end.458
  br label %for.inc.468

for.inc.468:                                      ; preds = %if.end.467
  %183 = load %union.rec*, %union.rec** %link, align 8
  %os1469 = bitcast %union.rec* %183 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 0
  %osucc472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 1
  %184 = load %union.rec*, %union.rec** %osucc472, align 8
  store %union.rec* %184, %union.rec** %link, align 8
  br label %for.cond.357

for.end.473:                                      ; preds = %if.then.428
  %185 = load %union.rec*, %union.rec** %mlink, align 8
  %186 = load i32, i32* %ratm, align 4
  call void @SetNeighbours(%union.rec* %185, i32 %186, %union.rec** %pg, %union.rec** %prec_def, %union.rec** %sg, %union.rec** %succ_def, i32* %mside)
  %187 = load %union.rec*, %union.rec** %pg, align 8
  %cmp474 = icmp eq %union.rec* %187, null
  br i1 %cmp474, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.473
  br label %cond.end.492

cond.false:                                       ; preds = %for.end.473
  %188 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1476 = bitcast %union.rec* %188 to %struct.word_type*
  %ou3477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 3
  %os31478 = bitcast %union.THIRD_UNION* %ou3477 to %struct.anon.6*
  %oback479 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31478, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [2 x i32], [2 x i32]* %oback479, i32 0, i64 1
  %189 = load i32, i32* %arrayidx480, align 4
  %tobool481 = icmp ne i32 %189, 0
  br i1 %tobool481, label %cond.true.482, label %cond.false.488

cond.true.482:                                    ; preds = %cond.false
  %190 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1483 = bitcast %union.rec* %190 to %struct.word_type*
  %ou3484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 3
  %os31485 = bitcast %union.THIRD_UNION* %ou3484 to %struct.anon.6*
  %ofwd486 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31485, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd486, i32 0, i64 0
  %191 = load i32, i32* %arrayidx487, align 4
  br label %cond.end

cond.false.488:                                   ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.488, %cond.true.482
  %cond = phi i32 [ %191, %cond.true.482 ], [ 0, %cond.false.488 ]
  %192 = load %union.rec*, %union.rec** %pg, align 8
  %os5489 = bitcast %union.rec* %192 to %struct.gapobj_type*
  %ogap490 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5489, i32 0, i32 3
  %call491 = call i32 @ExtraGap(i32 %cond, i32 0, %struct.GAP* %ogap490, i32 151)
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.end, %cond.true
  %cond493 = phi i32 [ 0, %cond.true ], [ %call491, %cond.end ]
  store i32 %cond493, i32* %pd_extra, align 4
  %193 = load %union.rec*, %union.rec** %sg, align 8
  %cmp494 = icmp eq %union.rec* %193, null
  br i1 %cmp494, label %cond.true.496, label %cond.false.497

cond.true.496:                                    ; preds = %cond.end.492
  br label %cond.end.516

cond.false.497:                                   ; preds = %cond.end.492
  %194 = load %union.rec*, %union.rec** %succ_def, align 8
  %os1498 = bitcast %union.rec* %194 to %struct.word_type*
  %ou3499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1498, i32 0, i32 3
  %os31500 = bitcast %union.THIRD_UNION* %ou3499 to %struct.anon.6*
  %oback501 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x i32], [2 x i32]* %oback501, i32 0, i64 1
  %195 = load i32, i32* %arrayidx502, align 4
  %tobool503 = icmp ne i32 %195, 0
  br i1 %tobool503, label %cond.true.504, label %cond.false.510

cond.true.504:                                    ; preds = %cond.false.497
  %196 = load %union.rec*, %union.rec** %succ_def, align 8
  %os1505 = bitcast %union.rec* %196 to %struct.word_type*
  %ou3506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 3
  %os31507 = bitcast %union.THIRD_UNION* %ou3506 to %struct.anon.6*
  %oback508 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x i32], [2 x i32]* %oback508, i32 0, i64 0
  %197 = load i32, i32* %arrayidx509, align 4
  br label %cond.end.511

cond.false.510:                                   ; preds = %cond.false.497
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.false.510, %cond.true.504
  %cond512 = phi i32 [ %197, %cond.true.504 ], [ 0, %cond.false.510 ]
  %198 = load %union.rec*, %union.rec** %sg, align 8
  %os5513 = bitcast %union.rec* %198 to %struct.gapobj_type*
  %ogap514 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5513, i32 0, i32 3
  %call515 = call i32 @ExtraGap(i32 0, i32 %cond512, %struct.GAP* %ogap514, i32 153)
  br label %cond.end.516

cond.end.516:                                     ; preds = %cond.end.511, %cond.true.496
  %cond517 = phi i32 [ 0, %cond.true.496 ], [ %call515, %cond.end.511 ]
  store i32 %cond517, i32* %sd_extra, align 4
  %199 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc518 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %199, i32 0, i32 1
  %200 = load i32, i32* %obfc518, align 4
  %201 = load i32, i32* %bwidth, align 4
  %sub = sub nsw i32 %200, %201
  %202 = load i32, i32* %fwidth, align 4
  %sub519 = sub nsw i32 %sub, %202
  %203 = load i32, i32* %bcount, align 4
  %204 = load i32, i32* %fcount, align 4
  %add520 = add nsw i32 %203, %204
  %div = sdiv i32 %sub519, %add520
  store i32 %div, i32* %av_colsize, align 4
  %205 = load i32, i32* %mside, align 4
  switch i32 %205, label %sw.default [
    i32 151, label %sw.bb
    i32 152, label %sw.bb.571
    i32 153, label %sw.bb.645
  ]

sw.bb:                                            ; preds = %cond.end.516
  %206 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc521 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %206, i32 0, i32 0
  %207 = load i32, i32* %obc521, align 4
  %208 = load i32, i32* %bwidth, align 4
  %209 = load i32, i32* %av_colsize, align 4
  %210 = load i32, i32* %bcount, align 4
  %mul = mul nsw i32 %209, %210
  %add522 = add nsw i32 %208, %mul
  %cmp523 = icmp slt i32 %207, %add522
  br i1 %cmp523, label %cond.true.525, label %cond.false.527

cond.true.525:                                    ; preds = %sw.bb
  %211 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc526 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %211, i32 0, i32 0
  %212 = load i32, i32* %obc526, align 4
  br label %cond.end.530

cond.false.527:                                   ; preds = %sw.bb
  %213 = load i32, i32* %bwidth, align 4
  %214 = load i32, i32* %av_colsize, align 4
  %215 = load i32, i32* %bcount, align 4
  %mul528 = mul nsw i32 %214, %215
  %add529 = add nsw i32 %213, %mul528
  br label %cond.end.530

cond.end.530:                                     ; preds = %cond.false.527, %cond.true.525
  %cond531 = phi i32 [ %212, %cond.true.525 ], [ %add529, %cond.false.527 ]
  store i32 %cond531, i32* %back_max, align 4
  %216 = load i32, i32* %back_max, align 4
  %217 = load i32, i32* %bwidth, align 4
  %sub532 = sub nsw i32 %216, %217
  %218 = load i32, i32* %bcount, align 4
  %div533 = sdiv i32 %sub532, %218
  store i32 %div533, i32* %col_size, align 4
  %219 = load i32, i32* %col_size, align 4
  %220 = load i32, i32* %prev_col_size, align 4
  %cmp534 = icmp sgt i32 %219, %220
  br i1 %cmp534, label %land.lhs.true.536, label %if.end.541

land.lhs.true.536:                                ; preds = %cond.end.530
  %221 = load i32, i32* %col_size, align 4
  %222 = load i32, i32* %prev_col_size, align 4
  %sub537 = sub nsw i32 %221, %222
  %cmp538 = icmp slt i32 %sub537, 20
  br i1 %cmp538, label %if.then.540, label %if.end.541

if.then.540:                                      ; preds = %land.lhs.true.536
  %223 = load i32, i32* %prev_col_size, align 4
  store i32 %223, i32* %col_size, align 4
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.540, %land.lhs.true.536, %cond.end.530
  %224 = load i32, i32* %col_size, align 4
  %225 = load i32, i32* %pd_extra, align 4
  %add542 = add nsw i32 %224, %225
  %cmp543 = icmp slt i32 8388607, %add542
  br i1 %cmp543, label %cond.true.545, label %cond.false.546

cond.true.545:                                    ; preds = %if.end.541
  br label %cond.end.548

cond.false.546:                                   ; preds = %if.end.541
  %226 = load i32, i32* %col_size, align 4
  %227 = load i32, i32* %pd_extra, align 4
  %add547 = add nsw i32 %226, %227
  br label %cond.end.548

cond.end.548:                                     ; preds = %cond.false.546, %cond.true.545
  %cond549 = phi i32 [ 8388607, %cond.true.545 ], [ %add547, %cond.false.546 ]
  %obc550 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 0
  store i32 %cond549, i32* %obc550, align 4
  %228 = load i32, i32* %col_size, align 4
  %229 = load i32, i32* %pd_extra, align 4
  %add551 = add nsw i32 %228, %229
  %230 = load i32, i32* %sd_extra, align 4
  %add552 = add nsw i32 %add551, %230
  %cmp553 = icmp slt i32 8388607, %add552
  br i1 %cmp553, label %cond.true.555, label %cond.false.556

cond.true.555:                                    ; preds = %cond.end.548
  br label %cond.end.559

cond.false.556:                                   ; preds = %cond.end.548
  %231 = load i32, i32* %col_size, align 4
  %232 = load i32, i32* %pd_extra, align 4
  %add557 = add nsw i32 %231, %232
  %233 = load i32, i32* %sd_extra, align 4
  %add558 = add nsw i32 %add557, %233
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.556, %cond.true.555
  %cond560 = phi i32 [ 8388607, %cond.true.555 ], [ %add558, %cond.false.556 ]
  %obfc561 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 1
  store i32 %cond560, i32* %obfc561, align 4
  %234 = load i32, i32* %col_size, align 4
  %235 = load i32, i32* %sd_extra, align 4
  %add562 = add nsw i32 %234, %235
  %cmp563 = icmp slt i32 8388607, %add562
  br i1 %cmp563, label %cond.true.565, label %cond.false.566

cond.true.565:                                    ; preds = %cond.end.559
  br label %cond.end.568

cond.false.566:                                   ; preds = %cond.end.559
  %236 = load i32, i32* %col_size, align 4
  %237 = load i32, i32* %sd_extra, align 4
  %add567 = add nsw i32 %236, %237
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.566, %cond.true.565
  %cond569 = phi i32 [ 8388607, %cond.true.565 ], [ %add567, %cond.false.566 ]
  %ofc570 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 2
  store i32 %cond569, i32* %ofc570, align 4
  br label %sw.epilog

sw.bb.571:                                        ; preds = %cond.end.516
  %238 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc572 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %238, i32 0, i32 2
  %239 = load i32, i32* %ofc572, align 4
  %240 = load i32, i32* %fwidth, align 4
  %241 = load i32, i32* %av_colsize, align 4
  %242 = load i32, i32* %fcount, align 4
  %mul573 = mul nsw i32 %241, %242
  %add574 = add nsw i32 %240, %mul573
  %cmp575 = icmp slt i32 %239, %add574
  br i1 %cmp575, label %cond.true.577, label %cond.false.579

cond.true.577:                                    ; preds = %sw.bb.571
  %243 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc578 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %243, i32 0, i32 2
  %244 = load i32, i32* %ofc578, align 4
  br label %cond.end.582

cond.false.579:                                   ; preds = %sw.bb.571
  %245 = load i32, i32* %fwidth, align 4
  %246 = load i32, i32* %av_colsize, align 4
  %247 = load i32, i32* %fcount, align 4
  %mul580 = mul nsw i32 %246, %247
  %add581 = add nsw i32 %245, %mul580
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.579, %cond.true.577
  %cond583 = phi i32 [ %244, %cond.true.577 ], [ %add581, %cond.false.579 ]
  store i32 %cond583, i32* %fwd_max, align 4
  %248 = load i32, i32* %fwd_max, align 4
  %249 = load i32, i32* %fwidth, align 4
  %sub584 = sub nsw i32 %248, %249
  %250 = load i32, i32* %fcount, align 4
  %div585 = sdiv i32 %sub584, %250
  store i32 %div585, i32* %col_size, align 4
  %251 = load i32, i32* %col_size, align 4
  %252 = load i32, i32* %prev_col_size, align 4
  %cmp586 = icmp sgt i32 %251, %252
  br i1 %cmp586, label %land.lhs.true.588, label %if.end.593

land.lhs.true.588:                                ; preds = %cond.end.582
  %253 = load i32, i32* %col_size, align 4
  %254 = load i32, i32* %prev_col_size, align 4
  %sub589 = sub nsw i32 %253, %254
  %cmp590 = icmp slt i32 %sub589, 20
  br i1 %cmp590, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %land.lhs.true.588
  %255 = load i32, i32* %prev_col_size, align 4
  store i32 %255, i32* %col_size, align 4
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.592, %land.lhs.true.588, %cond.end.582
  %256 = load i32, i32* %pd_extra, align 4
  %257 = load %union.rec*, %union.rec** %my, align 8
  %os1594 = bitcast %union.rec* %257 to %struct.word_type*
  %ou3595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1594, i32 0, i32 3
  %os31596 = bitcast %union.THIRD_UNION* %ou3595 to %struct.anon.6*
  %oback597 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x i32], [2 x i32]* %oback597, i32 0, i64 0
  %258 = load i32, i32* %arrayidx598, align 4
  %add599 = add nsw i32 %256, %258
  %cmp600 = icmp slt i32 8388607, %add599
  br i1 %cmp600, label %cond.true.602, label %cond.false.603

cond.true.602:                                    ; preds = %if.end.593
  br label %cond.end.610

cond.false.603:                                   ; preds = %if.end.593
  %259 = load i32, i32* %pd_extra, align 4
  %260 = load %union.rec*, %union.rec** %my, align 8
  %os1604 = bitcast %union.rec* %260 to %struct.word_type*
  %ou3605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 3
  %os31606 = bitcast %union.THIRD_UNION* %ou3605 to %struct.anon.6*
  %oback607 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x i32], [2 x i32]* %oback607, i32 0, i64 0
  %261 = load i32, i32* %arrayidx608, align 4
  %add609 = add nsw i32 %259, %261
  br label %cond.end.610

cond.end.610:                                     ; preds = %cond.false.603, %cond.true.602
  %cond611 = phi i32 [ 8388607, %cond.true.602 ], [ %add609, %cond.false.603 ]
  %obc612 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 0
  store i32 %cond611, i32* %obc612, align 4
  %262 = load i32, i32* %pd_extra, align 4
  %263 = load %union.rec*, %union.rec** %my, align 8
  %os1613 = bitcast %union.rec* %263 to %struct.word_type*
  %ou3614 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1613, i32 0, i32 3
  %os31615 = bitcast %union.THIRD_UNION* %ou3614 to %struct.anon.6*
  %oback616 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31615, i32 0, i32 0
  %arrayidx617 = getelementptr inbounds [2 x i32], [2 x i32]* %oback616, i32 0, i64 0
  %264 = load i32, i32* %arrayidx617, align 4
  %add618 = add nsw i32 %262, %264
  %265 = load i32, i32* %col_size, align 4
  %add619 = add nsw i32 %add618, %265
  %266 = load i32, i32* %sd_extra, align 4
  %add620 = add nsw i32 %add619, %266
  %cmp621 = icmp slt i32 8388607, %add620
  br i1 %cmp621, label %cond.true.623, label %cond.false.624

cond.true.623:                                    ; preds = %cond.end.610
  br label %cond.end.633

cond.false.624:                                   ; preds = %cond.end.610
  %267 = load i32, i32* %pd_extra, align 4
  %268 = load %union.rec*, %union.rec** %my, align 8
  %os1625 = bitcast %union.rec* %268 to %struct.word_type*
  %ou3626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1625, i32 0, i32 3
  %os31627 = bitcast %union.THIRD_UNION* %ou3626 to %struct.anon.6*
  %oback628 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31627, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [2 x i32], [2 x i32]* %oback628, i32 0, i64 0
  %269 = load i32, i32* %arrayidx629, align 4
  %add630 = add nsw i32 %267, %269
  %270 = load i32, i32* %col_size, align 4
  %add631 = add nsw i32 %add630, %270
  %271 = load i32, i32* %sd_extra, align 4
  %add632 = add nsw i32 %add631, %271
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.624, %cond.true.623
  %cond634 = phi i32 [ 8388607, %cond.true.623 ], [ %add632, %cond.false.624 ]
  %obfc635 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 1
  store i32 %cond634, i32* %obfc635, align 4
  %272 = load i32, i32* %col_size, align 4
  %273 = load i32, i32* %sd_extra, align 4
  %add636 = add nsw i32 %272, %273
  %cmp637 = icmp slt i32 8388607, %add636
  br i1 %cmp637, label %cond.true.639, label %cond.false.640

cond.true.639:                                    ; preds = %cond.end.633
  br label %cond.end.642

cond.false.640:                                   ; preds = %cond.end.633
  %274 = load i32, i32* %col_size, align 4
  %275 = load i32, i32* %sd_extra, align 4
  %add641 = add nsw i32 %274, %275
  br label %cond.end.642

cond.end.642:                                     ; preds = %cond.false.640, %cond.true.639
  %cond643 = phi i32 [ 8388607, %cond.true.639 ], [ %add641, %cond.false.640 ]
  %ofc644 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 2
  store i32 %cond643, i32* %ofc644, align 4
  br label %sw.epilog

sw.bb.645:                                        ; preds = %cond.end.516
  %276 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc646 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %276, i32 0, i32 2
  %277 = load i32, i32* %ofc646, align 4
  %278 = load i32, i32* %fwidth, align 4
  %279 = load i32, i32* %av_colsize, align 4
  %280 = load i32, i32* %fcount, align 4
  %mul647 = mul nsw i32 %279, %280
  %add648 = add nsw i32 %278, %mul647
  %cmp649 = icmp slt i32 %277, %add648
  br i1 %cmp649, label %cond.true.651, label %cond.false.653

cond.true.651:                                    ; preds = %sw.bb.645
  %281 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc652 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %281, i32 0, i32 2
  %282 = load i32, i32* %ofc652, align 4
  br label %cond.end.656

cond.false.653:                                   ; preds = %sw.bb.645
  %283 = load i32, i32* %fwidth, align 4
  %284 = load i32, i32* %av_colsize, align 4
  %285 = load i32, i32* %fcount, align 4
  %mul654 = mul nsw i32 %284, %285
  %add655 = add nsw i32 %283, %mul654
  br label %cond.end.656

cond.end.656:                                     ; preds = %cond.false.653, %cond.true.651
  %cond657 = phi i32 [ %282, %cond.true.651 ], [ %add655, %cond.false.653 ]
  store i32 %cond657, i32* %fwd_max, align 4
  %286 = load i32, i32* %fwd_max, align 4
  %287 = load i32, i32* %fwidth, align 4
  %sub658 = sub nsw i32 %286, %287
  %288 = load i32, i32* %fcount, align 4
  %div659 = sdiv i32 %sub658, %288
  store i32 %div659, i32* %col_size, align 4
  %289 = load i32, i32* %col_size, align 4
  %290 = load i32, i32* %prev_col_size, align 4
  %cmp660 = icmp sgt i32 %289, %290
  br i1 %cmp660, label %land.lhs.true.662, label %if.end.667

land.lhs.true.662:                                ; preds = %cond.end.656
  %291 = load i32, i32* %col_size, align 4
  %292 = load i32, i32* %prev_col_size, align 4
  %sub663 = sub nsw i32 %291, %292
  %cmp664 = icmp slt i32 %sub663, 20
  br i1 %cmp664, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %land.lhs.true.662
  %293 = load i32, i32* %prev_col_size, align 4
  store i32 %293, i32* %col_size, align 4
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.666, %land.lhs.true.662, %cond.end.656
  %294 = load i32, i32* %col_size, align 4
  %295 = load i32, i32* %pd_extra, align 4
  %add668 = add nsw i32 %294, %295
  %cmp669 = icmp slt i32 8388607, %add668
  br i1 %cmp669, label %cond.true.671, label %cond.false.672

cond.true.671:                                    ; preds = %if.end.667
  br label %cond.end.674

cond.false.672:                                   ; preds = %if.end.667
  %296 = load i32, i32* %col_size, align 4
  %297 = load i32, i32* %pd_extra, align 4
  %add673 = add nsw i32 %296, %297
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.672, %cond.true.671
  %cond675 = phi i32 [ 8388607, %cond.true.671 ], [ %add673, %cond.false.672 ]
  %obc676 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 0
  store i32 %cond675, i32* %obc676, align 4
  %298 = load i32, i32* %col_size, align 4
  %299 = load i32, i32* %pd_extra, align 4
  %add677 = add nsw i32 %298, %299
  %300 = load i32, i32* %sd_extra, align 4
  %add678 = add nsw i32 %add677, %300
  %cmp679 = icmp slt i32 8388607, %add678
  br i1 %cmp679, label %cond.true.681, label %cond.false.682

cond.true.681:                                    ; preds = %cond.end.674
  br label %cond.end.685

cond.false.682:                                   ; preds = %cond.end.674
  %301 = load i32, i32* %col_size, align 4
  %302 = load i32, i32* %pd_extra, align 4
  %add683 = add nsw i32 %301, %302
  %303 = load i32, i32* %sd_extra, align 4
  %add684 = add nsw i32 %add683, %303
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.682, %cond.true.681
  %cond686 = phi i32 [ 8388607, %cond.true.681 ], [ %add684, %cond.false.682 ]
  %obfc687 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 1
  store i32 %cond686, i32* %obfc687, align 4
  %304 = load i32, i32* %col_size, align 4
  %305 = load i32, i32* %sd_extra, align 4
  %add688 = add nsw i32 %304, %305
  %cmp689 = icmp slt i32 8388607, %add688
  br i1 %cmp689, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %cond.end.685
  br label %cond.end.694

cond.false.692:                                   ; preds = %cond.end.685
  %306 = load i32, i32* %col_size, align 4
  %307 = load i32, i32* %sd_extra, align 4
  %add693 = add nsw i32 %306, %307
  br label %cond.end.694

cond.end.694:                                     ; preds = %cond.false.692, %cond.true.691
  %cond695 = phi i32 [ 8388607, %cond.true.691 ], [ %add693, %cond.false.692 ]
  %ofc696 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 2
  store i32 %cond695, i32* %ofc696, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.516
  %308 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call697 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %308, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.694, %cond.end.642, %cond.end.568
  %309 = load i32, i32* %col_size, align 4
  store i32 %309, i32* %prev_col_size, align 4
  %310 = load %union.rec*, %union.rec** %my, align 8
  %call698 = call %union.rec* @BreakObject(%union.rec* %310, %struct.CONSTRAINT* %mc)
  store %union.rec* %call698, %union.rec** %my, align 8
  %311 = load %union.rec*, %union.rec** %my, align 8
  %os1699 = bitcast %union.rec* %311 to %struct.word_type*
  %ou3700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 3
  %os31701 = bitcast %union.THIRD_UNION* %ou3700 to %struct.anon.6*
  %oback702 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x i32], [2 x i32]* %oback702, i32 0, i64 1
  store i32 1, i32* %arrayidx703, align 4
  %312 = load %union.rec*, %union.rec** %pg, align 8
  %cmp704 = icmp ne %union.rec* %312, null
  br i1 %cmp704, label %if.then.706, label %if.else.739

if.then.706:                                      ; preds = %sw.epilog
  %313 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1707 = bitcast %union.rec* %313 to %struct.word_type*
  %ou3708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1707, i32 0, i32 3
  %os31709 = bitcast %union.THIRD_UNION* %ou3708 to %struct.anon.6*
  %oback710 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x i32], [2 x i32]* %oback710, i32 0, i64 1
  %314 = load i32, i32* %arrayidx711, align 4
  %tobool712 = icmp ne i32 %314, 0
  br i1 %tobool712, label %cond.true.713, label %cond.false.719

cond.true.713:                                    ; preds = %if.then.706
  %315 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1714 = bitcast %union.rec* %315 to %struct.word_type*
  %ou3715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1714, i32 0, i32 3
  %os31716 = bitcast %union.THIRD_UNION* %ou3715 to %struct.anon.6*
  %ofwd717 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31716, i32 0, i32 1
  %arrayidx718 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd717, i32 0, i64 0
  %316 = load i32, i32* %arrayidx718, align 4
  br label %cond.end.720

cond.false.719:                                   ; preds = %if.then.706
  br label %cond.end.720

cond.end.720:                                     ; preds = %cond.false.719, %cond.true.713
  %cond721 = phi i32 [ %316, %cond.true.713 ], [ 0, %cond.false.719 ]
  store i32 %cond721, i32* %tmp, align 4
  %317 = load i32, i32* %tmp, align 4
  %318 = load %union.rec*, %union.rec** %my, align 8
  %os1722 = bitcast %union.rec* %318 to %struct.word_type*
  %ou3723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1722, i32 0, i32 3
  %os31724 = bitcast %union.THIRD_UNION* %ou3723 to %struct.anon.6*
  %oback725 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31724, i32 0, i32 0
  %arrayidx726 = getelementptr inbounds [2 x i32], [2 x i32]* %oback725, i32 0, i64 0
  %319 = load i32, i32* %arrayidx726, align 4
  %320 = load %union.rec*, %union.rec** %my, align 8
  %os1727 = bitcast %union.rec* %320 to %struct.word_type*
  %ou3728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1727, i32 0, i32 3
  %os31729 = bitcast %union.THIRD_UNION* %ou3728 to %struct.anon.6*
  %ofwd730 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31729, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd730, i32 0, i64 0
  %321 = load i32, i32* %arrayidx731, align 4
  %322 = load %union.rec*, %union.rec** %pg, align 8
  %os5732 = bitcast %union.rec* %322 to %struct.gapobj_type*
  %ogap733 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5732, i32 0, i32 3
  %call734 = call i32 @MinGap(i32 %317, i32 %319, i32 %321, %struct.GAP* %ogap733)
  %323 = load i32, i32* %tmp, align 4
  %324 = load %union.rec*, %union.rec** %pg, align 8
  %os5735 = bitcast %union.rec* %324 to %struct.gapobj_type*
  %ogap736 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5735, i32 0, i32 3
  %call737 = call i32 @MinGap(i32 %323, i32 0, i32 0, %struct.GAP* %ogap736)
  %sub738 = sub nsw i32 %call734, %call737
  store i32 %sub738, i32* %beffect, align 4
  br label %if.end.745

if.else.739:                                      ; preds = %sw.epilog
  %325 = load %union.rec*, %union.rec** %my, align 8
  %os1740 = bitcast %union.rec* %325 to %struct.word_type*
  %ou3741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1740, i32 0, i32 3
  %os31742 = bitcast %union.THIRD_UNION* %ou3741 to %struct.anon.6*
  %oback743 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x i32], [2 x i32]* %oback743, i32 0, i64 0
  %326 = load i32, i32* %arrayidx744, align 4
  store i32 %326, i32* %beffect, align 4
  br label %if.end.745

if.end.745:                                       ; preds = %if.else.739, %cond.end.720
  %327 = load %union.rec*, %union.rec** %sg, align 8
  %cmp746 = icmp ne %union.rec* %327, null
  br i1 %cmp746, label %if.then.748, label %if.else.791

if.then.748:                                      ; preds = %if.end.745
  %328 = load %union.rec*, %union.rec** %succ_def, align 8
  %os1749 = bitcast %union.rec* %328 to %struct.word_type*
  %ou3750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1749, i32 0, i32 3
  %os31751 = bitcast %union.THIRD_UNION* %ou3750 to %struct.anon.6*
  %oback752 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31751, i32 0, i32 0
  %arrayidx753 = getelementptr inbounds [2 x i32], [2 x i32]* %oback752, i32 0, i64 1
  %329 = load i32, i32* %arrayidx753, align 4
  %tobool754 = icmp ne i32 %329, 0
  br i1 %tobool754, label %cond.true.755, label %cond.false.761

cond.true.755:                                    ; preds = %if.then.748
  %330 = load %union.rec*, %union.rec** %succ_def, align 8
  %os1756 = bitcast %union.rec* %330 to %struct.word_type*
  %ou3757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1756, i32 0, i32 3
  %os31758 = bitcast %union.THIRD_UNION* %ou3757 to %struct.anon.6*
  %oback759 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31758, i32 0, i32 0
  %arrayidx760 = getelementptr inbounds [2 x i32], [2 x i32]* %oback759, i32 0, i64 0
  %331 = load i32, i32* %arrayidx760, align 4
  br label %cond.end.762

cond.false.761:                                   ; preds = %if.then.748
  br label %cond.end.762

cond.end.762:                                     ; preds = %cond.false.761, %cond.true.755
  %cond763 = phi i32 [ %331, %cond.true.755 ], [ 0, %cond.false.761 ]
  store i32 %cond763, i32* %tmp, align 4
  %332 = load %union.rec*, %union.rec** %succ_def, align 8
  %os1764 = bitcast %union.rec* %332 to %struct.word_type*
  %ou3765 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1764, i32 0, i32 3
  %os31766 = bitcast %union.THIRD_UNION* %ou3765 to %struct.anon.6*
  %oback767 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31766, i32 0, i32 0
  %arrayidx768 = getelementptr inbounds [2 x i32], [2 x i32]* %oback767, i32 0, i64 1
  %333 = load i32, i32* %arrayidx768, align 4
  %tobool769 = icmp ne i32 %333, 0
  br i1 %tobool769, label %cond.true.770, label %cond.false.776

cond.true.770:                                    ; preds = %cond.end.762
  %334 = load %union.rec*, %union.rec** %succ_def, align 8
  %os1771 = bitcast %union.rec* %334 to %struct.word_type*
  %ou3772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1771, i32 0, i32 3
  %os31773 = bitcast %union.THIRD_UNION* %ou3772 to %struct.anon.6*
  %ofwd774 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31773, i32 0, i32 1
  %arrayidx775 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd774, i32 0, i64 0
  %335 = load i32, i32* %arrayidx775, align 4
  br label %cond.end.777

cond.false.776:                                   ; preds = %cond.end.762
  br label %cond.end.777

cond.end.777:                                     ; preds = %cond.false.776, %cond.true.770
  %cond778 = phi i32 [ %335, %cond.true.770 ], [ 0, %cond.false.776 ]
  store i32 %cond778, i32* %tmp2, align 4
  %336 = load %union.rec*, %union.rec** %my, align 8
  %os1779 = bitcast %union.rec* %336 to %struct.word_type*
  %ou3780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1779, i32 0, i32 3
  %os31781 = bitcast %union.THIRD_UNION* %ou3780 to %struct.anon.6*
  %ofwd782 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31781, i32 0, i32 1
  %arrayidx783 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd782, i32 0, i64 0
  %337 = load i32, i32* %arrayidx783, align 4
  %338 = load i32, i32* %tmp, align 4
  %339 = load i32, i32* %tmp2, align 4
  %340 = load %union.rec*, %union.rec** %sg, align 8
  %os5784 = bitcast %union.rec* %340 to %struct.gapobj_type*
  %ogap785 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5784, i32 0, i32 3
  %call786 = call i32 @MinGap(i32 %337, i32 %338, i32 %339, %struct.GAP* %ogap785)
  %341 = load i32, i32* %tmp, align 4
  %342 = load i32, i32* %tmp2, align 4
  %343 = load %union.rec*, %union.rec** %sg, align 8
  %os5787 = bitcast %union.rec* %343 to %struct.gapobj_type*
  %ogap788 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5787, i32 0, i32 3
  %call789 = call i32 @MinGap(i32 0, i32 %341, i32 %342, %struct.GAP* %ogap788)
  %sub790 = sub nsw i32 %call786, %call789
  store i32 %sub790, i32* %feffect, align 4
  br label %if.end.797

if.else.791:                                      ; preds = %if.end.745
  %344 = load %union.rec*, %union.rec** %my, align 8
  %os1792 = bitcast %union.rec* %344 to %struct.word_type*
  %ou3793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 3
  %os31794 = bitcast %union.THIRD_UNION* %ou3793 to %struct.anon.6*
  %ofwd795 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31794, i32 0, i32 1
  %arrayidx796 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd795, i32 0, i64 0
  %345 = load i32, i32* %arrayidx796, align 4
  store i32 %345, i32* %feffect, align 4
  br label %if.end.797

if.end.797:                                       ; preds = %if.else.791, %cond.end.777
  %346 = load i32, i32* %mside, align 4
  switch i32 %346, label %sw.default.809 [
    i32 151, label %sw.bb.798
    i32 152, label %sw.bb.801
    i32 153, label %sw.bb.805
  ]

sw.bb.798:                                        ; preds = %if.end.797
  %347 = load i32, i32* %beffect, align 4
  %348 = load i32, i32* %feffect, align 4
  %add799 = add nsw i32 %347, %348
  %349 = load i32, i32* %bwidth, align 4
  %add800 = add nsw i32 %349, %add799
  store i32 %add800, i32* %bwidth, align 4
  %350 = load i32, i32* %bcount, align 4
  %dec = add nsw i32 %350, -1
  store i32 %dec, i32* %bcount, align 4
  br label %sw.epilog.811

sw.bb.801:                                        ; preds = %if.end.797
  %351 = load i32, i32* %beffect, align 4
  %352 = load i32, i32* %bwidth, align 4
  %add802 = add nsw i32 %352, %351
  store i32 %add802, i32* %bwidth, align 4
  %353 = load i32, i32* %feffect, align 4
  %354 = load i32, i32* %fwidth, align 4
  %add803 = add nsw i32 %354, %353
  store i32 %add803, i32* %fwidth, align 4
  %355 = load i32, i32* %fcount, align 4
  %dec804 = add nsw i32 %355, -1
  store i32 %dec804, i32* %fcount, align 4
  br label %sw.epilog.811

sw.bb.805:                                        ; preds = %if.end.797
  %356 = load i32, i32* %beffect, align 4
  %357 = load i32, i32* %feffect, align 4
  %add806 = add nsw i32 %356, %357
  %358 = load i32, i32* %fwidth, align 4
  %add807 = add nsw i32 %358, %add806
  store i32 %add807, i32* %fwidth, align 4
  %359 = load i32, i32* %fcount, align 4
  %dec808 = add nsw i32 %359, -1
  store i32 %dec808, i32* %fcount, align 4
  br label %sw.epilog.811

sw.default.809:                                   ; preds = %if.end.797
  %360 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call810 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  br label %sw.epilog.811

sw.epilog.811:                                    ; preds = %sw.default.809, %sw.bb.805, %sw.bb.801, %sw.bb.798
  br label %while.cond

while.end:                                        ; preds = %land.end.341
  %361 = load i32, i32* %bwidth, align 4
  %362 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1812 = bitcast %union.rec* %362 to %struct.word_type*
  %ou3813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1812, i32 0, i32 3
  %os31814 = bitcast %union.THIRD_UNION* %ou3813 to %struct.anon.6*
  %oback815 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31814, i32 0, i32 0
  %arrayidx816 = getelementptr inbounds [2 x i32], [2 x i32]* %oback815, i32 0, i64 0
  store i32 %361, i32* %arrayidx816, align 4
  %363 = load i32, i32* %fwidth, align 4
  %364 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1817 = bitcast %union.rec* %364 to %struct.word_type*
  %ou3818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1817, i32 0, i32 3
  %os31819 = bitcast %union.THIRD_UNION* %ou3818 to %struct.anon.6*
  %ofwd820 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31819, i32 0, i32 1
  %arrayidx821 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd820, i32 0, i64 0
  store i32 %363, i32* %arrayidx821, align 4
  %365 = load %union.rec*, %union.rec** %x.addr, align 8
  ret %union.rec* %365
}

; Function Attrs: nounwind uwtable
define internal void @BreakJoinedGroup(%union.rec* %start, %union.rec* %stop, %union.rec* %m, %struct.CONSTRAINT* %c, i32* %res_back, i32* %res_fwd) #0 {
entry:
  %start.addr = alloca %union.rec*, align 8
  %stop.addr = alloca %union.rec*, align 8
  %m.addr = alloca %union.rec*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %res_back.addr = alloca i32*, align 8
  %res_fwd.addr = alloca i32*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %b = alloca i32, align 4
  %f = alloca i32, align 4
  %sb = alloca i32, align 4
  %sf = alloca i32, align 4
  %yc = alloca %struct.CONSTRAINT, align 4
  store %union.rec* %start, %union.rec** %start.addr, align 8
  store %union.rec* %stop, %union.rec** %stop.addr, align 8
  store %union.rec* %m, %union.rec** %m.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  store i32* %res_back, i32** %res_back.addr, align 8
  store i32* %res_fwd, i32** %res_fwd.addr, align 8
  store i32 0, i32* %sf, align 4
  store i32 0, i32* %sb, align 4
  %0 = load %union.rec*, %union.rec** %start.addr, align 8
  store %union.rec* %0, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %entry
  %1 = load %union.rec*, %union.rec** %link, align 8
  %2 = load %union.rec*, %union.rec** %stop.addr, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %3 = load %union.rec*, %union.rec** %osucc, align 8
  %cmp = icmp ne %union.rec* %1, %3
  br i1 %cmp, label %for.body, label %for.end.57

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
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os1116 = bitcast %union.FIRST_UNION* %ou115 to %struct.anon*
  %otype17 = getelementptr inbounds %struct.anon, %struct.anon* %os1116, i32 0, i32 0
  %11 = load i8, i8* %otype17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp sge i32 %conv18, 9
  br i1 %cmp19, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.end
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os121 = bitcast %union.rec* %12 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %13 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %13 to i32
  %cmp26 = icmp sle i32 %conv25, 99
  br i1 %cmp26, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.end
  br label %for.inc.52

if.end:                                           ; preds = %land.lhs.true
  %14 = load i32, i32* %sb, align 4
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os128 = bitcast %union.rec* %15 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %16 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp slt i32 %14, %16
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os132 = bitcast %union.rec* %17 to %struct.word_type*
  %ou333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 3
  %os3134 = bitcast %union.THIRD_UNION* %ou333 to %struct.anon.6*
  %oback35 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3134, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %oback35, i32 0, i64 0
  %18 = load i32, i32* %arrayidx36, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %19 = load i32, i32* %sb, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %sb, align 4
  %20 = load i32, i32* %sf, align 4
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os137 = bitcast %union.rec* %21 to %struct.word_type*
  %ou338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 3
  %os3139 = bitcast %union.THIRD_UNION* %ou338 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3139, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %22 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp slt i32 %20, %22
  br i1 %cmp41, label %cond.true.43, label %cond.false.49

cond.true.43:                                     ; preds = %cond.end
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os144 = bitcast %union.rec* %23 to %struct.word_type*
  %ou345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 3
  %os3146 = bitcast %union.THIRD_UNION* %ou345 to %struct.anon.6*
  %ofwd47 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3146, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd47, i32 0, i64 0
  %24 = load i32, i32* %arrayidx48, align 4
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end
  %25 = load i32, i32* %sf, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.43
  %cond51 = phi i32 [ %24, %cond.true.43 ], [ %25, %cond.false.49 ]
  store i32 %cond51, i32* %sf, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %cond.end.50, %if.then
  %26 = load %union.rec*, %union.rec** %link, align 8
  %os153 = bitcast %union.rec* %26 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 0
  %osucc56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 1
  %27 = load %union.rec*, %union.rec** %osucc56, align 8
  store %union.rec* %27, %union.rec** %link, align 8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %28 = load i32, i32* %sb, align 4
  %29 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %29, i32 0, i32 0
  %30 = load i32, i32* %obc, align 4
  %cmp58 = icmp sle i32 %28, %30
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %for.end.57
  %31 = load i32, i32* %sb, align 4
  store i32 %31, i32* %b, align 4
  store i32 0, i32* %f, align 4
  br label %if.end.61

if.else:                                          ; preds = %for.end.57
  store i32 0, i32* %b, align 4
  store i32 0, i32* %f, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.60
  %32 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc62 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %32, i32 0, i32 0
  %33 = load i32, i32* %obc62, align 4
  %34 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %34, i32 0, i32 1
  %35 = load i32, i32* %obfc, align 4
  %36 = load i32, i32* %f, align 4
  %sub = sub nsw i32 %35, %36
  %cmp63 = icmp slt i32 %33, %sub
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %if.end.61
  %37 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc66 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %37, i32 0, i32 0
  %38 = load i32, i32* %obc66, align 4
  br label %cond.end.70

cond.false.67:                                    ; preds = %if.end.61
  %39 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc68 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %39, i32 0, i32 1
  %40 = load i32, i32* %obfc68, align 4
  %41 = load i32, i32* %f, align 4
  %sub69 = sub nsw i32 %40, %41
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.true.65
  %cond71 = phi i32 [ %38, %cond.true.65 ], [ %sub69, %cond.false.67 ]
  %obc72 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %cond71, i32* %obc72, align 4
  %42 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc73 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %42, i32 0, i32 1
  %43 = load i32, i32* %obfc73, align 4
  %obfc74 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %43, i32* %obfc74, align 4
  %44 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %44, i32 0, i32 2
  %45 = load i32, i32* %ofc, align 4
  %46 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc75 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %46, i32 0, i32 1
  %47 = load i32, i32* %obfc75, align 4
  %48 = load i32, i32* %b, align 4
  %sub76 = sub nsw i32 %47, %48
  %cmp77 = icmp slt i32 %45, %sub76
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.end.70
  %49 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc80 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %49, i32 0, i32 2
  %50 = load i32, i32* %ofc80, align 4
  br label %cond.end.84

cond.false.81:                                    ; preds = %cond.end.70
  %51 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc82 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %51, i32 0, i32 1
  %52 = load i32, i32* %obfc82, align 4
  %53 = load i32, i32* %b, align 4
  %sub83 = sub nsw i32 %52, %53
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.81, %cond.true.79
  %cond85 = phi i32 [ %50, %cond.true.79 ], [ %sub83, %cond.false.81 ]
  %ofc86 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %cond85, i32* %ofc86, align 4
  %54 = load %union.rec*, %union.rec** %m.addr, align 8
  %cmp87 = icmp ne %union.rec* %54, null
  br i1 %cmp87, label %if.then.89, label %if.else.128

if.then.89:                                       ; preds = %cond.end.84
  %55 = load %union.rec*, %union.rec** %m.addr, align 8
  %call = call %union.rec* @BreakObject(%union.rec* %55, %struct.CONSTRAINT* %yc)
  store %union.rec* %call, %union.rec** %m.addr, align 8
  %56 = load %union.rec*, %union.rec** %m.addr, align 8
  %os190 = bitcast %union.rec* %56 to %struct.word_type*
  %ou391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 3
  %os3192 = bitcast %union.THIRD_UNION* %ou391 to %struct.anon.6*
  %oback93 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %oback93, i32 0, i64 0
  %57 = load i32, i32* %arrayidx94, align 4
  store i32 %57, i32* %b, align 4
  %58 = load %union.rec*, %union.rec** %m.addr, align 8
  %os195 = bitcast %union.rec* %58 to %struct.word_type*
  %ou396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 3
  %os3197 = bitcast %union.THIRD_UNION* %ou396 to %struct.anon.6*
  %ofwd98 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3197, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd98, i32 0, i64 0
  %59 = load i32, i32* %arrayidx99, align 4
  store i32 %59, i32* %f, align 4
  %obc100 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %60 = load i32, i32* %obc100, align 4
  %obfc101 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %61 = load i32, i32* %obfc101, align 4
  %62 = load i32, i32* %f, align 4
  %sub102 = sub nsw i32 %61, %62
  %cmp103 = icmp slt i32 %60, %sub102
  br i1 %cmp103, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %if.then.89
  %obc106 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %63 = load i32, i32* %obc106, align 4
  br label %cond.end.110

cond.false.107:                                   ; preds = %if.then.89
  %obfc108 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %64 = load i32, i32* %obfc108, align 4
  %65 = load i32, i32* %f, align 4
  %sub109 = sub nsw i32 %64, %65
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.107, %cond.true.105
  %cond111 = phi i32 [ %63, %cond.true.105 ], [ %sub109, %cond.false.107 ]
  %obc112 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %cond111, i32* %obc112, align 4
  %obfc113 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %66 = load i32, i32* %obfc113, align 4
  %obfc114 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %66, i32* %obfc114, align 4
  %ofc115 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %67 = load i32, i32* %ofc115, align 4
  %obfc116 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %68 = load i32, i32* %obfc116, align 4
  %69 = load i32, i32* %b, align 4
  %sub117 = sub nsw i32 %68, %69
  %cmp118 = icmp slt i32 %67, %sub117
  br i1 %cmp118, label %cond.true.120, label %cond.false.122

cond.true.120:                                    ; preds = %cond.end.110
  %ofc121 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %70 = load i32, i32* %ofc121, align 4
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.end.110
  %obfc123 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %71 = load i32, i32* %obfc123, align 4
  %72 = load i32, i32* %b, align 4
  %sub124 = sub nsw i32 %71, %72
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.120
  %cond126 = phi i32 [ %70, %cond.true.120 ], [ %sub124, %cond.false.122 ]
  %ofc127 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %cond126, i32* %ofc127, align 4
  br label %if.end.129

if.else.128:                                      ; preds = %cond.end.84
  store i32 0, i32* %f, align 4
  store i32 0, i32* %b, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %cond.end.125
  %73 = load %union.rec*, %union.rec** %start.addr, align 8
  store %union.rec* %73, %union.rec** %link, align 8
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.237, %if.end.129
  %74 = load %union.rec*, %union.rec** %link, align 8
  %75 = load %union.rec*, %union.rec** %stop.addr, align 8
  %os1131 = bitcast %union.rec* %75 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 0
  %osucc134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %osucc134, align 8
  %cmp135 = icmp ne %union.rec* %74, %76
  br i1 %cmp135, label %for.body.137, label %for.end.242

for.body.137:                                     ; preds = %for.cond.130
  %77 = load %union.rec*, %union.rec** %link, align 8
  %os1138 = bitcast %union.rec* %77 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 1
  %opred141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred141, align 8
  store %union.rec* %78, %union.rec** %y, align 8
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.151, %for.body.137
  %79 = load %union.rec*, %union.rec** %y, align 8
  %os1143 = bitcast %union.rec* %79 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %os11145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.anon*
  %otype146 = getelementptr inbounds %struct.anon, %struct.anon* %os11145, i32 0, i32 0
  %80 = load i8, i8* %otype146, align 1
  %conv147 = zext i8 %80 to i32
  %cmp148 = icmp eq i32 %conv147, 0
  br i1 %cmp148, label %for.body.150, label %for.end.156

for.body.150:                                     ; preds = %for.cond.142
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.150
  %81 = load %union.rec*, %union.rec** %y, align 8
  %os1152 = bitcast %union.rec* %81 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 1
  %opred155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred155, align 8
  store %union.rec* %82, %union.rec** %y, align 8
  br label %for.cond.142

for.end.156:                                      ; preds = %for.cond.142
  %83 = load %union.rec*, %union.rec** %y, align 8
  %os1157 = bitcast %union.rec* %83 to %struct.word_type*
  %ou1158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 1
  %os11159 = bitcast %union.FIRST_UNION* %ou1158 to %struct.anon*
  %otype160 = getelementptr inbounds %struct.anon, %struct.anon* %os11159, i32 0, i32 0
  %84 = load i8, i8* %otype160, align 1
  %conv161 = zext i8 %84 to i32
  %cmp162 = icmp sge i32 %conv161, 9
  br i1 %cmp162, label %land.lhs.true.164, label %if.then.174

land.lhs.true.164:                                ; preds = %for.end.156
  %85 = load %union.rec*, %union.rec** %y, align 8
  %os1165 = bitcast %union.rec* %85 to %struct.word_type*
  %ou1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 1
  %os11167 = bitcast %union.FIRST_UNION* %ou1166 to %struct.anon*
  %otype168 = getelementptr inbounds %struct.anon, %struct.anon* %os11167, i32 0, i32 0
  %86 = load i8, i8* %otype168, align 1
  %conv169 = zext i8 %86 to i32
  %cmp170 = icmp sle i32 %conv169, 99
  br i1 %cmp170, label %lor.lhs.false, label %if.then.174

lor.lhs.false:                                    ; preds = %land.lhs.true.164
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = load %union.rec*, %union.rec** %m.addr, align 8
  %cmp172 = icmp eq %union.rec* %87, %88
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %lor.lhs.false, %land.lhs.true.164, %for.end.156
  br label %for.inc.237

if.end.175:                                       ; preds = %lor.lhs.false
  %89 = load %union.rec*, %union.rec** %y, align 8
  %call176 = call %union.rec* @BreakObject(%union.rec* %89, %struct.CONSTRAINT* %yc)
  store %union.rec* %call176, %union.rec** %y, align 8
  %90 = load i32, i32* %b, align 4
  %91 = load %union.rec*, %union.rec** %y, align 8
  %os1177 = bitcast %union.rec* %91 to %struct.word_type*
  %ou3178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 3
  %os31179 = bitcast %union.THIRD_UNION* %ou3178 to %struct.anon.6*
  %oback180 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x i32], [2 x i32]* %oback180, i32 0, i64 0
  %92 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp slt i32 %90, %92
  br i1 %cmp182, label %cond.true.184, label %cond.false.190

cond.true.184:                                    ; preds = %if.end.175
  %93 = load %union.rec*, %union.rec** %y, align 8
  %os1185 = bitcast %union.rec* %93 to %struct.word_type*
  %ou3186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 3
  %os31187 = bitcast %union.THIRD_UNION* %ou3186 to %struct.anon.6*
  %oback188 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x i32], [2 x i32]* %oback188, i32 0, i64 0
  %94 = load i32, i32* %arrayidx189, align 4
  br label %cond.end.191

cond.false.190:                                   ; preds = %if.end.175
  %95 = load i32, i32* %b, align 4
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.true.184
  %cond192 = phi i32 [ %94, %cond.true.184 ], [ %95, %cond.false.190 ]
  store i32 %cond192, i32* %b, align 4
  %96 = load i32, i32* %f, align 4
  %97 = load %union.rec*, %union.rec** %y, align 8
  %os1193 = bitcast %union.rec* %97 to %struct.word_type*
  %ou3194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 3
  %os31195 = bitcast %union.THIRD_UNION* %ou3194 to %struct.anon.6*
  %ofwd196 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31195, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd196, i32 0, i64 0
  %98 = load i32, i32* %arrayidx197, align 4
  %cmp198 = icmp slt i32 %96, %98
  br i1 %cmp198, label %cond.true.200, label %cond.false.206

cond.true.200:                                    ; preds = %cond.end.191
  %99 = load %union.rec*, %union.rec** %y, align 8
  %os1201 = bitcast %union.rec* %99 to %struct.word_type*
  %ou3202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 3
  %os31203 = bitcast %union.THIRD_UNION* %ou3202 to %struct.anon.6*
  %ofwd204 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31203, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd204, i32 0, i64 0
  %100 = load i32, i32* %arrayidx205, align 4
  br label %cond.end.207

cond.false.206:                                   ; preds = %cond.end.191
  %101 = load i32, i32* %f, align 4
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.200
  %cond208 = phi i32 [ %100, %cond.true.200 ], [ %101, %cond.false.206 ]
  store i32 %cond208, i32* %f, align 4
  %obc209 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %102 = load i32, i32* %obc209, align 4
  %obfc210 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %103 = load i32, i32* %obfc210, align 4
  %104 = load i32, i32* %f, align 4
  %sub211 = sub nsw i32 %103, %104
  %cmp212 = icmp slt i32 %102, %sub211
  br i1 %cmp212, label %cond.true.214, label %cond.false.216

cond.true.214:                                    ; preds = %cond.end.207
  %obc215 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %105 = load i32, i32* %obc215, align 4
  br label %cond.end.219

cond.false.216:                                   ; preds = %cond.end.207
  %obfc217 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %106 = load i32, i32* %obfc217, align 4
  %107 = load i32, i32* %f, align 4
  %sub218 = sub nsw i32 %106, %107
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.216, %cond.true.214
  %cond220 = phi i32 [ %105, %cond.true.214 ], [ %sub218, %cond.false.216 ]
  %obc221 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %cond220, i32* %obc221, align 4
  %obfc222 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %108 = load i32, i32* %obfc222, align 4
  %obfc223 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %108, i32* %obfc223, align 4
  %ofc224 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %109 = load i32, i32* %ofc224, align 4
  %obfc225 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %110 = load i32, i32* %obfc225, align 4
  %111 = load i32, i32* %b, align 4
  %sub226 = sub nsw i32 %110, %111
  %cmp227 = icmp slt i32 %109, %sub226
  br i1 %cmp227, label %cond.true.229, label %cond.false.231

cond.true.229:                                    ; preds = %cond.end.219
  %ofc230 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %112 = load i32, i32* %ofc230, align 4
  br label %cond.end.234

cond.false.231:                                   ; preds = %cond.end.219
  %obfc232 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %113 = load i32, i32* %obfc232, align 4
  %114 = load i32, i32* %b, align 4
  %sub233 = sub nsw i32 %113, %114
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.231, %cond.true.229
  %cond235 = phi i32 [ %112, %cond.true.229 ], [ %sub233, %cond.false.231 ]
  %ofc236 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %cond235, i32* %ofc236, align 4
  br label %for.inc.237

for.inc.237:                                      ; preds = %cond.end.234, %if.then.174
  %115 = load %union.rec*, %union.rec** %link, align 8
  %os1238 = bitcast %union.rec* %115 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %osucc241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 1
  %116 = load %union.rec*, %union.rec** %osucc241, align 8
  store %union.rec* %116, %union.rec** %link, align 8
  br label %for.cond.130

for.end.242:                                      ; preds = %for.cond.130
  %117 = load i32, i32* %b, align 4
  %118 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obc243 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %118, i32 0, i32 0
  %119 = load i32, i32* %obc243, align 4
  %cmp244 = icmp sle i32 %117, %119
  br i1 %cmp244, label %land.lhs.true.246, label %if.then.254

land.lhs.true.246:                                ; preds = %for.end.242
  %120 = load i32, i32* %b, align 4
  %121 = load i32, i32* %f, align 4
  %add = add nsw i32 %120, %121
  %122 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc247 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %122, i32 0, i32 1
  %123 = load i32, i32* %obfc247, align 4
  %cmp248 = icmp sle i32 %add, %123
  br i1 %cmp248, label %land.lhs.true.250, label %if.then.254

land.lhs.true.250:                                ; preds = %land.lhs.true.246
  %124 = load i32, i32* %f, align 4
  %125 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc251 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %125, i32 0, i32 2
  %126 = load i32, i32* %ofc251, align 4
  %cmp252 = icmp sle i32 %124, %126
  br i1 %cmp252, label %if.end.273, label %if.then.254

if.then.254:                                      ; preds = %land.lhs.true.250, %land.lhs.true.246, %for.end.242
  %127 = load %union.rec*, %union.rec** %m.addr, align 8
  %cmp255 = icmp ne %union.rec* %127, null
  br i1 %cmp255, label %cond.true.257, label %cond.false.260

cond.true.257:                                    ; preds = %if.then.254
  %128 = load %union.rec*, %union.rec** %m.addr, align 8
  %os1258 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1259 to %struct.FILE_POS*
  br label %cond.end.270

cond.false.260:                                   ; preds = %if.then.254
  %129 = load %union.rec*, %union.rec** %y, align 8
  %cmp261 = icmp ne %union.rec* %129, null
  br i1 %cmp261, label %cond.true.263, label %cond.false.267

cond.true.263:                                    ; preds = %cond.false.260
  %130 = load %union.rec*, %union.rec** %y, align 8
  %os1264 = bitcast %union.rec* %130 to %struct.word_type*
  %ou1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 1
  %ofpos266 = bitcast %union.FIRST_UNION* %ou1265 to %struct.FILE_POS*
  br label %cond.end.268

cond.false.267:                                   ; preds = %cond.false.260
  %131 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.267, %cond.true.263
  %cond269 = phi %struct.FILE_POS* [ %ofpos266, %cond.true.263 ], [ %131, %cond.false.267 ]
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.end.268, %cond.true.257
  %cond271 = phi %struct.FILE_POS* [ %ofpos, %cond.true.257 ], [ %cond269, %cond.end.268 ]
  %call272 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* %cond271)
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.270, %land.lhs.true.250
  %132 = load i32, i32* %b, align 4
  %133 = load i32*, i32** %res_back.addr, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %f, align 4
  %135 = load i32*, i32** %res_fwd.addr, align 8
  store i32 %134, i32* %135, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @BreakVcat(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %c.addr = alloca %struct.CONSTRAINT*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %start_group = alloca %union.rec*, align 8
  %m = alloca %union.rec*, align 8
  %b = alloca i32, align 4
  %f = alloca i32, align 4
  %dble_fwd = alloca i32, align 4
  %tc = alloca %struct.CONSTRAINT, align 4
  %dble_found = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %c.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 0
  store i32 8388607, i32* %obc, align 4
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 1
  %5 = load i32, i32* %obfc, align 4
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 2
  %7 = load i32, i32* %ofc, align 4
  %cmp1 = icmp slt i32 %5, %7
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %obfc2 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %8, i32 0, i32 1
  %9 = load i32, i32* %obfc2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  %ofc3 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 2
  %11 = load i32, i32* %ofc3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ]
  %obfc4 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 1
  store i32 %cond, i32* %obfc4, align 4
  %ofc5 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 2
  store i32 8388607, i32* %ofc5, align 4
  store i32 0, i32* %dble_found, align 4
  store i32 0, i32* %dble_fwd, align 4
  store %union.rec* null, %union.rec** %start_group, align 8
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16 = bitcast %union.rec* %12 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 0
  %osucc9 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc9, align 8
  store %union.rec* %13, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %cond.end
  %14 = load %union.rec*, %union.rec** %link, align 8
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp10 = icmp ne %union.rec* %14, %15
  br i1 %cmp10, label %for.body, label %for.end.138

for.body:                                         ; preds = %for.cond
  %16 = load %union.rec*, %union.rec** %link, align 8
  %os111 = bitcast %union.rec* %16 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %17, %union.rec** %y, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os115 = bitcast %union.rec* %18 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %19 = load i8, i8* %otype, align 1
  %conv = zext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.14
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os119 = bitcast %union.rec* %20 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %opred22, align 8
  store %union.rec* %21, %union.rec** %y, align 8
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os123 = bitcast %union.rec* %22 to %struct.word_type*
  %ou124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 1
  %os1125 = bitcast %union.FIRST_UNION* %ou124 to %struct.anon*
  %otype26 = getelementptr inbounds %struct.anon, %struct.anon* %os1125, i32 0, i32 0
  %23 = load i8, i8* %otype26, align 1
  %conv27 = zext i8 %23 to i32
  %cmp28 = icmp sge i32 %conv27, 119
  br i1 %cmp28, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %for.end
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os130 = bitcast %union.rec* %24 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %os1132 = bitcast %union.FIRST_UNION* %ou131 to %struct.anon*
  %otype33 = getelementptr inbounds %struct.anon, %struct.anon* %os1132, i32 0, i32 0
  %25 = load i8, i8* %otype33, align 1
  %conv34 = zext i8 %25 to i32
  %cmp35 = icmp sle i32 %conv34, 138
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true
  br label %for.inc.133

if.end.38:                                        ; preds = %land.lhs.true, %for.end
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os139 = bitcast %union.rec* %26 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon*
  %otype42 = getelementptr inbounds %struct.anon, %struct.anon* %os1141, i32 0, i32 0
  %27 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %27 to i32
  %cmp44 = icmp eq i32 %conv43, 1
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.38
  %28 = load %union.rec*, %union.rec** %start_group, align 8
  %cmp47 = icmp ne %union.rec* %28, null
  br i1 %cmp47, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.then.46
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call50 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.46
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %30 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %31 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %31, align 4
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.74, label %if.then.52

if.then.52:                                       ; preds = %if.end.51
  %32 = load i32, i32* %b, align 4
  %obc53 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 0
  %33 = load i32, i32* %obc53, align 4
  %cmp54 = icmp sle i32 %32, %33
  br i1 %cmp54, label %land.lhs.true.56, label %if.then.64

land.lhs.true.56:                                 ; preds = %if.then.52
  %34 = load i32, i32* %b, align 4
  %35 = load i32, i32* %f, align 4
  %add = add nsw i32 %34, %35
  %obfc57 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 1
  %36 = load i32, i32* %obfc57, align 4
  %cmp58 = icmp sle i32 %add, %36
  br i1 %cmp58, label %land.lhs.true.60, label %if.then.64

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %37 = load i32, i32* %f, align 4
  %ofc61 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 2
  %38 = load i32, i32* %ofc61, align 4
  %cmp62 = icmp sle i32 %37, %38
  br i1 %cmp62, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.60, %land.lhs.true.56, %if.then.52
  %39 = load %union.rec*, %union.rec** %start_group, align 8
  %40 = load %union.rec*, %union.rec** %link, align 8
  %41 = load %union.rec*, %union.rec** %m, align 8
  call void @BreakJoinedGroup(%union.rec* %39, %union.rec* %40, %union.rec* %41, %struct.CONSTRAINT* %tc, i32* %b, i32* %f)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %land.lhs.true.60
  store i32 1, i32* %dble_found, align 4
  %42 = load i32, i32* %dble_fwd, align 4
  %43 = load i32, i32* %b, align 4
  %44 = load i32, i32* %f, align 4
  %add66 = add nsw i32 %43, %44
  %cmp67 = icmp slt i32 %42, %add66
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %if.end.65
  %45 = load i32, i32* %b, align 4
  %46 = load i32, i32* %f, align 4
  %add70 = add nsw i32 %45, %46
  br label %cond.end.72

cond.false.71:                                    ; preds = %if.end.65
  %47 = load i32, i32* %dble_fwd, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.69
  %cond73 = phi i32 [ %add70, %cond.true.69 ], [ %47, %cond.false.71 ]
  store i32 %cond73, i32* %dble_fwd, align 4
  store %union.rec* null, %union.rec** %start_group, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %cond.end.72, %if.end.51
  br label %if.end.132

if.else:                                          ; preds = %if.end.38
  %48 = load %union.rec*, %union.rec** %start_group, align 8
  %cmp75 = icmp eq %union.rec* %48, null
  br i1 %cmp75, label %if.then.77, label %if.else.84

if.then.77:                                       ; preds = %if.else
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os178 = bitcast %union.rec* %49 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %50 = load i32, i32* %arrayidx79, align 4
  store i32 %50, i32* %b, align 4
  %51 = load %union.rec*, %union.rec** %y, align 8
  %os180 = bitcast %union.rec* %51 to %struct.word_type*
  %ou381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 3
  %os3182 = bitcast %union.THIRD_UNION* %ou381 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3182, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %52 = load i32, i32* %arrayidx83, align 4
  store i32 %52, i32* %f, align 4
  %53 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %53, %union.rec** %start_group, align 8
  %54 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %54, %union.rec** %m, align 8
  br label %if.end.131

if.else.84:                                       ; preds = %if.else
  %55 = load i32, i32* %b, align 4
  %56 = load %union.rec*, %union.rec** %y, align 8
  %os185 = bitcast %union.rec* %56 to %struct.word_type*
  %ou386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 3
  %os3187 = bitcast %union.THIRD_UNION* %ou386 to %struct.anon.6*
  %oback88 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %oback88, i32 0, i64 0
  %57 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp slt i32 %55, %57
  br i1 %cmp90, label %cond.true.92, label %cond.false.98

cond.true.92:                                     ; preds = %if.else.84
  %58 = load %union.rec*, %union.rec** %y, align 8
  %os193 = bitcast %union.rec* %58 to %struct.word_type*
  %ou394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 3
  %os3195 = bitcast %union.THIRD_UNION* %ou394 to %struct.anon.6*
  %oback96 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x i32], [2 x i32]* %oback96, i32 0, i64 0
  %59 = load i32, i32* %arrayidx97, align 4
  br label %cond.end.99

cond.false.98:                                    ; preds = %if.else.84
  %60 = load i32, i32* %b, align 4
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.92
  %cond100 = phi i32 [ %59, %cond.true.92 ], [ %60, %cond.false.98 ]
  store i32 %cond100, i32* %b, align 4
  %61 = load i32, i32* %f, align 4
  %62 = load %union.rec*, %union.rec** %y, align 8
  %os1101 = bitcast %union.rec* %62 to %struct.word_type*
  %ou3102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 3
  %os31103 = bitcast %union.THIRD_UNION* %ou3102 to %struct.anon.6*
  %ofwd104 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31103, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd104, i32 0, i64 0
  %63 = load i32, i32* %arrayidx105, align 4
  %cmp106 = icmp slt i32 %61, %63
  br i1 %cmp106, label %cond.true.108, label %cond.false.114

cond.true.108:                                    ; preds = %cond.end.99
  %64 = load %union.rec*, %union.rec** %y, align 8
  %os1109 = bitcast %union.rec* %64 to %struct.word_type*
  %ou3110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 3
  %os31111 = bitcast %union.THIRD_UNION* %ou3110 to %struct.anon.6*
  %ofwd112 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31111, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd112, i32 0, i64 0
  %65 = load i32, i32* %arrayidx113, align 4
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end.99
  %66 = load i32, i32* %f, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.108
  %cond116 = phi i32 [ %65, %cond.true.108 ], [ %66, %cond.false.114 ]
  store i32 %cond116, i32* %f, align 4
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os1117 = bitcast %union.rec* %67 to %struct.word_type*
  %ou3118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 3
  %os31119 = bitcast %union.THIRD_UNION* %ou3118 to %struct.anon.6*
  %ofwd120 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31119, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd120, i32 0, i64 0
  %68 = load i32, i32* %arrayidx121, align 4
  %69 = load %union.rec*, %union.rec** %m, align 8
  %os1122 = bitcast %union.rec* %69 to %struct.word_type*
  %ou3123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 3
  %os31124 = bitcast %union.THIRD_UNION* %ou3123 to %struct.anon.6*
  %ofwd125 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31124, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd125, i32 0, i64 0
  %70 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp sgt i32 %68, %70
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %cond.end.115
  %71 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %71, %union.rec** %m, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %cond.end.115
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.77
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.74
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132, %if.then.37
  %72 = load %union.rec*, %union.rec** %link, align 8
  %os1134 = bitcast %union.rec* %72 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 0
  %osucc137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 1
  %73 = load %union.rec*, %union.rec** %osucc137, align 8
  store %union.rec* %73, %union.rec** %link, align 8
  br label %for.cond

for.end.138:                                      ; preds = %for.cond
  %74 = load %union.rec*, %union.rec** %start_group, align 8
  %cmp139 = icmp ne %union.rec* %74, null
  br i1 %cmp139, label %if.end.143, label %if.then.141

if.then.141:                                      ; preds = %for.end.138
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call142 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %for.end.138
  %76 = load i32, i32* %dble_found, align 4
  %tobool144 = icmp ne i32 %76, 0
  br i1 %tobool144, label %if.then.145, label %if.else.188

if.then.145:                                      ; preds = %if.end.143
  %77 = load i32, i32* %b, align 4
  %obc146 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 0
  %78 = load i32, i32* %obc146, align 4
  %cmp147 = icmp sle i32 %77, %78
  br i1 %cmp147, label %land.lhs.true.149, label %if.then.158

land.lhs.true.149:                                ; preds = %if.then.145
  %79 = load i32, i32* %b, align 4
  %80 = load i32, i32* %f, align 4
  %add150 = add nsw i32 %79, %80
  %obfc151 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 1
  %81 = load i32, i32* %obfc151, align 4
  %cmp152 = icmp sle i32 %add150, %81
  br i1 %cmp152, label %land.lhs.true.154, label %if.then.158

land.lhs.true.154:                                ; preds = %land.lhs.true.149
  %82 = load i32, i32* %f, align 4
  %ofc155 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 2
  %83 = load i32, i32* %ofc155, align 4
  %cmp156 = icmp sle i32 %82, %83
  br i1 %cmp156, label %if.end.163, label %if.then.158

if.then.158:                                      ; preds = %land.lhs.true.154, %land.lhs.true.149, %if.then.145
  %84 = load %union.rec*, %union.rec** %start_group, align 8
  %85 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1159 = bitcast %union.rec* %85 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 0
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred162, align 8
  %87 = load %union.rec*, %union.rec** %m, align 8
  call void @BreakJoinedGroup(%union.rec* %84, %union.rec* %86, %union.rec* %87, %struct.CONSTRAINT* %tc, i32* %b, i32* %f)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.158, %land.lhs.true.154
  %88 = load i32, i32* %dble_fwd, align 4
  %89 = load i32, i32* %b, align 4
  %90 = load i32, i32* %f, align 4
  %add164 = add nsw i32 %89, %90
  %cmp165 = icmp slt i32 %88, %add164
  br i1 %cmp165, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %if.end.163
  %91 = load i32, i32* %b, align 4
  %92 = load i32, i32* %f, align 4
  %add168 = add nsw i32 %91, %92
  br label %cond.end.170

cond.false.169:                                   ; preds = %if.end.163
  %93 = load i32, i32* %dble_fwd, align 4
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.167
  %cond171 = phi i32 [ %add168, %cond.true.167 ], [ %93, %cond.false.169 ]
  store i32 %cond171, i32* %dble_fwd, align 4
  %94 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1172 = bitcast %union.rec* %94 to %struct.word_type*
  %ou3173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 3
  %os31174 = bitcast %union.THIRD_UNION* %ou3173 to %struct.anon.6*
  %oback175 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x i32], [2 x i32]* %oback175, i32 0, i64 0
  store i32 0, i32* %arrayidx176, align 4
  %95 = load i32, i32* %dble_fwd, align 4
  %cmp177 = icmp slt i32 8388607, %95
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %cond.end.170
  br label %cond.end.181

cond.false.180:                                   ; preds = %cond.end.170
  %96 = load i32, i32* %dble_fwd, align 4
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.179
  %cond182 = phi i32 [ 8388607, %cond.true.179 ], [ %96, %cond.false.180 ]
  %97 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1183 = bitcast %union.rec* %97 to %struct.word_type*
  %ou3184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 3
  %os31185 = bitcast %union.THIRD_UNION* %ou3184 to %struct.anon.6*
  %ofwd186 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31185, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd186, i32 0, i64 0
  store i32 %cond182, i32* %arrayidx187, align 4
  br label %if.end.203

if.else.188:                                      ; preds = %if.end.143
  %98 = load %union.rec*, %union.rec** %start_group, align 8
  %99 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1189 = bitcast %union.rec* %99 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 0
  %opred192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred192, align 8
  %101 = load %union.rec*, %union.rec** %m, align 8
  %102 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %c.addr, align 8
  call void @BreakJoinedGroup(%union.rec* %98, %union.rec* %100, %union.rec* %101, %struct.CONSTRAINT* %102, i32* %b, i32* %f)
  %103 = load i32, i32* %b, align 4
  %104 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1193 = bitcast %union.rec* %104 to %struct.word_type*
  %ou3194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 3
  %os31195 = bitcast %union.THIRD_UNION* %ou3194 to %struct.anon.6*
  %oback196 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x i32], [2 x i32]* %oback196, i32 0, i64 0
  store i32 %103, i32* %arrayidx197, align 4
  %105 = load i32, i32* %f, align 4
  %106 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1198 = bitcast %union.rec* %106 to %struct.word_type*
  %ou3199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 3
  %os31200 = bitcast %union.THIRD_UNION* %ou3199 to %struct.anon.6*
  %ofwd201 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31200, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd201, i32 0, i64 0
  store i32 %105, i32* %arrayidx202, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.188, %cond.end.181
  %107 = load %union.rec*, %union.rec** %x.addr, align 8
  ret %union.rec* %107
}

declare i8* @Image(i32) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

declare void @SetNeighbours(%union.rec*, i32, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32*) #1

declare i32 @ExtraGap(i32, i32, %struct.GAP*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
