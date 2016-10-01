; ModuleID = './MultiSource.Benchmarks.MiBench/80.consumer-typeset.z46.bc'
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
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"FindOptimize: type(x) != CLOSURE!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"FindOptimize: x has no target!\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FindOptimize: Down(PAR)!\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"FindOptimize: res == nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"unable to evaluate %s parameter, assuming value is No\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"@Optimize\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"value of %s operator is neither Yes nor No, assuming No\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@OldCrossDb = external global %union.rec*, align 8
@OptGallSym = external global %union.rec*, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"SetOptimize: res == nilobj!\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"SetOptimize: type(res) != CLOSURE!\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"SetOptimize: actual(res) != Opt!\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"SetOptimize: Down(res) == res!\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"SetOptimize: type(y) != PAR!\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"SetOptimize: type(y) != ACAT!\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"SetOptimize: type(y) != ACAT (2)!\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SetOptimize: num <= 0!\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SetOptimize: type(z)!\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"GazumpOptimize: type(hd) != HEAD!\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"GazumpOptimize: opt_c!\00", align 1
@zz_tmp = external global %union.rec*, align 8
@.str.25 = private unnamed_addr constant [33 x i8] c"FlushGalley: type(g) != GAP_OBJ!\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"1rt\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"1c\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"CO!\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"CalculateOptimize: type(last)!\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"KillGalley: no opt_constraints!\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"KillGalleyo!\00", align 1
@AllowCrossDb = external global i32, align 4
@NewCrossDb = external global %union.rec*, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FindOptimize(%union.rec* %x, %union.rec* %env) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %bt = alloca [2 x %union.rec*], align 16
  %ft = alloca [2 x %union.rec*], align 16
  %ntarget = alloca %union.rec*, align 8
  %nenclose = alloca %union.rec*, align 8
  %crs = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %3 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %4 = load %union.rec*, %union.rec** %oactual, align 8
  %os12 = bitcast %union.rec* %4 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ohas_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %5 = bitcast [3 x i8]* %ohas_target to i24*
  %bf.load = load i24, i24* %5, align 1
  %bf.lshr = lshr i24 %bf.load, 6
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  store %union.rec* null, %union.rec** %res, align 8
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %8, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %if.end.5
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp7 = icmp ne %union.rec* %9, %10
  br i1 %cmp7, label %for.body, label %for.end.80

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
  %ou114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os1115 = bitcast %union.FIRST_UNION* %ou114 to %struct.anon*
  %otype16 = getelementptr inbounds %struct.anon, %struct.anon* %os1115, i32 0, i32 0
  %14 = load i8, i8* %otype16, align 1
  %conv17 = zext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.12
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %opred24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred24, align 8
  store %union.rec* %16, %union.rec** %y, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os125 = bitcast %union.rec* %17 to %struct.word_type*
  %ou126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1127 = bitcast %union.FIRST_UNION* %ou126 to %struct.anon*
  %otype28 = getelementptr inbounds %struct.anon, %struct.anon* %os1127, i32 0, i32 0
  %18 = load i8, i8* %otype28, align 1
  %conv29 = zext i8 %18 to i32
  %cmp30 = icmp eq i32 %conv29, 10
  br i1 %cmp30, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %for.end
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os232 = bitcast %union.rec* %19 to %struct.closure_type*
  %oactual33 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os232, i32 0, i32 5
  %20 = load %union.rec*, %union.rec** %oactual33, align 8
  %os6 = bitcast %union.rec* %20 to %struct.symbol_type*
  %ois_optimize = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 16
  %bf.load34 = load i8, i8* %ois_optimize, align 2
  %bf.clear35 = and i8 %bf.load34, 1
  %bf.cast36 = zext i8 %bf.clear35 to i32
  %tobool37 = icmp ne i32 %bf.cast36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.74

if.then.38:                                       ; preds = %land.lhs.true
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 0
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %osucc42, align 8
  %23 = load %union.rec*, %union.rec** %y, align 8
  %cmp43 = icmp ne %union.rec* %22, %23
  br i1 %cmp43, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.then.38
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.38
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os148 = bitcast %union.rec* %25 to %struct.word_type*
  %olist49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist49, i32 0, i64 0
  %osucc51 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx50, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc51, align 8
  %os152 = bitcast %union.rec* %26 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 1
  %opred55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred55, align 8
  store %union.rec* %27, %union.rec** %res, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.65, %if.end.47
  %28 = load %union.rec*, %union.rec** %res, align 8
  %os157 = bitcast %union.rec* %28 to %struct.word_type*
  %ou158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 1
  %os1159 = bitcast %union.FIRST_UNION* %ou158 to %struct.anon*
  %otype60 = getelementptr inbounds %struct.anon, %struct.anon* %os1159, i32 0, i32 0
  %29 = load i8, i8* %otype60, align 1
  %conv61 = zext i8 %29 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %for.body.64, label %for.end.70

for.body.64:                                      ; preds = %for.cond.56
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.64
  %30 = load %union.rec*, %union.rec** %res, align 8
  %os166 = bitcast %union.rec* %30 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 1
  %opred69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred69, align 8
  store %union.rec* %31, %union.rec** %res, align 8
  br label %for.cond.56

for.end.70:                                       ; preds = %for.cond.56
  %32 = load %union.rec*, %union.rec** %res, align 8
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os171 = bitcast %union.rec* %33 to %struct.word_type*
  %ou172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou172 to %struct.FILE_POS*
  %call73 = call %union.rec* @CopyObject(%union.rec* %32, %struct.FILE_POS* %ofpos)
  store %union.rec* %call73, %union.rec** %res, align 8
  br label %for.end.80

if.end.74:                                        ; preds = %land.lhs.true, %for.end
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %34 = load %union.rec*, %union.rec** %link, align 8
  %os176 = bitcast %union.rec* %34 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %osucc79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 1
  %35 = load %union.rec*, %union.rec** %osucc79, align 8
  store %union.rec* %35, %union.rec** %link, align 8
  br label %for.cond

for.end.80:                                       ; preds = %for.end.70, %for.cond
  %36 = load %union.rec*, %union.rec** %res, align 8
  %cmp81 = icmp eq %union.rec* %36, null
  br i1 %cmp81, label %if.then.83, label %if.end.134

if.then.83:                                       ; preds = %for.end.80
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %os284 = bitcast %union.rec* %37 to %struct.closure_type*
  %oactual85 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os284, i32 0, i32 5
  %38 = load %union.rec*, %union.rec** %oactual85, align 8
  %os186 = bitcast %union.rec* %38 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 0
  %osucc89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %osucc89, align 8
  store %union.rec* %39, %union.rec** %link, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.128, %if.then.83
  %40 = load %union.rec*, %union.rec** %link, align 8
  %41 = load %union.rec*, %union.rec** %x.addr, align 8
  %os291 = bitcast %union.rec* %41 to %struct.closure_type*
  %oactual92 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os291, i32 0, i32 5
  %42 = load %union.rec*, %union.rec** %oactual92, align 8
  %cmp93 = icmp ne %union.rec* %40, %42
  br i1 %cmp93, label %for.body.95, label %for.end.133

for.body.95:                                      ; preds = %for.cond.90
  %43 = load %union.rec*, %union.rec** %link, align 8
  %os196 = bitcast %union.rec* %43 to %struct.word_type*
  %olist97 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist97, i32 0, i64 1
  %opred99 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx98, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred99, align 8
  store %union.rec* %44, %union.rec** %y, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.109, %for.body.95
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os1101 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 1
  %os11103 = bitcast %union.FIRST_UNION* %ou1102 to %struct.anon*
  %otype104 = getelementptr inbounds %struct.anon, %struct.anon* %os11103, i32 0, i32 0
  %46 = load i8, i8* %otype104, align 1
  %conv105 = zext i8 %46 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %for.body.108, label %for.end.114

for.body.108:                                     ; preds = %for.cond.100
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.108
  %47 = load %union.rec*, %union.rec** %y, align 8
  %os1110 = bitcast %union.rec* %47 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 1
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred113, align 8
  store %union.rec* %48, %union.rec** %y, align 8
  br label %for.cond.100

for.end.114:                                      ; preds = %for.cond.100
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os6115 = bitcast %union.rec* %49 to %struct.symbol_type*
  %ois_optimize116 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6115, i32 0, i32 16
  %bf.load117 = load i8, i8* %ois_optimize116, align 2
  %bf.clear118 = and i8 %bf.load117, 1
  %bf.cast119 = zext i8 %bf.clear118 to i32
  %tobool120 = icmp ne i32 %bf.cast119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.127

if.then.121:                                      ; preds = %for.end.114
  %50 = load %union.rec*, %union.rec** %y, align 8
  %os6122 = bitcast %union.rec* %50 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6122, i32 0, i32 4
  %51 = load %union.rec*, %union.rec** %osym_body, align 8
  %52 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1123 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 1
  %ofpos125 = bitcast %union.FIRST_UNION* %ou1124 to %struct.FILE_POS*
  %call126 = call %union.rec* @CopyObject(%union.rec* %51, %struct.FILE_POS* %ofpos125)
  store %union.rec* %call126, %union.rec** %res, align 8
  br label %for.end.133

if.end.127:                                       ; preds = %for.end.114
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %53 = load %union.rec*, %union.rec** %link, align 8
  %os1129 = bitcast %union.rec* %53 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 0
  %osucc132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 1
  %54 = load %union.rec*, %union.rec** %osucc132, align 8
  store %union.rec* %54, %union.rec** %link, align 8
  br label %for.cond.90

for.end.133:                                      ; preds = %if.then.121, %for.cond.90
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %for.end.80
  %55 = load %union.rec*, %union.rec** %res, align 8
  %cmp135 = icmp ne %union.rec* %55, null
  br i1 %cmp135, label %if.end.139, label %if.then.137

if.then.137:                                      ; preds = %if.end.134
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call138 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.134
  store %union.rec* null, %union.rec** %crs, align 8
  store %union.rec* null, %union.rec** %nenclose, align 8
  store %union.rec* null, %union.rec** %ntarget, align 8
  %arrayidx140 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 1
  store %union.rec* null, %union.rec** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 1
  store %union.rec* null, %union.rec** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  store %union.rec* null, %union.rec** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  store %union.rec* null, %union.rec** %arrayidx143, align 8
  %57 = load %union.rec*, %union.rec** %res, align 8
  %58 = load %union.rec*, %union.rec** %env.addr, align 8
  %59 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2144 = bitcast %union.rec* %59 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2144, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %arraydecay = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i32 0
  %arraydecay145 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i32 0
  %call146 = call %union.rec* @Manifest(%union.rec* %57, %union.rec* %58, %struct.STYLE* %osave_style, %union.rec** %arraydecay, %union.rec** %arraydecay145, %union.rec** %ntarget, %union.rec** %crs, i32 1, i32 0, %union.rec** %nenclose, i32 0)
  store %union.rec* %call146, %union.rec** %res, align 8
  %60 = load %union.rec*, %union.rec** %res, align 8
  %call147 = call %union.rec* @ReplaceWithTidy(%union.rec* %60, i32 1)
  store %union.rec* %call147, %union.rec** %res, align 8
  %61 = load %union.rec*, %union.rec** %res, align 8
  %os1148 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 1
  %os11150 = bitcast %union.FIRST_UNION* %ou1149 to %struct.anon*
  %otype151 = getelementptr inbounds %struct.anon, %struct.anon* %os11150, i32 0, i32 0
  %62 = load i8, i8* %otype151, align 1
  %conv152 = zext i8 %62 to i32
  %cmp153 = icmp eq i32 %conv152, 11
  br i1 %cmp153, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.139
  %63 = load %union.rec*, %union.rec** %res, align 8
  %os1155 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 1
  %os11157 = bitcast %union.FIRST_UNION* %ou1156 to %struct.anon*
  %otype158 = getelementptr inbounds %struct.anon, %struct.anon* %os11157, i32 0, i32 0
  %64 = load i8, i8* %otype158, align 1
  %conv159 = zext i8 %64 to i32
  %cmp160 = icmp eq i32 %conv159, 12
  br i1 %cmp160, label %if.else, label %if.then.162

if.then.162:                                      ; preds = %lor.lhs.false
  %65 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1163 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 1
  %ofpos165 = bitcast %union.FIRST_UNION* %ou1164 to %struct.FILE_POS*
  %call166 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 46, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %if.end.139
  %66 = load %union.rec*, %union.rec** %res, align 8
  %os1167 = bitcast %union.rec* %66 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 4
  %arraydecay168 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call169 = call i32 @strcmp(i8* %arraydecay168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #4
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.173:                                      ; preds = %if.else
  %67 = load %union.rec*, %union.rec** %res, align 8
  %os1174 = bitcast %union.rec* %67 to %struct.word_type*
  %ostring175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 4
  %arraydecay176 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring175, i32 0, i32 0
  %call177 = call i32 @strcmp(i8* %arraydecay176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #4
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.then.180, label %if.else.181

if.then.180:                                      ; preds = %if.else.173
  store i32 0, i32* %retval
  br label %return

if.else.181:                                      ; preds = %if.else.173
  %68 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1182 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 1
  %ofpos184 = bitcast %union.FIRST_UNION* %ou1183 to %struct.FILE_POS*
  %call185 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 46, i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.181, %if.then.180, %if.then.172, %if.then.162
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @Manifest(%union.rec*, %union.rec*, %struct.STYLE*, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32, i32, %union.rec**, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @SetOptimize(%union.rec* %hd, %struct.STYLE* %style) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %style.addr = alloca %struct.STYLE*, align 8
  %buff = alloca [512 x i8], align 16
  %seq = alloca [512 x i8], align 16
  %res = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %cont = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %num = alloca i32, align 4
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2 = bitcast %union.rec* %0 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %1 = load %union.rec*, %union.rec** %oactual, align 8
  %call = call i8* @SymName(%union.rec* %1)
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %call) #5
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call3 = call i8* @strcat(i8* %arraydecay2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %call5 = call i8* @StringInt(i32 %bf.clear)
  %call6 = call i8* @strcat(i8* %arraydecay4, i8* %call5) #5
  %3 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %4 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %call9 = call i32 @DbRetrieve(%union.rec* %3, i32 0, %union.rec* %4, i8* %arraydecay7, i8* %arraydecay8, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else.575

if.then:                                          ; preds = %entry
  call void @SwitchScope(%union.rec* null)
  %5 = load i16, i16* %dfnum, align 2
  %6 = load i64, i64* %dfpos, align 8
  %7 = load i32, i32* %dlnum, align 4
  %call10 = call %union.rec* @ReadFromFile(i16 zeroext %5, i64 %6, i32 %7)
  store %union.rec* %call10, %union.rec** %res, align 8
  call void @UnSwitchScope(%union.rec* null)
  %8 = load %union.rec*, %union.rec** %res, align 8
  %cmp = icmp ne %union.rec* %8, null
  br i1 %cmp, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %10 = load %union.rec*, %union.rec** %res, align 8
  %os113 = bitcast %union.rec* %10 to %struct.word_type*
  %ou114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou114 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %11 = load i8, i8* %otype, align 1
  %conv = zext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv, 2
  br i1 %cmp15, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end
  %13 = load %union.rec*, %union.rec** %res, align 8
  %os220 = bitcast %union.rec* %13 to %struct.closure_type*
  %oactual21 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os220, i32 0, i32 5
  %14 = load %union.rec*, %union.rec** %oactual21, align 8
  %15 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %cmp22 = icmp eq %union.rec* %14, %15
  br i1 %cmp22, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.19
  %17 = load %union.rec*, %union.rec** %res, align 8
  %os127 = bitcast %union.rec* %17 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc, align 8
  %19 = load %union.rec*, %union.rec** %res, align 8
  %cmp28 = icmp ne %union.rec* %18, %19
  br i1 %cmp28, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.end.26
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call31 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.26
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os133 = bitcast %union.rec* %21 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %osucc36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %osucc36, align 8
  %os137 = bitcast %union.rec* %22 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %23, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os140 = bitcast %union.rec* %24 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %os1142 = bitcast %union.FIRST_UNION* %ou141 to %struct.anon*
  %otype43 = getelementptr inbounds %struct.anon, %struct.anon* %os1142, i32 0, i32 0
  %25 = load i8, i8* %otype43, align 1
  %conv44 = zext i8 %25 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os147 = bitcast %union.rec* %26 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 1
  %opred50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred50, align 8
  store %union.rec* %27, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %union.rec*, %union.rec** %y, align 8
  %os151 = bitcast %union.rec* %28 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %os1153 = bitcast %union.FIRST_UNION* %ou152 to %struct.anon*
  %otype54 = getelementptr inbounds %struct.anon, %struct.anon* %os1153, i32 0, i32 0
  %29 = load i8, i8* %otype54, align 1
  %conv55 = zext i8 %29 to i32
  %cmp56 = icmp eq i32 %conv55, 10
  br i1 %cmp56, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %for.end
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %for.end
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os161 = bitcast %union.rec* %31 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 0
  %osucc64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %osucc64, align 8
  %os165 = bitcast %union.rec* %32 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %opred68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred68, align 8
  store %union.rec* %33, %union.rec** %y, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.78, %if.end.60
  %34 = load %union.rec*, %union.rec** %y, align 8
  %os170 = bitcast %union.rec* %34 to %struct.word_type*
  %ou171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 1
  %os1172 = bitcast %union.FIRST_UNION* %ou171 to %struct.anon*
  %otype73 = getelementptr inbounds %struct.anon, %struct.anon* %os1172, i32 0, i32 0
  %35 = load i8, i8* %otype73, align 1
  %conv74 = zext i8 %35 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %for.body.77, label %for.end.83

for.body.77:                                      ; preds = %for.cond.69
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.77
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os179 = bitcast %union.rec* %36 to %struct.word_type*
  %olist80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist80, i32 0, i64 1
  %opred82 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx81, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred82, align 8
  store %union.rec* %37, %union.rec** %y, align 8
  br label %for.cond.69

for.end.83:                                       ; preds = %for.cond.69
  %38 = load %union.rec*, %union.rec** %y, align 8
  %os184 = bitcast %union.rec* %38 to %struct.word_type*
  %ou185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 1
  %os1186 = bitcast %union.FIRST_UNION* %ou185 to %struct.anon*
  %otype87 = getelementptr inbounds %struct.anon, %struct.anon* %os1186, i32 0, i32 0
  %39 = load i8, i8* %otype87, align 1
  %conv88 = zext i8 %39 to i32
  %cmp89 = icmp eq i32 %conv88, 17
  br i1 %cmp89, label %if.end.93, label %if.then.91

if.then.91:                                       ; preds = %for.end.83
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call92 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %for.end.83
  %41 = load %union.rec*, %union.rec** %y, align 8
  %call94 = call %union.rec* @ReplaceWithTidy(%union.rec* %41, i32 0)
  store %union.rec* %call94, %union.rec** %y, align 8
  %42 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os195 = bitcast %union.rec* %42 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oopt_hyph = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load96 = load i16, i16* %oopt_hyph, align 2
  %bf.clear97 = and i16 %bf.load96, -513
  store i16 %bf.clear97, i16* %oopt_hyph, align 2
  %43 = load %union.rec*, %union.rec** %y, align 8
  %os198 = bitcast %union.rec* %43 to %struct.word_type*
  %ou199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 1
  %os11100 = bitcast %union.FIRST_UNION* %ou199 to %struct.anon*
  %otype101 = getelementptr inbounds %struct.anon, %struct.anon* %os11100, i32 0, i32 0
  %44 = load i8, i8* %otype101, align 1
  %conv102 = zext i8 %44 to i32
  %cmp103 = icmp eq i32 %conv102, 17
  br i1 %cmp103, label %if.end.107, label %if.then.105

if.then.105:                                      ; preds = %if.end.93
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call106 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.93
  %46 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %46, %union.rec** %link, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.449, %if.end.107
  %47 = load %union.rec*, %union.rec** %link, align 8
  %os1109 = bitcast %union.rec* %47 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 0
  %osucc112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %osucc112, align 8
  %49 = load %union.rec*, %union.rec** %y, align 8
  %cmp113 = icmp ne %union.rec* %48, %49
  br i1 %cmp113, label %for.body.115, label %for.end.454

for.body.115:                                     ; preds = %for.cond.108
  %50 = load %union.rec*, %union.rec** %link, align 8
  %os1116 = bitcast %union.rec* %50 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 0
  %osucc119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %osucc119, align 8
  %os1120 = bitcast %union.rec* %51 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 1
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred123, align 8
  store %union.rec* %52, %union.rec** %z, align 8
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.133, %for.body.115
  %53 = load %union.rec*, %union.rec** %z, align 8
  %os1125 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 1
  %os11127 = bitcast %union.FIRST_UNION* %ou1126 to %struct.anon*
  %otype128 = getelementptr inbounds %struct.anon, %struct.anon* %os11127, i32 0, i32 0
  %54 = load i8, i8* %otype128, align 1
  %conv129 = zext i8 %54 to i32
  %cmp130 = icmp eq i32 %conv129, 0
  br i1 %cmp130, label %for.body.132, label %for.end.138

for.body.132:                                     ; preds = %for.cond.124
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.132
  %55 = load %union.rec*, %union.rec** %z, align 8
  %os1134 = bitcast %union.rec* %55 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 1
  %opred137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred137, align 8
  store %union.rec* %56, %union.rec** %z, align 8
  br label %for.cond.124

for.end.138:                                      ; preds = %for.cond.124
  %57 = load %union.rec*, %union.rec** %z, align 8
  %os1139 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 1
  %os11141 = bitcast %union.FIRST_UNION* %ou1140 to %struct.anon*
  %otype142 = getelementptr inbounds %struct.anon, %struct.anon* %os11141, i32 0, i32 0
  %58 = load i8, i8* %otype142, align 1
  %conv143 = zext i8 %58 to i32
  %cmp144 = icmp eq i32 %conv143, 1
  br i1 %cmp144, label %if.then.146, label %if.else

if.then.146:                                      ; preds = %for.end.138
  %59 = load %union.rec*, %union.rec** %link, align 8
  %os1147 = bitcast %union.rec* %59 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 0
  %osucc150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 1
  %60 = load %union.rec*, %union.rec** %osucc150, align 8
  store %union.rec* %60, %union.rec** @xx_link, align 8
  %61 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %61, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1151 = bitcast %union.rec* %62 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 1
  %osucc154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 1
  %63 = load %union.rec*, %union.rec** %osucc154, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp155 = icmp eq %union.rec* %63, %64
  br i1 %cmp155, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.146
  br label %cond.end

cond.false:                                       ; preds = %if.then.146
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %65 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 1
  %osucc160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 1
  %66 = load %union.rec*, %union.rec** %osucc160, align 8
  store %union.rec* %66, %union.rec** @zz_res, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1161 = bitcast %union.rec* %67 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %opred164, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1165 = bitcast %union.rec* %69 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 1
  %opred168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 0
  store %union.rec* %68, %union.rec** %opred168, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1169 = bitcast %union.rec* %71 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %opred172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 0
  %72 = load %union.rec*, %union.rec** %opred172, align 8
  %os1173 = bitcast %union.rec* %72 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  store %union.rec* %70, %union.rec** %osucc176, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1177 = bitcast %union.rec* %74 to %struct.word_type*
  %olist178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist178, i32 0, i64 1
  %osucc180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx179, i32 0, i32 1
  store %union.rec* %73, %union.rec** %osucc180, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1181 = bitcast %union.rec* %75 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 1
  %opred184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 0
  store %union.rec* %73, %union.rec** %opred184, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %76, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %77 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1185 = bitcast %union.rec* %78 to %struct.word_type*
  %olist186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist186, i32 0, i64 0
  %osucc188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx187, i32 0, i32 1
  %79 = load %union.rec*, %union.rec** %osucc188, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp189 = icmp eq %union.rec* %79, %80
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.end
  br label %cond.end.221

cond.false.192:                                   ; preds = %cond.end
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %81 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 0
  %osucc196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 1
  %82 = load %union.rec*, %union.rec** %osucc196, align 8
  store %union.rec* %82, %union.rec** @zz_res, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1197 = bitcast %union.rec* %83 to %struct.word_type*
  %olist198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist198, i32 0, i64 0
  %opred200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx199, i32 0, i32 0
  %84 = load %union.rec*, %union.rec** %opred200, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1201 = bitcast %union.rec* %85 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 0
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  store %union.rec* %84, %union.rec** %opred204, align 8
  %86 = load %union.rec*, %union.rec** @zz_res, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1205 = bitcast %union.rec* %87 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 0
  %opred208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred208, align 8
  %os1209 = bitcast %union.rec* %88 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 0
  %osucc212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 1
  store %union.rec* %86, %union.rec** %osucc212, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1213 = bitcast %union.rec* %90 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 0
  %osucc216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 1
  store %union.rec* %89, %union.rec** %osucc216, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1217 = bitcast %union.rec* %91 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 0
  %opred220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 0
  store %union.rec* %89, %union.rec** %opred220, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.192, %cond.true.191
  %cond222 = phi %union.rec* [ null, %cond.true.191 ], [ %92, %cond.false.192 ]
  %93 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %93, %union.rec** @zz_hold, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1223 = bitcast %union.rec* %95 to %struct.word_type*
  %ou1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 1
  %os11225 = bitcast %union.FIRST_UNION* %ou1224 to %struct.anon*
  %otype226 = getelementptr inbounds %struct.anon, %struct.anon* %os11225, i32 0, i32 0
  %96 = load i8, i8* %otype226, align 1
  %conv227 = zext i8 %96 to i32
  %cmp228 = icmp eq i32 %conv227, 11
  br i1 %cmp228, label %cond.true.237, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.221
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1230 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 1
  %os11232 = bitcast %union.FIRST_UNION* %ou1231 to %struct.anon*
  %otype233 = getelementptr inbounds %struct.anon, %struct.anon* %os11232, i32 0, i32 0
  %98 = load i8, i8* %otype233, align 1
  %conv234 = zext i8 %98 to i32
  %cmp235 = icmp eq i32 %conv234, 12
  br i1 %cmp235, label %cond.true.237, label %cond.false.242

cond.true.237:                                    ; preds = %lor.lhs.false, %cond.end.221
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %99 to %struct.word_type*
  %ou1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 1
  %os11240 = bitcast %union.FIRST_UNION* %ou1239 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11240, i32 0, i32 1
  %100 = load i8, i8* %orec_size, align 1
  %conv241 = zext i8 %100 to i32
  br label %cond.end.249

cond.false.242:                                   ; preds = %lor.lhs.false
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1243 = bitcast %union.rec* %101 to %struct.word_type*
  %ou1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1243, i32 0, i32 1
  %os11245 = bitcast %union.FIRST_UNION* %ou1244 to %struct.anon*
  %otype246 = getelementptr inbounds %struct.anon, %struct.anon* %os11245, i32 0, i32 0
  %102 = load i8, i8* %otype246, align 1
  %idxprom = zext i8 %102 to i64
  %arrayidx247 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %103 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %103 to i32
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.242, %cond.true.237
  %cond250 = phi i32 [ %conv241, %cond.true.237 ], [ %conv248, %cond.false.242 ]
  store i32 %cond250, i32* @zz_size, align 4
  %104 = load i32, i32* @zz_size, align 4
  %idxprom251 = sext i32 %104 to i64
  %arrayidx252 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom251
  %105 = load %union.rec*, %union.rec** %arrayidx252, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1253 = bitcast %union.rec* %106 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 0
  %opred256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 0
  store %union.rec* %105, %union.rec** %opred256, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = load i32, i32* @zz_size, align 4
  %idxprom257 = sext i32 %108 to i64
  %arrayidx258 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom257
  store %union.rec* %107, %union.rec** %arrayidx258, align 8
  %109 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1259 = bitcast %union.rec* %109 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 1
  %osucc262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 1
  %110 = load %union.rec*, %union.rec** %osucc262, align 8
  %111 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp263 = icmp eq %union.rec* %110, %111
  br i1 %cmp263, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %cond.end.249
  %112 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call266 = call i32 @DisposeObject(%union.rec* %112)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.265, %cond.end.249
  %113 = load %union.rec*, %union.rec** %link, align 8
  %os1268 = bitcast %union.rec* %113 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 0
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred271, align 8
  store %union.rec* %114, %union.rec** %link, align 8
  br label %if.end.448

if.else:                                          ; preds = %for.end.138
  %115 = load %union.rec*, %union.rec** %z, align 8
  %os1272 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 1
  %os11274 = bitcast %union.FIRST_UNION* %ou1273 to %struct.anon*
  %otype275 = getelementptr inbounds %struct.anon, %struct.anon* %os11274, i32 0, i32 0
  %116 = load i8, i8* %otype275, align 1
  %conv276 = zext i8 %116 to i32
  %cmp277 = icmp eq i32 %conv276, 11
  br i1 %cmp277, label %if.then.287, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %if.else
  %117 = load %union.rec*, %union.rec** %z, align 8
  %os1280 = bitcast %union.rec* %117 to %struct.word_type*
  %ou1281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 1
  %os11282 = bitcast %union.FIRST_UNION* %ou1281 to %struct.anon*
  %otype283 = getelementptr inbounds %struct.anon, %struct.anon* %os11282, i32 0, i32 0
  %118 = load i8, i8* %otype283, align 1
  %conv284 = zext i8 %118 to i32
  %cmp285 = icmp eq i32 %conv284, 12
  br i1 %cmp285, label %if.then.287, label %if.else.445

if.then.287:                                      ; preds = %lor.lhs.false.279, %if.else
  %119 = load %union.rec*, %union.rec** %z, align 8
  %os1288 = bitcast %union.rec* %119 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 4
  %arraydecay289 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call290 = call i32 @strcmp(i8* %arraydecay289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp291 = icmp eq i32 %call290, 0
  br i1 %cmp291, label %if.then.293, label %if.else.432

if.then.293:                                      ; preds = %if.then.287
  %120 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1294 = bitcast %union.rec* %120 to %struct.word_type*
  %ou2295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1294, i32 0, i32 2
  %os23296 = bitcast %union.SECOND_UNION* %ou2295 to %struct.anon.2*
  %oopt_hyph297 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23296, i32 0, i32 2
  %bf.load298 = load i16, i16* %oopt_hyph297, align 2
  %bf.clear299 = and i16 %bf.load298, -513
  %bf.set = or i16 %bf.clear299, 512
  store i16 %bf.set, i16* %oopt_hyph297, align 2
  %121 = load %union.rec*, %union.rec** %link, align 8
  %os1300 = bitcast %union.rec* %121 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 0
  %osucc303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 1
  %122 = load %union.rec*, %union.rec** %osucc303, align 8
  store %union.rec* %122, %union.rec** @xx_link, align 8
  %123 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1304 = bitcast %union.rec* %124 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 1
  %osucc307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 1
  %125 = load %union.rec*, %union.rec** %osucc307, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp308 = icmp eq %union.rec* %125, %126
  br i1 %cmp308, label %cond.true.310, label %cond.false.311

cond.true.310:                                    ; preds = %if.then.293
  br label %cond.end.340

cond.false.311:                                   ; preds = %if.then.293
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1312 = bitcast %union.rec* %127 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %osucc315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 1
  %128 = load %union.rec*, %union.rec** %osucc315, align 8
  store %union.rec* %128, %union.rec** @zz_res, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1316 = bitcast %union.rec* %129 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %opred319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 0
  %130 = load %union.rec*, %union.rec** %opred319, align 8
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1320 = bitcast %union.rec* %131 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 1
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  store %union.rec* %130, %union.rec** %opred323, align 8
  %132 = load %union.rec*, %union.rec** @zz_res, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1324 = bitcast %union.rec* %133 to %struct.word_type*
  %olist325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist325, i32 0, i64 1
  %opred327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx326, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %opred327, align 8
  %os1328 = bitcast %union.rec* %134 to %struct.word_type*
  %olist329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist329, i32 0, i64 1
  %osucc331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx330, i32 0, i32 1
  store %union.rec* %132, %union.rec** %osucc331, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1332 = bitcast %union.rec* %136 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %osucc335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 1
  store %union.rec* %135, %union.rec** %osucc335, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %137 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  store %union.rec* %135, %union.rec** %opred339, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.311, %cond.true.310
  %cond341 = phi %union.rec* [ null, %cond.true.310 ], [ %138, %cond.false.311 ]
  store %union.rec* %cond341, %union.rec** @xx_tmp, align 8
  %139 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %139, %union.rec** @zz_hold, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1342 = bitcast %union.rec* %140 to %struct.word_type*
  %olist343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1342, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist343, i32 0, i64 0
  %osucc345 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx344, i32 0, i32 1
  %141 = load %union.rec*, %union.rec** %osucc345, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp346 = icmp eq %union.rec* %141, %142
  br i1 %cmp346, label %cond.true.348, label %cond.false.349

cond.true.348:                                    ; preds = %cond.end.340
  br label %cond.end.378

cond.false.349:                                   ; preds = %cond.end.340
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1350 = bitcast %union.rec* %143 to %struct.word_type*
  %olist351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist351, i32 0, i64 0
  %osucc353 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx352, i32 0, i32 1
  %144 = load %union.rec*, %union.rec** %osucc353, align 8
  store %union.rec* %144, %union.rec** @zz_res, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1354 = bitcast %union.rec* %145 to %struct.word_type*
  %olist355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist355, i32 0, i64 0
  %opred357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx356, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %opred357, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1358 = bitcast %union.rec* %147 to %struct.word_type*
  %olist359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1358, i32 0, i32 0
  %arrayidx360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist359, i32 0, i64 0
  %opred361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx360, i32 0, i32 0
  store %union.rec* %146, %union.rec** %opred361, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1362 = bitcast %union.rec* %149 to %struct.word_type*
  %olist363 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1362, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist363, i32 0, i64 0
  %opred365 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx364, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %opred365, align 8
  %os1366 = bitcast %union.rec* %150 to %struct.word_type*
  %olist367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist367, i32 0, i64 0
  %osucc369 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx368, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc369, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1370 = bitcast %union.rec* %152 to %struct.word_type*
  %olist371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist371, i32 0, i64 0
  %osucc373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx372, i32 0, i32 1
  store %union.rec* %151, %union.rec** %osucc373, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1374 = bitcast %union.rec* %153 to %struct.word_type*
  %olist375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist375, i32 0, i64 0
  %opred377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx376, i32 0, i32 0
  store %union.rec* %151, %union.rec** %opred377, align 8
  %154 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.false.349, %cond.true.348
  %cond379 = phi %union.rec* [ null, %cond.true.348 ], [ %154, %cond.false.349 ]
  %155 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %155, %union.rec** @zz_hold, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %156, %union.rec** @zz_hold, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %157 to %struct.word_type*
  %ou1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 1
  %os11382 = bitcast %union.FIRST_UNION* %ou1381 to %struct.anon*
  %otype383 = getelementptr inbounds %struct.anon, %struct.anon* %os11382, i32 0, i32 0
  %158 = load i8, i8* %otype383, align 1
  %conv384 = zext i8 %158 to i32
  %cmp385 = icmp eq i32 %conv384, 11
  br i1 %cmp385, label %cond.true.395, label %lor.lhs.false.387

lor.lhs.false.387:                                ; preds = %cond.end.378
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1388 = bitcast %union.rec* %159 to %struct.word_type*
  %ou1389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 1
  %os11390 = bitcast %union.FIRST_UNION* %ou1389 to %struct.anon*
  %otype391 = getelementptr inbounds %struct.anon, %struct.anon* %os11390, i32 0, i32 0
  %160 = load i8, i8* %otype391, align 1
  %conv392 = zext i8 %160 to i32
  %cmp393 = icmp eq i32 %conv392, 12
  br i1 %cmp393, label %cond.true.395, label %cond.false.401

cond.true.395:                                    ; preds = %lor.lhs.false.387, %cond.end.378
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1396 = bitcast %union.rec* %161 to %struct.word_type*
  %ou1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 1
  %os11398 = bitcast %union.FIRST_UNION* %ou1397 to %struct.anon*
  %orec_size399 = getelementptr inbounds %struct.anon, %struct.anon* %os11398, i32 0, i32 1
  %162 = load i8, i8* %orec_size399, align 1
  %conv400 = zext i8 %162 to i32
  br label %cond.end.409

cond.false.401:                                   ; preds = %lor.lhs.false.387
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1402 = bitcast %union.rec* %163 to %struct.word_type*
  %ou1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 1
  %os11404 = bitcast %union.FIRST_UNION* %ou1403 to %struct.anon*
  %otype405 = getelementptr inbounds %struct.anon, %struct.anon* %os11404, i32 0, i32 0
  %164 = load i8, i8* %otype405, align 1
  %idxprom406 = zext i8 %164 to i64
  %arrayidx407 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom406
  %165 = load i8, i8* %arrayidx407, align 1
  %conv408 = zext i8 %165 to i32
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.401, %cond.true.395
  %cond410 = phi i32 [ %conv400, %cond.true.395 ], [ %conv408, %cond.false.401 ]
  store i32 %cond410, i32* @zz_size, align 4
  %166 = load i32, i32* @zz_size, align 4
  %idxprom411 = sext i32 %166 to i64
  %arrayidx412 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom411
  %167 = load %union.rec*, %union.rec** %arrayidx412, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1413 = bitcast %union.rec* %168 to %struct.word_type*
  %olist414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1413, i32 0, i32 0
  %arrayidx415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist414, i32 0, i64 0
  %opred416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx415, i32 0, i32 0
  store %union.rec* %167, %union.rec** %opred416, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = load i32, i32* @zz_size, align 4
  %idxprom417 = sext i32 %170 to i64
  %arrayidx418 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom417
  store %union.rec* %169, %union.rec** %arrayidx418, align 8
  %171 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1419 = bitcast %union.rec* %171 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 1
  %osucc422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 1
  %172 = load %union.rec*, %union.rec** %osucc422, align 8
  %173 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp423 = icmp eq %union.rec* %172, %173
  br i1 %cmp423, label %if.then.425, label %if.end.427

if.then.425:                                      ; preds = %cond.end.409
  %174 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call426 = call i32 @DisposeObject(%union.rec* %174)
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.425, %cond.end.409
  %175 = load %union.rec*, %union.rec** %link, align 8
  %os1428 = bitcast %union.rec* %175 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 0
  %opred431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %opred431, align 8
  store %union.rec* %176, %union.rec** %link, align 8
  br label %if.end.444

if.else.432:                                      ; preds = %if.then.287
  store i32 0, i32* %num, align 4
  %177 = load %union.rec*, %union.rec** %z, align 8
  %os1433 = bitcast %union.rec* %177 to %struct.word_type*
  %ostring434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1433, i32 0, i32 4
  %arraydecay435 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring434, i32 0, i32 0
  %call436 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay435, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32* %num) #5
  %178 = load i32, i32* %num, align 4
  %cmp437 = icmp sgt i32 %178, 0
  br i1 %cmp437, label %if.end.441, label %if.then.439

if.then.439:                                      ; preds = %if.else.432
  %179 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call440 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.439, %if.else.432
  %180 = load i32, i32* %num, align 4
  %181 = load %union.rec*, %union.rec** %z, align 8
  %os1442 = bitcast %union.rec* %181 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  store i32 %180, i32* %arrayidx443, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.441, %if.end.427
  br label %if.end.447

if.else.445:                                      ; preds = %lor.lhs.false.279
  %182 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call446 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %182, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.447

if.end.447:                                       ; preds = %if.else.445, %if.end.444
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.end.267
  br label %for.inc.449

for.inc.449:                                      ; preds = %if.end.448
  %183 = load %union.rec*, %union.rec** %link, align 8
  %os1450 = bitcast %union.rec* %183 to %struct.word_type*
  %olist451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1450, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist451, i32 0, i64 0
  %osucc453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx452, i32 0, i32 1
  %184 = load %union.rec*, %union.rec** %osucc453, align 8
  store %union.rec* %184, %union.rec** %link, align 8
  br label %for.cond.108

for.end.454:                                      ; preds = %for.cond.108
  %185 = load %union.rec*, %union.rec** %y, align 8
  %os1455 = bitcast %union.rec* %185 to %struct.word_type*
  %olist456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 0
  %arrayidx457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist456, i32 0, i64 1
  %osucc458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx457, i32 0, i32 1
  %186 = load %union.rec*, %union.rec** %osucc458, align 8
  store %union.rec* %186, %union.rec** @xx_link, align 8
  %187 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %187, %union.rec** @zz_hold, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1459 = bitcast %union.rec* %188 to %struct.word_type*
  %olist460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist460, i32 0, i64 1
  %osucc462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx461, i32 0, i32 1
  %189 = load %union.rec*, %union.rec** %osucc462, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp463 = icmp eq %union.rec* %189, %190
  br i1 %cmp463, label %cond.true.465, label %cond.false.466

cond.true.465:                                    ; preds = %for.end.454
  br label %cond.end.495

cond.false.466:                                   ; preds = %for.end.454
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1467 = bitcast %union.rec* %191 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 1
  %osucc470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 1
  %192 = load %union.rec*, %union.rec** %osucc470, align 8
  store %union.rec* %192, %union.rec** @zz_res, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1471 = bitcast %union.rec* %193 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 1
  %opred474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 0
  %194 = load %union.rec*, %union.rec** %opred474, align 8
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1475 = bitcast %union.rec* %195 to %struct.word_type*
  %olist476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 0
  %arrayidx477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist476, i32 0, i64 1
  %opred478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx477, i32 0, i32 0
  store %union.rec* %194, %union.rec** %opred478, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1479 = bitcast %union.rec* %197 to %struct.word_type*
  %olist480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 0
  %arrayidx481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist480, i32 0, i64 1
  %opred482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx481, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %opred482, align 8
  %os1483 = bitcast %union.rec* %198 to %struct.word_type*
  %olist484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist484, i32 0, i64 1
  %osucc486 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx485, i32 0, i32 1
  store %union.rec* %196, %union.rec** %osucc486, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1487 = bitcast %union.rec* %200 to %struct.word_type*
  %olist488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist488, i32 0, i64 1
  %osucc490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx489, i32 0, i32 1
  store %union.rec* %199, %union.rec** %osucc490, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1491 = bitcast %union.rec* %201 to %struct.word_type*
  %olist492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1491, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist492, i32 0, i64 1
  %opred494 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx493, i32 0, i32 0
  store %union.rec* %199, %union.rec** %opred494, align 8
  %202 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.466, %cond.true.465
  %cond496 = phi %union.rec* [ null, %cond.true.465 ], [ %202, %cond.false.466 ]
  %203 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %203, %union.rec** @zz_hold, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1497 = bitcast %union.rec* %204 to %struct.word_type*
  %olist498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1497, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist498, i32 0, i64 0
  %osucc500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx499, i32 0, i32 1
  %205 = load %union.rec*, %union.rec** %osucc500, align 8
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp501 = icmp eq %union.rec* %205, %206
  br i1 %cmp501, label %cond.true.503, label %cond.false.504

cond.true.503:                                    ; preds = %cond.end.495
  br label %cond.end.533

cond.false.504:                                   ; preds = %cond.end.495
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1505 = bitcast %union.rec* %207 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 0
  %osucc508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 1
  %208 = load %union.rec*, %union.rec** %osucc508, align 8
  store %union.rec* %208, %union.rec** @zz_res, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1509 = bitcast %union.rec* %209 to %struct.word_type*
  %olist510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 0
  %arrayidx511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist510, i32 0, i64 0
  %opred512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx511, i32 0, i32 0
  %210 = load %union.rec*, %union.rec** %opred512, align 8
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1513 = bitcast %union.rec* %211 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 0
  %opred516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 0
  store %union.rec* %210, %union.rec** %opred516, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1517 = bitcast %union.rec* %213 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 0
  %opred520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %opred520, align 8
  %os1521 = bitcast %union.rec* %214 to %struct.word_type*
  %olist522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1521, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist522, i32 0, i64 0
  %osucc524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx523, i32 0, i32 1
  store %union.rec* %212, %union.rec** %osucc524, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1525 = bitcast %union.rec* %216 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 0
  %osucc528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 1
  store %union.rec* %215, %union.rec** %osucc528, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1529 = bitcast %union.rec* %217 to %struct.word_type*
  %olist530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1529, i32 0, i32 0
  %arrayidx531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist530, i32 0, i64 0
  %opred532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx531, i32 0, i32 0
  store %union.rec* %215, %union.rec** %opred532, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.504, %cond.true.503
  %cond534 = phi %union.rec* [ null, %cond.true.503 ], [ %218, %cond.false.504 ]
  %219 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %220, %union.rec** @zz_hold, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1535 = bitcast %union.rec* %221 to %struct.word_type*
  %ou1536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1535, i32 0, i32 1
  %os11537 = bitcast %union.FIRST_UNION* %ou1536 to %struct.anon*
  %otype538 = getelementptr inbounds %struct.anon, %struct.anon* %os11537, i32 0, i32 0
  %222 = load i8, i8* %otype538, align 1
  %conv539 = zext i8 %222 to i32
  %cmp540 = icmp eq i32 %conv539, 11
  br i1 %cmp540, label %cond.true.550, label %lor.lhs.false.542

lor.lhs.false.542:                                ; preds = %cond.end.533
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1543 = bitcast %union.rec* %223 to %struct.word_type*
  %ou1544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1543, i32 0, i32 1
  %os11545 = bitcast %union.FIRST_UNION* %ou1544 to %struct.anon*
  %otype546 = getelementptr inbounds %struct.anon, %struct.anon* %os11545, i32 0, i32 0
  %224 = load i8, i8* %otype546, align 1
  %conv547 = zext i8 %224 to i32
  %cmp548 = icmp eq i32 %conv547, 12
  br i1 %cmp548, label %cond.true.550, label %cond.false.556

cond.true.550:                                    ; preds = %lor.lhs.false.542, %cond.end.533
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1551 = bitcast %union.rec* %225 to %struct.word_type*
  %ou1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1551, i32 0, i32 1
  %os11553 = bitcast %union.FIRST_UNION* %ou1552 to %struct.anon*
  %orec_size554 = getelementptr inbounds %struct.anon, %struct.anon* %os11553, i32 0, i32 1
  %226 = load i8, i8* %orec_size554, align 1
  %conv555 = zext i8 %226 to i32
  br label %cond.end.564

cond.false.556:                                   ; preds = %lor.lhs.false.542
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1557 = bitcast %union.rec* %227 to %struct.word_type*
  %ou1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 1
  %os11559 = bitcast %union.FIRST_UNION* %ou1558 to %struct.anon*
  %otype560 = getelementptr inbounds %struct.anon, %struct.anon* %os11559, i32 0, i32 0
  %228 = load i8, i8* %otype560, align 1
  %idxprom561 = zext i8 %228 to i64
  %arrayidx562 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom561
  %229 = load i8, i8* %arrayidx562, align 1
  %conv563 = zext i8 %229 to i32
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.false.556, %cond.true.550
  %cond565 = phi i32 [ %conv555, %cond.true.550 ], [ %conv563, %cond.false.556 ]
  store i32 %cond565, i32* @zz_size, align 4
  %230 = load i32, i32* @zz_size, align 4
  %idxprom566 = sext i32 %230 to i64
  %arrayidx567 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom566
  %231 = load %union.rec*, %union.rec** %arrayidx567, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1568 = bitcast %union.rec* %232 to %struct.word_type*
  %olist569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1568, i32 0, i32 0
  %arrayidx570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist569, i32 0, i64 0
  %opred571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx570, i32 0, i32 0
  store %union.rec* %231, %union.rec** %opred571, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %234 = load i32, i32* @zz_size, align 4
  %idxprom572 = sext i32 %234 to i64
  %arrayidx573 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom572
  store %union.rec* %233, %union.rec** %arrayidx573, align 8
  %235 = load %union.rec*, %union.rec** %res, align 8
  %call574 = call i32 @DisposeObject(%union.rec* %235)
  %236 = load %union.rec*, %union.rec** %y, align 8
  %237 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a = bitcast %union.rec* %237 to %struct.head_type*
  %oopt_counts = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 10
  store %union.rec* %236, %union.rec** %oopt_counts, align 8
  br label %if.end.578

if.else.575:                                      ; preds = %entry
  %238 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a576 = bitcast %union.rec* %238 to %struct.head_type*
  %oopt_counts577 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a576, i32 0, i32 10
  store %union.rec* null, %union.rec** %oopt_counts577, align 8
  br label %if.end.578

if.end.578:                                       ; preds = %if.else.575, %cond.end.564
  %239 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a579 = bitcast %union.rec* %239 to %struct.head_type*
  %oopt_counts580 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a579, i32 0, i32 10
  %240 = load %union.rec*, %union.rec** %oopt_counts580, align 8
  %cmp581 = icmp ne %union.rec* %240, null
  br i1 %cmp581, label %land.lhs.true, label %if.else.753

land.lhs.true:                                    ; preds = %if.end.578
  %241 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a583 = bitcast %union.rec* %241 to %struct.head_type*
  %oopt_counts584 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a583, i32 0, i32 10
  %242 = load %union.rec*, %union.rec** %oopt_counts584, align 8
  %os1585 = bitcast %union.rec* %242 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 0
  %osucc588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 1
  %243 = load %union.rec*, %union.rec** %osucc588, align 8
  %244 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a589 = bitcast %union.rec* %244 to %struct.head_type*
  %oopt_counts590 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a589, i32 0, i32 10
  %245 = load %union.rec*, %union.rec** %oopt_counts590, align 8
  %cmp591 = icmp ne %union.rec* %243, %245
  br i1 %cmp591, label %if.then.593, label %if.else.753

if.then.593:                                      ; preds = %land.lhs.true
  %246 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a594 = bitcast %union.rec* %246 to %struct.head_type*
  %oopt_counts595 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a594, i32 0, i32 10
  %247 = load %union.rec*, %union.rec** %oopt_counts595, align 8
  %os1596 = bitcast %union.rec* %247 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 0
  %osucc599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 1
  %248 = load %union.rec*, %union.rec** %osucc599, align 8
  %os1600 = bitcast %union.rec* %248 to %struct.word_type*
  %olist601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1600, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist601, i32 0, i64 1
  %opred603 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx602, i32 0, i32 0
  %249 = load %union.rec*, %union.rec** %opred603, align 8
  store %union.rec* %249, %union.rec** %z, align 8
  br label %for.cond.604

for.cond.604:                                     ; preds = %for.inc.613, %if.then.593
  %250 = load %union.rec*, %union.rec** %z, align 8
  %os1605 = bitcast %union.rec* %250 to %struct.word_type*
  %ou1606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1605, i32 0, i32 1
  %os11607 = bitcast %union.FIRST_UNION* %ou1606 to %struct.anon*
  %otype608 = getelementptr inbounds %struct.anon, %struct.anon* %os11607, i32 0, i32 0
  %251 = load i8, i8* %otype608, align 1
  %conv609 = zext i8 %251 to i32
  %cmp610 = icmp eq i32 %conv609, 0
  br i1 %cmp610, label %for.body.612, label %for.end.618

for.body.612:                                     ; preds = %for.cond.604
  br label %for.inc.613

for.inc.613:                                      ; preds = %for.body.612
  %252 = load %union.rec*, %union.rec** %z, align 8
  %os1614 = bitcast %union.rec* %252 to %struct.word_type*
  %olist615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1614, i32 0, i32 0
  %arrayidx616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist615, i32 0, i64 1
  %opred617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx616, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred617, align 8
  store %union.rec* %253, %union.rec** %z, align 8
  br label %for.cond.604

for.end.618:                                      ; preds = %for.cond.604
  %254 = load %union.rec*, %union.rec** %z, align 8
  %os1619 = bitcast %union.rec* %254 to %struct.word_type*
  %ou3620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1619, i32 0, i32 3
  %os31621 = bitcast %union.THIRD_UNION* %ou3620 to %struct.anon.6*
  %oback622 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31621, i32 0, i32 0
  %arrayidx623 = getelementptr inbounds [2 x i32], [2 x i32]* %oback622, i32 0, i64 0
  %255 = load i32, i32* %arrayidx623, align 4
  %sub = sub nsw i32 %255, 1
  %256 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a624 = bitcast %union.rec* %256 to %struct.head_type*
  %oopt_comps_permitted = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a624, i32 0, i32 15
  store i32 %sub, i32* %oopt_comps_permitted, align 4
  %257 = load %union.rec*, %union.rec** %z, align 8
  %os1625 = bitcast %union.rec* %257 to %struct.word_type*
  %olist626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1625, i32 0, i32 0
  %arrayidx627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist626, i32 0, i64 1
  %osucc628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx627, i32 0, i32 1
  %258 = load %union.rec*, %union.rec** %osucc628, align 8
  store %union.rec* %258, %union.rec** @xx_link, align 8
  %259 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %259, %union.rec** @zz_hold, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1629 = bitcast %union.rec* %260 to %struct.word_type*
  %olist630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 0
  %arrayidx631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist630, i32 0, i64 1
  %osucc632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx631, i32 0, i32 1
  %261 = load %union.rec*, %union.rec** %osucc632, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp633 = icmp eq %union.rec* %261, %262
  br i1 %cmp633, label %cond.true.635, label %cond.false.636

cond.true.635:                                    ; preds = %for.end.618
  br label %cond.end.665

cond.false.636:                                   ; preds = %for.end.618
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1637 = bitcast %union.rec* %263 to %struct.word_type*
  %olist638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 0
  %arrayidx639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist638, i32 0, i64 1
  %osucc640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx639, i32 0, i32 1
  %264 = load %union.rec*, %union.rec** %osucc640, align 8
  store %union.rec* %264, %union.rec** @zz_res, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1641 = bitcast %union.rec* %265 to %struct.word_type*
  %olist642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 0
  %arrayidx643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist642, i32 0, i64 1
  %opred644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx643, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %opred644, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1645 = bitcast %union.rec* %267 to %struct.word_type*
  %olist646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1645, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist646, i32 0, i64 1
  %opred648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx647, i32 0, i32 0
  store %union.rec* %266, %union.rec** %opred648, align 8
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1649 = bitcast %union.rec* %269 to %struct.word_type*
  %olist650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist650, i32 0, i64 1
  %opred652 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx651, i32 0, i32 0
  %270 = load %union.rec*, %union.rec** %opred652, align 8
  %os1653 = bitcast %union.rec* %270 to %struct.word_type*
  %olist654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1653, i32 0, i32 0
  %arrayidx655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist654, i32 0, i64 1
  %osucc656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx655, i32 0, i32 1
  store %union.rec* %268, %union.rec** %osucc656, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1657 = bitcast %union.rec* %272 to %struct.word_type*
  %olist658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1657, i32 0, i32 0
  %arrayidx659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist658, i32 0, i64 1
  %osucc660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx659, i32 0, i32 1
  store %union.rec* %271, %union.rec** %osucc660, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1661 = bitcast %union.rec* %273 to %struct.word_type*
  %olist662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1661, i32 0, i32 0
  %arrayidx663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist662, i32 0, i64 1
  %opred664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx663, i32 0, i32 0
  store %union.rec* %271, %union.rec** %opred664, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.false.636, %cond.true.635
  %cond666 = phi %union.rec* [ null, %cond.true.635 ], [ %274, %cond.false.636 ]
  store %union.rec* %cond666, %union.rec** @xx_tmp, align 8
  %275 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %275, %union.rec** @zz_hold, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1667 = bitcast %union.rec* %276 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 0
  %osucc670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 1
  %277 = load %union.rec*, %union.rec** %osucc670, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp671 = icmp eq %union.rec* %277, %278
  br i1 %cmp671, label %cond.true.673, label %cond.false.674

cond.true.673:                                    ; preds = %cond.end.665
  br label %cond.end.703

cond.false.674:                                   ; preds = %cond.end.665
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1675 = bitcast %union.rec* %279 to %struct.word_type*
  %olist676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist676, i32 0, i64 0
  %osucc678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx677, i32 0, i32 1
  %280 = load %union.rec*, %union.rec** %osucc678, align 8
  store %union.rec* %280, %union.rec** @zz_res, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1679 = bitcast %union.rec* %281 to %struct.word_type*
  %olist680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1679, i32 0, i32 0
  %arrayidx681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist680, i32 0, i64 0
  %opred682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx681, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred682, align 8
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1683 = bitcast %union.rec* %283 to %struct.word_type*
  %olist684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1683, i32 0, i32 0
  %arrayidx685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist684, i32 0, i64 0
  %opred686 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx685, i32 0, i32 0
  store %union.rec* %282, %union.rec** %opred686, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1687 = bitcast %union.rec* %285 to %struct.word_type*
  %olist688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1687, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist688, i32 0, i64 0
  %opred690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx689, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %opred690, align 8
  %os1691 = bitcast %union.rec* %286 to %struct.word_type*
  %olist692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1691, i32 0, i32 0
  %arrayidx693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist692, i32 0, i64 0
  %osucc694 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx693, i32 0, i32 1
  store %union.rec* %284, %union.rec** %osucc694, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1695 = bitcast %union.rec* %288 to %struct.word_type*
  %olist696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1695, i32 0, i32 0
  %arrayidx697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist696, i32 0, i64 0
  %osucc698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx697, i32 0, i32 1
  store %union.rec* %287, %union.rec** %osucc698, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1699 = bitcast %union.rec* %289 to %struct.word_type*
  %olist700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist700, i32 0, i64 0
  %opred702 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx701, i32 0, i32 0
  store %union.rec* %287, %union.rec** %opred702, align 8
  %290 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.703

cond.end.703:                                     ; preds = %cond.false.674, %cond.true.673
  %cond704 = phi %union.rec* [ null, %cond.true.673 ], [ %290, %cond.false.674 ]
  %291 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %291, %union.rec** @zz_hold, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %292, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1705 = bitcast %union.rec* %293 to %struct.word_type*
  %ou1706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 1
  %os11707 = bitcast %union.FIRST_UNION* %ou1706 to %struct.anon*
  %otype708 = getelementptr inbounds %struct.anon, %struct.anon* %os11707, i32 0, i32 0
  %294 = load i8, i8* %otype708, align 1
  %conv709 = zext i8 %294 to i32
  %cmp710 = icmp eq i32 %conv709, 11
  br i1 %cmp710, label %cond.true.720, label %lor.lhs.false.712

lor.lhs.false.712:                                ; preds = %cond.end.703
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1713 = bitcast %union.rec* %295 to %struct.word_type*
  %ou1714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 1
  %os11715 = bitcast %union.FIRST_UNION* %ou1714 to %struct.anon*
  %otype716 = getelementptr inbounds %struct.anon, %struct.anon* %os11715, i32 0, i32 0
  %296 = load i8, i8* %otype716, align 1
  %conv717 = zext i8 %296 to i32
  %cmp718 = icmp eq i32 %conv717, 12
  br i1 %cmp718, label %cond.true.720, label %cond.false.726

cond.true.720:                                    ; preds = %lor.lhs.false.712, %cond.end.703
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1721 = bitcast %union.rec* %297 to %struct.word_type*
  %ou1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 1
  %os11723 = bitcast %union.FIRST_UNION* %ou1722 to %struct.anon*
  %orec_size724 = getelementptr inbounds %struct.anon, %struct.anon* %os11723, i32 0, i32 1
  %298 = load i8, i8* %orec_size724, align 1
  %conv725 = zext i8 %298 to i32
  br label %cond.end.734

cond.false.726:                                   ; preds = %lor.lhs.false.712
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1727 = bitcast %union.rec* %299 to %struct.word_type*
  %ou1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1727, i32 0, i32 1
  %os11729 = bitcast %union.FIRST_UNION* %ou1728 to %struct.anon*
  %otype730 = getelementptr inbounds %struct.anon, %struct.anon* %os11729, i32 0, i32 0
  %300 = load i8, i8* %otype730, align 1
  %idxprom731 = zext i8 %300 to i64
  %arrayidx732 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom731
  %301 = load i8, i8* %arrayidx732, align 1
  %conv733 = zext i8 %301 to i32
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.726, %cond.true.720
  %cond735 = phi i32 [ %conv725, %cond.true.720 ], [ %conv733, %cond.false.726 ]
  store i32 %cond735, i32* @zz_size, align 4
  %302 = load i32, i32* @zz_size, align 4
  %idxprom736 = sext i32 %302 to i64
  %arrayidx737 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom736
  %303 = load %union.rec*, %union.rec** %arrayidx737, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1738 = bitcast %union.rec* %304 to %struct.word_type*
  %olist739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 0
  %arrayidx740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist739, i32 0, i64 0
  %opred741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx740, i32 0, i32 0
  store %union.rec* %303, %union.rec** %opred741, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = load i32, i32* @zz_size, align 4
  %idxprom742 = sext i32 %306 to i64
  %arrayidx743 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom742
  store %union.rec* %305, %union.rec** %arrayidx743, align 8
  %307 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1744 = bitcast %union.rec* %307 to %struct.word_type*
  %olist745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1744, i32 0, i32 0
  %arrayidx746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist745, i32 0, i64 1
  %osucc747 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx746, i32 0, i32 1
  %308 = load %union.rec*, %union.rec** %osucc747, align 8
  %309 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp748 = icmp eq %union.rec* %308, %309
  br i1 %cmp748, label %if.then.750, label %if.end.752

if.then.750:                                      ; preds = %cond.end.734
  %310 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call751 = call i32 @DisposeObject(%union.rec* %310)
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.750, %cond.end.734
  br label %if.end.756

if.else.753:                                      ; preds = %land.lhs.true, %if.end.578
  %311 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a754 = bitcast %union.rec* %311 to %struct.head_type*
  %oopt_comps_permitted755 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a754, i32 0, i32 15
  store i32 65535, i32* %oopt_comps_permitted755, align 4
  br label %if.end.756

if.end.756:                                       ; preds = %if.else.753, %if.end.752
  %312 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv757 = zext i8 %312 to i32
  store i32 %conv757, i32* @zz_size, align 4
  %conv758 = sext i32 %conv757 to i64
  %cmp759 = icmp uge i64 %conv758, 265
  br i1 %cmp759, label %if.then.761, label %if.else.763

if.then.761:                                      ; preds = %if.end.756
  %313 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call762 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %313)
  br label %if.end.780

if.else.763:                                      ; preds = %if.end.756
  %314 = load i32, i32* @zz_size, align 4
  %idxprom764 = sext i32 %314 to i64
  %arrayidx765 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom764
  %315 = load %union.rec*, %union.rec** %arrayidx765, align 8
  %cmp766 = icmp eq %union.rec* %315, null
  br i1 %cmp766, label %if.then.768, label %if.else.770

if.then.768:                                      ; preds = %if.else.763
  %316 = load i32, i32* @zz_size, align 4
  %317 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call769 = call %union.rec* @GetMemory(i32 %316, %struct.FILE_POS* %317)
  store %union.rec* %call769, %union.rec** @zz_hold, align 8
  br label %if.end.779

if.else.770:                                      ; preds = %if.else.763
  %318 = load i32, i32* @zz_size, align 4
  %idxprom771 = sext i32 %318 to i64
  %arrayidx772 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom771
  %319 = load %union.rec*, %union.rec** %arrayidx772, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1773 = bitcast %union.rec* %320 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 0
  %opred776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 0
  %321 = load %union.rec*, %union.rec** %opred776, align 8
  %322 = load i32, i32* @zz_size, align 4
  %idxprom777 = sext i32 %322 to i64
  %arrayidx778 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom777
  store %union.rec* %321, %union.rec** %arrayidx778, align 8
  br label %if.end.779

if.end.779:                                       ; preds = %if.else.770, %if.then.768
  br label %if.end.780

if.end.780:                                       ; preds = %if.end.779, %if.then.761
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1781 = bitcast %union.rec* %323 to %struct.word_type*
  %ou1782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 1
  %os11783 = bitcast %union.FIRST_UNION* %ou1782 to %struct.anon*
  %otype784 = getelementptr inbounds %struct.anon, %struct.anon* %os11783, i32 0, i32 0
  store i8 17, i8* %otype784, align 1
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1785 = bitcast %union.rec* %325 to %struct.word_type*
  %olist786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 0
  %arrayidx787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist786, i32 0, i64 1
  %osucc788 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx787, i32 0, i32 1
  store %union.rec* %324, %union.rec** %osucc788, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1789 = bitcast %union.rec* %326 to %struct.word_type*
  %olist790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 0
  %arrayidx791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist790, i32 0, i64 1
  %opred792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx791, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred792, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1793 = bitcast %union.rec* %327 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 0
  %osucc796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 1
  store %union.rec* %324, %union.rec** %osucc796, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1797 = bitcast %union.rec* %328 to %struct.word_type*
  %olist798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist798, i32 0, i64 0
  %opred800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx799, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred800, align 8
  %329 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a801 = bitcast %union.rec* %329 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a801, i32 0, i32 8
  store %union.rec* %324, %union.rec** %oopt_components, align 8
  %330 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1802 = bitcast %union.rec* %330 to %struct.word_type*
  %ou2803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1802, i32 0, i32 2
  %os23804 = bitcast %union.SECOND_UNION* %ou2803 to %struct.anon.2*
  %oopt_gazumped = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23804, i32 0, i32 2
  %bf.load805 = load i16, i16* %oopt_gazumped, align 2
  %bf.clear806 = and i16 %bf.load805, -1025
  store i16 %bf.clear806, i16* %oopt_gazumped, align 2
  %331 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv807 = zext i8 %331 to i32
  store i32 %conv807, i32* @zz_size, align 4
  %conv808 = sext i32 %conv807 to i64
  %cmp809 = icmp uge i64 %conv808, 265
  br i1 %cmp809, label %if.then.811, label %if.else.813

if.then.811:                                      ; preds = %if.end.780
  %332 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call812 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %332)
  br label %if.end.830

if.else.813:                                      ; preds = %if.end.780
  %333 = load i32, i32* @zz_size, align 4
  %idxprom814 = sext i32 %333 to i64
  %arrayidx815 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom814
  %334 = load %union.rec*, %union.rec** %arrayidx815, align 8
  %cmp816 = icmp eq %union.rec* %334, null
  br i1 %cmp816, label %if.then.818, label %if.else.820

if.then.818:                                      ; preds = %if.else.813
  %335 = load i32, i32* @zz_size, align 4
  %336 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call819 = call %union.rec* @GetMemory(i32 %335, %struct.FILE_POS* %336)
  store %union.rec* %call819, %union.rec** @zz_hold, align 8
  br label %if.end.829

if.else.820:                                      ; preds = %if.else.813
  %337 = load i32, i32* @zz_size, align 4
  %idxprom821 = sext i32 %337 to i64
  %arrayidx822 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom821
  %338 = load %union.rec*, %union.rec** %arrayidx822, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1823 = bitcast %union.rec* %339 to %struct.word_type*
  %olist824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 0
  %arrayidx825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist824, i32 0, i64 0
  %opred826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx825, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %opred826, align 8
  %341 = load i32, i32* @zz_size, align 4
  %idxprom827 = sext i32 %341 to i64
  %arrayidx828 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom827
  store %union.rec* %340, %union.rec** %arrayidx828, align 8
  br label %if.end.829

if.end.829:                                       ; preds = %if.else.820, %if.then.818
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %if.then.811
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1831 = bitcast %union.rec* %342 to %struct.word_type*
  %ou1832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1831, i32 0, i32 1
  %os11833 = bitcast %union.FIRST_UNION* %ou1832 to %struct.anon*
  %otype834 = getelementptr inbounds %struct.anon, %struct.anon* %os11833, i32 0, i32 0
  store i8 17, i8* %otype834, align 1
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1835 = bitcast %union.rec* %344 to %struct.word_type*
  %olist836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 0
  %arrayidx837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist836, i32 0, i64 1
  %osucc838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx837, i32 0, i32 1
  store %union.rec* %343, %union.rec** %osucc838, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1839 = bitcast %union.rec* %345 to %struct.word_type*
  %olist840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1839, i32 0, i32 0
  %arrayidx841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist840, i32 0, i64 1
  %opred842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx841, i32 0, i32 0
  store %union.rec* %343, %union.rec** %opred842, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1843 = bitcast %union.rec* %346 to %struct.word_type*
  %olist844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1843, i32 0, i32 0
  %arrayidx845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist844, i32 0, i64 0
  %osucc846 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx845, i32 0, i32 1
  store %union.rec* %343, %union.rec** %osucc846, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1847 = bitcast %union.rec* %347 to %struct.word_type*
  %olist848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 0
  %arrayidx849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist848, i32 0, i64 0
  %opred850 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx849, i32 0, i32 0
  store %union.rec* %343, %union.rec** %opred850, align 8
  %348 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a851 = bitcast %union.rec* %348 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a851, i32 0, i32 9
  store %union.rec* %343, %union.rec** %oopt_constraints, align 8
  %349 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %349, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %350 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load852 = load i16, i16* %350, align 4
  %bf.lshr = lshr i16 %bf.load852, 7
  %bf.clear853 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear853 to i32
  %351 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a854 = bitcast %union.rec* %351 to %struct.head_type*
  %oopt_components855 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a854, i32 0, i32 8
  %352 = load %union.rec*, %union.rec** %oopt_components855, align 8
  %os2856 = bitcast %union.rec* %352 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2856, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu1857 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 0
  %oline_gap858 = bitcast %union.anon* %osu1857 to %struct.GAP*
  %353 = bitcast %struct.GAP* %oline_gap858 to i16*
  %354 = trunc i32 %bf.cast to i16
  %bf.load859 = load i16, i16* %353, align 4
  %bf.value = and i16 %354, 1
  %bf.shl = shl i16 %bf.value, 7
  %bf.clear860 = and i16 %bf.load859, -129
  %bf.set861 = or i16 %bf.clear860, %bf.shl
  store i16 %bf.set861, i16* %353, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %355 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1862 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %355, i32 0, i32 0
  %oline_gap863 = bitcast %union.anon* %osu1862 to %struct.GAP*
  %356 = bitcast %struct.GAP* %oline_gap863 to i16*
  %bf.load864 = load i16, i16* %356, align 4
  %bf.lshr865 = lshr i16 %bf.load864, 8
  %bf.clear866 = and i16 %bf.lshr865, 1
  %bf.cast867 = zext i16 %bf.clear866 to i32
  %357 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a868 = bitcast %union.rec* %357 to %struct.head_type*
  %oopt_components869 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a868, i32 0, i32 8
  %358 = load %union.rec*, %union.rec** %oopt_components869, align 8
  %os2870 = bitcast %union.rec* %358 to %struct.closure_type*
  %ou4871 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2870, i32 0, i32 4
  %osave_style872 = bitcast %union.FOURTH_UNION* %ou4871 to %struct.STYLE*
  %osu1873 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style872, i32 0, i32 0
  %oline_gap874 = bitcast %union.anon* %osu1873 to %struct.GAP*
  %359 = bitcast %struct.GAP* %oline_gap874 to i16*
  %360 = trunc i32 %bf.cast867 to i16
  %bf.load875 = load i16, i16* %359, align 4
  %bf.value876 = and i16 %360, 1
  %bf.shl877 = shl i16 %bf.value876, 8
  %bf.clear878 = and i16 %bf.load875, -257
  %bf.set879 = or i16 %bf.clear878, %bf.shl877
  store i16 %bf.set879, i16* %359, align 4
  %bf.result.cast880 = zext i16 %bf.value876 to i32
  %361 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1881 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %361, i32 0, i32 0
  %oline_gap882 = bitcast %union.anon* %osu1881 to %struct.GAP*
  %362 = bitcast %struct.GAP* %oline_gap882 to i16*
  %bf.load883 = load i16, i16* %362, align 4
  %bf.lshr884 = lshr i16 %bf.load883, 9
  %bf.clear885 = and i16 %bf.lshr884, 1
  %bf.cast886 = zext i16 %bf.clear885 to i32
  %363 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a887 = bitcast %union.rec* %363 to %struct.head_type*
  %oopt_components888 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a887, i32 0, i32 8
  %364 = load %union.rec*, %union.rec** %oopt_components888, align 8
  %os2889 = bitcast %union.rec* %364 to %struct.closure_type*
  %ou4890 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2889, i32 0, i32 4
  %osave_style891 = bitcast %union.FOURTH_UNION* %ou4890 to %struct.STYLE*
  %osu1892 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style891, i32 0, i32 0
  %oline_gap893 = bitcast %union.anon* %osu1892 to %struct.GAP*
  %365 = bitcast %struct.GAP* %oline_gap893 to i16*
  %366 = trunc i32 %bf.cast886 to i16
  %bf.load894 = load i16, i16* %365, align 4
  %bf.value895 = and i16 %366, 1
  %bf.shl896 = shl i16 %bf.value895, 9
  %bf.clear897 = and i16 %bf.load894, -513
  %bf.set898 = or i16 %bf.clear897, %bf.shl896
  store i16 %bf.set898, i16* %365, align 4
  %bf.result.cast899 = zext i16 %bf.value895 to i32
  %367 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1900 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %367, i32 0, i32 0
  %oline_gap901 = bitcast %union.anon* %osu1900 to %struct.GAP*
  %368 = bitcast %struct.GAP* %oline_gap901 to i16*
  %bf.load902 = load i16, i16* %368, align 4
  %bf.lshr903 = lshr i16 %bf.load902, 10
  %bf.clear904 = and i16 %bf.lshr903, 7
  %bf.cast905 = zext i16 %bf.clear904 to i32
  %369 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a906 = bitcast %union.rec* %369 to %struct.head_type*
  %oopt_components907 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a906, i32 0, i32 8
  %370 = load %union.rec*, %union.rec** %oopt_components907, align 8
  %os2908 = bitcast %union.rec* %370 to %struct.closure_type*
  %ou4909 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2908, i32 0, i32 4
  %osave_style910 = bitcast %union.FOURTH_UNION* %ou4909 to %struct.STYLE*
  %osu1911 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style910, i32 0, i32 0
  %oline_gap912 = bitcast %union.anon* %osu1911 to %struct.GAP*
  %371 = bitcast %struct.GAP* %oline_gap912 to i16*
  %372 = trunc i32 %bf.cast905 to i16
  %bf.load913 = load i16, i16* %371, align 4
  %bf.value914 = and i16 %372, 7
  %bf.shl915 = shl i16 %bf.value914, 10
  %bf.clear916 = and i16 %bf.load913, -7169
  %bf.set917 = or i16 %bf.clear916, %bf.shl915
  store i16 %bf.set917, i16* %371, align 4
  %bf.result.cast918 = zext i16 %bf.value914 to i32
  %373 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1919 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %373, i32 0, i32 0
  %oline_gap920 = bitcast %union.anon* %osu1919 to %struct.GAP*
  %374 = bitcast %struct.GAP* %oline_gap920 to i16*
  %bf.load921 = load i16, i16* %374, align 4
  %bf.lshr922 = lshr i16 %bf.load921, 13
  %bf.cast923 = zext i16 %bf.lshr922 to i32
  %375 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a924 = bitcast %union.rec* %375 to %struct.head_type*
  %oopt_components925 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a924, i32 0, i32 8
  %376 = load %union.rec*, %union.rec** %oopt_components925, align 8
  %os2926 = bitcast %union.rec* %376 to %struct.closure_type*
  %ou4927 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2926, i32 0, i32 4
  %osave_style928 = bitcast %union.FOURTH_UNION* %ou4927 to %struct.STYLE*
  %osu1929 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style928, i32 0, i32 0
  %oline_gap930 = bitcast %union.anon* %osu1929 to %struct.GAP*
  %377 = bitcast %struct.GAP* %oline_gap930 to i16*
  %378 = trunc i32 %bf.cast923 to i16
  %bf.load931 = load i16, i16* %377, align 4
  %bf.value932 = and i16 %378, 7
  %bf.shl933 = shl i16 %bf.value932, 13
  %bf.clear934 = and i16 %bf.load931, 8191
  %bf.set935 = or i16 %bf.clear934, %bf.shl933
  store i16 %bf.set935, i16* %377, align 4
  %bf.result.cast936 = zext i16 %bf.value932 to i32
  %379 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1937 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %379, i32 0, i32 0
  %oline_gap938 = bitcast %union.anon* %osu1937 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap938, i32 0, i32 1
  %380 = load i16, i16* %owidth, align 2
  %381 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a939 = bitcast %union.rec* %381 to %struct.head_type*
  %oopt_components940 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a939, i32 0, i32 8
  %382 = load %union.rec*, %union.rec** %oopt_components940, align 8
  %os2941 = bitcast %union.rec* %382 to %struct.closure_type*
  %ou4942 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2941, i32 0, i32 4
  %osave_style943 = bitcast %union.FOURTH_UNION* %ou4942 to %struct.STYLE*
  %osu1944 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style943, i32 0, i32 0
  %oline_gap945 = bitcast %union.anon* %osu1944 to %struct.GAP*
  %owidth946 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap945, i32 0, i32 1
  store i16 %380, i16* %owidth946, align 2
  %383 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %383, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %384 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load947 = load i8, i8* %384, align 4
  %bf.clear948 = and i8 %bf.load947, 3
  %bf.cast949 = zext i8 %bf.clear948 to i32
  %385 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a950 = bitcast %union.rec* %385 to %struct.head_type*
  %oopt_components951 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a950, i32 0, i32 8
  %386 = load %union.rec*, %union.rec** %oopt_components951, align 8
  %os2952 = bitcast %union.rec* %386 to %struct.closure_type*
  %ou4953 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2952, i32 0, i32 4
  %osave_style954 = bitcast %union.FOURTH_UNION* %ou4953 to %struct.STYLE*
  %osu2955 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style954, i32 0, i32 1
  %oss2956 = bitcast %union.anon.10* %osu2955 to %struct.anon.11*
  %387 = bitcast %struct.anon.11* %oss2956 to i8*
  %388 = trunc i32 %bf.cast949 to i8
  %bf.load957 = load i8, i8* %387, align 4
  %bf.value958 = and i8 %388, 3
  %bf.clear959 = and i8 %bf.load957, -4
  %bf.set960 = or i8 %bf.clear959, %bf.value958
  store i8 %bf.set960, i8* %387, align 4
  %bf.result.cast961 = zext i8 %bf.value958 to i32
  %389 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2962 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %389, i32 0, i32 1
  %oss2963 = bitcast %union.anon.10* %osu2962 to %struct.anon.11*
  %390 = bitcast %struct.anon.11* %oss2963 to i8*
  %bf.load964 = load i8, i8* %390, align 4
  %bf.lshr965 = lshr i8 %bf.load964, 2
  %bf.clear966 = and i8 %bf.lshr965, 3
  %bf.cast967 = zext i8 %bf.clear966 to i32
  %391 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a968 = bitcast %union.rec* %391 to %struct.head_type*
  %oopt_components969 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a968, i32 0, i32 8
  %392 = load %union.rec*, %union.rec** %oopt_components969, align 8
  %os2970 = bitcast %union.rec* %392 to %struct.closure_type*
  %ou4971 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2970, i32 0, i32 4
  %osave_style972 = bitcast %union.FOURTH_UNION* %ou4971 to %struct.STYLE*
  %osu2973 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style972, i32 0, i32 1
  %oss2974 = bitcast %union.anon.10* %osu2973 to %struct.anon.11*
  %393 = bitcast %struct.anon.11* %oss2974 to i8*
  %394 = trunc i32 %bf.cast967 to i8
  %bf.load975 = load i8, i8* %393, align 4
  %bf.value976 = and i8 %394, 3
  %bf.shl977 = shl i8 %bf.value976, 2
  %bf.clear978 = and i8 %bf.load975, -13
  %bf.set979 = or i8 %bf.clear978, %bf.shl977
  store i8 %bf.set979, i8* %393, align 4
  %bf.result.cast980 = zext i8 %bf.value976 to i32
  %395 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2981 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %395, i32 0, i32 1
  %oss2982 = bitcast %union.anon.10* %osu2981 to %struct.anon.11*
  %396 = bitcast %struct.anon.11* %oss2982 to i8*
  %bf.load983 = load i8, i8* %396, align 4
  %bf.lshr984 = lshr i8 %bf.load983, 4
  %bf.clear985 = and i8 %bf.lshr984, 7
  %bf.cast986 = zext i8 %bf.clear985 to i32
  %397 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a987 = bitcast %union.rec* %397 to %struct.head_type*
  %oopt_components988 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a987, i32 0, i32 8
  %398 = load %union.rec*, %union.rec** %oopt_components988, align 8
  %os2989 = bitcast %union.rec* %398 to %struct.closure_type*
  %ou4990 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2989, i32 0, i32 4
  %osave_style991 = bitcast %union.FOURTH_UNION* %ou4990 to %struct.STYLE*
  %osu2992 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style991, i32 0, i32 1
  %oss2993 = bitcast %union.anon.10* %osu2992 to %struct.anon.11*
  %399 = bitcast %struct.anon.11* %oss2993 to i8*
  %400 = trunc i32 %bf.cast986 to i8
  %bf.load994 = load i8, i8* %399, align 4
  %bf.value995 = and i8 %400, 7
  %bf.shl996 = shl i8 %bf.value995, 4
  %bf.clear997 = and i8 %bf.load994, -113
  %bf.set998 = or i8 %bf.clear997, %bf.shl996
  store i8 %bf.set998, i8* %399, align 4
  %bf.result.cast999 = zext i8 %bf.value995 to i32
  %401 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu11000 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %401, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu11000 to %struct.anon.9*
  %402 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load1001 = load i8, i8* %402, align 4
  %bf.lshr1002 = lshr i8 %bf.load1001, 3
  %bf.clear1003 = and i8 %bf.lshr1002, 1
  %bf.cast1004 = zext i8 %bf.clear1003 to i32
  %403 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1005 = bitcast %union.rec* %403 to %struct.head_type*
  %oopt_components1006 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1005, i32 0, i32 8
  %404 = load %union.rec*, %union.rec** %oopt_components1006, align 8
  %os21007 = bitcast %union.rec* %404 to %struct.closure_type*
  %ou41008 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21007, i32 0, i32 4
  %osave_style1009 = bitcast %union.FOURTH_UNION* %ou41008 to %struct.STYLE*
  %osu11010 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1009, i32 0, i32 0
  %oss11011 = bitcast %union.anon* %osu11010 to %struct.anon.9*
  %405 = bitcast %struct.anon.9* %oss11011 to i8*
  %406 = trunc i32 %bf.cast1004 to i8
  %bf.load1012 = load i8, i8* %405, align 4
  %bf.value1013 = and i8 %406, 1
  %bf.shl1014 = shl i8 %bf.value1013, 3
  %bf.clear1015 = and i8 %bf.load1012, -9
  %bf.set1016 = or i8 %bf.clear1015, %bf.shl1014
  store i8 %bf.set1016, i8* %405, align 4
  %bf.result.cast1017 = zext i8 %bf.value1013 to i32
  %407 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21018 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %407, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu21018 to %struct.GAP*
  %408 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load1019 = load i16, i16* %408, align 4
  %bf.lshr1020 = lshr i16 %bf.load1019, 7
  %bf.clear1021 = and i16 %bf.lshr1020, 1
  %bf.cast1022 = zext i16 %bf.clear1021 to i32
  %409 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1023 = bitcast %union.rec* %409 to %struct.head_type*
  %oopt_components1024 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1023, i32 0, i32 8
  %410 = load %union.rec*, %union.rec** %oopt_components1024, align 8
  %os21025 = bitcast %union.rec* %410 to %struct.closure_type*
  %ou41026 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21025, i32 0, i32 4
  %osave_style1027 = bitcast %union.FOURTH_UNION* %ou41026 to %struct.STYLE*
  %osu21028 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1027, i32 0, i32 1
  %ospace_gap1029 = bitcast %union.anon.10* %osu21028 to %struct.GAP*
  %411 = bitcast %struct.GAP* %ospace_gap1029 to i16*
  %412 = trunc i32 %bf.cast1022 to i16
  %bf.load1030 = load i16, i16* %411, align 4
  %bf.value1031 = and i16 %412, 1
  %bf.shl1032 = shl i16 %bf.value1031, 7
  %bf.clear1033 = and i16 %bf.load1030, -129
  %bf.set1034 = or i16 %bf.clear1033, %bf.shl1032
  store i16 %bf.set1034, i16* %411, align 4
  %bf.result.cast1035 = zext i16 %bf.value1031 to i32
  %413 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21036 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %413, i32 0, i32 1
  %ospace_gap1037 = bitcast %union.anon.10* %osu21036 to %struct.GAP*
  %414 = bitcast %struct.GAP* %ospace_gap1037 to i16*
  %bf.load1038 = load i16, i16* %414, align 4
  %bf.lshr1039 = lshr i16 %bf.load1038, 8
  %bf.clear1040 = and i16 %bf.lshr1039, 1
  %bf.cast1041 = zext i16 %bf.clear1040 to i32
  %415 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1042 = bitcast %union.rec* %415 to %struct.head_type*
  %oopt_components1043 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1042, i32 0, i32 8
  %416 = load %union.rec*, %union.rec** %oopt_components1043, align 8
  %os21044 = bitcast %union.rec* %416 to %struct.closure_type*
  %ou41045 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21044, i32 0, i32 4
  %osave_style1046 = bitcast %union.FOURTH_UNION* %ou41045 to %struct.STYLE*
  %osu21047 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1046, i32 0, i32 1
  %ospace_gap1048 = bitcast %union.anon.10* %osu21047 to %struct.GAP*
  %417 = bitcast %struct.GAP* %ospace_gap1048 to i16*
  %418 = trunc i32 %bf.cast1041 to i16
  %bf.load1049 = load i16, i16* %417, align 4
  %bf.value1050 = and i16 %418, 1
  %bf.shl1051 = shl i16 %bf.value1050, 8
  %bf.clear1052 = and i16 %bf.load1049, -257
  %bf.set1053 = or i16 %bf.clear1052, %bf.shl1051
  store i16 %bf.set1053, i16* %417, align 4
  %bf.result.cast1054 = zext i16 %bf.value1050 to i32
  %419 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21055 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %419, i32 0, i32 1
  %ospace_gap1056 = bitcast %union.anon.10* %osu21055 to %struct.GAP*
  %420 = bitcast %struct.GAP* %ospace_gap1056 to i16*
  %bf.load1057 = load i16, i16* %420, align 4
  %bf.lshr1058 = lshr i16 %bf.load1057, 9
  %bf.clear1059 = and i16 %bf.lshr1058, 1
  %bf.cast1060 = zext i16 %bf.clear1059 to i32
  %421 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1061 = bitcast %union.rec* %421 to %struct.head_type*
  %oopt_components1062 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1061, i32 0, i32 8
  %422 = load %union.rec*, %union.rec** %oopt_components1062, align 8
  %os21063 = bitcast %union.rec* %422 to %struct.closure_type*
  %ou41064 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21063, i32 0, i32 4
  %osave_style1065 = bitcast %union.FOURTH_UNION* %ou41064 to %struct.STYLE*
  %osu21066 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1065, i32 0, i32 1
  %ospace_gap1067 = bitcast %union.anon.10* %osu21066 to %struct.GAP*
  %423 = bitcast %struct.GAP* %ospace_gap1067 to i16*
  %424 = trunc i32 %bf.cast1060 to i16
  %bf.load1068 = load i16, i16* %423, align 4
  %bf.value1069 = and i16 %424, 1
  %bf.shl1070 = shl i16 %bf.value1069, 9
  %bf.clear1071 = and i16 %bf.load1068, -513
  %bf.set1072 = or i16 %bf.clear1071, %bf.shl1070
  store i16 %bf.set1072, i16* %423, align 4
  %bf.result.cast1073 = zext i16 %bf.value1069 to i32
  %425 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21074 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %425, i32 0, i32 1
  %ospace_gap1075 = bitcast %union.anon.10* %osu21074 to %struct.GAP*
  %426 = bitcast %struct.GAP* %ospace_gap1075 to i16*
  %bf.load1076 = load i16, i16* %426, align 4
  %bf.lshr1077 = lshr i16 %bf.load1076, 10
  %bf.clear1078 = and i16 %bf.lshr1077, 7
  %bf.cast1079 = zext i16 %bf.clear1078 to i32
  %427 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1080 = bitcast %union.rec* %427 to %struct.head_type*
  %oopt_components1081 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1080, i32 0, i32 8
  %428 = load %union.rec*, %union.rec** %oopt_components1081, align 8
  %os21082 = bitcast %union.rec* %428 to %struct.closure_type*
  %ou41083 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21082, i32 0, i32 4
  %osave_style1084 = bitcast %union.FOURTH_UNION* %ou41083 to %struct.STYLE*
  %osu21085 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1084, i32 0, i32 1
  %ospace_gap1086 = bitcast %union.anon.10* %osu21085 to %struct.GAP*
  %429 = bitcast %struct.GAP* %ospace_gap1086 to i16*
  %430 = trunc i32 %bf.cast1079 to i16
  %bf.load1087 = load i16, i16* %429, align 4
  %bf.value1088 = and i16 %430, 7
  %bf.shl1089 = shl i16 %bf.value1088, 10
  %bf.clear1090 = and i16 %bf.load1087, -7169
  %bf.set1091 = or i16 %bf.clear1090, %bf.shl1089
  store i16 %bf.set1091, i16* %429, align 4
  %bf.result.cast1092 = zext i16 %bf.value1088 to i32
  %431 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21093 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %431, i32 0, i32 1
  %ospace_gap1094 = bitcast %union.anon.10* %osu21093 to %struct.GAP*
  %432 = bitcast %struct.GAP* %ospace_gap1094 to i16*
  %bf.load1095 = load i16, i16* %432, align 4
  %bf.lshr1096 = lshr i16 %bf.load1095, 13
  %bf.cast1097 = zext i16 %bf.lshr1096 to i32
  %433 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1098 = bitcast %union.rec* %433 to %struct.head_type*
  %oopt_components1099 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1098, i32 0, i32 8
  %434 = load %union.rec*, %union.rec** %oopt_components1099, align 8
  %os21100 = bitcast %union.rec* %434 to %struct.closure_type*
  %ou41101 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21100, i32 0, i32 4
  %osave_style1102 = bitcast %union.FOURTH_UNION* %ou41101 to %struct.STYLE*
  %osu21103 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1102, i32 0, i32 1
  %ospace_gap1104 = bitcast %union.anon.10* %osu21103 to %struct.GAP*
  %435 = bitcast %struct.GAP* %ospace_gap1104 to i16*
  %436 = trunc i32 %bf.cast1097 to i16
  %bf.load1105 = load i16, i16* %435, align 4
  %bf.value1106 = and i16 %436, 7
  %bf.shl1107 = shl i16 %bf.value1106, 13
  %bf.clear1108 = and i16 %bf.load1105, 8191
  %bf.set1109 = or i16 %bf.clear1108, %bf.shl1107
  store i16 %bf.set1109, i16* %435, align 4
  %bf.result.cast1110 = zext i16 %bf.value1106 to i32
  %437 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21111 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %437, i32 0, i32 1
  %ospace_gap1112 = bitcast %union.anon.10* %osu21111 to %struct.GAP*
  %owidth1113 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap1112, i32 0, i32 1
  %438 = load i16, i16* %owidth1113, align 2
  %439 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1114 = bitcast %union.rec* %439 to %struct.head_type*
  %oopt_components1115 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1114, i32 0, i32 8
  %440 = load %union.rec*, %union.rec** %oopt_components1115, align 8
  %os21116 = bitcast %union.rec* %440 to %struct.closure_type*
  %ou41117 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21116, i32 0, i32 4
  %osave_style1118 = bitcast %union.FOURTH_UNION* %ou41117 to %struct.STYLE*
  %osu21119 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1118, i32 0, i32 1
  %ospace_gap1120 = bitcast %union.anon.10* %osu21119 to %struct.GAP*
  %owidth1121 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap1120, i32 0, i32 1
  store i16 %438, i16* %owidth1121, align 2
  %441 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %441, i32 0, i32 4
  %bf.load1122 = load i32, i32* %ofont, align 4
  %bf.clear1123 = and i32 %bf.load1122, 4095
  %442 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1124 = bitcast %union.rec* %442 to %struct.head_type*
  %oopt_components1125 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1124, i32 0, i32 8
  %443 = load %union.rec*, %union.rec** %oopt_components1125, align 8
  %os21126 = bitcast %union.rec* %443 to %struct.closure_type*
  %ou41127 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21126, i32 0, i32 4
  %osave_style1128 = bitcast %union.FOURTH_UNION* %ou41127 to %struct.STYLE*
  %ofont1129 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1128, i32 0, i32 4
  %bf.load1130 = load i32, i32* %ofont1129, align 4
  %bf.value1131 = and i32 %bf.clear1123, 4095
  %bf.clear1132 = and i32 %bf.load1130, -4096
  %bf.set1133 = or i32 %bf.clear1132, %bf.value1131
  store i32 %bf.set1133, i32* %ofont1129, align 4
  %444 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %444, i32 0, i32 4
  %bf.load1134 = load i32, i32* %ocolour, align 4
  %bf.lshr1135 = lshr i32 %bf.load1134, 12
  %bf.clear1136 = and i32 %bf.lshr1135, 1023
  %445 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1137 = bitcast %union.rec* %445 to %struct.head_type*
  %oopt_components1138 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1137, i32 0, i32 8
  %446 = load %union.rec*, %union.rec** %oopt_components1138, align 8
  %os21139 = bitcast %union.rec* %446 to %struct.closure_type*
  %ou41140 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21139, i32 0, i32 4
  %osave_style1141 = bitcast %union.FOURTH_UNION* %ou41140 to %struct.STYLE*
  %ocolour1142 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1141, i32 0, i32 4
  %bf.load1143 = load i32, i32* %ocolour1142, align 4
  %bf.value1144 = and i32 %bf.clear1136, 1023
  %bf.shl1145 = shl i32 %bf.value1144, 12
  %bf.clear1146 = and i32 %bf.load1143, -4190209
  %bf.set1147 = or i32 %bf.clear1146, %bf.shl1145
  store i32 %bf.set1147, i32* %ocolour1142, align 4
  %447 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %447, i32 0, i32 4
  %bf.load1148 = load i32, i32* %ooutline, align 4
  %bf.lshr1149 = lshr i32 %bf.load1148, 22
  %bf.clear1150 = and i32 %bf.lshr1149, 3
  %448 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1151 = bitcast %union.rec* %448 to %struct.head_type*
  %oopt_components1152 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1151, i32 0, i32 8
  %449 = load %union.rec*, %union.rec** %oopt_components1152, align 8
  %os21153 = bitcast %union.rec* %449 to %struct.closure_type*
  %ou41154 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21153, i32 0, i32 4
  %osave_style1155 = bitcast %union.FOURTH_UNION* %ou41154 to %struct.STYLE*
  %ooutline1156 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1155, i32 0, i32 4
  %bf.load1157 = load i32, i32* %ooutline1156, align 4
  %bf.value1158 = and i32 %bf.clear1150, 3
  %bf.shl1159 = shl i32 %bf.value1158, 22
  %bf.clear1160 = and i32 %bf.load1157, -12582913
  %bf.set1161 = or i32 %bf.clear1160, %bf.shl1159
  store i32 %bf.set1161, i32* %ooutline1156, align 4
  %450 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %450, i32 0, i32 4
  %bf.load1162 = load i32, i32* %olanguage, align 4
  %bf.lshr1163 = lshr i32 %bf.load1162, 24
  %bf.clear1164 = and i32 %bf.lshr1163, 63
  %451 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1165 = bitcast %union.rec* %451 to %struct.head_type*
  %oopt_components1166 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1165, i32 0, i32 8
  %452 = load %union.rec*, %union.rec** %oopt_components1166, align 8
  %os21167 = bitcast %union.rec* %452 to %struct.closure_type*
  %ou41168 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21167, i32 0, i32 4
  %osave_style1169 = bitcast %union.FOURTH_UNION* %ou41168 to %struct.STYLE*
  %olanguage1170 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1169, i32 0, i32 4
  %bf.load1171 = load i32, i32* %olanguage1170, align 4
  %bf.value1172 = and i32 %bf.clear1164, 63
  %bf.shl1173 = shl i32 %bf.value1172, 24
  %bf.clear1174 = and i32 %bf.load1171, -1056964609
  %bf.set1175 = or i32 %bf.clear1174, %bf.shl1173
  store i32 %bf.set1175, i32* %olanguage1170, align 4
  %453 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %453, i32 0, i32 4
  %bf.load1176 = load i32, i32* %onobreaklast, align 4
  %bf.lshr1177 = lshr i32 %bf.load1176, 31
  %454 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1178 = bitcast %union.rec* %454 to %struct.head_type*
  %oopt_components1179 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1178, i32 0, i32 8
  %455 = load %union.rec*, %union.rec** %oopt_components1179, align 8
  %os21180 = bitcast %union.rec* %455 to %struct.closure_type*
  %ou41181 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21180, i32 0, i32 4
  %osave_style1182 = bitcast %union.FOURTH_UNION* %ou41181 to %struct.STYLE*
  %onobreaklast1183 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1182, i32 0, i32 4
  %bf.load1184 = load i32, i32* %onobreaklast1183, align 4
  %bf.value1185 = and i32 %bf.lshr1177, 1
  %bf.shl1186 = shl i32 %bf.value1185, 31
  %bf.clear1187 = and i32 %bf.load1184, 2147483647
  %bf.set1188 = or i32 %bf.clear1187, %bf.shl1186
  store i32 %bf.set1188, i32* %onobreaklast1183, align 4
  %456 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %456, i32 0, i32 4
  %bf.load1189 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr1190 = lshr i32 %bf.load1189, 30
  %bf.clear1191 = and i32 %bf.lshr1190, 1
  %457 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1192 = bitcast %union.rec* %457 to %struct.head_type*
  %oopt_components1193 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1192, i32 0, i32 8
  %458 = load %union.rec*, %union.rec** %oopt_components1193, align 8
  %os21194 = bitcast %union.rec* %458 to %struct.closure_type*
  %ou41195 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21194, i32 0, i32 4
  %osave_style1196 = bitcast %union.FOURTH_UNION* %ou41195 to %struct.STYLE*
  %onobreakfirst1197 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1196, i32 0, i32 4
  %bf.load1198 = load i32, i32* %onobreakfirst1197, align 4
  %bf.value1199 = and i32 %bf.clear1191, 1
  %bf.shl1200 = shl i32 %bf.value1199, 30
  %bf.clear1201 = and i32 %bf.load1198, -1073741825
  %bf.set1202 = or i32 %bf.clear1201, %bf.shl1200
  store i32 %bf.set1202, i32* %onobreakfirst1197, align 4
  %459 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu11203 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %459, i32 0, i32 0
  %oss11204 = bitcast %union.anon* %osu11203 to %struct.anon.9*
  %460 = bitcast %struct.anon.9* %oss11204 to i8*
  %bf.load1205 = load i8, i8* %460, align 4
  %bf.clear1206 = and i8 %bf.load1205, 1
  %bf.cast1207 = zext i8 %bf.clear1206 to i32
  %461 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1208 = bitcast %union.rec* %461 to %struct.head_type*
  %oopt_components1209 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1208, i32 0, i32 8
  %462 = load %union.rec*, %union.rec** %oopt_components1209, align 8
  %os21210 = bitcast %union.rec* %462 to %struct.closure_type*
  %ou41211 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21210, i32 0, i32 4
  %osave_style1212 = bitcast %union.FOURTH_UNION* %ou41211 to %struct.STYLE*
  %osu11213 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1212, i32 0, i32 0
  %oss11214 = bitcast %union.anon* %osu11213 to %struct.anon.9*
  %463 = bitcast %struct.anon.9* %oss11214 to i8*
  %464 = trunc i32 %bf.cast1207 to i8
  %bf.load1215 = load i8, i8* %463, align 4
  %bf.value1216 = and i8 %464, 1
  %bf.clear1217 = and i8 %bf.load1215, -2
  %bf.set1218 = or i8 %bf.clear1217, %bf.value1216
  store i8 %bf.set1218, i8* %463, align 4
  %bf.result.cast1219 = zext i8 %bf.value1216 to i32
  %465 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu11220 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %465, i32 0, i32 0
  %oss11221 = bitcast %union.anon* %osu11220 to %struct.anon.9*
  %466 = bitcast %struct.anon.9* %oss11221 to i8*
  %bf.load1222 = load i8, i8* %466, align 4
  %bf.lshr1223 = lshr i8 %bf.load1222, 1
  %bf.clear1224 = and i8 %bf.lshr1223, 1
  %bf.cast1225 = zext i8 %bf.clear1224 to i32
  %467 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1226 = bitcast %union.rec* %467 to %struct.head_type*
  %oopt_components1227 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1226, i32 0, i32 8
  %468 = load %union.rec*, %union.rec** %oopt_components1227, align 8
  %os21228 = bitcast %union.rec* %468 to %struct.closure_type*
  %ou41229 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21228, i32 0, i32 4
  %osave_style1230 = bitcast %union.FOURTH_UNION* %ou41229 to %struct.STYLE*
  %osu11231 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1230, i32 0, i32 0
  %oss11232 = bitcast %union.anon* %osu11231 to %struct.anon.9*
  %469 = bitcast %struct.anon.9* %oss11232 to i8*
  %470 = trunc i32 %bf.cast1225 to i8
  %bf.load1233 = load i8, i8* %469, align 4
  %bf.value1234 = and i8 %470, 1
  %bf.shl1235 = shl i8 %bf.value1234, 1
  %bf.clear1236 = and i8 %bf.load1233, -3
  %bf.set1237 = or i8 %bf.clear1236, %bf.shl1235
  store i8 %bf.set1237, i8* %469, align 4
  %bf.result.cast1238 = zext i8 %bf.value1234 to i32
  %471 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu11239 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %471, i32 0, i32 0
  %oss11240 = bitcast %union.anon* %osu11239 to %struct.anon.9*
  %472 = bitcast %struct.anon.9* %oss11240 to i8*
  %bf.load1241 = load i8, i8* %472, align 4
  %bf.lshr1242 = lshr i8 %bf.load1241, 2
  %bf.clear1243 = and i8 %bf.lshr1242, 1
  %bf.cast1244 = zext i8 %bf.clear1243 to i32
  %473 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1245 = bitcast %union.rec* %473 to %struct.head_type*
  %oopt_components1246 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1245, i32 0, i32 8
  %474 = load %union.rec*, %union.rec** %oopt_components1246, align 8
  %os21247 = bitcast %union.rec* %474 to %struct.closure_type*
  %ou41248 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21247, i32 0, i32 4
  %osave_style1249 = bitcast %union.FOURTH_UNION* %ou41248 to %struct.STYLE*
  %osu11250 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1249, i32 0, i32 0
  %oss11251 = bitcast %union.anon* %osu11250 to %struct.anon.9*
  %475 = bitcast %struct.anon.9* %oss11251 to i8*
  %476 = trunc i32 %bf.cast1244 to i8
  %bf.load1252 = load i8, i8* %475, align 4
  %bf.value1253 = and i8 %476, 1
  %bf.shl1254 = shl i8 %bf.value1253, 2
  %bf.clear1255 = and i8 %bf.load1252, -5
  %bf.set1256 = or i8 %bf.clear1255, %bf.shl1254
  store i8 %bf.set1256, i8* %475, align 4
  %bf.result.cast1257 = zext i8 %bf.value1253 to i32
  %477 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu11258 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %477, i32 0, i32 0
  %oss11259 = bitcast %union.anon* %osu11258 to %struct.anon.9*
  %478 = bitcast %struct.anon.9* %oss11259 to i8*
  %bf.load1260 = load i8, i8* %478, align 4
  %bf.lshr1261 = lshr i8 %bf.load1260, 4
  %bf.clear1262 = and i8 %bf.lshr1261, 7
  %bf.cast1263 = zext i8 %bf.clear1262 to i32
  %479 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1264 = bitcast %union.rec* %479 to %struct.head_type*
  %oopt_components1265 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1264, i32 0, i32 8
  %480 = load %union.rec*, %union.rec** %oopt_components1265, align 8
  %os21266 = bitcast %union.rec* %480 to %struct.closure_type*
  %ou41267 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21266, i32 0, i32 4
  %osave_style1268 = bitcast %union.FOURTH_UNION* %ou41267 to %struct.STYLE*
  %osu11269 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1268, i32 0, i32 0
  %oss11270 = bitcast %union.anon* %osu11269 to %struct.anon.9*
  %481 = bitcast %struct.anon.9* %oss11270 to i8*
  %482 = trunc i32 %bf.cast1263 to i8
  %bf.load1271 = load i8, i8* %481, align 4
  %bf.value1272 = and i8 %482, 7
  %bf.shl1273 = shl i8 %bf.value1272, 4
  %bf.clear1274 = and i8 %bf.load1271, -113
  %bf.set1275 = or i8 %bf.clear1274, %bf.shl1273
  store i8 %bf.set1275, i8* %481, align 4
  %bf.result.cast1276 = zext i8 %bf.value1272 to i32
  %483 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %483, i32 0, i32 2
  %484 = load i16, i16* %oyunit, align 2
  %485 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1277 = bitcast %union.rec* %485 to %struct.head_type*
  %oopt_components1278 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1277, i32 0, i32 8
  %486 = load %union.rec*, %union.rec** %oopt_components1278, align 8
  %os21279 = bitcast %union.rec* %486 to %struct.closure_type*
  %ou41280 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21279, i32 0, i32 4
  %osave_style1281 = bitcast %union.FOURTH_UNION* %ou41280 to %struct.STYLE*
  %oyunit1282 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1281, i32 0, i32 2
  store i16 %484, i16* %oyunit1282, align 2
  %487 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %487, i32 0, i32 3
  %488 = load i16, i16* %ozunit, align 2
  %489 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1283 = bitcast %union.rec* %489 to %struct.head_type*
  %oopt_components1284 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1283, i32 0, i32 8
  %490 = load %union.rec*, %union.rec** %oopt_components1284, align 8
  %os21285 = bitcast %union.rec* %490 to %struct.closure_type*
  %ou41286 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21285, i32 0, i32 4
  %osave_style1287 = bitcast %union.FOURTH_UNION* %ou41286 to %struct.STYLE*
  %ozunit1288 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1287, i32 0, i32 3
  store i16 %488, i16* %ozunit1288, align 2
  %491 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11289 = bitcast %union.rec* %491 to %struct.word_type*
  %ou21290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11289, i32 0, i32 2
  %os231291 = bitcast %union.SECOND_UNION* %ou21290 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231291, i32 0, i32 2
  %bf.load1292 = load i16, i16* %ogall_dir, align 2
  %bf.lshr1293 = lshr i16 %bf.load1292, 8
  %bf.clear1294 = and i16 %bf.lshr1293, 1
  %bf.cast1295 = zext i16 %bf.clear1294 to i32
  %cmp1296 = icmp eq i32 %bf.cast1295, 1
  br i1 %cmp1296, label %if.then.1298, label %if.end.1309

if.then.1298:                                     ; preds = %if.end.830
  %492 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1299 = bitcast %union.rec* %492 to %struct.head_type*
  %oopt_components1300 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1299, i32 0, i32 8
  %493 = load %union.rec*, %union.rec** %oopt_components1300, align 8
  %os21301 = bitcast %union.rec* %493 to %struct.closure_type*
  %ou41302 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21301, i32 0, i32 4
  %osave_style1303 = bitcast %union.FOURTH_UNION* %ou41302 to %struct.STYLE*
  %osu21304 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1303, i32 0, i32 1
  %oss21305 = bitcast %union.anon.10* %osu21304 to %struct.anon.11*
  %494 = bitcast %struct.anon.11* %oss21305 to i8*
  %bf.load1306 = load i8, i8* %494, align 4
  %bf.clear1307 = and i8 %bf.load1306, -4
  %bf.set1308 = or i8 %bf.clear1307, 1
  store i8 %bf.set1308, i8* %494, align 4
  br label %if.end.1309

if.end.1309:                                      ; preds = %if.then.1298, %if.end.830
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i8* @SymName(%union.rec*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @StringInt(i32) #1

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare void @SwitchScope(%union.rec*) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @UnSwitchScope(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @GazumpOptimize(%union.rec* %hd, %union.rec* %dest) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %dest.addr = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %junk = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  store %union.rec* %dest, %union.rec** %dest.addr, align 8
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a = bitcast %union.rec* %3 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 8
  %4 = load %union.rec*, %union.rec** %oopt_components, align 8
  %cmp4 = icmp ne %union.rec* %4, null
  br i1 %cmp4, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %6 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %conv9 = zext i8 %6 to i32
  store i32 %conv9, i32* @zz_size, align 4
  %conv10 = sext i32 %conv9 to i64
  %cmp11 = icmp uge i64 %conv10, 265
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.8
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %if.end.27

if.else:                                          ; preds = %if.end.8
  %8 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %9 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp15 = icmp eq %union.rec* %9, null
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call18 = call %union.rec* @GetMemory(i32 %10, %struct.FILE_POS* %11)
  store %union.rec* %call18, %union.rec** @zz_hold, align 8
  br label %if.end.26

if.else.19:                                       ; preds = %if.else
  %12 = load i32, i32* @zz_size, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom20
  %13 = load %union.rec*, %union.rec** %arrayidx21, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred, align 8
  %16 = load i32, i32* @zz_size, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom24
  store %union.rec* %15, %union.rec** %arrayidx25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.19, %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.13
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %17 to %struct.word_type*
  %ou129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 1
  %os1130 = bitcast %union.FIRST_UNION* %ou129 to %struct.anon*
  %otype31 = getelementptr inbounds %struct.anon, %struct.anon* %os1130, i32 0, i32 0
  store i8 26, i8* %otype31, align 1
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  store %union.rec* %18, %union.rec** %osucc, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %20 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  store %union.rec* %18, %union.rec** %opred38, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 0
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  store %union.rec* %18, %union.rec** %osucc42, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %22 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 0
  %opred46 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 0
  store %union.rec* %18, %union.rec** %opred46, align 8
  store %union.rec* %18, %union.rec** %tmp, align 8
  %23 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os147 = bitcast %union.rec* %23 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %ogall_dir, align 2
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %cmp48 = icmp eq i32 %bf.cast, 0
  br i1 %cmp48, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.27
  %24 = load %union.rec*, %union.rec** %dest.addr, align 8
  %os150 = bitcast %union.rec* %24 to %struct.word_type*
  %ou251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 2
  %os2352 = bitcast %union.SECOND_UNION* %ou251 to %struct.anon.2*
  %oexternal_hor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2352, i32 0, i32 2
  %bf.load53 = load i16, i16* %oexternal_hor, align 2
  %bf.lshr54 = lshr i16 %bf.load53, 3
  %bf.clear55 = and i16 %bf.lshr54, 1
  %bf.cast56 = zext i16 %bf.clear55 to i32
  %tobool = icmp ne i32 %bf.cast56, 0
  br i1 %tobool, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.27
  %25 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os157 = bitcast %union.rec* %25 to %struct.word_type*
  %ou258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 2
  %os2359 = bitcast %union.SECOND_UNION* %ou258 to %struct.anon.2*
  %ogall_dir60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2359, i32 0, i32 2
  %bf.load61 = load i16, i16* %ogall_dir60, align 2
  %bf.lshr62 = lshr i16 %bf.load61, 8
  %bf.clear63 = and i16 %bf.lshr62, 1
  %bf.cast64 = zext i16 %bf.clear63 to i32
  %cmp65 = icmp eq i32 %bf.cast64, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.84

land.lhs.true.67:                                 ; preds = %lor.lhs.false
  %26 = load %union.rec*, %union.rec** %dest.addr, align 8
  %os168 = bitcast %union.rec* %26 to %struct.word_type*
  %ou269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 2
  %os2370 = bitcast %union.SECOND_UNION* %ou269 to %struct.anon.2*
  %oexternal_hor71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2370, i32 0, i32 2
  %bf.load72 = load i16, i16* %oexternal_hor71, align 2
  %bf.lshr73 = lshr i16 %bf.load72, 3
  %bf.clear74 = and i16 %bf.lshr73, 1
  %bf.cast75 = zext i16 %bf.clear74 to i32
  %tobool76 = icmp ne i32 %bf.cast75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.84

if.then.77:                                       ; preds = %land.lhs.true.67, %land.lhs.true
  %27 = load %union.rec*, %union.rec** %tmp, align 8
  %os2 = bitcast %union.rec* %27 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 8388607, i32* %obc, align 4
  %28 = load %union.rec*, %union.rec** %tmp, align 8
  %os278 = bitcast %union.rec* %28 to %struct.closure_type*
  %ou479 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os278, i32 0, i32 4
  %oconstraint80 = bitcast %union.FOURTH_UNION* %ou479 to %struct.CONSTRAINT*
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint80, i32 0, i32 1
  store i32 8388607, i32* %obfc, align 4
  %29 = load %union.rec*, %union.rec** %tmp, align 8
  %os281 = bitcast %union.rec* %29 to %struct.closure_type*
  %ou482 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os281, i32 0, i32 4
  %oconstraint83 = bitcast %union.FOURTH_UNION* %ou482 to %struct.CONSTRAINT*
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint83, i32 0, i32 2
  store i32 8388607, i32* %ofc, align 4
  br label %if.end.115

if.else.84:                                       ; preds = %land.lhs.true.67, %lor.lhs.false
  %30 = load %union.rec*, %union.rec** %dest.addr, align 8
  %os185 = bitcast %union.rec* %30 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %osucc88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc88, align 8
  %os189 = bitcast %union.rec* %31 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 0
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred92, align 8
  store %union.rec* %32, %union.rec** %prnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.84
  %33 = load %union.rec*, %union.rec** %prnt, align 8
  %os193 = bitcast %union.rec* %33 to %struct.word_type*
  %ou194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 1
  %os1195 = bitcast %union.FIRST_UNION* %ou194 to %struct.anon*
  %otype96 = getelementptr inbounds %struct.anon, %struct.anon* %os1195, i32 0, i32 0
  %34 = load i8, i8* %otype96, align 1
  %conv97 = zext i8 %34 to i32
  %cmp98 = icmp eq i32 %conv97, 0
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load %union.rec*, %union.rec** %prnt, align 8
  %os1100 = bitcast %union.rec* %35 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 0
  %opred103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred103, align 8
  store %union.rec* %36, %union.rec** %prnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %union.rec*, %union.rec** %prnt, align 8
  %38 = load %union.rec*, %union.rec** %tmp, align 8
  %os2104 = bitcast %union.rec* %38 to %struct.closure_type*
  %ou4105 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2104, i32 0, i32 4
  %oconstraint106 = bitcast %union.FOURTH_UNION* %ou4105 to %struct.CONSTRAINT*
  %39 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1107 = bitcast %union.rec* %39 to %struct.word_type*
  %ou2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 2
  %os23109 = bitcast %union.SECOND_UNION* %ou2108 to %struct.anon.2*
  %ogall_dir110 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23109, i32 0, i32 2
  %bf.load111 = load i16, i16* %ogall_dir110, align 2
  %bf.lshr112 = lshr i16 %bf.load111, 8
  %bf.clear113 = and i16 %bf.lshr112, 1
  %bf.cast114 = zext i16 %bf.clear113 to i32
  call void @Constrained(%union.rec* %37, %struct.CONSTRAINT* %oconstraint106, i32 %bf.cast114, %union.rec** %junk)
  br label %if.end.115

if.end.115:                                       ; preds = %for.end, %if.then.77
  %40 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv116 = zext i8 %40 to i32
  store i32 %conv116, i32* @zz_size, align 4
  %conv117 = sext i32 %conv116 to i64
  %cmp118 = icmp uge i64 %conv117, 265
  br i1 %cmp118, label %if.then.120, label %if.else.122

if.then.120:                                      ; preds = %if.end.115
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call121 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %41)
  br label %if.end.139

if.else.122:                                      ; preds = %if.end.115
  %42 = load i32, i32* @zz_size, align 4
  %idxprom123 = sext i32 %42 to i64
  %arrayidx124 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom123
  %43 = load %union.rec*, %union.rec** %arrayidx124, align 8
  %cmp125 = icmp eq %union.rec* %43, null
  br i1 %cmp125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.else.122
  %44 = load i32, i32* @zz_size, align 4
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call128 = call %union.rec* @GetMemory(i32 %44, %struct.FILE_POS* %45)
  store %union.rec* %call128, %union.rec** @zz_hold, align 8
  br label %if.end.138

if.else.129:                                      ; preds = %if.else.122
  %46 = load i32, i32* @zz_size, align 4
  %idxprom130 = sext i32 %46 to i64
  %arrayidx131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom130
  %47 = load %union.rec*, %union.rec** %arrayidx131, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %48 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred135, align 8
  %50 = load i32, i32* @zz_size, align 4
  %idxprom136 = sext i32 %50 to i64
  %arrayidx137 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom136
  store %union.rec* %49, %union.rec** %arrayidx137, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.129, %if.then.127
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.120
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 1
  %os11142 = bitcast %union.FIRST_UNION* %ou1141 to %struct.anon*
  %otype143 = getelementptr inbounds %struct.anon, %struct.anon* %os11142, i32 0, i32 0
  store i8 0, i8* %otype143, align 1
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1144 = bitcast %union.rec* %53 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 1
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc147, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1148 = bitcast %union.rec* %54 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 1
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred151, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1152 = bitcast %union.rec* %55 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 0
  %osucc155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc155, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1156 = bitcast %union.rec* %56 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 0
  %opred159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred159, align 8
  store %union.rec* %52, %union.rec** @xx_link, align 8
  %57 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %57, %union.rec** @zz_res, align 8
  %58 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a160 = bitcast %union.rec* %58 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a160, i32 0, i32 9
  %59 = load %union.rec*, %union.rec** %oopt_constraints, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp161 = icmp eq %union.rec* %60, null
  br i1 %cmp161, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.139
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.195

cond.false:                                       ; preds = %if.end.139
  %62 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp163 = icmp eq %union.rec* %62, null
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.166:                                   ; preds = %cond.false
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %64 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred170, align 8
  store %union.rec* %65, %union.rec** @zz_tmp, align 8
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1171 = bitcast %union.rec* %66 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred174, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %68 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred178, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1179 = bitcast %union.rec* %70 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 0
  %opred182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %opred182, align 8
  %os1183 = bitcast %union.rec* %71 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 0
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc186, align 8
  %72 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1187 = bitcast %union.rec* %73 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 0
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred190, align 8
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1191 = bitcast %union.rec* %75 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 0
  %osucc194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 1
  store %union.rec* %74, %union.rec** %osucc194, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.166, %cond.true.165
  %cond = phi %union.rec* [ %63, %cond.true.165 ], [ %74, %cond.false.166 ]
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.end, %cond.true
  %cond196 = phi %union.rec* [ %61, %cond.true ], [ %cond, %cond.end ]
  %76 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %76, %union.rec** @zz_res, align 8
  %77 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp197 = icmp eq %union.rec* %78, null
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %cond.end.195
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.235

cond.false.200:                                   ; preds = %cond.end.195
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp201 = icmp eq %union.rec* %80, null
  br i1 %cmp201, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %cond.false.200
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.233

cond.false.204:                                   ; preds = %cond.false.200
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1205 = bitcast %union.rec* %82 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 1
  %opred208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred208, align 8
  store %union.rec* %83, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1209 = bitcast %union.rec* %84 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 1
  %opred212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %opred212, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1213 = bitcast %union.rec* %86 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 1
  %opred216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred216, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1217 = bitcast %union.rec* %88 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 1
  %opred220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %opred220, align 8
  %os1221 = bitcast %union.rec* %89 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 1
  %osucc224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc224, align 8
  %90 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1225 = bitcast %union.rec* %91 to %struct.word_type*
  %olist226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist226, i32 0, i64 1
  %opred228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx227, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred228, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %93 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1229 = bitcast %union.rec* %93 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 1
  %osucc232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 1
  store %union.rec* %92, %union.rec** %osucc232, align 8
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.204, %cond.true.203
  %cond234 = phi %union.rec* [ %81, %cond.true.203 ], [ %92, %cond.false.204 ]
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.end.233, %cond.true.199
  %cond236 = phi %union.rec* [ %79, %cond.true.199 ], [ %cond234, %cond.end.233 ]
  %94 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a237 = bitcast %union.rec* %94 to %struct.head_type*
  %oopt_components238 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a237, i32 0, i32 8
  %95 = load %union.rec*, %union.rec** %oopt_components238, align 8
  %os1239 = bitcast %union.rec* %95 to %struct.word_type*
  %olist240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist240, i32 0, i64 0
  %opred242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx241, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred242, align 8
  %97 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a243 = bitcast %union.rec* %97 to %struct.head_type*
  %oopt_components244 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a243, i32 0, i32 8
  %98 = load %union.rec*, %union.rec** %oopt_components244, align 8
  %cmp245 = icmp ne %union.rec* %96, %98
  br i1 %cmp245, label %if.then.247, label %if.end.1104

if.then.247:                                      ; preds = %cond.end.235
  %99 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a248 = bitcast %union.rec* %99 to %struct.head_type*
  %oopt_components249 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a248, i32 0, i32 8
  %100 = load %union.rec*, %union.rec** %oopt_components249, align 8
  %os1250 = bitcast %union.rec* %100 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 0
  %opred253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %opred253, align 8
  %os1254 = bitcast %union.rec* %101 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 1
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred257, align 8
  store %union.rec* %102, %union.rec** %g, align 8
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.267, %if.then.247
  %103 = load %union.rec*, %union.rec** %g, align 8
  %os1259 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 1
  %os11261 = bitcast %union.FIRST_UNION* %ou1260 to %struct.anon*
  %otype262 = getelementptr inbounds %struct.anon, %struct.anon* %os11261, i32 0, i32 0
  %104 = load i8, i8* %otype262, align 1
  %conv263 = zext i8 %104 to i32
  %cmp264 = icmp eq i32 %conv263, 0
  br i1 %cmp264, label %for.body.266, label %for.end.272

for.body.266:                                     ; preds = %for.cond.258
  br label %for.inc.267

for.inc.267:                                      ; preds = %for.body.266
  %105 = load %union.rec*, %union.rec** %g, align 8
  %os1268 = bitcast %union.rec* %105 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 1
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %opred271, align 8
  store %union.rec* %106, %union.rec** %g, align 8
  br label %for.cond.258

for.end.272:                                      ; preds = %for.cond.258
  %107 = load %union.rec*, %union.rec** %g, align 8
  %os1273 = bitcast %union.rec* %107 to %struct.word_type*
  %ou1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 1
  %os11275 = bitcast %union.FIRST_UNION* %ou1274 to %struct.anon*
  %otype276 = getelementptr inbounds %struct.anon, %struct.anon* %os11275, i32 0, i32 0
  %108 = load i8, i8* %otype276, align 1
  %conv277 = zext i8 %108 to i32
  %cmp278 = icmp eq i32 %conv277, 1
  br i1 %cmp278, label %if.end.282, label %if.then.280

if.then.280:                                      ; preds = %for.end.272
  %109 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call281 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.280, %for.end.272
  %110 = load %union.rec*, %union.rec** %g, align 8
  %os5 = bitcast %union.rec* %110 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %111 = bitcast %struct.GAP* %ogap to i16*
  %bf.load283 = load i16, i16* %111, align 4
  %bf.clear284 = and i16 %bf.load283, -129
  store i16 %bf.clear284, i16* %111, align 4
  %112 = load %union.rec*, %union.rec** %g, align 8
  %os5285 = bitcast %union.rec* %112 to %struct.gapobj_type*
  %ogap286 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5285, i32 0, i32 3
  %113 = bitcast %struct.GAP* %ogap286 to i16*
  %bf.load287 = load i16, i16* %113, align 4
  %bf.clear288 = and i16 %bf.load287, -257
  store i16 %bf.clear288, i16* %113, align 4
  %114 = load %union.rec*, %union.rec** %g, align 8
  %os5289 = bitcast %union.rec* %114 to %struct.gapobj_type*
  %ogap290 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5289, i32 0, i32 3
  %115 = bitcast %struct.GAP* %ogap290 to i16*
  %bf.load291 = load i16, i16* %115, align 4
  %bf.clear292 = and i16 %bf.load291, -513
  %bf.set = or i16 %bf.clear292, 512
  store i16 %bf.set, i16* %115, align 4
  %116 = load %union.rec*, %union.rec** %g, align 8
  %os5293 = bitcast %union.rec* %116 to %struct.gapobj_type*
  %ogap294 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5293, i32 0, i32 3
  %117 = bitcast %struct.GAP* %ogap294 to i16*
  %bf.load295 = load i16, i16* %117, align 4
  %bf.clear296 = and i16 %bf.load295, -7169
  %bf.set297 = or i16 %bf.clear296, 3072
  store i16 %bf.set297, i16* %117, align 4
  %118 = load %union.rec*, %union.rec** %g, align 8
  %os5298 = bitcast %union.rec* %118 to %struct.gapobj_type*
  %ogap299 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5298, i32 0, i32 3
  %119 = bitcast %struct.GAP* %ogap299 to i16*
  %bf.load300 = load i16, i16* %119, align 4
  %bf.clear301 = and i16 %bf.load300, 8191
  %bf.set302 = or i16 %bf.clear301, -16384
  store i16 %bf.set302, i16* %119, align 4
  %120 = load %union.rec*, %union.rec** %g, align 8
  %os5303 = bitcast %union.rec* %120 to %struct.gapobj_type*
  %ogap304 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5303, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap304, i32 0, i32 1
  store i16 4096, i16* %owidth, align 2
  %121 = load %union.rec*, %union.rec** %g, align 8
  %os1305 = bitcast %union.rec* %121 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 0
  %osucc308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 1
  %122 = load %union.rec*, %union.rec** %osucc308, align 8
  %123 = load %union.rec*, %union.rec** %g, align 8
  %cmp309 = icmp ne %union.rec* %122, %123
  br i1 %cmp309, label %if.then.311, label %if.end.439

if.then.311:                                      ; preds = %if.end.282
  %124 = load %union.rec*, %union.rec** %g, align 8
  %os1312 = bitcast %union.rec* %124 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 0
  %osucc315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 1
  %125 = load %union.rec*, %union.rec** %osucc315, align 8
  store %union.rec* %125, %union.rec** @xx_link, align 8
  %126 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %126, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1316 = bitcast %union.rec* %127 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %osucc319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 1
  %128 = load %union.rec*, %union.rec** %osucc319, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp320 = icmp eq %union.rec* %128, %129
  br i1 %cmp320, label %cond.true.322, label %cond.false.323

cond.true.322:                                    ; preds = %if.then.311
  br label %cond.end.352

cond.false.323:                                   ; preds = %if.then.311
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1324 = bitcast %union.rec* %130 to %struct.word_type*
  %olist325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist325, i32 0, i64 1
  %osucc327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx326, i32 0, i32 1
  %131 = load %union.rec*, %union.rec** %osucc327, align 8
  store %union.rec* %131, %union.rec** @zz_res, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %132 to %struct.word_type*
  %olist329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist329, i32 0, i64 1
  %opred331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx330, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred331, align 8
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1332 = bitcast %union.rec* %134 to %struct.word_type*
  %olist333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist333, i32 0, i64 1
  %opred335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx334, i32 0, i32 0
  store %union.rec* %133, %union.rec** %opred335, align 8
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %136 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %opred339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %opred339, align 8
  %os1340 = bitcast %union.rec* %137 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 1
  %osucc343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 1
  store %union.rec* %135, %union.rec** %osucc343, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1344 = bitcast %union.rec* %139 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 1
  %osucc347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc347, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1348 = bitcast %union.rec* %140 to %struct.word_type*
  %olist349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist349, i32 0, i64 1
  %opred351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx350, i32 0, i32 0
  store %union.rec* %138, %union.rec** %opred351, align 8
  %141 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.false.323, %cond.true.322
  %cond353 = phi %union.rec* [ null, %cond.true.322 ], [ %141, %cond.false.323 ]
  store %union.rec* %cond353, %union.rec** @xx_tmp, align 8
  %142 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1354 = bitcast %union.rec* %143 to %struct.word_type*
  %olist355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist355, i32 0, i64 0
  %osucc357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx356, i32 0, i32 1
  %144 = load %union.rec*, %union.rec** %osucc357, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp358 = icmp eq %union.rec* %144, %145
  br i1 %cmp358, label %cond.true.360, label %cond.false.361

cond.true.360:                                    ; preds = %cond.end.352
  br label %cond.end.390

cond.false.361:                                   ; preds = %cond.end.352
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1362 = bitcast %union.rec* %146 to %struct.word_type*
  %olist363 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1362, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist363, i32 0, i64 0
  %osucc365 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx364, i32 0, i32 1
  %147 = load %union.rec*, %union.rec** %osucc365, align 8
  store %union.rec* %147, %union.rec** @zz_res, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1366 = bitcast %union.rec* %148 to %struct.word_type*
  %olist367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist367, i32 0, i64 0
  %opred369 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx368, i32 0, i32 0
  %149 = load %union.rec*, %union.rec** %opred369, align 8
  %150 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1370 = bitcast %union.rec* %150 to %struct.word_type*
  %olist371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist371, i32 0, i64 0
  %opred373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx372, i32 0, i32 0
  store %union.rec* %149, %union.rec** %opred373, align 8
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1374 = bitcast %union.rec* %152 to %struct.word_type*
  %olist375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist375, i32 0, i64 0
  %opred377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx376, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %opred377, align 8
  %os1378 = bitcast %union.rec* %153 to %struct.word_type*
  %olist379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist379, i32 0, i64 0
  %osucc381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx380, i32 0, i32 1
  store %union.rec* %151, %union.rec** %osucc381, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1382 = bitcast %union.rec* %155 to %struct.word_type*
  %olist383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist383, i32 0, i64 0
  %osucc385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx384, i32 0, i32 1
  store %union.rec* %154, %union.rec** %osucc385, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1386 = bitcast %union.rec* %156 to %struct.word_type*
  %olist387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist387, i32 0, i64 0
  %opred389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx388, i32 0, i32 0
  store %union.rec* %154, %union.rec** %opred389, align 8
  %157 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.361, %cond.true.360
  %cond391 = phi %union.rec* [ null, %cond.true.360 ], [ %157, %cond.false.361 ]
  %158 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %158, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %159, %union.rec** @zz_hold, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1392 = bitcast %union.rec* %160 to %struct.word_type*
  %ou1393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 1
  %os11394 = bitcast %union.FIRST_UNION* %ou1393 to %struct.anon*
  %otype395 = getelementptr inbounds %struct.anon, %struct.anon* %os11394, i32 0, i32 0
  %161 = load i8, i8* %otype395, align 1
  %conv396 = zext i8 %161 to i32
  %cmp397 = icmp eq i32 %conv396, 11
  br i1 %cmp397, label %cond.true.407, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %cond.end.390
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1400 = bitcast %union.rec* %162 to %struct.word_type*
  %ou1401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 1
  %os11402 = bitcast %union.FIRST_UNION* %ou1401 to %struct.anon*
  %otype403 = getelementptr inbounds %struct.anon, %struct.anon* %os11402, i32 0, i32 0
  %163 = load i8, i8* %otype403, align 1
  %conv404 = zext i8 %163 to i32
  %cmp405 = icmp eq i32 %conv404, 12
  br i1 %cmp405, label %cond.true.407, label %cond.false.412

cond.true.407:                                    ; preds = %lor.lhs.false.399, %cond.end.390
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1408 = bitcast %union.rec* %164 to %struct.word_type*
  %ou1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 1
  %os11410 = bitcast %union.FIRST_UNION* %ou1409 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11410, i32 0, i32 1
  %165 = load i8, i8* %orec_size, align 1
  %conv411 = zext i8 %165 to i32
  br label %cond.end.420

cond.false.412:                                   ; preds = %lor.lhs.false.399
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1413 = bitcast %union.rec* %166 to %struct.word_type*
  %ou1414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1413, i32 0, i32 1
  %os11415 = bitcast %union.FIRST_UNION* %ou1414 to %struct.anon*
  %otype416 = getelementptr inbounds %struct.anon, %struct.anon* %os11415, i32 0, i32 0
  %167 = load i8, i8* %otype416, align 1
  %idxprom417 = zext i8 %167 to i64
  %arrayidx418 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom417
  %168 = load i8, i8* %arrayidx418, align 1
  %conv419 = zext i8 %168 to i32
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.412, %cond.true.407
  %cond421 = phi i32 [ %conv411, %cond.true.407 ], [ %conv419, %cond.false.412 ]
  store i32 %cond421, i32* @zz_size, align 4
  %169 = load i32, i32* @zz_size, align 4
  %idxprom422 = sext i32 %169 to i64
  %arrayidx423 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom422
  %170 = load %union.rec*, %union.rec** %arrayidx423, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1424 = bitcast %union.rec* %171 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 0
  %opred427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 0
  store %union.rec* %170, %union.rec** %opred427, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = load i32, i32* @zz_size, align 4
  %idxprom428 = sext i32 %173 to i64
  %arrayidx429 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom428
  store %union.rec* %172, %union.rec** %arrayidx429, align 8
  %174 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1430 = bitcast %union.rec* %174 to %struct.word_type*
  %olist431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1430, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist431, i32 0, i64 1
  %osucc433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx432, i32 0, i32 1
  %175 = load %union.rec*, %union.rec** %osucc433, align 8
  %176 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp434 = icmp eq %union.rec* %175, %176
  br i1 %cmp434, label %if.then.436, label %if.end.438

if.then.436:                                      ; preds = %cond.end.420
  %177 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call437 = call i32 @DisposeObject(%union.rec* %177)
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.436, %cond.end.420
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %if.end.282
  %178 = load %union.rec*, %union.rec** %g, align 8
  %os1440 = bitcast %union.rec* %178 to %struct.word_type*
  %ou1441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1441 to %struct.FILE_POS*
  %call442 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), %struct.FILE_POS* %ofpos)
  store %union.rec* %call442, %union.rec** %tmp, align 8
  %179 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv443 = zext i8 %179 to i32
  store i32 %conv443, i32* @zz_size, align 4
  %conv444 = sext i32 %conv443 to i64
  %cmp445 = icmp uge i64 %conv444, 265
  br i1 %cmp445, label %if.then.447, label %if.else.449

if.then.447:                                      ; preds = %if.end.439
  %180 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call448 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %180)
  br label %if.end.466

if.else.449:                                      ; preds = %if.end.439
  %181 = load i32, i32* @zz_size, align 4
  %idxprom450 = sext i32 %181 to i64
  %arrayidx451 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom450
  %182 = load %union.rec*, %union.rec** %arrayidx451, align 8
  %cmp452 = icmp eq %union.rec* %182, null
  br i1 %cmp452, label %if.then.454, label %if.else.456

if.then.454:                                      ; preds = %if.else.449
  %183 = load i32, i32* @zz_size, align 4
  %184 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call455 = call %union.rec* @GetMemory(i32 %183, %struct.FILE_POS* %184)
  store %union.rec* %call455, %union.rec** @zz_hold, align 8
  br label %if.end.465

if.else.456:                                      ; preds = %if.else.449
  %185 = load i32, i32* @zz_size, align 4
  %idxprom457 = sext i32 %185 to i64
  %arrayidx458 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom457
  %186 = load %union.rec*, %union.rec** %arrayidx458, align 8
  store %union.rec* %186, %union.rec** @zz_hold, align 8
  store %union.rec* %186, %union.rec** @zz_hold, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1459 = bitcast %union.rec* %187 to %struct.word_type*
  %olist460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist460, i32 0, i64 0
  %opred462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx461, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred462, align 8
  %189 = load i32, i32* @zz_size, align 4
  %idxprom463 = sext i32 %189 to i64
  %arrayidx464 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom463
  store %union.rec* %188, %union.rec** %arrayidx464, align 8
  br label %if.end.465

if.end.465:                                       ; preds = %if.else.456, %if.then.454
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.then.447
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1467 = bitcast %union.rec* %190 to %struct.word_type*
  %ou1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 1
  %os11469 = bitcast %union.FIRST_UNION* %ou1468 to %struct.anon*
  %otype470 = getelementptr inbounds %struct.anon, %struct.anon* %os11469, i32 0, i32 0
  store i8 0, i8* %otype470, align 1
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1471 = bitcast %union.rec* %192 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 1
  %osucc474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 1
  store %union.rec* %191, %union.rec** %osucc474, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1475 = bitcast %union.rec* %193 to %struct.word_type*
  %olist476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 0
  %arrayidx477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist476, i32 0, i64 1
  %opred478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx477, i32 0, i32 0
  store %union.rec* %191, %union.rec** %opred478, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1479 = bitcast %union.rec* %194 to %struct.word_type*
  %olist480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 0
  %arrayidx481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist480, i32 0, i64 0
  %osucc482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx481, i32 0, i32 1
  store %union.rec* %191, %union.rec** %osucc482, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1483 = bitcast %union.rec* %195 to %struct.word_type*
  %olist484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist484, i32 0, i64 0
  %opred486 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx485, i32 0, i32 0
  store %union.rec* %191, %union.rec** %opred486, align 8
  store %union.rec* %191, %union.rec** @xx_link, align 8
  %196 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %196, %union.rec** @zz_res, align 8
  %197 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %197, %union.rec** @zz_hold, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp487 = icmp eq %union.rec* %198, null
  br i1 %cmp487, label %cond.true.489, label %cond.false.490

cond.true.489:                                    ; preds = %if.end.466
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.525

cond.false.490:                                   ; preds = %if.end.466
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp491 = icmp eq %union.rec* %200, null
  br i1 %cmp491, label %cond.true.493, label %cond.false.494

cond.true.493:                                    ; preds = %cond.false.490
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.523

cond.false.494:                                   ; preds = %cond.false.490
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1495 = bitcast %union.rec* %202 to %struct.word_type*
  %olist496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist496, i32 0, i64 0
  %opred498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx497, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %opred498, align 8
  store %union.rec* %203, %union.rec** @zz_tmp, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1499 = bitcast %union.rec* %204 to %struct.word_type*
  %olist500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist500, i32 0, i64 0
  %opred502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx501, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred502, align 8
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1503 = bitcast %union.rec* %206 to %struct.word_type*
  %olist504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist504, i32 0, i64 0
  %opred506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx505, i32 0, i32 0
  store %union.rec* %205, %union.rec** %opred506, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1507 = bitcast %union.rec* %208 to %struct.word_type*
  %olist508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist508, i32 0, i64 0
  %opred510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx509, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %opred510, align 8
  %os1511 = bitcast %union.rec* %209 to %struct.word_type*
  %olist512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist512, i32 0, i64 0
  %osucc514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx513, i32 0, i32 1
  store %union.rec* %207, %union.rec** %osucc514, align 8
  %210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1515 = bitcast %union.rec* %211 to %struct.word_type*
  %olist516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 0
  %arrayidx517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist516, i32 0, i64 0
  %opred518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx517, i32 0, i32 0
  store %union.rec* %210, %union.rec** %opred518, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %213 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1519 = bitcast %union.rec* %213 to %struct.word_type*
  %olist520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1519, i32 0, i32 0
  %arrayidx521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist520, i32 0, i64 0
  %osucc522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx521, i32 0, i32 1
  store %union.rec* %212, %union.rec** %osucc522, align 8
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.false.494, %cond.true.493
  %cond524 = phi %union.rec* [ %201, %cond.true.493 ], [ %212, %cond.false.494 ]
  br label %cond.end.525

cond.end.525:                                     ; preds = %cond.end.523, %cond.true.489
  %cond526 = phi %union.rec* [ %199, %cond.true.489 ], [ %cond524, %cond.end.523 ]
  %214 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %214, %union.rec** @zz_res, align 8
  %215 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %215, %union.rec** @zz_hold, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp527 = icmp eq %union.rec* %216, null
  br i1 %cmp527, label %cond.true.529, label %cond.false.530

cond.true.529:                                    ; preds = %cond.end.525
  %217 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.565

cond.false.530:                                   ; preds = %cond.end.525
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp531 = icmp eq %union.rec* %218, null
  br i1 %cmp531, label %cond.true.533, label %cond.false.534

cond.true.533:                                    ; preds = %cond.false.530
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.563

cond.false.534:                                   ; preds = %cond.false.530
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1535 = bitcast %union.rec* %220 to %struct.word_type*
  %olist536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1535, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist536, i32 0, i64 1
  %opred538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx537, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %opred538, align 8
  store %union.rec* %221, %union.rec** @zz_tmp, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1539 = bitcast %union.rec* %222 to %struct.word_type*
  %olist540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist540, i32 0, i64 1
  %opred542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx541, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred542, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1543 = bitcast %union.rec* %224 to %struct.word_type*
  %olist544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1543, i32 0, i32 0
  %arrayidx545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist544, i32 0, i64 1
  %opred546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx545, i32 0, i32 0
  store %union.rec* %223, %union.rec** %opred546, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1547 = bitcast %union.rec* %226 to %struct.word_type*
  %olist548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1547, i32 0, i32 0
  %arrayidx549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist548, i32 0, i64 1
  %opred550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx549, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %opred550, align 8
  %os1551 = bitcast %union.rec* %227 to %struct.word_type*
  %olist552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1551, i32 0, i32 0
  %arrayidx553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist552, i32 0, i64 1
  %osucc554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx553, i32 0, i32 1
  store %union.rec* %225, %union.rec** %osucc554, align 8
  %228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1555 = bitcast %union.rec* %229 to %struct.word_type*
  %olist556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist556, i32 0, i64 1
  %opred558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx557, i32 0, i32 0
  store %union.rec* %228, %union.rec** %opred558, align 8
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  %231 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1559 = bitcast %union.rec* %231 to %struct.word_type*
  %olist560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1559, i32 0, i32 0
  %arrayidx561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist560, i32 0, i64 1
  %osucc562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx561, i32 0, i32 1
  store %union.rec* %230, %union.rec** %osucc562, align 8
  br label %cond.end.563

cond.end.563:                                     ; preds = %cond.false.534, %cond.true.533
  %cond564 = phi %union.rec* [ %219, %cond.true.533 ], [ %230, %cond.false.534 ]
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.end.563, %cond.true.529
  %cond566 = phi %union.rec* [ %217, %cond.true.529 ], [ %cond564, %cond.end.563 ]
  %232 = load %union.rec*, %union.rec** %g, align 8
  %os1567 = bitcast %union.rec* %232 to %struct.word_type*
  %ou1568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1567, i32 0, i32 1
  %ofpos569 = bitcast %union.FIRST_UNION* %ou1568 to %struct.FILE_POS*
  %call570 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.FILE_POS* %ofpos569)
  store %union.rec* %call570, %union.rec** %tmp, align 8
  %233 = load %union.rec*, %union.rec** %tmp, align 8
  %os1571 = bitcast %union.rec* %233 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx572 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  store i32 0, i32* %arrayidx572, align 4
  %234 = load %union.rec*, %union.rec** %tmp, align 8
  %os1573 = bitcast %union.rec* %234 to %struct.word_type*
  %ou3574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 3
  %os31575 = bitcast %union.THIRD_UNION* %ou3574 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31575, i32 0, i32 0
  %arrayidx576 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  store i32 0, i32* %arrayidx576, align 4
  %235 = load %union.rec*, %union.rec** %tmp, align 8
  %os1577 = bitcast %union.rec* %235 to %struct.word_type*
  %ou3578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 3
  %os31579 = bitcast %union.THIRD_UNION* %ou3578 to %struct.anon.6*
  %ofwd580 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31579, i32 0, i32 1
  %arrayidx581 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd580, i32 0, i64 1
  store i32 0, i32* %arrayidx581, align 4
  %236 = load %union.rec*, %union.rec** %tmp, align 8
  %os1582 = bitcast %union.rec* %236 to %struct.word_type*
  %ou3583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1582, i32 0, i32 3
  %os31584 = bitcast %union.THIRD_UNION* %ou3583 to %struct.anon.6*
  %oback585 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [2 x i32], [2 x i32]* %oback585, i32 0, i64 1
  store i32 0, i32* %arrayidx586, align 4
  %237 = load %union.rec*, %union.rec** %tmp, align 8
  %os1587 = bitcast %union.rec* %237 to %struct.word_type*
  %ou2588 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1587, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2588 to %struct.anon.1*
  %238 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load589 = load i32, i32* %238, align 4
  %bf.clear590 = and i32 %bf.load589, -4190209
  store i32 %bf.clear590, i32* %238, align 4
  %239 = load %union.rec*, %union.rec** %tmp, align 8
  %os1591 = bitcast %union.rec* %239 to %struct.word_type*
  %ou2592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 2
  %os22593 = bitcast %union.SECOND_UNION* %ou2592 to %struct.anon.1*
  %240 = bitcast %struct.anon.1* %os22593 to i32*
  %bf.load594 = load i32, i32* %240, align 4
  %bf.clear595 = and i32 %bf.load594, -4096
  store i32 %bf.clear595, i32* %240, align 4
  %241 = load %union.rec*, %union.rec** %tmp, align 8
  %os1596 = bitcast %union.rec* %241 to %struct.word_type*
  %ou2597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 2
  %os22598 = bitcast %union.SECOND_UNION* %ou2597 to %struct.anon.1*
  %242 = bitcast %struct.anon.1* %os22598 to i32*
  %bf.load599 = load i32, i32* %242, align 4
  %bf.clear600 = and i32 %bf.load599, -4194305
  store i32 %bf.clear600, i32* %242, align 4
  %243 = load %union.rec*, %union.rec** %tmp, align 8
  %os1601 = bitcast %union.rec* %243 to %struct.word_type*
  %ou2602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 2
  %os22603 = bitcast %union.SECOND_UNION* %ou2602 to %struct.anon.1*
  %244 = bitcast %struct.anon.1* %os22603 to i32*
  %bf.load604 = load i32, i32* %244, align 4
  %bf.clear605 = and i32 %bf.load604, 2147483647
  store i32 %bf.clear605, i32* %244, align 4
  %245 = load %union.rec*, %union.rec** %tmp, align 8
  %os1606 = bitcast %union.rec* %245 to %struct.word_type*
  %ou2607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1606, i32 0, i32 2
  %os22608 = bitcast %union.SECOND_UNION* %ou2607 to %struct.anon.1*
  %246 = bitcast %struct.anon.1* %os22608 to i32*
  %bf.load609 = load i32, i32* %246, align 4
  %bf.clear610 = and i32 %bf.load609, -528482305
  store i32 %bf.clear610, i32* %246, align 4
  %247 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv611 = zext i8 %247 to i32
  store i32 %conv611, i32* @zz_size, align 4
  %conv612 = sext i32 %conv611 to i64
  %cmp613 = icmp uge i64 %conv612, 265
  br i1 %cmp613, label %if.then.615, label %if.else.617

if.then.615:                                      ; preds = %cond.end.565
  %248 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call616 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %248)
  br label %if.end.634

if.else.617:                                      ; preds = %cond.end.565
  %249 = load i32, i32* @zz_size, align 4
  %idxprom618 = sext i32 %249 to i64
  %arrayidx619 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom618
  %250 = load %union.rec*, %union.rec** %arrayidx619, align 8
  %cmp620 = icmp eq %union.rec* %250, null
  br i1 %cmp620, label %if.then.622, label %if.else.624

if.then.622:                                      ; preds = %if.else.617
  %251 = load i32, i32* @zz_size, align 4
  %252 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call623 = call %union.rec* @GetMemory(i32 %251, %struct.FILE_POS* %252)
  store %union.rec* %call623, %union.rec** @zz_hold, align 8
  br label %if.end.633

if.else.624:                                      ; preds = %if.else.617
  %253 = load i32, i32* @zz_size, align 4
  %idxprom625 = sext i32 %253 to i64
  %arrayidx626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom625
  %254 = load %union.rec*, %union.rec** %arrayidx626, align 8
  store %union.rec* %254, %union.rec** @zz_hold, align 8
  store %union.rec* %254, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1627 = bitcast %union.rec* %255 to %struct.word_type*
  %olist628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1627, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist628, i32 0, i64 0
  %opred630 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx629, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %opred630, align 8
  %257 = load i32, i32* @zz_size, align 4
  %idxprom631 = sext i32 %257 to i64
  %arrayidx632 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom631
  store %union.rec* %256, %union.rec** %arrayidx632, align 8
  br label %if.end.633

if.end.633:                                       ; preds = %if.else.624, %if.then.622
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.then.615
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1635 = bitcast %union.rec* %258 to %struct.word_type*
  %ou1636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 1
  %os11637 = bitcast %union.FIRST_UNION* %ou1636 to %struct.anon*
  %otype638 = getelementptr inbounds %struct.anon, %struct.anon* %os11637, i32 0, i32 0
  store i8 0, i8* %otype638, align 1
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1639 = bitcast %union.rec* %260 to %struct.word_type*
  %olist640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist640, i32 0, i64 1
  %osucc642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx641, i32 0, i32 1
  store %union.rec* %259, %union.rec** %osucc642, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1643 = bitcast %union.rec* %261 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 1
  %opred646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 0
  store %union.rec* %259, %union.rec** %opred646, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1647 = bitcast %union.rec* %262 to %struct.word_type*
  %olist648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1647, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist648, i32 0, i64 0
  %osucc650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx649, i32 0, i32 1
  store %union.rec* %259, %union.rec** %osucc650, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1651 = bitcast %union.rec* %263 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 0
  %opred654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 0
  store %union.rec* %259, %union.rec** %opred654, align 8
  store %union.rec* %259, %union.rec** @xx_link, align 8
  %264 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %264, %union.rec** @zz_res, align 8
  %265 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a655 = bitcast %union.rec* %265 to %struct.head_type*
  %oopt_components656 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a655, i32 0, i32 8
  %266 = load %union.rec*, %union.rec** %oopt_components656, align 8
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp657 = icmp eq %union.rec* %267, null
  br i1 %cmp657, label %cond.true.659, label %cond.false.660

cond.true.659:                                    ; preds = %if.end.634
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.695

cond.false.660:                                   ; preds = %if.end.634
  %269 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp661 = icmp eq %union.rec* %269, null
  br i1 %cmp661, label %cond.true.663, label %cond.false.664

cond.true.663:                                    ; preds = %cond.false.660
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.693

cond.false.664:                                   ; preds = %cond.false.660
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1665 = bitcast %union.rec* %271 to %struct.word_type*
  %olist666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1665, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist666, i32 0, i64 0
  %opred668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx667, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %opred668, align 8
  store %union.rec* %272, %union.rec** @zz_tmp, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1669 = bitcast %union.rec* %273 to %struct.word_type*
  %olist670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist670, i32 0, i64 0
  %opred672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx671, i32 0, i32 0
  %274 = load %union.rec*, %union.rec** %opred672, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1673 = bitcast %union.rec* %275 to %struct.word_type*
  %olist674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist674, i32 0, i64 0
  %opred676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx675, i32 0, i32 0
  store %union.rec* %274, %union.rec** %opred676, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1677 = bitcast %union.rec* %277 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 0
  %opred680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 0
  %278 = load %union.rec*, %union.rec** %opred680, align 8
  %os1681 = bitcast %union.rec* %278 to %struct.word_type*
  %olist682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist682, i32 0, i64 0
  %osucc684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx683, i32 0, i32 1
  store %union.rec* %276, %union.rec** %osucc684, align 8
  %279 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1685 = bitcast %union.rec* %280 to %struct.word_type*
  %olist686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 0
  %arrayidx687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist686, i32 0, i64 0
  %opred688 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx687, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred688, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1689 = bitcast %union.rec* %282 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 0
  %osucc692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 1
  store %union.rec* %281, %union.rec** %osucc692, align 8
  br label %cond.end.693

cond.end.693:                                     ; preds = %cond.false.664, %cond.true.663
  %cond694 = phi %union.rec* [ %270, %cond.true.663 ], [ %281, %cond.false.664 ]
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.end.693, %cond.true.659
  %cond696 = phi %union.rec* [ %268, %cond.true.659 ], [ %cond694, %cond.end.693 ]
  %283 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %283, %union.rec** @zz_res, align 8
  %284 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp697 = icmp eq %union.rec* %285, null
  br i1 %cmp697, label %cond.true.699, label %cond.false.700

cond.true.699:                                    ; preds = %cond.end.695
  %286 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.735

cond.false.700:                                   ; preds = %cond.end.695
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp701 = icmp eq %union.rec* %287, null
  br i1 %cmp701, label %cond.true.703, label %cond.false.704

cond.true.703:                                    ; preds = %cond.false.700
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.733

cond.false.704:                                   ; preds = %cond.false.700
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1705 = bitcast %union.rec* %289 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 1
  %opred708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred708, align 8
  store %union.rec* %290, %union.rec** @zz_tmp, align 8
  %291 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1709 = bitcast %union.rec* %291 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 1
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %opred712, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1713 = bitcast %union.rec* %293 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 1
  %opred716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred716, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1717 = bitcast %union.rec* %295 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 1
  %opred720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 0
  %296 = load %union.rec*, %union.rec** %opred720, align 8
  %os1721 = bitcast %union.rec* %296 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 1
  %osucc724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 1
  store %union.rec* %294, %union.rec** %osucc724, align 8
  %297 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %298 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1725 = bitcast %union.rec* %298 to %struct.word_type*
  %olist726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 0
  %arrayidx727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist726, i32 0, i64 1
  %opred728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx727, i32 0, i32 0
  store %union.rec* %297, %union.rec** %opred728, align 8
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1729 = bitcast %union.rec* %300 to %struct.word_type*
  %olist730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist730, i32 0, i64 1
  %osucc732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx731, i32 0, i32 1
  store %union.rec* %299, %union.rec** %osucc732, align 8
  br label %cond.end.733

cond.end.733:                                     ; preds = %cond.false.704, %cond.true.703
  %cond734 = phi %union.rec* [ %288, %cond.true.703 ], [ %299, %cond.false.704 ]
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.end.733, %cond.true.699
  %cond736 = phi %union.rec* [ %286, %cond.true.699 ], [ %cond734, %cond.end.733 ]
  %301 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv737 = zext i8 %301 to i32
  store i32 %conv737, i32* @zz_size, align 4
  %conv738 = sext i32 %conv737 to i64
  %cmp739 = icmp uge i64 %conv738, 265
  br i1 %cmp739, label %if.then.741, label %if.else.743

if.then.741:                                      ; preds = %cond.end.735
  %302 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call742 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %302)
  br label %if.end.760

if.else.743:                                      ; preds = %cond.end.735
  %303 = load i32, i32* @zz_size, align 4
  %idxprom744 = sext i32 %303 to i64
  %arrayidx745 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom744
  %304 = load %union.rec*, %union.rec** %arrayidx745, align 8
  %cmp746 = icmp eq %union.rec* %304, null
  br i1 %cmp746, label %if.then.748, label %if.else.750

if.then.748:                                      ; preds = %if.else.743
  %305 = load i32, i32* @zz_size, align 4
  %306 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call749 = call %union.rec* @GetMemory(i32 %305, %struct.FILE_POS* %306)
  store %union.rec* %call749, %union.rec** @zz_hold, align 8
  br label %if.end.759

if.else.750:                                      ; preds = %if.else.743
  %307 = load i32, i32* @zz_size, align 4
  %idxprom751 = sext i32 %307 to i64
  %arrayidx752 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom751
  %308 = load %union.rec*, %union.rec** %arrayidx752, align 8
  store %union.rec* %308, %union.rec** @zz_hold, align 8
  store %union.rec* %308, %union.rec** @zz_hold, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1753 = bitcast %union.rec* %309 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 0
  %opred756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  %310 = load %union.rec*, %union.rec** %opred756, align 8
  %311 = load i32, i32* @zz_size, align 4
  %idxprom757 = sext i32 %311 to i64
  %arrayidx758 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom757
  store %union.rec* %310, %union.rec** %arrayidx758, align 8
  br label %if.end.759

if.end.759:                                       ; preds = %if.else.750, %if.then.748
  br label %if.end.760

if.end.760:                                       ; preds = %if.end.759, %if.then.741
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1761 = bitcast %union.rec* %312 to %struct.word_type*
  %ou1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 1
  %os11763 = bitcast %union.FIRST_UNION* %ou1762 to %struct.anon*
  %otype764 = getelementptr inbounds %struct.anon, %struct.anon* %os11763, i32 0, i32 0
  store i8 1, i8* %otype764, align 1
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1765 = bitcast %union.rec* %314 to %struct.word_type*
  %olist766 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1765, i32 0, i32 0
  %arrayidx767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist766, i32 0, i64 1
  %osucc768 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx767, i32 0, i32 1
  store %union.rec* %313, %union.rec** %osucc768, align 8
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1769 = bitcast %union.rec* %315 to %struct.word_type*
  %olist770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 0
  %arrayidx771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist770, i32 0, i64 1
  %opred772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx771, i32 0, i32 0
  store %union.rec* %313, %union.rec** %opred772, align 8
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1773 = bitcast %union.rec* %316 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 0
  %osucc776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 1
  store %union.rec* %313, %union.rec** %osucc776, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1777 = bitcast %union.rec* %317 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 0
  %opred780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 0
  store %union.rec* %313, %union.rec** %opred780, align 8
  store %union.rec* %313, %union.rec** %g, align 8
  %318 = load %union.rec*, %union.rec** %g, align 8
  %os1781 = bitcast %union.rec* %318 to %struct.word_type*
  %ou2782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2782 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  store i8 1, i8* %ohspace, align 1
  %319 = load %union.rec*, %union.rec** %g, align 8
  %os1783 = bitcast %union.rec* %319 to %struct.word_type*
  %ou2784 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1783, i32 0, i32 2
  %os21785 = bitcast %union.SECOND_UNION* %ou2784 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21785, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %320 = load %union.rec*, %union.rec** %tmp, align 8
  %os1786 = bitcast %union.rec* %320 to %struct.word_type*
  %ou1787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1786, i32 0, i32 1
  %ofpos788 = bitcast %union.FIRST_UNION* %ou1787 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos788, i32 0, i32 2
  %321 = load i16, i16* %ofile_num, align 2
  %322 = load %union.rec*, %union.rec** %g, align 8
  %os1789 = bitcast %union.rec* %322 to %struct.word_type*
  %ou1790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 1
  %ofpos791 = bitcast %union.FIRST_UNION* %ou1790 to %struct.FILE_POS*
  %ofile_num792 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos791, i32 0, i32 2
  store i16 %321, i16* %ofile_num792, align 2
  %323 = load %union.rec*, %union.rec** %tmp, align 8
  %os1793 = bitcast %union.rec* %323 to %struct.word_type*
  %ou1794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 1
  %ofpos795 = bitcast %union.FIRST_UNION* %ou1794 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos795, i32 0, i32 3
  %bf.load796 = load i32, i32* %oline_num, align 4
  %bf.clear797 = and i32 %bf.load796, 1048575
  %324 = load %union.rec*, %union.rec** %g, align 8
  %os1798 = bitcast %union.rec* %324 to %struct.word_type*
  %ou1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1798, i32 0, i32 1
  %ofpos800 = bitcast %union.FIRST_UNION* %ou1799 to %struct.FILE_POS*
  %oline_num801 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos800, i32 0, i32 3
  %bf.load802 = load i32, i32* %oline_num801, align 4
  %bf.value = and i32 %bf.clear797, 1048575
  %bf.clear803 = and i32 %bf.load802, -1048576
  %bf.set804 = or i32 %bf.clear803, %bf.value
  store i32 %bf.set804, i32* %oline_num801, align 4
  %325 = load %union.rec*, %union.rec** %tmp, align 8
  %os1805 = bitcast %union.rec* %325 to %struct.word_type*
  %ou1806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1805, i32 0, i32 1
  %ofpos807 = bitcast %union.FIRST_UNION* %ou1806 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos807, i32 0, i32 3
  %bf.load808 = load i32, i32* %ocol_num, align 4
  %bf.lshr809 = lshr i32 %bf.load808, 20
  %326 = load %union.rec*, %union.rec** %g, align 8
  %os1810 = bitcast %union.rec* %326 to %struct.word_type*
  %ou1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 1
  %ofpos812 = bitcast %union.FIRST_UNION* %ou1811 to %struct.FILE_POS*
  %ocol_num813 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos812, i32 0, i32 3
  %bf.load814 = load i32, i32* %ocol_num813, align 4
  %bf.value815 = and i32 %bf.lshr809, 4095
  %bf.shl = shl i32 %bf.value815, 20
  %bf.clear816 = and i32 %bf.load814, 1048575
  %bf.set817 = or i32 %bf.clear816, %bf.shl
  store i32 %bf.set817, i32* %ocol_num813, align 4
  %327 = load %union.rec*, %union.rec** %g, align 8
  %os5818 = bitcast %union.rec* %327 to %struct.gapobj_type*
  %ogap819 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5818, i32 0, i32 3
  %328 = bitcast %struct.GAP* %ogap819 to i16*
  %bf.load820 = load i16, i16* %328, align 4
  %bf.clear821 = and i16 %bf.load820, -129
  store i16 %bf.clear821, i16* %328, align 4
  %329 = load %union.rec*, %union.rec** %g, align 8
  %os5822 = bitcast %union.rec* %329 to %struct.gapobj_type*
  %ogap823 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5822, i32 0, i32 3
  %330 = bitcast %struct.GAP* %ogap823 to i16*
  %bf.load824 = load i16, i16* %330, align 4
  %bf.clear825 = and i16 %bf.load824, -257
  store i16 %bf.clear825, i16* %330, align 4
  %331 = load %union.rec*, %union.rec** %g, align 8
  %os5826 = bitcast %union.rec* %331 to %struct.gapobj_type*
  %ogap827 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5826, i32 0, i32 3
  %332 = bitcast %struct.GAP* %ogap827 to i16*
  %bf.load828 = load i16, i16* %332, align 4
  %bf.clear829 = and i16 %bf.load828, -513
  %bf.set830 = or i16 %bf.clear829, 512
  store i16 %bf.set830, i16* %332, align 4
  %333 = load %union.rec*, %union.rec** %g, align 8
  %os5831 = bitcast %union.rec* %333 to %struct.gapobj_type*
  %ogap832 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5831, i32 0, i32 3
  %334 = bitcast %struct.GAP* %ogap832 to i16*
  %bf.load833 = load i16, i16* %334, align 4
  %bf.clear834 = and i16 %bf.load833, -7169
  %bf.set835 = or i16 %bf.clear834, 1024
  store i16 %bf.set835, i16* %334, align 4
  %335 = load %union.rec*, %union.rec** %g, align 8
  %os5836 = bitcast %union.rec* %335 to %struct.gapobj_type*
  %ogap837 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5836, i32 0, i32 3
  %336 = bitcast %struct.GAP* %ogap837 to i16*
  %bf.load838 = load i16, i16* %336, align 4
  %bf.clear839 = and i16 %bf.load838, 8191
  %bf.set840 = or i16 %bf.clear839, 8192
  store i16 %bf.set840, i16* %336, align 4
  %337 = load %union.rec*, %union.rec** %g, align 8
  %os5841 = bitcast %union.rec* %337 to %struct.gapobj_type*
  %ogap842 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5841, i32 0, i32 3
  %owidth843 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap842, i32 0, i32 1
  store i16 567, i16* %owidth843, align 2
  %338 = load %union.rec*, %union.rec** %g, align 8
  %os1844 = bitcast %union.rec* %338 to %struct.word_type*
  %ou1845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1844, i32 0, i32 1
  %ofpos846 = bitcast %union.FIRST_UNION* %ou1845 to %struct.FILE_POS*
  %call847 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %ofpos846)
  store %union.rec* %call847, %union.rec** %tmp, align 8
  %339 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv848 = zext i8 %339 to i32
  store i32 %conv848, i32* @zz_size, align 4
  %conv849 = sext i32 %conv848 to i64
  %cmp850 = icmp uge i64 %conv849, 265
  br i1 %cmp850, label %if.then.852, label %if.else.854

if.then.852:                                      ; preds = %if.end.760
  %340 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call853 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %340)
  br label %if.end.871

if.else.854:                                      ; preds = %if.end.760
  %341 = load i32, i32* @zz_size, align 4
  %idxprom855 = sext i32 %341 to i64
  %arrayidx856 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom855
  %342 = load %union.rec*, %union.rec** %arrayidx856, align 8
  %cmp857 = icmp eq %union.rec* %342, null
  br i1 %cmp857, label %if.then.859, label %if.else.861

if.then.859:                                      ; preds = %if.else.854
  %343 = load i32, i32* @zz_size, align 4
  %344 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call860 = call %union.rec* @GetMemory(i32 %343, %struct.FILE_POS* %344)
  store %union.rec* %call860, %union.rec** @zz_hold, align 8
  br label %if.end.870

if.else.861:                                      ; preds = %if.else.854
  %345 = load i32, i32* @zz_size, align 4
  %idxprom862 = sext i32 %345 to i64
  %arrayidx863 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom862
  %346 = load %union.rec*, %union.rec** %arrayidx863, align 8
  store %union.rec* %346, %union.rec** @zz_hold, align 8
  store %union.rec* %346, %union.rec** @zz_hold, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1864 = bitcast %union.rec* %347 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %opred867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 0
  %348 = load %union.rec*, %union.rec** %opred867, align 8
  %349 = load i32, i32* @zz_size, align 4
  %idxprom868 = sext i32 %349 to i64
  %arrayidx869 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom868
  store %union.rec* %348, %union.rec** %arrayidx869, align 8
  br label %if.end.870

if.end.870:                                       ; preds = %if.else.861, %if.then.859
  br label %if.end.871

if.end.871:                                       ; preds = %if.end.870, %if.then.852
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1872 = bitcast %union.rec* %350 to %struct.word_type*
  %ou1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 1
  %os11874 = bitcast %union.FIRST_UNION* %ou1873 to %struct.anon*
  %otype875 = getelementptr inbounds %struct.anon, %struct.anon* %os11874, i32 0, i32 0
  store i8 0, i8* %otype875, align 1
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1876 = bitcast %union.rec* %352 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 1
  %osucc879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 1
  store %union.rec* %351, %union.rec** %osucc879, align 8
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1880 = bitcast %union.rec* %353 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 1
  %opred883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 0
  store %union.rec* %351, %union.rec** %opred883, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1884 = bitcast %union.rec* %354 to %struct.word_type*
  %olist885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1884, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist885, i32 0, i64 0
  %osucc887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx886, i32 0, i32 1
  store %union.rec* %351, %union.rec** %osucc887, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1888 = bitcast %union.rec* %355 to %struct.word_type*
  %olist889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1888, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist889, i32 0, i64 0
  %opred891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx890, i32 0, i32 0
  store %union.rec* %351, %union.rec** %opred891, align 8
  store %union.rec* %351, %union.rec** @xx_link, align 8
  %356 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %356, %union.rec** @zz_res, align 8
  %357 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %357, %union.rec** @zz_hold, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp892 = icmp eq %union.rec* %358, null
  br i1 %cmp892, label %cond.true.894, label %cond.false.895

cond.true.894:                                    ; preds = %if.end.871
  %359 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.930

cond.false.895:                                   ; preds = %if.end.871
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp896 = icmp eq %union.rec* %360, null
  br i1 %cmp896, label %cond.true.898, label %cond.false.899

cond.true.898:                                    ; preds = %cond.false.895
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.928

cond.false.899:                                   ; preds = %cond.false.895
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1900 = bitcast %union.rec* %362 to %struct.word_type*
  %olist901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist901, i32 0, i64 0
  %opred903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx902, i32 0, i32 0
  %363 = load %union.rec*, %union.rec** %opred903, align 8
  store %union.rec* %363, %union.rec** @zz_tmp, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1904 = bitcast %union.rec* %364 to %struct.word_type*
  %olist905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1904, i32 0, i32 0
  %arrayidx906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist905, i32 0, i64 0
  %opred907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx906, i32 0, i32 0
  %365 = load %union.rec*, %union.rec** %opred907, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1908 = bitcast %union.rec* %366 to %struct.word_type*
  %olist909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1908, i32 0, i32 0
  %arrayidx910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist909, i32 0, i64 0
  %opred911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx910, i32 0, i32 0
  store %union.rec* %365, %union.rec** %opred911, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1912 = bitcast %union.rec* %368 to %struct.word_type*
  %olist913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1912, i32 0, i32 0
  %arrayidx914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist913, i32 0, i64 0
  %opred915 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx914, i32 0, i32 0
  %369 = load %union.rec*, %union.rec** %opred915, align 8
  %os1916 = bitcast %union.rec* %369 to %struct.word_type*
  %olist917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1916, i32 0, i32 0
  %arrayidx918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist917, i32 0, i64 0
  %osucc919 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx918, i32 0, i32 1
  store %union.rec* %367, %union.rec** %osucc919, align 8
  %370 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1920 = bitcast %union.rec* %371 to %struct.word_type*
  %olist921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1920, i32 0, i32 0
  %arrayidx922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist921, i32 0, i64 0
  %opred923 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx922, i32 0, i32 0
  store %union.rec* %370, %union.rec** %opred923, align 8
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %373 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1924 = bitcast %union.rec* %373 to %struct.word_type*
  %olist925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1924, i32 0, i32 0
  %arrayidx926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist925, i32 0, i64 0
  %osucc927 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx926, i32 0, i32 1
  store %union.rec* %372, %union.rec** %osucc927, align 8
  br label %cond.end.928

cond.end.928:                                     ; preds = %cond.false.899, %cond.true.898
  %cond929 = phi %union.rec* [ %361, %cond.true.898 ], [ %372, %cond.false.899 ]
  br label %cond.end.930

cond.end.930:                                     ; preds = %cond.end.928, %cond.true.894
  %cond931 = phi %union.rec* [ %359, %cond.true.894 ], [ %cond929, %cond.end.928 ]
  %374 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %374, %union.rec** @zz_res, align 8
  %375 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %375, %union.rec** @zz_hold, align 8
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp932 = icmp eq %union.rec* %376, null
  br i1 %cmp932, label %cond.true.934, label %cond.false.935

cond.true.934:                                    ; preds = %cond.end.930
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.970

cond.false.935:                                   ; preds = %cond.end.930
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp936 = icmp eq %union.rec* %378, null
  br i1 %cmp936, label %cond.true.938, label %cond.false.939

cond.true.938:                                    ; preds = %cond.false.935
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.968

cond.false.939:                                   ; preds = %cond.false.935
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1940 = bitcast %union.rec* %380 to %struct.word_type*
  %olist941 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1940, i32 0, i32 0
  %arrayidx942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist941, i32 0, i64 1
  %opred943 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx942, i32 0, i32 0
  %381 = load %union.rec*, %union.rec** %opred943, align 8
  store %union.rec* %381, %union.rec** @zz_tmp, align 8
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1944 = bitcast %union.rec* %382 to %struct.word_type*
  %olist945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1944, i32 0, i32 0
  %arrayidx946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist945, i32 0, i64 1
  %opred947 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx946, i32 0, i32 0
  %383 = load %union.rec*, %union.rec** %opred947, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1948 = bitcast %union.rec* %384 to %struct.word_type*
  %olist949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1948, i32 0, i32 0
  %arrayidx950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist949, i32 0, i64 1
  %opred951 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx950, i32 0, i32 0
  store %union.rec* %383, %union.rec** %opred951, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1952 = bitcast %union.rec* %386 to %struct.word_type*
  %olist953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1952, i32 0, i32 0
  %arrayidx954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist953, i32 0, i64 1
  %opred955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx954, i32 0, i32 0
  %387 = load %union.rec*, %union.rec** %opred955, align 8
  %os1956 = bitcast %union.rec* %387 to %struct.word_type*
  %olist957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1956, i32 0, i32 0
  %arrayidx958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist957, i32 0, i64 1
  %osucc959 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx958, i32 0, i32 1
  store %union.rec* %385, %union.rec** %osucc959, align 8
  %388 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %389 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1960 = bitcast %union.rec* %389 to %struct.word_type*
  %olist961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1960, i32 0, i32 0
  %arrayidx962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist961, i32 0, i64 1
  %opred963 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx962, i32 0, i32 0
  store %union.rec* %388, %union.rec** %opred963, align 8
  %390 = load %union.rec*, %union.rec** @zz_res, align 8
  %391 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1964 = bitcast %union.rec* %391 to %struct.word_type*
  %olist965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1964, i32 0, i32 0
  %arrayidx966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist965, i32 0, i64 1
  %osucc967 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx966, i32 0, i32 1
  store %union.rec* %390, %union.rec** %osucc967, align 8
  br label %cond.end.968

cond.end.968:                                     ; preds = %cond.false.939, %cond.true.938
  %cond969 = phi %union.rec* [ %379, %cond.true.938 ], [ %390, %cond.false.939 ]
  br label %cond.end.970

cond.end.970:                                     ; preds = %cond.end.968, %cond.true.934
  %cond971 = phi %union.rec* [ %377, %cond.true.934 ], [ %cond969, %cond.end.968 ]
  %392 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv972 = zext i8 %392 to i32
  store i32 %conv972, i32* @zz_size, align 4
  %conv973 = sext i32 %conv972 to i64
  %cmp974 = icmp uge i64 %conv973, 265
  br i1 %cmp974, label %if.then.976, label %if.else.978

if.then.976:                                      ; preds = %cond.end.970
  %393 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call977 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %393)
  br label %if.end.995

if.else.978:                                      ; preds = %cond.end.970
  %394 = load i32, i32* @zz_size, align 4
  %idxprom979 = sext i32 %394 to i64
  %arrayidx980 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom979
  %395 = load %union.rec*, %union.rec** %arrayidx980, align 8
  %cmp981 = icmp eq %union.rec* %395, null
  br i1 %cmp981, label %if.then.983, label %if.else.985

if.then.983:                                      ; preds = %if.else.978
  %396 = load i32, i32* @zz_size, align 4
  %397 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call984 = call %union.rec* @GetMemory(i32 %396, %struct.FILE_POS* %397)
  store %union.rec* %call984, %union.rec** @zz_hold, align 8
  br label %if.end.994

if.else.985:                                      ; preds = %if.else.978
  %398 = load i32, i32* @zz_size, align 4
  %idxprom986 = sext i32 %398 to i64
  %arrayidx987 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom986
  %399 = load %union.rec*, %union.rec** %arrayidx987, align 8
  store %union.rec* %399, %union.rec** @zz_hold, align 8
  store %union.rec* %399, %union.rec** @zz_hold, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1988 = bitcast %union.rec* %400 to %struct.word_type*
  %olist989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1988, i32 0, i32 0
  %arrayidx990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist989, i32 0, i64 0
  %opred991 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx990, i32 0, i32 0
  %401 = load %union.rec*, %union.rec** %opred991, align 8
  %402 = load i32, i32* @zz_size, align 4
  %idxprom992 = sext i32 %402 to i64
  %arrayidx993 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom992
  store %union.rec* %401, %union.rec** %arrayidx993, align 8
  br label %if.end.994

if.end.994:                                       ; preds = %if.else.985, %if.then.983
  br label %if.end.995

if.end.995:                                       ; preds = %if.end.994, %if.then.976
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1996 = bitcast %union.rec* %403 to %struct.word_type*
  %ou1997 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1996, i32 0, i32 1
  %os11998 = bitcast %union.FIRST_UNION* %ou1997 to %struct.anon*
  %otype999 = getelementptr inbounds %struct.anon, %struct.anon* %os11998, i32 0, i32 0
  store i8 0, i8* %otype999, align 1
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11000 = bitcast %union.rec* %405 to %struct.word_type*
  %olist1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11000, i32 0, i32 0
  %arrayidx1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1001, i32 0, i64 1
  %osucc1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1002, i32 0, i32 1
  store %union.rec* %404, %union.rec** %osucc1003, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11004 = bitcast %union.rec* %406 to %struct.word_type*
  %olist1005 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11004, i32 0, i32 0
  %arrayidx1006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1005, i32 0, i64 1
  %opred1007 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1006, i32 0, i32 0
  store %union.rec* %404, %union.rec** %opred1007, align 8
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11008 = bitcast %union.rec* %407 to %struct.word_type*
  %olist1009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11008, i32 0, i32 0
  %arrayidx1010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1009, i32 0, i64 0
  %osucc1011 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1010, i32 0, i32 1
  store %union.rec* %404, %union.rec** %osucc1011, align 8
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11012 = bitcast %union.rec* %408 to %struct.word_type*
  %olist1013 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11012, i32 0, i32 0
  %arrayidx1014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1013, i32 0, i64 0
  %opred1015 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1014, i32 0, i32 0
  store %union.rec* %404, %union.rec** %opred1015, align 8
  store %union.rec* %404, %union.rec** @xx_link, align 8
  %409 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %409, %union.rec** @zz_res, align 8
  %410 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1016 = bitcast %union.rec* %410 to %struct.head_type*
  %oopt_components1017 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1016, i32 0, i32 8
  %411 = load %union.rec*, %union.rec** %oopt_components1017, align 8
  store %union.rec* %411, %union.rec** @zz_hold, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1018 = icmp eq %union.rec* %412, null
  br i1 %cmp1018, label %cond.true.1020, label %cond.false.1021

cond.true.1020:                                   ; preds = %if.end.995
  %413 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1056

cond.false.1021:                                  ; preds = %if.end.995
  %414 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1022 = icmp eq %union.rec* %414, null
  br i1 %cmp1022, label %cond.true.1024, label %cond.false.1025

cond.true.1024:                                   ; preds = %cond.false.1021
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1054

cond.false.1025:                                  ; preds = %cond.false.1021
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11026 = bitcast %union.rec* %416 to %struct.word_type*
  %olist1027 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11026, i32 0, i32 0
  %arrayidx1028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1027, i32 0, i64 0
  %opred1029 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1028, i32 0, i32 0
  %417 = load %union.rec*, %union.rec** %opred1029, align 8
  store %union.rec* %417, %union.rec** @zz_tmp, align 8
  %418 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11030 = bitcast %union.rec* %418 to %struct.word_type*
  %olist1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11030, i32 0, i32 0
  %arrayidx1032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1031, i32 0, i64 0
  %opred1033 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1032, i32 0, i32 0
  %419 = load %union.rec*, %union.rec** %opred1033, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11034 = bitcast %union.rec* %420 to %struct.word_type*
  %olist1035 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11034, i32 0, i32 0
  %arrayidx1036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1035, i32 0, i64 0
  %opred1037 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1036, i32 0, i32 0
  store %union.rec* %419, %union.rec** %opred1037, align 8
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11038 = bitcast %union.rec* %422 to %struct.word_type*
  %olist1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11038, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1039, i32 0, i64 0
  %opred1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1040, i32 0, i32 0
  %423 = load %union.rec*, %union.rec** %opred1041, align 8
  %os11042 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11042, i32 0, i32 0
  %arrayidx1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1043, i32 0, i64 0
  %osucc1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1044, i32 0, i32 1
  store %union.rec* %421, %union.rec** %osucc1045, align 8
  %424 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11046 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11046, i32 0, i32 0
  %arrayidx1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1047, i32 0, i64 0
  %opred1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1048, i32 0, i32 0
  store %union.rec* %424, %union.rec** %opred1049, align 8
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11050 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11050, i32 0, i32 0
  %arrayidx1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1051, i32 0, i64 0
  %osucc1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1052, i32 0, i32 1
  store %union.rec* %426, %union.rec** %osucc1053, align 8
  br label %cond.end.1054

cond.end.1054:                                    ; preds = %cond.false.1025, %cond.true.1024
  %cond1055 = phi %union.rec* [ %415, %cond.true.1024 ], [ %426, %cond.false.1025 ]
  br label %cond.end.1056

cond.end.1056:                                    ; preds = %cond.end.1054, %cond.true.1020
  %cond1057 = phi %union.rec* [ %413, %cond.true.1020 ], [ %cond1055, %cond.end.1054 ]
  %428 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %428, %union.rec** @zz_res, align 8
  %429 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %429, %union.rec** @zz_hold, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1058 = icmp eq %union.rec* %430, null
  br i1 %cmp1058, label %cond.true.1060, label %cond.false.1061

cond.true.1060:                                   ; preds = %cond.end.1056
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1096

cond.false.1061:                                  ; preds = %cond.end.1056
  %432 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1062 = icmp eq %union.rec* %432, null
  br i1 %cmp1062, label %cond.true.1064, label %cond.false.1065

cond.true.1064:                                   ; preds = %cond.false.1061
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1094

cond.false.1065:                                  ; preds = %cond.false.1061
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11066 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11066, i32 0, i32 0
  %arrayidx1068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1067, i32 0, i64 1
  %opred1069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1068, i32 0, i32 0
  %435 = load %union.rec*, %union.rec** %opred1069, align 8
  store %union.rec* %435, %union.rec** @zz_tmp, align 8
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11070 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11070, i32 0, i32 0
  %arrayidx1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1071, i32 0, i64 1
  %opred1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1072, i32 0, i32 0
  %437 = load %union.rec*, %union.rec** %opred1073, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11074 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11074, i32 0, i32 0
  %arrayidx1076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1075, i32 0, i64 1
  %opred1077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1076, i32 0, i32 0
  store %union.rec* %437, %union.rec** %opred1077, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %440 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11078 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11078, i32 0, i32 0
  %arrayidx1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1079, i32 0, i64 1
  %opred1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1080, i32 0, i32 0
  %441 = load %union.rec*, %union.rec** %opred1081, align 8
  %os11082 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11082, i32 0, i32 0
  %arrayidx1084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1083, i32 0, i64 1
  %osucc1085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1084, i32 0, i32 1
  store %union.rec* %439, %union.rec** %osucc1085, align 8
  %442 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %443 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11086 = bitcast %union.rec* %443 to %struct.word_type*
  %olist1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11086, i32 0, i32 0
  %arrayidx1088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1087, i32 0, i64 1
  %opred1089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1088, i32 0, i32 0
  store %union.rec* %442, %union.rec** %opred1089, align 8
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %445 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11090 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 0
  %arrayidx1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1091, i32 0, i64 1
  %osucc1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1092, i32 0, i32 1
  store %union.rec* %444, %union.rec** %osucc1093, align 8
  br label %cond.end.1094

cond.end.1094:                                    ; preds = %cond.false.1065, %cond.true.1064
  %cond1095 = phi %union.rec* [ %433, %cond.true.1064 ], [ %444, %cond.false.1065 ]
  br label %cond.end.1096

cond.end.1096:                                    ; preds = %cond.end.1094, %cond.true.1060
  %cond1097 = phi %union.rec* [ %431, %cond.true.1060 ], [ %cond1095, %cond.end.1094 ]
  %446 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11098 = bitcast %union.rec* %446 to %struct.word_type*
  %ou21099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11098, i32 0, i32 2
  %os231100 = bitcast %union.SECOND_UNION* %ou21099 to %struct.anon.2*
  %oopt_gazumped = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231100, i32 0, i32 2
  %bf.load1101 = load i16, i16* %oopt_gazumped, align 2
  %bf.clear1102 = and i16 %bf.load1101, -1025
  %bf.set1103 = or i16 %bf.clear1102, 1024
  store i16 %bf.set1103, i16* %oopt_gazumped, align 2
  br label %if.end.1104

if.end.1104:                                      ; preds = %cond.end.1096, %cond.end.235
  %447 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1105 = bitcast %union.rec* %447 to %struct.head_type*
  %oopt_counts = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1105, i32 0, i32 10
  %448 = load %union.rec*, %union.rec** %oopt_counts, align 8
  %cmp1106 = icmp ne %union.rec* %448, null
  br i1 %cmp1106, label %land.lhs.true.1108, label %if.else.1279

land.lhs.true.1108:                               ; preds = %if.end.1104
  %449 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1109 = bitcast %union.rec* %449 to %struct.head_type*
  %oopt_counts1110 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1109, i32 0, i32 10
  %450 = load %union.rec*, %union.rec** %oopt_counts1110, align 8
  %os11111 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11111, i32 0, i32 0
  %arrayidx1113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1112, i32 0, i64 0
  %osucc1114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1113, i32 0, i32 1
  %451 = load %union.rec*, %union.rec** %osucc1114, align 8
  %452 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1115 = bitcast %union.rec* %452 to %struct.head_type*
  %oopt_counts1116 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1115, i32 0, i32 10
  %453 = load %union.rec*, %union.rec** %oopt_counts1116, align 8
  %cmp1117 = icmp ne %union.rec* %451, %453
  br i1 %cmp1117, label %if.then.1119, label %if.else.1279

if.then.1119:                                     ; preds = %land.lhs.true.1108
  %454 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1120 = bitcast %union.rec* %454 to %struct.head_type*
  %oopt_counts1121 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1120, i32 0, i32 10
  %455 = load %union.rec*, %union.rec** %oopt_counts1121, align 8
  %os11122 = bitcast %union.rec* %455 to %struct.word_type*
  %olist1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11122, i32 0, i32 0
  %arrayidx1124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1123, i32 0, i64 0
  %osucc1125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1124, i32 0, i32 1
  %456 = load %union.rec*, %union.rec** %osucc1125, align 8
  %os11126 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1127, i32 0, i64 1
  %opred1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1128, i32 0, i32 0
  %457 = load %union.rec*, %union.rec** %opred1129, align 8
  store %union.rec* %457, %union.rec** %tmp, align 8
  br label %for.cond.1130

for.cond.1130:                                    ; preds = %for.inc.1139, %if.then.1119
  %458 = load %union.rec*, %union.rec** %tmp, align 8
  %os11131 = bitcast %union.rec* %458 to %struct.word_type*
  %ou11132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11131, i32 0, i32 1
  %os111133 = bitcast %union.FIRST_UNION* %ou11132 to %struct.anon*
  %otype1134 = getelementptr inbounds %struct.anon, %struct.anon* %os111133, i32 0, i32 0
  %459 = load i8, i8* %otype1134, align 1
  %conv1135 = zext i8 %459 to i32
  %cmp1136 = icmp eq i32 %conv1135, 0
  br i1 %cmp1136, label %for.body.1138, label %for.end.1144

for.body.1138:                                    ; preds = %for.cond.1130
  br label %for.inc.1139

for.inc.1139:                                     ; preds = %for.body.1138
  %460 = load %union.rec*, %union.rec** %tmp, align 8
  %os11140 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 1
  %opred1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 0
  %461 = load %union.rec*, %union.rec** %opred1143, align 8
  store %union.rec* %461, %union.rec** %tmp, align 8
  br label %for.cond.1130

for.end.1144:                                     ; preds = %for.cond.1130
  %462 = load %union.rec*, %union.rec** %tmp, align 8
  %os11145 = bitcast %union.rec* %462 to %struct.word_type*
  %ou31146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11145, i32 0, i32 3
  %os311147 = bitcast %union.THIRD_UNION* %ou31146 to %struct.anon.6*
  %oback1148 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311147, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1148, i32 0, i64 0
  %463 = load i32, i32* %arrayidx1149, align 4
  %sub = sub nsw i32 %463, 1
  %464 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1150 = bitcast %union.rec* %464 to %struct.head_type*
  %oopt_comps_permitted = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1150, i32 0, i32 15
  %465 = load i32, i32* %oopt_comps_permitted, align 4
  %add = add nsw i32 %465, %sub
  store i32 %add, i32* %oopt_comps_permitted, align 4
  %466 = load %union.rec*, %union.rec** %tmp, align 8
  %os11151 = bitcast %union.rec* %466 to %struct.word_type*
  %olist1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11151, i32 0, i32 0
  %arrayidx1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1152, i32 0, i64 1
  %osucc1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1153, i32 0, i32 1
  %467 = load %union.rec*, %union.rec** %osucc1154, align 8
  store %union.rec* %467, %union.rec** @xx_link, align 8
  %468 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11155 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11155, i32 0, i32 0
  %arrayidx1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1156, i32 0, i64 1
  %osucc1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1157, i32 0, i32 1
  %470 = load %union.rec*, %union.rec** %osucc1158, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1159 = icmp eq %union.rec* %470, %471
  br i1 %cmp1159, label %cond.true.1161, label %cond.false.1162

cond.true.1161:                                   ; preds = %for.end.1144
  br label %cond.end.1191

cond.false.1162:                                  ; preds = %for.end.1144
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11163 = bitcast %union.rec* %472 to %struct.word_type*
  %olist1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11163, i32 0, i32 0
  %arrayidx1165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1164, i32 0, i64 1
  %osucc1166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1165, i32 0, i32 1
  %473 = load %union.rec*, %union.rec** %osucc1166, align 8
  store %union.rec* %473, %union.rec** @zz_res, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11167 = bitcast %union.rec* %474 to %struct.word_type*
  %olist1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11167, i32 0, i32 0
  %arrayidx1169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1168, i32 0, i64 1
  %opred1170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1169, i32 0, i32 0
  %475 = load %union.rec*, %union.rec** %opred1170, align 8
  %476 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11171 = bitcast %union.rec* %476 to %struct.word_type*
  %olist1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11171, i32 0, i32 0
  %arrayidx1173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1172, i32 0, i64 1
  %opred1174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1173, i32 0, i32 0
  store %union.rec* %475, %union.rec** %opred1174, align 8
  %477 = load %union.rec*, %union.rec** @zz_res, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11175 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 0
  %arrayidx1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1176, i32 0, i64 1
  %opred1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1177, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %opred1178, align 8
  %os11179 = bitcast %union.rec* %479 to %struct.word_type*
  %olist1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11179, i32 0, i32 0
  %arrayidx1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1180, i32 0, i64 1
  %osucc1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1181, i32 0, i32 1
  store %union.rec* %477, %union.rec** %osucc1182, align 8
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11183 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 0
  %arrayidx1185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1184, i32 0, i64 1
  %osucc1186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1185, i32 0, i32 1
  store %union.rec* %480, %union.rec** %osucc1186, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11187 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 1
  %opred1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 0
  store %union.rec* %480, %union.rec** %opred1190, align 8
  %483 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1162, %cond.true.1161
  %cond1192 = phi %union.rec* [ null, %cond.true.1161 ], [ %483, %cond.false.1162 ]
  store %union.rec* %cond1192, %union.rec** @xx_tmp, align 8
  %484 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %484, %union.rec** @zz_hold, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11193 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11193, i32 0, i32 0
  %arrayidx1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1194, i32 0, i64 0
  %osucc1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1195, i32 0, i32 1
  %486 = load %union.rec*, %union.rec** %osucc1196, align 8
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1197 = icmp eq %union.rec* %486, %487
  br i1 %cmp1197, label %cond.true.1199, label %cond.false.1200

cond.true.1199:                                   ; preds = %cond.end.1191
  br label %cond.end.1229

cond.false.1200:                                  ; preds = %cond.end.1191
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11201 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11201, i32 0, i32 0
  %arrayidx1203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1202, i32 0, i64 0
  %osucc1204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1203, i32 0, i32 1
  %489 = load %union.rec*, %union.rec** %osucc1204, align 8
  store %union.rec* %489, %union.rec** @zz_res, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11205 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11205, i32 0, i32 0
  %arrayidx1207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1206, i32 0, i64 0
  %opred1208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1207, i32 0, i32 0
  %491 = load %union.rec*, %union.rec** %opred1208, align 8
  %492 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11209 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11209, i32 0, i32 0
  %arrayidx1211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1210, i32 0, i64 0
  %opred1212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1211, i32 0, i32 0
  store %union.rec* %491, %union.rec** %opred1212, align 8
  %493 = load %union.rec*, %union.rec** @zz_res, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11213 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11213, i32 0, i32 0
  %arrayidx1215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1214, i32 0, i64 0
  %opred1216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1215, i32 0, i32 0
  %495 = load %union.rec*, %union.rec** %opred1216, align 8
  %os11217 = bitcast %union.rec* %495 to %struct.word_type*
  %olist1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11217, i32 0, i32 0
  %arrayidx1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1218, i32 0, i64 0
  %osucc1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1219, i32 0, i32 1
  store %union.rec* %493, %union.rec** %osucc1220, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11221 = bitcast %union.rec* %497 to %struct.word_type*
  %olist1222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11221, i32 0, i32 0
  %arrayidx1223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1222, i32 0, i64 0
  %osucc1224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1223, i32 0, i32 1
  store %union.rec* %496, %union.rec** %osucc1224, align 8
  %498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11225 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 0
  %arrayidx1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1226, i32 0, i64 0
  %opred1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1227, i32 0, i32 0
  store %union.rec* %496, %union.rec** %opred1228, align 8
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1229

cond.end.1229:                                    ; preds = %cond.false.1200, %cond.true.1199
  %cond1230 = phi %union.rec* [ null, %cond.true.1199 ], [ %499, %cond.false.1200 ]
  %500 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %500, %union.rec** @zz_hold, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %501, %union.rec** @zz_hold, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11231 = bitcast %union.rec* %502 to %struct.word_type*
  %ou11232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11231, i32 0, i32 1
  %os111233 = bitcast %union.FIRST_UNION* %ou11232 to %struct.anon*
  %otype1234 = getelementptr inbounds %struct.anon, %struct.anon* %os111233, i32 0, i32 0
  %503 = load i8, i8* %otype1234, align 1
  %conv1235 = zext i8 %503 to i32
  %cmp1236 = icmp eq i32 %conv1235, 11
  br i1 %cmp1236, label %cond.true.1246, label %lor.lhs.false.1238

lor.lhs.false.1238:                               ; preds = %cond.end.1229
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11239 = bitcast %union.rec* %504 to %struct.word_type*
  %ou11240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11239, i32 0, i32 1
  %os111241 = bitcast %union.FIRST_UNION* %ou11240 to %struct.anon*
  %otype1242 = getelementptr inbounds %struct.anon, %struct.anon* %os111241, i32 0, i32 0
  %505 = load i8, i8* %otype1242, align 1
  %conv1243 = zext i8 %505 to i32
  %cmp1244 = icmp eq i32 %conv1243, 12
  br i1 %cmp1244, label %cond.true.1246, label %cond.false.1252

cond.true.1246:                                   ; preds = %lor.lhs.false.1238, %cond.end.1229
  %506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11247 = bitcast %union.rec* %506 to %struct.word_type*
  %ou11248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11247, i32 0, i32 1
  %os111249 = bitcast %union.FIRST_UNION* %ou11248 to %struct.anon*
  %orec_size1250 = getelementptr inbounds %struct.anon, %struct.anon* %os111249, i32 0, i32 1
  %507 = load i8, i8* %orec_size1250, align 1
  %conv1251 = zext i8 %507 to i32
  br label %cond.end.1260

cond.false.1252:                                  ; preds = %lor.lhs.false.1238
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11253 = bitcast %union.rec* %508 to %struct.word_type*
  %ou11254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11253, i32 0, i32 1
  %os111255 = bitcast %union.FIRST_UNION* %ou11254 to %struct.anon*
  %otype1256 = getelementptr inbounds %struct.anon, %struct.anon* %os111255, i32 0, i32 0
  %509 = load i8, i8* %otype1256, align 1
  %idxprom1257 = zext i8 %509 to i64
  %arrayidx1258 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1257
  %510 = load i8, i8* %arrayidx1258, align 1
  %conv1259 = zext i8 %510 to i32
  br label %cond.end.1260

cond.end.1260:                                    ; preds = %cond.false.1252, %cond.true.1246
  %cond1261 = phi i32 [ %conv1251, %cond.true.1246 ], [ %conv1259, %cond.false.1252 ]
  store i32 %cond1261, i32* @zz_size, align 4
  %511 = load i32, i32* @zz_size, align 4
  %idxprom1262 = sext i32 %511 to i64
  %arrayidx1263 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1262
  %512 = load %union.rec*, %union.rec** %arrayidx1263, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11264 = bitcast %union.rec* %513 to %struct.word_type*
  %olist1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11264, i32 0, i32 0
  %arrayidx1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1265, i32 0, i64 0
  %opred1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1266, i32 0, i32 0
  store %union.rec* %512, %union.rec** %opred1267, align 8
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %515 = load i32, i32* @zz_size, align 4
  %idxprom1268 = sext i32 %515 to i64
  %arrayidx1269 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1268
  store %union.rec* %514, %union.rec** %arrayidx1269, align 8
  %516 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11270 = bitcast %union.rec* %516 to %struct.word_type*
  %olist1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11270, i32 0, i32 0
  %arrayidx1272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1271, i32 0, i64 1
  %osucc1273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1272, i32 0, i32 1
  %517 = load %union.rec*, %union.rec** %osucc1273, align 8
  %518 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1274 = icmp eq %union.rec* %517, %518
  br i1 %cmp1274, label %if.then.1276, label %if.end.1278

if.then.1276:                                     ; preds = %cond.end.1260
  %519 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1277 = call i32 @DisposeObject(%union.rec* %519)
  br label %if.end.1278

if.end.1278:                                      ; preds = %if.then.1276, %cond.end.1260
  br label %if.end.1282

if.else.1279:                                     ; preds = %land.lhs.true.1108, %if.end.1104
  %520 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1280 = bitcast %union.rec* %520 to %struct.head_type*
  %oopt_comps_permitted1281 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1280, i32 0, i32 15
  store i32 65535, i32* %oopt_comps_permitted1281, align 4
  br label %if.end.1282

if.end.1282:                                      ; preds = %if.else.1279, %if.end.1278
  ret void
}

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @CalculateOptimize(%union.rec* %hd) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %og = alloca %union.rec*, align 8
  %og_par = alloca %union.rec*, align 8
  %para = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %wd = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %last = alloca %union.rec*, align 8
  %count = alloca i32, align 4
  %compcount = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %fnum = alloca i16, align 2
  %write_pos = alloca i32, align 4
  %write_lnum = alloca i32, align 4
  %hyph_used = alloca i32, align 4
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a = bitcast %union.rec* %0 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 8
  %1 = load %union.rec*, %union.rec** %oopt_components, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %opred, align 8
  %3 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1 = bitcast %union.rec* %3 to %struct.head_type*
  %oopt_components2 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1, i32 0, i32 8
  %4 = load %union.rec*, %union.rec** %oopt_components2, align 8
  %cmp = icmp ne %union.rec* %2, %4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a3 = bitcast %union.rec* %6 to %struct.head_type*
  %oopt_components4 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3, i32 0, i32 8
  %7 = load %union.rec*, %union.rec** %oopt_components4, align 8
  %os15 = bitcast %union.rec* %7 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 0
  %opred8 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred8, align 8
  %os19 = bitcast %union.rec* %8 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 1
  %opred12 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred12, align 8
  store %union.rec* %9, %union.rec** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %union.rec*, %union.rec** %last, align 8
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
  %12 = load %union.rec*, %union.rec** %last, align 8
  %os116 = bitcast %union.rec* %12 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %13, %union.rec** %last, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.rec*, %union.rec** %last, align 8
  %os120 = bitcast %union.rec* %14 to %struct.word_type*
  %ou121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 1
  %os1122 = bitcast %union.FIRST_UNION* %ou121 to %struct.anon*
  %otype23 = getelementptr inbounds %struct.anon, %struct.anon* %os1122, i32 0, i32 0
  %15 = load i8, i8* %otype23, align 1
  %conv24 = zext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv24, 1
  br i1 %cmp25, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.end
  %17 = load %union.rec*, %union.rec** %last, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %18, %union.rec** @xx_link, align 8
  %19 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %20 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %osucc36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc36, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp37 = icmp eq %union.rec* %21, %22
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %23 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 1
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc42, align 8
  store %union.rec* %24, %union.rec** @zz_res, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %25 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 1
  %opred46 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred46, align 8
  %27 = load %union.rec*, %union.rec** @zz_res, align 8
  %os147 = bitcast %union.rec* %27 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 1
  %opred50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 0
  store %union.rec* %26, %union.rec** %opred50, align 8
  %28 = load %union.rec*, %union.rec** @zz_res, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os151 = bitcast %union.rec* %29 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 1
  %opred54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred54, align 8
  %os155 = bitcast %union.rec* %30 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 1
  %osucc58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc58, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os159 = bitcast %union.rec* %32 to %struct.word_type*
  %olist60 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist60, i32 0, i64 1
  %osucc62 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx61, i32 0, i32 1
  store %union.rec* %31, %union.rec** %osucc62, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os163 = bitcast %union.rec* %33 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 1
  %opred66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 0
  store %union.rec* %31, %union.rec** %opred66, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %34, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %35 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os167 = bitcast %union.rec* %36 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 0
  %osucc70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc70, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp71 = icmp eq %union.rec* %37, %38
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end
  br label %cond.end.103

cond.false.74:                                    ; preds = %cond.end
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os175 = bitcast %union.rec* %39 to %struct.word_type*
  %olist76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist76, i32 0, i64 0
  %osucc78 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx77, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %osucc78, align 8
  store %union.rec* %40, %union.rec** @zz_res, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os179 = bitcast %union.rec* %41 to %struct.word_type*
  %olist80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist80, i32 0, i64 0
  %opred82 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx81, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred82, align 8
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  %os183 = bitcast %union.rec* %43 to %struct.word_type*
  %olist84 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist84, i32 0, i64 0
  %opred86 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx85, i32 0, i32 0
  store %union.rec* %42, %union.rec** %opred86, align 8
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os187 = bitcast %union.rec* %45 to %struct.word_type*
  %olist88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist88, i32 0, i64 0
  %opred90 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx89, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred90, align 8
  %os191 = bitcast %union.rec* %46 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 0
  %osucc94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 1
  store %union.rec* %44, %union.rec** %osucc94, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %48 to %struct.word_type*
  %olist96 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist96, i32 0, i64 0
  %osucc98 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx97, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc98, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os199 = bitcast %union.rec* %49 to %struct.word_type*
  %olist100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist100, i32 0, i64 0
  %opred102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx101, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred102, align 8
  %50 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.74, %cond.true.73
  %cond104 = phi %union.rec* [ null, %cond.true.73 ], [ %50, %cond.false.74 ]
  %51 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %52, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1105 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 1
  %os11107 = bitcast %union.FIRST_UNION* %ou1106 to %struct.anon*
  %otype108 = getelementptr inbounds %struct.anon, %struct.anon* %os11107, i32 0, i32 0
  %54 = load i8, i8* %otype108, align 1
  %conv109 = zext i8 %54 to i32
  %cmp110 = icmp eq i32 %conv109, 11
  br i1 %cmp110, label %cond.true.119, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.103
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 1
  %os11114 = bitcast %union.FIRST_UNION* %ou1113 to %struct.anon*
  %otype115 = getelementptr inbounds %struct.anon, %struct.anon* %os11114, i32 0, i32 0
  %56 = load i8, i8* %otype115, align 1
  %conv116 = zext i8 %56 to i32
  %cmp117 = icmp eq i32 %conv116, 12
  br i1 %cmp117, label %cond.true.119, label %cond.false.124

cond.true.119:                                    ; preds = %lor.lhs.false, %cond.end.103
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 1
  %os11122 = bitcast %union.FIRST_UNION* %ou1121 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11122, i32 0, i32 1
  %58 = load i8, i8* %orec_size, align 1
  %conv123 = zext i8 %58 to i32
  br label %cond.end.131

cond.false.124:                                   ; preds = %lor.lhs.false
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1125 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 1
  %os11127 = bitcast %union.FIRST_UNION* %ou1126 to %struct.anon*
  %otype128 = getelementptr inbounds %struct.anon, %struct.anon* %os11127, i32 0, i32 0
  %60 = load i8, i8* %otype128, align 1
  %idxprom = zext i8 %60 to i64
  %arrayidx129 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %61 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %61 to i32
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.124, %cond.true.119
  %cond132 = phi i32 [ %conv123, %cond.true.119 ], [ %conv130, %cond.false.124 ]
  store i32 %cond132, i32* @zz_size, align 4
  %62 = load i32, i32* @zz_size, align 4
  %idxprom133 = sext i32 %62 to i64
  %arrayidx134 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom133
  %63 = load %union.rec*, %union.rec** %arrayidx134, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1135 = bitcast %union.rec* %64 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %opred138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 0
  store %union.rec* %63, %union.rec** %opred138, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = load i32, i32* @zz_size, align 4
  %idxprom139 = sext i32 %66 to i64
  %arrayidx140 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom139
  store %union.rec* %65, %union.rec** %arrayidx140, align 8
  %67 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1141 = bitcast %union.rec* %67 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 1
  %osucc144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc144, align 8
  %69 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp145 = icmp eq %union.rec* %68, %69
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %cond.end.131
  %70 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call148 = call i32 @DisposeObject(%union.rec* %70)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %cond.end.131
  %71 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a150 = bitcast %union.rec* %71 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a150, i32 0, i32 9
  %72 = load %union.rec*, %union.rec** %oopt_constraints, align 8
  %cmp151 = icmp ne %union.rec* %72, null
  br i1 %cmp151, label %if.end.155, label %if.then.153

if.then.153:                                      ; preds = %if.end.149
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call154 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.end.149
  %74 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a156 = bitcast %union.rec* %74 to %struct.head_type*
  %oopt_constraints157 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a156, i32 0, i32 9
  %75 = load %union.rec*, %union.rec** %oopt_constraints157, align 8
  %os1158 = bitcast %union.rec* %75 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 0
  %osucc161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %osucc161, align 8
  %77 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a162 = bitcast %union.rec* %77 to %struct.head_type*
  %oopt_constraints163 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a162, i32 0, i32 9
  %78 = load %union.rec*, %union.rec** %oopt_constraints163, align 8
  %cmp164 = icmp ne %union.rec* %76, %78
  br i1 %cmp164, label %if.end.168, label %if.then.166

if.then.166:                                      ; preds = %if.end.155
  %79 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call167 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %if.end.155
  %80 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a169 = bitcast %union.rec* %80 to %struct.head_type*
  %oopt_constraints170 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a169, i32 0, i32 9
  %81 = load %union.rec*, %union.rec** %oopt_constraints170, align 8
  %os1171 = bitcast %union.rec* %81 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred174, align 8
  %os1175 = bitcast %union.rec* %82 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 1
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred178, align 8
  store %union.rec* %83, %union.rec** %y, align 8
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.188, %if.end.168
  %84 = load %union.rec*, %union.rec** %y, align 8
  %os1180 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 1
  %os11182 = bitcast %union.FIRST_UNION* %ou1181 to %struct.anon*
  %otype183 = getelementptr inbounds %struct.anon, %struct.anon* %os11182, i32 0, i32 0
  %85 = load i8, i8* %otype183, align 1
  %conv184 = zext i8 %85 to i32
  %cmp185 = icmp eq i32 %conv184, 0
  br i1 %cmp185, label %for.body.187, label %for.end.193

for.body.187:                                     ; preds = %for.cond.179
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.187
  %86 = load %union.rec*, %union.rec** %y, align 8
  %os1189 = bitcast %union.rec* %86 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 1
  %opred192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred192, align 8
  store %union.rec* %87, %union.rec** %y, align 8
  br label %for.cond.179

for.end.193:                                      ; preds = %for.cond.179
  call void @EnterErrorBlock(i32 0)
  %88 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a194 = bitcast %union.rec* %88 to %struct.head_type*
  %oopt_components195 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a194, i32 0, i32 8
  %89 = load %union.rec*, %union.rec** %oopt_components195, align 8
  %90 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %90 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %91 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a196 = bitcast %union.rec* %91 to %struct.head_type*
  %oopt_constraints197 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a196, i32 0, i32 9
  %92 = load %union.rec*, %union.rec** %oopt_constraints197, align 8
  %call198 = call %union.rec* @FillObject(%union.rec* %89, %struct.CONSTRAINT* %oconstraint, %union.rec* %92, i32 0, i32 0, i32 1, i32* %hyph_used)
  %93 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a199 = bitcast %union.rec* %93 to %struct.head_type*
  %oopt_components200 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a199, i32 0, i32 8
  store %union.rec* %call198, %union.rec** %oopt_components200, align 8
  call void @LeaveErrorBlock(i32 0)
  %94 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a201 = bitcast %union.rec* %94 to %struct.head_type*
  %oopt_components202 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a201, i32 0, i32 8
  %95 = load %union.rec*, %union.rec** %oopt_components202, align 8
  %os1203 = bitcast %union.rec* %95 to %struct.word_type*
  %ou1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 1
  %os11205 = bitcast %union.FIRST_UNION* %ou1204 to %struct.anon*
  %otype206 = getelementptr inbounds %struct.anon, %struct.anon* %os11205, i32 0, i32 0
  %96 = load i8, i8* %otype206, align 1
  %conv207 = zext i8 %96 to i32
  %cmp208 = icmp ne i32 %conv207, 19
  br i1 %cmp208, label %if.then.225, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %for.end.193
  %97 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a211 = bitcast %union.rec* %97 to %struct.head_type*
  %oopt_components212 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a211, i32 0, i32 8
  %98 = load %union.rec*, %union.rec** %oopt_components212, align 8
  %os1213 = bitcast %union.rec* %98 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 0
  %osucc216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 1
  %99 = load %union.rec*, %union.rec** %osucc216, align 8
  %100 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a217 = bitcast %union.rec* %100 to %struct.head_type*
  %oopt_components218 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a217, i32 0, i32 8
  %101 = load %union.rec*, %union.rec** %oopt_components218, align 8
  %os1219 = bitcast %union.rec* %101 to %struct.word_type*
  %olist220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1219, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist220, i32 0, i64 0
  %opred222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx221, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred222, align 8
  %cmp223 = icmp eq %union.rec* %99, %102
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %lor.lhs.false.210, %for.end.193
  br label %if.end.1238

if.end.226:                                       ; preds = %lor.lhs.false.210
  %103 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv227 = zext i8 %103 to i32
  store i32 %conv227, i32* @zz_size, align 4
  %conv228 = sext i32 %conv227 to i64
  %cmp229 = icmp uge i64 %conv228, 265
  br i1 %cmp229, label %if.then.231, label %if.else

if.then.231:                                      ; preds = %if.end.226
  %104 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call232 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %104)
  br label %if.end.249

if.else:                                          ; preds = %if.end.226
  %105 = load i32, i32* @zz_size, align 4
  %idxprom233 = sext i32 %105 to i64
  %arrayidx234 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom233
  %106 = load %union.rec*, %union.rec** %arrayidx234, align 8
  %cmp235 = icmp eq %union.rec* %106, null
  br i1 %cmp235, label %if.then.237, label %if.else.239

if.then.237:                                      ; preds = %if.else
  %107 = load i32, i32* @zz_size, align 4
  %108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call238 = call %union.rec* @GetMemory(i32 %107, %struct.FILE_POS* %108)
  store %union.rec* %call238, %union.rec** @zz_hold, align 8
  br label %if.end.248

if.else.239:                                      ; preds = %if.else
  %109 = load i32, i32* @zz_size, align 4
  %idxprom240 = sext i32 %109 to i64
  %arrayidx241 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom240
  %110 = load %union.rec*, %union.rec** %arrayidx241, align 8
  store %union.rec* %110, %union.rec** @zz_hold, align 8
  store %union.rec* %110, %union.rec** @zz_hold, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1242 = bitcast %union.rec* %111 to %struct.word_type*
  %olist243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist243, i32 0, i64 0
  %opred245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx244, i32 0, i32 0
  %112 = load %union.rec*, %union.rec** %opred245, align 8
  %113 = load i32, i32* @zz_size, align 4
  %idxprom246 = sext i32 %113 to i64
  %arrayidx247 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom246
  store %union.rec* %112, %union.rec** %arrayidx247, align 8
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.239, %if.then.237
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.231
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1250 = bitcast %union.rec* %114 to %struct.word_type*
  %ou1251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 1
  %os11252 = bitcast %union.FIRST_UNION* %ou1251 to %struct.anon*
  %otype253 = getelementptr inbounds %struct.anon, %struct.anon* %os11252, i32 0, i32 0
  store i8 2, i8* %otype253, align 1
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1254 = bitcast %union.rec* %116 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 1
  %osucc257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 1
  store %union.rec* %115, %union.rec** %osucc257, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1258 = bitcast %union.rec* %117 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 1
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  store %union.rec* %115, %union.rec** %opred261, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1262 = bitcast %union.rec* %118 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 0
  %osucc265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 1
  store %union.rec* %115, %union.rec** %osucc265, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1266 = bitcast %union.rec* %119 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 0
  %opred269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 0
  store %union.rec* %115, %union.rec** %opred269, align 8
  store %union.rec* %115, %union.rec** %og, align 8
  %120 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %121 = load %union.rec*, %union.rec** %og, align 8
  %os2270 = bitcast %union.rec* %121 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2270, i32 0, i32 5
  store %union.rec* %120, %union.rec** %oactual, align 8
  %122 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1271 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1272 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %123 = load i16, i16* %ofile_num, align 2
  %124 = load %union.rec*, %union.rec** %og, align 8
  %os1273 = bitcast %union.rec* %124 to %struct.word_type*
  %ou1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 1
  %ofpos275 = bitcast %union.FIRST_UNION* %ou1274 to %struct.FILE_POS*
  %ofile_num276 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos275, i32 0, i32 2
  store i16 %123, i16* %ofile_num276, align 2
  %125 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1277 = bitcast %union.rec* %125 to %struct.word_type*
  %ou1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 1
  %ofpos279 = bitcast %union.FIRST_UNION* %ou1278 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos279, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %126 = load %union.rec*, %union.rec** %og, align 8
  %os1280 = bitcast %union.rec* %126 to %struct.word_type*
  %ou1281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 1
  %ofpos282 = bitcast %union.FIRST_UNION* %ou1281 to %struct.FILE_POS*
  %oline_num283 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos282, i32 0, i32 3
  %bf.load284 = load i32, i32* %oline_num283, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear285 = and i32 %bf.load284, -1048576
  %bf.set = or i32 %bf.clear285, %bf.value
  store i32 %bf.set, i32* %oline_num283, align 4
  %127 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1286 = bitcast %union.rec* %127 to %struct.word_type*
  %ou1287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1286, i32 0, i32 1
  %ofpos288 = bitcast %union.FIRST_UNION* %ou1287 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos288, i32 0, i32 3
  %bf.load289 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load289, 20
  %128 = load %union.rec*, %union.rec** %og, align 8
  %os1290 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1290, i32 0, i32 1
  %ofpos292 = bitcast %union.FIRST_UNION* %ou1291 to %struct.FILE_POS*
  %ocol_num293 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos292, i32 0, i32 3
  %bf.load294 = load i32, i32* %ocol_num293, align 4
  %bf.value295 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value295, 20
  %bf.clear296 = and i32 %bf.load294, 1048575
  %bf.set297 = or i32 %bf.clear296, %bf.shl
  store i32 %bf.set297, i32* %ocol_num293, align 4
  %129 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv298 = zext i8 %129 to i32
  store i32 %conv298, i32* @zz_size, align 4
  %conv299 = sext i32 %conv298 to i64
  %cmp300 = icmp uge i64 %conv299, 265
  br i1 %cmp300, label %if.then.302, label %if.else.304

if.then.302:                                      ; preds = %if.end.249
  %130 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call303 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %130)
  br label %if.end.321

if.else.304:                                      ; preds = %if.end.249
  %131 = load i32, i32* @zz_size, align 4
  %idxprom305 = sext i32 %131 to i64
  %arrayidx306 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom305
  %132 = load %union.rec*, %union.rec** %arrayidx306, align 8
  %cmp307 = icmp eq %union.rec* %132, null
  br i1 %cmp307, label %if.then.309, label %if.else.311

if.then.309:                                      ; preds = %if.else.304
  %133 = load i32, i32* @zz_size, align 4
  %134 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call310 = call %union.rec* @GetMemory(i32 %133, %struct.FILE_POS* %134)
  store %union.rec* %call310, %union.rec** @zz_hold, align 8
  br label %if.end.320

if.else.311:                                      ; preds = %if.else.304
  %135 = load i32, i32* @zz_size, align 4
  %idxprom312 = sext i32 %135 to i64
  %arrayidx313 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom312
  %136 = load %union.rec*, %union.rec** %arrayidx313, align 8
  store %union.rec* %136, %union.rec** @zz_hold, align 8
  store %union.rec* %136, %union.rec** @zz_hold, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1314 = bitcast %union.rec* %137 to %struct.word_type*
  %olist315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1314, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist315, i32 0, i64 0
  %opred317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx316, i32 0, i32 0
  %138 = load %union.rec*, %union.rec** %opred317, align 8
  %139 = load i32, i32* @zz_size, align 4
  %idxprom318 = sext i32 %139 to i64
  %arrayidx319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom318
  store %union.rec* %138, %union.rec** %arrayidx319, align 8
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.311, %if.then.309
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.302
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1322 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1322, i32 0, i32 1
  %os11324 = bitcast %union.FIRST_UNION* %ou1323 to %struct.anon*
  %otype325 = getelementptr inbounds %struct.anon, %struct.anon* %os11324, i32 0, i32 0
  store i8 10, i8* %otype325, align 1
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1326 = bitcast %union.rec* %142 to %struct.word_type*
  %olist327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1326, i32 0, i32 0
  %arrayidx328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist327, i32 0, i64 1
  %osucc329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx328, i32 0, i32 1
  store %union.rec* %141, %union.rec** %osucc329, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1330 = bitcast %union.rec* %143 to %struct.word_type*
  %olist331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist331, i32 0, i64 1
  %opred333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx332, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred333, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1334 = bitcast %union.rec* %144 to %struct.word_type*
  %olist335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1334, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist335, i32 0, i64 0
  %osucc337 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx336, i32 0, i32 1
  store %union.rec* %141, %union.rec** %osucc337, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1338 = bitcast %union.rec* %145 to %struct.word_type*
  %olist339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist339, i32 0, i64 0
  %opred341 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx340, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred341, align 8
  store %union.rec* %141, %union.rec** %og_par, align 8
  %146 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %call342 = call %union.rec* @ChildSym(%union.rec* %146, i32 146)
  %147 = load %union.rec*, %union.rec** %og_par, align 8
  %os2343 = bitcast %union.rec* %147 to %struct.closure_type*
  %oactual344 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2343, i32 0, i32 5
  store %union.rec* %call342, %union.rec** %oactual344, align 8
  %148 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv345 = zext i8 %148 to i32
  store i32 %conv345, i32* @zz_size, align 4
  %conv346 = sext i32 %conv345 to i64
  %cmp347 = icmp uge i64 %conv346, 265
  br i1 %cmp347, label %if.then.349, label %if.else.351

if.then.349:                                      ; preds = %if.end.321
  %149 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call350 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %149)
  br label %if.end.368

if.else.351:                                      ; preds = %if.end.321
  %150 = load i32, i32* @zz_size, align 4
  %idxprom352 = sext i32 %150 to i64
  %arrayidx353 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom352
  %151 = load %union.rec*, %union.rec** %arrayidx353, align 8
  %cmp354 = icmp eq %union.rec* %151, null
  br i1 %cmp354, label %if.then.356, label %if.else.358

if.then.356:                                      ; preds = %if.else.351
  %152 = load i32, i32* @zz_size, align 4
  %153 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call357 = call %union.rec* @GetMemory(i32 %152, %struct.FILE_POS* %153)
  store %union.rec* %call357, %union.rec** @zz_hold, align 8
  br label %if.end.367

if.else.358:                                      ; preds = %if.else.351
  %154 = load i32, i32* @zz_size, align 4
  %idxprom359 = sext i32 %154 to i64
  %arrayidx360 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom359
  %155 = load %union.rec*, %union.rec** %arrayidx360, align 8
  store %union.rec* %155, %union.rec** @zz_hold, align 8
  store %union.rec* %155, %union.rec** @zz_hold, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1361 = bitcast %union.rec* %156 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 0
  %opred364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred364, align 8
  %158 = load i32, i32* @zz_size, align 4
  %idxprom365 = sext i32 %158 to i64
  %arrayidx366 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom365
  store %union.rec* %157, %union.rec** %arrayidx366, align 8
  br label %if.end.367

if.end.367:                                       ; preds = %if.else.358, %if.then.356
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.then.349
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1369 = bitcast %union.rec* %159 to %struct.word_type*
  %ou1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 1
  %os11371 = bitcast %union.FIRST_UNION* %ou1370 to %struct.anon*
  %otype372 = getelementptr inbounds %struct.anon, %struct.anon* %os11371, i32 0, i32 0
  store i8 0, i8* %otype372, align 1
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1373 = bitcast %union.rec* %161 to %struct.word_type*
  %olist374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1373, i32 0, i32 0
  %arrayidx375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist374, i32 0, i64 1
  %osucc376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx375, i32 0, i32 1
  store %union.rec* %160, %union.rec** %osucc376, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1377 = bitcast %union.rec* %162 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 1
  %opred380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 0
  store %union.rec* %160, %union.rec** %opred380, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1381 = bitcast %union.rec* %163 to %struct.word_type*
  %olist382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist382, i32 0, i64 0
  %osucc384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx383, i32 0, i32 1
  store %union.rec* %160, %union.rec** %osucc384, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1385 = bitcast %union.rec* %164 to %struct.word_type*
  %olist386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1385, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist386, i32 0, i64 0
  %opred388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx387, i32 0, i32 0
  store %union.rec* %160, %union.rec** %opred388, align 8
  store %union.rec* %160, %union.rec** @xx_link, align 8
  %165 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %165, %union.rec** @zz_res, align 8
  %166 = load %union.rec*, %union.rec** %og, align 8
  store %union.rec* %166, %union.rec** @zz_hold, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp389 = icmp eq %union.rec* %167, null
  br i1 %cmp389, label %cond.true.391, label %cond.false.392

cond.true.391:                                    ; preds = %if.end.368
  %168 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.427

cond.false.392:                                   ; preds = %if.end.368
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp393 = icmp eq %union.rec* %169, null
  br i1 %cmp393, label %cond.true.395, label %cond.false.396

cond.true.395:                                    ; preds = %cond.false.392
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.425

cond.false.396:                                   ; preds = %cond.false.392
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1397 = bitcast %union.rec* %171 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 0
  %opred400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 0
  %172 = load %union.rec*, %union.rec** %opred400, align 8
  store %union.rec* %172, %union.rec** @zz_tmp, align 8
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1401 = bitcast %union.rec* %173 to %struct.word_type*
  %olist402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1401, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist402, i32 0, i64 0
  %opred404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx403, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %opred404, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1405 = bitcast %union.rec* %175 to %struct.word_type*
  %olist406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1405, i32 0, i32 0
  %arrayidx407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist406, i32 0, i64 0
  %opred408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx407, i32 0, i32 0
  store %union.rec* %174, %union.rec** %opred408, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1409 = bitcast %union.rec* %177 to %struct.word_type*
  %olist410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1409, i32 0, i32 0
  %arrayidx411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist410, i32 0, i64 0
  %opred412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx411, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %opred412, align 8
  %os1413 = bitcast %union.rec* %178 to %struct.word_type*
  %olist414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1413, i32 0, i32 0
  %arrayidx415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist414, i32 0, i64 0
  %osucc416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx415, i32 0, i32 1
  store %union.rec* %176, %union.rec** %osucc416, align 8
  %179 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %180 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1417 = bitcast %union.rec* %180 to %struct.word_type*
  %olist418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1417, i32 0, i32 0
  %arrayidx419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist418, i32 0, i64 0
  %opred420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx419, i32 0, i32 0
  store %union.rec* %179, %union.rec** %opred420, align 8
  %181 = load %union.rec*, %union.rec** @zz_res, align 8
  %182 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1421 = bitcast %union.rec* %182 to %struct.word_type*
  %olist422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1421, i32 0, i32 0
  %arrayidx423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist422, i32 0, i64 0
  %osucc424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx423, i32 0, i32 1
  store %union.rec* %181, %union.rec** %osucc424, align 8
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.396, %cond.true.395
  %cond426 = phi %union.rec* [ %170, %cond.true.395 ], [ %181, %cond.false.396 ]
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.end.425, %cond.true.391
  %cond428 = phi %union.rec* [ %168, %cond.true.391 ], [ %cond426, %cond.end.425 ]
  %183 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %183, %union.rec** @zz_res, align 8
  %184 = load %union.rec*, %union.rec** %og_par, align 8
  store %union.rec* %184, %union.rec** @zz_hold, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp429 = icmp eq %union.rec* %185, null
  br i1 %cmp429, label %cond.true.431, label %cond.false.432

cond.true.431:                                    ; preds = %cond.end.427
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.467

cond.false.432:                                   ; preds = %cond.end.427
  %187 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp433 = icmp eq %union.rec* %187, null
  br i1 %cmp433, label %cond.true.435, label %cond.false.436

cond.true.435:                                    ; preds = %cond.false.432
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.465

cond.false.436:                                   ; preds = %cond.false.432
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1437 = bitcast %union.rec* %189 to %struct.word_type*
  %olist438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1437, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist438, i32 0, i64 1
  %opred440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx439, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %opred440, align 8
  store %union.rec* %190, %union.rec** @zz_tmp, align 8
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1441 = bitcast %union.rec* %191 to %struct.word_type*
  %olist442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1441, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist442, i32 0, i64 1
  %opred444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx443, i32 0, i32 0
  %192 = load %union.rec*, %union.rec** %opred444, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1445 = bitcast %union.rec* %193 to %struct.word_type*
  %olist446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 0
  %arrayidx447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist446, i32 0, i64 1
  %opred448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx447, i32 0, i32 0
  store %union.rec* %192, %union.rec** %opred448, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1449 = bitcast %union.rec* %195 to %struct.word_type*
  %olist450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist450, i32 0, i64 1
  %opred452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx451, i32 0, i32 0
  %196 = load %union.rec*, %union.rec** %opred452, align 8
  %os1453 = bitcast %union.rec* %196 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 1
  %osucc456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 1
  store %union.rec* %194, %union.rec** %osucc456, align 8
  %197 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %198 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1457 = bitcast %union.rec* %198 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 1
  %opred460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 0
  store %union.rec* %197, %union.rec** %opred460, align 8
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  %200 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1461 = bitcast %union.rec* %200 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 1
  %osucc464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 1
  store %union.rec* %199, %union.rec** %osucc464, align 8
  br label %cond.end.465

cond.end.465:                                     ; preds = %cond.false.436, %cond.true.435
  %cond466 = phi %union.rec* [ %188, %cond.true.435 ], [ %199, %cond.false.436 ]
  br label %cond.end.467

cond.end.467:                                     ; preds = %cond.end.465, %cond.true.431
  %cond468 = phi %union.rec* [ %186, %cond.true.431 ], [ %cond466, %cond.end.465 ]
  %201 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv469 = zext i8 %201 to i32
  store i32 %conv469, i32* @zz_size, align 4
  %conv470 = sext i32 %conv469 to i64
  %cmp471 = icmp uge i64 %conv470, 265
  br i1 %cmp471, label %if.then.473, label %if.else.475

if.then.473:                                      ; preds = %cond.end.467
  %202 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call474 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %202)
  br label %if.end.492

if.else.475:                                      ; preds = %cond.end.467
  %203 = load i32, i32* @zz_size, align 4
  %idxprom476 = sext i32 %203 to i64
  %arrayidx477 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom476
  %204 = load %union.rec*, %union.rec** %arrayidx477, align 8
  %cmp478 = icmp eq %union.rec* %204, null
  br i1 %cmp478, label %if.then.480, label %if.else.482

if.then.480:                                      ; preds = %if.else.475
  %205 = load i32, i32* @zz_size, align 4
  %206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call481 = call %union.rec* @GetMemory(i32 %205, %struct.FILE_POS* %206)
  store %union.rec* %call481, %union.rec** @zz_hold, align 8
  br label %if.end.491

if.else.482:                                      ; preds = %if.else.475
  %207 = load i32, i32* @zz_size, align 4
  %idxprom483 = sext i32 %207 to i64
  %arrayidx484 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom483
  %208 = load %union.rec*, %union.rec** %arrayidx484, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1485 = bitcast %union.rec* %209 to %struct.word_type*
  %olist486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1485, i32 0, i32 0
  %arrayidx487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist486, i32 0, i64 0
  %opred488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx487, i32 0, i32 0
  %210 = load %union.rec*, %union.rec** %opred488, align 8
  %211 = load i32, i32* @zz_size, align 4
  %idxprom489 = sext i32 %211 to i64
  %arrayidx490 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom489
  store %union.rec* %210, %union.rec** %arrayidx490, align 8
  br label %if.end.491

if.end.491:                                       ; preds = %if.else.482, %if.then.480
  br label %if.end.492

if.end.492:                                       ; preds = %if.end.491, %if.then.473
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1493 = bitcast %union.rec* %212 to %struct.word_type*
  %ou1494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1493, i32 0, i32 1
  %os11495 = bitcast %union.FIRST_UNION* %ou1494 to %struct.anon*
  %otype496 = getelementptr inbounds %struct.anon, %struct.anon* %os11495, i32 0, i32 0
  store i8 17, i8* %otype496, align 1
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1497 = bitcast %union.rec* %214 to %struct.word_type*
  %olist498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1497, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist498, i32 0, i64 1
  %osucc500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx499, i32 0, i32 1
  store %union.rec* %213, %union.rec** %osucc500, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1501 = bitcast %union.rec* %215 to %struct.word_type*
  %olist502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1501, i32 0, i32 0
  %arrayidx503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist502, i32 0, i64 1
  %opred504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx503, i32 0, i32 0
  store %union.rec* %213, %union.rec** %opred504, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1505 = bitcast %union.rec* %216 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 0
  %osucc508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 1
  store %union.rec* %213, %union.rec** %osucc508, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1509 = bitcast %union.rec* %217 to %struct.word_type*
  %olist510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 0
  %arrayidx511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist510, i32 0, i64 0
  %opred512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx511, i32 0, i32 0
  store %union.rec* %213, %union.rec** %opred512, align 8
  store %union.rec* %213, %union.rec** %para, align 8
  %218 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv513 = zext i8 %218 to i32
  store i32 %conv513, i32* @zz_size, align 4
  %conv514 = sext i32 %conv513 to i64
  %cmp515 = icmp uge i64 %conv514, 265
  br i1 %cmp515, label %if.then.517, label %if.else.519

if.then.517:                                      ; preds = %if.end.492
  %219 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call518 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %219)
  br label %if.end.536

if.else.519:                                      ; preds = %if.end.492
  %220 = load i32, i32* @zz_size, align 4
  %idxprom520 = sext i32 %220 to i64
  %arrayidx521 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom520
  %221 = load %union.rec*, %union.rec** %arrayidx521, align 8
  %cmp522 = icmp eq %union.rec* %221, null
  br i1 %cmp522, label %if.then.524, label %if.else.526

if.then.524:                                      ; preds = %if.else.519
  %222 = load i32, i32* @zz_size, align 4
  %223 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call525 = call %union.rec* @GetMemory(i32 %222, %struct.FILE_POS* %223)
  store %union.rec* %call525, %union.rec** @zz_hold, align 8
  br label %if.end.535

if.else.526:                                      ; preds = %if.else.519
  %224 = load i32, i32* @zz_size, align 4
  %idxprom527 = sext i32 %224 to i64
  %arrayidx528 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom527
  %225 = load %union.rec*, %union.rec** %arrayidx528, align 8
  store %union.rec* %225, %union.rec** @zz_hold, align 8
  store %union.rec* %225, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1529 = bitcast %union.rec* %226 to %struct.word_type*
  %olist530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1529, i32 0, i32 0
  %arrayidx531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist530, i32 0, i64 0
  %opred532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx531, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %opred532, align 8
  %228 = load i32, i32* @zz_size, align 4
  %idxprom533 = sext i32 %228 to i64
  %arrayidx534 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom533
  store %union.rec* %227, %union.rec** %arrayidx534, align 8
  br label %if.end.535

if.end.535:                                       ; preds = %if.else.526, %if.then.524
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.then.517
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1537 = bitcast %union.rec* %229 to %struct.word_type*
  %ou1538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1537, i32 0, i32 1
  %os11539 = bitcast %union.FIRST_UNION* %ou1538 to %struct.anon*
  %otype540 = getelementptr inbounds %struct.anon, %struct.anon* %os11539, i32 0, i32 0
  store i8 0, i8* %otype540, align 1
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1541 = bitcast %union.rec* %231 to %struct.word_type*
  %olist542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1541, i32 0, i32 0
  %arrayidx543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist542, i32 0, i64 1
  %osucc544 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx543, i32 0, i32 1
  store %union.rec* %230, %union.rec** %osucc544, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1545 = bitcast %union.rec* %232 to %struct.word_type*
  %olist546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist546, i32 0, i64 1
  %opred548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx547, i32 0, i32 0
  store %union.rec* %230, %union.rec** %opred548, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1549 = bitcast %union.rec* %233 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %osucc552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 1
  store %union.rec* %230, %union.rec** %osucc552, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1553 = bitcast %union.rec* %234 to %struct.word_type*
  %olist554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1553, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist554, i32 0, i64 0
  %opred556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx555, i32 0, i32 0
  store %union.rec* %230, %union.rec** %opred556, align 8
  store %union.rec* %230, %union.rec** @xx_link, align 8
  %235 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %235, %union.rec** @zz_res, align 8
  %236 = load %union.rec*, %union.rec** %og_par, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp557 = icmp eq %union.rec* %237, null
  br i1 %cmp557, label %cond.true.559, label %cond.false.560

cond.true.559:                                    ; preds = %if.end.536
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.595

cond.false.560:                                   ; preds = %if.end.536
  %239 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp561 = icmp eq %union.rec* %239, null
  br i1 %cmp561, label %cond.true.563, label %cond.false.564

cond.true.563:                                    ; preds = %cond.false.560
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.593

cond.false.564:                                   ; preds = %cond.false.560
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %241 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 0
  %opred568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %opred568, align 8
  store %union.rec* %242, %union.rec** @zz_tmp, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1569 = bitcast %union.rec* %243 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 0
  %opred572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %opred572, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %245 to %struct.word_type*
  %olist574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist574, i32 0, i64 0
  %opred576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx575, i32 0, i32 0
  store %union.rec* %244, %union.rec** %opred576, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1577 = bitcast %union.rec* %247 to %struct.word_type*
  %olist578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist578, i32 0, i64 0
  %opred580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx579, i32 0, i32 0
  %248 = load %union.rec*, %union.rec** %opred580, align 8
  %os1581 = bitcast %union.rec* %248 to %struct.word_type*
  %olist582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist582, i32 0, i64 0
  %osucc584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx583, i32 0, i32 1
  store %union.rec* %246, %union.rec** %osucc584, align 8
  %249 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %250 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1585 = bitcast %union.rec* %250 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 0
  %opred588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 0
  store %union.rec* %249, %union.rec** %opred588, align 8
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %252 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1589 = bitcast %union.rec* %252 to %struct.word_type*
  %olist590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 0
  %arrayidx591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist590, i32 0, i64 0
  %osucc592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx591, i32 0, i32 1
  store %union.rec* %251, %union.rec** %osucc592, align 8
  br label %cond.end.593

cond.end.593:                                     ; preds = %cond.false.564, %cond.true.563
  %cond594 = phi %union.rec* [ %240, %cond.true.563 ], [ %251, %cond.false.564 ]
  br label %cond.end.595

cond.end.595:                                     ; preds = %cond.end.593, %cond.true.559
  %cond596 = phi %union.rec* [ %238, %cond.true.559 ], [ %cond594, %cond.end.593 ]
  %253 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %253, %union.rec** @zz_res, align 8
  %254 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %254, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp597 = icmp eq %union.rec* %255, null
  br i1 %cmp597, label %cond.true.599, label %cond.false.600

cond.true.599:                                    ; preds = %cond.end.595
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.635

cond.false.600:                                   ; preds = %cond.end.595
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp601 = icmp eq %union.rec* %257, null
  br i1 %cmp601, label %cond.true.603, label %cond.false.604

cond.true.603:                                    ; preds = %cond.false.600
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.633

cond.false.604:                                   ; preds = %cond.false.600
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1605 = bitcast %union.rec* %259 to %struct.word_type*
  %olist606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1605, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist606, i32 0, i64 1
  %opred608 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx607, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred608, align 8
  store %union.rec* %260, %union.rec** @zz_tmp, align 8
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1609 = bitcast %union.rec* %261 to %struct.word_type*
  %olist610 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1609, i32 0, i32 0
  %arrayidx611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist610, i32 0, i64 1
  %opred612 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx611, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %opred612, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1613 = bitcast %union.rec* %263 to %struct.word_type*
  %olist614 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1613, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist614, i32 0, i64 1
  %opred616 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx615, i32 0, i32 0
  store %union.rec* %262, %union.rec** %opred616, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1617 = bitcast %union.rec* %265 to %struct.word_type*
  %olist618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1617, i32 0, i32 0
  %arrayidx619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist618, i32 0, i64 1
  %opred620 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx619, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %opred620, align 8
  %os1621 = bitcast %union.rec* %266 to %struct.word_type*
  %olist622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1621, i32 0, i32 0
  %arrayidx623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist622, i32 0, i64 1
  %osucc624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx623, i32 0, i32 1
  store %union.rec* %264, %union.rec** %osucc624, align 8
  %267 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1625 = bitcast %union.rec* %268 to %struct.word_type*
  %olist626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1625, i32 0, i32 0
  %arrayidx627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist626, i32 0, i64 1
  %opred628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx627, i32 0, i32 0
  store %union.rec* %267, %union.rec** %opred628, align 8
  %269 = load %union.rec*, %union.rec** @zz_res, align 8
  %270 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1629 = bitcast %union.rec* %270 to %struct.word_type*
  %olist630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 0
  %arrayidx631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist630, i32 0, i64 1
  %osucc632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx631, i32 0, i32 1
  store %union.rec* %269, %union.rec** %osucc632, align 8
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.604, %cond.true.603
  %cond634 = phi %union.rec* [ %258, %cond.true.603 ], [ %269, %cond.false.604 ]
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.end.633, %cond.true.599
  %cond636 = phi %union.rec* [ %256, %cond.true.599 ], [ %cond634, %cond.end.633 ]
  %271 = load i32, i32* %hyph_used, align 4
  %tobool = icmp ne i32 %271, 0
  br i1 %tobool, label %if.then.637, label %if.end.766

if.then.637:                                      ; preds = %cond.end.635
  %272 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1638 = bitcast %union.rec* %272 to %struct.word_type*
  %ou1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1638, i32 0, i32 1
  %ofpos640 = bitcast %union.FIRST_UNION* %ou1639 to %struct.FILE_POS*
  %call641 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct.FILE_POS* %ofpos640)
  store %union.rec* %call641, %union.rec** %wd, align 8
  %273 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv642 = zext i8 %273 to i32
  store i32 %conv642, i32* @zz_size, align 4
  %conv643 = sext i32 %conv642 to i64
  %cmp644 = icmp uge i64 %conv643, 265
  br i1 %cmp644, label %if.then.646, label %if.else.648

if.then.646:                                      ; preds = %if.then.637
  %274 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call647 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %274)
  br label %if.end.665

if.else.648:                                      ; preds = %if.then.637
  %275 = load i32, i32* @zz_size, align 4
  %idxprom649 = sext i32 %275 to i64
  %arrayidx650 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom649
  %276 = load %union.rec*, %union.rec** %arrayidx650, align 8
  %cmp651 = icmp eq %union.rec* %276, null
  br i1 %cmp651, label %if.then.653, label %if.else.655

if.then.653:                                      ; preds = %if.else.648
  %277 = load i32, i32* @zz_size, align 4
  %278 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call654 = call %union.rec* @GetMemory(i32 %277, %struct.FILE_POS* %278)
  store %union.rec* %call654, %union.rec** @zz_hold, align 8
  br label %if.end.664

if.else.655:                                      ; preds = %if.else.648
  %279 = load i32, i32* @zz_size, align 4
  %idxprom656 = sext i32 %279 to i64
  %arrayidx657 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom656
  %280 = load %union.rec*, %union.rec** %arrayidx657, align 8
  store %union.rec* %280, %union.rec** @zz_hold, align 8
  store %union.rec* %280, %union.rec** @zz_hold, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1658 = bitcast %union.rec* %281 to %struct.word_type*
  %olist659 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1658, i32 0, i32 0
  %arrayidx660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist659, i32 0, i64 0
  %opred661 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx660, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred661, align 8
  %283 = load i32, i32* @zz_size, align 4
  %idxprom662 = sext i32 %283 to i64
  %arrayidx663 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom662
  store %union.rec* %282, %union.rec** %arrayidx663, align 8
  br label %if.end.664

if.end.664:                                       ; preds = %if.else.655, %if.then.653
  br label %if.end.665

if.end.665:                                       ; preds = %if.end.664, %if.then.646
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1666 = bitcast %union.rec* %284 to %struct.word_type*
  %ou1667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1666, i32 0, i32 1
  %os11668 = bitcast %union.FIRST_UNION* %ou1667 to %struct.anon*
  %otype669 = getelementptr inbounds %struct.anon, %struct.anon* %os11668, i32 0, i32 0
  store i8 0, i8* %otype669, align 1
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1670 = bitcast %union.rec* %286 to %struct.word_type*
  %olist671 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1670, i32 0, i32 0
  %arrayidx672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist671, i32 0, i64 1
  %osucc673 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx672, i32 0, i32 1
  store %union.rec* %285, %union.rec** %osucc673, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1674 = bitcast %union.rec* %287 to %struct.word_type*
  %olist675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1674, i32 0, i32 0
  %arrayidx676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist675, i32 0, i64 1
  %opred677 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx676, i32 0, i32 0
  store %union.rec* %285, %union.rec** %opred677, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1678 = bitcast %union.rec* %288 to %struct.word_type*
  %olist679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1678, i32 0, i32 0
  %arrayidx680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist679, i32 0, i64 0
  %osucc681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx680, i32 0, i32 1
  store %union.rec* %285, %union.rec** %osucc681, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1682 = bitcast %union.rec* %289 to %struct.word_type*
  %olist683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1682, i32 0, i32 0
  %arrayidx684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist683, i32 0, i64 0
  %opred685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx684, i32 0, i32 0
  store %union.rec* %285, %union.rec** %opred685, align 8
  store %union.rec* %285, %union.rec** @xx_link, align 8
  %290 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %290, %union.rec** @zz_res, align 8
  %291 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %291, %union.rec** @zz_hold, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp686 = icmp eq %union.rec* %292, null
  br i1 %cmp686, label %cond.true.688, label %cond.false.689

cond.true.688:                                    ; preds = %if.end.665
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.724

cond.false.689:                                   ; preds = %if.end.665
  %294 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp690 = icmp eq %union.rec* %294, null
  br i1 %cmp690, label %cond.true.692, label %cond.false.693

cond.true.692:                                    ; preds = %cond.false.689
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.722

cond.false.693:                                   ; preds = %cond.false.689
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1694 = bitcast %union.rec* %296 to %struct.word_type*
  %olist695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1694, i32 0, i32 0
  %arrayidx696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist695, i32 0, i64 0
  %opred697 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx696, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred697, align 8
  store %union.rec* %297, %union.rec** @zz_tmp, align 8
  %298 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1698 = bitcast %union.rec* %298 to %struct.word_type*
  %olist699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1698, i32 0, i32 0
  %arrayidx700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist699, i32 0, i64 0
  %opred701 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx700, i32 0, i32 0
  %299 = load %union.rec*, %union.rec** %opred701, align 8
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1702 = bitcast %union.rec* %300 to %struct.word_type*
  %olist703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1702, i32 0, i32 0
  %arrayidx704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist703, i32 0, i64 0
  %opred705 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx704, i32 0, i32 0
  store %union.rec* %299, %union.rec** %opred705, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1706 = bitcast %union.rec* %302 to %struct.word_type*
  %olist707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1706, i32 0, i32 0
  %arrayidx708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist707, i32 0, i64 0
  %opred709 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx708, i32 0, i32 0
  %303 = load %union.rec*, %union.rec** %opred709, align 8
  %os1710 = bitcast %union.rec* %303 to %struct.word_type*
  %olist711 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1710, i32 0, i32 0
  %arrayidx712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist711, i32 0, i64 0
  %osucc713 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx712, i32 0, i32 1
  store %union.rec* %301, %union.rec** %osucc713, align 8
  %304 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1714 = bitcast %union.rec* %305 to %struct.word_type*
  %olist715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1714, i32 0, i32 0
  %arrayidx716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist715, i32 0, i64 0
  %opred717 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx716, i32 0, i32 0
  store %union.rec* %304, %union.rec** %opred717, align 8
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %307 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1718 = bitcast %union.rec* %307 to %struct.word_type*
  %olist719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1718, i32 0, i32 0
  %arrayidx720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist719, i32 0, i64 0
  %osucc721 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx720, i32 0, i32 1
  store %union.rec* %306, %union.rec** %osucc721, align 8
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.693, %cond.true.692
  %cond723 = phi %union.rec* [ %295, %cond.true.692 ], [ %306, %cond.false.693 ]
  br label %cond.end.724

cond.end.724:                                     ; preds = %cond.end.722, %cond.true.688
  %cond725 = phi %union.rec* [ %293, %cond.true.688 ], [ %cond723, %cond.end.722 ]
  %308 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %308, %union.rec** @zz_res, align 8
  %309 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %309, %union.rec** @zz_hold, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp726 = icmp eq %union.rec* %310, null
  br i1 %cmp726, label %cond.true.728, label %cond.false.729

cond.true.728:                                    ; preds = %cond.end.724
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.764

cond.false.729:                                   ; preds = %cond.end.724
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp730 = icmp eq %union.rec* %312, null
  br i1 %cmp730, label %cond.true.732, label %cond.false.733

cond.true.732:                                    ; preds = %cond.false.729
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.762

cond.false.733:                                   ; preds = %cond.false.729
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1734 = bitcast %union.rec* %314 to %struct.word_type*
  %olist735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1734, i32 0, i32 0
  %arrayidx736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist735, i32 0, i64 1
  %opred737 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx736, i32 0, i32 0
  %315 = load %union.rec*, %union.rec** %opred737, align 8
  store %union.rec* %315, %union.rec** @zz_tmp, align 8
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1738 = bitcast %union.rec* %316 to %struct.word_type*
  %olist739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 0
  %arrayidx740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist739, i32 0, i64 1
  %opred741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx740, i32 0, i32 0
  %317 = load %union.rec*, %union.rec** %opred741, align 8
  %318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1742 = bitcast %union.rec* %318 to %struct.word_type*
  %olist743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist743, i32 0, i64 1
  %opred745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx744, i32 0, i32 0
  store %union.rec* %317, %union.rec** %opred745, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1746 = bitcast %union.rec* %320 to %struct.word_type*
  %olist747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1746, i32 0, i32 0
  %arrayidx748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist747, i32 0, i64 1
  %opred749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx748, i32 0, i32 0
  %321 = load %union.rec*, %union.rec** %opred749, align 8
  %os1750 = bitcast %union.rec* %321 to %struct.word_type*
  %olist751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1750, i32 0, i32 0
  %arrayidx752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist751, i32 0, i64 1
  %osucc753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx752, i32 0, i32 1
  store %union.rec* %319, %union.rec** %osucc753, align 8
  %322 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1754 = bitcast %union.rec* %323 to %struct.word_type*
  %olist755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1754, i32 0, i32 0
  %arrayidx756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist755, i32 0, i64 1
  %opred757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx756, i32 0, i32 0
  store %union.rec* %322, %union.rec** %opred757, align 8
  %324 = load %union.rec*, %union.rec** @zz_res, align 8
  %325 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1758 = bitcast %union.rec* %325 to %struct.word_type*
  %olist759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1758, i32 0, i32 0
  %arrayidx760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist759, i32 0, i64 1
  %osucc761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx760, i32 0, i32 1
  store %union.rec* %324, %union.rec** %osucc761, align 8
  br label %cond.end.762

cond.end.762:                                     ; preds = %cond.false.733, %cond.true.732
  %cond763 = phi %union.rec* [ %313, %cond.true.732 ], [ %324, %cond.false.733 ]
  br label %cond.end.764

cond.end.764:                                     ; preds = %cond.end.762, %cond.true.728
  %cond765 = phi %union.rec* [ %311, %cond.true.728 ], [ %cond763, %cond.end.762 ]
  br label %if.end.766

if.end.766:                                       ; preds = %cond.end.764, %cond.end.635
  store i32 0, i32* %compcount, align 4
  %326 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a767 = bitcast %union.rec* %326 to %struct.head_type*
  %oopt_components768 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a767, i32 0, i32 8
  %327 = load %union.rec*, %union.rec** %oopt_components768, align 8
  %os1769 = bitcast %union.rec* %327 to %struct.word_type*
  %olist770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 0
  %arrayidx771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist770, i32 0, i64 0
  %osucc772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx771, i32 0, i32 1
  %328 = load %union.rec*, %union.rec** %osucc772, align 8
  store %union.rec* %328, %union.rec** %link, align 8
  br label %for.cond.773

for.cond.773:                                     ; preds = %for.inc.1196, %if.end.766
  %329 = load %union.rec*, %union.rec** %link, align 8
  %330 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a774 = bitcast %union.rec* %330 to %struct.head_type*
  %oopt_components775 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a774, i32 0, i32 8
  %331 = load %union.rec*, %union.rec** %oopt_components775, align 8
  %cmp776 = icmp ne %union.rec* %329, %331
  br i1 %cmp776, label %for.body.778, label %for.end.1201

for.body.778:                                     ; preds = %for.cond.773
  %332 = load %union.rec*, %union.rec** %link, align 8
  %os1779 = bitcast %union.rec* %332 to %struct.word_type*
  %olist780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1779, i32 0, i32 0
  %arrayidx781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist780, i32 0, i64 1
  %opred782 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx781, i32 0, i32 0
  %333 = load %union.rec*, %union.rec** %opred782, align 8
  store %union.rec* %333, %union.rec** %y, align 8
  br label %for.cond.783

for.cond.783:                                     ; preds = %for.inc.792, %for.body.778
  %334 = load %union.rec*, %union.rec** %y, align 8
  %os1784 = bitcast %union.rec* %334 to %struct.word_type*
  %ou1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 1
  %os11786 = bitcast %union.FIRST_UNION* %ou1785 to %struct.anon*
  %otype787 = getelementptr inbounds %struct.anon, %struct.anon* %os11786, i32 0, i32 0
  %335 = load i8, i8* %otype787, align 1
  %conv788 = zext i8 %335 to i32
  %cmp789 = icmp eq i32 %conv788, 0
  br i1 %cmp789, label %for.body.791, label %for.end.797

for.body.791:                                     ; preds = %for.cond.783
  br label %for.inc.792

for.inc.792:                                      ; preds = %for.body.791
  %336 = load %union.rec*, %union.rec** %y, align 8
  %os1793 = bitcast %union.rec* %336 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 1
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %opred796, align 8
  store %union.rec* %337, %union.rec** %y, align 8
  br label %for.cond.783

for.end.797:                                      ; preds = %for.cond.783
  %338 = load %union.rec*, %union.rec** %y, align 8
  %os1798 = bitcast %union.rec* %338 to %struct.word_type*
  %ou1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1798, i32 0, i32 1
  %os11800 = bitcast %union.FIRST_UNION* %ou1799 to %struct.anon*
  %otype801 = getelementptr inbounds %struct.anon, %struct.anon* %os11800, i32 0, i32 0
  %339 = load i8, i8* %otype801, align 1
  %conv802 = zext i8 %339 to i32
  %cmp803 = icmp ne i32 %conv802, 17
  br i1 %cmp803, label %if.then.805, label %if.end.806

if.then.805:                                      ; preds = %for.end.797
  br label %for.inc.1196

if.end.806:                                       ; preds = %for.end.797
  store i32 0, i32* %count, align 4
  %340 = load %union.rec*, %union.rec** %y, align 8
  %os1807 = bitcast %union.rec* %340 to %struct.word_type*
  %olist808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1807, i32 0, i32 0
  %arrayidx809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist808, i32 0, i64 0
  %osucc810 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx809, i32 0, i32 1
  %341 = load %union.rec*, %union.rec** %osucc810, align 8
  store %union.rec* %341, %union.rec** %ylink, align 8
  br label %for.cond.811

for.cond.811:                                     ; preds = %for.inc.843, %if.end.806
  %342 = load %union.rec*, %union.rec** %ylink, align 8
  %343 = load %union.rec*, %union.rec** %y, align 8
  %cmp812 = icmp ne %union.rec* %342, %343
  br i1 %cmp812, label %for.body.814, label %for.end.848

for.body.814:                                     ; preds = %for.cond.811
  %344 = load %union.rec*, %union.rec** %ylink, align 8
  %os1815 = bitcast %union.rec* %344 to %struct.word_type*
  %olist816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1815, i32 0, i32 0
  %arrayidx817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist816, i32 0, i64 1
  %opred818 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx817, i32 0, i32 0
  %345 = load %union.rec*, %union.rec** %opred818, align 8
  store %union.rec* %345, %union.rec** %z, align 8
  br label %for.cond.819

for.cond.819:                                     ; preds = %for.inc.828, %for.body.814
  %346 = load %union.rec*, %union.rec** %z, align 8
  %os1820 = bitcast %union.rec* %346 to %struct.word_type*
  %ou1821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1820, i32 0, i32 1
  %os11822 = bitcast %union.FIRST_UNION* %ou1821 to %struct.anon*
  %otype823 = getelementptr inbounds %struct.anon, %struct.anon* %os11822, i32 0, i32 0
  %347 = load i8, i8* %otype823, align 1
  %conv824 = zext i8 %347 to i32
  %cmp825 = icmp eq i32 %conv824, 0
  br i1 %cmp825, label %for.body.827, label %for.end.833

for.body.827:                                     ; preds = %for.cond.819
  br label %for.inc.828

for.inc.828:                                      ; preds = %for.body.827
  %348 = load %union.rec*, %union.rec** %z, align 8
  %os1829 = bitcast %union.rec* %348 to %struct.word_type*
  %olist830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1829, i32 0, i32 0
  %arrayidx831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist830, i32 0, i64 1
  %opred832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx831, i32 0, i32 0
  %349 = load %union.rec*, %union.rec** %opred832, align 8
  store %union.rec* %349, %union.rec** %z, align 8
  br label %for.cond.819

for.end.833:                                      ; preds = %for.cond.819
  %350 = load %union.rec*, %union.rec** %z, align 8
  %os1834 = bitcast %union.rec* %350 to %struct.word_type*
  %ou1835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1834, i32 0, i32 1
  %os11836 = bitcast %union.FIRST_UNION* %ou1835 to %struct.anon*
  %otype837 = getelementptr inbounds %struct.anon, %struct.anon* %os11836, i32 0, i32 0
  %351 = load i8, i8* %otype837, align 1
  %conv838 = zext i8 %351 to i32
  %cmp839 = icmp ne i32 %conv838, 1
  br i1 %cmp839, label %if.then.841, label %if.end.842

if.then.841:                                      ; preds = %for.end.833
  %352 = load i32, i32* %count, align 4
  %inc = add nsw i32 %352, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.842

if.end.842:                                       ; preds = %if.then.841, %for.end.833
  br label %for.inc.843

for.inc.843:                                      ; preds = %if.end.842
  %353 = load %union.rec*, %union.rec** %ylink, align 8
  %os1844 = bitcast %union.rec* %353 to %struct.word_type*
  %olist845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1844, i32 0, i32 0
  %arrayidx846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist845, i32 0, i64 0
  %osucc847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx846, i32 0, i32 1
  %354 = load %union.rec*, %union.rec** %osucc847, align 8
  store %union.rec* %354, %union.rec** %ylink, align 8
  br label %for.cond.811

for.end.848:                                      ; preds = %for.cond.811
  %355 = load i32, i32* %count, align 4
  %call849 = call i8* @StringInt(i32 %355)
  %356 = load %union.rec*, %union.rec** %y, align 8
  %os1850 = bitcast %union.rec* %356 to %struct.word_type*
  %ou1851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1850, i32 0, i32 1
  %ofpos852 = bitcast %union.FIRST_UNION* %ou1851 to %struct.FILE_POS*
  %call853 = call %union.rec* @MakeWord(i32 11, i8* %call849, %struct.FILE_POS* %ofpos852)
  store %union.rec* %call853, %union.rec** %wd, align 8
  %357 = load %union.rec*, %union.rec** %para, align 8
  %os1854 = bitcast %union.rec* %357 to %struct.word_type*
  %olist855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1854, i32 0, i32 0
  %arrayidx856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist855, i32 0, i64 0
  %osucc857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx856, i32 0, i32 1
  %358 = load %union.rec*, %union.rec** %osucc857, align 8
  %359 = load %union.rec*, %union.rec** %para, align 8
  %cmp858 = icmp ne %union.rec* %358, %359
  br i1 %cmp858, label %if.then.860, label %if.end.1070

if.then.860:                                      ; preds = %for.end.848
  %360 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv861 = zext i8 %360 to i32
  store i32 %conv861, i32* @zz_size, align 4
  %conv862 = sext i32 %conv861 to i64
  %cmp863 = icmp uge i64 %conv862, 265
  br i1 %cmp863, label %if.then.865, label %if.else.867

if.then.865:                                      ; preds = %if.then.860
  %361 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call866 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %361)
  br label %if.end.884

if.else.867:                                      ; preds = %if.then.860
  %362 = load i32, i32* @zz_size, align 4
  %idxprom868 = sext i32 %362 to i64
  %arrayidx869 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom868
  %363 = load %union.rec*, %union.rec** %arrayidx869, align 8
  %cmp870 = icmp eq %union.rec* %363, null
  br i1 %cmp870, label %if.then.872, label %if.else.874

if.then.872:                                      ; preds = %if.else.867
  %364 = load i32, i32* @zz_size, align 4
  %365 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call873 = call %union.rec* @GetMemory(i32 %364, %struct.FILE_POS* %365)
  store %union.rec* %call873, %union.rec** @zz_hold, align 8
  br label %if.end.883

if.else.874:                                      ; preds = %if.else.867
  %366 = load i32, i32* @zz_size, align 4
  %idxprom875 = sext i32 %366 to i64
  %arrayidx876 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom875
  %367 = load %union.rec*, %union.rec** %arrayidx876, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1877 = bitcast %union.rec* %368 to %struct.word_type*
  %olist878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1877, i32 0, i32 0
  %arrayidx879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist878, i32 0, i64 0
  %opred880 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx879, i32 0, i32 0
  %369 = load %union.rec*, %union.rec** %opred880, align 8
  %370 = load i32, i32* @zz_size, align 4
  %idxprom881 = sext i32 %370 to i64
  %arrayidx882 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom881
  store %union.rec* %369, %union.rec** %arrayidx882, align 8
  br label %if.end.883

if.end.883:                                       ; preds = %if.else.874, %if.then.872
  br label %if.end.884

if.end.884:                                       ; preds = %if.end.883, %if.then.865
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1885 = bitcast %union.rec* %371 to %struct.word_type*
  %ou1886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1885, i32 0, i32 1
  %os11887 = bitcast %union.FIRST_UNION* %ou1886 to %struct.anon*
  %otype888 = getelementptr inbounds %struct.anon, %struct.anon* %os11887, i32 0, i32 0
  store i8 1, i8* %otype888, align 1
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1889 = bitcast %union.rec* %373 to %struct.word_type*
  %olist890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1889, i32 0, i32 0
  %arrayidx891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist890, i32 0, i64 1
  %osucc892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx891, i32 0, i32 1
  store %union.rec* %372, %union.rec** %osucc892, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1893 = bitcast %union.rec* %374 to %struct.word_type*
  %olist894 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1893, i32 0, i32 0
  %arrayidx895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist894, i32 0, i64 1
  %opred896 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx895, i32 0, i32 0
  store %union.rec* %372, %union.rec** %opred896, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1897 = bitcast %union.rec* %375 to %struct.word_type*
  %olist898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1897, i32 0, i32 0
  %arrayidx899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist898, i32 0, i64 0
  %osucc900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx899, i32 0, i32 1
  store %union.rec* %372, %union.rec** %osucc900, align 8
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1901 = bitcast %union.rec* %376 to %struct.word_type*
  %olist902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1901, i32 0, i32 0
  %arrayidx903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist902, i32 0, i64 0
  %opred904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx903, i32 0, i32 0
  store %union.rec* %372, %union.rec** %opred904, align 8
  store %union.rec* %372, %union.rec** %g, align 8
  %377 = load %union.rec*, %union.rec** %g, align 8
  %os5 = bitcast %union.rec* %377 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %378 = bitcast %struct.GAP* %ogap to i16*
  %bf.load905 = load i16, i16* %378, align 4
  %bf.clear906 = and i16 %bf.load905, -129
  store i16 %bf.clear906, i16* %378, align 4
  %379 = load %union.rec*, %union.rec** %g, align 8
  %os5907 = bitcast %union.rec* %379 to %struct.gapobj_type*
  %ogap908 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5907, i32 0, i32 3
  %380 = bitcast %struct.GAP* %ogap908 to i16*
  %bf.load909 = load i16, i16* %380, align 4
  %bf.clear910 = and i16 %bf.load909, -257
  store i16 %bf.clear910, i16* %380, align 4
  %381 = load %union.rec*, %union.rec** %g, align 8
  %os5911 = bitcast %union.rec* %381 to %struct.gapobj_type*
  %ogap912 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5911, i32 0, i32 3
  %382 = bitcast %struct.GAP* %ogap912 to i16*
  %bf.load913 = load i16, i16* %382, align 4
  %bf.clear914 = and i16 %bf.load913, -513
  %bf.set915 = or i16 %bf.clear914, 512
  store i16 %bf.set915, i16* %382, align 4
  %383 = load %union.rec*, %union.rec** %g, align 8
  %os5916 = bitcast %union.rec* %383 to %struct.gapobj_type*
  %ogap917 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5916, i32 0, i32 3
  %384 = bitcast %struct.GAP* %ogap917 to i16*
  %bf.load918 = load i16, i16* %384, align 4
  %bf.clear919 = and i16 %bf.load918, -7169
  %bf.set920 = or i16 %bf.clear919, 1024
  store i16 %bf.set920, i16* %384, align 4
  %385 = load %union.rec*, %union.rec** %g, align 8
  %os5921 = bitcast %union.rec* %385 to %struct.gapobj_type*
  %ogap922 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5921, i32 0, i32 3
  %386 = bitcast %struct.GAP* %ogap922 to i16*
  %bf.load923 = load i16, i16* %386, align 4
  %bf.clear924 = and i16 %bf.load923, 8191
  %bf.set925 = or i16 %bf.clear924, 8192
  store i16 %bf.set925, i16* %386, align 4
  %387 = load %union.rec*, %union.rec** %g, align 8
  %os5926 = bitcast %union.rec* %387 to %struct.gapobj_type*
  %ogap927 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5926, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap927, i32 0, i32 1
  store i16 120, i16* %owidth, align 2
  %388 = load i32, i32* %compcount, align 4
  %inc928 = add nsw i32 %388, 1
  store i32 %inc928, i32* %compcount, align 4
  %rem = srem i32 %inc928, 20
  %cmp929 = icmp eq i32 %rem, 0
  br i1 %cmp929, label %if.then.931, label %if.else.936

if.then.931:                                      ; preds = %if.end.884
  %389 = load %union.rec*, %union.rec** %g, align 8
  %os1932 = bitcast %union.rec* %389 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1932, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  store i8 0, i8* %ohspace, align 1
  %390 = load %union.rec*, %union.rec** %g, align 8
  %os1933 = bitcast %union.rec* %390 to %struct.word_type*
  %ou2934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1933, i32 0, i32 2
  %os21935 = bitcast %union.SECOND_UNION* %ou2934 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21935, i32 0, i32 2
  store i8 1, i8* %ovspace, align 1
  br label %if.end.945

if.else.936:                                      ; preds = %if.end.884
  %391 = load %union.rec*, %union.rec** %g, align 8
  %os1937 = bitcast %union.rec* %391 to %struct.word_type*
  %ou2938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1937, i32 0, i32 2
  %os21939 = bitcast %union.SECOND_UNION* %ou2938 to %struct.anon.0*
  %ohspace940 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21939, i32 0, i32 1
  store i8 1, i8* %ohspace940, align 1
  %392 = load %union.rec*, %union.rec** %g, align 8
  %os1941 = bitcast %union.rec* %392 to %struct.word_type*
  %ou2942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 2
  %os21943 = bitcast %union.SECOND_UNION* %ou2942 to %struct.anon.0*
  %ovspace944 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21943, i32 0, i32 2
  store i8 0, i8* %ovspace944, align 1
  br label %if.end.945

if.end.945:                                       ; preds = %if.else.936, %if.then.931
  %393 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv946 = zext i8 %393 to i32
  store i32 %conv946, i32* @zz_size, align 4
  %conv947 = sext i32 %conv946 to i64
  %cmp948 = icmp uge i64 %conv947, 265
  br i1 %cmp948, label %if.then.950, label %if.else.952

if.then.950:                                      ; preds = %if.end.945
  %394 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call951 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %394)
  br label %if.end.969

if.else.952:                                      ; preds = %if.end.945
  %395 = load i32, i32* @zz_size, align 4
  %idxprom953 = sext i32 %395 to i64
  %arrayidx954 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom953
  %396 = load %union.rec*, %union.rec** %arrayidx954, align 8
  %cmp955 = icmp eq %union.rec* %396, null
  br i1 %cmp955, label %if.then.957, label %if.else.959

if.then.957:                                      ; preds = %if.else.952
  %397 = load i32, i32* @zz_size, align 4
  %398 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call958 = call %union.rec* @GetMemory(i32 %397, %struct.FILE_POS* %398)
  store %union.rec* %call958, %union.rec** @zz_hold, align 8
  br label %if.end.968

if.else.959:                                      ; preds = %if.else.952
  %399 = load i32, i32* @zz_size, align 4
  %idxprom960 = sext i32 %399 to i64
  %arrayidx961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom960
  %400 = load %union.rec*, %union.rec** %arrayidx961, align 8
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1962 = bitcast %union.rec* %401 to %struct.word_type*
  %olist963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1962, i32 0, i32 0
  %arrayidx964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist963, i32 0, i64 0
  %opred965 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx964, i32 0, i32 0
  %402 = load %union.rec*, %union.rec** %opred965, align 8
  %403 = load i32, i32* @zz_size, align 4
  %idxprom966 = sext i32 %403 to i64
  %arrayidx967 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom966
  store %union.rec* %402, %union.rec** %arrayidx967, align 8
  br label %if.end.968

if.end.968:                                       ; preds = %if.else.959, %if.then.957
  br label %if.end.969

if.end.969:                                       ; preds = %if.end.968, %if.then.950
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1970 = bitcast %union.rec* %404 to %struct.word_type*
  %ou1971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1970, i32 0, i32 1
  %os11972 = bitcast %union.FIRST_UNION* %ou1971 to %struct.anon*
  %otype973 = getelementptr inbounds %struct.anon, %struct.anon* %os11972, i32 0, i32 0
  store i8 0, i8* %otype973, align 1
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1974 = bitcast %union.rec* %406 to %struct.word_type*
  %olist975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1974, i32 0, i32 0
  %arrayidx976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist975, i32 0, i64 1
  %osucc977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx976, i32 0, i32 1
  store %union.rec* %405, %union.rec** %osucc977, align 8
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1978 = bitcast %union.rec* %407 to %struct.word_type*
  %olist979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1978, i32 0, i32 0
  %arrayidx980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist979, i32 0, i64 1
  %opred981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx980, i32 0, i32 0
  store %union.rec* %405, %union.rec** %opred981, align 8
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1982 = bitcast %union.rec* %408 to %struct.word_type*
  %olist983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1982, i32 0, i32 0
  %arrayidx984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist983, i32 0, i64 0
  %osucc985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx984, i32 0, i32 1
  store %union.rec* %405, %union.rec** %osucc985, align 8
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1986 = bitcast %union.rec* %409 to %struct.word_type*
  %olist987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1986, i32 0, i32 0
  %arrayidx988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist987, i32 0, i64 0
  %opred989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx988, i32 0, i32 0
  store %union.rec* %405, %union.rec** %opred989, align 8
  store %union.rec* %405, %union.rec** @xx_link, align 8
  %410 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %410, %union.rec** @zz_res, align 8
  %411 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %411, %union.rec** @zz_hold, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp990 = icmp eq %union.rec* %412, null
  br i1 %cmp990, label %cond.true.992, label %cond.false.993

cond.true.992:                                    ; preds = %if.end.969
  %413 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1028

cond.false.993:                                   ; preds = %if.end.969
  %414 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp994 = icmp eq %union.rec* %414, null
  br i1 %cmp994, label %cond.true.996, label %cond.false.997

cond.true.996:                                    ; preds = %cond.false.993
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1026

cond.false.997:                                   ; preds = %cond.false.993
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1998 = bitcast %union.rec* %416 to %struct.word_type*
  %olist999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1998, i32 0, i32 0
  %arrayidx1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist999, i32 0, i64 0
  %opred1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1000, i32 0, i32 0
  %417 = load %union.rec*, %union.rec** %opred1001, align 8
  store %union.rec* %417, %union.rec** @zz_tmp, align 8
  %418 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11002 = bitcast %union.rec* %418 to %struct.word_type*
  %olist1003 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11002, i32 0, i32 0
  %arrayidx1004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1003, i32 0, i64 0
  %opred1005 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1004, i32 0, i32 0
  %419 = load %union.rec*, %union.rec** %opred1005, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11006 = bitcast %union.rec* %420 to %struct.word_type*
  %olist1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11006, i32 0, i32 0
  %arrayidx1008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1007, i32 0, i64 0
  %opred1009 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1008, i32 0, i32 0
  store %union.rec* %419, %union.rec** %opred1009, align 8
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11010 = bitcast %union.rec* %422 to %struct.word_type*
  %olist1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11010, i32 0, i32 0
  %arrayidx1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1011, i32 0, i64 0
  %opred1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1012, i32 0, i32 0
  %423 = load %union.rec*, %union.rec** %opred1013, align 8
  %os11014 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1015 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11014, i32 0, i32 0
  %arrayidx1016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1015, i32 0, i64 0
  %osucc1017 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1016, i32 0, i32 1
  store %union.rec* %421, %union.rec** %osucc1017, align 8
  %424 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11018 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11018, i32 0, i32 0
  %arrayidx1020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1019, i32 0, i64 0
  %opred1021 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1020, i32 0, i32 0
  store %union.rec* %424, %union.rec** %opred1021, align 8
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11022 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11022, i32 0, i32 0
  %arrayidx1024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1023, i32 0, i64 0
  %osucc1025 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1024, i32 0, i32 1
  store %union.rec* %426, %union.rec** %osucc1025, align 8
  br label %cond.end.1026

cond.end.1026:                                    ; preds = %cond.false.997, %cond.true.996
  %cond1027 = phi %union.rec* [ %415, %cond.true.996 ], [ %426, %cond.false.997 ]
  br label %cond.end.1028

cond.end.1028:                                    ; preds = %cond.end.1026, %cond.true.992
  %cond1029 = phi %union.rec* [ %413, %cond.true.992 ], [ %cond1027, %cond.end.1026 ]
  %428 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %428, %union.rec** @zz_res, align 8
  %429 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %429, %union.rec** @zz_hold, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1030 = icmp eq %union.rec* %430, null
  br i1 %cmp1030, label %cond.true.1032, label %cond.false.1033

cond.true.1032:                                   ; preds = %cond.end.1028
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1068

cond.false.1033:                                  ; preds = %cond.end.1028
  %432 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1034 = icmp eq %union.rec* %432, null
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1037

cond.true.1036:                                   ; preds = %cond.false.1033
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1066

cond.false.1037:                                  ; preds = %cond.false.1033
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11038 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11038, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1039, i32 0, i64 1
  %opred1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1040, i32 0, i32 0
  %435 = load %union.rec*, %union.rec** %opred1041, align 8
  store %union.rec* %435, %union.rec** @zz_tmp, align 8
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11042 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11042, i32 0, i32 0
  %arrayidx1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1043, i32 0, i64 1
  %opred1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1044, i32 0, i32 0
  %437 = load %union.rec*, %union.rec** %opred1045, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11046 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11046, i32 0, i32 0
  %arrayidx1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1047, i32 0, i64 1
  %opred1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1048, i32 0, i32 0
  store %union.rec* %437, %union.rec** %opred1049, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %440 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11050 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11050, i32 0, i32 0
  %arrayidx1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1051, i32 0, i64 1
  %opred1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1052, i32 0, i32 0
  %441 = load %union.rec*, %union.rec** %opred1053, align 8
  %os11054 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11054, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1055, i32 0, i64 1
  %osucc1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1056, i32 0, i32 1
  store %union.rec* %439, %union.rec** %osucc1057, align 8
  %442 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %443 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11058 = bitcast %union.rec* %443 to %struct.word_type*
  %olist1059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11058, i32 0, i32 0
  %arrayidx1060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1059, i32 0, i64 1
  %opred1061 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1060, i32 0, i32 0
  store %union.rec* %442, %union.rec** %opred1061, align 8
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %445 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11062 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11062, i32 0, i32 0
  %arrayidx1064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1063, i32 0, i64 1
  %osucc1065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1064, i32 0, i32 1
  store %union.rec* %444, %union.rec** %osucc1065, align 8
  br label %cond.end.1066

cond.end.1066:                                    ; preds = %cond.false.1037, %cond.true.1036
  %cond1067 = phi %union.rec* [ %433, %cond.true.1036 ], [ %444, %cond.false.1037 ]
  br label %cond.end.1068

cond.end.1068:                                    ; preds = %cond.end.1066, %cond.true.1032
  %cond1069 = phi %union.rec* [ %431, %cond.true.1032 ], [ %cond1067, %cond.end.1066 ]
  br label %if.end.1070

if.end.1070:                                      ; preds = %cond.end.1068, %for.end.848
  %446 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1071 = zext i8 %446 to i32
  store i32 %conv1071, i32* @zz_size, align 4
  %conv1072 = sext i32 %conv1071 to i64
  %cmp1073 = icmp uge i64 %conv1072, 265
  br i1 %cmp1073, label %if.then.1075, label %if.else.1077

if.then.1075:                                     ; preds = %if.end.1070
  %447 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1076 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %447)
  br label %if.end.1094

if.else.1077:                                     ; preds = %if.end.1070
  %448 = load i32, i32* @zz_size, align 4
  %idxprom1078 = sext i32 %448 to i64
  %arrayidx1079 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1078
  %449 = load %union.rec*, %union.rec** %arrayidx1079, align 8
  %cmp1080 = icmp eq %union.rec* %449, null
  br i1 %cmp1080, label %if.then.1082, label %if.else.1084

if.then.1082:                                     ; preds = %if.else.1077
  %450 = load i32, i32* @zz_size, align 4
  %451 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1083 = call %union.rec* @GetMemory(i32 %450, %struct.FILE_POS* %451)
  store %union.rec* %call1083, %union.rec** @zz_hold, align 8
  br label %if.end.1093

if.else.1084:                                     ; preds = %if.else.1077
  %452 = load i32, i32* @zz_size, align 4
  %idxprom1085 = sext i32 %452 to i64
  %arrayidx1086 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1085
  %453 = load %union.rec*, %union.rec** %arrayidx1086, align 8
  store %union.rec* %453, %union.rec** @zz_hold, align 8
  store %union.rec* %453, %union.rec** @zz_hold, align 8
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11087 = bitcast %union.rec* %454 to %struct.word_type*
  %olist1088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11087, i32 0, i32 0
  %arrayidx1089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1088, i32 0, i64 0
  %opred1090 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1089, i32 0, i32 0
  %455 = load %union.rec*, %union.rec** %opred1090, align 8
  %456 = load i32, i32* @zz_size, align 4
  %idxprom1091 = sext i32 %456 to i64
  %arrayidx1092 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1091
  store %union.rec* %455, %union.rec** %arrayidx1092, align 8
  br label %if.end.1093

if.end.1093:                                      ; preds = %if.else.1084, %if.then.1082
  br label %if.end.1094

if.end.1094:                                      ; preds = %if.end.1093, %if.then.1075
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11095 = bitcast %union.rec* %457 to %struct.word_type*
  %ou11096 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11095, i32 0, i32 1
  %os111097 = bitcast %union.FIRST_UNION* %ou11096 to %struct.anon*
  %otype1098 = getelementptr inbounds %struct.anon, %struct.anon* %os111097, i32 0, i32 0
  store i8 0, i8* %otype1098, align 1
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11099 = bitcast %union.rec* %459 to %struct.word_type*
  %olist1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11099, i32 0, i32 0
  %arrayidx1101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1100, i32 0, i64 1
  %osucc1102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1101, i32 0, i32 1
  store %union.rec* %458, %union.rec** %osucc1102, align 8
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11103 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11103, i32 0, i32 0
  %arrayidx1105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1104, i32 0, i64 1
  %opred1106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1105, i32 0, i32 0
  store %union.rec* %458, %union.rec** %opred1106, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11108 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 0
  %arrayidx1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1109, i32 0, i64 0
  %osucc1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1110, i32 0, i32 1
  store %union.rec* %458, %union.rec** %osucc1111, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11112 = bitcast %union.rec* %462 to %struct.word_type*
  %olist1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11112, i32 0, i32 0
  %arrayidx1114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1113, i32 0, i64 0
  %opred1115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1114, i32 0, i32 0
  store %union.rec* %458, %union.rec** %opred1115, align 8
  store %union.rec* %458, %union.rec** @xx_link, align 8
  %463 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %463, %union.rec** @zz_res, align 8
  %464 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %464, %union.rec** @zz_hold, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1116 = icmp eq %union.rec* %465, null
  br i1 %cmp1116, label %cond.true.1118, label %cond.false.1119

cond.true.1118:                                   ; preds = %if.end.1094
  %466 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1154

cond.false.1119:                                  ; preds = %if.end.1094
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1120 = icmp eq %union.rec* %467, null
  br i1 %cmp1120, label %cond.true.1122, label %cond.false.1123

cond.true.1122:                                   ; preds = %cond.false.1119
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1152

cond.false.1123:                                  ; preds = %cond.false.1119
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11124 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11124, i32 0, i32 0
  %arrayidx1126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1125, i32 0, i64 0
  %opred1127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1126, i32 0, i32 0
  %470 = load %union.rec*, %union.rec** %opred1127, align 8
  store %union.rec* %470, %union.rec** @zz_tmp, align 8
  %471 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11128 = bitcast %union.rec* %471 to %struct.word_type*
  %olist1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11128, i32 0, i32 0
  %arrayidx1130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1129, i32 0, i64 0
  %opred1131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1130, i32 0, i32 0
  %472 = load %union.rec*, %union.rec** %opred1131, align 8
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11132 = bitcast %union.rec* %473 to %struct.word_type*
  %olist1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 0
  %arrayidx1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1133, i32 0, i64 0
  %opred1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1134, i32 0, i32 0
  store %union.rec* %472, %union.rec** %opred1135, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %475 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11136 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11136, i32 0, i32 0
  %arrayidx1138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1137, i32 0, i64 0
  %opred1139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1138, i32 0, i32 0
  %476 = load %union.rec*, %union.rec** %opred1139, align 8
  %os11140 = bitcast %union.rec* %476 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 0
  %osucc1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 1
  store %union.rec* %474, %union.rec** %osucc1143, align 8
  %477 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %478 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11144 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11144, i32 0, i32 0
  %arrayidx1146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1145, i32 0, i64 0
  %opred1147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1146, i32 0, i32 0
  store %union.rec* %477, %union.rec** %opred1147, align 8
  %479 = load %union.rec*, %union.rec** @zz_res, align 8
  %480 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11148 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11148, i32 0, i32 0
  %arrayidx1150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1149, i32 0, i64 0
  %osucc1151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1150, i32 0, i32 1
  store %union.rec* %479, %union.rec** %osucc1151, align 8
  br label %cond.end.1152

cond.end.1152:                                    ; preds = %cond.false.1123, %cond.true.1122
  %cond1153 = phi %union.rec* [ %468, %cond.true.1122 ], [ %479, %cond.false.1123 ]
  br label %cond.end.1154

cond.end.1154:                                    ; preds = %cond.end.1152, %cond.true.1118
  %cond1155 = phi %union.rec* [ %466, %cond.true.1118 ], [ %cond1153, %cond.end.1152 ]
  %481 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %481, %union.rec** @zz_res, align 8
  %482 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %482, %union.rec** @zz_hold, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1156 = icmp eq %union.rec* %483, null
  br i1 %cmp1156, label %cond.true.1158, label %cond.false.1159

cond.true.1158:                                   ; preds = %cond.end.1154
  %484 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1194

cond.false.1159:                                  ; preds = %cond.end.1154
  %485 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1160 = icmp eq %union.rec* %485, null
  br i1 %cmp1160, label %cond.true.1162, label %cond.false.1163

cond.true.1162:                                   ; preds = %cond.false.1159
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1192

cond.false.1163:                                  ; preds = %cond.false.1159
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11164 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11164, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1165, i32 0, i64 1
  %opred1167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1166, i32 0, i32 0
  %488 = load %union.rec*, %union.rec** %opred1167, align 8
  store %union.rec* %488, %union.rec** @zz_tmp, align 8
  %489 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11168 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11168, i32 0, i32 0
  %arrayidx1170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1169, i32 0, i64 1
  %opred1171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1170, i32 0, i32 0
  %490 = load %union.rec*, %union.rec** %opred1171, align 8
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11172 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11172, i32 0, i32 0
  %arrayidx1174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1173, i32 0, i64 1
  %opred1175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1174, i32 0, i32 0
  store %union.rec* %490, %union.rec** %opred1175, align 8
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %493 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11176 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11176, i32 0, i32 0
  %arrayidx1178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1177, i32 0, i64 1
  %opred1179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1178, i32 0, i32 0
  %494 = load %union.rec*, %union.rec** %opred1179, align 8
  %os11180 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11180, i32 0, i32 0
  %arrayidx1182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1181, i32 0, i64 1
  %osucc1183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1182, i32 0, i32 1
  store %union.rec* %492, %union.rec** %osucc1183, align 8
  %495 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %496 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11184 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11184, i32 0, i32 0
  %arrayidx1186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1185, i32 0, i64 1
  %opred1187 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1186, i32 0, i32 0
  store %union.rec* %495, %union.rec** %opred1187, align 8
  %497 = load %union.rec*, %union.rec** @zz_res, align 8
  %498 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11188 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11188, i32 0, i32 0
  %arrayidx1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1189, i32 0, i64 1
  %osucc1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1190, i32 0, i32 1
  store %union.rec* %497, %union.rec** %osucc1191, align 8
  br label %cond.end.1192

cond.end.1192:                                    ; preds = %cond.false.1163, %cond.true.1162
  %cond1193 = phi %union.rec* [ %486, %cond.true.1162 ], [ %497, %cond.false.1163 ]
  br label %cond.end.1194

cond.end.1194:                                    ; preds = %cond.end.1192, %cond.true.1158
  %cond1195 = phi %union.rec* [ %484, %cond.true.1158 ], [ %cond1193, %cond.end.1192 ]
  br label %for.inc.1196

for.inc.1196:                                     ; preds = %cond.end.1194, %if.then.805
  %499 = load %union.rec*, %union.rec** %link, align 8
  %os11197 = bitcast %union.rec* %499 to %struct.word_type*
  %olist1198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11197, i32 0, i32 0
  %arrayidx1199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1198, i32 0, i64 0
  %osucc1200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1199, i32 0, i32 1
  %500 = load %union.rec*, %union.rec** %osucc1200, align 8
  store %union.rec* %500, %union.rec** %link, align 8
  br label %for.cond.773

for.end.1201:                                     ; preds = %for.cond.773
  %501 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1202 = bitcast %union.rec* %501 to %struct.head_type*
  %oopt_components1203 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1202, i32 0, i32 8
  %502 = load %union.rec*, %union.rec** %oopt_components1203, align 8
  %call1204 = call i32 @DisposeObject(%union.rec* %502)
  %503 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1205 = bitcast %union.rec* %503 to %struct.head_type*
  %oopt_components1206 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1205, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components1206, align 8
  %504 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1207 = bitcast %union.rec* %504 to %struct.head_type*
  %oopt_constraints1208 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1207, i32 0, i32 9
  %505 = load %union.rec*, %union.rec** %oopt_constraints1208, align 8
  %call1209 = call i32 @DisposeObject(%union.rec* %505)
  %506 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1210 = bitcast %union.rec* %506 to %struct.head_type*
  %oopt_constraints1211 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1210, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints1211, align 8
  %507 = load i32, i32* @AllowCrossDb, align 4
  %tobool1212 = icmp ne i32 %507, 0
  br i1 %tobool1212, label %if.then.1213, label %if.end.1238

if.then.1213:                                     ; preds = %for.end.1201
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %508 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os21214 = bitcast %union.rec* %508 to %struct.closure_type*
  %oactual1215 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21214, i32 0, i32 5
  %509 = load %union.rec*, %union.rec** %oactual1215, align 8
  %call1216 = call i8* @SymName(%union.rec* %509)
  %call1217 = call i8* @strcpy(i8* %arraydecay, i8* %call1216) #5
  %arraydecay1218 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1219 = call i8* @strcat(i8* %arraydecay1218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  %arraydecay1220 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %510 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11221 = bitcast %union.rec* %510 to %struct.word_type*
  %ou11222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11221, i32 0, i32 1
  %ofpos1223 = bitcast %union.FIRST_UNION* %ou11222 to %struct.FILE_POS*
  %oline_num1224 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1223, i32 0, i32 3
  %bf.load1225 = load i32, i32* %oline_num1224, align 4
  %bf.clear1226 = and i32 %bf.load1225, 1048575
  %call1227 = call i8* @StringInt(i32 %bf.clear1226)
  %call1228 = call i8* @strcat(i8* %arraydecay1220, i8* %call1227) #5
  %511 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11229 = bitcast %union.rec* %511 to %struct.word_type*
  %ou11230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11229, i32 0, i32 1
  %ofpos1231 = bitcast %union.FIRST_UNION* %ou11230 to %struct.FILE_POS*
  %call1232 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %ofpos1231)
  store i16 %call1232, i16* %fnum, align 2
  %512 = load %union.rec*, %union.rec** %og, align 8
  %513 = load i16, i16* %fnum, align 2
  call void @AppendToFile(%union.rec* %512, i16 zeroext %513, i32* %write_pos, i32* %write_lnum)
  %514 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %515 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %arraydecay1233 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %516 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11234 = bitcast %union.rec* %516 to %struct.word_type*
  %ou11235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11234, i32 0, i32 1
  %ofpos1236 = bitcast %union.FIRST_UNION* %ou11235 to %struct.FILE_POS*
  %517 = load i16, i16* %fnum, align 2
  %518 = load i32, i32* %write_pos, align 4
  %conv1237 = sext i32 %518 to i64
  %519 = load i32, i32* %write_lnum, align 4
  call void @DbInsert(%union.rec* %514, i32 0, %union.rec* %515, i8* %arraydecay1233, %struct.FILE_POS* %ofpos1236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i16 zeroext %517, i64 %conv1237, i32 %519, i32 0)
  br label %if.end.1238

if.end.1238:                                      ; preds = %if.then.225, %if.then.1213, %for.end.1201
  ret void
}

declare void @EnterErrorBlock(i32) #1

declare %union.rec* @FillObject(%union.rec*, %struct.CONSTRAINT*, %union.rec*, i32, i32, i32, i32*) #1

declare void @LeaveErrorBlock(i32) #1

declare %union.rec* @ChildSym(%union.rec*, i32) #1

declare zeroext i16 @DatabaseFileNum(%struct.FILE_POS*) #1

declare void @AppendToFile(%union.rec*, i16 zeroext, i32*, i32*) #1

declare void @DbInsert(%union.rec*, i32, %union.rec*, i8*, %struct.FILE_POS*, i8*, i16 zeroext, i64, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
