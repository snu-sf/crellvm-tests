; ModuleID = './MultiSource.Benchmarks.MiBench/67.consumer-typeset.z09.bc'
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
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"SearchEnv: env!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"SearchEnv: type(y) != CLOSURE!\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SearchEnv: LastDown(y) == y!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"SetEnv: x==nilobj or not CLOSURE!\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"SetEnv: y!=nilobj && type(y) != ENV!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"AttachEnv: type(env) != ENV!\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"AttachEnv: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GetEnv: type(x) != CLOSURE!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GetEnv: LastDown(x) == x!\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"GetEnv: type(env) != ENV!\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"DetachEnv: type(x) != CLOSURE!\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"DetachEnv: LastDown(x) == x!\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"DetachEnv: type(env) != ENV!\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"ClosureExpand given non-CLOSURE!\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ClosureExpand given predefined!\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ExpandCLosure: Down(par)!\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@xx_tmp = external global %union.rec*, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"no value for parameter %s of symbol %s:\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"symbol with import list misused\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"ClosureExpand: *res_env!\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"ParameterCheck given non-CLOSURE!\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"ParameterCheck: Down(par)!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @SearchEnv(%union.rec* %env, %union.rec* %sym) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %sym.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end.86, %entry
  %0 = load %union.rec*, %union.rec** %env.addr, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.cond
  %1 = load %union.rec*, %union.rec** %env.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 82
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.cond
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** %env.addr, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  %6 = load %union.rec*, %union.rec** %env.addr, align 8
  %cmp4 = icmp eq %union.rec* %5, %6
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %union.rec*, %union.rec** %env.addr, align 8
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
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.7
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os116 = bitcast %union.rec* %10 to %struct.word_type*
  %ou117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os1118 = bitcast %union.FIRST_UNION* %ou117 to %struct.anon*
  %otype19 = getelementptr inbounds %struct.anon, %struct.anon* %os1118, i32 0, i32 0
  %11 = load i8, i8* %otype19, align 1
  %conv20 = zext i8 %11 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os123 = bitcast %union.rec* %12 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %opred26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred26, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os127 = bitcast %union.rec* %14 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype30 = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  %15 = load i8, i8* %otype30, align 1
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp eq i32 %conv31, 2
  br i1 %cmp32, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %17 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %18 = load %union.rec*, %union.rec** %oactual, align 8
  %19 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp37 = icmp eq %union.rec* %18, %19
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %20 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %20, %union.rec** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os141 = bitcast %union.rec* %21 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred44, align 8
  %23 = load %union.rec*, %union.rec** %y, align 8
  %cmp45 = icmp ne %union.rec* %22, %23
  br i1 %cmp45, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.40
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call48 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.40
  %25 = load %union.rec*, %union.rec** %env.addr, align 8
  %os150 = bitcast %union.rec* %25 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %opred53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred53, align 8
  %27 = load %union.rec*, %union.rec** %env.addr, align 8
  %os154 = bitcast %union.rec* %27 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 0
  %osucc57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc57, align 8
  %cmp58 = icmp ne %union.rec* %26, %28
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.49
  %29 = load %union.rec*, %union.rec** %env.addr, align 8
  %os160 = bitcast %union.rec* %29 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %opred63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred63, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.49
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os164 = bitcast %union.rec* %31 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 0
  %opred67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred67, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %30, %cond.true ], [ %32, %cond.false ]
  store %union.rec* %cond, %union.rec** %link, align 8
  %33 = load %union.rec*, %union.rec** %link, align 8
  %os168 = bitcast %union.rec* %33 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred71, align 8
  store %union.rec* %34, %union.rec** %env.addr, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.81, %cond.end
  %35 = load %union.rec*, %union.rec** %env.addr, align 8
  %os173 = bitcast %union.rec* %35 to %struct.word_type*
  %ou174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 1
  %os1175 = bitcast %union.FIRST_UNION* %ou174 to %struct.anon*
  %otype76 = getelementptr inbounds %struct.anon, %struct.anon* %os1175, i32 0, i32 0
  %36 = load i8, i8* %otype76, align 1
  %conv77 = zext i8 %36 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %for.body.80, label %for.end.86

for.body.80:                                      ; preds = %for.cond.72
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.80
  %37 = load %union.rec*, %union.rec** %env.addr, align 8
  %os182 = bitcast %union.rec* %37 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 1
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %opred85, align 8
  store %union.rec* %38, %union.rec** %env.addr, align 8
  br label %for.cond.72

for.end.86:                                       ; preds = %for.cond.72
  br label %for.cond

return:                                           ; preds = %if.then.39, %if.then.6
  %39 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %39
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define %union.rec* @SetEnv(%union.rec* %x, %union.rec* %y) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y.addr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp3 = icmp eq %union.rec* %4, null
  br i1 %cmp3, label %if.end.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %union.rec*, %union.rec** %y.addr, align 8
  %os15 = bitcast %union.rec* %5 to %struct.word_type*
  %ou16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os117 = bitcast %union.FIRST_UNION* %ou16 to %struct.anon*
  %otype8 = getelementptr inbounds %struct.anon, %struct.anon* %os117, i32 0, i32 0
  %6 = load i8, i8* %otype8, align 1
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 82
  br i1 %cmp10, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %lor.lhs.false, %if.end
  %8 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %conv15 = zext i8 %8 to i32
  store i32 %conv15, i32* @zz_size, align 4
  %conv16 = sext i32 %conv15 to i64
  %cmp17 = icmp uge i64 %conv16, 265
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.14
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %9)
  br label %if.end.33

if.else:                                          ; preds = %if.end.14
  %10 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %11 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp21 = icmp eq %union.rec* %11, null
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else
  %12 = load i32, i32* @zz_size, align 4
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call24 = call %union.rec* @GetMemory(i32 %12, %struct.FILE_POS* %13)
  store %union.rec* %call24, %union.rec** @zz_hold, align 8
  br label %if.end.32

if.else.25:                                       ; preds = %if.else
  %14 = load i32, i32* @zz_size, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom26
  %15 = load %union.rec*, %union.rec** %arrayidx27, align 8
  store %union.rec* %15, %union.rec** @zz_hold, align 8
  store %union.rec* %15, %union.rec** @zz_hold, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %16 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred, align 8
  %18 = load i32, i32* @zz_size, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom30
  store %union.rec* %17, %union.rec** %arrayidx31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.25, %if.then.23
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.19
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os134 = bitcast %union.rec* %19 to %struct.word_type*
  %ou135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 1
  %os1136 = bitcast %union.FIRST_UNION* %ou135 to %struct.anon*
  %otype37 = getelementptr inbounds %struct.anon, %struct.anon* %os1136, i32 0, i32 0
  store i8 82, i8* %otype37, align 1
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os138 = bitcast %union.rec* %21 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 1
  store %union.rec* %20, %union.rec** %osucc, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %22 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 1
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  store %union.rec* %20, %union.rec** %opred44, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os145 = bitcast %union.rec* %23 to %struct.word_type*
  %olist46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist46, i32 0, i64 0
  %osucc48 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx47, i32 0, i32 1
  store %union.rec* %20, %union.rec** %osucc48, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os149 = bitcast %union.rec* %24 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 0
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  store %union.rec* %20, %union.rec** %opred52, align 8
  store %union.rec* %20, %union.rec** %res, align 8
  %25 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv53 = zext i8 %25 to i32
  store i32 %conv53, i32* @zz_size, align 4
  %conv54 = sext i32 %conv53 to i64
  %cmp55 = icmp uge i64 %conv54, 265
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.33
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call58 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %26)
  br label %if.end.76

if.else.59:                                       ; preds = %if.end.33
  %27 = load i32, i32* @zz_size, align 4
  %idxprom60 = sext i32 %27 to i64
  %arrayidx61 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom60
  %28 = load %union.rec*, %union.rec** %arrayidx61, align 8
  %cmp62 = icmp eq %union.rec* %28, null
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.59
  %29 = load i32, i32* @zz_size, align 4
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call65 = call %union.rec* @GetMemory(i32 %29, %struct.FILE_POS* %30)
  store %union.rec* %call65, %union.rec** @zz_hold, align 8
  br label %if.end.75

if.else.66:                                       ; preds = %if.else.59
  %31 = load i32, i32* @zz_size, align 4
  %idxprom67 = sext i32 %31 to i64
  %arrayidx68 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom67
  %32 = load %union.rec*, %union.rec** %arrayidx68, align 8
  store %union.rec* %32, %union.rec** @zz_hold, align 8
  store %union.rec* %32, %union.rec** @zz_hold, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %33 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 0
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred72, align 8
  %35 = load i32, i32* @zz_size, align 4
  %idxprom73 = sext i32 %35 to i64
  %arrayidx74 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom73
  store %union.rec* %34, %union.rec** %arrayidx74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.57
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os177 = bitcast %union.rec* %36 to %struct.word_type*
  %ou178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 1
  %os1179 = bitcast %union.FIRST_UNION* %ou178 to %struct.anon*
  %otype80 = getelementptr inbounds %struct.anon, %struct.anon* %os1179, i32 0, i32 0
  store i8 0, i8* %otype80, align 1
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %38 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 1
  %osucc84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 1
  store %union.rec* %37, %union.rec** %osucc84, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %39 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  store %union.rec* %37, %union.rec** %opred88, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os189 = bitcast %union.rec* %40 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 0
  %osucc92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 1
  store %union.rec* %37, %union.rec** %osucc92, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os193 = bitcast %union.rec* %41 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 0
  %opred96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 0
  store %union.rec* %37, %union.rec** %opred96, align 8
  store %union.rec* %37, %union.rec** @xx_link, align 8
  %42 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %42, %union.rec** @zz_res, align 8
  %43 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp97 = icmp eq %union.rec* %44, null
  br i1 %cmp97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  %45 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.131

cond.false:                                       ; preds = %if.end.76
  %46 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp99 = icmp eq %union.rec* %46, null
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.false
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.102:                                   ; preds = %cond.false
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %48 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 0
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred106, align 8
  store %union.rec* %49, %union.rec** @zz_tmp, align 8
  %50 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1107 = bitcast %union.rec* %50 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 0
  %opred110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred110, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %52 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 0
  %opred114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred114, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1115 = bitcast %union.rec* %54 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %opred118, align 8
  %os1119 = bitcast %union.rec* %55 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %osucc122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 1
  store %union.rec* %53, %union.rec** %osucc122, align 8
  %56 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1123 = bitcast %union.rec* %57 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 0
  %opred126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred126, align 8
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  %59 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1127 = bitcast %union.rec* %59 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 0
  %osucc130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 1
  store %union.rec* %58, %union.rec** %osucc130, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.102, %cond.true.101
  %cond = phi %union.rec* [ %47, %cond.true.101 ], [ %58, %cond.false.102 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end, %cond.true
  %cond132 = phi %union.rec* [ %45, %cond.true ], [ %cond, %cond.end ]
  %60 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %60, %union.rec** @zz_res, align 8
  %61 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %61, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp133 = icmp eq %union.rec* %62, null
  br i1 %cmp133, label %cond.true.135, label %cond.false.136

cond.true.135:                                    ; preds = %cond.end.131
  %63 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.171

cond.false.136:                                   ; preds = %cond.end.131
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp137 = icmp eq %union.rec* %64, null
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.false.136
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.169

cond.false.140:                                   ; preds = %cond.false.136
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1141 = bitcast %union.rec* %66 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 1
  %opred144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred144, align 8
  store %union.rec* %67, %union.rec** @zz_tmp, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1145 = bitcast %union.rec* %68 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 1
  %opred148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred148, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %70 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  store %union.rec* %69, %union.rec** %opred152, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1153 = bitcast %union.rec* %72 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 1
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  %73 = load %union.rec*, %union.rec** %opred156, align 8
  %os1157 = bitcast %union.rec* %73 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 1
  %osucc160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 1
  store %union.rec* %71, %union.rec** %osucc160, align 8
  %74 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1161 = bitcast %union.rec* %75 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  store %union.rec* %74, %union.rec** %opred164, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %77 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1165 = bitcast %union.rec* %77 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 1
  %osucc168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 1
  store %union.rec* %76, %union.rec** %osucc168, align 8
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.140, %cond.true.139
  %cond170 = phi %union.rec* [ %65, %cond.true.139 ], [ %76, %cond.false.140 ]
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.169, %cond.true.135
  %cond172 = phi %union.rec* [ %63, %cond.true.135 ], [ %cond170, %cond.end.169 ]
  %78 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp173 = icmp ne %union.rec* %78, null
  br i1 %cmp173, label %if.then.175, label %if.end.300

if.then.175:                                      ; preds = %cond.end.171
  %79 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv176 = zext i8 %79 to i32
  store i32 %conv176, i32* @zz_size, align 4
  %conv177 = sext i32 %conv176 to i64
  %cmp178 = icmp uge i64 %conv177, 265
  br i1 %cmp178, label %if.then.180, label %if.else.182

if.then.180:                                      ; preds = %if.then.175
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call181 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %80)
  br label %if.end.199

if.else.182:                                      ; preds = %if.then.175
  %81 = load i32, i32* @zz_size, align 4
  %idxprom183 = sext i32 %81 to i64
  %arrayidx184 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom183
  %82 = load %union.rec*, %union.rec** %arrayidx184, align 8
  %cmp185 = icmp eq %union.rec* %82, null
  br i1 %cmp185, label %if.then.187, label %if.else.189

if.then.187:                                      ; preds = %if.else.182
  %83 = load i32, i32* @zz_size, align 4
  %84 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call188 = call %union.rec* @GetMemory(i32 %83, %struct.FILE_POS* %84)
  store %union.rec* %call188, %union.rec** @zz_hold, align 8
  br label %if.end.198

if.else.189:                                      ; preds = %if.else.182
  %85 = load i32, i32* @zz_size, align 4
  %idxprom190 = sext i32 %85 to i64
  %arrayidx191 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom190
  %86 = load %union.rec*, %union.rec** %arrayidx191, align 8
  store %union.rec* %86, %union.rec** @zz_hold, align 8
  store %union.rec* %86, %union.rec** @zz_hold, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1192 = bitcast %union.rec* %87 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 0
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred195, align 8
  %89 = load i32, i32* @zz_size, align 4
  %idxprom196 = sext i32 %89 to i64
  %arrayidx197 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom196
  store %union.rec* %88, %union.rec** %arrayidx197, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.189, %if.then.187
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.180
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %otype203 = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 0
  store i8 0, i8* %otype203, align 1
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1204 = bitcast %union.rec* %92 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 1
  %osucc207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 1
  store %union.rec* %91, %union.rec** %osucc207, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1208 = bitcast %union.rec* %93 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 1
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred211, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1212 = bitcast %union.rec* %94 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %osucc215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 1
  store %union.rec* %91, %union.rec** %osucc215, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1216 = bitcast %union.rec* %95 to %struct.word_type*
  %olist217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist217, i32 0, i64 0
  %opred219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx218, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred219, align 8
  store %union.rec* %91, %union.rec** @xx_link, align 8
  %96 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %96, %union.rec** @zz_res, align 8
  %97 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %97, %union.rec** @zz_hold, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp220 = icmp eq %union.rec* %98, null
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %if.end.199
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.258

cond.false.223:                                   ; preds = %if.end.199
  %100 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp224 = icmp eq %union.rec* %100, null
  br i1 %cmp224, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %cond.false.223
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.256

cond.false.227:                                   ; preds = %cond.false.223
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %102 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 0
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred231, align 8
  store %union.rec* %103, %union.rec** @zz_tmp, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1232 = bitcast %union.rec* %104 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 0
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  %105 = load %union.rec*, %union.rec** %opred235, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %106 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 0
  %opred239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 0
  store %union.rec* %105, %union.rec** %opred239, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1240 = bitcast %union.rec* %108 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 0
  %opred243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 0
  %109 = load %union.rec*, %union.rec** %opred243, align 8
  %os1244 = bitcast %union.rec* %109 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 0
  %osucc247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 1
  store %union.rec* %107, %union.rec** %osucc247, align 8
  %110 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1248 = bitcast %union.rec* %111 to %struct.word_type*
  %olist249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist249, i32 0, i64 0
  %opred251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx250, i32 0, i32 0
  store %union.rec* %110, %union.rec** %opred251, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %113 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1252 = bitcast %union.rec* %113 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 0
  %osucc255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 1
  store %union.rec* %112, %union.rec** %osucc255, align 8
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.227, %cond.true.226
  %cond257 = phi %union.rec* [ %101, %cond.true.226 ], [ %112, %cond.false.227 ]
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.256, %cond.true.222
  %cond259 = phi %union.rec* [ %99, %cond.true.222 ], [ %cond257, %cond.end.256 ]
  %114 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %114, %union.rec** @zz_res, align 8
  %115 = load %union.rec*, %union.rec** %y.addr, align 8
  store %union.rec* %115, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp260 = icmp eq %union.rec* %116, null
  br i1 %cmp260, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %cond.end.258
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.298

cond.false.263:                                   ; preds = %cond.end.258
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp264 = icmp eq %union.rec* %118, null
  br i1 %cmp264, label %cond.true.266, label %cond.false.267

cond.true.266:                                    ; preds = %cond.false.263
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.296

cond.false.267:                                   ; preds = %cond.false.263
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1268 = bitcast %union.rec* %120 to %struct.word_type*
  %olist269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist269, i32 0, i64 1
  %opred271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx270, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred271, align 8
  store %union.rec* %121, %union.rec** @zz_tmp, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1272 = bitcast %union.rec* %122 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 1
  %opred275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred275, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1276 = bitcast %union.rec* %124 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 1
  %opred279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 0
  store %union.rec* %123, %union.rec** %opred279, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1280 = bitcast %union.rec* %126 to %struct.word_type*
  %olist281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist281, i32 0, i64 1
  %opred283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx282, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred283, align 8
  %os1284 = bitcast %union.rec* %127 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 1
  %osucc287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc287, align 8
  %128 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %129 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1288 = bitcast %union.rec* %129 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 1
  %opred291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred291, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1292 = bitcast %union.rec* %131 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 1
  %osucc295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 1
  store %union.rec* %130, %union.rec** %osucc295, align 8
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.267, %cond.true.266
  %cond297 = phi %union.rec* [ %119, %cond.true.266 ], [ %130, %cond.false.267 ]
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.end.296, %cond.true.262
  %cond299 = phi %union.rec* [ %117, %cond.true.262 ], [ %cond297, %cond.end.296 ]
  br label %if.end.300

if.end.300:                                       ; preds = %cond.end.298, %cond.end.171
  %132 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %132
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @AttachEnv(%union.rec* %env, %union.rec* %x) #0 {
entry:
  %env.addr = alloca %union.rec*, align 8
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %env.addr, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** %env.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 82
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %ou14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou14 to %struct.anon*
  %otype6 = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %5 = load i8, i8* %otype6, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.end.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %os110 = bitcast %union.rec* %6 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os1112 = bitcast %union.FIRST_UNION* %ou111 to %struct.anon*
  %otype13 = getelementptr inbounds %struct.anon, %struct.anon* %os1112, i32 0, i32 0
  %7 = load i8, i8* %otype13, align 1
  %conv14 = zext i8 %7 to i32
  %cmp15 = icmp eq i32 %conv14, 81
  br i1 %cmp15, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %lor.lhs.false
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %lor.lhs.false, %if.end
  %9 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv20 = zext i8 %9 to i32
  store i32 %conv20, i32* @zz_size, align 4
  %conv21 = sext i32 %conv20 to i64
  %cmp22 = icmp uge i64 %conv21, 265
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.19
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %10)
  br label %if.end.38

if.else:                                          ; preds = %if.end.19
  %11 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %12 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp26 = icmp eq %union.rec* %12, null
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else
  %13 = load i32, i32* @zz_size, align 4
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call29 = call %union.rec* @GetMemory(i32 %13, %struct.FILE_POS* %14)
  store %union.rec* %call29, %union.rec** @zz_hold, align 8
  br label %if.end.37

if.else.30:                                       ; preds = %if.else
  %15 = load i32, i32* @zz_size, align 4
  %idxprom31 = sext i32 %15 to i64
  %arrayidx32 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom31
  %16 = load %union.rec*, %union.rec** %arrayidx32, align 8
  store %union.rec* %16, %union.rec** @zz_hold, align 8
  store %union.rec* %16, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %17 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred, align 8
  %19 = load i32, i32* @zz_size, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom35
  store %union.rec* %18, %union.rec** %arrayidx36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.30, %if.then.28
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.24
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %20 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon*
  %otype42 = getelementptr inbounds %struct.anon, %struct.anon* %os1141, i32 0, i32 0
  store i8 0, i8* %otype42, align 1
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %22 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 1
  store %union.rec* %21, %union.rec** %osucc, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %23 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %21, %union.rec** %opred49, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %24 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  store %union.rec* %21, %union.rec** %osucc53, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %25 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 0
  %opred57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 0
  store %union.rec* %21, %union.rec** %opred57, align 8
  store %union.rec* %21, %union.rec** @xx_link, align 8
  %26 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %26, %union.rec** @zz_res, align 8
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %27, %union.rec** @zz_hold, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp58 = icmp eq %union.rec* %28, null
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.38
  %29 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.92

cond.false:                                       ; preds = %if.end.38
  %30 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp60 = icmp eq %union.rec* %30, null
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.63:                                    ; preds = %cond.false
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %32 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 0
  %opred67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred67, align 8
  store %union.rec* %33, %union.rec** @zz_tmp, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  %os168 = bitcast %union.rec* %34 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 0
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred71, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %36 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %opred75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 0
  store %union.rec* %35, %union.rec** %opred75, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %38 = load %union.rec*, %union.rec** @zz_res, align 8
  %os176 = bitcast %union.rec* %38 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred79, align 8
  %os180 = bitcast %union.rec* %39 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %osucc83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 1
  store %union.rec* %37, %union.rec** %osucc83, align 8
  %40 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  %os184 = bitcast %union.rec* %41 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 0
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred87, align 8
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  %43 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os188 = bitcast %union.rec* %43 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 0
  %osucc91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 1
  store %union.rec* %42, %union.rec** %osucc91, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.63, %cond.true.62
  %cond = phi %union.rec* [ %31, %cond.true.62 ], [ %42, %cond.false.63 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end, %cond.true
  %cond93 = phi %union.rec* [ %29, %cond.true ], [ %cond, %cond.end ]
  %44 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %44, %union.rec** @zz_res, align 8
  %45 = load %union.rec*, %union.rec** %env.addr, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp94 = icmp eq %union.rec* %46, null
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.end.92
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.132

cond.false.97:                                    ; preds = %cond.end.92
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp98 = icmp eq %union.rec* %48, null
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.false.97
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.130

cond.false.101:                                   ; preds = %cond.false.97
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %50 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 1
  %opred105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred105, align 8
  store %union.rec* %51, %union.rec** @zz_tmp, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1106 = bitcast %union.rec* %52 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 1
  %opred109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred109, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %54 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 1
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  store %union.rec* %53, %union.rec** %opred113, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1114 = bitcast %union.rec* %56 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 1
  %opred117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred117, align 8
  %os1118 = bitcast %union.rec* %57 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 1
  %osucc121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 1
  store %union.rec* %55, %union.rec** %osucc121, align 8
  %58 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1122 = bitcast %union.rec* %59 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 1
  %opred125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 0
  store %union.rec* %58, %union.rec** %opred125, align 8
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %61 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1126 = bitcast %union.rec* %61 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 1
  %osucc129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 1
  store %union.rec* %60, %union.rec** %osucc129, align 8
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.101, %cond.true.100
  %cond131 = phi %union.rec* [ %49, %cond.true.100 ], [ %60, %cond.false.101 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.96
  %cond133 = phi %union.rec* [ %47, %cond.true.96 ], [ %cond131, %cond.end.130 ]
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @GetEnv(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %4 = load %union.rec*, %union.rec** %opred, align 8
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3 = icmp ne %union.rec* %4, %5
  br i1 %cmp3, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %7 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred11, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred15, align 8
  store %union.rec* %9, %union.rec** %env, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load %union.rec*, %union.rec** %env, align 8
  %os116 = bitcast %union.rec* %10 to %struct.word_type*
  %ou117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os1118 = bitcast %union.FIRST_UNION* %ou117 to %struct.anon*
  %otype19 = getelementptr inbounds %struct.anon, %struct.anon* %os1118, i32 0, i32 0
  %11 = load i8, i8* %otype19, align 1
  %conv20 = zext i8 %11 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.rec*, %union.rec** %env, align 8
  %os123 = bitcast %union.rec* %12 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %opred26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred26, align 8
  store %union.rec* %13, %union.rec** %env, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.rec*, %union.rec** %env, align 8
  %os127 = bitcast %union.rec* %14 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype30 = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  %15 = load i8, i8* %otype30, align 1
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp eq i32 %conv31, 82
  br i1 %cmp32, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.end
  %17 = load %union.rec*, %union.rec** %env, align 8
  ret %union.rec* %17
}

; Function Attrs: nounwind uwtable
define %union.rec* @DetachEnv(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %4 = load %union.rec*, %union.rec** %opred, align 8
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3 = icmp ne %union.rec* %4, %5
  br i1 %cmp3, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %7 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred11, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred15, align 8
  store %union.rec* %9, %union.rec** %env, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load %union.rec*, %union.rec** %env, align 8
  %os116 = bitcast %union.rec* %10 to %struct.word_type*
  %ou117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os1118 = bitcast %union.FIRST_UNION* %ou117 to %struct.anon*
  %otype19 = getelementptr inbounds %struct.anon, %struct.anon* %os1118, i32 0, i32 0
  %11 = load i8, i8* %otype19, align 1
  %conv20 = zext i8 %11 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.rec*, %union.rec** %env, align 8
  %os123 = bitcast %union.rec* %12 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %opred26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred26, align 8
  store %union.rec* %13, %union.rec** %env, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %14 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 0
  %opred30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred30, align 8
  store %union.rec* %15, %union.rec** @xx_link, align 8
  %16 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %16, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os131 = bitcast %union.rec* %17 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp34 = icmp eq %union.rec* %18, %19
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os136 = bitcast %union.rec* %20 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 1
  %osucc39 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc39, align 8
  store %union.rec* %21, %union.rec** @zz_res, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os140 = bitcast %union.rec* %22 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %opred43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred43, align 8
  %24 = load %union.rec*, %union.rec** @zz_res, align 8
  %os144 = bitcast %union.rec* %24 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 1
  %opred47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 0
  store %union.rec* %23, %union.rec** %opred47, align 8
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os148 = bitcast %union.rec* %26 to %struct.word_type*
  %olist49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist49, i32 0, i64 1
  %opred51 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx50, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred51, align 8
  %os152 = bitcast %union.rec* %27 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 1
  %osucc55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 1
  store %union.rec* %25, %union.rec** %osucc55, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os156 = bitcast %union.rec* %29 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 1
  %osucc59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc59, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os160 = bitcast %union.rec* %30 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 1
  %opred63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 0
  store %union.rec* %28, %union.rec** %opred63, align 8
  %31 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %31, %cond.false ]
  %32 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %32, %union.rec** @zz_hold, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %33 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 0
  %osucc67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 1
  %34 = load %union.rec*, %union.rec** %osucc67, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp68 = icmp eq %union.rec* %34, %35
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end
  br label %cond.end.100

cond.false.71:                                    ; preds = %cond.end
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %36 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %osucc75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc75, align 8
  store %union.rec* %37, %union.rec** @zz_res, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os176 = bitcast %union.rec* %38 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred79, align 8
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %os180 = bitcast %union.rec* %40 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred83, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os184 = bitcast %union.rec* %42 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 0
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %opred87, align 8
  %os188 = bitcast %union.rec* %43 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 0
  %osucc91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 1
  store %union.rec* %41, %union.rec** %osucc91, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os192 = bitcast %union.rec* %45 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 0
  %osucc95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 1
  store %union.rec* %44, %union.rec** %osucc95, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os196 = bitcast %union.rec* %46 to %struct.word_type*
  %olist97 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist97, i32 0, i64 0
  %opred99 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx98, i32 0, i32 0
  store %union.rec* %44, %union.rec** %opred99, align 8
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.71, %cond.true.70
  %cond101 = phi %union.rec* [ null, %cond.true.70 ], [ %47, %cond.false.71 ]
  %48 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %49, %union.rec** @zz_hold, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 1
  %os11104 = bitcast %union.FIRST_UNION* %ou1103 to %struct.anon*
  %otype105 = getelementptr inbounds %struct.anon, %struct.anon* %os11104, i32 0, i32 0
  %51 = load i8, i8* %otype105, align 1
  %conv106 = zext i8 %51 to i32
  %cmp107 = icmp eq i32 %conv106, 11
  br i1 %cmp107, label %cond.true.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.100
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 1
  %os11111 = bitcast %union.FIRST_UNION* %ou1110 to %struct.anon*
  %otype112 = getelementptr inbounds %struct.anon, %struct.anon* %os11111, i32 0, i32 0
  %53 = load i8, i8* %otype112, align 1
  %conv113 = zext i8 %53 to i32
  %cmp114 = icmp eq i32 %conv113, 12
  br i1 %cmp114, label %cond.true.116, label %cond.false.121

cond.true.116:                                    ; preds = %lor.lhs.false, %cond.end.100
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 1
  %os11119 = bitcast %union.FIRST_UNION* %ou1118 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11119, i32 0, i32 1
  %55 = load i8, i8* %orec_size, align 1
  %conv120 = zext i8 %55 to i32
  br label %cond.end.128

cond.false.121:                                   ; preds = %lor.lhs.false
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1122 = bitcast %union.rec* %56 to %struct.word_type*
  %ou1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 1
  %os11124 = bitcast %union.FIRST_UNION* %ou1123 to %struct.anon*
  %otype125 = getelementptr inbounds %struct.anon, %struct.anon* %os11124, i32 0, i32 0
  %57 = load i8, i8* %otype125, align 1
  %idxprom = zext i8 %57 to i64
  %arrayidx126 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %58 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %58 to i32
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.121, %cond.true.116
  %cond129 = phi i32 [ %conv120, %cond.true.116 ], [ %conv127, %cond.false.121 ]
  store i32 %cond129, i32* @zz_size, align 4
  %59 = load i32, i32* @zz_size, align 4
  %idxprom130 = sext i32 %59 to i64
  %arrayidx131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom130
  %60 = load %union.rec*, %union.rec** %arrayidx131, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %61 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  store %union.rec* %60, %union.rec** %opred135, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = load i32, i32* @zz_size, align 4
  %idxprom136 = sext i32 %63 to i64
  %arrayidx137 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom136
  store %union.rec* %62, %union.rec** %arrayidx137, align 8
  %64 = load %union.rec*, %union.rec** %env, align 8
  %os1138 = bitcast %union.rec* %64 to %struct.word_type*
  %ou1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 1
  %os11140 = bitcast %union.FIRST_UNION* %ou1139 to %struct.anon*
  %otype141 = getelementptr inbounds %struct.anon, %struct.anon* %os11140, i32 0, i32 0
  %65 = load i8, i8* %otype141, align 1
  %conv142 = zext i8 %65 to i32
  %cmp143 = icmp eq i32 %conv142, 82
  br i1 %cmp143, label %if.end.147, label %if.then.145

if.then.145:                                      ; preds = %cond.end.128
  %66 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %cond.end.128
  %67 = load %union.rec*, %union.rec** %env, align 8
  ret %union.rec* %67
}

; Function Attrs: nounwind uwtable
define %union.rec* @ClosureExpand(%union.rec* %x, %union.rec* %env, i32 %crs_wanted, %union.rec** %crs, %union.rec** %res_env) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %crs_wanted.addr = alloca i32, align 4
  %crs.addr = alloca %union.rec**, align 8
  %res_env.addr = alloca %union.rec**, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %prnt_env = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  store i32 %crs_wanted, i32* %crs_wanted.addr, align 4
  store %union.rec** %crs, %union.rec*** %crs.addr, align 8
  store %union.rec** %res_env, %union.rec*** %res_env.addr, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %3 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %4 = load %union.rec*, %union.rec** %oactual, align 8
  %os6 = bitcast %union.rec* %4 to %struct.symbol_type*
  %opredefined = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 12
  %5 = load i16, i16* %opredefined, align 2
  %conv2 = zext i16 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os28 = bitcast %union.rec* %7 to %struct.closure_type*
  %oactual9 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os28, i32 0, i32 5
  %8 = load %union.rec*, %union.rec** %oactual9, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ohas_tag = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %9 = bitcast [3 x i8]* %ohas_tag to i24*
  %bf.load = load i24, i24* %9, align 1
  %bf.lshr = lshr i24 %bf.load, 1
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @CrossAddTag(%union.rec* %10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %11 = load i32, i32* %crs_wanted.addr, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.362

land.lhs.true:                                    ; preds = %if.end.12
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os214 = bitcast %union.rec* %12 to %struct.closure_type*
  %oactual15 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os214, i32 0, i32 5
  %13 = load %union.rec*, %union.rec** %oactual15, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %ou217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 2
  %os2618 = bitcast %union.SECOND_UNION* %ou217 to %struct.anon.5*
  %ohas_tag19 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2618, i32 0, i32 1
  %14 = bitcast [3 x i8]* %ohas_tag19 to i24*
  %bf.load20 = load i24, i24* %14, align 1
  %bf.lshr21 = lshr i24 %bf.load20, 1
  %bf.clear22 = and i24 %bf.lshr21, 1
  %bf.cast23 = zext i24 %bf.clear22 to i32
  %tobool24 = icmp ne i32 %bf.cast23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.362

if.then.25:                                       ; preds = %land.lhs.true
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call26 = call %union.rec* @CopyObject(%union.rec* %15, %struct.FILE_POS* %16)
  store %union.rec* %call26, %union.rec** %tmp, align 8
  %17 = load %union.rec*, %union.rec** %env.addr, align 8
  %18 = load %union.rec*, %union.rec** %tmp, align 8
  call void @AttachEnv(%union.rec* %17, %union.rec* %18)
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os227 = bitcast %union.rec* %19 to %struct.closure_type*
  %oactual28 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os227, i32 0, i32 5
  %20 = load %union.rec*, %union.rec** %oactual28, align 8
  %21 = load %union.rec*, %union.rec** %tmp, align 8
  %call29 = call %union.rec* @CrossMake(%union.rec* %20, %union.rec* %21, i32 131)
  store %union.rec* %call29, %union.rec** %y, align 8
  %22 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 131), align 1
  %conv30 = zext i8 %22 to i32
  store i32 %conv30, i32* @zz_size, align 4
  %conv31 = sext i32 %conv30 to i64
  %cmp32 = icmp uge i64 %conv31, 265
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.25
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %23)
  br label %if.end.48

if.else:                                          ; preds = %if.then.25
  %24 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %25 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp36 = icmp eq %union.rec* %25, null
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.else
  %26 = load i32, i32* @zz_size, align 4
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call39 = call %union.rec* @GetMemory(i32 %26, %struct.FILE_POS* %27)
  store %union.rec* %call39, %union.rec** @zz_hold, align 8
  br label %if.end.47

if.else.40:                                       ; preds = %if.else
  %28 = load i32, i32* @zz_size, align 4
  %idxprom41 = sext i32 %28 to i64
  %arrayidx42 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom41
  %29 = load %union.rec*, %union.rec** %arrayidx42, align 8
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %30 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred, align 8
  %32 = load i32, i32* @zz_size, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom45
  store %union.rec* %31, %union.rec** %arrayidx46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.40, %if.then.38
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.34
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os149 = bitcast %union.rec* %33 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %os1151 = bitcast %union.FIRST_UNION* %ou150 to %struct.anon*
  %otype52 = getelementptr inbounds %struct.anon, %struct.anon* %os1151, i32 0, i32 0
  store i8 -125, i8* %otype52, align 1
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os153 = bitcast %union.rec* %35 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 1
  store %union.rec* %34, %union.rec** %osucc, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os156 = bitcast %union.rec* %36 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 1
  %opred59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 0
  store %union.rec* %34, %union.rec** %opred59, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os160 = bitcast %union.rec* %37 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %osucc63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 1
  store %union.rec* %34, %union.rec** %osucc63, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %38 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 0
  %opred67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 0
  store %union.rec* %34, %union.rec** %opred67, align 8
  store %union.rec* %34, %union.rec** %tmp, align 8
  %39 = load %union.rec*, %union.rec** %y, align 8
  %40 = load %union.rec*, %union.rec** %tmp, align 8
  %os268 = bitcast %union.rec* %40 to %struct.closure_type*
  %oactual69 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os268, i32 0, i32 5
  store %union.rec* %39, %union.rec** %oactual69, align 8
  %41 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv70 = zext i8 %41 to i32
  store i32 %conv70, i32* @zz_size, align 4
  %conv71 = sext i32 %conv70 to i64
  %cmp72 = icmp uge i64 %conv71, 265
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.end.48
  %42 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call75 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %42)
  br label %if.end.93

if.else.76:                                       ; preds = %if.end.48
  %43 = load i32, i32* @zz_size, align 4
  %idxprom77 = sext i32 %43 to i64
  %arrayidx78 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom77
  %44 = load %union.rec*, %union.rec** %arrayidx78, align 8
  %cmp79 = icmp eq %union.rec* %44, null
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.else.76
  %45 = load i32, i32* @zz_size, align 4
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call82 = call %union.rec* @GetMemory(i32 %45, %struct.FILE_POS* %46)
  store %union.rec* %call82, %union.rec** @zz_hold, align 8
  br label %if.end.92

if.else.83:                                       ; preds = %if.else.76
  %47 = load i32, i32* @zz_size, align 4
  %idxprom84 = sext i32 %47 to i64
  %arrayidx85 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom84
  %48 = load %union.rec*, %union.rec** %arrayidx85, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os186 = bitcast %union.rec* %49 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 0
  %opred89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %opred89, align 8
  %51 = load i32, i32* @zz_size, align 4
  %idxprom90 = sext i32 %51 to i64
  %arrayidx91 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom90
  store %union.rec* %50, %union.rec** %arrayidx91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.83, %if.then.81
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.74
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %52 to %struct.word_type*
  %ou195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 1
  %os1196 = bitcast %union.FIRST_UNION* %ou195 to %struct.anon*
  %otype97 = getelementptr inbounds %struct.anon, %struct.anon* %os1196, i32 0, i32 0
  store i8 0, i8* %otype97, align 1
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %54 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %osucc101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 1
  store %union.rec* %53, %union.rec** %osucc101, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %55 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 1
  %opred105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 0
  store %union.rec* %53, %union.rec** %opred105, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %56 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %osucc109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 1
  store %union.rec* %53, %union.rec** %osucc109, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %57 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  store %union.rec* %53, %union.rec** %opred113, align 8
  store %union.rec* %53, %union.rec** @xx_link, align 8
  %58 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %58, %union.rec** @zz_res, align 8
  %59 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp114 = icmp eq %union.rec* %60, null
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.93
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.148

cond.false:                                       ; preds = %if.end.93
  %62 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp116 = icmp eq %union.rec* %62, null
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %cond.false
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.119:                                   ; preds = %cond.false
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %64 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 0
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred123, align 8
  store %union.rec* %65, %union.rec** @zz_tmp, align 8
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1124 = bitcast %union.rec* %66 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred127, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %68 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred131, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1132 = bitcast %union.rec* %70 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %opred135, align 8
  %os1136 = bitcast %union.rec* %71 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %osucc139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc139, align 8
  %72 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1140 = bitcast %union.rec* %73 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred143, align 8
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1144 = bitcast %union.rec* %75 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  store %union.rec* %74, %union.rec** %osucc147, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.119, %cond.true.118
  %cond = phi %union.rec* [ %63, %cond.true.118 ], [ %74, %cond.false.119 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end, %cond.true
  %cond149 = phi %union.rec* [ %61, %cond.true ], [ %cond, %cond.end ]
  %76 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %76, %union.rec** @zz_res, align 8
  %77 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp150 = icmp eq %union.rec* %78, null
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %cond.end.148
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.188

cond.false.153:                                   ; preds = %cond.end.148
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp154 = icmp eq %union.rec* %80, null
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.false.153
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.186

cond.false.157:                                   ; preds = %cond.false.153
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1158 = bitcast %union.rec* %82 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 1
  %opred161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred161, align 8
  store %union.rec* %83, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1162 = bitcast %union.rec* %84 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 1
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %opred165, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %86 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 1
  %opred169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred169, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1170 = bitcast %union.rec* %88 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %opred173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %opred173, align 8
  %os1174 = bitcast %union.rec* %89 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 1
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc177, align 8
  %90 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1178 = bitcast %union.rec* %91 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 1
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred181, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %93 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1182 = bitcast %union.rec* %93 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 1
  %osucc185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 1
  store %union.rec* %92, %union.rec** %osucc185, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.157, %cond.true.156
  %cond187 = phi %union.rec* [ %81, %cond.true.156 ], [ %92, %cond.false.157 ]
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.end.186, %cond.true.152
  %cond189 = phi %union.rec* [ %79, %cond.true.152 ], [ %cond187, %cond.end.186 ]
  %94 = load %union.rec**, %union.rec*** %crs.addr, align 8
  %95 = load %union.rec*, %union.rec** %94, align 8
  %cmp190 = icmp eq %union.rec* %95, null
  br i1 %cmp190, label %if.then.192, label %if.end.237

if.then.192:                                      ; preds = %cond.end.188
  %96 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 148), align 1
  %conv193 = zext i8 %96 to i32
  store i32 %conv193, i32* @zz_size, align 4
  %conv194 = sext i32 %conv193 to i64
  %cmp195 = icmp uge i64 %conv194, 265
  br i1 %cmp195, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.then.192
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call198 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %97)
  br label %if.end.216

if.else.199:                                      ; preds = %if.then.192
  %98 = load i32, i32* @zz_size, align 4
  %idxprom200 = sext i32 %98 to i64
  %arrayidx201 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom200
  %99 = load %union.rec*, %union.rec** %arrayidx201, align 8
  %cmp202 = icmp eq %union.rec* %99, null
  br i1 %cmp202, label %if.then.204, label %if.else.206

if.then.204:                                      ; preds = %if.else.199
  %100 = load i32, i32* @zz_size, align 4
  %101 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call205 = call %union.rec* @GetMemory(i32 %100, %struct.FILE_POS* %101)
  store %union.rec* %call205, %union.rec** @zz_hold, align 8
  br label %if.end.215

if.else.206:                                      ; preds = %if.else.199
  %102 = load i32, i32* @zz_size, align 4
  %idxprom207 = sext i32 %102 to i64
  %arrayidx208 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom207
  %103 = load %union.rec*, %union.rec** %arrayidx208, align 8
  store %union.rec* %103, %union.rec** @zz_hold, align 8
  store %union.rec* %103, %union.rec** @zz_hold, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1209 = bitcast %union.rec* %104 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 0
  %opred212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 0
  %105 = load %union.rec*, %union.rec** %opred212, align 8
  %106 = load i32, i32* @zz_size, align 4
  %idxprom213 = sext i32 %106 to i64
  %arrayidx214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom213
  store %union.rec* %105, %union.rec** %arrayidx214, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.206, %if.then.204
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.197
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1217 = bitcast %union.rec* %107 to %struct.word_type*
  %ou1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 1
  %os11219 = bitcast %union.FIRST_UNION* %ou1218 to %struct.anon*
  %otype220 = getelementptr inbounds %struct.anon, %struct.anon* %os11219, i32 0, i32 0
  store i8 -108, i8* %otype220, align 1
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1221 = bitcast %union.rec* %109 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 1
  %osucc224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 1
  store %union.rec* %108, %union.rec** %osucc224, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1225 = bitcast %union.rec* %110 to %struct.word_type*
  %olist226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist226, i32 0, i64 1
  %opred228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx227, i32 0, i32 0
  store %union.rec* %108, %union.rec** %opred228, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1229 = bitcast %union.rec* %111 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 0
  %osucc232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 1
  store %union.rec* %108, %union.rec** %osucc232, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1233 = bitcast %union.rec* %112 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 0
  %opred236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 0
  store %union.rec* %108, %union.rec** %opred236, align 8
  %113 = load %union.rec**, %union.rec*** %crs.addr, align 8
  store %union.rec* %108, %union.rec** %113, align 8
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.216, %cond.end.188
  %114 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv238 = zext i8 %114 to i32
  store i32 %conv238, i32* @zz_size, align 4
  %conv239 = sext i32 %conv238 to i64
  %cmp240 = icmp uge i64 %conv239, 265
  br i1 %cmp240, label %if.then.242, label %if.else.244

if.then.242:                                      ; preds = %if.end.237
  %115 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call243 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %115)
  br label %if.end.261

if.else.244:                                      ; preds = %if.end.237
  %116 = load i32, i32* @zz_size, align 4
  %idxprom245 = sext i32 %116 to i64
  %arrayidx246 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom245
  %117 = load %union.rec*, %union.rec** %arrayidx246, align 8
  %cmp247 = icmp eq %union.rec* %117, null
  br i1 %cmp247, label %if.then.249, label %if.else.251

if.then.249:                                      ; preds = %if.else.244
  %118 = load i32, i32* @zz_size, align 4
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call250 = call %union.rec* @GetMemory(i32 %118, %struct.FILE_POS* %119)
  store %union.rec* %call250, %union.rec** @zz_hold, align 8
  br label %if.end.260

if.else.251:                                      ; preds = %if.else.244
  %120 = load i32, i32* @zz_size, align 4
  %idxprom252 = sext i32 %120 to i64
  %arrayidx253 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom252
  %121 = load %union.rec*, %union.rec** %arrayidx253, align 8
  store %union.rec* %121, %union.rec** @zz_hold, align 8
  store %union.rec* %121, %union.rec** @zz_hold, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1254 = bitcast %union.rec* %122 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 0
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred257, align 8
  %124 = load i32, i32* @zz_size, align 4
  %idxprom258 = sext i32 %124 to i64
  %arrayidx259 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom258
  store %union.rec* %123, %union.rec** %arrayidx259, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.251, %if.then.249
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.242
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1262 = bitcast %union.rec* %125 to %struct.word_type*
  %ou1263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 1
  %os11264 = bitcast %union.FIRST_UNION* %ou1263 to %struct.anon*
  %otype265 = getelementptr inbounds %struct.anon, %struct.anon* %os11264, i32 0, i32 0
  store i8 0, i8* %otype265, align 1
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1266 = bitcast %union.rec* %127 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 1
  %osucc269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc269, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1270 = bitcast %union.rec* %128 to %struct.word_type*
  %olist271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist271, i32 0, i64 1
  %opred273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx272, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred273, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1274 = bitcast %union.rec* %129 to %struct.word_type*
  %olist275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist275, i32 0, i64 0
  %osucc277 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx276, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc277, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1278 = bitcast %union.rec* %130 to %struct.word_type*
  %olist279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist279, i32 0, i64 0
  %opred281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx280, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred281, align 8
  store %union.rec* %126, %union.rec** @xx_link, align 8
  %131 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %131, %union.rec** @zz_res, align 8
  %132 = load %union.rec**, %union.rec*** %crs.addr, align 8
  %133 = load %union.rec*, %union.rec** %132, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp282 = icmp eq %union.rec* %134, null
  br i1 %cmp282, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %if.end.261
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.320

cond.false.285:                                   ; preds = %if.end.261
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp286 = icmp eq %union.rec* %136, null
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %cond.false.285
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.318

cond.false.289:                                   ; preds = %cond.false.285
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1290 = bitcast %union.rec* %138 to %struct.word_type*
  %olist291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1290, i32 0, i32 0
  %arrayidx292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist291, i32 0, i64 0
  %opred293 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx292, i32 0, i32 0
  %139 = load %union.rec*, %union.rec** %opred293, align 8
  store %union.rec* %139, %union.rec** @zz_tmp, align 8
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1294 = bitcast %union.rec* %140 to %struct.word_type*
  %olist295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1294, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist295, i32 0, i64 0
  %opred297 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx296, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %opred297, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1298 = bitcast %union.rec* %142 to %struct.word_type*
  %olist299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1298, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist299, i32 0, i64 0
  %opred301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx300, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred301, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1302 = bitcast %union.rec* %144 to %struct.word_type*
  %olist303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1302, i32 0, i32 0
  %arrayidx304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist303, i32 0, i64 0
  %opred305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx304, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %opred305, align 8
  %os1306 = bitcast %union.rec* %145 to %struct.word_type*
  %olist307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1306, i32 0, i32 0
  %arrayidx308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist307, i32 0, i64 0
  %osucc309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx308, i32 0, i32 1
  store %union.rec* %143, %union.rec** %osucc309, align 8
  %146 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1310 = bitcast %union.rec* %147 to %struct.word_type*
  %olist311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1310, i32 0, i32 0
  %arrayidx312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist311, i32 0, i64 0
  %opred313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx312, i32 0, i32 0
  store %union.rec* %146, %union.rec** %opred313, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %149 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1314 = bitcast %union.rec* %149 to %struct.word_type*
  %olist315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1314, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist315, i32 0, i64 0
  %osucc317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx316, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc317, align 8
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.289, %cond.true.288
  %cond319 = phi %union.rec* [ %137, %cond.true.288 ], [ %148, %cond.false.289 ]
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.end.318, %cond.true.284
  %cond321 = phi %union.rec* [ %135, %cond.true.284 ], [ %cond319, %cond.end.318 ]
  %150 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %150, %union.rec** @zz_res, align 8
  %151 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %151, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp322 = icmp eq %union.rec* %152, null
  br i1 %cmp322, label %cond.true.324, label %cond.false.325

cond.true.324:                                    ; preds = %cond.end.320
  %153 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.360

cond.false.325:                                   ; preds = %cond.end.320
  %154 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp326 = icmp eq %union.rec* %154, null
  br i1 %cmp326, label %cond.true.328, label %cond.false.329

cond.true.328:                                    ; preds = %cond.false.325
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.358

cond.false.329:                                   ; preds = %cond.false.325
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1330 = bitcast %union.rec* %156 to %struct.word_type*
  %olist331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist331, i32 0, i64 1
  %opred333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx332, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred333, align 8
  store %union.rec* %157, %union.rec** @zz_tmp, align 8
  %158 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1334 = bitcast %union.rec* %158 to %struct.word_type*
  %olist335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1334, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist335, i32 0, i64 1
  %opred337 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx336, i32 0, i32 0
  %159 = load %union.rec*, %union.rec** %opred337, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1338 = bitcast %union.rec* %160 to %struct.word_type*
  %olist339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist339, i32 0, i64 1
  %opred341 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx340, i32 0, i32 0
  store %union.rec* %159, %union.rec** %opred341, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %162 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1342 = bitcast %union.rec* %162 to %struct.word_type*
  %olist343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1342, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist343, i32 0, i64 1
  %opred345 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx344, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %opred345, align 8
  %os1346 = bitcast %union.rec* %163 to %struct.word_type*
  %olist347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1346, i32 0, i32 0
  %arrayidx348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist347, i32 0, i64 1
  %osucc349 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx348, i32 0, i32 1
  store %union.rec* %161, %union.rec** %osucc349, align 8
  %164 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1350 = bitcast %union.rec* %165 to %struct.word_type*
  %olist351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist351, i32 0, i64 1
  %opred353 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx352, i32 0, i32 0
  store %union.rec* %164, %union.rec** %opred353, align 8
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  %167 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1354 = bitcast %union.rec* %167 to %struct.word_type*
  %olist355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist355, i32 0, i64 1
  %osucc357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx356, i32 0, i32 1
  store %union.rec* %166, %union.rec** %osucc357, align 8
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.329, %cond.true.328
  %cond359 = phi %union.rec* [ %155, %cond.true.328 ], [ %166, %cond.false.329 ]
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.end.358, %cond.true.324
  %cond361 = phi %union.rec* [ %153, %cond.true.324 ], [ %cond359, %cond.end.358 ]
  br label %if.end.362

if.end.362:                                       ; preds = %cond.end.360, %land.lhs.true, %if.end.12
  %168 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  store %union.rec* null, %union.rec** %168, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %169 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2363 = bitcast %union.rec* %169 to %struct.closure_type*
  %oactual364 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2363, i32 0, i32 5
  %170 = load %union.rec*, %union.rec** %oactual364, align 8
  %os1365 = bitcast %union.rec* %170 to %struct.word_type*
  %ou1366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1365, i32 0, i32 1
  %os11367 = bitcast %union.FIRST_UNION* %ou1366 to %struct.anon*
  %otype368 = getelementptr inbounds %struct.anon, %struct.anon* %os11367, i32 0, i32 0
  %171 = load i8, i8* %otype368, align 1
  %conv369 = zext i8 %171 to i32
  %cmp370 = icmp sge i32 %conv369, 144
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.892

land.lhs.true.372:                                ; preds = %if.end.362
  %172 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2373 = bitcast %union.rec* %172 to %struct.closure_type*
  %oactual374 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2373, i32 0, i32 5
  %173 = load %union.rec*, %union.rec** %oactual374, align 8
  %os1375 = bitcast %union.rec* %173 to %struct.word_type*
  %ou1376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1375, i32 0, i32 1
  %os11377 = bitcast %union.FIRST_UNION* %ou1376 to %struct.anon*
  %otype378 = getelementptr inbounds %struct.anon, %struct.anon* %os11377, i32 0, i32 0
  %174 = load i8, i8* %otype378, align 1
  %conv379 = zext i8 %174 to i32
  %cmp380 = icmp sle i32 %conv379, 146
  br i1 %cmp380, label %if.then.382, label %if.end.892

if.then.382:                                      ; preds = %land.lhs.true.372
  %175 = load %union.rec*, %union.rec** %env.addr, align 8
  %176 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2383 = bitcast %union.rec* %176 to %struct.closure_type*
  %oactual384 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2383, i32 0, i32 5
  %177 = load %union.rec*, %union.rec** %oactual384, align 8
  %os6385 = bitcast %union.rec* %177 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6385, i32 0, i32 3
  %178 = load %union.rec*, %union.rec** %oenclosing, align 8
  %call386 = call %union.rec* @SearchEnv(%union.rec* %175, %union.rec* %178)
  store %union.rec* %call386, %union.rec** %prnt, align 8
  %179 = load %union.rec*, %union.rec** %prnt, align 8
  %cmp387 = icmp ne %union.rec* %179, null
  br i1 %cmp387, label %if.then.389, label %if.else.867

if.then.389:                                      ; preds = %if.then.382
  %180 = load %union.rec*, %union.rec** %prnt, align 8
  %call390 = call %union.rec* @GetEnv(%union.rec* %180)
  store %union.rec* %call390, %union.rec** %prnt_env, align 8
  %181 = load %union.rec*, %union.rec** %prnt, align 8
  %os1391 = bitcast %union.rec* %181 to %struct.word_type*
  %olist392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 0
  %arrayidx393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist392, i32 0, i64 0
  %osucc394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx393, i32 0, i32 1
  %182 = load %union.rec*, %union.rec** %osucc394, align 8
  store %union.rec* %182, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.861, %if.then.389
  %183 = load %union.rec*, %union.rec** %link, align 8
  %184 = load %union.rec*, %union.rec** %prnt, align 8
  %cmp395 = icmp ne %union.rec* %183, %184
  br i1 %cmp395, label %for.body, label %for.end.866

for.body:                                         ; preds = %for.cond
  %185 = load %union.rec*, %union.rec** %link, align 8
  %os1397 = bitcast %union.rec* %185 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 1
  %opred400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 0
  %186 = load %union.rec*, %union.rec** %opred400, align 8
  store %union.rec* %186, %union.rec** %par, align 8
  br label %for.cond.401

for.cond.401:                                     ; preds = %for.inc, %for.body
  %187 = load %union.rec*, %union.rec** %par, align 8
  %os1402 = bitcast %union.rec* %187 to %struct.word_type*
  %ou1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 1
  %os11404 = bitcast %union.FIRST_UNION* %ou1403 to %struct.anon*
  %otype405 = getelementptr inbounds %struct.anon, %struct.anon* %os11404, i32 0, i32 0
  %188 = load i8, i8* %otype405, align 1
  %conv406 = zext i8 %188 to i32
  %cmp407 = icmp eq i32 %conv406, 0
  br i1 %cmp407, label %for.body.409, label %for.end

for.body.409:                                     ; preds = %for.cond.401
  br label %for.inc

for.inc:                                          ; preds = %for.body.409
  %189 = load %union.rec*, %union.rec** %par, align 8
  %os1410 = bitcast %union.rec* %189 to %struct.word_type*
  %olist411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1410, i32 0, i32 0
  %arrayidx412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist411, i32 0, i64 1
  %opred413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx412, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %opred413, align 8
  store %union.rec* %190, %union.rec** %par, align 8
  br label %for.cond.401

for.end:                                          ; preds = %for.cond.401
  %191 = load %union.rec*, %union.rec** %par, align 8
  %os1414 = bitcast %union.rec* %191 to %struct.word_type*
  %ou1415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1414, i32 0, i32 1
  %os11416 = bitcast %union.FIRST_UNION* %ou1415 to %struct.anon*
  %otype417 = getelementptr inbounds %struct.anon, %struct.anon* %os11416, i32 0, i32 0
  %192 = load i8, i8* %otype417, align 1
  %conv418 = zext i8 %192 to i32
  %cmp419 = icmp eq i32 %conv418, 10
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.860

land.lhs.true.421:                                ; preds = %for.end
  %193 = load %union.rec*, %union.rec** %par, align 8
  %os2422 = bitcast %union.rec* %193 to %struct.closure_type*
  %oactual423 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2422, i32 0, i32 5
  %194 = load %union.rec*, %union.rec** %oactual423, align 8
  %195 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2424 = bitcast %union.rec* %195 to %struct.closure_type*
  %oactual425 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2424, i32 0, i32 5
  %196 = load %union.rec*, %union.rec** %oactual425, align 8
  %cmp426 = icmp eq %union.rec* %194, %196
  br i1 %cmp426, label %if.then.428, label %if.end.860

if.then.428:                                      ; preds = %land.lhs.true.421
  %197 = load %union.rec*, %union.rec** %par, align 8
  %os1429 = bitcast %union.rec* %197 to %struct.word_type*
  %olist430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1429, i32 0, i32 0
  %arrayidx431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist430, i32 0, i64 0
  %osucc432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx431, i32 0, i32 1
  %198 = load %union.rec*, %union.rec** %osucc432, align 8
  %199 = load %union.rec*, %union.rec** %par, align 8
  %cmp433 = icmp ne %union.rec* %198, %199
  br i1 %cmp433, label %if.end.437, label %if.then.435

if.then.435:                                      ; preds = %if.then.428
  %200 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call436 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.435, %if.then.428
  %201 = load %union.rec*, %union.rec** %par, align 8
  %os1438 = bitcast %union.rec* %201 to %struct.word_type*
  %olist439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1438, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist439, i32 0, i64 0
  %osucc441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx440, i32 0, i32 1
  %202 = load %union.rec*, %union.rec** %osucc441, align 8
  %os1442 = bitcast %union.rec* %202 to %struct.word_type*
  %olist443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 0
  %arrayidx444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist443, i32 0, i64 1
  %opred445 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx444, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %opred445, align 8
  store %union.rec* %203, %union.rec** %res, align 8
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.455, %if.end.437
  %204 = load %union.rec*, %union.rec** %res, align 8
  %os1447 = bitcast %union.rec* %204 to %struct.word_type*
  %ou1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1447, i32 0, i32 1
  %os11449 = bitcast %union.FIRST_UNION* %ou1448 to %struct.anon*
  %otype450 = getelementptr inbounds %struct.anon, %struct.anon* %os11449, i32 0, i32 0
  %205 = load i8, i8* %otype450, align 1
  %conv451 = zext i8 %205 to i32
  %cmp452 = icmp eq i32 %conv451, 0
  br i1 %cmp452, label %for.body.454, label %for.end.460

for.body.454:                                     ; preds = %for.cond.446
  br label %for.inc.455

for.inc.455:                                      ; preds = %for.body.454
  %206 = load %union.rec*, %union.rec** %res, align 8
  %os1456 = bitcast %union.rec* %206 to %struct.word_type*
  %olist457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist457, i32 0, i64 1
  %opred459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx458, i32 0, i32 0
  %207 = load %union.rec*, %union.rec** %opred459, align 8
  store %union.rec* %207, %union.rec** %res, align 8
  br label %for.cond.446

for.end.460:                                      ; preds = %for.cond.446
  %208 = load %union.rec*, %union.rec** %par, align 8
  %os2461 = bitcast %union.rec* %208 to %struct.closure_type*
  %oactual462 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2461, i32 0, i32 5
  %209 = load %union.rec*, %union.rec** %oactual462, align 8
  %os6463 = bitcast %union.rec* %209 to %struct.symbol_type*
  %oenclosing464 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6463, i32 0, i32 3
  %210 = load %union.rec*, %union.rec** %oenclosing464, align 8
  %os1465 = bitcast %union.rec* %210 to %struct.word_type*
  %ou2466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 2
  %os26467 = bitcast %union.SECOND_UNION* %ou2466 to %struct.anon.5*
  %odirty = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26467, i32 0, i32 1
  %211 = bitcast [3 x i8]* %odirty to i24*
  %bf.load468 = load i24, i24* %211, align 1
  %bf.lshr469 = lshr i24 %bf.load468, 15
  %bf.clear470 = and i24 %bf.lshr469, 1
  %bf.cast471 = zext i24 %bf.clear470 to i32
  %tobool472 = icmp ne i32 %bf.cast471, 0
  br i1 %tobool472, label %if.then.481, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.460
  %212 = load %union.rec*, %union.rec** %par, align 8
  %os2473 = bitcast %union.rec* %212 to %struct.closure_type*
  %oactual474 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2473, i32 0, i32 5
  %213 = load %union.rec*, %union.rec** %oactual474, align 8
  %os6475 = bitcast %union.rec* %213 to %struct.symbol_type*
  %ois_enclose = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6475, i32 0, i32 16
  %bf.load476 = load i8, i8* %ois_enclose, align 2
  %bf.lshr477 = lshr i8 %bf.load476, 4
  %bf.clear478 = and i8 %bf.lshr477, 1
  %bf.cast479 = zext i8 %bf.clear478 to i32
  %tobool480 = icmp ne i32 %bf.cast479, 0
  br i1 %tobool480, label %if.then.481, label %if.else.483

if.then.481:                                      ; preds = %lor.lhs.false, %for.end.460
  %214 = load %union.rec*, %union.rec** %res, align 8
  %215 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call482 = call %union.rec* @CopyObject(%union.rec* %214, %struct.FILE_POS* %215)
  store %union.rec* %call482, %union.rec** %res, align 8
  br label %if.end.729

if.else.483:                                      ; preds = %lor.lhs.false
  %216 = load %union.rec*, %union.rec** %par, align 8
  %os1484 = bitcast %union.rec* %216 to %struct.word_type*
  %olist485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1484, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist485, i32 0, i64 0
  %osucc487 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx486, i32 0, i32 1
  %217 = load %union.rec*, %union.rec** %osucc487, align 8
  store %union.rec* %217, %union.rec** @xx_link, align 8
  %218 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %218, %union.rec** @zz_hold, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1488 = bitcast %union.rec* %219 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 1
  %osucc491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 1
  %220 = load %union.rec*, %union.rec** %osucc491, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp492 = icmp eq %union.rec* %220, %221
  br i1 %cmp492, label %cond.true.494, label %cond.false.495

cond.true.494:                                    ; preds = %if.else.483
  br label %cond.end.524

cond.false.495:                                   ; preds = %if.else.483
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1496 = bitcast %union.rec* %222 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 1
  %osucc499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 1
  %223 = load %union.rec*, %union.rec** %osucc499, align 8
  store %union.rec* %223, %union.rec** @zz_res, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1500 = bitcast %union.rec* %224 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 1
  %opred503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %opred503, align 8
  %226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1504 = bitcast %union.rec* %226 to %struct.word_type*
  %olist505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist505, i32 0, i64 1
  %opred507 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx506, i32 0, i32 0
  store %union.rec* %225, %union.rec** %opred507, align 8
  %227 = load %union.rec*, %union.rec** @zz_res, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1508 = bitcast %union.rec* %228 to %struct.word_type*
  %olist509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist509, i32 0, i64 1
  %opred511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx510, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %opred511, align 8
  %os1512 = bitcast %union.rec* %229 to %struct.word_type*
  %olist513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist513, i32 0, i64 1
  %osucc515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx514, i32 0, i32 1
  store %union.rec* %227, %union.rec** %osucc515, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1516 = bitcast %union.rec* %231 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 1
  %osucc519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 1
  store %union.rec* %230, %union.rec** %osucc519, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1520 = bitcast %union.rec* %232 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 1
  %opred523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 0
  store %union.rec* %230, %union.rec** %opred523, align 8
  %233 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.524

cond.end.524:                                     ; preds = %cond.false.495, %cond.true.494
  %cond525 = phi %union.rec* [ null, %cond.true.494 ], [ %233, %cond.false.495 ]
  %234 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %234, %union.rec** @zz_hold, align 8
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1526 = bitcast %union.rec* %235 to %struct.word_type*
  %olist527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1526, i32 0, i32 0
  %arrayidx528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist527, i32 0, i64 0
  %osucc529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx528, i32 0, i32 1
  %236 = load %union.rec*, %union.rec** %osucc529, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp530 = icmp eq %union.rec* %236, %237
  br i1 %cmp530, label %cond.true.532, label %cond.false.533

cond.true.532:                                    ; preds = %cond.end.524
  br label %cond.end.562

cond.false.533:                                   ; preds = %cond.end.524
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1534 = bitcast %union.rec* %238 to %struct.word_type*
  %olist535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1534, i32 0, i32 0
  %arrayidx536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist535, i32 0, i64 0
  %osucc537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx536, i32 0, i32 1
  %239 = load %union.rec*, %union.rec** %osucc537, align 8
  store %union.rec* %239, %union.rec** @zz_res, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1538 = bitcast %union.rec* %240 to %struct.word_type*
  %olist539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1538, i32 0, i32 0
  %arrayidx540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist539, i32 0, i64 0
  %opred541 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx540, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %opred541, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1542 = bitcast %union.rec* %242 to %struct.word_type*
  %olist543 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1542, i32 0, i32 0
  %arrayidx544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist543, i32 0, i64 0
  %opred545 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx544, i32 0, i32 0
  store %union.rec* %241, %union.rec** %opred545, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1546 = bitcast %union.rec* %244 to %struct.word_type*
  %olist547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1546, i32 0, i32 0
  %arrayidx548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist547, i32 0, i64 0
  %opred549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx548, i32 0, i32 0
  %245 = load %union.rec*, %union.rec** %opred549, align 8
  %os1550 = bitcast %union.rec* %245 to %struct.word_type*
  %olist551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1550, i32 0, i32 0
  %arrayidx552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist551, i32 0, i64 0
  %osucc553 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx552, i32 0, i32 1
  store %union.rec* %243, %union.rec** %osucc553, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1554 = bitcast %union.rec* %247 to %struct.word_type*
  %olist555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1554, i32 0, i32 0
  %arrayidx556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist555, i32 0, i64 0
  %osucc557 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx556, i32 0, i32 1
  store %union.rec* %246, %union.rec** %osucc557, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1558 = bitcast %union.rec* %248 to %struct.word_type*
  %olist559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1558, i32 0, i32 0
  %arrayidx560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist559, i32 0, i64 0
  %opred561 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx560, i32 0, i32 0
  store %union.rec* %246, %union.rec** %opred561, align 8
  %249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.533, %cond.true.532
  %cond563 = phi %union.rec* [ null, %cond.true.532 ], [ %249, %cond.false.533 ]
  %250 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %250, %union.rec** @zz_hold, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %251, %union.rec** @zz_hold, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1564 = bitcast %union.rec* %252 to %struct.word_type*
  %ou1565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1564, i32 0, i32 1
  %os11566 = bitcast %union.FIRST_UNION* %ou1565 to %struct.anon*
  %otype567 = getelementptr inbounds %struct.anon, %struct.anon* %os11566, i32 0, i32 0
  %253 = load i8, i8* %otype567, align 1
  %conv568 = zext i8 %253 to i32
  %cmp569 = icmp eq i32 %conv568, 11
  br i1 %cmp569, label %cond.true.579, label %lor.lhs.false.571

lor.lhs.false.571:                                ; preds = %cond.end.562
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1572 = bitcast %union.rec* %254 to %struct.word_type*
  %ou1573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1572, i32 0, i32 1
  %os11574 = bitcast %union.FIRST_UNION* %ou1573 to %struct.anon*
  %otype575 = getelementptr inbounds %struct.anon, %struct.anon* %os11574, i32 0, i32 0
  %255 = load i8, i8* %otype575, align 1
  %conv576 = zext i8 %255 to i32
  %cmp577 = icmp eq i32 %conv576, 12
  br i1 %cmp577, label %cond.true.579, label %cond.false.584

cond.true.579:                                    ; preds = %lor.lhs.false.571, %cond.end.562
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1580 = bitcast %union.rec* %256 to %struct.word_type*
  %ou1581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 1
  %os11582 = bitcast %union.FIRST_UNION* %ou1581 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11582, i32 0, i32 1
  %257 = load i8, i8* %orec_size, align 1
  %conv583 = zext i8 %257 to i32
  br label %cond.end.592

cond.false.584:                                   ; preds = %lor.lhs.false.571
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1585 = bitcast %union.rec* %258 to %struct.word_type*
  %ou1586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 1
  %os11587 = bitcast %union.FIRST_UNION* %ou1586 to %struct.anon*
  %otype588 = getelementptr inbounds %struct.anon, %struct.anon* %os11587, i32 0, i32 0
  %259 = load i8, i8* %otype588, align 1
  %idxprom589 = zext i8 %259 to i64
  %arrayidx590 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom589
  %260 = load i8, i8* %arrayidx590, align 1
  %conv591 = zext i8 %260 to i32
  br label %cond.end.592

cond.end.592:                                     ; preds = %cond.false.584, %cond.true.579
  %cond593 = phi i32 [ %conv583, %cond.true.579 ], [ %conv591, %cond.false.584 ]
  store i32 %cond593, i32* @zz_size, align 4
  %261 = load i32, i32* @zz_size, align 4
  %idxprom594 = sext i32 %261 to i64
  %arrayidx595 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom594
  %262 = load %union.rec*, %union.rec** %arrayidx595, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1596 = bitcast %union.rec* %263 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 0
  %opred599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 0
  store %union.rec* %262, %union.rec** %opred599, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = load i32, i32* @zz_size, align 4
  %idxprom600 = sext i32 %265 to i64
  %arrayidx601 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom600
  store %union.rec* %264, %union.rec** %arrayidx601, align 8
  %266 = load %union.rec*, %union.rec** %res, align 8
  %os1602 = bitcast %union.rec* %266 to %struct.word_type*
  %ou1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1603 to %struct.FILE_POS*
  %call604 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.FILE_POS* %ofpos)
  store %union.rec* %call604, %union.rec** %y, align 8
  %267 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv605 = zext i8 %267 to i32
  store i32 %conv605, i32* @zz_size, align 4
  %conv606 = sext i32 %conv605 to i64
  %cmp607 = icmp uge i64 %conv606, 265
  br i1 %cmp607, label %if.then.609, label %if.else.611

if.then.609:                                      ; preds = %cond.end.592
  %268 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call610 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %268)
  br label %if.end.628

if.else.611:                                      ; preds = %cond.end.592
  %269 = load i32, i32* @zz_size, align 4
  %idxprom612 = sext i32 %269 to i64
  %arrayidx613 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom612
  %270 = load %union.rec*, %union.rec** %arrayidx613, align 8
  %cmp614 = icmp eq %union.rec* %270, null
  br i1 %cmp614, label %if.then.616, label %if.else.618

if.then.616:                                      ; preds = %if.else.611
  %271 = load i32, i32* @zz_size, align 4
  %272 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call617 = call %union.rec* @GetMemory(i32 %271, %struct.FILE_POS* %272)
  store %union.rec* %call617, %union.rec** @zz_hold, align 8
  br label %if.end.627

if.else.618:                                      ; preds = %if.else.611
  %273 = load i32, i32* @zz_size, align 4
  %idxprom619 = sext i32 %273 to i64
  %arrayidx620 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom619
  %274 = load %union.rec*, %union.rec** %arrayidx620, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1621 = bitcast %union.rec* %275 to %struct.word_type*
  %olist622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1621, i32 0, i32 0
  %arrayidx623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist622, i32 0, i64 0
  %opred624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx623, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %opred624, align 8
  %277 = load i32, i32* @zz_size, align 4
  %idxprom625 = sext i32 %277 to i64
  %arrayidx626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom625
  store %union.rec* %276, %union.rec** %arrayidx626, align 8
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.618, %if.then.616
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.627, %if.then.609
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1629 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 1
  %os11631 = bitcast %union.FIRST_UNION* %ou1630 to %struct.anon*
  %otype632 = getelementptr inbounds %struct.anon, %struct.anon* %os11631, i32 0, i32 0
  store i8 0, i8* %otype632, align 1
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1633 = bitcast %union.rec* %280 to %struct.word_type*
  %olist634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1633, i32 0, i32 0
  %arrayidx635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist634, i32 0, i64 1
  %osucc636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx635, i32 0, i32 1
  store %union.rec* %279, %union.rec** %osucc636, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1637 = bitcast %union.rec* %281 to %struct.word_type*
  %olist638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 0
  %arrayidx639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist638, i32 0, i64 1
  %opred640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx639, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred640, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1641 = bitcast %union.rec* %282 to %struct.word_type*
  %olist642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 0
  %arrayidx643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist642, i32 0, i64 0
  %osucc644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx643, i32 0, i32 1
  store %union.rec* %279, %union.rec** %osucc644, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1645 = bitcast %union.rec* %283 to %struct.word_type*
  %olist646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1645, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist646, i32 0, i64 0
  %opred648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx647, i32 0, i32 0
  store %union.rec* %279, %union.rec** %opred648, align 8
  store %union.rec* %279, %union.rec** @xx_link, align 8
  %284 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %284, %union.rec** @zz_res, align 8
  %285 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %285, %union.rec** @zz_hold, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp649 = icmp eq %union.rec* %286, null
  br i1 %cmp649, label %cond.true.651, label %cond.false.652

cond.true.651:                                    ; preds = %if.end.628
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.687

cond.false.652:                                   ; preds = %if.end.628
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp653 = icmp eq %union.rec* %288, null
  br i1 %cmp653, label %cond.true.655, label %cond.false.656

cond.true.655:                                    ; preds = %cond.false.652
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.685

cond.false.656:                                   ; preds = %cond.false.652
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1657 = bitcast %union.rec* %290 to %struct.word_type*
  %olist658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1657, i32 0, i32 0
  %arrayidx659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist658, i32 0, i64 0
  %opred660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx659, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %opred660, align 8
  store %union.rec* %291, %union.rec** @zz_tmp, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1661 = bitcast %union.rec* %292 to %struct.word_type*
  %olist662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1661, i32 0, i32 0
  %arrayidx663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist662, i32 0, i64 0
  %opred664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx663, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %opred664, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1665 = bitcast %union.rec* %294 to %struct.word_type*
  %olist666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1665, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist666, i32 0, i64 0
  %opred668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx667, i32 0, i32 0
  store %union.rec* %293, %union.rec** %opred668, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1669 = bitcast %union.rec* %296 to %struct.word_type*
  %olist670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist670, i32 0, i64 0
  %opred672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx671, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred672, align 8
  %os1673 = bitcast %union.rec* %297 to %struct.word_type*
  %olist674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist674, i32 0, i64 0
  %osucc676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx675, i32 0, i32 1
  store %union.rec* %295, %union.rec** %osucc676, align 8
  %298 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1677 = bitcast %union.rec* %299 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 0
  %opred680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 0
  store %union.rec* %298, %union.rec** %opred680, align 8
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  %301 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1681 = bitcast %union.rec* %301 to %struct.word_type*
  %olist682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist682, i32 0, i64 0
  %osucc684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx683, i32 0, i32 1
  store %union.rec* %300, %union.rec** %osucc684, align 8
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.656, %cond.true.655
  %cond686 = phi %union.rec* [ %289, %cond.true.655 ], [ %300, %cond.false.656 ]
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.end.685, %cond.true.651
  %cond688 = phi %union.rec* [ %287, %cond.true.651 ], [ %cond686, %cond.end.685 ]
  %302 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %302, %union.rec** @zz_res, align 8
  %303 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %303, %union.rec** @zz_hold, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp689 = icmp eq %union.rec* %304, null
  br i1 %cmp689, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %cond.end.687
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.727

cond.false.692:                                   ; preds = %cond.end.687
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp693 = icmp eq %union.rec* %306, null
  br i1 %cmp693, label %cond.true.695, label %cond.false.696

cond.true.695:                                    ; preds = %cond.false.692
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.725

cond.false.696:                                   ; preds = %cond.false.692
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1697 = bitcast %union.rec* %308 to %struct.word_type*
  %olist698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist698, i32 0, i64 1
  %opred700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx699, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %opred700, align 8
  store %union.rec* %309, %union.rec** @zz_tmp, align 8
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1701 = bitcast %union.rec* %310 to %struct.word_type*
  %olist702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist702, i32 0, i64 1
  %opred704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx703, i32 0, i32 0
  %311 = load %union.rec*, %union.rec** %opred704, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1705 = bitcast %union.rec* %312 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 1
  %opred708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 0
  store %union.rec* %311, %union.rec** %opred708, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1709 = bitcast %union.rec* %314 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 1
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  %315 = load %union.rec*, %union.rec** %opred712, align 8
  %os1713 = bitcast %union.rec* %315 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 1
  %osucc716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 1
  store %union.rec* %313, %union.rec** %osucc716, align 8
  %316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %317 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1717 = bitcast %union.rec* %317 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 1
  %opred720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 0
  store %union.rec* %316, %union.rec** %opred720, align 8
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  %319 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1721 = bitcast %union.rec* %319 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 1
  %osucc724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 1
  store %union.rec* %318, %union.rec** %osucc724, align 8
  br label %cond.end.725

cond.end.725:                                     ; preds = %cond.false.696, %cond.true.695
  %cond726 = phi %union.rec* [ %307, %cond.true.695 ], [ %318, %cond.false.696 ]
  br label %cond.end.727

cond.end.727:                                     ; preds = %cond.end.725, %cond.true.691
  %cond728 = phi %union.rec* [ %305, %cond.true.691 ], [ %cond726, %cond.end.725 ]
  br label %if.end.729

if.end.729:                                       ; preds = %cond.end.727, %if.then.481
  %320 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %320, %union.rec** @zz_hold, align 8
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1730 = bitcast %union.rec* %321 to %struct.word_type*
  %olist731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1730, i32 0, i32 0
  %arrayidx732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist731, i32 0, i64 1
  %osucc733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx732, i32 0, i32 1
  %322 = load %union.rec*, %union.rec** %osucc733, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp734 = icmp eq %union.rec* %322, %323
  br i1 %cmp734, label %cond.true.736, label %cond.false.737

cond.true.736:                                    ; preds = %if.end.729
  br label %cond.end.766

cond.false.737:                                   ; preds = %if.end.729
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1738 = bitcast %union.rec* %324 to %struct.word_type*
  %olist739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 0
  %arrayidx740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist739, i32 0, i64 1
  %osucc741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx740, i32 0, i32 1
  %325 = load %union.rec*, %union.rec** %osucc741, align 8
  store %union.rec* %325, %union.rec** @zz_res, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1742 = bitcast %union.rec* %326 to %struct.word_type*
  %olist743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist743, i32 0, i64 1
  %opred745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx744, i32 0, i32 0
  %327 = load %union.rec*, %union.rec** %opred745, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1746 = bitcast %union.rec* %328 to %struct.word_type*
  %olist747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1746, i32 0, i32 0
  %arrayidx748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist747, i32 0, i64 1
  %opred749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx748, i32 0, i32 0
  store %union.rec* %327, %union.rec** %opred749, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1750 = bitcast %union.rec* %330 to %struct.word_type*
  %olist751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1750, i32 0, i32 0
  %arrayidx752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist751, i32 0, i64 1
  %opred753 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx752, i32 0, i32 0
  %331 = load %union.rec*, %union.rec** %opred753, align 8
  %os1754 = bitcast %union.rec* %331 to %struct.word_type*
  %olist755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1754, i32 0, i32 0
  %arrayidx756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist755, i32 0, i64 1
  %osucc757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx756, i32 0, i32 1
  store %union.rec* %329, %union.rec** %osucc757, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1758 = bitcast %union.rec* %333 to %struct.word_type*
  %olist759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1758, i32 0, i32 0
  %arrayidx760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist759, i32 0, i64 1
  %osucc761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx760, i32 0, i32 1
  store %union.rec* %332, %union.rec** %osucc761, align 8
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1762 = bitcast %union.rec* %334 to %struct.word_type*
  %olist763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1762, i32 0, i32 0
  %arrayidx764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist763, i32 0, i64 1
  %opred765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx764, i32 0, i32 0
  store %union.rec* %332, %union.rec** %opred765, align 8
  %335 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.766

cond.end.766:                                     ; preds = %cond.false.737, %cond.true.736
  %cond767 = phi %union.rec* [ null, %cond.true.736 ], [ %335, %cond.false.737 ]
  store %union.rec* %cond767, %union.rec** @xx_tmp, align 8
  %336 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %336, %union.rec** @zz_res, align 8
  %337 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp768 = icmp eq %union.rec* %338, null
  br i1 %cmp768, label %cond.true.770, label %cond.false.771

cond.true.770:                                    ; preds = %cond.end.766
  %339 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.806

cond.false.771:                                   ; preds = %cond.end.766
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp772 = icmp eq %union.rec* %340, null
  br i1 %cmp772, label %cond.true.774, label %cond.false.775

cond.true.774:                                    ; preds = %cond.false.771
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.804

cond.false.775:                                   ; preds = %cond.false.771
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1776 = bitcast %union.rec* %342 to %struct.word_type*
  %olist777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 0
  %arrayidx778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist777, i32 0, i64 1
  %opred779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx778, i32 0, i32 0
  %343 = load %union.rec*, %union.rec** %opred779, align 8
  store %union.rec* %343, %union.rec** @zz_tmp, align 8
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1780 = bitcast %union.rec* %344 to %struct.word_type*
  %olist781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1780, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist781, i32 0, i64 1
  %opred783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx782, i32 0, i32 0
  %345 = load %union.rec*, %union.rec** %opred783, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1784 = bitcast %union.rec* %346 to %struct.word_type*
  %olist785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 0
  %arrayidx786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist785, i32 0, i64 1
  %opred787 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx786, i32 0, i32 0
  store %union.rec* %345, %union.rec** %opred787, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1788 = bitcast %union.rec* %348 to %struct.word_type*
  %olist789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1788, i32 0, i32 0
  %arrayidx790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist789, i32 0, i64 1
  %opred791 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx790, i32 0, i32 0
  %349 = load %union.rec*, %union.rec** %opred791, align 8
  %os1792 = bitcast %union.rec* %349 to %struct.word_type*
  %olist793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 0
  %arrayidx794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist793, i32 0, i64 1
  %osucc795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx794, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc795, align 8
  %350 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1796 = bitcast %union.rec* %351 to %struct.word_type*
  %olist797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 0
  %arrayidx798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist797, i32 0, i64 1
  %opred799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx798, i32 0, i32 0
  store %union.rec* %350, %union.rec** %opred799, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %353 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1800 = bitcast %union.rec* %353 to %struct.word_type*
  %olist801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1800, i32 0, i32 0
  %arrayidx802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist801, i32 0, i64 1
  %osucc803 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx802, i32 0, i32 1
  store %union.rec* %352, %union.rec** %osucc803, align 8
  br label %cond.end.804

cond.end.804:                                     ; preds = %cond.false.775, %cond.true.774
  %cond805 = phi %union.rec* [ %341, %cond.true.774 ], [ %352, %cond.false.775 ]
  br label %cond.end.806

cond.end.806:                                     ; preds = %cond.end.804, %cond.true.770
  %cond807 = phi %union.rec* [ %339, %cond.true.770 ], [ %cond805, %cond.end.804 ]
  %354 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2808 = bitcast %union.rec* %354 to %struct.closure_type*
  %oactual809 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2808, i32 0, i32 5
  %355 = load %union.rec*, %union.rec** %oactual809, align 8
  %os1810 = bitcast %union.rec* %355 to %struct.word_type*
  %ou1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 1
  %os11812 = bitcast %union.FIRST_UNION* %ou1811 to %struct.anon*
  %otype813 = getelementptr inbounds %struct.anon, %struct.anon* %os11812, i32 0, i32 0
  %356 = load i8, i8* %otype813, align 1
  %conv814 = zext i8 %356 to i32
  %cmp815 = icmp eq i32 %conv814, 146
  br i1 %cmp815, label %land.lhs.true.817, label %if.else.833

land.lhs.true.817:                                ; preds = %cond.end.806
  %357 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2818 = bitcast %union.rec* %357 to %struct.closure_type*
  %oactual819 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2818, i32 0, i32 5
  %358 = load %union.rec*, %union.rec** %oactual819, align 8
  %os6820 = bitcast %union.rec* %358 to %struct.symbol_type*
  %oenclosing821 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6820, i32 0, i32 3
  %359 = load %union.rec*, %union.rec** %oenclosing821, align 8
  %os1822 = bitcast %union.rec* %359 to %struct.word_type*
  %ou2823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1822, i32 0, i32 2
  %os26824 = bitcast %union.SECOND_UNION* %ou2823 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26824, i32 0, i32 1
  %360 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load825 = load i24, i24* %360, align 1
  %bf.lshr826 = lshr i24 %bf.load825, 8
  %bf.clear827 = and i24 %bf.lshr826, 1
  %bf.cast828 = zext i24 %bf.clear827 to i32
  %tobool829 = icmp ne i32 %bf.cast828, 0
  br i1 %tobool829, label %if.then.830, label %if.else.833

if.then.830:                                      ; preds = %land.lhs.true.817
  %361 = load %union.rec*, %union.rec** %prnt, align 8
  %call831 = call %union.rec* @SetEnv(%union.rec* %361, %union.rec* null)
  %362 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  store %union.rec* %call831, %union.rec** %362, align 8
  %363 = load %union.rec*, %union.rec** %x.addr, align 8
  %call832 = call i32 @DisposeObject(%union.rec* %363)
  br label %if.end.859

if.else.833:                                      ; preds = %land.lhs.true.817, %cond.end.806
  %364 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2834 = bitcast %union.rec* %364 to %struct.closure_type*
  %oactual835 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2834, i32 0, i32 5
  %365 = load %union.rec*, %union.rec** %oactual835, align 8
  %os1836 = bitcast %union.rec* %365 to %struct.word_type*
  %ou1837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1836, i32 0, i32 1
  %os11838 = bitcast %union.FIRST_UNION* %ou1837 to %struct.anon*
  %otype839 = getelementptr inbounds %struct.anon, %struct.anon* %os11838, i32 0, i32 0
  %366 = load i8, i8* %otype839, align 1
  %conv840 = zext i8 %366 to i32
  %cmp841 = icmp eq i32 %conv840, 145
  br i1 %cmp841, label %land.lhs.true.843, label %if.else.856

land.lhs.true.843:                                ; preds = %if.else.833
  %367 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2844 = bitcast %union.rec* %367 to %struct.closure_type*
  %oactual845 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2844, i32 0, i32 5
  %368 = load %union.rec*, %union.rec** %oactual845, align 8
  %os1846 = bitcast %union.rec* %368 to %struct.word_type*
  %ou2847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 2
  %os26848 = bitcast %union.SECOND_UNION* %ou2847 to %struct.anon.5*
  %oimports_encl = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26848, i32 0, i32 1
  %369 = bitcast [3 x i8]* %oimports_encl to i24*
  %bf.load849 = load i24, i24* %369, align 1
  %bf.lshr850 = lshr i24 %bf.load849, 22
  %bf.clear851 = and i24 %bf.lshr850, 1
  %bf.cast852 = zext i24 %bf.clear851 to i32
  %tobool853 = icmp ne i32 %bf.cast852, 0
  br i1 %tobool853, label %if.then.854, label %if.else.856

if.then.854:                                      ; preds = %land.lhs.true.843
  %370 = load %union.rec*, %union.rec** %env.addr, align 8
  %371 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @AttachEnv(%union.rec* %370, %union.rec* %371)
  %372 = load %union.rec*, %union.rec** %x.addr, align 8
  %call855 = call %union.rec* @SetEnv(%union.rec* %372, %union.rec* null)
  %373 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  store %union.rec* %call855, %union.rec** %373, align 8
  br label %if.end.858

if.else.856:                                      ; preds = %land.lhs.true.843, %if.else.833
  %374 = load %union.rec*, %union.rec** %env.addr, align 8
  %375 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @AttachEnv(%union.rec* %374, %union.rec* %375)
  %376 = load %union.rec*, %union.rec** %x.addr, align 8
  %377 = load %union.rec*, %union.rec** %prnt_env, align 8
  %call857 = call %union.rec* @SetEnv(%union.rec* %376, %union.rec* %377)
  %378 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  store %union.rec* %call857, %union.rec** %378, align 8
  br label %if.end.858

if.end.858:                                       ; preds = %if.else.856, %if.then.854
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %if.then.830
  br label %for.end.866

if.end.860:                                       ; preds = %land.lhs.true.421, %for.end
  br label %for.inc.861

for.inc.861:                                      ; preds = %if.end.860
  %379 = load %union.rec*, %union.rec** %link, align 8
  %os1862 = bitcast %union.rec* %379 to %struct.word_type*
  %olist863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1862, i32 0, i32 0
  %arrayidx864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist863, i32 0, i64 0
  %osucc865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx864, i32 0, i32 1
  %380 = load %union.rec*, %union.rec** %osucc865, align 8
  store %union.rec* %380, %union.rec** %link, align 8
  br label %for.cond

for.end.866:                                      ; preds = %if.end.859, %for.cond
  br label %if.end.891

if.else.867:                                      ; preds = %if.then.382
  %381 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2868 = bitcast %union.rec* %381 to %struct.closure_type*
  %oactual869 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2868, i32 0, i32 5
  %382 = load %union.rec*, %union.rec** %oactual869, align 8
  %os6870 = bitcast %union.rec* %382 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6870, i32 0, i32 4
  %383 = load %union.rec*, %union.rec** %osym_body, align 8
  %cmp871 = icmp eq %union.rec* %383, null
  br i1 %cmp871, label %if.then.873, label %if.end.890

if.then.873:                                      ; preds = %if.else.867
  %384 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1874 = bitcast %union.rec* %384 to %struct.word_type*
  %ou1875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1874, i32 0, i32 1
  %ofpos876 = bitcast %union.FIRST_UNION* %ou1875 to %struct.FILE_POS*
  %385 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2877 = bitcast %union.rec* %385 to %struct.closure_type*
  %oactual878 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2877, i32 0, i32 5
  %386 = load %union.rec*, %union.rec** %oactual878, align 8
  %call879 = call i8* @SymName(%union.rec* %386)
  %387 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2880 = bitcast %union.rec* %387 to %struct.closure_type*
  %oactual881 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2880, i32 0, i32 5
  %388 = load %union.rec*, %union.rec** %oactual881, align 8
  %os6882 = bitcast %union.rec* %388 to %struct.symbol_type*
  %oenclosing883 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6882, i32 0, i32 3
  %389 = load %union.rec*, %union.rec** %oenclosing883, align 8
  %call884 = call i8* @SymName(%union.rec* %389)
  %call885 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 9, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos876, i8* %call879, i8* %call884)
  %390 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1886 = bitcast %union.rec* %390 to %struct.word_type*
  %ou1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1886, i32 0, i32 1
  %ofpos888 = bitcast %union.FIRST_UNION* %ou1887 to %struct.FILE_POS*
  %call889 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 9, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos888)
  br label %if.end.890

if.end.890:                                       ; preds = %if.then.873, %if.else.867
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %for.end.866
  br label %if.end.892

if.end.892:                                       ; preds = %if.end.891, %land.lhs.true.372, %if.end.362
  %391 = load %union.rec*, %union.rec** %res, align 8
  %cmp893 = icmp eq %union.rec* %391, null
  br i1 %cmp893, label %if.then.895, label %if.end.996

if.then.895:                                      ; preds = %if.end.892
  %392 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2896 = bitcast %union.rec* %392 to %struct.closure_type*
  %oactual897 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2896, i32 0, i32 5
  %393 = load %union.rec*, %union.rec** %oactual897, align 8
  %os6898 = bitcast %union.rec* %393 to %struct.symbol_type*
  %osym_body899 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6898, i32 0, i32 4
  %394 = load %union.rec*, %union.rec** %osym_body899, align 8
  %cmp900 = icmp eq %union.rec* %394, null
  br i1 %cmp900, label %if.then.902, label %if.else.907

if.then.902:                                      ; preds = %if.then.895
  %395 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1903 = bitcast %union.rec* %395 to %struct.word_type*
  %ou1904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1903, i32 0, i32 1
  %ofpos905 = bitcast %union.FIRST_UNION* %ou1904 to %struct.FILE_POS*
  %call906 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.FILE_POS* %ofpos905)
  store %union.rec* %call906, %union.rec** %res, align 8
  br label %if.end.916

if.else.907:                                      ; preds = %if.then.895
  %396 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2908 = bitcast %union.rec* %396 to %struct.closure_type*
  %oactual909 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2908, i32 0, i32 5
  %397 = load %union.rec*, %union.rec** %oactual909, align 8
  %os6910 = bitcast %union.rec* %397 to %struct.symbol_type*
  %osym_body911 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6910, i32 0, i32 4
  %398 = load %union.rec*, %union.rec** %osym_body911, align 8
  %399 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1912 = bitcast %union.rec* %399 to %struct.word_type*
  %ou1913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1912, i32 0, i32 1
  %ofpos914 = bitcast %union.FIRST_UNION* %ou1913 to %struct.FILE_POS*
  %call915 = call %union.rec* @CopyObject(%union.rec* %398, %struct.FILE_POS* %ofpos914)
  store %union.rec* %call915, %union.rec** %res, align 8
  br label %if.end.916

if.end.916:                                       ; preds = %if.else.907, %if.then.902
  %400 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1917 = bitcast %union.rec* %401 to %struct.word_type*
  %olist918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1917, i32 0, i32 0
  %arrayidx919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist918, i32 0, i64 1
  %osucc920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx919, i32 0, i32 1
  %402 = load %union.rec*, %union.rec** %osucc920, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp921 = icmp eq %union.rec* %402, %403
  br i1 %cmp921, label %cond.true.923, label %cond.false.924

cond.true.923:                                    ; preds = %if.end.916
  br label %cond.end.953

cond.false.924:                                   ; preds = %if.end.916
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1925 = bitcast %union.rec* %404 to %struct.word_type*
  %olist926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1925, i32 0, i32 0
  %arrayidx927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist926, i32 0, i64 1
  %osucc928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx927, i32 0, i32 1
  %405 = load %union.rec*, %union.rec** %osucc928, align 8
  store %union.rec* %405, %union.rec** @zz_res, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1929 = bitcast %union.rec* %406 to %struct.word_type*
  %olist930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1929, i32 0, i32 0
  %arrayidx931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist930, i32 0, i64 1
  %opred932 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx931, i32 0, i32 0
  %407 = load %union.rec*, %union.rec** %opred932, align 8
  %408 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1933 = bitcast %union.rec* %408 to %struct.word_type*
  %olist934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1933, i32 0, i32 0
  %arrayidx935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist934, i32 0, i64 1
  %opred936 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx935, i32 0, i32 0
  store %union.rec* %407, %union.rec** %opred936, align 8
  %409 = load %union.rec*, %union.rec** @zz_res, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1937 = bitcast %union.rec* %410 to %struct.word_type*
  %olist938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1937, i32 0, i32 0
  %arrayidx939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist938, i32 0, i64 1
  %opred940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx939, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %opred940, align 8
  %os1941 = bitcast %union.rec* %411 to %struct.word_type*
  %olist942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 0
  %arrayidx943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist942, i32 0, i64 1
  %osucc944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx943, i32 0, i32 1
  store %union.rec* %409, %union.rec** %osucc944, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1945 = bitcast %union.rec* %413 to %struct.word_type*
  %olist946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1945, i32 0, i32 0
  %arrayidx947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist946, i32 0, i64 1
  %osucc948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx947, i32 0, i32 1
  store %union.rec* %412, %union.rec** %osucc948, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1949 = bitcast %union.rec* %414 to %struct.word_type*
  %olist950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1949, i32 0, i32 0
  %arrayidx951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist950, i32 0, i64 1
  %opred952 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx951, i32 0, i32 0
  store %union.rec* %412, %union.rec** %opred952, align 8
  %415 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.953

cond.end.953:                                     ; preds = %cond.false.924, %cond.true.923
  %cond954 = phi %union.rec* [ null, %cond.true.923 ], [ %415, %cond.false.924 ]
  store %union.rec* %cond954, %union.rec** @xx_tmp, align 8
  %416 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %416, %union.rec** @zz_res, align 8
  %417 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %417, %union.rec** @zz_hold, align 8
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp955 = icmp eq %union.rec* %418, null
  br i1 %cmp955, label %cond.true.957, label %cond.false.958

cond.true.957:                                    ; preds = %cond.end.953
  %419 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.993

cond.false.958:                                   ; preds = %cond.end.953
  %420 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp959 = icmp eq %union.rec* %420, null
  br i1 %cmp959, label %cond.true.961, label %cond.false.962

cond.true.961:                                    ; preds = %cond.false.958
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.991

cond.false.962:                                   ; preds = %cond.false.958
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1963 = bitcast %union.rec* %422 to %struct.word_type*
  %olist964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1963, i32 0, i32 0
  %arrayidx965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist964, i32 0, i64 1
  %opred966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx965, i32 0, i32 0
  %423 = load %union.rec*, %union.rec** %opred966, align 8
  store %union.rec* %423, %union.rec** @zz_tmp, align 8
  %424 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1967 = bitcast %union.rec* %424 to %struct.word_type*
  %olist968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist968, i32 0, i64 1
  %opred970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx969, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %opred970, align 8
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1971 = bitcast %union.rec* %426 to %struct.word_type*
  %olist972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1971, i32 0, i32 0
  %arrayidx973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist972, i32 0, i64 1
  %opred974 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx973, i32 0, i32 0
  store %union.rec* %425, %union.rec** %opred974, align 8
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %428 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1975 = bitcast %union.rec* %428 to %struct.word_type*
  %olist976 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1975, i32 0, i32 0
  %arrayidx977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist976, i32 0, i64 1
  %opred978 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx977, i32 0, i32 0
  %429 = load %union.rec*, %union.rec** %opred978, align 8
  %os1979 = bitcast %union.rec* %429 to %struct.word_type*
  %olist980 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1979, i32 0, i32 0
  %arrayidx981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist980, i32 0, i64 1
  %osucc982 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx981, i32 0, i32 1
  store %union.rec* %427, %union.rec** %osucc982, align 8
  %430 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1983 = bitcast %union.rec* %431 to %struct.word_type*
  %olist984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist984, i32 0, i64 1
  %opred986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx985, i32 0, i32 0
  store %union.rec* %430, %union.rec** %opred986, align 8
  %432 = load %union.rec*, %union.rec** @zz_res, align 8
  %433 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1987 = bitcast %union.rec* %433 to %struct.word_type*
  %olist988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1987, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist988, i32 0, i64 1
  %osucc990 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx989, i32 0, i32 1
  store %union.rec* %432, %union.rec** %osucc990, align 8
  br label %cond.end.991

cond.end.991:                                     ; preds = %cond.false.962, %cond.true.961
  %cond992 = phi %union.rec* [ %421, %cond.true.961 ], [ %432, %cond.false.962 ]
  br label %cond.end.993

cond.end.993:                                     ; preds = %cond.end.991, %cond.true.957
  %cond994 = phi %union.rec* [ %419, %cond.true.957 ], [ %cond992, %cond.end.991 ]
  %434 = load %union.rec*, %union.rec** %env.addr, align 8
  %435 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @AttachEnv(%union.rec* %434, %union.rec* %435)
  %436 = load %union.rec*, %union.rec** %x.addr, align 8
  %call995 = call %union.rec* @SetEnv(%union.rec* %436, %union.rec* null)
  %437 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  store %union.rec* %call995, %union.rec** %437, align 8
  br label %if.end.996

if.end.996:                                       ; preds = %cond.end.993, %if.end.892
  %438 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  %439 = load %union.rec*, %union.rec** %438, align 8
  %cmp997 = icmp ne %union.rec* %439, null
  br i1 %cmp997, label %land.lhs.true.999, label %if.then.1007

land.lhs.true.999:                                ; preds = %if.end.996
  %440 = load %union.rec**, %union.rec*** %res_env.addr, align 8
  %441 = load %union.rec*, %union.rec** %440, align 8
  %os11000 = bitcast %union.rec* %441 to %struct.word_type*
  %ou11001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11000, i32 0, i32 1
  %os111002 = bitcast %union.FIRST_UNION* %ou11001 to %struct.anon*
  %otype1003 = getelementptr inbounds %struct.anon, %struct.anon* %os111002, i32 0, i32 0
  %442 = load i8, i8* %otype1003, align 1
  %conv1004 = zext i8 %442 to i32
  %cmp1005 = icmp eq i32 %conv1004, 82
  br i1 %cmp1005, label %if.end.1009, label %if.then.1007

if.then.1007:                                     ; preds = %land.lhs.true.999, %if.end.996
  %443 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1008 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %443, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.1009

if.end.1009:                                      ; preds = %if.then.1007, %land.lhs.true.999
  %444 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %444
}

declare void @CrossAddTag(%union.rec*) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @CrossMake(%union.rec*, %union.rec*, i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i8* @SymName(%union.rec*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @ParameterCheck(%union.rec* %x, %union.rec* %env) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %x.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %prnt_env = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %env.addr, align 8
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %4 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %oactual, align 8
  %os6 = bitcast %union.rec* %5 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %6 = load %union.rec*, %union.rec** %oenclosing, align 8
  %call2 = call %union.rec* @SearchEnv(%union.rec* %3, %union.rec* %6)
  store %union.rec* %call2, %union.rec** %prnt, align 8
  %7 = load %union.rec*, %union.rec** %prnt, align 8
  %cmp3 = icmp eq %union.rec* %7, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %prnt, align 8
  %call7 = call %union.rec* @GetEnv(%union.rec* %8)
  store %union.rec* %call7, %union.rec** %prnt_env, align 8
  %9 = load %union.rec*, %union.rec** %prnt, align 8
  %os18 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %10, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end.6
  %11 = load %union.rec*, %union.rec** %link, align 8
  %12 = load %union.rec*, %union.rec** %prnt, align 8
  %cmp9 = icmp ne %union.rec* %11, %12
  br i1 %cmp9, label %for.body, label %for.end.94

for.body:                                         ; preds = %for.cond
  %13 = load %union.rec*, %union.rec** %link, align 8
  %os111 = bitcast %union.rec* %13 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %14, %union.rec** %par, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %15 = load %union.rec*, %union.rec** %par, align 8
  %os115 = bitcast %union.rec* %15 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %16 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.14
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %17 = load %union.rec*, %union.rec** %par, align 8
  %os123 = bitcast %union.rec* %17 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %opred26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred26, align 8
  store %union.rec* %18, %union.rec** %par, align 8
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %19 = load %union.rec*, %union.rec** %par, align 8
  %os127 = bitcast %union.rec* %19 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype30 = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  %20 = load i8, i8* %otype30, align 1
  %conv31 = zext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv31, 10
  br i1 %cmp32, label %land.lhs.true, label %if.end.88

land.lhs.true:                                    ; preds = %for.end
  %21 = load %union.rec*, %union.rec** %par, align 8
  %os234 = bitcast %union.rec* %21 to %struct.closure_type*
  %oactual35 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os234, i32 0, i32 5
  %22 = load %union.rec*, %union.rec** %oactual35, align 8
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os236 = bitcast %union.rec* %23 to %struct.closure_type*
  %oactual37 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os236, i32 0, i32 5
  %24 = load %union.rec*, %union.rec** %oactual37, align 8
  %cmp38 = icmp eq %union.rec* %22, %24
  br i1 %cmp38, label %if.then.40, label %if.end.88

if.then.40:                                       ; preds = %land.lhs.true
  %25 = load %union.rec*, %union.rec** %par, align 8
  %os141 = bitcast %union.rec* %25 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %osucc44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc44, align 8
  %27 = load %union.rec*, %union.rec** %par, align 8
  %cmp45 = icmp ne %union.rec* %26, %27
  br i1 %cmp45, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.then.40
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call48 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.40
  %29 = load %union.rec*, %union.rec** %par, align 8
  %os150 = bitcast %union.rec* %29 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc53, align 8
  %os154 = bitcast %union.rec* %30 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 1
  %opred57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred57, align 8
  store %union.rec* %31, %union.rec** %y, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.67, %if.end.49
  %32 = load %union.rec*, %union.rec** %y, align 8
  %os159 = bitcast %union.rec* %32 to %struct.word_type*
  %ou160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 1
  %os1161 = bitcast %union.FIRST_UNION* %ou160 to %struct.anon*
  %otype62 = getelementptr inbounds %struct.anon, %struct.anon* %os1161, i32 0, i32 0
  %33 = load i8, i8* %otype62, align 1
  %conv63 = zext i8 %33 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %for.body.66, label %for.end.72

for.body.66:                                      ; preds = %for.cond.58
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.66
  %34 = load %union.rec*, %union.rec** %y, align 8
  %os168 = bitcast %union.rec* %34 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred71, align 8
  store %union.rec* %35, %union.rec** %y, align 8
  br label %for.cond.58

for.end.72:                                       ; preds = %for.cond.58
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os173 = bitcast %union.rec* %36 to %struct.word_type*
  %ou174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 1
  %os1175 = bitcast %union.FIRST_UNION* %ou174 to %struct.anon*
  %otype76 = getelementptr inbounds %struct.anon, %struct.anon* %os1175, i32 0, i32 0
  %37 = load i8, i8* %otype76, align 1
  %conv77 = zext i8 %37 to i32
  %cmp78 = icmp eq i32 %conv77, 11
  br i1 %cmp78, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.72
  %38 = load %union.rec*, %union.rec** %y, align 8
  %os180 = bitcast %union.rec* %38 to %struct.word_type*
  %ou181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 1
  %os1182 = bitcast %union.FIRST_UNION* %ou181 to %struct.anon*
  %otype83 = getelementptr inbounds %struct.anon, %struct.anon* %os1182, i32 0, i32 0
  %39 = load i8, i8* %otype83, align 1
  %conv84 = zext i8 %39 to i32
  %cmp85 = icmp eq i32 %conv84, 12
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %for.end.72
  %40 = load %union.rec*, %union.rec** %y, align 8
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call87 = call %union.rec* @CopyObject(%union.rec* %40, %struct.FILE_POS* %41)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %call87, %cond.true ], [ null, %cond.false ]
  store %union.rec* %cond, %union.rec** %res, align 8
  %42 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %42, %union.rec** %retval
  br label %return

if.end.88:                                        ; preds = %land.lhs.true, %for.end
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %43 = load %union.rec*, %union.rec** %link, align 8
  %os190 = bitcast %union.rec* %43 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 0
  %osucc93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 1
  %44 = load %union.rec*, %union.rec** %osucc93, align 8
  store %union.rec* %44, %union.rec** %link, align 8
  br label %for.cond

for.end.94:                                       ; preds = %for.cond
  %45 = load %union.rec*, %union.rec** %x.addr, align 8
  %os295 = bitcast %union.rec* %45 to %struct.closure_type*
  %oactual96 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os295, i32 0, i32 5
  %46 = load %union.rec*, %union.rec** %oactual96, align 8
  %os697 = bitcast %union.rec* %46 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os697, i32 0, i32 4
  %47 = load %union.rec*, %union.rec** %osym_body, align 8
  store %union.rec* %47, %union.rec** %y, align 8
  %48 = load %union.rec*, %union.rec** %y, align 8
  %cmp98 = icmp eq %union.rec* %48, null
  br i1 %cmp98, label %if.then.100, label %if.else

if.then.100:                                      ; preds = %for.end.94
  store %union.rec* null, %union.rec** %res, align 8
  br label %if.end.154

if.else:                                          ; preds = %for.end.94
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os1101 = bitcast %union.rec* %49 to %struct.word_type*
  %ou1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 1
  %os11103 = bitcast %union.FIRST_UNION* %ou1102 to %struct.anon*
  %otype104 = getelementptr inbounds %struct.anon, %struct.anon* %os11103, i32 0, i32 0
  %50 = load i8, i8* %otype104, align 1
  %conv105 = zext i8 %50 to i32
  %cmp106 = icmp eq i32 %conv105, 11
  br i1 %cmp106, label %if.then.116, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.else
  %51 = load %union.rec*, %union.rec** %y, align 8
  %os1109 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 1
  %os11111 = bitcast %union.FIRST_UNION* %ou1110 to %struct.anon*
  %otype112 = getelementptr inbounds %struct.anon, %struct.anon* %os11111, i32 0, i32 0
  %52 = load i8, i8* %otype112, align 1
  %conv113 = zext i8 %52 to i32
  %cmp114 = icmp eq i32 %conv113, 12
  br i1 %cmp114, label %if.then.116, label %if.else.121

if.then.116:                                      ; preds = %lor.lhs.false.108, %if.else
  %53 = load %union.rec*, %union.rec** %y, align 8
  %54 = load %union.rec*, %union.rec** %y, align 8
  %os1118 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1119 to %struct.FILE_POS*
  %call120 = call %union.rec* @CopyObject(%union.rec* %53, %struct.FILE_POS* %ofpos)
  store %union.rec* %call120, %union.rec** %res, align 8
  br label %if.end.153

if.else.121:                                      ; preds = %lor.lhs.false.108
  %55 = load %union.rec*, %union.rec** %y, align 8
  %os1122 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 1
  %os11124 = bitcast %union.FIRST_UNION* %ou1123 to %struct.anon*
  %otype125 = getelementptr inbounds %struct.anon, %struct.anon* %os11124, i32 0, i32 0
  %56 = load i8, i8* %otype125, align 1
  %conv126 = zext i8 %56 to i32
  %cmp127 = icmp eq i32 %conv126, 2
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.151

land.lhs.true.129:                                ; preds = %if.else.121
  %57 = load %union.rec*, %union.rec** %y, align 8
  %os2130 = bitcast %union.rec* %57 to %struct.closure_type*
  %oactual131 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2130, i32 0, i32 5
  %58 = load %union.rec*, %union.rec** %oactual131, align 8
  %os1132 = bitcast %union.rec* %58 to %struct.word_type*
  %ou1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 1
  %os11134 = bitcast %union.FIRST_UNION* %ou1133 to %struct.anon*
  %otype135 = getelementptr inbounds %struct.anon, %struct.anon* %os11134, i32 0, i32 0
  %59 = load i8, i8* %otype135, align 1
  %conv136 = zext i8 %59 to i32
  %cmp137 = icmp sge i32 %conv136, 144
  br i1 %cmp137, label %land.lhs.true.139, label %if.else.151

land.lhs.true.139:                                ; preds = %land.lhs.true.129
  %60 = load %union.rec*, %union.rec** %y, align 8
  %os2140 = bitcast %union.rec* %60 to %struct.closure_type*
  %oactual141 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2140, i32 0, i32 5
  %61 = load %union.rec*, %union.rec** %oactual141, align 8
  %os1142 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 1
  %os11144 = bitcast %union.FIRST_UNION* %ou1143 to %struct.anon*
  %otype145 = getelementptr inbounds %struct.anon, %struct.anon* %os11144, i32 0, i32 0
  %62 = load i8, i8* %otype145, align 1
  %conv146 = zext i8 %62 to i32
  %cmp147 = icmp sle i32 %conv146, 146
  br i1 %cmp147, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %land.lhs.true.139
  %63 = load %union.rec*, %union.rec** %y, align 8
  %64 = load %union.rec*, %union.rec** %prnt_env, align 8
  %call150 = call %union.rec* @ParameterCheck(%union.rec* %63, %union.rec* %64)
  store %union.rec* %call150, %union.rec** %res, align 8
  br label %if.end.152

if.else.151:                                      ; preds = %land.lhs.true.139, %land.lhs.true.129, %if.else.121
  store %union.rec* null, %union.rec** %res, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.151, %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.116
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.100
  %65 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %65, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.154, %cond.end, %if.then.5
  %66 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %66
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
