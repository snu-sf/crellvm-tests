; ModuleID = './MultiSource.Benchmarks.MiBench/39.consumer-typeset.z07.bc'
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
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.2 = type { i8, i8, i16 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"SplitIsDefinite: x not a SPLIT!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DisposeObject: x has a parent!\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_tmp = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"CopyObject: PAR child!\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CopyObject: CLOSURE!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CopyObject:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"InsertObject:\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Meld: type(x) != ACAT\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Meld: type(y) != ACAT\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s: maximum paragraph length (%d) exceeded\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"1s\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Meld: g!\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"DisposeSplitObject: type(x) != SPLIT!\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"DisposeSplitObject: x has no children!\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"DisposeSplitObject: x has one child!\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: children!\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: link (a)!\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: link (b)!\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SplitIsDefinite(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y1 = alloca %union.rec*, align 8
  %y2 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 9
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %y1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %union.rec*, %union.rec** %y1, align 8
  %os16 = bitcast %union.rec* %6 to %struct.word_type*
  %ou17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %os118 = bitcast %union.FIRST_UNION* %ou17 to %struct.anon*
  %otype9 = getelementptr inbounds %struct.anon, %struct.anon* %os118, i32 0, i32 0
  %7 = load i8, i8* %otype9, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %union.rec*, %union.rec** %y1, align 8
  %os113 = bitcast %union.rec* %8 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %opred16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred16, align 8
  store %union.rec* %9, %union.rec** %y1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %10 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 0
  %opred20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred20, align 8
  %os121 = bitcast %union.rec* %11 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %opred24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred24, align 8
  store %union.rec* %12, %union.rec** %y2, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.34, %for.end
  %13 = load %union.rec*, %union.rec** %y2, align 8
  %os126 = bitcast %union.rec* %13 to %struct.word_type*
  %ou127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 1
  %os1128 = bitcast %union.FIRST_UNION* %ou127 to %struct.anon*
  %otype29 = getelementptr inbounds %struct.anon, %struct.anon* %os1128, i32 0, i32 0
  %14 = load i8, i8* %otype29, align 1
  %conv30 = zext i8 %14 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.25
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.33
  %15 = load %union.rec*, %union.rec** %y2, align 8
  %os135 = bitcast %union.rec* %15 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred38, align 8
  store %union.rec* %16, %union.rec** %y2, align 8
  br label %for.cond.25

for.end.39:                                       ; preds = %for.cond.25
  %17 = load %union.rec*, %union.rec** %y1, align 8
  %os140 = bitcast %union.rec* %17 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %os1142 = bitcast %union.FIRST_UNION* %ou141 to %struct.anon*
  %otype43 = getelementptr inbounds %struct.anon, %struct.anon* %os1142, i32 0, i32 0
  %18 = load i8, i8* %otype43, align 1
  %conv44 = zext i8 %18 to i32
  %cmp45 = icmp sge i32 %conv44, 9
  br i1 %cmp45, label %land.lhs.true, label %land.end.69

land.lhs.true:                                    ; preds = %for.end.39
  %19 = load %union.rec*, %union.rec** %y1, align 8
  %os147 = bitcast %union.rec* %19 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %os1149 = bitcast %union.FIRST_UNION* %ou148 to %struct.anon*
  %otype50 = getelementptr inbounds %struct.anon, %struct.anon* %os1149, i32 0, i32 0
  %20 = load i8, i8* %otype50, align 1
  %conv51 = zext i8 %20 to i32
  %cmp52 = icmp sle i32 %conv51, 99
  br i1 %cmp52, label %land.rhs, label %land.end.69

land.rhs:                                         ; preds = %land.lhs.true
  %21 = load %union.rec*, %union.rec** %y2, align 8
  %os154 = bitcast %union.rec* %21 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %os1156 = bitcast %union.FIRST_UNION* %ou155 to %struct.anon*
  %otype57 = getelementptr inbounds %struct.anon, %struct.anon* %os1156, i32 0, i32 0
  %22 = load i8, i8* %otype57, align 1
  %conv58 = zext i8 %22 to i32
  %cmp59 = icmp sge i32 %conv58, 9
  br i1 %cmp59, label %land.rhs.61, label %land.end

land.rhs.61:                                      ; preds = %land.rhs
  %23 = load %union.rec*, %union.rec** %y2, align 8
  %os162 = bitcast %union.rec* %23 to %struct.word_type*
  %ou163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 1
  %os1164 = bitcast %union.FIRST_UNION* %ou163 to %struct.anon*
  %otype65 = getelementptr inbounds %struct.anon, %struct.anon* %os1164, i32 0, i32 0
  %24 = load i8, i8* %otype65, align 1
  %conv66 = zext i8 %24 to i32
  %cmp67 = icmp sle i32 %conv66, 99
  br label %land.end

land.end:                                         ; preds = %land.rhs.61, %land.rhs
  %25 = phi i1 [ false, %land.rhs ], [ %cmp67, %land.rhs.61 ]
  br label %land.end.69

land.end.69:                                      ; preds = %land.end, %land.lhs.true, %for.end.39
  %26 = phi i1 [ false, %land.lhs.true ], [ false, %for.end.39 ], [ %25, %land.end ]
  %land.ext = zext i1 %26 to i32
  ret i32 %land.ext
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @DisposeObject(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp eq %union.rec* %1, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 1
  %os112 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os112, i32 0, i32 0
  %5 = load i8, i8* %otype, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 9
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @DisposeSplitObject(%union.rec* %6)
  br label %if.end.172

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.132, %if.else
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 0
  %osucc9 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc9, align 8
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp10 = icmp ne %union.rec* %8, %9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os113 = bitcast %union.rec* %10 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 0
  %osucc16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %osucc16, align 8
  store %union.rec* %11, %union.rec** @xx_link, align 8
  %12 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %12, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os117 = bitcast %union.rec* %13 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %osucc20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 1
  %14 = load %union.rec*, %union.rec** %osucc20, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp21 = icmp eq %union.rec* %14, %15
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %16 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  %17 = load %union.rec*, %union.rec** %osucc26, align 8
  store %union.rec* %17, %union.rec** @zz_res, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %18 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred, align 8
  %20 = load %union.rec*, %union.rec** @zz_res, align 8
  %os130 = bitcast %union.rec* %20 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  store %union.rec* %19, %union.rec** %opred33, align 8
  %21 = load %union.rec*, %union.rec** @zz_res, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os134 = bitcast %union.rec* %22 to %struct.word_type*
  %olist35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist35, i32 0, i64 1
  %opred37 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx36, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred37, align 8
  %os138 = bitcast %union.rec* %23 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 1
  %osucc41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 1
  store %union.rec* %21, %union.rec** %osucc41, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os142 = bitcast %union.rec* %25 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 1
  %osucc45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 1
  store %union.rec* %24, %union.rec** %osucc45, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %26 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %24, %union.rec** %opred49, align 8
  %27 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %27, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %28 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %29 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc53, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp54 = icmp eq %union.rec* %30, %31
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end
  br label %cond.end.86

cond.false.57:                                    ; preds = %cond.end
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %32 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %osucc61, align 8
  store %union.rec* %33, %union.rec** @zz_res, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %34 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred65, align 8
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %os166 = bitcast %union.rec* %36 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %opred69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 0
  store %union.rec* %35, %union.rec** %opred69, align 8
  %37 = load %union.rec*, %union.rec** @zz_res, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %38 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred73, align 8
  %os174 = bitcast %union.rec* %39 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %osucc77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 1
  store %union.rec* %37, %union.rec** %osucc77, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %41 to %struct.word_type*
  %olist79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist79, i32 0, i64 0
  %osucc81 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc81, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %42 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred85, align 8
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.57, %cond.true.56
  %cond87 = phi %union.rec* [ null, %cond.true.56 ], [ %43, %cond.false.57 ]
  %44 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %44, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %46 to %struct.word_type*
  %ou189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 1
  %os1190 = bitcast %union.FIRST_UNION* %ou189 to %struct.anon*
  %otype91 = getelementptr inbounds %struct.anon, %struct.anon* %os1190, i32 0, i32 0
  %47 = load i8, i8* %otype91, align 1
  %conv92 = zext i8 %47 to i32
  %cmp93 = icmp eq i32 %conv92, 11
  br i1 %cmp93, label %cond.true.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.86
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %48 to %struct.word_type*
  %ou196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 1
  %os1197 = bitcast %union.FIRST_UNION* %ou196 to %struct.anon*
  %otype98 = getelementptr inbounds %struct.anon, %struct.anon* %os1197, i32 0, i32 0
  %49 = load i8, i8* %otype98, align 1
  %conv99 = zext i8 %49 to i32
  %cmp100 = icmp eq i32 %conv99, 12
  br i1 %cmp100, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %lor.lhs.false, %cond.end.86
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 1
  %os11105 = bitcast %union.FIRST_UNION* %ou1104 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11105, i32 0, i32 1
  %51 = load i8, i8* %orec_size, align 1
  %conv106 = zext i8 %51 to i32
  br label %cond.end.114

cond.false.107:                                   ; preds = %lor.lhs.false
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1108 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 1
  %os11110 = bitcast %union.FIRST_UNION* %ou1109 to %struct.anon*
  %otype111 = getelementptr inbounds %struct.anon, %struct.anon* %os11110, i32 0, i32 0
  %53 = load i8, i8* %otype111, align 1
  %idxprom = zext i8 %53 to i64
  %arrayidx112 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %54 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %54 to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.107, %cond.true.102
  %cond115 = phi i32 [ %conv106, %cond.true.102 ], [ %conv113, %cond.false.107 ]
  store i32 %cond115, i32* @zz_size, align 4
  %55 = load i32, i32* @zz_size, align 4
  %idxprom116 = sext i32 %55 to i64
  %arrayidx117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom116
  %56 = load %union.rec*, %union.rec** %arrayidx117, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %57 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred121, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = load i32, i32* @zz_size, align 4
  %idxprom122 = sext i32 %59 to i64
  %arrayidx123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom122
  store %union.rec* %58, %union.rec** %arrayidx123, align 8
  %60 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1124 = bitcast %union.rec* %60 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  %61 = load %union.rec*, %union.rec** %osucc127, align 8
  %62 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp128 = icmp eq %union.rec* %61, %62
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %cond.end.114
  %63 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call131 = call i32 @DisposeObject(%union.rec* %63)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %cond.end.114
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %64 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %64, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %65, %union.rec** @zz_hold, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1133 = bitcast %union.rec* %66 to %struct.word_type*
  %ou1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 1
  %os11135 = bitcast %union.FIRST_UNION* %ou1134 to %struct.anon*
  %otype136 = getelementptr inbounds %struct.anon, %struct.anon* %os11135, i32 0, i32 0
  %67 = load i8, i8* %otype136, align 1
  %conv137 = zext i8 %67 to i32
  %cmp138 = icmp eq i32 %conv137, 11
  br i1 %cmp138, label %cond.true.148, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %while.end
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1141 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 1
  %os11143 = bitcast %union.FIRST_UNION* %ou1142 to %struct.anon*
  %otype144 = getelementptr inbounds %struct.anon, %struct.anon* %os11143, i32 0, i32 0
  %69 = load i8, i8* %otype144, align 1
  %conv145 = zext i8 %69 to i32
  %cmp146 = icmp eq i32 %conv145, 12
  br i1 %cmp146, label %cond.true.148, label %cond.false.154

cond.true.148:                                    ; preds = %lor.lhs.false.140, %while.end
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 1
  %os11151 = bitcast %union.FIRST_UNION* %ou1150 to %struct.anon*
  %orec_size152 = getelementptr inbounds %struct.anon, %struct.anon* %os11151, i32 0, i32 1
  %71 = load i8, i8* %orec_size152, align 1
  %conv153 = zext i8 %71 to i32
  br label %cond.end.162

cond.false.154:                                   ; preds = %lor.lhs.false.140
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %72 to %struct.word_type*
  %ou1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 1
  %os11157 = bitcast %union.FIRST_UNION* %ou1156 to %struct.anon*
  %otype158 = getelementptr inbounds %struct.anon, %struct.anon* %os11157, i32 0, i32 0
  %73 = load i8, i8* %otype158, align 1
  %idxprom159 = zext i8 %73 to i64
  %arrayidx160 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom159
  %74 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %74 to i32
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.154, %cond.true.148
  %cond163 = phi i32 [ %conv153, %cond.true.148 ], [ %conv161, %cond.false.154 ]
  store i32 %cond163, i32* @zz_size, align 4
  %75 = load i32, i32* @zz_size, align 4
  %idxprom164 = sext i32 %75 to i64
  %arrayidx165 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom164
  %76 = load %union.rec*, %union.rec** %arrayidx165, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %77 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 0
  %opred169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 0
  store %union.rec* %76, %union.rec** %opred169, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = load i32, i32* @zz_size, align 4
  %idxprom170 = sext i32 %79 to i64
  %arrayidx171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom170
  store %union.rec* %78, %union.rec** %arrayidx171, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end.162, %if.then.5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @DisposeSplitObject(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %uplink = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 9
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3 = icmp ne %union.rec* %4, %5
  br i1 %cmp3, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %7 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os111 = bitcast %union.rec* %9 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 0
  %osucc14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc14, align 8
  %cmp15 = icmp ne %union.rec* %8, %10
  br i1 %cmp15, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.7
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.7
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os120 = bitcast %union.rec* %12 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 0
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred23, align 8
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os124 = bitcast %union.rec* %14 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 0
  %osucc27 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %osucc27, align 8
  %os128 = bitcast %union.rec* %15 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 0
  %osucc31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc31, align 8
  %cmp32 = icmp eq %union.rec* %13, %16
  br i1 %cmp32, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.end.19
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.19
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os137 = bitcast %union.rec* %18 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %osucc40, align 8
  %os141 = bitcast %union.rec* %19 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 1
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred44, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  store i32 1, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os145 = bitcast %union.rec* %21 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %os1147 = bitcast %union.FIRST_UNION* %ou146 to %struct.anon*
  %otype48 = getelementptr inbounds %struct.anon, %struct.anon* %os1147, i32 0, i32 0
  %22 = load i8, i8* %otype48, align 1
  %conv49 = zext i8 %22 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os152 = bitcast %union.rec* %23 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 1
  %opred55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred55, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  %25 = load i32, i32* %count, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os156 = bitcast %union.rec* %26 to %struct.word_type*
  %ou157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 1
  %os1158 = bitcast %union.FIRST_UNION* %ou157 to %struct.anon*
  %otype59 = getelementptr inbounds %struct.anon, %struct.anon* %os1158, i32 0, i32 0
  %27 = load i8, i8* %otype59, align 1
  %conv60 = zext i8 %27 to i32
  %cmp61 = icmp eq i32 %conv60, 16
  br i1 %cmp61, label %if.then.63, label %if.end.216

if.then.63:                                       ; preds = %for.end
  %28 = load %union.rec*, %union.rec** %y, align 8
  %os164 = bitcast %union.rec* %28 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 0
  %osucc67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %osucc67, align 8
  store %union.rec* %29, %union.rec** %link, align 8
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os168 = bitcast %union.rec* %30 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %osucc71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc71, align 8
  store %union.rec* %31, %union.rec** %uplink, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.80, %if.then.63
  %32 = load %union.rec*, %union.rec** %link, align 8
  %33 = load %union.rec*, %union.rec** %y, align 8
  %cmp73 = icmp ne %union.rec* %32, %33
  br i1 %cmp73, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.72
  %34 = load %union.rec*, %union.rec** %uplink, align 8
  %35 = load %union.rec*, %union.rec** %y, align 8
  %cmp75 = icmp ne %union.rec* %34, %35
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %count, align 4
  %cmp77 = icmp slt i32 %36, %37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.72
  %38 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.72 ], [ %cmp77, %land.rhs ]
  br i1 %38, label %for.body.79, label %for.end.90

for.body.79:                                      ; preds = %land.end
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.79
  %39 = load %union.rec*, %union.rec** %link, align 8
  %os181 = bitcast %union.rec* %39 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 0
  %osucc84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %osucc84, align 8
  store %union.rec* %40, %union.rec** %link, align 8
  %41 = load %union.rec*, %union.rec** %uplink, align 8
  %os185 = bitcast %union.rec* %41 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %osucc88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %osucc88, align 8
  store %union.rec* %42, %union.rec** %uplink, align 8
  %43 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %43, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.72

for.end.90:                                       ; preds = %land.end
  %44 = load %union.rec*, %union.rec** %link, align 8
  %45 = load %union.rec*, %union.rec** %y, align 8
  %cmp91 = icmp ne %union.rec* %44, %45
  br i1 %cmp91, label %land.lhs.true.93, label %if.then.96

land.lhs.true.93:                                 ; preds = %for.end.90
  %46 = load %union.rec*, %union.rec** %uplink, align 8
  %47 = load %union.rec*, %union.rec** %y, align 8
  %cmp94 = icmp ne %union.rec* %46, %47
  br i1 %cmp94, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %land.lhs.true.93, %for.end.90
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call97 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %land.lhs.true.93
  %49 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %49, %union.rec** @xx_link, align 8
  %50 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %50, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os199 = bitcast %union.rec* %51 to %struct.word_type*
  %olist100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist100, i32 0, i64 1
  %osucc102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx101, i32 0, i32 1
  %52 = load %union.rec*, %union.rec** %osucc102, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp103 = icmp eq %union.rec* %52, %53
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.98
  br label %cond.end

cond.false:                                       ; preds = %if.end.98
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1105 = bitcast %union.rec* %54 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %osucc108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 1
  %55 = load %union.rec*, %union.rec** %osucc108, align 8
  store %union.rec* %55, %union.rec** @zz_res, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %56 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 1
  %opred112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred112, align 8
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1113 = bitcast %union.rec* %58 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 1
  %opred116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 0
  store %union.rec* %57, %union.rec** %opred116, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %60 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 1
  %opred120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred120, align 8
  %os1121 = bitcast %union.rec* %61 to %struct.word_type*
  %olist122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist122, i32 0, i64 1
  %osucc124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx123, i32 0, i32 1
  store %union.rec* %59, %union.rec** %osucc124, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1125 = bitcast %union.rec* %63 to %struct.word_type*
  %olist126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist126, i32 0, i64 1
  %osucc128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx127, i32 0, i32 1
  store %union.rec* %62, %union.rec** %osucc128, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1129 = bitcast %union.rec* %64 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 1
  %opred132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 0
  store %union.rec* %62, %union.rec** %opred132, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %65, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %66 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %66, %union.rec** @zz_hold, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1133 = bitcast %union.rec* %67 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 0
  %osucc136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc136, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp137 = icmp eq %union.rec* %68, %69
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %cond.end
  br label %cond.end.169

cond.false.140:                                   ; preds = %cond.end
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1141 = bitcast %union.rec* %70 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 0
  %osucc144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 1
  %71 = load %union.rec*, %union.rec** %osucc144, align 8
  store %union.rec* %71, %union.rec** @zz_res, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1145 = bitcast %union.rec* %72 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 0
  %opred148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 0
  %73 = load %union.rec*, %union.rec** %opred148, align 8
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1149 = bitcast %union.rec* %74 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 0
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  store %union.rec* %73, %union.rec** %opred152, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1153 = bitcast %union.rec* %76 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 0
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %opred156, align 8
  %os1157 = bitcast %union.rec* %77 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 0
  %osucc160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 1
  store %union.rec* %75, %union.rec** %osucc160, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1161 = bitcast %union.rec* %79 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 0
  %osucc164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 1
  store %union.rec* %78, %union.rec** %osucc164, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1165 = bitcast %union.rec* %80 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 0
  %opred168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred168, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.140, %cond.true.139
  %cond170 = phi %union.rec* [ null, %cond.true.139 ], [ %81, %cond.false.140 ]
  %82 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1171 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 1
  %os11173 = bitcast %union.FIRST_UNION* %ou1172 to %struct.anon*
  %otype174 = getelementptr inbounds %struct.anon, %struct.anon* %os11173, i32 0, i32 0
  %85 = load i8, i8* %otype174, align 1
  %conv175 = zext i8 %85 to i32
  %cmp176 = icmp eq i32 %conv175, 11
  br i1 %cmp176, label %cond.true.185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.169
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 1
  %os11180 = bitcast %union.FIRST_UNION* %ou1179 to %struct.anon*
  %otype181 = getelementptr inbounds %struct.anon, %struct.anon* %os11180, i32 0, i32 0
  %87 = load i8, i8* %otype181, align 1
  %conv182 = zext i8 %87 to i32
  %cmp183 = icmp eq i32 %conv182, 12
  br i1 %cmp183, label %cond.true.185, label %cond.false.190

cond.true.185:                                    ; preds = %lor.lhs.false, %cond.end.169
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1186 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 1
  %os11188 = bitcast %union.FIRST_UNION* %ou1187 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11188, i32 0, i32 1
  %89 = load i8, i8* %orec_size, align 1
  %conv189 = zext i8 %89 to i32
  br label %cond.end.197

cond.false.190:                                   ; preds = %lor.lhs.false
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1191 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 1
  %os11193 = bitcast %union.FIRST_UNION* %ou1192 to %struct.anon*
  %otype194 = getelementptr inbounds %struct.anon, %struct.anon* %os11193, i32 0, i32 0
  %91 = load i8, i8* %otype194, align 1
  %idxprom = zext i8 %91 to i64
  %arrayidx195 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %92 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %92 to i32
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.190, %cond.true.185
  %cond198 = phi i32 [ %conv189, %cond.true.185 ], [ %conv196, %cond.false.190 ]
  store i32 %cond198, i32* @zz_size, align 4
  %93 = load i32, i32* @zz_size, align 4
  %idxprom199 = sext i32 %93 to i64
  %arrayidx200 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom199
  %94 = load %union.rec*, %union.rec** %arrayidx200, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1201 = bitcast %union.rec* %95 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 0
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  store %union.rec* %94, %union.rec** %opred204, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = load i32, i32* @zz_size, align 4
  %idxprom205 = sext i32 %97 to i64
  %arrayidx206 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom205
  store %union.rec* %96, %union.rec** %arrayidx206, align 8
  %98 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1207 = bitcast %union.rec* %98 to %struct.word_type*
  %olist208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist208, i32 0, i64 1
  %osucc210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx209, i32 0, i32 1
  %99 = load %union.rec*, %union.rec** %osucc210, align 8
  %100 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp211 = icmp eq %union.rec* %99, %100
  br i1 %cmp211, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %cond.end.197
  %101 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call214 = call i32 @DisposeObject(%union.rec* %101)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %cond.end.197
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %for.end
  %102 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1217 = bitcast %union.rec* %102 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 0
  %osucc220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 1
  %103 = load %union.rec*, %union.rec** %osucc220, align 8
  store %union.rec* %103, %union.rec** @xx_link, align 8
  %104 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1221 = bitcast %union.rec* %105 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 1
  %osucc224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 1
  %106 = load %union.rec*, %union.rec** %osucc224, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp225 = icmp eq %union.rec* %106, %107
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %if.end.216
  br label %cond.end.257

cond.false.228:                                   ; preds = %if.end.216
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1229 = bitcast %union.rec* %108 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 1
  %osucc232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 1
  %109 = load %union.rec*, %union.rec** %osucc232, align 8
  store %union.rec* %109, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1233 = bitcast %union.rec* %110 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 1
  %opred236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred236, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1237 = bitcast %union.rec* %112 to %struct.word_type*
  %olist238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1237, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist238, i32 0, i64 1
  %opred240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx239, i32 0, i32 0
  store %union.rec* %111, %union.rec** %opred240, align 8
  %113 = load %union.rec*, %union.rec** @zz_res, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1241 = bitcast %union.rec* %114 to %struct.word_type*
  %olist242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist242, i32 0, i64 1
  %opred244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx243, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred244, align 8
  %os1245 = bitcast %union.rec* %115 to %struct.word_type*
  %olist246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist246, i32 0, i64 1
  %osucc248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx247, i32 0, i32 1
  store %union.rec* %113, %union.rec** %osucc248, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1249 = bitcast %union.rec* %117 to %struct.word_type*
  %olist250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist250, i32 0, i64 1
  %osucc252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx251, i32 0, i32 1
  store %union.rec* %116, %union.rec** %osucc252, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1253 = bitcast %union.rec* %118 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 1
  %opred256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 0
  store %union.rec* %116, %union.rec** %opred256, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.228, %cond.true.227
  %cond258 = phi %union.rec* [ null, %cond.true.227 ], [ %119, %cond.false.228 ]
  store %union.rec* %cond258, %union.rec** @xx_tmp, align 8
  %120 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %120, %union.rec** @zz_hold, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1259 = bitcast %union.rec* %121 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 0
  %osucc262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 1
  %122 = load %union.rec*, %union.rec** %osucc262, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp263 = icmp eq %union.rec* %122, %123
  br i1 %cmp263, label %cond.true.265, label %cond.false.266

cond.true.265:                                    ; preds = %cond.end.257
  br label %cond.end.295

cond.false.266:                                   ; preds = %cond.end.257
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1267 = bitcast %union.rec* %124 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 0
  %osucc270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 1
  %125 = load %union.rec*, %union.rec** %osucc270, align 8
  store %union.rec* %125, %union.rec** @zz_res, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1271 = bitcast %union.rec* %126 to %struct.word_type*
  %olist272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist272, i32 0, i64 0
  %opred274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx273, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred274, align 8
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1275 = bitcast %union.rec* %128 to %struct.word_type*
  %olist276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist276, i32 0, i64 0
  %opred278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx277, i32 0, i32 0
  store %union.rec* %127, %union.rec** %opred278, align 8
  %129 = load %union.rec*, %union.rec** @zz_res, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1279 = bitcast %union.rec* %130 to %struct.word_type*
  %olist280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist280, i32 0, i64 0
  %opred282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx281, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred282, align 8
  %os1283 = bitcast %union.rec* %131 to %struct.word_type*
  %olist284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist284, i32 0, i64 0
  %osucc286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx285, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc286, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1287 = bitcast %union.rec* %133 to %struct.word_type*
  %olist288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist288, i32 0, i64 0
  %osucc290 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx289, i32 0, i32 1
  store %union.rec* %132, %union.rec** %osucc290, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1291 = bitcast %union.rec* %134 to %struct.word_type*
  %olist292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1291, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist292, i32 0, i64 0
  %opred294 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx293, i32 0, i32 0
  store %union.rec* %132, %union.rec** %opred294, align 8
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.266, %cond.true.265
  %cond296 = phi %union.rec* [ null, %cond.true.265 ], [ %135, %cond.false.266 ]
  %136 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %136, %union.rec** @zz_hold, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %137, %union.rec** @zz_hold, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %138 to %struct.word_type*
  %ou1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 1
  %os11299 = bitcast %union.FIRST_UNION* %ou1298 to %struct.anon*
  %otype300 = getelementptr inbounds %struct.anon, %struct.anon* %os11299, i32 0, i32 0
  %139 = load i8, i8* %otype300, align 1
  %conv301 = zext i8 %139 to i32
  %cmp302 = icmp eq i32 %conv301, 11
  br i1 %cmp302, label %cond.true.312, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %cond.end.295
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1305 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 1
  %os11307 = bitcast %union.FIRST_UNION* %ou1306 to %struct.anon*
  %otype308 = getelementptr inbounds %struct.anon, %struct.anon* %os11307, i32 0, i32 0
  %141 = load i8, i8* %otype308, align 1
  %conv309 = zext i8 %141 to i32
  %cmp310 = icmp eq i32 %conv309, 12
  br i1 %cmp310, label %cond.true.312, label %cond.false.318

cond.true.312:                                    ; preds = %lor.lhs.false.304, %cond.end.295
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1313 = bitcast %union.rec* %142 to %struct.word_type*
  %ou1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 1
  %os11315 = bitcast %union.FIRST_UNION* %ou1314 to %struct.anon*
  %orec_size316 = getelementptr inbounds %struct.anon, %struct.anon* %os11315, i32 0, i32 1
  %143 = load i8, i8* %orec_size316, align 1
  %conv317 = zext i8 %143 to i32
  br label %cond.end.326

cond.false.318:                                   ; preds = %lor.lhs.false.304
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1319 = bitcast %union.rec* %144 to %struct.word_type*
  %ou1320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 1
  %os11321 = bitcast %union.FIRST_UNION* %ou1320 to %struct.anon*
  %otype322 = getelementptr inbounds %struct.anon, %struct.anon* %os11321, i32 0, i32 0
  %145 = load i8, i8* %otype322, align 1
  %idxprom323 = zext i8 %145 to i64
  %arrayidx324 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom323
  %146 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %146 to i32
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.318, %cond.true.312
  %cond327 = phi i32 [ %conv317, %cond.true.312 ], [ %conv325, %cond.false.318 ]
  store i32 %cond327, i32* @zz_size, align 4
  %147 = load i32, i32* @zz_size, align 4
  %idxprom328 = sext i32 %147 to i64
  %arrayidx329 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom328
  %148 = load %union.rec*, %union.rec** %arrayidx329, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1330 = bitcast %union.rec* %149 to %struct.word_type*
  %olist331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist331, i32 0, i64 0
  %opred333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx332, i32 0, i32 0
  store %union.rec* %148, %union.rec** %opred333, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %151 = load i32, i32* @zz_size, align 4
  %idxprom334 = sext i32 %151 to i64
  %arrayidx335 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom334
  store %union.rec* %150, %union.rec** %arrayidx335, align 8
  %152 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1336 = bitcast %union.rec* %152 to %struct.word_type*
  %olist337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist337, i32 0, i64 1
  %osucc339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx338, i32 0, i32 1
  %153 = load %union.rec*, %union.rec** %osucc339, align 8
  %154 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp340 = icmp eq %union.rec* %153, %154
  br i1 %cmp340, label %if.then.342, label %if.end.344

if.then.342:                                      ; preds = %cond.end.326
  %155 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call343 = call i32 @DisposeObject(%union.rec* %155)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.342, %cond.end.326
  %156 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1345 = bitcast %union.rec* %156 to %struct.word_type*
  %olist346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist346, i32 0, i64 0
  %opred348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx347, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred348, align 8
  %os1349 = bitcast %union.rec* %157 to %struct.word_type*
  %olist350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1349, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist350, i32 0, i64 1
  %opred352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx351, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %opred352, align 8
  store %union.rec* %158, %union.rec** %y, align 8
  store i32 1, i32* %count, align 4
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.362, %if.end.344
  %159 = load %union.rec*, %union.rec** %y, align 8
  %os1354 = bitcast %union.rec* %159 to %struct.word_type*
  %ou1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 1
  %os11356 = bitcast %union.FIRST_UNION* %ou1355 to %struct.anon*
  %otype357 = getelementptr inbounds %struct.anon, %struct.anon* %os11356, i32 0, i32 0
  %160 = load i8, i8* %otype357, align 1
  %conv358 = zext i8 %160 to i32
  %cmp359 = icmp eq i32 %conv358, 0
  br i1 %cmp359, label %for.body.361, label %for.end.368

for.body.361:                                     ; preds = %for.cond.353
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.361
  %161 = load %union.rec*, %union.rec** %y, align 8
  %os1363 = bitcast %union.rec* %161 to %struct.word_type*
  %olist364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1363, i32 0, i32 0
  %arrayidx365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist364, i32 0, i64 1
  %opred366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx365, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred366, align 8
  store %union.rec* %162, %union.rec** %y, align 8
  %163 = load i32, i32* %count, align 4
  %inc367 = add nsw i32 %163, 1
  store i32 %inc367, i32* %count, align 4
  br label %for.cond.353

for.end.368:                                      ; preds = %for.cond.353
  %164 = load %union.rec*, %union.rec** %y, align 8
  %os1369 = bitcast %union.rec* %164 to %struct.word_type*
  %ou1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 1
  %os11371 = bitcast %union.FIRST_UNION* %ou1370 to %struct.anon*
  %otype372 = getelementptr inbounds %struct.anon, %struct.anon* %os11371, i32 0, i32 0
  %165 = load i8, i8* %otype372, align 1
  %conv373 = zext i8 %165 to i32
  %cmp374 = icmp eq i32 %conv373, 15
  br i1 %cmp374, label %if.then.376, label %if.end.539

if.then.376:                                      ; preds = %for.end.368
  %166 = load %union.rec*, %union.rec** %y, align 8
  %os1377 = bitcast %union.rec* %166 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 0
  %osucc380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 1
  %167 = load %union.rec*, %union.rec** %osucc380, align 8
  store %union.rec* %167, %union.rec** %link, align 8
  %168 = load %union.rec*, %union.rec** %y, align 8
  %os1381 = bitcast %union.rec* %168 to %struct.word_type*
  %olist382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist382, i32 0, i64 1
  %osucc384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx383, i32 0, i32 1
  %169 = load %union.rec*, %union.rec** %osucc384, align 8
  store %union.rec* %169, %union.rec** %uplink, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.396, %if.then.376
  %170 = load %union.rec*, %union.rec** %link, align 8
  %171 = load %union.rec*, %union.rec** %y, align 8
  %cmp386 = icmp ne %union.rec* %170, %171
  br i1 %cmp386, label %land.lhs.true.388, label %land.end.394

land.lhs.true.388:                                ; preds = %for.cond.385
  %172 = load %union.rec*, %union.rec** %uplink, align 8
  %173 = load %union.rec*, %union.rec** %y, align 8
  %cmp389 = icmp ne %union.rec* %172, %173
  br i1 %cmp389, label %land.rhs.391, label %land.end.394

land.rhs.391:                                     ; preds = %land.lhs.true.388
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %count, align 4
  %cmp392 = icmp slt i32 %174, %175
  br label %land.end.394

land.end.394:                                     ; preds = %land.rhs.391, %land.lhs.true.388, %for.cond.385
  %176 = phi i1 [ false, %land.lhs.true.388 ], [ false, %for.cond.385 ], [ %cmp392, %land.rhs.391 ]
  br i1 %176, label %for.body.395, label %for.end.406

for.body.395:                                     ; preds = %land.end.394
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.395
  %177 = load %union.rec*, %union.rec** %link, align 8
  %os1397 = bitcast %union.rec* %177 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 0
  %osucc400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 1
  %178 = load %union.rec*, %union.rec** %osucc400, align 8
  store %union.rec* %178, %union.rec** %link, align 8
  %179 = load %union.rec*, %union.rec** %uplink, align 8
  %os1401 = bitcast %union.rec* %179 to %struct.word_type*
  %olist402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1401, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist402, i32 0, i64 1
  %osucc404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx403, i32 0, i32 1
  %180 = load %union.rec*, %union.rec** %osucc404, align 8
  store %union.rec* %180, %union.rec** %uplink, align 8
  %181 = load i32, i32* %i, align 4
  %inc405 = add nsw i32 %181, 1
  store i32 %inc405, i32* %i, align 4
  br label %for.cond.385

for.end.406:                                      ; preds = %land.end.394
  %182 = load %union.rec*, %union.rec** %link, align 8
  %183 = load %union.rec*, %union.rec** %y, align 8
  %cmp407 = icmp ne %union.rec* %182, %183
  br i1 %cmp407, label %land.lhs.true.409, label %if.then.412

land.lhs.true.409:                                ; preds = %for.end.406
  %184 = load %union.rec*, %union.rec** %uplink, align 8
  %185 = load %union.rec*, %union.rec** %y, align 8
  %cmp410 = icmp ne %union.rec* %184, %185
  br i1 %cmp410, label %if.end.414, label %if.then.412

if.then.412:                                      ; preds = %land.lhs.true.409, %for.end.406
  %186 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call413 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.412, %land.lhs.true.409
  %187 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %187, %union.rec** @xx_link, align 8
  %188 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %188, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1415 = bitcast %union.rec* %189 to %struct.word_type*
  %olist416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist416, i32 0, i64 1
  %osucc418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx417, i32 0, i32 1
  %190 = load %union.rec*, %union.rec** %osucc418, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp419 = icmp eq %union.rec* %190, %191
  br i1 %cmp419, label %cond.true.421, label %cond.false.422

cond.true.421:                                    ; preds = %if.end.414
  br label %cond.end.451

cond.false.422:                                   ; preds = %if.end.414
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1423 = bitcast %union.rec* %192 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 1
  %osucc426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 1
  %193 = load %union.rec*, %union.rec** %osucc426, align 8
  store %union.rec* %193, %union.rec** @zz_res, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1427 = bitcast %union.rec* %194 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 1
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %opred430, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1431 = bitcast %union.rec* %196 to %struct.word_type*
  %olist432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist432, i32 0, i64 1
  %opred434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx433, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred434, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1435 = bitcast %union.rec* %198 to %struct.word_type*
  %olist436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist436, i32 0, i64 1
  %opred438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx437, i32 0, i32 0
  %199 = load %union.rec*, %union.rec** %opred438, align 8
  %os1439 = bitcast %union.rec* %199 to %struct.word_type*
  %olist440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist440, i32 0, i64 1
  %osucc442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx441, i32 0, i32 1
  store %union.rec* %197, %union.rec** %osucc442, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1443 = bitcast %union.rec* %201 to %struct.word_type*
  %olist444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1443, i32 0, i32 0
  %arrayidx445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist444, i32 0, i64 1
  %osucc446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx445, i32 0, i32 1
  store %union.rec* %200, %union.rec** %osucc446, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1447 = bitcast %union.rec* %202 to %struct.word_type*
  %olist448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1447, i32 0, i32 0
  %arrayidx449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist448, i32 0, i64 1
  %opred450 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx449, i32 0, i32 0
  store %union.rec* %200, %union.rec** %opred450, align 8
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.false.422, %cond.true.421
  %cond452 = phi %union.rec* [ null, %cond.true.421 ], [ %203, %cond.false.422 ]
  store %union.rec* %cond452, %union.rec** @xx_tmp, align 8
  %204 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %204, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1453 = bitcast %union.rec* %205 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 0
  %osucc456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 1
  %206 = load %union.rec*, %union.rec** %osucc456, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp457 = icmp eq %union.rec* %206, %207
  br i1 %cmp457, label %cond.true.459, label %cond.false.460

cond.true.459:                                    ; preds = %cond.end.451
  br label %cond.end.489

cond.false.460:                                   ; preds = %cond.end.451
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1461 = bitcast %union.rec* %208 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 0
  %osucc464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 1
  %209 = load %union.rec*, %union.rec** %osucc464, align 8
  store %union.rec* %209, %union.rec** @zz_res, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1465 = bitcast %union.rec* %210 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 0
  %opred468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %opred468, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1469 = bitcast %union.rec* %212 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 0
  %opred472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 0
  store %union.rec* %211, %union.rec** %opred472, align 8
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1473 = bitcast %union.rec* %214 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 0
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred476, align 8
  %os1477 = bitcast %union.rec* %215 to %struct.word_type*
  %olist478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist478, i32 0, i64 0
  %osucc480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx479, i32 0, i32 1
  store %union.rec* %213, %union.rec** %osucc480, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1481 = bitcast %union.rec* %217 to %struct.word_type*
  %olist482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist482, i32 0, i64 0
  %osucc484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx483, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc484, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1485 = bitcast %union.rec* %218 to %struct.word_type*
  %olist486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1485, i32 0, i32 0
  %arrayidx487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist486, i32 0, i64 0
  %opred488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx487, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred488, align 8
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.489

cond.end.489:                                     ; preds = %cond.false.460, %cond.true.459
  %cond490 = phi %union.rec* [ null, %cond.true.459 ], [ %219, %cond.false.460 ]
  %220 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %220, %union.rec** @zz_hold, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1491 = bitcast %union.rec* %222 to %struct.word_type*
  %ou1492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1491, i32 0, i32 1
  %os11493 = bitcast %union.FIRST_UNION* %ou1492 to %struct.anon*
  %otype494 = getelementptr inbounds %struct.anon, %struct.anon* %os11493, i32 0, i32 0
  %223 = load i8, i8* %otype494, align 1
  %conv495 = zext i8 %223 to i32
  %cmp496 = icmp eq i32 %conv495, 11
  br i1 %cmp496, label %cond.true.506, label %lor.lhs.false.498

lor.lhs.false.498:                                ; preds = %cond.end.489
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1499 = bitcast %union.rec* %224 to %struct.word_type*
  %ou1500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 1
  %os11501 = bitcast %union.FIRST_UNION* %ou1500 to %struct.anon*
  %otype502 = getelementptr inbounds %struct.anon, %struct.anon* %os11501, i32 0, i32 0
  %225 = load i8, i8* %otype502, align 1
  %conv503 = zext i8 %225 to i32
  %cmp504 = icmp eq i32 %conv503, 12
  br i1 %cmp504, label %cond.true.506, label %cond.false.512

cond.true.506:                                    ; preds = %lor.lhs.false.498, %cond.end.489
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1507 = bitcast %union.rec* %226 to %struct.word_type*
  %ou1508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1507, i32 0, i32 1
  %os11509 = bitcast %union.FIRST_UNION* %ou1508 to %struct.anon*
  %orec_size510 = getelementptr inbounds %struct.anon, %struct.anon* %os11509, i32 0, i32 1
  %227 = load i8, i8* %orec_size510, align 1
  %conv511 = zext i8 %227 to i32
  br label %cond.end.520

cond.false.512:                                   ; preds = %lor.lhs.false.498
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1513 = bitcast %union.rec* %228 to %struct.word_type*
  %ou1514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 1
  %os11515 = bitcast %union.FIRST_UNION* %ou1514 to %struct.anon*
  %otype516 = getelementptr inbounds %struct.anon, %struct.anon* %os11515, i32 0, i32 0
  %229 = load i8, i8* %otype516, align 1
  %idxprom517 = zext i8 %229 to i64
  %arrayidx518 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom517
  %230 = load i8, i8* %arrayidx518, align 1
  %conv519 = zext i8 %230 to i32
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.512, %cond.true.506
  %cond521 = phi i32 [ %conv511, %cond.true.506 ], [ %conv519, %cond.false.512 ]
  store i32 %cond521, i32* @zz_size, align 4
  %231 = load i32, i32* @zz_size, align 4
  %idxprom522 = sext i32 %231 to i64
  %arrayidx523 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom522
  %232 = load %union.rec*, %union.rec** %arrayidx523, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1524 = bitcast %union.rec* %233 to %struct.word_type*
  %olist525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist525, i32 0, i64 0
  %opred527 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx526, i32 0, i32 0
  store %union.rec* %232, %union.rec** %opred527, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = load i32, i32* @zz_size, align 4
  %idxprom528 = sext i32 %235 to i64
  %arrayidx529 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom528
  store %union.rec* %234, %union.rec** %arrayidx529, align 8
  %236 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1530 = bitcast %union.rec* %236 to %struct.word_type*
  %olist531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1530, i32 0, i32 0
  %arrayidx532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist531, i32 0, i64 1
  %osucc533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx532, i32 0, i32 1
  %237 = load %union.rec*, %union.rec** %osucc533, align 8
  %238 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp534 = icmp eq %union.rec* %237, %238
  br i1 %cmp534, label %if.then.536, label %if.end.538

if.then.536:                                      ; preds = %cond.end.520
  %239 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call537 = call i32 @DisposeObject(%union.rec* %239)
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.536, %cond.end.520
  br label %if.end.539

if.end.539:                                       ; preds = %if.end.538, %for.end.368
  %240 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1540 = bitcast %union.rec* %240 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 0
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %opred543, align 8
  store %union.rec* %241, %union.rec** @xx_link, align 8
  %242 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %242, %union.rec** @zz_hold, align 8
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1544 = bitcast %union.rec* %243 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 1
  %osucc547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 1
  %244 = load %union.rec*, %union.rec** %osucc547, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp548 = icmp eq %union.rec* %244, %245
  br i1 %cmp548, label %cond.true.550, label %cond.false.551

cond.true.550:                                    ; preds = %if.end.539
  br label %cond.end.580

cond.false.551:                                   ; preds = %if.end.539
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1552 = bitcast %union.rec* %246 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 1
  %osucc555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 1
  %247 = load %union.rec*, %union.rec** %osucc555, align 8
  store %union.rec* %247, %union.rec** @zz_res, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1556 = bitcast %union.rec* %248 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 1
  %opred559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 0
  %249 = load %union.rec*, %union.rec** %opred559, align 8
  %250 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1560 = bitcast %union.rec* %250 to %struct.word_type*
  %olist561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1560, i32 0, i32 0
  %arrayidx562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist561, i32 0, i64 1
  %opred563 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx562, i32 0, i32 0
  store %union.rec* %249, %union.rec** %opred563, align 8
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1564 = bitcast %union.rec* %252 to %struct.word_type*
  %olist565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1564, i32 0, i32 0
  %arrayidx566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist565, i32 0, i64 1
  %opred567 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx566, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred567, align 8
  %os1568 = bitcast %union.rec* %253 to %struct.word_type*
  %olist569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1568, i32 0, i32 0
  %arrayidx570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist569, i32 0, i64 1
  %osucc571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx570, i32 0, i32 1
  store %union.rec* %251, %union.rec** %osucc571, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1572 = bitcast %union.rec* %255 to %struct.word_type*
  %olist573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1572, i32 0, i32 0
  %arrayidx574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist573, i32 0, i64 1
  %osucc575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx574, i32 0, i32 1
  store %union.rec* %254, %union.rec** %osucc575, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1576 = bitcast %union.rec* %256 to %struct.word_type*
  %olist577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist577, i32 0, i64 1
  %opred579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx578, i32 0, i32 0
  store %union.rec* %254, %union.rec** %opred579, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.false.551, %cond.true.550
  %cond581 = phi %union.rec* [ null, %cond.true.550 ], [ %257, %cond.false.551 ]
  store %union.rec* %cond581, %union.rec** @xx_tmp, align 8
  %258 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %258, %union.rec** @zz_hold, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1582 = bitcast %union.rec* %259 to %struct.word_type*
  %olist583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1582, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist583, i32 0, i64 0
  %osucc585 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx584, i32 0, i32 1
  %260 = load %union.rec*, %union.rec** %osucc585, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp586 = icmp eq %union.rec* %260, %261
  br i1 %cmp586, label %cond.true.588, label %cond.false.589

cond.true.588:                                    ; preds = %cond.end.580
  br label %cond.end.618

cond.false.589:                                   ; preds = %cond.end.580
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1590 = bitcast %union.rec* %262 to %struct.word_type*
  %olist591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1590, i32 0, i32 0
  %arrayidx592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist591, i32 0, i64 0
  %osucc593 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx592, i32 0, i32 1
  %263 = load %union.rec*, %union.rec** %osucc593, align 8
  store %union.rec* %263, %union.rec** @zz_res, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1594 = bitcast %union.rec* %264 to %struct.word_type*
  %olist595 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1594, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist595, i32 0, i64 0
  %opred597 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx596, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %opred597, align 8
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1598 = bitcast %union.rec* %266 to %struct.word_type*
  %olist599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 0
  %arrayidx600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist599, i32 0, i64 0
  %opred601 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx600, i32 0, i32 0
  store %union.rec* %265, %union.rec** %opred601, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1602 = bitcast %union.rec* %268 to %struct.word_type*
  %olist603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 0
  %arrayidx604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist603, i32 0, i64 0
  %opred605 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx604, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %opred605, align 8
  %os1606 = bitcast %union.rec* %269 to %struct.word_type*
  %olist607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist607, i32 0, i64 0
  %osucc609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx608, i32 0, i32 1
  store %union.rec* %267, %union.rec** %osucc609, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1610 = bitcast %union.rec* %271 to %struct.word_type*
  %olist611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1610, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist611, i32 0, i64 0
  %osucc613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx612, i32 0, i32 1
  store %union.rec* %270, %union.rec** %osucc613, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1614 = bitcast %union.rec* %272 to %struct.word_type*
  %olist615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1614, i32 0, i32 0
  %arrayidx616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist615, i32 0, i64 0
  %opred617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx616, i32 0, i32 0
  store %union.rec* %270, %union.rec** %opred617, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.618

cond.end.618:                                     ; preds = %cond.false.589, %cond.true.588
  %cond619 = phi %union.rec* [ null, %cond.true.588 ], [ %273, %cond.false.589 ]
  %274 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %274, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %275, %union.rec** @zz_hold, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1620 = bitcast %union.rec* %276 to %struct.word_type*
  %ou1621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 1
  %os11622 = bitcast %union.FIRST_UNION* %ou1621 to %struct.anon*
  %otype623 = getelementptr inbounds %struct.anon, %struct.anon* %os11622, i32 0, i32 0
  %277 = load i8, i8* %otype623, align 1
  %conv624 = zext i8 %277 to i32
  %cmp625 = icmp eq i32 %conv624, 11
  br i1 %cmp625, label %cond.true.635, label %lor.lhs.false.627

lor.lhs.false.627:                                ; preds = %cond.end.618
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1628 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1628, i32 0, i32 1
  %os11630 = bitcast %union.FIRST_UNION* %ou1629 to %struct.anon*
  %otype631 = getelementptr inbounds %struct.anon, %struct.anon* %os11630, i32 0, i32 0
  %279 = load i8, i8* %otype631, align 1
  %conv632 = zext i8 %279 to i32
  %cmp633 = icmp eq i32 %conv632, 12
  br i1 %cmp633, label %cond.true.635, label %cond.false.641

cond.true.635:                                    ; preds = %lor.lhs.false.627, %cond.end.618
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1636 = bitcast %union.rec* %280 to %struct.word_type*
  %ou1637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 1
  %os11638 = bitcast %union.FIRST_UNION* %ou1637 to %struct.anon*
  %orec_size639 = getelementptr inbounds %struct.anon, %struct.anon* %os11638, i32 0, i32 1
  %281 = load i8, i8* %orec_size639, align 1
  %conv640 = zext i8 %281 to i32
  br label %cond.end.649

cond.false.641:                                   ; preds = %lor.lhs.false.627
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1642 = bitcast %union.rec* %282 to %struct.word_type*
  %ou1643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1642, i32 0, i32 1
  %os11644 = bitcast %union.FIRST_UNION* %ou1643 to %struct.anon*
  %otype645 = getelementptr inbounds %struct.anon, %struct.anon* %os11644, i32 0, i32 0
  %283 = load i8, i8* %otype645, align 1
  %idxprom646 = zext i8 %283 to i64
  %arrayidx647 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom646
  %284 = load i8, i8* %arrayidx647, align 1
  %conv648 = zext i8 %284 to i32
  br label %cond.end.649

cond.end.649:                                     ; preds = %cond.false.641, %cond.true.635
  %cond650 = phi i32 [ %conv640, %cond.true.635 ], [ %conv648, %cond.false.641 ]
  store i32 %cond650, i32* @zz_size, align 4
  %285 = load i32, i32* @zz_size, align 4
  %idxprom651 = sext i32 %285 to i64
  %arrayidx652 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom651
  %286 = load %union.rec*, %union.rec** %arrayidx652, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1653 = bitcast %union.rec* %287 to %struct.word_type*
  %olist654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1653, i32 0, i32 0
  %arrayidx655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist654, i32 0, i64 0
  %opred656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx655, i32 0, i32 0
  store %union.rec* %286, %union.rec** %opred656, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = load i32, i32* @zz_size, align 4
  %idxprom657 = sext i32 %289 to i64
  %arrayidx658 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom657
  store %union.rec* %288, %union.rec** %arrayidx658, align 8
  %290 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1659 = bitcast %union.rec* %290 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 1
  %osucc662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 1
  %291 = load %union.rec*, %union.rec** %osucc662, align 8
  %292 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp663 = icmp eq %union.rec* %291, %292
  br i1 %cmp663, label %if.then.665, label %if.end.667

if.then.665:                                      ; preds = %cond.end.649
  %293 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call666 = call i32 @DisposeObject(%union.rec* %293)
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.665, %cond.end.649
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @MakeWord(i32 %typ, i8* %str, %struct.FILE_POS* %pos) #0 {
entry:
  %typ.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %pos.addr = alloca %struct.FILE_POS*, align 8
  %res = alloca %union.rec*, align 8
  store i32 %typ, i32* %typ.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %add1 = add i64 68, %mul
  %conv = trunc i64 %add1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %1 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %1, 1
  %conv2 = sext i32 %sub to i64
  %div = udiv i64 %conv2, 8
  %add3 = add i64 %div, 1
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, i32* @zz_size, align 4
  %conv5 = sext i32 %conv4 to i64
  %cmp = icmp uge i64 %conv5, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
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
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call11 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* %6)
  store %union.rec* %call11, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom13
  %8 = load %union.rec*, %union.rec** %arrayidx14, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  %11 = load i32, i32* @zz_size, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom16
  store %union.rec* %10, %union.rec** %arrayidx17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %12 = load i32, i32* @zz_size, align 4
  %conv19 = trunc i32 %12 to i8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %13 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 1
  store i8 %conv19, i8* %orec_size, align 1
  %14 = load i32, i32* %typ.addr, align 4
  %conv21 = trunc i32 %14 to i8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 0
  store i8 %conv21, i8* %otype, align 1
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %17 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 1
  store %union.rec* %16, %union.rec** %osucc, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %18 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 1
  %opred31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  store %union.rec* %16, %union.rec** %opred31, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 0
  %osucc35 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  store %union.rec* %16, %union.rec** %osucc35, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os136 = bitcast %union.rec* %20 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 0
  %opred39 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 0
  store %union.rec* %16, %union.rec** %opred39, align 8
  store %union.rec* %16, %union.rec** %res, align 8
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os140 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %22 = load i8*, i8** %str.addr, align 8
  %call41 = call i8* @strcpy(i8* %arraydecay, i8* %22) #5
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %23, i32 0, i32 2
  %24 = load i16, i16* %ofile_num, align 2
  %25 = load %union.rec*, %union.rec** %res, align 8
  %os142 = bitcast %union.rec* %25 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou143 to %struct.FILE_POS*
  %ofile_num44 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %24, i16* %ofile_num44, align 2
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %26, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %27 = load %union.rec*, %union.rec** %res, align 8
  %os145 = bitcast %union.rec* %27 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos47 = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %oline_num48 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos47, i32 0, i32 3
  %bf.load49 = load i32, i32* %oline_num48, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear50 = and i32 %bf.load49, -1048576
  %bf.set = or i32 %bf.clear50, %bf.value
  store i32 %bf.set, i32* %oline_num48, align 4
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %28, i32 0, i32 3
  %bf.load51 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load51, 20
  %29 = load %union.rec*, %union.rec** %res, align 8
  %os152 = bitcast %union.rec* %29 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %ofpos54 = bitcast %union.FIRST_UNION* %ou153 to %struct.FILE_POS*
  %ocol_num55 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos54, i32 0, i32 3
  %bf.load56 = load i32, i32* %ocol_num55, align 4
  %bf.value57 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value57, 20
  %bf.clear58 = and i32 %bf.load56, 1048575
  %bf.set59 = or i32 %bf.clear58, %bf.shl
  store i32 %bf.set59, i32* %ocol_num55, align 4
  %30 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %30
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %union.rec* @MakeWordTwo(i32 %typ, i8* %str1, i8* %str2, %struct.FILE_POS* %pos) #0 {
entry:
  %typ.addr = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %pos.addr = alloca %struct.FILE_POS*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i32 %typ, i32* %typ.addr, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %str2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i32, i32* %len1, align 4
  %3 = load i32, i32* %len2, align 4
  %add = add nsw i32 %2, %3
  %add3 = add nsw i32 %add, 1
  %conv4 = sext i32 %add3 to i64
  %mul = mul i64 %conv4, 1
  %add5 = add i64 68, %mul
  %conv6 = trunc i64 %add5 to i32
  store i32 %conv6, i32* @zz_size, align 4
  %4 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %4, 1
  %conv7 = sext i32 %sub to i64
  %div = udiv i64 %conv7, 8
  %add8 = add i64 %div, 1
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* @zz_size, align 4
  %conv10 = sext i32 %conv9 to i64
  %cmp = icmp uge i64 %conv10, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %5)
  br label %if.end.23

if.else:                                          ; preds = %entry
  %6 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %7 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp13 = icmp eq %union.rec* %7, null
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %8 = load i32, i32* @zz_size, align 4
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call16 = call %union.rec* @GetMemory(i32 %8, %struct.FILE_POS* %9)
  store %union.rec* %call16, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom18
  %11 = load %union.rec*, %union.rec** %arrayidx19, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %12 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  %14 = load i32, i32* @zz_size, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom21
  store %union.rec* %13, %union.rec** %arrayidx22, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  %15 = load i32, i32* @zz_size, align 4
  %conv24 = trunc i32 %15 to i8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %16 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 1
  store i8 %conv24, i8* %orec_size, align 1
  %17 = load i32, i32* %typ.addr, align 4
  %conv26 = trunc i32 %17 to i8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %18 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  store i8 %conv26, i8* %otype, align 1
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %20 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  store %union.rec* %19, %union.rec** %osucc, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %21 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %19, %union.rec** %opred36, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %22 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %19, %union.rec** %osucc40, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %23 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  store %union.rec* %19, %union.rec** %opred44, align 8
  store %union.rec* %19, %union.rec** %res, align 8
  %24 = load %union.rec*, %union.rec** %res, align 8
  %os145 = bitcast %union.rec* %24 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %25 = load i8*, i8** %str1.addr, align 8
  %call46 = call i8* @strcpy(i8* %arraydecay, i8* %25) #5
  %26 = load i32, i32* %len1, align 4
  %idxprom47 = sext i32 %26 to i64
  %27 = load %union.rec*, %union.rec** %res, align 8
  %os148 = bitcast %union.rec* %27 to %struct.word_type*
  %ostring49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring49, i32 0, i64 %idxprom47
  %28 = load i8*, i8** %str2.addr, align 8
  %call51 = call i8* @strcpy(i8* %arrayidx50, i8* %28) #5
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %29, i32 0, i32 2
  %30 = load i16, i16* %ofile_num, align 2
  %31 = load %union.rec*, %union.rec** %res, align 8
  %os152 = bitcast %union.rec* %31 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou153 to %struct.FILE_POS*
  %ofile_num54 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %30, i16* %ofile_num54, align 2
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %32, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %33 = load %union.rec*, %union.rec** %res, align 8
  %os155 = bitcast %union.rec* %33 to %struct.word_type*
  %ou156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 1
  %ofpos57 = bitcast %union.FIRST_UNION* %ou156 to %struct.FILE_POS*
  %oline_num58 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos57, i32 0, i32 3
  %bf.load59 = load i32, i32* %oline_num58, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear60 = and i32 %bf.load59, -1048576
  %bf.set = or i32 %bf.clear60, %bf.value
  store i32 %bf.set, i32* %oline_num58, align 4
  %34 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %34, i32 0, i32 3
  %bf.load61 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load61, 20
  %35 = load %union.rec*, %union.rec** %res, align 8
  %os162 = bitcast %union.rec* %35 to %struct.word_type*
  %ou163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 1
  %ofpos64 = bitcast %union.FIRST_UNION* %ou163 to %struct.FILE_POS*
  %ocol_num65 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos64, i32 0, i32 3
  %bf.load66 = load i32, i32* %ocol_num65, align 4
  %bf.value67 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value67, 20
  %bf.clear68 = and i32 %bf.load66, 1048575
  %bf.set69 = or i32 %bf.clear68, %bf.shl
  store i32 %bf.set69, i32* %ocol_num65, align 4
  %36 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %36
}

; Function Attrs: nounwind uwtable
define %union.rec* @MakeWordThree(i8* %s1, i8* %s2, i8* %s3) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s3.addr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i8* %s3, i8** %s3.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %s2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i8*, i8** %s3.addr, align 8
  %call3 = call i64 @strlen(i8* %2) #4
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %len3, align 4
  %3 = load i32, i32* %len1, align 4
  %4 = load i32, i32* %len2, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %len3, align 4
  %add5 = add nsw i32 %add, %5
  %add6 = add nsw i32 %add5, 1
  %conv7 = sext i32 %add6 to i64
  %mul = mul i64 %conv7, 1
  %add8 = add i64 68, %mul
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* @zz_size, align 4
  %6 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %6, 1
  %conv10 = sext i32 %sub to i64
  %div = udiv i64 %conv10, 8
  %add11 = add i64 %div, 1
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, i32* @zz_size, align 4
  %conv13 = sext i32 %conv12 to i64
  %cmp = icmp uge i64 %conv13, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %if.end.26

if.else:                                          ; preds = %entry
  %8 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %9 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp16 = icmp eq %union.rec* %9, null
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call %union.rec* @GetMemory(i32 %10, %struct.FILE_POS* %11)
  store %union.rec* %call19, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.20:                                       ; preds = %if.else
  %12 = load i32, i32* @zz_size, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom21
  %13 = load %union.rec*, %union.rec** %arrayidx22, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %14 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred, align 8
  %16 = load i32, i32* @zz_size, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom24
  store %union.rec* %15, %union.rec** %arrayidx25, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* @zz_size, align 4
  %conv27 = trunc i32 %17 to i8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %18 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 1
  store i8 %conv27, i8* %orec_size, align 1
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %19 to %struct.word_type*
  %ou130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os1131 = bitcast %union.FIRST_UNION* %ou130 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1131, i32 0, i32 0
  store i8 11, i8* %otype, align 1
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os132 = bitcast %union.rec* %21 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  store %union.rec* %20, %union.rec** %osucc, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %22 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  store %union.rec* %20, %union.rec** %opred38, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %23 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 0
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  store %union.rec* %20, %union.rec** %osucc42, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %24 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 0
  %opred46 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 0
  store %union.rec* %20, %union.rec** %opred46, align 8
  store %union.rec* %20, %union.rec** %res, align 8
  %25 = load %union.rec*, %union.rec** %res, align 8
  %os147 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %26 = load i8*, i8** %s1.addr, align 8
  %call48 = call i8* @strcpy(i8* %arraydecay, i8* %26) #5
  %27 = load i32, i32* %len1, align 4
  %idxprom49 = sext i32 %27 to i64
  %28 = load %union.rec*, %union.rec** %res, align 8
  %os150 = bitcast %union.rec* %28 to %struct.word_type*
  %ostring51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring51, i32 0, i64 %idxprom49
  %29 = load i8*, i8** %s2.addr, align 8
  %call53 = call i8* @strcpy(i8* %arrayidx52, i8* %29) #5
  %30 = load i32, i32* %len1, align 4
  %31 = load i32, i32* %len2, align 4
  %add54 = add nsw i32 %30, %31
  %idxprom55 = sext i32 %add54 to i64
  %32 = load %union.rec*, %union.rec** %res, align 8
  %os156 = bitcast %union.rec* %32 to %struct.word_type*
  %ostring57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 4
  %arrayidx58 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring57, i32 0, i64 %idxprom55
  %33 = load i8*, i8** %s3.addr, align 8
  %call59 = call i8* @strcpy(i8* %arrayidx58, i8* %33) #5
  %34 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %34
}

; Function Attrs: nounwind uwtable
define %union.rec* @CopyObject(%union.rec* %x, %struct.FILE_POS* %pos) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %pos.addr = alloca %struct.FILE_POS*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 1, label %sw.bb.57
    i32 5, label %sw.bb.280
    i32 4, label %sw.bb.280
    i32 6, label %sw.bb.280
    i32 7, label %sw.bb.280
    i32 20, label %sw.bb.280
    i32 21, label %sw.bb.280
    i32 22, label %sw.bb.280
    i32 23, label %sw.bb.280
    i32 24, label %sw.bb.280
    i32 25, label %sw.bb.280
    i32 26, label %sw.bb.280
    i32 27, label %sw.bb.280
    i32 28, label %sw.bb.280
    i32 29, label %sw.bb.280
    i32 30, label %sw.bb.280
    i32 31, label %sw.bb.280
    i32 32, label %sw.bb.280
    i32 33, label %sw.bb.280
    i32 34, label %sw.bb.280
    i32 35, label %sw.bb.280
    i32 36, label %sw.bb.280
    i32 37, label %sw.bb.280
    i32 38, label %sw.bb.280
    i32 39, label %sw.bb.280
    i32 40, label %sw.bb.280
    i32 41, label %sw.bb.280
    i32 44, label %sw.bb.280
    i32 42, label %sw.bb.280
    i32 43, label %sw.bb.280
    i32 45, label %sw.bb.280
    i32 46, label %sw.bb.280
    i32 47, label %sw.bb.280
    i32 48, label %sw.bb.280
    i32 49, label %sw.bb.280
    i32 50, label %sw.bb.280
    i32 51, label %sw.bb.280
    i32 54, label %sw.bb.280
    i32 53, label %sw.bb.280
    i32 52, label %sw.bb.280
    i32 55, label %sw.bb.280
    i32 56, label %sw.bb.280
    i32 58, label %sw.bb.280
    i32 59, label %sw.bb.280
    i32 60, label %sw.bb.280
    i32 61, label %sw.bb.280
    i32 62, label %sw.bb.280
    i32 63, label %sw.bb.280
    i32 64, label %sw.bb.280
    i32 65, label %sw.bb.280
    i32 66, label %sw.bb.280
    i32 67, label %sw.bb.280
    i32 68, label %sw.bb.280
    i32 69, label %sw.bb.280
    i32 70, label %sw.bb.280
    i32 71, label %sw.bb.280
    i32 72, label %sw.bb.280
    i32 73, label %sw.bb.280
    i32 74, label %sw.bb.280
    i32 75, label %sw.bb.280
    i32 76, label %sw.bb.280
    i32 77, label %sw.bb.280
    i32 78, label %sw.bb.280
    i32 79, label %sw.bb.280
    i32 80, label %sw.bb.280
    i32 92, label %sw.bb.280
    i32 93, label %sw.bb.280
    i32 94, label %sw.bb.280
    i32 95, label %sw.bb.280
    i32 96, label %sw.bb.280
    i32 97, label %sw.bb.280
    i32 98, label %sw.bb.280
    i32 99, label %sw.bb.280
    i32 19, label %sw.bb.280
    i32 18, label %sw.bb.280
    i32 17, label %sw.bb.280
    i32 81, label %sw.bb.280
    i32 57, label %sw.bb.493
    i32 82, label %sw.bb.705
    i32 10, label %sw.bb.706
    i32 2, label %sw.bb.910
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #4
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %add3 = add i64 68, %mul
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, i32* @zz_size, align 4
  %3 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %3, 1
  %conv5 = sext i32 %sub to i64
  %div = udiv i64 %conv5, 8
  %add6 = add i64 %div, 1
  %conv7 = trunc i64 %add6 to i32
  store i32 %conv7, i32* @zz_size, align 4
  %conv8 = sext i32 %conv7 to i64
  %cmp = icmp uge i64 %conv8, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %4)
  br label %if.end.22

if.else:                                          ; preds = %sw.bb
  %5 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp11 = icmp eq %union.rec* %6, null
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call14 = call %union.rec* @GetMemory(i32 %7, %struct.FILE_POS* %8)
  store %union.rec* %call14, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %9 = load i32, i32* @zz_size, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom16
  %10 = load %union.rec*, %union.rec** %arrayidx17, align 8
  store %union.rec* %10, %union.rec** @zz_hold, align 8
  store %union.rec* %10, %union.rec** @zz_hold, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %11 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred, align 8
  %13 = load i32, i32* @zz_size, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom20
  store %union.rec* %12, %union.rec** %arrayidx21, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %14 = load i32, i32* @zz_size, align 4
  %conv23 = trunc i32 %14 to i8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os124 = bitcast %union.rec* %15 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou125 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os1126, i32 0, i32 1
  store i8 %conv23, i8* %orec_size, align 1
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %16 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype30 = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  %17 = load i8, i8* %otype30, align 1
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os131 = bitcast %union.rec* %18 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  store i8 %17, i8* %otype34, align 1
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %20 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 1
  store %union.rec* %19, %union.rec** %osucc, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os138 = bitcast %union.rec* %21 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 1
  %opred41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 0
  store %union.rec* %19, %union.rec** %opred41, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os142 = bitcast %union.rec* %22 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 0
  %osucc45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 1
  store %union.rec* %19, %union.rec** %osucc45, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %23 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 0
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %19, %union.rec** %opred49, align 8
  store %union.rec* %19, %union.rec** %res, align 8
  %24 = load %union.rec*, %union.rec** %res, align 8
  %os150 = bitcast %union.rec* %24 to %struct.word_type*
  %ostring51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 4
  %arraydecay52 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring51, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os153 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 4
  %arraydecay55 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring54, i32 0, i32 0
  %call56 = call i8* @strcpy(i8* %arraydecay52, i8* %arraydecay55) #5
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %26 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv58 = zext i8 %26 to i32
  store i32 %conv58, i32* @zz_size, align 4
  %conv59 = sext i32 %conv58 to i64
  %cmp60 = icmp uge i64 %conv59, 265
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %sw.bb.57
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call63 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %27)
  br label %if.end.81

if.else.64:                                       ; preds = %sw.bb.57
  %28 = load i32, i32* @zz_size, align 4
  %idxprom65 = sext i32 %28 to i64
  %arrayidx66 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom65
  %29 = load %union.rec*, %union.rec** %arrayidx66, align 8
  %cmp67 = icmp eq %union.rec* %29, null
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.else.64
  %30 = load i32, i32* @zz_size, align 4
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call70 = call %union.rec* @GetMemory(i32 %30, %struct.FILE_POS* %31)
  store %union.rec* %call70, %union.rec** @zz_hold, align 8
  br label %if.end.80

if.else.71:                                       ; preds = %if.else.64
  %32 = load i32, i32* @zz_size, align 4
  %idxprom72 = sext i32 %32 to i64
  %arrayidx73 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom72
  %33 = load %union.rec*, %union.rec** %arrayidx73, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %34 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred77, align 8
  %36 = load i32, i32* @zz_size, align 4
  %idxprom78 = sext i32 %36 to i64
  %arrayidx79 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom78
  store %union.rec* %35, %union.rec** %arrayidx79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.71, %if.then.69
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.62
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %37 to %struct.word_type*
  %ou183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 1
  %os1184 = bitcast %union.FIRST_UNION* %ou183 to %struct.anon*
  %otype85 = getelementptr inbounds %struct.anon, %struct.anon* %os1184, i32 0, i32 0
  store i8 1, i8* %otype85, align 1
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os186 = bitcast %union.rec* %39 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 1
  %osucc89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc89, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %40 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 1
  %opred93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred93, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %41 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 0
  %osucc97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc97, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %42 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 0
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred101, align 8
  store %union.rec* %38, %union.rec** %res, align 8
  %43 = load %union.rec*, %union.rec** %x.addr, align 8
  %os5 = bitcast %union.rec* %43 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %44 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %44, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %45 = load %union.rec*, %union.rec** %res, align 8
  %os5102 = bitcast %union.rec* %45 to %struct.gapobj_type*
  %ogap103 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5102, i32 0, i32 3
  %46 = bitcast %struct.GAP* %ogap103 to i16*
  %47 = trunc i32 %bf.cast to i16
  %bf.load104 = load i16, i16* %46, align 4
  %bf.value = and i16 %47, 1
  %bf.shl = shl i16 %bf.value, 8
  %bf.clear105 = and i16 %bf.load104, -257
  %bf.set = or i16 %bf.clear105, %bf.shl
  store i16 %bf.set, i16* %46, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %48 = load %union.rec*, %union.rec** %x.addr, align 8
  %os5106 = bitcast %union.rec* %48 to %struct.gapobj_type*
  %ogap107 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5106, i32 0, i32 3
  %49 = bitcast %struct.GAP* %ogap107 to i16*
  %bf.load108 = load i16, i16* %49, align 4
  %bf.lshr109 = lshr i16 %bf.load108, 9
  %bf.clear110 = and i16 %bf.lshr109, 1
  %bf.cast111 = zext i16 %bf.clear110 to i32
  %50 = load %union.rec*, %union.rec** %res, align 8
  %os5112 = bitcast %union.rec* %50 to %struct.gapobj_type*
  %ogap113 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5112, i32 0, i32 3
  %51 = bitcast %struct.GAP* %ogap113 to i16*
  %52 = trunc i32 %bf.cast111 to i16
  %bf.load114 = load i16, i16* %51, align 4
  %bf.value115 = and i16 %52, 1
  %bf.shl116 = shl i16 %bf.value115, 9
  %bf.clear117 = and i16 %bf.load114, -513
  %bf.set118 = or i16 %bf.clear117, %bf.shl116
  store i16 %bf.set118, i16* %51, align 4
  %bf.result.cast119 = zext i16 %bf.value115 to i32
  %53 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1120 = bitcast %union.rec* %53 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  %54 = load i8, i8* %ohspace, align 1
  %55 = load %union.rec*, %union.rec** %res, align 8
  %os1121 = bitcast %union.rec* %55 to %struct.word_type*
  %ou2122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 2
  %os21123 = bitcast %union.SECOND_UNION* %ou2122 to %struct.anon.0*
  %ohspace124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21123, i32 0, i32 1
  store i8 %54, i8* %ohspace124, align 1
  %56 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1125 = bitcast %union.rec* %56 to %struct.word_type*
  %ou2126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 2
  %os21127 = bitcast %union.SECOND_UNION* %ou2126 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21127, i32 0, i32 2
  %57 = load i8, i8* %ovspace, align 1
  %58 = load %union.rec*, %union.rec** %res, align 8
  %os1128 = bitcast %union.rec* %58 to %struct.word_type*
  %ou2129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 2
  %os21130 = bitcast %union.SECOND_UNION* %ou2129 to %struct.anon.0*
  %ovspace131 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21130, i32 0, i32 2
  store i8 %57, i8* %ovspace131, align 1
  %59 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1132 = bitcast %union.rec* %59 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %osucc135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 1
  %60 = load %union.rec*, %union.rec** %osucc135, align 8
  %61 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp136 = icmp ne %union.rec* %60, %61
  br i1 %cmp136, label %if.then.138, label %if.end.279

if.then.138:                                      ; preds = %if.end.81
  %62 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1139 = bitcast %union.rec* %62 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %osucc142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 1
  %63 = load %union.rec*, %union.rec** %osucc142, align 8
  %os1143 = bitcast %union.rec* %63 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 1
  %opred146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred146, align 8
  store %union.rec* %64, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.138
  %65 = load %union.rec*, %union.rec** %y, align 8
  %os1147 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 1
  %os11149 = bitcast %union.FIRST_UNION* %ou1148 to %struct.anon*
  %otype150 = getelementptr inbounds %struct.anon, %struct.anon* %os11149, i32 0, i32 0
  %66 = load i8, i8* %otype150, align 1
  %conv151 = zext i8 %66 to i32
  %cmp152 = icmp eq i32 %conv151, 0
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os1154 = bitcast %union.rec* %67 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %opred157, align 8
  store %union.rec* %68, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load %union.rec*, %union.rec** %y, align 8
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call158 = call %union.rec* @CopyObject(%union.rec* %69, %struct.FILE_POS* %70)
  store %union.rec* %call158, %union.rec** %tmp, align 8
  %71 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv159 = zext i8 %71 to i32
  store i32 %conv159, i32* @zz_size, align 4
  %conv160 = sext i32 %conv159 to i64
  %cmp161 = icmp uge i64 %conv160, 265
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %for.end
  %72 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %72)
  br label %if.end.182

if.else.165:                                      ; preds = %for.end
  %73 = load i32, i32* @zz_size, align 4
  %idxprom166 = sext i32 %73 to i64
  %arrayidx167 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom166
  %74 = load %union.rec*, %union.rec** %arrayidx167, align 8
  %cmp168 = icmp eq %union.rec* %74, null
  br i1 %cmp168, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %if.else.165
  %75 = load i32, i32* @zz_size, align 4
  %76 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call171 = call %union.rec* @GetMemory(i32 %75, %struct.FILE_POS* %76)
  store %union.rec* %call171, %union.rec** @zz_hold, align 8
  br label %if.end.181

if.else.172:                                      ; preds = %if.else.165
  %77 = load i32, i32* @zz_size, align 4
  %idxprom173 = sext i32 %77 to i64
  %arrayidx174 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom173
  %78 = load %union.rec*, %union.rec** %arrayidx174, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %79 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred178, align 8
  %81 = load i32, i32* @zz_size, align 4
  %idxprom179 = sext i32 %81 to i64
  %arrayidx180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom179
  store %union.rec* %80, %union.rec** %arrayidx180, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.172, %if.then.170
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.163
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1183 = bitcast %union.rec* %82 to %struct.word_type*
  %ou1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 1
  %os11185 = bitcast %union.FIRST_UNION* %ou1184 to %struct.anon*
  %otype186 = getelementptr inbounds %struct.anon, %struct.anon* %os11185, i32 0, i32 0
  store i8 0, i8* %otype186, align 1
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1187 = bitcast %union.rec* %84 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 1
  %osucc190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc190, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1191 = bitcast %union.rec* %85 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 1
  %opred194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred194, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1195 = bitcast %union.rec* %86 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 0
  %osucc198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc198, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1199 = bitcast %union.rec* %87 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 0
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred202, align 8
  store %union.rec* %83, %union.rec** @xx_link, align 8
  %88 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %88, %union.rec** @zz_res, align 8
  %89 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %89, %union.rec** @zz_hold, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp203 = icmp eq %union.rec* %90, null
  br i1 %cmp203, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.182
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.237

cond.false:                                       ; preds = %if.end.182
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp205 = icmp eq %union.rec* %92, null
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %cond.false
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.208:                                   ; preds = %cond.false
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1209 = bitcast %union.rec* %94 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 0
  %opred212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %opred212, align 8
  store %union.rec* %95, %union.rec** @zz_tmp, align 8
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1213 = bitcast %union.rec* %96 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 0
  %opred216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred216, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1217 = bitcast %union.rec* %98 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 0
  %opred220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 0
  store %union.rec* %97, %union.rec** %opred220, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1221 = bitcast %union.rec* %100 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 0
  %opred224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %opred224, align 8
  %os1225 = bitcast %union.rec* %101 to %struct.word_type*
  %olist226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist226, i32 0, i64 0
  %osucc228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx227, i32 0, i32 1
  store %union.rec* %99, %union.rec** %osucc228, align 8
  %102 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1229 = bitcast %union.rec* %103 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 0
  %opred232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 0
  store %union.rec* %102, %union.rec** %opred232, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1233 = bitcast %union.rec* %105 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 0
  %osucc236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc236, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.208, %cond.true.207
  %cond = phi %union.rec* [ %93, %cond.true.207 ], [ %104, %cond.false.208 ]
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.end, %cond.true
  %cond238 = phi %union.rec* [ %91, %cond.true ], [ %cond, %cond.end ]
  %106 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %106, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %107, %union.rec** @zz_hold, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp239 = icmp eq %union.rec* %108, null
  br i1 %cmp239, label %cond.true.241, label %cond.false.242

cond.true.241:                                    ; preds = %cond.end.237
  %109 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.277

cond.false.242:                                   ; preds = %cond.end.237
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp243 = icmp eq %union.rec* %110, null
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %cond.false.242
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.275

cond.false.246:                                   ; preds = %cond.false.242
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1247 = bitcast %union.rec* %112 to %struct.word_type*
  %olist248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1247, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist248, i32 0, i64 1
  %opred250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx249, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred250, align 8
  store %union.rec* %113, %union.rec** @zz_tmp, align 8
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1251 = bitcast %union.rec* %114 to %struct.word_type*
  %olist252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist252, i32 0, i64 1
  %opred254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx253, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred254, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1255 = bitcast %union.rec* %116 to %struct.word_type*
  %olist256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist256, i32 0, i64 1
  %opred258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx257, i32 0, i32 0
  store %union.rec* %115, %union.rec** %opred258, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1259 = bitcast %union.rec* %118 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 1
  %opred262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %opred262, align 8
  %os1263 = bitcast %union.rec* %119 to %struct.word_type*
  %olist264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist264, i32 0, i64 1
  %osucc266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx265, i32 0, i32 1
  store %union.rec* %117, %union.rec** %osucc266, align 8
  %120 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %121 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1267 = bitcast %union.rec* %121 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 1
  %opred270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 0
  store %union.rec* %120, %union.rec** %opred270, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %123 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1271 = bitcast %union.rec* %123 to %struct.word_type*
  %olist272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist272, i32 0, i64 1
  %osucc274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx273, i32 0, i32 1
  store %union.rec* %122, %union.rec** %osucc274, align 8
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.246, %cond.true.245
  %cond276 = phi %union.rec* [ %111, %cond.true.245 ], [ %122, %cond.false.246 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.241
  %cond278 = phi %union.rec* [ %109, %cond.true.241 ], [ %cond276, %cond.end.275 ]
  br label %if.end.279

if.end.279:                                       ; preds = %cond.end.277, %if.end.81
  br label %sw.epilog

sw.bb.280:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %124 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1281 = bitcast %union.rec* %124 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %os11283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.anon*
  %otype284 = getelementptr inbounds %struct.anon, %struct.anon* %os11283, i32 0, i32 0
  %125 = load i8, i8* %otype284, align 1
  %idxprom285 = zext i8 %125 to i64
  %arrayidx286 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom285
  %126 = load i8, i8* %arrayidx286, align 1
  %conv287 = zext i8 %126 to i32
  store i32 %conv287, i32* @zz_size, align 4
  %conv288 = sext i32 %conv287 to i64
  %cmp289 = icmp uge i64 %conv288, 265
  br i1 %cmp289, label %if.then.291, label %if.else.293

if.then.291:                                      ; preds = %sw.bb.280
  %127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call292 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %127)
  br label %if.end.310

if.else.293:                                      ; preds = %sw.bb.280
  %128 = load i32, i32* @zz_size, align 4
  %idxprom294 = sext i32 %128 to i64
  %arrayidx295 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom294
  %129 = load %union.rec*, %union.rec** %arrayidx295, align 8
  %cmp296 = icmp eq %union.rec* %129, null
  br i1 %cmp296, label %if.then.298, label %if.else.300

if.then.298:                                      ; preds = %if.else.293
  %130 = load i32, i32* @zz_size, align 4
  %131 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call299 = call %union.rec* @GetMemory(i32 %130, %struct.FILE_POS* %131)
  store %union.rec* %call299, %union.rec** @zz_hold, align 8
  br label %if.end.309

if.else.300:                                      ; preds = %if.else.293
  %132 = load i32, i32* @zz_size, align 4
  %idxprom301 = sext i32 %132 to i64
  %arrayidx302 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom301
  %133 = load %union.rec*, %union.rec** %arrayidx302, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1303 = bitcast %union.rec* %134 to %struct.word_type*
  %olist304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist304, i32 0, i64 0
  %opred306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx305, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred306, align 8
  %136 = load i32, i32* @zz_size, align 4
  %idxprom307 = sext i32 %136 to i64
  %arrayidx308 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom307
  store %union.rec* %135, %union.rec** %arrayidx308, align 8
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.300, %if.then.298
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.291
  %137 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1311 = bitcast %union.rec* %137 to %struct.word_type*
  %ou1312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 1
  %os11313 = bitcast %union.FIRST_UNION* %ou1312 to %struct.anon*
  %otype314 = getelementptr inbounds %struct.anon, %struct.anon* %os11313, i32 0, i32 0
  %138 = load i8, i8* %otype314, align 1
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1315 = bitcast %union.rec* %139 to %struct.word_type*
  %ou1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1315, i32 0, i32 1
  %os11317 = bitcast %union.FIRST_UNION* %ou1316 to %struct.anon*
  %otype318 = getelementptr inbounds %struct.anon, %struct.anon* %os11317, i32 0, i32 0
  store i8 %138, i8* %otype318, align 1
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1319 = bitcast %union.rec* %141 to %struct.word_type*
  %olist320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 0
  %arrayidx321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist320, i32 0, i64 1
  %osucc322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx321, i32 0, i32 1
  store %union.rec* %140, %union.rec** %osucc322, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1323 = bitcast %union.rec* %142 to %struct.word_type*
  %olist324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist324, i32 0, i64 1
  %opred326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx325, i32 0, i32 0
  store %union.rec* %140, %union.rec** %opred326, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1327 = bitcast %union.rec* %143 to %struct.word_type*
  %olist328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1327, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist328, i32 0, i64 0
  %osucc330 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx329, i32 0, i32 1
  store %union.rec* %140, %union.rec** %osucc330, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1331 = bitcast %union.rec* %144 to %struct.word_type*
  %olist332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist332, i32 0, i64 0
  %opred334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx333, i32 0, i32 0
  store %union.rec* %140, %union.rec** %opred334, align 8
  store %union.rec* %140, %union.rec** %res, align 8
  %145 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1335 = bitcast %union.rec* %145 to %struct.word_type*
  %olist336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist336, i32 0, i64 0
  %osucc338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx337, i32 0, i32 1
  %146 = load %union.rec*, %union.rec** %osucc338, align 8
  store %union.rec* %146, %union.rec** %link, align 8
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.487, %if.end.310
  %147 = load %union.rec*, %union.rec** %link, align 8
  %148 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp340 = icmp ne %union.rec* %147, %148
  br i1 %cmp340, label %for.body.342, label %for.end.492

for.body.342:                                     ; preds = %for.cond.339
  %149 = load %union.rec*, %union.rec** %link, align 8
  %os1343 = bitcast %union.rec* %149 to %struct.word_type*
  %olist344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist344, i32 0, i64 1
  %opred346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx345, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %opred346, align 8
  store %union.rec* %150, %union.rec** %y, align 8
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.356, %for.body.342
  %151 = load %union.rec*, %union.rec** %y, align 8
  %os1348 = bitcast %union.rec* %151 to %struct.word_type*
  %ou1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 1
  %os11350 = bitcast %union.FIRST_UNION* %ou1349 to %struct.anon*
  %otype351 = getelementptr inbounds %struct.anon, %struct.anon* %os11350, i32 0, i32 0
  %152 = load i8, i8* %otype351, align 1
  %conv352 = zext i8 %152 to i32
  %cmp353 = icmp eq i32 %conv352, 0
  br i1 %cmp353, label %for.body.355, label %for.end.361

for.body.355:                                     ; preds = %for.cond.347
  br label %for.inc.356

for.inc.356:                                      ; preds = %for.body.355
  %153 = load %union.rec*, %union.rec** %y, align 8
  %os1357 = bitcast %union.rec* %153 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 1
  %opred360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %opred360, align 8
  store %union.rec* %154, %union.rec** %y, align 8
  br label %for.cond.347

for.end.361:                                      ; preds = %for.cond.347
  %155 = load %union.rec*, %union.rec** %y, align 8
  %156 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call362 = call %union.rec* @CopyObject(%union.rec* %155, %struct.FILE_POS* %156)
  store %union.rec* %call362, %union.rec** %tmp, align 8
  %157 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv363 = zext i8 %157 to i32
  store i32 %conv363, i32* @zz_size, align 4
  %conv364 = sext i32 %conv363 to i64
  %cmp365 = icmp uge i64 %conv364, 265
  br i1 %cmp365, label %if.then.367, label %if.else.369

if.then.367:                                      ; preds = %for.end.361
  %158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call368 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %158)
  br label %if.end.386

if.else.369:                                      ; preds = %for.end.361
  %159 = load i32, i32* @zz_size, align 4
  %idxprom370 = sext i32 %159 to i64
  %arrayidx371 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom370
  %160 = load %union.rec*, %union.rec** %arrayidx371, align 8
  %cmp372 = icmp eq %union.rec* %160, null
  br i1 %cmp372, label %if.then.374, label %if.else.376

if.then.374:                                      ; preds = %if.else.369
  %161 = load i32, i32* @zz_size, align 4
  %162 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call375 = call %union.rec* @GetMemory(i32 %161, %struct.FILE_POS* %162)
  store %union.rec* %call375, %union.rec** @zz_hold, align 8
  br label %if.end.385

if.else.376:                                      ; preds = %if.else.369
  %163 = load i32, i32* @zz_size, align 4
  %idxprom377 = sext i32 %163 to i64
  %arrayidx378 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom377
  %164 = load %union.rec*, %union.rec** %arrayidx378, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1379 = bitcast %union.rec* %165 to %struct.word_type*
  %olist380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1379, i32 0, i32 0
  %arrayidx381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist380, i32 0, i64 0
  %opred382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx381, i32 0, i32 0
  %166 = load %union.rec*, %union.rec** %opred382, align 8
  %167 = load i32, i32* @zz_size, align 4
  %idxprom383 = sext i32 %167 to i64
  %arrayidx384 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom383
  store %union.rec* %166, %union.rec** %arrayidx384, align 8
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.376, %if.then.374
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.then.367
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1387 = bitcast %union.rec* %168 to %struct.word_type*
  %ou1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1387, i32 0, i32 1
  %os11389 = bitcast %union.FIRST_UNION* %ou1388 to %struct.anon*
  %otype390 = getelementptr inbounds %struct.anon, %struct.anon* %os11389, i32 0, i32 0
  store i8 0, i8* %otype390, align 1
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1391 = bitcast %union.rec* %170 to %struct.word_type*
  %olist392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 0
  %arrayidx393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist392, i32 0, i64 1
  %osucc394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx393, i32 0, i32 1
  store %union.rec* %169, %union.rec** %osucc394, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1395 = bitcast %union.rec* %171 to %struct.word_type*
  %olist396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1395, i32 0, i32 0
  %arrayidx397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist396, i32 0, i64 1
  %opred398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx397, i32 0, i32 0
  store %union.rec* %169, %union.rec** %opred398, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1399 = bitcast %union.rec* %172 to %struct.word_type*
  %olist400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 0
  %arrayidx401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist400, i32 0, i64 0
  %osucc402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx401, i32 0, i32 1
  store %union.rec* %169, %union.rec** %osucc402, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1403 = bitcast %union.rec* %173 to %struct.word_type*
  %olist404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist404, i32 0, i64 0
  %opred406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx405, i32 0, i32 0
  store %union.rec* %169, %union.rec** %opred406, align 8
  store %union.rec* %169, %union.rec** @xx_link, align 8
  %174 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %174, %union.rec** @zz_res, align 8
  %175 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %175, %union.rec** @zz_hold, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp407 = icmp eq %union.rec* %176, null
  br i1 %cmp407, label %cond.true.409, label %cond.false.410

cond.true.409:                                    ; preds = %if.end.386
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.445

cond.false.410:                                   ; preds = %if.end.386
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp411 = icmp eq %union.rec* %178, null
  br i1 %cmp411, label %cond.true.413, label %cond.false.414

cond.true.413:                                    ; preds = %cond.false.410
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.443

cond.false.414:                                   ; preds = %cond.false.410
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1415 = bitcast %union.rec* %180 to %struct.word_type*
  %olist416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist416, i32 0, i64 0
  %opred418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx417, i32 0, i32 0
  %181 = load %union.rec*, %union.rec** %opred418, align 8
  store %union.rec* %181, %union.rec** @zz_tmp, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1419 = bitcast %union.rec* %182 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 0
  %opred422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 0
  %183 = load %union.rec*, %union.rec** %opred422, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1423 = bitcast %union.rec* %184 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 0
  %opred426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 0
  store %union.rec* %183, %union.rec** %opred426, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1427 = bitcast %union.rec* %186 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 0
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %opred430, align 8
  %os1431 = bitcast %union.rec* %187 to %struct.word_type*
  %olist432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist432, i32 0, i64 0
  %osucc434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx433, i32 0, i32 1
  store %union.rec* %185, %union.rec** %osucc434, align 8
  %188 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %189 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1435 = bitcast %union.rec* %189 to %struct.word_type*
  %olist436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist436, i32 0, i64 0
  %opred438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx437, i32 0, i32 0
  store %union.rec* %188, %union.rec** %opred438, align 8
  %190 = load %union.rec*, %union.rec** @zz_res, align 8
  %191 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1439 = bitcast %union.rec* %191 to %struct.word_type*
  %olist440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist440, i32 0, i64 0
  %osucc442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx441, i32 0, i32 1
  store %union.rec* %190, %union.rec** %osucc442, align 8
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.414, %cond.true.413
  %cond444 = phi %union.rec* [ %179, %cond.true.413 ], [ %190, %cond.false.414 ]
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.end.443, %cond.true.409
  %cond446 = phi %union.rec* [ %177, %cond.true.409 ], [ %cond444, %cond.end.443 ]
  %192 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %192, %union.rec** @zz_res, align 8
  %193 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %193, %union.rec** @zz_hold, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp447 = icmp eq %union.rec* %194, null
  br i1 %cmp447, label %cond.true.449, label %cond.false.450

cond.true.449:                                    ; preds = %cond.end.445
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.485

cond.false.450:                                   ; preds = %cond.end.445
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp451 = icmp eq %union.rec* %196, null
  br i1 %cmp451, label %cond.true.453, label %cond.false.454

cond.true.453:                                    ; preds = %cond.false.450
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.483

cond.false.454:                                   ; preds = %cond.false.450
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1455 = bitcast %union.rec* %198 to %struct.word_type*
  %olist456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 0
  %arrayidx457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist456, i32 0, i64 1
  %opred458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx457, i32 0, i32 0
  %199 = load %union.rec*, %union.rec** %opred458, align 8
  store %union.rec* %199, %union.rec** @zz_tmp, align 8
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1459 = bitcast %union.rec* %200 to %struct.word_type*
  %olist460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist460, i32 0, i64 1
  %opred462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx461, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %opred462, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1463 = bitcast %union.rec* %202 to %struct.word_type*
  %olist464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1463, i32 0, i32 0
  %arrayidx465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist464, i32 0, i64 1
  %opred466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx465, i32 0, i32 0
  store %union.rec* %201, %union.rec** %opred466, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1467 = bitcast %union.rec* %204 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 1
  %opred470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred470, align 8
  %os1471 = bitcast %union.rec* %205 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 1
  %osucc474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 1
  store %union.rec* %203, %union.rec** %osucc474, align 8
  %206 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %207 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1475 = bitcast %union.rec* %207 to %struct.word_type*
  %olist476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 0
  %arrayidx477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist476, i32 0, i64 1
  %opred478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx477, i32 0, i32 0
  store %union.rec* %206, %union.rec** %opred478, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %209 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1479 = bitcast %union.rec* %209 to %struct.word_type*
  %olist480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 0
  %arrayidx481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist480, i32 0, i64 1
  %osucc482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx481, i32 0, i32 1
  store %union.rec* %208, %union.rec** %osucc482, align 8
  br label %cond.end.483

cond.end.483:                                     ; preds = %cond.false.454, %cond.true.453
  %cond484 = phi %union.rec* [ %197, %cond.true.453 ], [ %208, %cond.false.454 ]
  br label %cond.end.485

cond.end.485:                                     ; preds = %cond.end.483, %cond.true.449
  %cond486 = phi %union.rec* [ %195, %cond.true.449 ], [ %cond484, %cond.end.483 ]
  br label %for.inc.487

for.inc.487:                                      ; preds = %cond.end.485
  %210 = load %union.rec*, %union.rec** %link, align 8
  %os1488 = bitcast %union.rec* %210 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 0
  %osucc491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 1
  %211 = load %union.rec*, %union.rec** %osucc491, align 8
  store %union.rec* %211, %union.rec** %link, align 8
  br label %for.cond.339

for.end.492:                                      ; preds = %for.cond.339
  br label %sw.epilog

sw.bb.493:                                        ; preds = %entry
  %212 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1494 = bitcast %union.rec* %212 to %struct.word_type*
  %ou1495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1494, i32 0, i32 1
  %os11496 = bitcast %union.FIRST_UNION* %ou1495 to %struct.anon*
  %otype497 = getelementptr inbounds %struct.anon, %struct.anon* %os11496, i32 0, i32 0
  %213 = load i8, i8* %otype497, align 1
  %idxprom498 = zext i8 %213 to i64
  %arrayidx499 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom498
  %214 = load i8, i8* %arrayidx499, align 1
  %conv500 = zext i8 %214 to i32
  store i32 %conv500, i32* @zz_size, align 4
  %conv501 = sext i32 %conv500 to i64
  %cmp502 = icmp uge i64 %conv501, 265
  br i1 %cmp502, label %if.then.504, label %if.else.506

if.then.504:                                      ; preds = %sw.bb.493
  %215 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call505 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %215)
  br label %if.end.523

if.else.506:                                      ; preds = %sw.bb.493
  %216 = load i32, i32* @zz_size, align 4
  %idxprom507 = sext i32 %216 to i64
  %arrayidx508 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom507
  %217 = load %union.rec*, %union.rec** %arrayidx508, align 8
  %cmp509 = icmp eq %union.rec* %217, null
  br i1 %cmp509, label %if.then.511, label %if.else.513

if.then.511:                                      ; preds = %if.else.506
  %218 = load i32, i32* @zz_size, align 4
  %219 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call512 = call %union.rec* @GetMemory(i32 %218, %struct.FILE_POS* %219)
  store %union.rec* %call512, %union.rec** @zz_hold, align 8
  br label %if.end.522

if.else.513:                                      ; preds = %if.else.506
  %220 = load i32, i32* @zz_size, align 4
  %idxprom514 = sext i32 %220 to i64
  %arrayidx515 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom514
  %221 = load %union.rec*, %union.rec** %arrayidx515, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1516 = bitcast %union.rec* %222 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 0
  %opred519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred519, align 8
  %224 = load i32, i32* @zz_size, align 4
  %idxprom520 = sext i32 %224 to i64
  %arrayidx521 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom520
  store %union.rec* %223, %union.rec** %arrayidx521, align 8
  br label %if.end.522

if.end.522:                                       ; preds = %if.else.513, %if.then.511
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %if.then.504
  %225 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1524 = bitcast %union.rec* %225 to %struct.word_type*
  %ou1525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 1
  %os11526 = bitcast %union.FIRST_UNION* %ou1525 to %struct.anon*
  %otype527 = getelementptr inbounds %struct.anon, %struct.anon* %os11526, i32 0, i32 0
  %226 = load i8, i8* %otype527, align 1
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1528 = bitcast %union.rec* %227 to %struct.word_type*
  %ou1529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 1
  %os11530 = bitcast %union.FIRST_UNION* %ou1529 to %struct.anon*
  %otype531 = getelementptr inbounds %struct.anon, %struct.anon* %os11530, i32 0, i32 0
  store i8 %226, i8* %otype531, align 1
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %229 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 1
  %osucc535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 1
  store %union.rec* %228, %union.rec** %osucc535, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1536 = bitcast %union.rec* %230 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 1
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  store %union.rec* %228, %union.rec** %opred539, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %231 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 0
  %osucc543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 1
  store %union.rec* %228, %union.rec** %osucc543, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1544 = bitcast %union.rec* %232 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 0
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  store %union.rec* %228, %union.rec** %opred547, align 8
  store %union.rec* %228, %union.rec** %res, align 8
  %233 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1548 = bitcast %union.rec* %233 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 0
  %osucc551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 1
  %234 = load %union.rec*, %union.rec** %osucc551, align 8
  store %union.rec* %234, %union.rec** %link, align 8
  br label %for.cond.552

for.cond.552:                                     ; preds = %for.inc.699, %if.end.523
  %235 = load %union.rec*, %union.rec** %link, align 8
  %236 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp553 = icmp ne %union.rec* %235, %236
  br i1 %cmp553, label %for.body.555, label %for.end.704

for.body.555:                                     ; preds = %for.cond.552
  %237 = load %union.rec*, %union.rec** %link, align 8
  %os1556 = bitcast %union.rec* %237 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 1
  %opred559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %opred559, align 8
  store %union.rec* %238, %union.rec** %y, align 8
  br label %for.cond.560

for.cond.560:                                     ; preds = %for.inc.569, %for.body.555
  %239 = load %union.rec*, %union.rec** %y, align 8
  %os1561 = bitcast %union.rec* %239 to %struct.word_type*
  %ou1562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 1
  %os11563 = bitcast %union.FIRST_UNION* %ou1562 to %struct.anon*
  %otype564 = getelementptr inbounds %struct.anon, %struct.anon* %os11563, i32 0, i32 0
  %240 = load i8, i8* %otype564, align 1
  %conv565 = zext i8 %240 to i32
  %cmp566 = icmp eq i32 %conv565, 0
  br i1 %cmp566, label %for.body.568, label %for.end.574

for.body.568:                                     ; preds = %for.cond.560
  br label %for.inc.569

for.inc.569:                                      ; preds = %for.body.568
  %241 = load %union.rec*, %union.rec** %y, align 8
  %os1570 = bitcast %union.rec* %241 to %struct.word_type*
  %olist571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1570, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist571, i32 0, i64 1
  %opred573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx572, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %opred573, align 8
  store %union.rec* %242, %union.rec** %y, align 8
  br label %for.cond.560

for.end.574:                                      ; preds = %for.cond.560
  %243 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv575 = zext i8 %243 to i32
  store i32 %conv575, i32* @zz_size, align 4
  %conv576 = sext i32 %conv575 to i64
  %cmp577 = icmp uge i64 %conv576, 265
  br i1 %cmp577, label %if.then.579, label %if.else.581

if.then.579:                                      ; preds = %for.end.574
  %244 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call580 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %244)
  br label %if.end.598

if.else.581:                                      ; preds = %for.end.574
  %245 = load i32, i32* @zz_size, align 4
  %idxprom582 = sext i32 %245 to i64
  %arrayidx583 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom582
  %246 = load %union.rec*, %union.rec** %arrayidx583, align 8
  %cmp584 = icmp eq %union.rec* %246, null
  br i1 %cmp584, label %if.then.586, label %if.else.588

if.then.586:                                      ; preds = %if.else.581
  %247 = load i32, i32* @zz_size, align 4
  %248 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call587 = call %union.rec* @GetMemory(i32 %247, %struct.FILE_POS* %248)
  store %union.rec* %call587, %union.rec** @zz_hold, align 8
  br label %if.end.597

if.else.588:                                      ; preds = %if.else.581
  %249 = load i32, i32* @zz_size, align 4
  %idxprom589 = sext i32 %249 to i64
  %arrayidx590 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom589
  %250 = load %union.rec*, %union.rec** %arrayidx590, align 8
  store %union.rec* %250, %union.rec** @zz_hold, align 8
  store %union.rec* %250, %union.rec** @zz_hold, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1591 = bitcast %union.rec* %251 to %struct.word_type*
  %olist592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist592, i32 0, i64 0
  %opred594 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx593, i32 0, i32 0
  %252 = load %union.rec*, %union.rec** %opred594, align 8
  %253 = load i32, i32* @zz_size, align 4
  %idxprom595 = sext i32 %253 to i64
  %arrayidx596 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom595
  store %union.rec* %252, %union.rec** %arrayidx596, align 8
  br label %if.end.597

if.end.597:                                       ; preds = %if.else.588, %if.then.586
  br label %if.end.598

if.end.598:                                       ; preds = %if.end.597, %if.then.579
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1599 = bitcast %union.rec* %254 to %struct.word_type*
  %ou1600 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1599, i32 0, i32 1
  %os11601 = bitcast %union.FIRST_UNION* %ou1600 to %struct.anon*
  %otype602 = getelementptr inbounds %struct.anon, %struct.anon* %os11601, i32 0, i32 0
  store i8 0, i8* %otype602, align 1
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1603 = bitcast %union.rec* %256 to %struct.word_type*
  %olist604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1603, i32 0, i32 0
  %arrayidx605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist604, i32 0, i64 1
  %osucc606 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx605, i32 0, i32 1
  store %union.rec* %255, %union.rec** %osucc606, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1607 = bitcast %union.rec* %257 to %struct.word_type*
  %olist608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1607, i32 0, i32 0
  %arrayidx609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist608, i32 0, i64 1
  %opred610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx609, i32 0, i32 0
  store %union.rec* %255, %union.rec** %opred610, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1611 = bitcast %union.rec* %258 to %struct.word_type*
  %olist612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 0
  %arrayidx613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist612, i32 0, i64 0
  %osucc614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx613, i32 0, i32 1
  store %union.rec* %255, %union.rec** %osucc614, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1615 = bitcast %union.rec* %259 to %struct.word_type*
  %olist616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1615, i32 0, i32 0
  %arrayidx617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist616, i32 0, i64 0
  %opred618 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx617, i32 0, i32 0
  store %union.rec* %255, %union.rec** %opred618, align 8
  store %union.rec* %255, %union.rec** @xx_link, align 8
  %260 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %260, %union.rec** @zz_res, align 8
  %261 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %261, %union.rec** @zz_hold, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp619 = icmp eq %union.rec* %262, null
  br i1 %cmp619, label %cond.true.621, label %cond.false.622

cond.true.621:                                    ; preds = %if.end.598
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.657

cond.false.622:                                   ; preds = %if.end.598
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp623 = icmp eq %union.rec* %264, null
  br i1 %cmp623, label %cond.true.625, label %cond.false.626

cond.true.625:                                    ; preds = %cond.false.622
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.655

cond.false.626:                                   ; preds = %cond.false.622
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1627 = bitcast %union.rec* %266 to %struct.word_type*
  %olist628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1627, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist628, i32 0, i64 0
  %opred630 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx629, i32 0, i32 0
  %267 = load %union.rec*, %union.rec** %opred630, align 8
  store %union.rec* %267, %union.rec** @zz_tmp, align 8
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1631 = bitcast %union.rec* %268 to %struct.word_type*
  %olist632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1631, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist632, i32 0, i64 0
  %opred634 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx633, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %opred634, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1635 = bitcast %union.rec* %270 to %struct.word_type*
  %olist636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 0
  %arrayidx637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist636, i32 0, i64 0
  %opred638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx637, i32 0, i32 0
  store %union.rec* %269, %union.rec** %opred638, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1639 = bitcast %union.rec* %272 to %struct.word_type*
  %olist640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist640, i32 0, i64 0
  %opred642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx641, i32 0, i32 0
  %273 = load %union.rec*, %union.rec** %opred642, align 8
  %os1643 = bitcast %union.rec* %273 to %struct.word_type*
  %olist644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist644, i32 0, i64 0
  %osucc646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx645, i32 0, i32 1
  store %union.rec* %271, %union.rec** %osucc646, align 8
  %274 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %275 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1647 = bitcast %union.rec* %275 to %struct.word_type*
  %olist648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1647, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist648, i32 0, i64 0
  %opred650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx649, i32 0, i32 0
  store %union.rec* %274, %union.rec** %opred650, align 8
  %276 = load %union.rec*, %union.rec** @zz_res, align 8
  %277 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1651 = bitcast %union.rec* %277 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 0
  %osucc654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 1
  store %union.rec* %276, %union.rec** %osucc654, align 8
  br label %cond.end.655

cond.end.655:                                     ; preds = %cond.false.626, %cond.true.625
  %cond656 = phi %union.rec* [ %265, %cond.true.625 ], [ %276, %cond.false.626 ]
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.end.655, %cond.true.621
  %cond658 = phi %union.rec* [ %263, %cond.true.621 ], [ %cond656, %cond.end.655 ]
  %278 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %278, %union.rec** @zz_res, align 8
  %279 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %279, %union.rec** @zz_hold, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp659 = icmp eq %union.rec* %280, null
  br i1 %cmp659, label %cond.true.661, label %cond.false.662

cond.true.661:                                    ; preds = %cond.end.657
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.697

cond.false.662:                                   ; preds = %cond.end.657
  %282 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp663 = icmp eq %union.rec* %282, null
  br i1 %cmp663, label %cond.true.665, label %cond.false.666

cond.true.665:                                    ; preds = %cond.false.662
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.695

cond.false.666:                                   ; preds = %cond.false.662
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1667 = bitcast %union.rec* %284 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 1
  %opred670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 0
  %285 = load %union.rec*, %union.rec** %opred670, align 8
  store %union.rec* %285, %union.rec** @zz_tmp, align 8
  %286 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1671 = bitcast %union.rec* %286 to %struct.word_type*
  %olist672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist672, i32 0, i64 1
  %opred674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx673, i32 0, i32 0
  %287 = load %union.rec*, %union.rec** %opred674, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1675 = bitcast %union.rec* %288 to %struct.word_type*
  %olist676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 0
  %arrayidx677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist676, i32 0, i64 1
  %opred678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx677, i32 0, i32 0
  store %union.rec* %287, %union.rec** %opred678, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1679 = bitcast %union.rec* %290 to %struct.word_type*
  %olist680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1679, i32 0, i32 0
  %arrayidx681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist680, i32 0, i64 1
  %opred682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx681, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %opred682, align 8
  %os1683 = bitcast %union.rec* %291 to %struct.word_type*
  %olist684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1683, i32 0, i32 0
  %arrayidx685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist684, i32 0, i64 1
  %osucc686 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx685, i32 0, i32 1
  store %union.rec* %289, %union.rec** %osucc686, align 8
  %292 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1687 = bitcast %union.rec* %293 to %struct.word_type*
  %olist688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1687, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist688, i32 0, i64 1
  %opred690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx689, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred690, align 8
  %294 = load %union.rec*, %union.rec** @zz_res, align 8
  %295 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1691 = bitcast %union.rec* %295 to %struct.word_type*
  %olist692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1691, i32 0, i32 0
  %arrayidx693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist692, i32 0, i64 1
  %osucc694 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx693, i32 0, i32 1
  store %union.rec* %294, %union.rec** %osucc694, align 8
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.false.666, %cond.true.665
  %cond696 = phi %union.rec* [ %283, %cond.true.665 ], [ %294, %cond.false.666 ]
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.end.695, %cond.true.661
  %cond698 = phi %union.rec* [ %281, %cond.true.661 ], [ %cond696, %cond.end.695 ]
  br label %for.inc.699

for.inc.699:                                      ; preds = %cond.end.697
  %296 = load %union.rec*, %union.rec** %link, align 8
  %os1700 = bitcast %union.rec* %296 to %struct.word_type*
  %olist701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1700, i32 0, i32 0
  %arrayidx702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist701, i32 0, i64 0
  %osucc703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx702, i32 0, i32 1
  %297 = load %union.rec*, %union.rec** %osucc703, align 8
  store %union.rec* %297, %union.rec** %link, align 8
  br label %for.cond.552

for.end.704:                                      ; preds = %for.cond.552
  br label %sw.epilog

sw.bb.705:                                        ; preds = %entry
  %298 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %298, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.706:                                        ; preds = %entry
  %299 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv707 = zext i8 %299 to i32
  store i32 %conv707, i32* @zz_size, align 4
  %conv708 = sext i32 %conv707 to i64
  %cmp709 = icmp uge i64 %conv708, 265
  br i1 %cmp709, label %if.then.711, label %if.else.713

if.then.711:                                      ; preds = %sw.bb.706
  %300 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call712 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %300)
  br label %if.end.730

if.else.713:                                      ; preds = %sw.bb.706
  %301 = load i32, i32* @zz_size, align 4
  %idxprom714 = sext i32 %301 to i64
  %arrayidx715 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom714
  %302 = load %union.rec*, %union.rec** %arrayidx715, align 8
  %cmp716 = icmp eq %union.rec* %302, null
  br i1 %cmp716, label %if.then.718, label %if.else.720

if.then.718:                                      ; preds = %if.else.713
  %303 = load i32, i32* @zz_size, align 4
  %304 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call719 = call %union.rec* @GetMemory(i32 %303, %struct.FILE_POS* %304)
  store %union.rec* %call719, %union.rec** @zz_hold, align 8
  br label %if.end.729

if.else.720:                                      ; preds = %if.else.713
  %305 = load i32, i32* @zz_size, align 4
  %idxprom721 = sext i32 %305 to i64
  %arrayidx722 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom721
  %306 = load %union.rec*, %union.rec** %arrayidx722, align 8
  store %union.rec* %306, %union.rec** @zz_hold, align 8
  store %union.rec* %306, %union.rec** @zz_hold, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1723 = bitcast %union.rec* %307 to %struct.word_type*
  %olist724 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1723, i32 0, i32 0
  %arrayidx725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist724, i32 0, i64 0
  %opred726 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx725, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %opred726, align 8
  %309 = load i32, i32* @zz_size, align 4
  %idxprom727 = sext i32 %309 to i64
  %arrayidx728 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom727
  store %union.rec* %308, %union.rec** %arrayidx728, align 8
  br label %if.end.729

if.end.729:                                       ; preds = %if.else.720, %if.then.718
  br label %if.end.730

if.end.730:                                       ; preds = %if.end.729, %if.then.711
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1731 = bitcast %union.rec* %310 to %struct.word_type*
  %ou1732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1731, i32 0, i32 1
  %os11733 = bitcast %union.FIRST_UNION* %ou1732 to %struct.anon*
  %otype734 = getelementptr inbounds %struct.anon, %struct.anon* %os11733, i32 0, i32 0
  store i8 10, i8* %otype734, align 1
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1735 = bitcast %union.rec* %312 to %struct.word_type*
  %olist736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1735, i32 0, i32 0
  %arrayidx737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist736, i32 0, i64 1
  %osucc738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx737, i32 0, i32 1
  store %union.rec* %311, %union.rec** %osucc738, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1739 = bitcast %union.rec* %313 to %struct.word_type*
  %olist740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1739, i32 0, i32 0
  %arrayidx741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist740, i32 0, i64 1
  %opred742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx741, i32 0, i32 0
  store %union.rec* %311, %union.rec** %opred742, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1743 = bitcast %union.rec* %314 to %struct.word_type*
  %olist744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1743, i32 0, i32 0
  %arrayidx745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist744, i32 0, i64 0
  %osucc746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx745, i32 0, i32 1
  store %union.rec* %311, %union.rec** %osucc746, align 8
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1747 = bitcast %union.rec* %315 to %struct.word_type*
  %olist748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 0
  %arrayidx749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist748, i32 0, i64 0
  %opred750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx749, i32 0, i32 0
  store %union.rec* %311, %union.rec** %opred750, align 8
  store %union.rec* %311, %union.rec** %res, align 8
  %316 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %316 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %317 = load %union.rec*, %union.rec** %oactual, align 8
  %318 = load %union.rec*, %union.rec** %res, align 8
  %os2751 = bitcast %union.rec* %318 to %struct.closure_type*
  %oactual752 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2751, i32 0, i32 5
  store %union.rec* %317, %union.rec** %oactual752, align 8
  %319 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1753 = bitcast %union.rec* %319 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 0
  %osucc756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 1
  %320 = load %union.rec*, %union.rec** %osucc756, align 8
  %321 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp757 = icmp ne %union.rec* %320, %321
  br i1 %cmp757, label %if.end.761, label %if.then.759

if.then.759:                                      ; preds = %if.end.730
  %322 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call760 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %322, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.761

if.end.761:                                       ; preds = %if.then.759, %if.end.730
  %323 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1762 = bitcast %union.rec* %323 to %struct.word_type*
  %olist763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1762, i32 0, i32 0
  %arrayidx764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist763, i32 0, i64 0
  %osucc765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx764, i32 0, i32 1
  %324 = load %union.rec*, %union.rec** %osucc765, align 8
  %os1766 = bitcast %union.rec* %324 to %struct.word_type*
  %olist767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1766, i32 0, i32 0
  %arrayidx768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist767, i32 0, i64 1
  %opred769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx768, i32 0, i32 0
  %325 = load %union.rec*, %union.rec** %opred769, align 8
  store %union.rec* %325, %union.rec** %y, align 8
  br label %for.cond.770

for.cond.770:                                     ; preds = %for.inc.779, %if.end.761
  %326 = load %union.rec*, %union.rec** %y, align 8
  %os1771 = bitcast %union.rec* %326 to %struct.word_type*
  %ou1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1771, i32 0, i32 1
  %os11773 = bitcast %union.FIRST_UNION* %ou1772 to %struct.anon*
  %otype774 = getelementptr inbounds %struct.anon, %struct.anon* %os11773, i32 0, i32 0
  %327 = load i8, i8* %otype774, align 1
  %conv775 = zext i8 %327 to i32
  %cmp776 = icmp eq i32 %conv775, 0
  br i1 %cmp776, label %for.body.778, label %for.end.784

for.body.778:                                     ; preds = %for.cond.770
  br label %for.inc.779

for.inc.779:                                      ; preds = %for.body.778
  %328 = load %union.rec*, %union.rec** %y, align 8
  %os1780 = bitcast %union.rec* %328 to %struct.word_type*
  %olist781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1780, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist781, i32 0, i64 1
  %opred783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx782, i32 0, i32 0
  %329 = load %union.rec*, %union.rec** %opred783, align 8
  store %union.rec* %329, %union.rec** %y, align 8
  br label %for.cond.770

for.end.784:                                      ; preds = %for.cond.770
  %330 = load %union.rec*, %union.rec** %y, align 8
  %331 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call785 = call %union.rec* @CopyObject(%union.rec* %330, %struct.FILE_POS* %331)
  store %union.rec* %call785, %union.rec** %tmp, align 8
  %332 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv786 = zext i8 %332 to i32
  store i32 %conv786, i32* @zz_size, align 4
  %conv787 = sext i32 %conv786 to i64
  %cmp788 = icmp uge i64 %conv787, 265
  br i1 %cmp788, label %if.then.790, label %if.else.792

if.then.790:                                      ; preds = %for.end.784
  %333 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call791 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %333)
  br label %if.end.809

if.else.792:                                      ; preds = %for.end.784
  %334 = load i32, i32* @zz_size, align 4
  %idxprom793 = sext i32 %334 to i64
  %arrayidx794 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom793
  %335 = load %union.rec*, %union.rec** %arrayidx794, align 8
  %cmp795 = icmp eq %union.rec* %335, null
  br i1 %cmp795, label %if.then.797, label %if.else.799

if.then.797:                                      ; preds = %if.else.792
  %336 = load i32, i32* @zz_size, align 4
  %337 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call798 = call %union.rec* @GetMemory(i32 %336, %struct.FILE_POS* %337)
  store %union.rec* %call798, %union.rec** @zz_hold, align 8
  br label %if.end.808

if.else.799:                                      ; preds = %if.else.792
  %338 = load i32, i32* @zz_size, align 4
  %idxprom800 = sext i32 %338 to i64
  %arrayidx801 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom800
  %339 = load %union.rec*, %union.rec** %arrayidx801, align 8
  store %union.rec* %339, %union.rec** @zz_hold, align 8
  store %union.rec* %339, %union.rec** @zz_hold, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1802 = bitcast %union.rec* %340 to %struct.word_type*
  %olist803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1802, i32 0, i32 0
  %arrayidx804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist803, i32 0, i64 0
  %opred805 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx804, i32 0, i32 0
  %341 = load %union.rec*, %union.rec** %opred805, align 8
  %342 = load i32, i32* @zz_size, align 4
  %idxprom806 = sext i32 %342 to i64
  %arrayidx807 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom806
  store %union.rec* %341, %union.rec** %arrayidx807, align 8
  br label %if.end.808

if.end.808:                                       ; preds = %if.else.799, %if.then.797
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %if.then.790
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1810 = bitcast %union.rec* %343 to %struct.word_type*
  %ou1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 1
  %os11812 = bitcast %union.FIRST_UNION* %ou1811 to %struct.anon*
  %otype813 = getelementptr inbounds %struct.anon, %struct.anon* %os11812, i32 0, i32 0
  store i8 0, i8* %otype813, align 1
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1814 = bitcast %union.rec* %345 to %struct.word_type*
  %olist815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1814, i32 0, i32 0
  %arrayidx816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist815, i32 0, i64 1
  %osucc817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx816, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc817, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1818 = bitcast %union.rec* %346 to %struct.word_type*
  %olist819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist819, i32 0, i64 1
  %opred821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx820, i32 0, i32 0
  store %union.rec* %344, %union.rec** %opred821, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1822 = bitcast %union.rec* %347 to %struct.word_type*
  %olist823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1822, i32 0, i32 0
  %arrayidx824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist823, i32 0, i64 0
  %osucc825 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx824, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc825, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1826 = bitcast %union.rec* %348 to %struct.word_type*
  %olist827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1826, i32 0, i32 0
  %arrayidx828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist827, i32 0, i64 0
  %opred829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx828, i32 0, i32 0
  store %union.rec* %344, %union.rec** %opred829, align 8
  store %union.rec* %344, %union.rec** @xx_link, align 8
  %349 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %349, %union.rec** @zz_res, align 8
  %350 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %350, %union.rec** @zz_hold, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp830 = icmp eq %union.rec* %351, null
  br i1 %cmp830, label %cond.true.832, label %cond.false.833

cond.true.832:                                    ; preds = %if.end.809
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.868

cond.false.833:                                   ; preds = %if.end.809
  %353 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp834 = icmp eq %union.rec* %353, null
  br i1 %cmp834, label %cond.true.836, label %cond.false.837

cond.true.836:                                    ; preds = %cond.false.833
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.866

cond.false.837:                                   ; preds = %cond.false.833
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1838 = bitcast %union.rec* %355 to %struct.word_type*
  %olist839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1838, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist839, i32 0, i64 0
  %opred841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx840, i32 0, i32 0
  %356 = load %union.rec*, %union.rec** %opred841, align 8
  store %union.rec* %356, %union.rec** @zz_tmp, align 8
  %357 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1842 = bitcast %union.rec* %357 to %struct.word_type*
  %olist843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1842, i32 0, i32 0
  %arrayidx844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist843, i32 0, i64 0
  %opred845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx844, i32 0, i32 0
  %358 = load %union.rec*, %union.rec** %opred845, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1846 = bitcast %union.rec* %359 to %struct.word_type*
  %olist847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 0
  %arrayidx848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist847, i32 0, i64 0
  %opred849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx848, i32 0, i32 0
  store %union.rec* %358, %union.rec** %opred849, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %361 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1850 = bitcast %union.rec* %361 to %struct.word_type*
  %olist851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1850, i32 0, i32 0
  %arrayidx852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist851, i32 0, i64 0
  %opred853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx852, i32 0, i32 0
  %362 = load %union.rec*, %union.rec** %opred853, align 8
  %os1854 = bitcast %union.rec* %362 to %struct.word_type*
  %olist855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1854, i32 0, i32 0
  %arrayidx856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist855, i32 0, i64 0
  %osucc857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx856, i32 0, i32 1
  store %union.rec* %360, %union.rec** %osucc857, align 8
  %363 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1858 = bitcast %union.rec* %364 to %struct.word_type*
  %olist859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1858, i32 0, i32 0
  %arrayidx860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist859, i32 0, i64 0
  %opred861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx860, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred861, align 8
  %365 = load %union.rec*, %union.rec** @zz_res, align 8
  %366 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1862 = bitcast %union.rec* %366 to %struct.word_type*
  %olist863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1862, i32 0, i32 0
  %arrayidx864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist863, i32 0, i64 0
  %osucc865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx864, i32 0, i32 1
  store %union.rec* %365, %union.rec** %osucc865, align 8
  br label %cond.end.866

cond.end.866:                                     ; preds = %cond.false.837, %cond.true.836
  %cond867 = phi %union.rec* [ %354, %cond.true.836 ], [ %365, %cond.false.837 ]
  br label %cond.end.868

cond.end.868:                                     ; preds = %cond.end.866, %cond.true.832
  %cond869 = phi %union.rec* [ %352, %cond.true.832 ], [ %cond867, %cond.end.866 ]
  %367 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %367, %union.rec** @zz_res, align 8
  %368 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %368, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp870 = icmp eq %union.rec* %369, null
  br i1 %cmp870, label %cond.true.872, label %cond.false.873

cond.true.872:                                    ; preds = %cond.end.868
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.908

cond.false.873:                                   ; preds = %cond.end.868
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp874 = icmp eq %union.rec* %371, null
  br i1 %cmp874, label %cond.true.876, label %cond.false.877

cond.true.876:                                    ; preds = %cond.false.873
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.906

cond.false.877:                                   ; preds = %cond.false.873
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1878 = bitcast %union.rec* %373 to %struct.word_type*
  %olist879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1878, i32 0, i32 0
  %arrayidx880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist879, i32 0, i64 1
  %opred881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx880, i32 0, i32 0
  %374 = load %union.rec*, %union.rec** %opred881, align 8
  store %union.rec* %374, %union.rec** @zz_tmp, align 8
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1882 = bitcast %union.rec* %375 to %struct.word_type*
  %olist883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1882, i32 0, i32 0
  %arrayidx884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist883, i32 0, i64 1
  %opred885 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx884, i32 0, i32 0
  %376 = load %union.rec*, %union.rec** %opred885, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1886 = bitcast %union.rec* %377 to %struct.word_type*
  %olist887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1886, i32 0, i32 0
  %arrayidx888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist887, i32 0, i64 1
  %opred889 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx888, i32 0, i32 0
  store %union.rec* %376, %union.rec** %opred889, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1890 = bitcast %union.rec* %379 to %struct.word_type*
  %olist891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1890, i32 0, i32 0
  %arrayidx892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist891, i32 0, i64 1
  %opred893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx892, i32 0, i32 0
  %380 = load %union.rec*, %union.rec** %opred893, align 8
  %os1894 = bitcast %union.rec* %380 to %struct.word_type*
  %olist895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1894, i32 0, i32 0
  %arrayidx896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist895, i32 0, i64 1
  %osucc897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx896, i32 0, i32 1
  store %union.rec* %378, %union.rec** %osucc897, align 8
  %381 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1898 = bitcast %union.rec* %382 to %struct.word_type*
  %olist899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1898, i32 0, i32 0
  %arrayidx900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist899, i32 0, i64 1
  %opred901 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx900, i32 0, i32 0
  store %union.rec* %381, %union.rec** %opred901, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %384 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1902 = bitcast %union.rec* %384 to %struct.word_type*
  %olist903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1902, i32 0, i32 0
  %arrayidx904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist903, i32 0, i64 1
  %osucc905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx904, i32 0, i32 1
  store %union.rec* %383, %union.rec** %osucc905, align 8
  br label %cond.end.906

cond.end.906:                                     ; preds = %cond.false.877, %cond.true.876
  %cond907 = phi %union.rec* [ %372, %cond.true.876 ], [ %383, %cond.false.877 ]
  br label %cond.end.908

cond.end.908:                                     ; preds = %cond.end.906, %cond.true.872
  %cond909 = phi %union.rec* [ %370, %cond.true.872 ], [ %cond907, %cond.end.906 ]
  br label %sw.epilog

sw.bb.910:                                        ; preds = %entry
  %385 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv911 = zext i8 %385 to i32
  store i32 %conv911, i32* @zz_size, align 4
  %conv912 = sext i32 %conv911 to i64
  %cmp913 = icmp uge i64 %conv912, 265
  br i1 %cmp913, label %if.then.915, label %if.else.917

if.then.915:                                      ; preds = %sw.bb.910
  %386 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call916 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %386)
  br label %if.end.934

if.else.917:                                      ; preds = %sw.bb.910
  %387 = load i32, i32* @zz_size, align 4
  %idxprom918 = sext i32 %387 to i64
  %arrayidx919 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom918
  %388 = load %union.rec*, %union.rec** %arrayidx919, align 8
  %cmp920 = icmp eq %union.rec* %388, null
  br i1 %cmp920, label %if.then.922, label %if.else.924

if.then.922:                                      ; preds = %if.else.917
  %389 = load i32, i32* @zz_size, align 4
  %390 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call923 = call %union.rec* @GetMemory(i32 %389, %struct.FILE_POS* %390)
  store %union.rec* %call923, %union.rec** @zz_hold, align 8
  br label %if.end.933

if.else.924:                                      ; preds = %if.else.917
  %391 = load i32, i32* @zz_size, align 4
  %idxprom925 = sext i32 %391 to i64
  %arrayidx926 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom925
  %392 = load %union.rec*, %union.rec** %arrayidx926, align 8
  store %union.rec* %392, %union.rec** @zz_hold, align 8
  store %union.rec* %392, %union.rec** @zz_hold, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1927 = bitcast %union.rec* %393 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 0
  %opred930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 0
  %394 = load %union.rec*, %union.rec** %opred930, align 8
  %395 = load i32, i32* @zz_size, align 4
  %idxprom931 = sext i32 %395 to i64
  %arrayidx932 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom931
  store %union.rec* %394, %union.rec** %arrayidx932, align 8
  br label %if.end.933

if.end.933:                                       ; preds = %if.else.924, %if.then.922
  br label %if.end.934

if.end.934:                                       ; preds = %if.end.933, %if.then.915
  %396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1935 = bitcast %union.rec* %396 to %struct.word_type*
  %ou1936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1935, i32 0, i32 1
  %os11937 = bitcast %union.FIRST_UNION* %ou1936 to %struct.anon*
  %otype938 = getelementptr inbounds %struct.anon, %struct.anon* %os11937, i32 0, i32 0
  store i8 2, i8* %otype938, align 1
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1939 = bitcast %union.rec* %398 to %struct.word_type*
  %olist940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 0
  %arrayidx941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist940, i32 0, i64 1
  %osucc942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx941, i32 0, i32 1
  store %union.rec* %397, %union.rec** %osucc942, align 8
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1943 = bitcast %union.rec* %399 to %struct.word_type*
  %olist944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1943, i32 0, i32 0
  %arrayidx945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist944, i32 0, i64 1
  %opred946 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx945, i32 0, i32 0
  store %union.rec* %397, %union.rec** %opred946, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1947 = bitcast %union.rec* %400 to %struct.word_type*
  %olist948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1947, i32 0, i32 0
  %arrayidx949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist948, i32 0, i64 0
  %osucc950 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx949, i32 0, i32 1
  store %union.rec* %397, %union.rec** %osucc950, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1951 = bitcast %union.rec* %401 to %struct.word_type*
  %olist952 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1951, i32 0, i32 0
  %arrayidx953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist952, i32 0, i64 0
  %opred954 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx953, i32 0, i32 0
  store %union.rec* %397, %union.rec** %opred954, align 8
  store %union.rec* %397, %union.rec** %res, align 8
  %402 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1955 = bitcast %union.rec* %402 to %struct.word_type*
  %olist956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1955, i32 0, i32 0
  %arrayidx957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist956, i32 0, i64 0
  %osucc958 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx957, i32 0, i32 1
  %403 = load %union.rec*, %union.rec** %osucc958, align 8
  store %union.rec* %403, %union.rec** %link, align 8
  br label %for.cond.959

for.cond.959:                                     ; preds = %for.inc.1117, %if.end.934
  %404 = load %union.rec*, %union.rec** %link, align 8
  %405 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp960 = icmp ne %union.rec* %404, %405
  br i1 %cmp960, label %for.body.962, label %for.end.1122

for.body.962:                                     ; preds = %for.cond.959
  %406 = load %union.rec*, %union.rec** %link, align 8
  %os1963 = bitcast %union.rec* %406 to %struct.word_type*
  %olist964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1963, i32 0, i32 0
  %arrayidx965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist964, i32 0, i64 1
  %opred966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx965, i32 0, i32 0
  %407 = load %union.rec*, %union.rec** %opred966, align 8
  store %union.rec* %407, %union.rec** %y, align 8
  br label %for.cond.967

for.cond.967:                                     ; preds = %for.inc.976, %for.body.962
  %408 = load %union.rec*, %union.rec** %y, align 8
  %os1968 = bitcast %union.rec* %408 to %struct.word_type*
  %ou1969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1968, i32 0, i32 1
  %os11970 = bitcast %union.FIRST_UNION* %ou1969 to %struct.anon*
  %otype971 = getelementptr inbounds %struct.anon, %struct.anon* %os11970, i32 0, i32 0
  %409 = load i8, i8* %otype971, align 1
  %conv972 = zext i8 %409 to i32
  %cmp973 = icmp eq i32 %conv972, 0
  br i1 %cmp973, label %for.body.975, label %for.end.981

for.body.975:                                     ; preds = %for.cond.967
  br label %for.inc.976

for.inc.976:                                      ; preds = %for.body.975
  %410 = load %union.rec*, %union.rec** %y, align 8
  %os1977 = bitcast %union.rec* %410 to %struct.word_type*
  %olist978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1977, i32 0, i32 0
  %arrayidx979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist978, i32 0, i64 1
  %opred980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx979, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %opred980, align 8
  store %union.rec* %411, %union.rec** %y, align 8
  br label %for.cond.967

for.end.981:                                      ; preds = %for.cond.967
  %412 = load %union.rec*, %union.rec** %y, align 8
  %os1982 = bitcast %union.rec* %412 to %struct.word_type*
  %ou1983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1982, i32 0, i32 1
  %os11984 = bitcast %union.FIRST_UNION* %ou1983 to %struct.anon*
  %otype985 = getelementptr inbounds %struct.anon, %struct.anon* %os11984, i32 0, i32 0
  %413 = load i8, i8* %otype985, align 1
  %conv986 = zext i8 %413 to i32
  %cmp987 = icmp ne i32 %conv986, 2
  br i1 %cmp987, label %if.end.991, label %if.then.989

if.then.989:                                      ; preds = %for.end.981
  %414 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call990 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %414, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.989, %for.end.981
  %415 = load %union.rec*, %union.rec** %y, align 8
  %416 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call992 = call %union.rec* @CopyObject(%union.rec* %415, %struct.FILE_POS* %416)
  store %union.rec* %call992, %union.rec** %tmp, align 8
  %417 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv993 = zext i8 %417 to i32
  store i32 %conv993, i32* @zz_size, align 4
  %conv994 = sext i32 %conv993 to i64
  %cmp995 = icmp uge i64 %conv994, 265
  br i1 %cmp995, label %if.then.997, label %if.else.999

if.then.997:                                      ; preds = %if.end.991
  %418 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call998 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %418)
  br label %if.end.1016

if.else.999:                                      ; preds = %if.end.991
  %419 = load i32, i32* @zz_size, align 4
  %idxprom1000 = sext i32 %419 to i64
  %arrayidx1001 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1000
  %420 = load %union.rec*, %union.rec** %arrayidx1001, align 8
  %cmp1002 = icmp eq %union.rec* %420, null
  br i1 %cmp1002, label %if.then.1004, label %if.else.1006

if.then.1004:                                     ; preds = %if.else.999
  %421 = load i32, i32* @zz_size, align 4
  %422 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1005 = call %union.rec* @GetMemory(i32 %421, %struct.FILE_POS* %422)
  store %union.rec* %call1005, %union.rec** @zz_hold, align 8
  br label %if.end.1015

if.else.1006:                                     ; preds = %if.else.999
  %423 = load i32, i32* @zz_size, align 4
  %idxprom1007 = sext i32 %423 to i64
  %arrayidx1008 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1007
  %424 = load %union.rec*, %union.rec** %arrayidx1008, align 8
  store %union.rec* %424, %union.rec** @zz_hold, align 8
  store %union.rec* %424, %union.rec** @zz_hold, align 8
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11009 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11009, i32 0, i32 0
  %arrayidx1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1010, i32 0, i64 0
  %opred1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1011, i32 0, i32 0
  %426 = load %union.rec*, %union.rec** %opred1012, align 8
  %427 = load i32, i32* @zz_size, align 4
  %idxprom1013 = sext i32 %427 to i64
  %arrayidx1014 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1013
  store %union.rec* %426, %union.rec** %arrayidx1014, align 8
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.else.1006, %if.then.1004
  br label %if.end.1016

if.end.1016:                                      ; preds = %if.end.1015, %if.then.997
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11017 = bitcast %union.rec* %428 to %struct.word_type*
  %ou11018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11017, i32 0, i32 1
  %os111019 = bitcast %union.FIRST_UNION* %ou11018 to %struct.anon*
  %otype1020 = getelementptr inbounds %struct.anon, %struct.anon* %os111019, i32 0, i32 0
  store i8 0, i8* %otype1020, align 1
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11021 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 0
  %arrayidx1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1022, i32 0, i64 1
  %osucc1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1023, i32 0, i32 1
  store %union.rec* %429, %union.rec** %osucc1024, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11025 = bitcast %union.rec* %431 to %struct.word_type*
  %olist1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11025, i32 0, i32 0
  %arrayidx1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1026, i32 0, i64 1
  %opred1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1027, i32 0, i32 0
  store %union.rec* %429, %union.rec** %opred1028, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11029 = bitcast %union.rec* %432 to %struct.word_type*
  %olist1030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1030, i32 0, i64 0
  %osucc1032 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1031, i32 0, i32 1
  store %union.rec* %429, %union.rec** %osucc1032, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11033 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11033, i32 0, i32 0
  %arrayidx1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1034, i32 0, i64 0
  %opred1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1035, i32 0, i32 0
  store %union.rec* %429, %union.rec** %opred1036, align 8
  store %union.rec* %429, %union.rec** @xx_link, align 8
  %434 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %434, %union.rec** @zz_res, align 8
  %435 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %435, %union.rec** @zz_hold, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1037 = icmp eq %union.rec* %436, null
  br i1 %cmp1037, label %cond.true.1039, label %cond.false.1040

cond.true.1039:                                   ; preds = %if.end.1016
  %437 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1075

cond.false.1040:                                  ; preds = %if.end.1016
  %438 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1041 = icmp eq %union.rec* %438, null
  br i1 %cmp1041, label %cond.true.1043, label %cond.false.1044

cond.true.1043:                                   ; preds = %cond.false.1040
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1073

cond.false.1044:                                  ; preds = %cond.false.1040
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11045 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11045, i32 0, i32 0
  %arrayidx1047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1046, i32 0, i64 0
  %opred1048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1047, i32 0, i32 0
  %441 = load %union.rec*, %union.rec** %opred1048, align 8
  store %union.rec* %441, %union.rec** @zz_tmp, align 8
  %442 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11049 = bitcast %union.rec* %442 to %struct.word_type*
  %olist1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11049, i32 0, i32 0
  %arrayidx1051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1050, i32 0, i64 0
  %opred1052 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1051, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %opred1052, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11053 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11053, i32 0, i32 0
  %arrayidx1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1054, i32 0, i64 0
  %opred1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1055, i32 0, i32 0
  store %union.rec* %443, %union.rec** %opred1056, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11057 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11057, i32 0, i32 0
  %arrayidx1059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1058, i32 0, i64 0
  %opred1060 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1059, i32 0, i32 0
  %447 = load %union.rec*, %union.rec** %opred1060, align 8
  %os11061 = bitcast %union.rec* %447 to %struct.word_type*
  %olist1062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11061, i32 0, i32 0
  %arrayidx1063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1062, i32 0, i64 0
  %osucc1064 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1063, i32 0, i32 1
  store %union.rec* %445, %union.rec** %osucc1064, align 8
  %448 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %449 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11065 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11065, i32 0, i32 0
  %arrayidx1067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1066, i32 0, i64 0
  %opred1068 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1067, i32 0, i32 0
  store %union.rec* %448, %union.rec** %opred1068, align 8
  %450 = load %union.rec*, %union.rec** @zz_res, align 8
  %451 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11069 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 0
  %arrayidx1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1070, i32 0, i64 0
  %osucc1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1071, i32 0, i32 1
  store %union.rec* %450, %union.rec** %osucc1072, align 8
  br label %cond.end.1073

cond.end.1073:                                    ; preds = %cond.false.1044, %cond.true.1043
  %cond1074 = phi %union.rec* [ %439, %cond.true.1043 ], [ %450, %cond.false.1044 ]
  br label %cond.end.1075

cond.end.1075:                                    ; preds = %cond.end.1073, %cond.true.1039
  %cond1076 = phi %union.rec* [ %437, %cond.true.1039 ], [ %cond1074, %cond.end.1073 ]
  %452 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %452, %union.rec** @zz_res, align 8
  %453 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %453, %union.rec** @zz_hold, align 8
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1077 = icmp eq %union.rec* %454, null
  br i1 %cmp1077, label %cond.true.1079, label %cond.false.1080

cond.true.1079:                                   ; preds = %cond.end.1075
  %455 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1115

cond.false.1080:                                  ; preds = %cond.end.1075
  %456 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1081 = icmp eq %union.rec* %456, null
  br i1 %cmp1081, label %cond.true.1083, label %cond.false.1084

cond.true.1083:                                   ; preds = %cond.false.1080
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1113

cond.false.1084:                                  ; preds = %cond.false.1080
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11085 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11085, i32 0, i32 0
  %arrayidx1087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1086, i32 0, i64 1
  %opred1088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1087, i32 0, i32 0
  %459 = load %union.rec*, %union.rec** %opred1088, align 8
  store %union.rec* %459, %union.rec** @zz_tmp, align 8
  %460 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11089 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11089, i32 0, i32 0
  %arrayidx1091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1090, i32 0, i64 1
  %opred1092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1091, i32 0, i32 0
  %461 = load %union.rec*, %union.rec** %opred1092, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11093 = bitcast %union.rec* %462 to %struct.word_type*
  %olist1094 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11093, i32 0, i32 0
  %arrayidx1095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1094, i32 0, i64 1
  %opred1096 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1095, i32 0, i32 0
  store %union.rec* %461, %union.rec** %opred1096, align 8
  %463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %464 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11097 = bitcast %union.rec* %464 to %struct.word_type*
  %olist1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11097, i32 0, i32 0
  %arrayidx1099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1098, i32 0, i64 1
  %opred1100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1099, i32 0, i32 0
  %465 = load %union.rec*, %union.rec** %opred1100, align 8
  %os11101 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11101, i32 0, i32 0
  %arrayidx1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1102, i32 0, i64 1
  %osucc1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1103, i32 0, i32 1
  store %union.rec* %463, %union.rec** %osucc1104, align 8
  %466 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11105 = bitcast %union.rec* %467 to %struct.word_type*
  %olist1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11105, i32 0, i32 0
  %arrayidx1107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1106, i32 0, i64 1
  %opred1108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1107, i32 0, i32 0
  store %union.rec* %466, %union.rec** %opred1108, align 8
  %468 = load %union.rec*, %union.rec** @zz_res, align 8
  %469 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11109 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11109, i32 0, i32 0
  %arrayidx1111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1110, i32 0, i64 1
  %osucc1112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1111, i32 0, i32 1
  store %union.rec* %468, %union.rec** %osucc1112, align 8
  br label %cond.end.1113

cond.end.1113:                                    ; preds = %cond.false.1084, %cond.true.1083
  %cond1114 = phi %union.rec* [ %457, %cond.true.1083 ], [ %468, %cond.false.1084 ]
  br label %cond.end.1115

cond.end.1115:                                    ; preds = %cond.end.1113, %cond.true.1079
  %cond1116 = phi %union.rec* [ %455, %cond.true.1079 ], [ %cond1114, %cond.end.1113 ]
  br label %for.inc.1117

for.inc.1117:                                     ; preds = %cond.end.1115
  %470 = load %union.rec*, %union.rec** %link, align 8
  %os11118 = bitcast %union.rec* %470 to %struct.word_type*
  %olist1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11118, i32 0, i32 0
  %arrayidx1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1119, i32 0, i64 0
  %osucc1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1120, i32 0, i32 1
  %471 = load %union.rec*, %union.rec** %osucc1121, align 8
  store %union.rec* %471, %union.rec** %link, align 8
  br label %for.cond.959

for.end.1122:                                     ; preds = %for.cond.959
  %472 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21124 = bitcast %union.rec* %472 to %struct.closure_type*
  %oactual1125 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21124, i32 0, i32 5
  %473 = load %union.rec*, %union.rec** %oactual1125, align 8
  %474 = load %union.rec*, %union.rec** %res, align 8
  %os21126 = bitcast %union.rec* %474 to %struct.closure_type*
  %oactual1127 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21126, i32 0, i32 5
  store %union.rec* %473, %union.rec** %oactual1127, align 8
  %475 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21128 = bitcast %union.rec* %475 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21128, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %476 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load1129 = load i16, i16* %476, align 4
  %bf.lshr1130 = lshr i16 %bf.load1129, 7
  %bf.clear1131 = and i16 %bf.lshr1130, 1
  %bf.cast1132 = zext i16 %bf.clear1131 to i32
  %477 = load %union.rec*, %union.rec** %res, align 8
  %os21133 = bitcast %union.rec* %477 to %struct.closure_type*
  %ou41134 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21133, i32 0, i32 4
  %osave_style1135 = bitcast %union.FOURTH_UNION* %ou41134 to %struct.STYLE*
  %osu11136 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1135, i32 0, i32 0
  %oline_gap1137 = bitcast %union.anon* %osu11136 to %struct.GAP*
  %478 = bitcast %struct.GAP* %oline_gap1137 to i16*
  %479 = trunc i32 %bf.cast1132 to i16
  %bf.load1138 = load i16, i16* %478, align 4
  %bf.value1139 = and i16 %479, 1
  %bf.shl1140 = shl i16 %bf.value1139, 7
  %bf.clear1141 = and i16 %bf.load1138, -129
  %bf.set1142 = or i16 %bf.clear1141, %bf.shl1140
  store i16 %bf.set1142, i16* %478, align 4
  %bf.result.cast1143 = zext i16 %bf.value1139 to i32
  %480 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21144 = bitcast %union.rec* %480 to %struct.closure_type*
  %ou41145 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21144, i32 0, i32 4
  %osave_style1146 = bitcast %union.FOURTH_UNION* %ou41145 to %struct.STYLE*
  %osu11147 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1146, i32 0, i32 0
  %oline_gap1148 = bitcast %union.anon* %osu11147 to %struct.GAP*
  %481 = bitcast %struct.GAP* %oline_gap1148 to i16*
  %bf.load1149 = load i16, i16* %481, align 4
  %bf.lshr1150 = lshr i16 %bf.load1149, 8
  %bf.clear1151 = and i16 %bf.lshr1150, 1
  %bf.cast1152 = zext i16 %bf.clear1151 to i32
  %482 = load %union.rec*, %union.rec** %res, align 8
  %os21153 = bitcast %union.rec* %482 to %struct.closure_type*
  %ou41154 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21153, i32 0, i32 4
  %osave_style1155 = bitcast %union.FOURTH_UNION* %ou41154 to %struct.STYLE*
  %osu11156 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1155, i32 0, i32 0
  %oline_gap1157 = bitcast %union.anon* %osu11156 to %struct.GAP*
  %483 = bitcast %struct.GAP* %oline_gap1157 to i16*
  %484 = trunc i32 %bf.cast1152 to i16
  %bf.load1158 = load i16, i16* %483, align 4
  %bf.value1159 = and i16 %484, 1
  %bf.shl1160 = shl i16 %bf.value1159, 8
  %bf.clear1161 = and i16 %bf.load1158, -257
  %bf.set1162 = or i16 %bf.clear1161, %bf.shl1160
  store i16 %bf.set1162, i16* %483, align 4
  %bf.result.cast1163 = zext i16 %bf.value1159 to i32
  %485 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21164 = bitcast %union.rec* %485 to %struct.closure_type*
  %ou41165 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21164, i32 0, i32 4
  %osave_style1166 = bitcast %union.FOURTH_UNION* %ou41165 to %struct.STYLE*
  %osu11167 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1166, i32 0, i32 0
  %oline_gap1168 = bitcast %union.anon* %osu11167 to %struct.GAP*
  %486 = bitcast %struct.GAP* %oline_gap1168 to i16*
  %bf.load1169 = load i16, i16* %486, align 4
  %bf.lshr1170 = lshr i16 %bf.load1169, 9
  %bf.clear1171 = and i16 %bf.lshr1170, 1
  %bf.cast1172 = zext i16 %bf.clear1171 to i32
  %487 = load %union.rec*, %union.rec** %res, align 8
  %os21173 = bitcast %union.rec* %487 to %struct.closure_type*
  %ou41174 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21173, i32 0, i32 4
  %osave_style1175 = bitcast %union.FOURTH_UNION* %ou41174 to %struct.STYLE*
  %osu11176 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1175, i32 0, i32 0
  %oline_gap1177 = bitcast %union.anon* %osu11176 to %struct.GAP*
  %488 = bitcast %struct.GAP* %oline_gap1177 to i16*
  %489 = trunc i32 %bf.cast1172 to i16
  %bf.load1178 = load i16, i16* %488, align 4
  %bf.value1179 = and i16 %489, 1
  %bf.shl1180 = shl i16 %bf.value1179, 9
  %bf.clear1181 = and i16 %bf.load1178, -513
  %bf.set1182 = or i16 %bf.clear1181, %bf.shl1180
  store i16 %bf.set1182, i16* %488, align 4
  %bf.result.cast1183 = zext i16 %bf.value1179 to i32
  %490 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21184 = bitcast %union.rec* %490 to %struct.closure_type*
  %ou41185 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21184, i32 0, i32 4
  %osave_style1186 = bitcast %union.FOURTH_UNION* %ou41185 to %struct.STYLE*
  %osu11187 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1186, i32 0, i32 0
  %oline_gap1188 = bitcast %union.anon* %osu11187 to %struct.GAP*
  %491 = bitcast %struct.GAP* %oline_gap1188 to i16*
  %bf.load1189 = load i16, i16* %491, align 4
  %bf.lshr1190 = lshr i16 %bf.load1189, 10
  %bf.clear1191 = and i16 %bf.lshr1190, 7
  %bf.cast1192 = zext i16 %bf.clear1191 to i32
  %492 = load %union.rec*, %union.rec** %res, align 8
  %os21193 = bitcast %union.rec* %492 to %struct.closure_type*
  %ou41194 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21193, i32 0, i32 4
  %osave_style1195 = bitcast %union.FOURTH_UNION* %ou41194 to %struct.STYLE*
  %osu11196 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1195, i32 0, i32 0
  %oline_gap1197 = bitcast %union.anon* %osu11196 to %struct.GAP*
  %493 = bitcast %struct.GAP* %oline_gap1197 to i16*
  %494 = trunc i32 %bf.cast1192 to i16
  %bf.load1198 = load i16, i16* %493, align 4
  %bf.value1199 = and i16 %494, 7
  %bf.shl1200 = shl i16 %bf.value1199, 10
  %bf.clear1201 = and i16 %bf.load1198, -7169
  %bf.set1202 = or i16 %bf.clear1201, %bf.shl1200
  store i16 %bf.set1202, i16* %493, align 4
  %bf.result.cast1203 = zext i16 %bf.value1199 to i32
  %495 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21204 = bitcast %union.rec* %495 to %struct.closure_type*
  %ou41205 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21204, i32 0, i32 4
  %osave_style1206 = bitcast %union.FOURTH_UNION* %ou41205 to %struct.STYLE*
  %osu11207 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1206, i32 0, i32 0
  %oline_gap1208 = bitcast %union.anon* %osu11207 to %struct.GAP*
  %496 = bitcast %struct.GAP* %oline_gap1208 to i16*
  %bf.load1209 = load i16, i16* %496, align 4
  %bf.lshr1210 = lshr i16 %bf.load1209, 13
  %bf.cast1211 = zext i16 %bf.lshr1210 to i32
  %497 = load %union.rec*, %union.rec** %res, align 8
  %os21212 = bitcast %union.rec* %497 to %struct.closure_type*
  %ou41213 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21212, i32 0, i32 4
  %osave_style1214 = bitcast %union.FOURTH_UNION* %ou41213 to %struct.STYLE*
  %osu11215 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1214, i32 0, i32 0
  %oline_gap1216 = bitcast %union.anon* %osu11215 to %struct.GAP*
  %498 = bitcast %struct.GAP* %oline_gap1216 to i16*
  %499 = trunc i32 %bf.cast1211 to i16
  %bf.load1217 = load i16, i16* %498, align 4
  %bf.value1218 = and i16 %499, 7
  %bf.shl1219 = shl i16 %bf.value1218, 13
  %bf.clear1220 = and i16 %bf.load1217, 8191
  %bf.set1221 = or i16 %bf.clear1220, %bf.shl1219
  store i16 %bf.set1221, i16* %498, align 4
  %bf.result.cast1222 = zext i16 %bf.value1218 to i32
  %500 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21223 = bitcast %union.rec* %500 to %struct.closure_type*
  %ou41224 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21223, i32 0, i32 4
  %osave_style1225 = bitcast %union.FOURTH_UNION* %ou41224 to %struct.STYLE*
  %osu11226 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1225, i32 0, i32 0
  %oline_gap1227 = bitcast %union.anon* %osu11226 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap1227, i32 0, i32 1
  %501 = load i16, i16* %owidth, align 2
  %502 = load %union.rec*, %union.rec** %res, align 8
  %os21228 = bitcast %union.rec* %502 to %struct.closure_type*
  %ou41229 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21228, i32 0, i32 4
  %osave_style1230 = bitcast %union.FOURTH_UNION* %ou41229 to %struct.STYLE*
  %osu11231 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1230, i32 0, i32 0
  %oline_gap1232 = bitcast %union.anon* %osu11231 to %struct.GAP*
  %owidth1233 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap1232, i32 0, i32 1
  store i16 %501, i16* %owidth1233, align 2
  %503 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21234 = bitcast %union.rec* %503 to %struct.closure_type*
  %ou41235 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21234, i32 0, i32 4
  %osave_style1236 = bitcast %union.FOURTH_UNION* %ou41235 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1236, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %504 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load1237 = load i8, i8* %504, align 4
  %bf.clear1238 = and i8 %bf.load1237, 3
  %bf.cast1239 = zext i8 %bf.clear1238 to i32
  %505 = load %union.rec*, %union.rec** %res, align 8
  %os21240 = bitcast %union.rec* %505 to %struct.closure_type*
  %ou41241 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21240, i32 0, i32 4
  %osave_style1242 = bitcast %union.FOURTH_UNION* %ou41241 to %struct.STYLE*
  %osu21243 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1242, i32 0, i32 1
  %oss21244 = bitcast %union.anon.10* %osu21243 to %struct.anon.11*
  %506 = bitcast %struct.anon.11* %oss21244 to i8*
  %507 = trunc i32 %bf.cast1239 to i8
  %bf.load1245 = load i8, i8* %506, align 4
  %bf.value1246 = and i8 %507, 3
  %bf.clear1247 = and i8 %bf.load1245, -4
  %bf.set1248 = or i8 %bf.clear1247, %bf.value1246
  store i8 %bf.set1248, i8* %506, align 4
  %bf.result.cast1249 = zext i8 %bf.value1246 to i32
  %508 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21250 = bitcast %union.rec* %508 to %struct.closure_type*
  %ou41251 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21250, i32 0, i32 4
  %osave_style1252 = bitcast %union.FOURTH_UNION* %ou41251 to %struct.STYLE*
  %osu21253 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1252, i32 0, i32 1
  %oss21254 = bitcast %union.anon.10* %osu21253 to %struct.anon.11*
  %509 = bitcast %struct.anon.11* %oss21254 to i8*
  %bf.load1255 = load i8, i8* %509, align 4
  %bf.lshr1256 = lshr i8 %bf.load1255, 2
  %bf.clear1257 = and i8 %bf.lshr1256, 3
  %bf.cast1258 = zext i8 %bf.clear1257 to i32
  %510 = load %union.rec*, %union.rec** %res, align 8
  %os21259 = bitcast %union.rec* %510 to %struct.closure_type*
  %ou41260 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21259, i32 0, i32 4
  %osave_style1261 = bitcast %union.FOURTH_UNION* %ou41260 to %struct.STYLE*
  %osu21262 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1261, i32 0, i32 1
  %oss21263 = bitcast %union.anon.10* %osu21262 to %struct.anon.11*
  %511 = bitcast %struct.anon.11* %oss21263 to i8*
  %512 = trunc i32 %bf.cast1258 to i8
  %bf.load1264 = load i8, i8* %511, align 4
  %bf.value1265 = and i8 %512, 3
  %bf.shl1266 = shl i8 %bf.value1265, 2
  %bf.clear1267 = and i8 %bf.load1264, -13
  %bf.set1268 = or i8 %bf.clear1267, %bf.shl1266
  store i8 %bf.set1268, i8* %511, align 4
  %bf.result.cast1269 = zext i8 %bf.value1265 to i32
  %513 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21270 = bitcast %union.rec* %513 to %struct.closure_type*
  %ou41271 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21270, i32 0, i32 4
  %osave_style1272 = bitcast %union.FOURTH_UNION* %ou41271 to %struct.STYLE*
  %osu21273 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1272, i32 0, i32 1
  %oss21274 = bitcast %union.anon.10* %osu21273 to %struct.anon.11*
  %514 = bitcast %struct.anon.11* %oss21274 to i8*
  %bf.load1275 = load i8, i8* %514, align 4
  %bf.lshr1276 = lshr i8 %bf.load1275, 4
  %bf.clear1277 = and i8 %bf.lshr1276, 7
  %bf.cast1278 = zext i8 %bf.clear1277 to i32
  %515 = load %union.rec*, %union.rec** %res, align 8
  %os21279 = bitcast %union.rec* %515 to %struct.closure_type*
  %ou41280 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21279, i32 0, i32 4
  %osave_style1281 = bitcast %union.FOURTH_UNION* %ou41280 to %struct.STYLE*
  %osu21282 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1281, i32 0, i32 1
  %oss21283 = bitcast %union.anon.10* %osu21282 to %struct.anon.11*
  %516 = bitcast %struct.anon.11* %oss21283 to i8*
  %517 = trunc i32 %bf.cast1278 to i8
  %bf.load1284 = load i8, i8* %516, align 4
  %bf.value1285 = and i8 %517, 7
  %bf.shl1286 = shl i8 %bf.value1285, 4
  %bf.clear1287 = and i8 %bf.load1284, -113
  %bf.set1288 = or i8 %bf.clear1287, %bf.shl1286
  store i8 %bf.set1288, i8* %516, align 4
  %bf.result.cast1289 = zext i8 %bf.value1285 to i32
  %518 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21290 = bitcast %union.rec* %518 to %struct.closure_type*
  %ou41291 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21290, i32 0, i32 4
  %osave_style1292 = bitcast %union.FOURTH_UNION* %ou41291 to %struct.STYLE*
  %osu11293 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1292, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu11293 to %struct.anon.9*
  %519 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load1294 = load i8, i8* %519, align 4
  %bf.lshr1295 = lshr i8 %bf.load1294, 3
  %bf.clear1296 = and i8 %bf.lshr1295, 1
  %bf.cast1297 = zext i8 %bf.clear1296 to i32
  %520 = load %union.rec*, %union.rec** %res, align 8
  %os21298 = bitcast %union.rec* %520 to %struct.closure_type*
  %ou41299 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21298, i32 0, i32 4
  %osave_style1300 = bitcast %union.FOURTH_UNION* %ou41299 to %struct.STYLE*
  %osu11301 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1300, i32 0, i32 0
  %oss11302 = bitcast %union.anon* %osu11301 to %struct.anon.9*
  %521 = bitcast %struct.anon.9* %oss11302 to i8*
  %522 = trunc i32 %bf.cast1297 to i8
  %bf.load1303 = load i8, i8* %521, align 4
  %bf.value1304 = and i8 %522, 1
  %bf.shl1305 = shl i8 %bf.value1304, 3
  %bf.clear1306 = and i8 %bf.load1303, -9
  %bf.set1307 = or i8 %bf.clear1306, %bf.shl1305
  store i8 %bf.set1307, i8* %521, align 4
  %bf.result.cast1308 = zext i8 %bf.value1304 to i32
  %523 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21309 = bitcast %union.rec* %523 to %struct.closure_type*
  %ou41310 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21309, i32 0, i32 4
  %osave_style1311 = bitcast %union.FOURTH_UNION* %ou41310 to %struct.STYLE*
  %osu21312 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1311, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu21312 to %struct.GAP*
  %524 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load1313 = load i16, i16* %524, align 4
  %bf.lshr1314 = lshr i16 %bf.load1313, 7
  %bf.clear1315 = and i16 %bf.lshr1314, 1
  %bf.cast1316 = zext i16 %bf.clear1315 to i32
  %525 = load %union.rec*, %union.rec** %res, align 8
  %os21317 = bitcast %union.rec* %525 to %struct.closure_type*
  %ou41318 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21317, i32 0, i32 4
  %osave_style1319 = bitcast %union.FOURTH_UNION* %ou41318 to %struct.STYLE*
  %osu21320 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1319, i32 0, i32 1
  %ospace_gap1321 = bitcast %union.anon.10* %osu21320 to %struct.GAP*
  %526 = bitcast %struct.GAP* %ospace_gap1321 to i16*
  %527 = trunc i32 %bf.cast1316 to i16
  %bf.load1322 = load i16, i16* %526, align 4
  %bf.value1323 = and i16 %527, 1
  %bf.shl1324 = shl i16 %bf.value1323, 7
  %bf.clear1325 = and i16 %bf.load1322, -129
  %bf.set1326 = or i16 %bf.clear1325, %bf.shl1324
  store i16 %bf.set1326, i16* %526, align 4
  %bf.result.cast1327 = zext i16 %bf.value1323 to i32
  %528 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21328 = bitcast %union.rec* %528 to %struct.closure_type*
  %ou41329 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21328, i32 0, i32 4
  %osave_style1330 = bitcast %union.FOURTH_UNION* %ou41329 to %struct.STYLE*
  %osu21331 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1330, i32 0, i32 1
  %ospace_gap1332 = bitcast %union.anon.10* %osu21331 to %struct.GAP*
  %529 = bitcast %struct.GAP* %ospace_gap1332 to i16*
  %bf.load1333 = load i16, i16* %529, align 4
  %bf.lshr1334 = lshr i16 %bf.load1333, 8
  %bf.clear1335 = and i16 %bf.lshr1334, 1
  %bf.cast1336 = zext i16 %bf.clear1335 to i32
  %530 = load %union.rec*, %union.rec** %res, align 8
  %os21337 = bitcast %union.rec* %530 to %struct.closure_type*
  %ou41338 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21337, i32 0, i32 4
  %osave_style1339 = bitcast %union.FOURTH_UNION* %ou41338 to %struct.STYLE*
  %osu21340 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1339, i32 0, i32 1
  %ospace_gap1341 = bitcast %union.anon.10* %osu21340 to %struct.GAP*
  %531 = bitcast %struct.GAP* %ospace_gap1341 to i16*
  %532 = trunc i32 %bf.cast1336 to i16
  %bf.load1342 = load i16, i16* %531, align 4
  %bf.value1343 = and i16 %532, 1
  %bf.shl1344 = shl i16 %bf.value1343, 8
  %bf.clear1345 = and i16 %bf.load1342, -257
  %bf.set1346 = or i16 %bf.clear1345, %bf.shl1344
  store i16 %bf.set1346, i16* %531, align 4
  %bf.result.cast1347 = zext i16 %bf.value1343 to i32
  %533 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21348 = bitcast %union.rec* %533 to %struct.closure_type*
  %ou41349 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21348, i32 0, i32 4
  %osave_style1350 = bitcast %union.FOURTH_UNION* %ou41349 to %struct.STYLE*
  %osu21351 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1350, i32 0, i32 1
  %ospace_gap1352 = bitcast %union.anon.10* %osu21351 to %struct.GAP*
  %534 = bitcast %struct.GAP* %ospace_gap1352 to i16*
  %bf.load1353 = load i16, i16* %534, align 4
  %bf.lshr1354 = lshr i16 %bf.load1353, 9
  %bf.clear1355 = and i16 %bf.lshr1354, 1
  %bf.cast1356 = zext i16 %bf.clear1355 to i32
  %535 = load %union.rec*, %union.rec** %res, align 8
  %os21357 = bitcast %union.rec* %535 to %struct.closure_type*
  %ou41358 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21357, i32 0, i32 4
  %osave_style1359 = bitcast %union.FOURTH_UNION* %ou41358 to %struct.STYLE*
  %osu21360 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1359, i32 0, i32 1
  %ospace_gap1361 = bitcast %union.anon.10* %osu21360 to %struct.GAP*
  %536 = bitcast %struct.GAP* %ospace_gap1361 to i16*
  %537 = trunc i32 %bf.cast1356 to i16
  %bf.load1362 = load i16, i16* %536, align 4
  %bf.value1363 = and i16 %537, 1
  %bf.shl1364 = shl i16 %bf.value1363, 9
  %bf.clear1365 = and i16 %bf.load1362, -513
  %bf.set1366 = or i16 %bf.clear1365, %bf.shl1364
  store i16 %bf.set1366, i16* %536, align 4
  %bf.result.cast1367 = zext i16 %bf.value1363 to i32
  %538 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21368 = bitcast %union.rec* %538 to %struct.closure_type*
  %ou41369 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21368, i32 0, i32 4
  %osave_style1370 = bitcast %union.FOURTH_UNION* %ou41369 to %struct.STYLE*
  %osu21371 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1370, i32 0, i32 1
  %ospace_gap1372 = bitcast %union.anon.10* %osu21371 to %struct.GAP*
  %539 = bitcast %struct.GAP* %ospace_gap1372 to i16*
  %bf.load1373 = load i16, i16* %539, align 4
  %bf.lshr1374 = lshr i16 %bf.load1373, 10
  %bf.clear1375 = and i16 %bf.lshr1374, 7
  %bf.cast1376 = zext i16 %bf.clear1375 to i32
  %540 = load %union.rec*, %union.rec** %res, align 8
  %os21377 = bitcast %union.rec* %540 to %struct.closure_type*
  %ou41378 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21377, i32 0, i32 4
  %osave_style1379 = bitcast %union.FOURTH_UNION* %ou41378 to %struct.STYLE*
  %osu21380 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1379, i32 0, i32 1
  %ospace_gap1381 = bitcast %union.anon.10* %osu21380 to %struct.GAP*
  %541 = bitcast %struct.GAP* %ospace_gap1381 to i16*
  %542 = trunc i32 %bf.cast1376 to i16
  %bf.load1382 = load i16, i16* %541, align 4
  %bf.value1383 = and i16 %542, 7
  %bf.shl1384 = shl i16 %bf.value1383, 10
  %bf.clear1385 = and i16 %bf.load1382, -7169
  %bf.set1386 = or i16 %bf.clear1385, %bf.shl1384
  store i16 %bf.set1386, i16* %541, align 4
  %bf.result.cast1387 = zext i16 %bf.value1383 to i32
  %543 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21388 = bitcast %union.rec* %543 to %struct.closure_type*
  %ou41389 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21388, i32 0, i32 4
  %osave_style1390 = bitcast %union.FOURTH_UNION* %ou41389 to %struct.STYLE*
  %osu21391 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1390, i32 0, i32 1
  %ospace_gap1392 = bitcast %union.anon.10* %osu21391 to %struct.GAP*
  %544 = bitcast %struct.GAP* %ospace_gap1392 to i16*
  %bf.load1393 = load i16, i16* %544, align 4
  %bf.lshr1394 = lshr i16 %bf.load1393, 13
  %bf.cast1395 = zext i16 %bf.lshr1394 to i32
  %545 = load %union.rec*, %union.rec** %res, align 8
  %os21396 = bitcast %union.rec* %545 to %struct.closure_type*
  %ou41397 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21396, i32 0, i32 4
  %osave_style1398 = bitcast %union.FOURTH_UNION* %ou41397 to %struct.STYLE*
  %osu21399 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1398, i32 0, i32 1
  %ospace_gap1400 = bitcast %union.anon.10* %osu21399 to %struct.GAP*
  %546 = bitcast %struct.GAP* %ospace_gap1400 to i16*
  %547 = trunc i32 %bf.cast1395 to i16
  %bf.load1401 = load i16, i16* %546, align 4
  %bf.value1402 = and i16 %547, 7
  %bf.shl1403 = shl i16 %bf.value1402, 13
  %bf.clear1404 = and i16 %bf.load1401, 8191
  %bf.set1405 = or i16 %bf.clear1404, %bf.shl1403
  store i16 %bf.set1405, i16* %546, align 4
  %bf.result.cast1406 = zext i16 %bf.value1402 to i32
  %548 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21407 = bitcast %union.rec* %548 to %struct.closure_type*
  %ou41408 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21407, i32 0, i32 4
  %osave_style1409 = bitcast %union.FOURTH_UNION* %ou41408 to %struct.STYLE*
  %osu21410 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1409, i32 0, i32 1
  %ospace_gap1411 = bitcast %union.anon.10* %osu21410 to %struct.GAP*
  %owidth1412 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap1411, i32 0, i32 1
  %549 = load i16, i16* %owidth1412, align 2
  %550 = load %union.rec*, %union.rec** %res, align 8
  %os21413 = bitcast %union.rec* %550 to %struct.closure_type*
  %ou41414 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21413, i32 0, i32 4
  %osave_style1415 = bitcast %union.FOURTH_UNION* %ou41414 to %struct.STYLE*
  %osu21416 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1415, i32 0, i32 1
  %ospace_gap1417 = bitcast %union.anon.10* %osu21416 to %struct.GAP*
  %owidth1418 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap1417, i32 0, i32 1
  store i16 %549, i16* %owidth1418, align 2
  %551 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21419 = bitcast %union.rec* %551 to %struct.closure_type*
  %ou41420 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21419, i32 0, i32 4
  %osave_style1421 = bitcast %union.FOURTH_UNION* %ou41420 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1421, i32 0, i32 4
  %bf.load1422 = load i32, i32* %ofont, align 4
  %bf.clear1423 = and i32 %bf.load1422, 4095
  %552 = load %union.rec*, %union.rec** %res, align 8
  %os21424 = bitcast %union.rec* %552 to %struct.closure_type*
  %ou41425 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21424, i32 0, i32 4
  %osave_style1426 = bitcast %union.FOURTH_UNION* %ou41425 to %struct.STYLE*
  %ofont1427 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1426, i32 0, i32 4
  %bf.load1428 = load i32, i32* %ofont1427, align 4
  %bf.value1429 = and i32 %bf.clear1423, 4095
  %bf.clear1430 = and i32 %bf.load1428, -4096
  %bf.set1431 = or i32 %bf.clear1430, %bf.value1429
  store i32 %bf.set1431, i32* %ofont1427, align 4
  %553 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21432 = bitcast %union.rec* %553 to %struct.closure_type*
  %ou41433 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21432, i32 0, i32 4
  %osave_style1434 = bitcast %union.FOURTH_UNION* %ou41433 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1434, i32 0, i32 4
  %bf.load1435 = load i32, i32* %ocolour, align 4
  %bf.lshr1436 = lshr i32 %bf.load1435, 12
  %bf.clear1437 = and i32 %bf.lshr1436, 1023
  %554 = load %union.rec*, %union.rec** %res, align 8
  %os21438 = bitcast %union.rec* %554 to %struct.closure_type*
  %ou41439 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21438, i32 0, i32 4
  %osave_style1440 = bitcast %union.FOURTH_UNION* %ou41439 to %struct.STYLE*
  %ocolour1441 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1440, i32 0, i32 4
  %bf.load1442 = load i32, i32* %ocolour1441, align 4
  %bf.value1443 = and i32 %bf.clear1437, 1023
  %bf.shl1444 = shl i32 %bf.value1443, 12
  %bf.clear1445 = and i32 %bf.load1442, -4190209
  %bf.set1446 = or i32 %bf.clear1445, %bf.shl1444
  store i32 %bf.set1446, i32* %ocolour1441, align 4
  %555 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21447 = bitcast %union.rec* %555 to %struct.closure_type*
  %ou41448 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21447, i32 0, i32 4
  %osave_style1449 = bitcast %union.FOURTH_UNION* %ou41448 to %struct.STYLE*
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1449, i32 0, i32 4
  %bf.load1450 = load i32, i32* %ooutline, align 4
  %bf.lshr1451 = lshr i32 %bf.load1450, 22
  %bf.clear1452 = and i32 %bf.lshr1451, 3
  %556 = load %union.rec*, %union.rec** %res, align 8
  %os21453 = bitcast %union.rec* %556 to %struct.closure_type*
  %ou41454 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21453, i32 0, i32 4
  %osave_style1455 = bitcast %union.FOURTH_UNION* %ou41454 to %struct.STYLE*
  %ooutline1456 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1455, i32 0, i32 4
  %bf.load1457 = load i32, i32* %ooutline1456, align 4
  %bf.value1458 = and i32 %bf.clear1452, 3
  %bf.shl1459 = shl i32 %bf.value1458, 22
  %bf.clear1460 = and i32 %bf.load1457, -12582913
  %bf.set1461 = or i32 %bf.clear1460, %bf.shl1459
  store i32 %bf.set1461, i32* %ooutline1456, align 4
  %557 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21462 = bitcast %union.rec* %557 to %struct.closure_type*
  %ou41463 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21462, i32 0, i32 4
  %osave_style1464 = bitcast %union.FOURTH_UNION* %ou41463 to %struct.STYLE*
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1464, i32 0, i32 4
  %bf.load1465 = load i32, i32* %olanguage, align 4
  %bf.lshr1466 = lshr i32 %bf.load1465, 24
  %bf.clear1467 = and i32 %bf.lshr1466, 63
  %558 = load %union.rec*, %union.rec** %res, align 8
  %os21468 = bitcast %union.rec* %558 to %struct.closure_type*
  %ou41469 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21468, i32 0, i32 4
  %osave_style1470 = bitcast %union.FOURTH_UNION* %ou41469 to %struct.STYLE*
  %olanguage1471 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1470, i32 0, i32 4
  %bf.load1472 = load i32, i32* %olanguage1471, align 4
  %bf.value1473 = and i32 %bf.clear1467, 63
  %bf.shl1474 = shl i32 %bf.value1473, 24
  %bf.clear1475 = and i32 %bf.load1472, -1056964609
  %bf.set1476 = or i32 %bf.clear1475, %bf.shl1474
  store i32 %bf.set1476, i32* %olanguage1471, align 4
  %559 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21477 = bitcast %union.rec* %559 to %struct.closure_type*
  %ou41478 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21477, i32 0, i32 4
  %osave_style1479 = bitcast %union.FOURTH_UNION* %ou41478 to %struct.STYLE*
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1479, i32 0, i32 4
  %bf.load1480 = load i32, i32* %onobreaklast, align 4
  %bf.lshr1481 = lshr i32 %bf.load1480, 31
  %560 = load %union.rec*, %union.rec** %res, align 8
  %os21482 = bitcast %union.rec* %560 to %struct.closure_type*
  %ou41483 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21482, i32 0, i32 4
  %osave_style1484 = bitcast %union.FOURTH_UNION* %ou41483 to %struct.STYLE*
  %onobreaklast1485 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1484, i32 0, i32 4
  %bf.load1486 = load i32, i32* %onobreaklast1485, align 4
  %bf.value1487 = and i32 %bf.lshr1481, 1
  %bf.shl1488 = shl i32 %bf.value1487, 31
  %bf.clear1489 = and i32 %bf.load1486, 2147483647
  %bf.set1490 = or i32 %bf.clear1489, %bf.shl1488
  store i32 %bf.set1490, i32* %onobreaklast1485, align 4
  %561 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21491 = bitcast %union.rec* %561 to %struct.closure_type*
  %ou41492 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21491, i32 0, i32 4
  %osave_style1493 = bitcast %union.FOURTH_UNION* %ou41492 to %struct.STYLE*
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1493, i32 0, i32 4
  %bf.load1494 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr1495 = lshr i32 %bf.load1494, 30
  %bf.clear1496 = and i32 %bf.lshr1495, 1
  %562 = load %union.rec*, %union.rec** %res, align 8
  %os21497 = bitcast %union.rec* %562 to %struct.closure_type*
  %ou41498 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21497, i32 0, i32 4
  %osave_style1499 = bitcast %union.FOURTH_UNION* %ou41498 to %struct.STYLE*
  %onobreakfirst1500 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1499, i32 0, i32 4
  %bf.load1501 = load i32, i32* %onobreakfirst1500, align 4
  %bf.value1502 = and i32 %bf.clear1496, 1
  %bf.shl1503 = shl i32 %bf.value1502, 30
  %bf.clear1504 = and i32 %bf.load1501, -1073741825
  %bf.set1505 = or i32 %bf.clear1504, %bf.shl1503
  store i32 %bf.set1505, i32* %onobreakfirst1500, align 4
  %563 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21506 = bitcast %union.rec* %563 to %struct.closure_type*
  %ou41507 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21506, i32 0, i32 4
  %osave_style1508 = bitcast %union.FOURTH_UNION* %ou41507 to %struct.STYLE*
  %osu11509 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1508, i32 0, i32 0
  %oss11510 = bitcast %union.anon* %osu11509 to %struct.anon.9*
  %564 = bitcast %struct.anon.9* %oss11510 to i8*
  %bf.load1511 = load i8, i8* %564, align 4
  %bf.clear1512 = and i8 %bf.load1511, 1
  %bf.cast1513 = zext i8 %bf.clear1512 to i32
  %565 = load %union.rec*, %union.rec** %res, align 8
  %os21514 = bitcast %union.rec* %565 to %struct.closure_type*
  %ou41515 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21514, i32 0, i32 4
  %osave_style1516 = bitcast %union.FOURTH_UNION* %ou41515 to %struct.STYLE*
  %osu11517 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1516, i32 0, i32 0
  %oss11518 = bitcast %union.anon* %osu11517 to %struct.anon.9*
  %566 = bitcast %struct.anon.9* %oss11518 to i8*
  %567 = trunc i32 %bf.cast1513 to i8
  %bf.load1519 = load i8, i8* %566, align 4
  %bf.value1520 = and i8 %567, 1
  %bf.clear1521 = and i8 %bf.load1519, -2
  %bf.set1522 = or i8 %bf.clear1521, %bf.value1520
  store i8 %bf.set1522, i8* %566, align 4
  %bf.result.cast1523 = zext i8 %bf.value1520 to i32
  %568 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21524 = bitcast %union.rec* %568 to %struct.closure_type*
  %ou41525 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21524, i32 0, i32 4
  %osave_style1526 = bitcast %union.FOURTH_UNION* %ou41525 to %struct.STYLE*
  %osu11527 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1526, i32 0, i32 0
  %oss11528 = bitcast %union.anon* %osu11527 to %struct.anon.9*
  %569 = bitcast %struct.anon.9* %oss11528 to i8*
  %bf.load1529 = load i8, i8* %569, align 4
  %bf.lshr1530 = lshr i8 %bf.load1529, 1
  %bf.clear1531 = and i8 %bf.lshr1530, 1
  %bf.cast1532 = zext i8 %bf.clear1531 to i32
  %570 = load %union.rec*, %union.rec** %res, align 8
  %os21533 = bitcast %union.rec* %570 to %struct.closure_type*
  %ou41534 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21533, i32 0, i32 4
  %osave_style1535 = bitcast %union.FOURTH_UNION* %ou41534 to %struct.STYLE*
  %osu11536 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1535, i32 0, i32 0
  %oss11537 = bitcast %union.anon* %osu11536 to %struct.anon.9*
  %571 = bitcast %struct.anon.9* %oss11537 to i8*
  %572 = trunc i32 %bf.cast1532 to i8
  %bf.load1538 = load i8, i8* %571, align 4
  %bf.value1539 = and i8 %572, 1
  %bf.shl1540 = shl i8 %bf.value1539, 1
  %bf.clear1541 = and i8 %bf.load1538, -3
  %bf.set1542 = or i8 %bf.clear1541, %bf.shl1540
  store i8 %bf.set1542, i8* %571, align 4
  %bf.result.cast1543 = zext i8 %bf.value1539 to i32
  %573 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21544 = bitcast %union.rec* %573 to %struct.closure_type*
  %ou41545 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21544, i32 0, i32 4
  %osave_style1546 = bitcast %union.FOURTH_UNION* %ou41545 to %struct.STYLE*
  %osu11547 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1546, i32 0, i32 0
  %oss11548 = bitcast %union.anon* %osu11547 to %struct.anon.9*
  %574 = bitcast %struct.anon.9* %oss11548 to i8*
  %bf.load1549 = load i8, i8* %574, align 4
  %bf.lshr1550 = lshr i8 %bf.load1549, 2
  %bf.clear1551 = and i8 %bf.lshr1550, 1
  %bf.cast1552 = zext i8 %bf.clear1551 to i32
  %575 = load %union.rec*, %union.rec** %res, align 8
  %os21553 = bitcast %union.rec* %575 to %struct.closure_type*
  %ou41554 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21553, i32 0, i32 4
  %osave_style1555 = bitcast %union.FOURTH_UNION* %ou41554 to %struct.STYLE*
  %osu11556 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1555, i32 0, i32 0
  %oss11557 = bitcast %union.anon* %osu11556 to %struct.anon.9*
  %576 = bitcast %struct.anon.9* %oss11557 to i8*
  %577 = trunc i32 %bf.cast1552 to i8
  %bf.load1558 = load i8, i8* %576, align 4
  %bf.value1559 = and i8 %577, 1
  %bf.shl1560 = shl i8 %bf.value1559, 2
  %bf.clear1561 = and i8 %bf.load1558, -5
  %bf.set1562 = or i8 %bf.clear1561, %bf.shl1560
  store i8 %bf.set1562, i8* %576, align 4
  %bf.result.cast1563 = zext i8 %bf.value1559 to i32
  %578 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21564 = bitcast %union.rec* %578 to %struct.closure_type*
  %ou41565 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21564, i32 0, i32 4
  %osave_style1566 = bitcast %union.FOURTH_UNION* %ou41565 to %struct.STYLE*
  %osu11567 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1566, i32 0, i32 0
  %oss11568 = bitcast %union.anon* %osu11567 to %struct.anon.9*
  %579 = bitcast %struct.anon.9* %oss11568 to i8*
  %bf.load1569 = load i8, i8* %579, align 4
  %bf.lshr1570 = lshr i8 %bf.load1569, 4
  %bf.clear1571 = and i8 %bf.lshr1570, 7
  %bf.cast1572 = zext i8 %bf.clear1571 to i32
  %580 = load %union.rec*, %union.rec** %res, align 8
  %os21573 = bitcast %union.rec* %580 to %struct.closure_type*
  %ou41574 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21573, i32 0, i32 4
  %osave_style1575 = bitcast %union.FOURTH_UNION* %ou41574 to %struct.STYLE*
  %osu11576 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1575, i32 0, i32 0
  %oss11577 = bitcast %union.anon* %osu11576 to %struct.anon.9*
  %581 = bitcast %struct.anon.9* %oss11577 to i8*
  %582 = trunc i32 %bf.cast1572 to i8
  %bf.load1578 = load i8, i8* %581, align 4
  %bf.value1579 = and i8 %582, 7
  %bf.shl1580 = shl i8 %bf.value1579, 4
  %bf.clear1581 = and i8 %bf.load1578, -113
  %bf.set1582 = or i8 %bf.clear1581, %bf.shl1580
  store i8 %bf.set1582, i8* %581, align 4
  %bf.result.cast1583 = zext i8 %bf.value1579 to i32
  %583 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21584 = bitcast %union.rec* %583 to %struct.closure_type*
  %ou41585 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21584, i32 0, i32 4
  %osave_style1586 = bitcast %union.FOURTH_UNION* %ou41585 to %struct.STYLE*
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1586, i32 0, i32 2
  %584 = load i16, i16* %oyunit, align 2
  %585 = load %union.rec*, %union.rec** %res, align 8
  %os21587 = bitcast %union.rec* %585 to %struct.closure_type*
  %ou41588 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21587, i32 0, i32 4
  %osave_style1589 = bitcast %union.FOURTH_UNION* %ou41588 to %struct.STYLE*
  %oyunit1590 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1589, i32 0, i32 2
  store i16 %584, i16* %oyunit1590, align 2
  %586 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21591 = bitcast %union.rec* %586 to %struct.closure_type*
  %ou41592 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21591, i32 0, i32 4
  %osave_style1593 = bitcast %union.FOURTH_UNION* %ou41592 to %struct.STYLE*
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1593, i32 0, i32 3
  %587 = load i16, i16* %ozunit, align 2
  %588 = load %union.rec*, %union.rec** %res, align 8
  %os21594 = bitcast %union.rec* %588 to %struct.closure_type*
  %ou41595 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21594, i32 0, i32 4
  %osave_style1596 = bitcast %union.FOURTH_UNION* %ou41595 to %struct.STYLE*
  %ozunit1597 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1596, i32 0, i32 3
  store i16 %587, i16* %ozunit1597, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %589 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %590 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11598 = bitcast %union.rec* %590 to %struct.word_type*
  %ou11599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11598, i32 0, i32 1
  %os111600 = bitcast %union.FIRST_UNION* %ou11599 to %struct.anon*
  %otype1601 = getelementptr inbounds %struct.anon, %struct.anon* %os111600, i32 0, i32 0
  %591 = load i8, i8* %otype1601, align 1
  %conv1602 = zext i8 %591 to i32
  %call1603 = call i8* @Image(i32 %conv1602)
  %call1604 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.FILE_POS* %589, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %call1603)
  store %union.rec* null, %union.rec** %res, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.1122, %cond.end.908, %sw.bb.705, %for.end.704, %for.end.492, %if.end.279, %if.end.22
  %592 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %593 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %cmp1605 = icmp eq %struct.FILE_POS* %592, %593
  br i1 %cmp1605, label %if.then.1607, label %if.else.1641

if.then.1607:                                     ; preds = %sw.epilog
  %594 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11608 = bitcast %union.rec* %594 to %struct.word_type*
  %ou11609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11608, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou11609 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %595 = load i16, i16* %ofile_num, align 2
  %596 = load %union.rec*, %union.rec** %res, align 8
  %os11610 = bitcast %union.rec* %596 to %struct.word_type*
  %ou11611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11610, i32 0, i32 1
  %ofpos1612 = bitcast %union.FIRST_UNION* %ou11611 to %struct.FILE_POS*
  %ofile_num1613 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1612, i32 0, i32 2
  store i16 %595, i16* %ofile_num1613, align 2
  %597 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11614 = bitcast %union.rec* %597 to %struct.word_type*
  %ou11615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11614, i32 0, i32 1
  %ofpos1616 = bitcast %union.FIRST_UNION* %ou11615 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1616, i32 0, i32 3
  %bf.load1617 = load i32, i32* %oline_num, align 4
  %bf.clear1618 = and i32 %bf.load1617, 1048575
  %598 = load %union.rec*, %union.rec** %res, align 8
  %os11619 = bitcast %union.rec* %598 to %struct.word_type*
  %ou11620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11619, i32 0, i32 1
  %ofpos1621 = bitcast %union.FIRST_UNION* %ou11620 to %struct.FILE_POS*
  %oline_num1622 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1621, i32 0, i32 3
  %bf.load1623 = load i32, i32* %oline_num1622, align 4
  %bf.value1624 = and i32 %bf.clear1618, 1048575
  %bf.clear1625 = and i32 %bf.load1623, -1048576
  %bf.set1626 = or i32 %bf.clear1625, %bf.value1624
  store i32 %bf.set1626, i32* %oline_num1622, align 4
  %599 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11627 = bitcast %union.rec* %599 to %struct.word_type*
  %ou11628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11627, i32 0, i32 1
  %ofpos1629 = bitcast %union.FIRST_UNION* %ou11628 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1629, i32 0, i32 3
  %bf.load1630 = load i32, i32* %ocol_num, align 4
  %bf.lshr1631 = lshr i32 %bf.load1630, 20
  %600 = load %union.rec*, %union.rec** %res, align 8
  %os11632 = bitcast %union.rec* %600 to %struct.word_type*
  %ou11633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11632, i32 0, i32 1
  %ofpos1634 = bitcast %union.FIRST_UNION* %ou11633 to %struct.FILE_POS*
  %ocol_num1635 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1634, i32 0, i32 3
  %bf.load1636 = load i32, i32* %ocol_num1635, align 4
  %bf.value1637 = and i32 %bf.lshr1631, 4095
  %bf.shl1638 = shl i32 %bf.value1637, 20
  %bf.clear1639 = and i32 %bf.load1636, 1048575
  %bf.set1640 = or i32 %bf.clear1639, %bf.shl1638
  store i32 %bf.set1640, i32* %ocol_num1635, align 4
  br label %if.end.1670

if.else.1641:                                     ; preds = %sw.epilog
  %601 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num1642 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %601, i32 0, i32 2
  %602 = load i16, i16* %ofile_num1642, align 2
  %603 = load %union.rec*, %union.rec** %res, align 8
  %os11643 = bitcast %union.rec* %603 to %struct.word_type*
  %ou11644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11643, i32 0, i32 1
  %ofpos1645 = bitcast %union.FIRST_UNION* %ou11644 to %struct.FILE_POS*
  %ofile_num1646 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1645, i32 0, i32 2
  store i16 %602, i16* %ofile_num1646, align 2
  %604 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %oline_num1647 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %604, i32 0, i32 3
  %bf.load1648 = load i32, i32* %oline_num1647, align 4
  %bf.clear1649 = and i32 %bf.load1648, 1048575
  %605 = load %union.rec*, %union.rec** %res, align 8
  %os11650 = bitcast %union.rec* %605 to %struct.word_type*
  %ou11651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11650, i32 0, i32 1
  %ofpos1652 = bitcast %union.FIRST_UNION* %ou11651 to %struct.FILE_POS*
  %oline_num1653 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1652, i32 0, i32 3
  %bf.load1654 = load i32, i32* %oline_num1653, align 4
  %bf.value1655 = and i32 %bf.clear1649, 1048575
  %bf.clear1656 = and i32 %bf.load1654, -1048576
  %bf.set1657 = or i32 %bf.clear1656, %bf.value1655
  store i32 %bf.set1657, i32* %oline_num1653, align 4
  %606 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ocol_num1658 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %606, i32 0, i32 3
  %bf.load1659 = load i32, i32* %ocol_num1658, align 4
  %bf.lshr1660 = lshr i32 %bf.load1659, 20
  %607 = load %union.rec*, %union.rec** %res, align 8
  %os11661 = bitcast %union.rec* %607 to %struct.word_type*
  %ou11662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11661, i32 0, i32 1
  %ofpos1663 = bitcast %union.FIRST_UNION* %ou11662 to %struct.FILE_POS*
  %ocol_num1664 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1663, i32 0, i32 3
  %bf.load1665 = load i32, i32* %ocol_num1664, align 4
  %bf.value1666 = and i32 %bf.lshr1660, 4095
  %bf.shl1667 = shl i32 %bf.value1666, 20
  %bf.clear1668 = and i32 %bf.load1665, 1048575
  %bf.set1669 = or i32 %bf.clear1668, %bf.shl1667
  store i32 %bf.set1669, i32* %ocol_num1664, align 4
  br label %if.end.1670

if.end.1670:                                      ; preds = %if.else.1641, %if.then.1607
  %608 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %608
}

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define %union.rec* @InsertObject(%union.rec* %x, %union.rec** %ins, %struct.STYLE* %style) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %ins.addr = alloca %union.rec**, align 8
  %style.addr = alloca %struct.STYLE*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec** %ins, %union.rec*** %ins.addr, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 5, label %sw.bb.657
    i32 20, label %sw.bb.657
    i32 21, label %sw.bb.657
    i32 22, label %sw.bb.657
    i32 23, label %sw.bb.657
    i32 8, label %sw.bb.657
    i32 6, label %sw.bb.657
    i32 7, label %sw.bb.657
    i32 4, label %sw.bb.657
    i32 2, label %sw.bb.657
    i32 94, label %sw.bb.657
    i32 95, label %sw.bb.657
    i32 45, label %sw.bb.657
    i32 46, label %sw.bb.657
    i32 18, label %sw.bb.658
    i32 19, label %sw.bb.658
    i32 16, label %sw.bb.658
    i32 15, label %sw.bb.658
    i32 9, label %sw.bb.658
    i32 24, label %sw.bb.691
    i32 25, label %sw.bb.691
    i32 47, label %sw.bb.691
    i32 48, label %sw.bb.691
    i32 49, label %sw.bb.691
    i32 36, label %sw.bb.691
    i32 37, label %sw.bb.691
    i32 38, label %sw.bb.691
    i32 39, label %sw.bb.691
    i32 40, label %sw.bb.691
    i32 41, label %sw.bb.691
    i32 30, label %sw.bb.691
    i32 31, label %sw.bb.691
    i32 32, label %sw.bb.691
    i32 33, label %sw.bb.691
    i32 96, label %sw.bb.691
    i32 97, label %sw.bb.691
    i32 98, label %sw.bb.691
    i32 99, label %sw.bb.691
    i32 50, label %sw.bb.691
    i32 51, label %sw.bb.691
    i32 34, label %sw.bb.691
    i32 35, label %sw.bb.691
    i32 26, label %sw.bb.691
    i32 27, label %sw.bb.691
    i32 28, label %sw.bb.691
    i32 29, label %sw.bb.691
    i32 44, label %sw.bb.691
    i32 42, label %sw.bb.691
    i32 43, label %sw.bb.691
    i32 17, label %sw.bb.716
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv1 = zext i8 %2 to i32
  store i32 %conv1, i32* @zz_size, align 4
  %conv2 = sext i32 %conv1 to i64
  %cmp = icmp uge i64 %conv2, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end.15

if.else:                                          ; preds = %sw.bb
  %4 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %5 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp4 = icmp eq %union.rec* %5, null
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7 = call %union.rec* @GetMemory(i32 %6, %struct.FILE_POS* %7)
  store %union.rec* %call7, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %8 = load i32, i32* @zz_size, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom9
  %9 = load %union.rec*, %union.rec** %arrayidx10, align 8
  store %union.rec* %9, %union.rec** @zz_hold, align 8
  store %union.rec* %9, %union.rec** @zz_hold, align 8
  %10 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os111 = bitcast %union.rec* %10 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred, align 8
  %12 = load i32, i32* @zz_size, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom13
  store %union.rec* %11, %union.rec** %arrayidx14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %ou117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os1118 = bitcast %union.FIRST_UNION* %ou117 to %struct.anon*
  %otype19 = getelementptr inbounds %struct.anon, %struct.anon* %os1118, i32 0, i32 0
  store i8 17, i8* %otype19, align 1
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %15 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %16 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %opred26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred26, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %17 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 0
  %osucc30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc30, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os131 = bitcast %union.rec* %18 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 0
  %opred34 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred34, align 8
  store %union.rec* %14, %union.rec** %res, align 8
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os135 = bitcast %union.rec* %19 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou136 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %20 = load i16, i16* %ofile_num, align 2
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os137 = bitcast %union.rec* %21 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %ofpos39 = bitcast %union.FIRST_UNION* %ou138 to %struct.FILE_POS*
  %ofile_num40 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos39, i32 0, i32 2
  store i16 %20, i16* %ofile_num40, align 2
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os141 = bitcast %union.rec* %22 to %struct.word_type*
  %ou142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 1
  %ofpos43 = bitcast %union.FIRST_UNION* %ou142 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos43, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %23 = load %union.rec*, %union.rec** %res, align 8
  %os144 = bitcast %union.rec* %23 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %ofpos46 = bitcast %union.FIRST_UNION* %ou145 to %struct.FILE_POS*
  %oline_num47 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos46, i32 0, i32 3
  %bf.load48 = load i32, i32* %oline_num47, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear49 = and i32 %bf.load48, -1048576
  %bf.set = or i32 %bf.clear49, %bf.value
  store i32 %bf.set, i32* %oline_num47, align 4
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os150 = bitcast %union.rec* %24 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %ofpos52 = bitcast %union.FIRST_UNION* %ou151 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos52, i32 0, i32 3
  %bf.load53 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load53, 20
  %25 = load %union.rec*, %union.rec** %res, align 8
  %os154 = bitcast %union.rec* %25 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %ofpos56 = bitcast %union.FIRST_UNION* %ou155 to %struct.FILE_POS*
  %ocol_num57 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos56, i32 0, i32 3
  %bf.load58 = load i32, i32* %ocol_num57, align 4
  %bf.value59 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value59, 20
  %bf.clear60 = and i32 %bf.load58, 1048575
  %bf.set61 = or i32 %bf.clear60, %bf.shl
  store i32 %bf.set61, i32* %ocol_num57, align 4
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %26, %union.rec** @zz_hold, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %27 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 1
  %osucc65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc65, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp66 = icmp eq %union.rec* %28, %29
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os168 = bitcast %union.rec* %30 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %osucc71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc71, align 8
  store %union.rec* %31, %union.rec** @zz_res, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %32 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 1
  %opred75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred75, align 8
  %34 = load %union.rec*, %union.rec** @zz_res, align 8
  %os176 = bitcast %union.rec* %34 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 1
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred79, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os180 = bitcast %union.rec* %36 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 1
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred83, align 8
  %os184 = bitcast %union.rec* %37 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %osucc87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 1
  store %union.rec* %35, %union.rec** %osucc87, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os188 = bitcast %union.rec* %39 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 1
  %osucc91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc91, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os192 = bitcast %union.rec* %40 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 1
  %opred95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred95, align 8
  %41 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %41, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %42 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %42, %union.rec** @zz_res, align 8
  %43 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp96 = icmp eq %union.rec* %44, null
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end
  %45 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.134

cond.false.99:                                    ; preds = %cond.end
  %46 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp100 = icmp eq %union.rec* %46, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.false.99
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.132

cond.false.103:                                   ; preds = %cond.false.99
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1104 = bitcast %union.rec* %48 to %struct.word_type*
  %olist105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist105, i32 0, i64 1
  %opred107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx106, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred107, align 8
  store %union.rec* %49, %union.rec** @zz_tmp, align 8
  %50 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1108 = bitcast %union.rec* %50 to %struct.word_type*
  %olist109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist109, i32 0, i64 1
  %opred111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx110, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred111, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %52 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 1
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred115, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1116 = bitcast %union.rec* %54 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 1
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %opred119, align 8
  %os1120 = bitcast %union.rec* %55 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 1
  %osucc123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 1
  store %union.rec* %53, %union.rec** %osucc123, align 8
  %56 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1124 = bitcast %union.rec* %57 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred127, align 8
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  %59 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1128 = bitcast %union.rec* %59 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  store %union.rec* %58, %union.rec** %osucc131, align 8
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.103, %cond.true.102
  %cond133 = phi %union.rec* [ %47, %cond.true.102 ], [ %58, %cond.false.103 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.true.98
  %cond135 = phi %union.rec* [ %45, %cond.true.98 ], [ %cond133, %cond.end.132 ]
  %60 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv136 = zext i8 %60 to i32
  store i32 %conv136, i32* @zz_size, align 4
  %conv137 = sext i32 %conv136 to i64
  %cmp138 = icmp uge i64 %conv137, 265
  br i1 %cmp138, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %cond.end.134
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call141 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %61)
  br label %if.end.159

if.else.142:                                      ; preds = %cond.end.134
  %62 = load i32, i32* @zz_size, align 4
  %idxprom143 = sext i32 %62 to i64
  %arrayidx144 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom143
  %63 = load %union.rec*, %union.rec** %arrayidx144, align 8
  %cmp145 = icmp eq %union.rec* %63, null
  br i1 %cmp145, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %if.else.142
  %64 = load i32, i32* @zz_size, align 4
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call148 = call %union.rec* @GetMemory(i32 %64, %struct.FILE_POS* %65)
  store %union.rec* %call148, %union.rec** @zz_hold, align 8
  br label %if.end.158

if.else.149:                                      ; preds = %if.else.142
  %66 = load i32, i32* @zz_size, align 4
  %idxprom150 = sext i32 %66 to i64
  %arrayidx151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom150
  %67 = load %union.rec*, %union.rec** %arrayidx151, align 8
  store %union.rec* %67, %union.rec** @zz_hold, align 8
  store %union.rec* %67, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1152 = bitcast %union.rec* %68 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 0
  %opred155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred155, align 8
  %70 = load i32, i32* @zz_size, align 4
  %idxprom156 = sext i32 %70 to i64
  %arrayidx157 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom156
  store %union.rec* %69, %union.rec** %arrayidx157, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.149, %if.then.147
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.140
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1160 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 1
  %os11162 = bitcast %union.FIRST_UNION* %ou1161 to %struct.anon*
  %otype163 = getelementptr inbounds %struct.anon, %struct.anon* %os11162, i32 0, i32 0
  store i8 0, i8* %otype163, align 1
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1164 = bitcast %union.rec* %73 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 1
  %osucc167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc167, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1168 = bitcast %union.rec* %74 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 1
  %opred171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred171, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1172 = bitcast %union.rec* %75 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 0
  %osucc175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc175, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1176 = bitcast %union.rec* %76 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 0
  %opred179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred179, align 8
  store %union.rec* %72, %union.rec** @xx_link, align 8
  %77 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %77, %union.rec** @zz_res, align 8
  %78 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp180 = icmp eq %union.rec* %79, null
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %if.end.159
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.218

cond.false.183:                                   ; preds = %if.end.159
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp184 = icmp eq %union.rec* %81, null
  br i1 %cmp184, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.false.183
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.216

cond.false.187:                                   ; preds = %cond.false.183
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %83 to %struct.word_type*
  %olist189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist189, i32 0, i64 0
  %opred191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx190, i32 0, i32 0
  %84 = load %union.rec*, %union.rec** %opred191, align 8
  store %union.rec* %84, %union.rec** @zz_tmp, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1192 = bitcast %union.rec* %85 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 0
  %opred195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred195, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1196 = bitcast %union.rec* %87 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 0
  %opred199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 0
  store %union.rec* %86, %union.rec** %opred199, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1200 = bitcast %union.rec* %89 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 0
  %opred203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %opred203, align 8
  %os1204 = bitcast %union.rec* %90 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 0
  %osucc207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc207, align 8
  %91 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1208 = bitcast %union.rec* %92 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 0
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred211, align 8
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1212 = bitcast %union.rec* %94 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 0
  %osucc215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 1
  store %union.rec* %93, %union.rec** %osucc215, align 8
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.187, %cond.true.186
  %cond217 = phi %union.rec* [ %82, %cond.true.186 ], [ %93, %cond.false.187 ]
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.end.216, %cond.true.182
  %cond219 = phi %union.rec* [ %80, %cond.true.182 ], [ %cond217, %cond.end.216 ]
  %95 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %95, %union.rec** @zz_res, align 8
  %96 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp220 = icmp eq %union.rec* %97, null
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %cond.end.218
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.258

cond.false.223:                                   ; preds = %cond.end.218
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp224 = icmp eq %union.rec* %99, null
  br i1 %cmp224, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %cond.false.223
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.256

cond.false.227:                                   ; preds = %cond.false.223
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %101 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 1
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred231, align 8
  store %union.rec* %102, %union.rec** @zz_tmp, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1232 = bitcast %union.rec* %103 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 1
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred235, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %105 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 1
  %opred239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred239, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1240 = bitcast %union.rec* %107 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 1
  %opred243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 0
  %108 = load %union.rec*, %union.rec** %opred243, align 8
  %os1244 = bitcast %union.rec* %108 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 1
  %osucc247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc247, align 8
  %109 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1248 = bitcast %union.rec* %110 to %struct.word_type*
  %olist249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist249, i32 0, i64 1
  %opred251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx250, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred251, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1252 = bitcast %union.rec* %112 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 1
  %osucc255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 1
  store %union.rec* %111, %union.rec** %osucc255, align 8
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.227, %cond.true.226
  %cond257 = phi %union.rec* [ %100, %cond.true.226 ], [ %111, %cond.false.227 ]
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.256, %cond.true.222
  %cond259 = phi %union.rec* [ %98, %cond.true.222 ], [ %cond257, %cond.end.256 ]
  %113 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %113, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %114 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load260 = load i16, i16* %114, align 4
  %bf.lshr261 = lshr i16 %bf.load260, 7
  %bf.clear262 = and i16 %bf.lshr261, 1
  %bf.cast = zext i16 %bf.clear262 to i32
  %115 = load %union.rec*, %union.rec** %res, align 8
  %os2 = bitcast %union.rec* %115 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu1263 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 0
  %oline_gap264 = bitcast %union.anon* %osu1263 to %struct.GAP*
  %116 = bitcast %struct.GAP* %oline_gap264 to i16*
  %117 = trunc i32 %bf.cast to i16
  %bf.load265 = load i16, i16* %116, align 4
  %bf.value266 = and i16 %117, 1
  %bf.shl267 = shl i16 %bf.value266, 7
  %bf.clear268 = and i16 %bf.load265, -129
  %bf.set269 = or i16 %bf.clear268, %bf.shl267
  store i16 %bf.set269, i16* %116, align 4
  %bf.result.cast = zext i16 %bf.value266 to i32
  %118 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1270 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %118, i32 0, i32 0
  %oline_gap271 = bitcast %union.anon* %osu1270 to %struct.GAP*
  %119 = bitcast %struct.GAP* %oline_gap271 to i16*
  %bf.load272 = load i16, i16* %119, align 4
  %bf.lshr273 = lshr i16 %bf.load272, 8
  %bf.clear274 = and i16 %bf.lshr273, 1
  %bf.cast275 = zext i16 %bf.clear274 to i32
  %120 = load %union.rec*, %union.rec** %res, align 8
  %os2276 = bitcast %union.rec* %120 to %struct.closure_type*
  %ou4277 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2276, i32 0, i32 4
  %osave_style278 = bitcast %union.FOURTH_UNION* %ou4277 to %struct.STYLE*
  %osu1279 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style278, i32 0, i32 0
  %oline_gap280 = bitcast %union.anon* %osu1279 to %struct.GAP*
  %121 = bitcast %struct.GAP* %oline_gap280 to i16*
  %122 = trunc i32 %bf.cast275 to i16
  %bf.load281 = load i16, i16* %121, align 4
  %bf.value282 = and i16 %122, 1
  %bf.shl283 = shl i16 %bf.value282, 8
  %bf.clear284 = and i16 %bf.load281, -257
  %bf.set285 = or i16 %bf.clear284, %bf.shl283
  store i16 %bf.set285, i16* %121, align 4
  %bf.result.cast286 = zext i16 %bf.value282 to i32
  %123 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1287 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %123, i32 0, i32 0
  %oline_gap288 = bitcast %union.anon* %osu1287 to %struct.GAP*
  %124 = bitcast %struct.GAP* %oline_gap288 to i16*
  %bf.load289 = load i16, i16* %124, align 4
  %bf.lshr290 = lshr i16 %bf.load289, 9
  %bf.clear291 = and i16 %bf.lshr290, 1
  %bf.cast292 = zext i16 %bf.clear291 to i32
  %125 = load %union.rec*, %union.rec** %res, align 8
  %os2293 = bitcast %union.rec* %125 to %struct.closure_type*
  %ou4294 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2293, i32 0, i32 4
  %osave_style295 = bitcast %union.FOURTH_UNION* %ou4294 to %struct.STYLE*
  %osu1296 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style295, i32 0, i32 0
  %oline_gap297 = bitcast %union.anon* %osu1296 to %struct.GAP*
  %126 = bitcast %struct.GAP* %oline_gap297 to i16*
  %127 = trunc i32 %bf.cast292 to i16
  %bf.load298 = load i16, i16* %126, align 4
  %bf.value299 = and i16 %127, 1
  %bf.shl300 = shl i16 %bf.value299, 9
  %bf.clear301 = and i16 %bf.load298, -513
  %bf.set302 = or i16 %bf.clear301, %bf.shl300
  store i16 %bf.set302, i16* %126, align 4
  %bf.result.cast303 = zext i16 %bf.value299 to i32
  %128 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1304 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %128, i32 0, i32 0
  %oline_gap305 = bitcast %union.anon* %osu1304 to %struct.GAP*
  %129 = bitcast %struct.GAP* %oline_gap305 to i16*
  %bf.load306 = load i16, i16* %129, align 4
  %bf.lshr307 = lshr i16 %bf.load306, 10
  %bf.clear308 = and i16 %bf.lshr307, 7
  %bf.cast309 = zext i16 %bf.clear308 to i32
  %130 = load %union.rec*, %union.rec** %res, align 8
  %os2310 = bitcast %union.rec* %130 to %struct.closure_type*
  %ou4311 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2310, i32 0, i32 4
  %osave_style312 = bitcast %union.FOURTH_UNION* %ou4311 to %struct.STYLE*
  %osu1313 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style312, i32 0, i32 0
  %oline_gap314 = bitcast %union.anon* %osu1313 to %struct.GAP*
  %131 = bitcast %struct.GAP* %oline_gap314 to i16*
  %132 = trunc i32 %bf.cast309 to i16
  %bf.load315 = load i16, i16* %131, align 4
  %bf.value316 = and i16 %132, 7
  %bf.shl317 = shl i16 %bf.value316, 10
  %bf.clear318 = and i16 %bf.load315, -7169
  %bf.set319 = or i16 %bf.clear318, %bf.shl317
  store i16 %bf.set319, i16* %131, align 4
  %bf.result.cast320 = zext i16 %bf.value316 to i32
  %133 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1321 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %133, i32 0, i32 0
  %oline_gap322 = bitcast %union.anon* %osu1321 to %struct.GAP*
  %134 = bitcast %struct.GAP* %oline_gap322 to i16*
  %bf.load323 = load i16, i16* %134, align 4
  %bf.lshr324 = lshr i16 %bf.load323, 13
  %bf.cast325 = zext i16 %bf.lshr324 to i32
  %135 = load %union.rec*, %union.rec** %res, align 8
  %os2326 = bitcast %union.rec* %135 to %struct.closure_type*
  %ou4327 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2326, i32 0, i32 4
  %osave_style328 = bitcast %union.FOURTH_UNION* %ou4327 to %struct.STYLE*
  %osu1329 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style328, i32 0, i32 0
  %oline_gap330 = bitcast %union.anon* %osu1329 to %struct.GAP*
  %136 = bitcast %struct.GAP* %oline_gap330 to i16*
  %137 = trunc i32 %bf.cast325 to i16
  %bf.load331 = load i16, i16* %136, align 4
  %bf.value332 = and i16 %137, 7
  %bf.shl333 = shl i16 %bf.value332, 13
  %bf.clear334 = and i16 %bf.load331, 8191
  %bf.set335 = or i16 %bf.clear334, %bf.shl333
  store i16 %bf.set335, i16* %136, align 4
  %bf.result.cast336 = zext i16 %bf.value332 to i32
  %138 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1337 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %138, i32 0, i32 0
  %oline_gap338 = bitcast %union.anon* %osu1337 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap338, i32 0, i32 1
  %139 = load i16, i16* %owidth, align 2
  %140 = load %union.rec*, %union.rec** %res, align 8
  %os2339 = bitcast %union.rec* %140 to %struct.closure_type*
  %ou4340 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2339, i32 0, i32 4
  %osave_style341 = bitcast %union.FOURTH_UNION* %ou4340 to %struct.STYLE*
  %osu1342 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style341, i32 0, i32 0
  %oline_gap343 = bitcast %union.anon* %osu1342 to %struct.GAP*
  %owidth344 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap343, i32 0, i32 1
  store i16 %139, i16* %owidth344, align 2
  %141 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %141, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %142 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load345 = load i8, i8* %142, align 4
  %bf.clear346 = and i8 %bf.load345, 3
  %bf.cast347 = zext i8 %bf.clear346 to i32
  %143 = load %union.rec*, %union.rec** %res, align 8
  %os2348 = bitcast %union.rec* %143 to %struct.closure_type*
  %ou4349 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2348, i32 0, i32 4
  %osave_style350 = bitcast %union.FOURTH_UNION* %ou4349 to %struct.STYLE*
  %osu2351 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style350, i32 0, i32 1
  %oss2352 = bitcast %union.anon.10* %osu2351 to %struct.anon.11*
  %144 = bitcast %struct.anon.11* %oss2352 to i8*
  %145 = trunc i32 %bf.cast347 to i8
  %bf.load353 = load i8, i8* %144, align 4
  %bf.value354 = and i8 %145, 3
  %bf.clear355 = and i8 %bf.load353, -4
  %bf.set356 = or i8 %bf.clear355, %bf.value354
  store i8 %bf.set356, i8* %144, align 4
  %bf.result.cast357 = zext i8 %bf.value354 to i32
  %146 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2358 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %146, i32 0, i32 1
  %oss2359 = bitcast %union.anon.10* %osu2358 to %struct.anon.11*
  %147 = bitcast %struct.anon.11* %oss2359 to i8*
  %bf.load360 = load i8, i8* %147, align 4
  %bf.lshr361 = lshr i8 %bf.load360, 2
  %bf.clear362 = and i8 %bf.lshr361, 3
  %bf.cast363 = zext i8 %bf.clear362 to i32
  %148 = load %union.rec*, %union.rec** %res, align 8
  %os2364 = bitcast %union.rec* %148 to %struct.closure_type*
  %ou4365 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2364, i32 0, i32 4
  %osave_style366 = bitcast %union.FOURTH_UNION* %ou4365 to %struct.STYLE*
  %osu2367 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style366, i32 0, i32 1
  %oss2368 = bitcast %union.anon.10* %osu2367 to %struct.anon.11*
  %149 = bitcast %struct.anon.11* %oss2368 to i8*
  %150 = trunc i32 %bf.cast363 to i8
  %bf.load369 = load i8, i8* %149, align 4
  %bf.value370 = and i8 %150, 3
  %bf.shl371 = shl i8 %bf.value370, 2
  %bf.clear372 = and i8 %bf.load369, -13
  %bf.set373 = or i8 %bf.clear372, %bf.shl371
  store i8 %bf.set373, i8* %149, align 4
  %bf.result.cast374 = zext i8 %bf.value370 to i32
  %151 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2375 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %151, i32 0, i32 1
  %oss2376 = bitcast %union.anon.10* %osu2375 to %struct.anon.11*
  %152 = bitcast %struct.anon.11* %oss2376 to i8*
  %bf.load377 = load i8, i8* %152, align 4
  %bf.lshr378 = lshr i8 %bf.load377, 4
  %bf.clear379 = and i8 %bf.lshr378, 7
  %bf.cast380 = zext i8 %bf.clear379 to i32
  %153 = load %union.rec*, %union.rec** %res, align 8
  %os2381 = bitcast %union.rec* %153 to %struct.closure_type*
  %ou4382 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2381, i32 0, i32 4
  %osave_style383 = bitcast %union.FOURTH_UNION* %ou4382 to %struct.STYLE*
  %osu2384 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style383, i32 0, i32 1
  %oss2385 = bitcast %union.anon.10* %osu2384 to %struct.anon.11*
  %154 = bitcast %struct.anon.11* %oss2385 to i8*
  %155 = trunc i32 %bf.cast380 to i8
  %bf.load386 = load i8, i8* %154, align 4
  %bf.value387 = and i8 %155, 7
  %bf.shl388 = shl i8 %bf.value387, 4
  %bf.clear389 = and i8 %bf.load386, -113
  %bf.set390 = or i8 %bf.clear389, %bf.shl388
  store i8 %bf.set390, i8* %154, align 4
  %bf.result.cast391 = zext i8 %bf.value387 to i32
  %156 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1392 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %156, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu1392 to %struct.anon.9*
  %157 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load393 = load i8, i8* %157, align 4
  %bf.lshr394 = lshr i8 %bf.load393, 3
  %bf.clear395 = and i8 %bf.lshr394, 1
  %bf.cast396 = zext i8 %bf.clear395 to i32
  %158 = load %union.rec*, %union.rec** %res, align 8
  %os2397 = bitcast %union.rec* %158 to %struct.closure_type*
  %ou4398 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2397, i32 0, i32 4
  %osave_style399 = bitcast %union.FOURTH_UNION* %ou4398 to %struct.STYLE*
  %osu1400 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style399, i32 0, i32 0
  %oss1401 = bitcast %union.anon* %osu1400 to %struct.anon.9*
  %159 = bitcast %struct.anon.9* %oss1401 to i8*
  %160 = trunc i32 %bf.cast396 to i8
  %bf.load402 = load i8, i8* %159, align 4
  %bf.value403 = and i8 %160, 1
  %bf.shl404 = shl i8 %bf.value403, 3
  %bf.clear405 = and i8 %bf.load402, -9
  %bf.set406 = or i8 %bf.clear405, %bf.shl404
  store i8 %bf.set406, i8* %159, align 4
  %bf.result.cast407 = zext i8 %bf.value403 to i32
  %161 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2408 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %161, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2408 to %struct.GAP*
  %162 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load409 = load i16, i16* %162, align 4
  %bf.lshr410 = lshr i16 %bf.load409, 7
  %bf.clear411 = and i16 %bf.lshr410, 1
  %bf.cast412 = zext i16 %bf.clear411 to i32
  %163 = load %union.rec*, %union.rec** %res, align 8
  %os2413 = bitcast %union.rec* %163 to %struct.closure_type*
  %ou4414 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2413, i32 0, i32 4
  %osave_style415 = bitcast %union.FOURTH_UNION* %ou4414 to %struct.STYLE*
  %osu2416 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style415, i32 0, i32 1
  %ospace_gap417 = bitcast %union.anon.10* %osu2416 to %struct.GAP*
  %164 = bitcast %struct.GAP* %ospace_gap417 to i16*
  %165 = trunc i32 %bf.cast412 to i16
  %bf.load418 = load i16, i16* %164, align 4
  %bf.value419 = and i16 %165, 1
  %bf.shl420 = shl i16 %bf.value419, 7
  %bf.clear421 = and i16 %bf.load418, -129
  %bf.set422 = or i16 %bf.clear421, %bf.shl420
  store i16 %bf.set422, i16* %164, align 4
  %bf.result.cast423 = zext i16 %bf.value419 to i32
  %166 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2424 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %166, i32 0, i32 1
  %ospace_gap425 = bitcast %union.anon.10* %osu2424 to %struct.GAP*
  %167 = bitcast %struct.GAP* %ospace_gap425 to i16*
  %bf.load426 = load i16, i16* %167, align 4
  %bf.lshr427 = lshr i16 %bf.load426, 8
  %bf.clear428 = and i16 %bf.lshr427, 1
  %bf.cast429 = zext i16 %bf.clear428 to i32
  %168 = load %union.rec*, %union.rec** %res, align 8
  %os2430 = bitcast %union.rec* %168 to %struct.closure_type*
  %ou4431 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2430, i32 0, i32 4
  %osave_style432 = bitcast %union.FOURTH_UNION* %ou4431 to %struct.STYLE*
  %osu2433 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style432, i32 0, i32 1
  %ospace_gap434 = bitcast %union.anon.10* %osu2433 to %struct.GAP*
  %169 = bitcast %struct.GAP* %ospace_gap434 to i16*
  %170 = trunc i32 %bf.cast429 to i16
  %bf.load435 = load i16, i16* %169, align 4
  %bf.value436 = and i16 %170, 1
  %bf.shl437 = shl i16 %bf.value436, 8
  %bf.clear438 = and i16 %bf.load435, -257
  %bf.set439 = or i16 %bf.clear438, %bf.shl437
  store i16 %bf.set439, i16* %169, align 4
  %bf.result.cast440 = zext i16 %bf.value436 to i32
  %171 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2441 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %171, i32 0, i32 1
  %ospace_gap442 = bitcast %union.anon.10* %osu2441 to %struct.GAP*
  %172 = bitcast %struct.GAP* %ospace_gap442 to i16*
  %bf.load443 = load i16, i16* %172, align 4
  %bf.lshr444 = lshr i16 %bf.load443, 9
  %bf.clear445 = and i16 %bf.lshr444, 1
  %bf.cast446 = zext i16 %bf.clear445 to i32
  %173 = load %union.rec*, %union.rec** %res, align 8
  %os2447 = bitcast %union.rec* %173 to %struct.closure_type*
  %ou4448 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2447, i32 0, i32 4
  %osave_style449 = bitcast %union.FOURTH_UNION* %ou4448 to %struct.STYLE*
  %osu2450 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style449, i32 0, i32 1
  %ospace_gap451 = bitcast %union.anon.10* %osu2450 to %struct.GAP*
  %174 = bitcast %struct.GAP* %ospace_gap451 to i16*
  %175 = trunc i32 %bf.cast446 to i16
  %bf.load452 = load i16, i16* %174, align 4
  %bf.value453 = and i16 %175, 1
  %bf.shl454 = shl i16 %bf.value453, 9
  %bf.clear455 = and i16 %bf.load452, -513
  %bf.set456 = or i16 %bf.clear455, %bf.shl454
  store i16 %bf.set456, i16* %174, align 4
  %bf.result.cast457 = zext i16 %bf.value453 to i32
  %176 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2458 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %176, i32 0, i32 1
  %ospace_gap459 = bitcast %union.anon.10* %osu2458 to %struct.GAP*
  %177 = bitcast %struct.GAP* %ospace_gap459 to i16*
  %bf.load460 = load i16, i16* %177, align 4
  %bf.lshr461 = lshr i16 %bf.load460, 10
  %bf.clear462 = and i16 %bf.lshr461, 7
  %bf.cast463 = zext i16 %bf.clear462 to i32
  %178 = load %union.rec*, %union.rec** %res, align 8
  %os2464 = bitcast %union.rec* %178 to %struct.closure_type*
  %ou4465 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2464, i32 0, i32 4
  %osave_style466 = bitcast %union.FOURTH_UNION* %ou4465 to %struct.STYLE*
  %osu2467 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style466, i32 0, i32 1
  %ospace_gap468 = bitcast %union.anon.10* %osu2467 to %struct.GAP*
  %179 = bitcast %struct.GAP* %ospace_gap468 to i16*
  %180 = trunc i32 %bf.cast463 to i16
  %bf.load469 = load i16, i16* %179, align 4
  %bf.value470 = and i16 %180, 7
  %bf.shl471 = shl i16 %bf.value470, 10
  %bf.clear472 = and i16 %bf.load469, -7169
  %bf.set473 = or i16 %bf.clear472, %bf.shl471
  store i16 %bf.set473, i16* %179, align 4
  %bf.result.cast474 = zext i16 %bf.value470 to i32
  %181 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2475 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %181, i32 0, i32 1
  %ospace_gap476 = bitcast %union.anon.10* %osu2475 to %struct.GAP*
  %182 = bitcast %struct.GAP* %ospace_gap476 to i16*
  %bf.load477 = load i16, i16* %182, align 4
  %bf.lshr478 = lshr i16 %bf.load477, 13
  %bf.cast479 = zext i16 %bf.lshr478 to i32
  %183 = load %union.rec*, %union.rec** %res, align 8
  %os2480 = bitcast %union.rec* %183 to %struct.closure_type*
  %ou4481 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2480, i32 0, i32 4
  %osave_style482 = bitcast %union.FOURTH_UNION* %ou4481 to %struct.STYLE*
  %osu2483 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style482, i32 0, i32 1
  %ospace_gap484 = bitcast %union.anon.10* %osu2483 to %struct.GAP*
  %184 = bitcast %struct.GAP* %ospace_gap484 to i16*
  %185 = trunc i32 %bf.cast479 to i16
  %bf.load485 = load i16, i16* %184, align 4
  %bf.value486 = and i16 %185, 7
  %bf.shl487 = shl i16 %bf.value486, 13
  %bf.clear488 = and i16 %bf.load485, 8191
  %bf.set489 = or i16 %bf.clear488, %bf.shl487
  store i16 %bf.set489, i16* %184, align 4
  %bf.result.cast490 = zext i16 %bf.value486 to i32
  %186 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2491 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %186, i32 0, i32 1
  %ospace_gap492 = bitcast %union.anon.10* %osu2491 to %struct.GAP*
  %owidth493 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap492, i32 0, i32 1
  %187 = load i16, i16* %owidth493, align 2
  %188 = load %union.rec*, %union.rec** %res, align 8
  %os2494 = bitcast %union.rec* %188 to %struct.closure_type*
  %ou4495 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2494, i32 0, i32 4
  %osave_style496 = bitcast %union.FOURTH_UNION* %ou4495 to %struct.STYLE*
  %osu2497 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style496, i32 0, i32 1
  %ospace_gap498 = bitcast %union.anon.10* %osu2497 to %struct.GAP*
  %owidth499 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap498, i32 0, i32 1
  store i16 %187, i16* %owidth499, align 2
  %189 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %189, i32 0, i32 4
  %bf.load500 = load i32, i32* %ofont, align 4
  %bf.clear501 = and i32 %bf.load500, 4095
  %190 = load %union.rec*, %union.rec** %res, align 8
  %os2502 = bitcast %union.rec* %190 to %struct.closure_type*
  %ou4503 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2502, i32 0, i32 4
  %osave_style504 = bitcast %union.FOURTH_UNION* %ou4503 to %struct.STYLE*
  %ofont505 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style504, i32 0, i32 4
  %bf.load506 = load i32, i32* %ofont505, align 4
  %bf.value507 = and i32 %bf.clear501, 4095
  %bf.clear508 = and i32 %bf.load506, -4096
  %bf.set509 = or i32 %bf.clear508, %bf.value507
  store i32 %bf.set509, i32* %ofont505, align 4
  %191 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %191, i32 0, i32 4
  %bf.load510 = load i32, i32* %ocolour, align 4
  %bf.lshr511 = lshr i32 %bf.load510, 12
  %bf.clear512 = and i32 %bf.lshr511, 1023
  %192 = load %union.rec*, %union.rec** %res, align 8
  %os2513 = bitcast %union.rec* %192 to %struct.closure_type*
  %ou4514 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2513, i32 0, i32 4
  %osave_style515 = bitcast %union.FOURTH_UNION* %ou4514 to %struct.STYLE*
  %ocolour516 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style515, i32 0, i32 4
  %bf.load517 = load i32, i32* %ocolour516, align 4
  %bf.value518 = and i32 %bf.clear512, 1023
  %bf.shl519 = shl i32 %bf.value518, 12
  %bf.clear520 = and i32 %bf.load517, -4190209
  %bf.set521 = or i32 %bf.clear520, %bf.shl519
  store i32 %bf.set521, i32* %ocolour516, align 4
  %193 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %193, i32 0, i32 4
  %bf.load522 = load i32, i32* %ooutline, align 4
  %bf.lshr523 = lshr i32 %bf.load522, 22
  %bf.clear524 = and i32 %bf.lshr523, 3
  %194 = load %union.rec*, %union.rec** %res, align 8
  %os2525 = bitcast %union.rec* %194 to %struct.closure_type*
  %ou4526 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2525, i32 0, i32 4
  %osave_style527 = bitcast %union.FOURTH_UNION* %ou4526 to %struct.STYLE*
  %ooutline528 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style527, i32 0, i32 4
  %bf.load529 = load i32, i32* %ooutline528, align 4
  %bf.value530 = and i32 %bf.clear524, 3
  %bf.shl531 = shl i32 %bf.value530, 22
  %bf.clear532 = and i32 %bf.load529, -12582913
  %bf.set533 = or i32 %bf.clear532, %bf.shl531
  store i32 %bf.set533, i32* %ooutline528, align 4
  %195 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %195, i32 0, i32 4
  %bf.load534 = load i32, i32* %olanguage, align 4
  %bf.lshr535 = lshr i32 %bf.load534, 24
  %bf.clear536 = and i32 %bf.lshr535, 63
  %196 = load %union.rec*, %union.rec** %res, align 8
  %os2537 = bitcast %union.rec* %196 to %struct.closure_type*
  %ou4538 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2537, i32 0, i32 4
  %osave_style539 = bitcast %union.FOURTH_UNION* %ou4538 to %struct.STYLE*
  %olanguage540 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style539, i32 0, i32 4
  %bf.load541 = load i32, i32* %olanguage540, align 4
  %bf.value542 = and i32 %bf.clear536, 63
  %bf.shl543 = shl i32 %bf.value542, 24
  %bf.clear544 = and i32 %bf.load541, -1056964609
  %bf.set545 = or i32 %bf.clear544, %bf.shl543
  store i32 %bf.set545, i32* %olanguage540, align 4
  %197 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %197, i32 0, i32 4
  %bf.load546 = load i32, i32* %onobreaklast, align 4
  %bf.lshr547 = lshr i32 %bf.load546, 31
  %198 = load %union.rec*, %union.rec** %res, align 8
  %os2548 = bitcast %union.rec* %198 to %struct.closure_type*
  %ou4549 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2548, i32 0, i32 4
  %osave_style550 = bitcast %union.FOURTH_UNION* %ou4549 to %struct.STYLE*
  %onobreaklast551 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style550, i32 0, i32 4
  %bf.load552 = load i32, i32* %onobreaklast551, align 4
  %bf.value553 = and i32 %bf.lshr547, 1
  %bf.shl554 = shl i32 %bf.value553, 31
  %bf.clear555 = and i32 %bf.load552, 2147483647
  %bf.set556 = or i32 %bf.clear555, %bf.shl554
  store i32 %bf.set556, i32* %onobreaklast551, align 4
  %199 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %199, i32 0, i32 4
  %bf.load557 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr558 = lshr i32 %bf.load557, 30
  %bf.clear559 = and i32 %bf.lshr558, 1
  %200 = load %union.rec*, %union.rec** %res, align 8
  %os2560 = bitcast %union.rec* %200 to %struct.closure_type*
  %ou4561 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2560, i32 0, i32 4
  %osave_style562 = bitcast %union.FOURTH_UNION* %ou4561 to %struct.STYLE*
  %onobreakfirst563 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style562, i32 0, i32 4
  %bf.load564 = load i32, i32* %onobreakfirst563, align 4
  %bf.value565 = and i32 %bf.clear559, 1
  %bf.shl566 = shl i32 %bf.value565, 30
  %bf.clear567 = and i32 %bf.load564, -1073741825
  %bf.set568 = or i32 %bf.clear567, %bf.shl566
  store i32 %bf.set568, i32* %onobreakfirst563, align 4
  %201 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1569 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %201, i32 0, i32 0
  %oss1570 = bitcast %union.anon* %osu1569 to %struct.anon.9*
  %202 = bitcast %struct.anon.9* %oss1570 to i8*
  %bf.load571 = load i8, i8* %202, align 4
  %bf.clear572 = and i8 %bf.load571, 1
  %bf.cast573 = zext i8 %bf.clear572 to i32
  %203 = load %union.rec*, %union.rec** %res, align 8
  %os2574 = bitcast %union.rec* %203 to %struct.closure_type*
  %ou4575 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2574, i32 0, i32 4
  %osave_style576 = bitcast %union.FOURTH_UNION* %ou4575 to %struct.STYLE*
  %osu1577 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style576, i32 0, i32 0
  %oss1578 = bitcast %union.anon* %osu1577 to %struct.anon.9*
  %204 = bitcast %struct.anon.9* %oss1578 to i8*
  %205 = trunc i32 %bf.cast573 to i8
  %bf.load579 = load i8, i8* %204, align 4
  %bf.value580 = and i8 %205, 1
  %bf.clear581 = and i8 %bf.load579, -2
  %bf.set582 = or i8 %bf.clear581, %bf.value580
  store i8 %bf.set582, i8* %204, align 4
  %bf.result.cast583 = zext i8 %bf.value580 to i32
  %206 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1584 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %206, i32 0, i32 0
  %oss1585 = bitcast %union.anon* %osu1584 to %struct.anon.9*
  %207 = bitcast %struct.anon.9* %oss1585 to i8*
  %bf.load586 = load i8, i8* %207, align 4
  %bf.lshr587 = lshr i8 %bf.load586, 1
  %bf.clear588 = and i8 %bf.lshr587, 1
  %bf.cast589 = zext i8 %bf.clear588 to i32
  %208 = load %union.rec*, %union.rec** %res, align 8
  %os2590 = bitcast %union.rec* %208 to %struct.closure_type*
  %ou4591 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2590, i32 0, i32 4
  %osave_style592 = bitcast %union.FOURTH_UNION* %ou4591 to %struct.STYLE*
  %osu1593 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style592, i32 0, i32 0
  %oss1594 = bitcast %union.anon* %osu1593 to %struct.anon.9*
  %209 = bitcast %struct.anon.9* %oss1594 to i8*
  %210 = trunc i32 %bf.cast589 to i8
  %bf.load595 = load i8, i8* %209, align 4
  %bf.value596 = and i8 %210, 1
  %bf.shl597 = shl i8 %bf.value596, 1
  %bf.clear598 = and i8 %bf.load595, -3
  %bf.set599 = or i8 %bf.clear598, %bf.shl597
  store i8 %bf.set599, i8* %209, align 4
  %bf.result.cast600 = zext i8 %bf.value596 to i32
  %211 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1601 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %211, i32 0, i32 0
  %oss1602 = bitcast %union.anon* %osu1601 to %struct.anon.9*
  %212 = bitcast %struct.anon.9* %oss1602 to i8*
  %bf.load603 = load i8, i8* %212, align 4
  %bf.lshr604 = lshr i8 %bf.load603, 2
  %bf.clear605 = and i8 %bf.lshr604, 1
  %bf.cast606 = zext i8 %bf.clear605 to i32
  %213 = load %union.rec*, %union.rec** %res, align 8
  %os2607 = bitcast %union.rec* %213 to %struct.closure_type*
  %ou4608 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2607, i32 0, i32 4
  %osave_style609 = bitcast %union.FOURTH_UNION* %ou4608 to %struct.STYLE*
  %osu1610 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style609, i32 0, i32 0
  %oss1611 = bitcast %union.anon* %osu1610 to %struct.anon.9*
  %214 = bitcast %struct.anon.9* %oss1611 to i8*
  %215 = trunc i32 %bf.cast606 to i8
  %bf.load612 = load i8, i8* %214, align 4
  %bf.value613 = and i8 %215, 1
  %bf.shl614 = shl i8 %bf.value613, 2
  %bf.clear615 = and i8 %bf.load612, -5
  %bf.set616 = or i8 %bf.clear615, %bf.shl614
  store i8 %bf.set616, i8* %214, align 4
  %bf.result.cast617 = zext i8 %bf.value613 to i32
  %216 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1618 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %216, i32 0, i32 0
  %oss1619 = bitcast %union.anon* %osu1618 to %struct.anon.9*
  %217 = bitcast %struct.anon.9* %oss1619 to i8*
  %bf.load620 = load i8, i8* %217, align 4
  %bf.lshr621 = lshr i8 %bf.load620, 4
  %bf.clear622 = and i8 %bf.lshr621, 7
  %bf.cast623 = zext i8 %bf.clear622 to i32
  %218 = load %union.rec*, %union.rec** %res, align 8
  %os2624 = bitcast %union.rec* %218 to %struct.closure_type*
  %ou4625 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2624, i32 0, i32 4
  %osave_style626 = bitcast %union.FOURTH_UNION* %ou4625 to %struct.STYLE*
  %osu1627 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style626, i32 0, i32 0
  %oss1628 = bitcast %union.anon* %osu1627 to %struct.anon.9*
  %219 = bitcast %struct.anon.9* %oss1628 to i8*
  %220 = trunc i32 %bf.cast623 to i8
  %bf.load629 = load i8, i8* %219, align 4
  %bf.value630 = and i8 %220, 7
  %bf.shl631 = shl i8 %bf.value630, 4
  %bf.clear632 = and i8 %bf.load629, -113
  %bf.set633 = or i8 %bf.clear632, %bf.shl631
  store i8 %bf.set633, i8* %219, align 4
  %bf.result.cast634 = zext i8 %bf.value630 to i32
  %221 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %221, i32 0, i32 2
  %222 = load i16, i16* %oyunit, align 2
  %223 = load %union.rec*, %union.rec** %res, align 8
  %os2635 = bitcast %union.rec* %223 to %struct.closure_type*
  %ou4636 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2635, i32 0, i32 4
  %osave_style637 = bitcast %union.FOURTH_UNION* %ou4636 to %struct.STYLE*
  %oyunit638 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style637, i32 0, i32 2
  store i16 %222, i16* %oyunit638, align 2
  %224 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %224, i32 0, i32 3
  %225 = load i16, i16* %ozunit, align 2
  %226 = load %union.rec*, %union.rec** %res, align 8
  %os2639 = bitcast %union.rec* %226 to %struct.closure_type*
  %ou4640 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2639, i32 0, i32 4
  %osave_style641 = bitcast %union.FOURTH_UNION* %ou4640 to %struct.STYLE*
  %ozunit642 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style641, i32 0, i32 3
  store i16 %225, i16* %ozunit642, align 2
  %227 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1643 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %227, i32 0, i32 0
  %oss1644 = bitcast %union.anon* %osu1643 to %struct.anon.9*
  %228 = bitcast %struct.anon.9* %oss1644 to i8*
  %bf.load645 = load i8, i8* %228, align 4
  %bf.lshr646 = lshr i8 %bf.load645, 2
  %bf.clear647 = and i8 %bf.lshr646, 1
  %bf.cast648 = zext i8 %bf.clear647 to i32
  %229 = load %union.rec*, %union.rec** %res, align 8
  %os1649 = bitcast %union.rec* %229 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oadjust_cat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %230 = trunc i32 %bf.cast648 to i16
  %bf.load650 = load i16, i16* %oadjust_cat, align 2
  %bf.value651 = and i16 %230, 1
  %bf.shl652 = shl i16 %bf.value651, 11
  %bf.clear653 = and i16 %bf.load650, -2049
  %bf.set654 = or i16 %bf.clear653, %bf.shl652
  store i16 %bf.set654, i16* %oadjust_cat, align 2
  %bf.result.cast655 = zext i16 %bf.value651 to i32
  %231 = load %union.rec*, %union.rec** %res, align 8
  %232 = load %union.rec**, %union.rec*** %ins.addr, align 8
  %233 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %call656 = call %union.rec* @InsertObject(%union.rec* %231, %union.rec** %232, %struct.STYLE* %233)
  store %union.rec* %call656, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.657:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %234 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %234, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.658:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %235 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1659 = bitcast %union.rec* %235 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 0
  %osucc662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 1
  %236 = load %union.rec*, %union.rec** %osucc662, align 8
  store %union.rec* %236, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.685, %sw.bb.658
  %237 = load %union.rec*, %union.rec** %link, align 8
  %238 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp663 = icmp ne %union.rec* %237, %238
  br i1 %cmp663, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %239 = load %union.rec**, %union.rec*** %ins.addr, align 8
  %240 = load %union.rec*, %union.rec** %239, align 8
  %cmp665 = icmp ne %union.rec* %240, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %241 = phi i1 [ false, %for.cond ], [ %cmp665, %land.rhs ]
  br i1 %241, label %for.body, label %for.end.690

for.body:                                         ; preds = %land.end
  %242 = load %union.rec*, %union.rec** %link, align 8
  %os1667 = bitcast %union.rec* %242 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 1
  %opred670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %opred670, align 8
  store %union.rec* %243, %union.rec** %y, align 8
  br label %for.cond.671

for.cond.671:                                     ; preds = %for.inc, %for.body
  %244 = load %union.rec*, %union.rec** %y, align 8
  %os1672 = bitcast %union.rec* %244 to %struct.word_type*
  %ou1673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 1
  %os11674 = bitcast %union.FIRST_UNION* %ou1673 to %struct.anon*
  %otype675 = getelementptr inbounds %struct.anon, %struct.anon* %os11674, i32 0, i32 0
  %245 = load i8, i8* %otype675, align 1
  %conv676 = zext i8 %245 to i32
  %cmp677 = icmp eq i32 %conv676, 0
  br i1 %cmp677, label %for.body.679, label %for.end

for.body.679:                                     ; preds = %for.cond.671
  br label %for.inc

for.inc:                                          ; preds = %for.body.679
  %246 = load %union.rec*, %union.rec** %y, align 8
  %os1680 = bitcast %union.rec* %246 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 1
  %opred683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 0
  %247 = load %union.rec*, %union.rec** %opred683, align 8
  store %union.rec* %247, %union.rec** %y, align 8
  br label %for.cond.671

for.end:                                          ; preds = %for.cond.671
  %248 = load %union.rec*, %union.rec** %y, align 8
  %249 = load %union.rec**, %union.rec*** %ins.addr, align 8
  %250 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %call684 = call %union.rec* @InsertObject(%union.rec* %248, %union.rec** %249, %struct.STYLE* %250)
  store %union.rec* %call684, %union.rec** %y, align 8
  br label %for.inc.685

for.inc.685:                                      ; preds = %for.end
  %251 = load %union.rec*, %union.rec** %link, align 8
  %os1686 = bitcast %union.rec* %251 to %struct.word_type*
  %olist687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1686, i32 0, i32 0
  %arrayidx688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist687, i32 0, i64 0
  %osucc689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx688, i32 0, i32 1
  %252 = load %union.rec*, %union.rec** %osucc689, align 8
  store %union.rec* %252, %union.rec** %link, align 8
  br label %for.cond

for.end.690:                                      ; preds = %land.end
  %253 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %253, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.691:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %254 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1692 = bitcast %union.rec* %254 to %struct.word_type*
  %olist693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1692, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist693, i32 0, i64 0
  %opred695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx694, i32 0, i32 0
  %255 = load %union.rec*, %union.rec** %opred695, align 8
  %os1696 = bitcast %union.rec* %255 to %struct.word_type*
  %olist697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1696, i32 0, i32 0
  %arrayidx698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist697, i32 0, i64 1
  %opred699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx698, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %opred699, align 8
  store %union.rec* %256, %union.rec** %y, align 8
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.709, %sw.bb.691
  %257 = load %union.rec*, %union.rec** %y, align 8
  %os1701 = bitcast %union.rec* %257 to %struct.word_type*
  %ou1702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1701, i32 0, i32 1
  %os11703 = bitcast %union.FIRST_UNION* %ou1702 to %struct.anon*
  %otype704 = getelementptr inbounds %struct.anon, %struct.anon* %os11703, i32 0, i32 0
  %258 = load i8, i8* %otype704, align 1
  %conv705 = zext i8 %258 to i32
  %cmp706 = icmp eq i32 %conv705, 0
  br i1 %cmp706, label %for.body.708, label %for.end.714

for.body.708:                                     ; preds = %for.cond.700
  br label %for.inc.709

for.inc.709:                                      ; preds = %for.body.708
  %259 = load %union.rec*, %union.rec** %y, align 8
  %os1710 = bitcast %union.rec* %259 to %struct.word_type*
  %olist711 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1710, i32 0, i32 0
  %arrayidx712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist711, i32 0, i64 1
  %opred713 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx712, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred713, align 8
  store %union.rec* %260, %union.rec** %y, align 8
  br label %for.cond.700

for.end.714:                                      ; preds = %for.cond.700
  %261 = load %union.rec*, %union.rec** %y, align 8
  %262 = load %union.rec**, %union.rec*** %ins.addr, align 8
  %263 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %call715 = call %union.rec* @InsertObject(%union.rec* %261, %union.rec** %262, %struct.STYLE* %263)
  store %union.rec* %call715, %union.rec** %y, align 8
  %264 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %264, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.716:                                        ; preds = %entry
  %265 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv717 = zext i8 %265 to i32
  store i32 %conv717, i32* @zz_size, align 4
  %conv718 = sext i32 %conv717 to i64
  %cmp719 = icmp uge i64 %conv718, 265
  br i1 %cmp719, label %if.then.721, label %if.else.723

if.then.721:                                      ; preds = %sw.bb.716
  %266 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call722 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %266)
  br label %if.end.740

if.else.723:                                      ; preds = %sw.bb.716
  %267 = load i32, i32* @zz_size, align 4
  %idxprom724 = sext i32 %267 to i64
  %arrayidx725 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom724
  %268 = load %union.rec*, %union.rec** %arrayidx725, align 8
  %cmp726 = icmp eq %union.rec* %268, null
  br i1 %cmp726, label %if.then.728, label %if.else.730

if.then.728:                                      ; preds = %if.else.723
  %269 = load i32, i32* @zz_size, align 4
  %270 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call729 = call %union.rec* @GetMemory(i32 %269, %struct.FILE_POS* %270)
  store %union.rec* %call729, %union.rec** @zz_hold, align 8
  br label %if.end.739

if.else.730:                                      ; preds = %if.else.723
  %271 = load i32, i32* @zz_size, align 4
  %idxprom731 = sext i32 %271 to i64
  %arrayidx732 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom731
  %272 = load %union.rec*, %union.rec** %arrayidx732, align 8
  store %union.rec* %272, %union.rec** @zz_hold, align 8
  store %union.rec* %272, %union.rec** @zz_hold, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %273 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 0
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  %274 = load %union.rec*, %union.rec** %opred736, align 8
  %275 = load i32, i32* @zz_size, align 4
  %idxprom737 = sext i32 %275 to i64
  %arrayidx738 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom737
  store %union.rec* %274, %union.rec** %arrayidx738, align 8
  br label %if.end.739

if.end.739:                                       ; preds = %if.else.730, %if.then.728
  br label %if.end.740

if.end.740:                                       ; preds = %if.end.739, %if.then.721
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1741 = bitcast %union.rec* %276 to %struct.word_type*
  %ou1742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1741, i32 0, i32 1
  %os11743 = bitcast %union.FIRST_UNION* %ou1742 to %struct.anon*
  %otype744 = getelementptr inbounds %struct.anon, %struct.anon* %os11743, i32 0, i32 0
  store i8 1, i8* %otype744, align 1
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1745 = bitcast %union.rec* %278 to %struct.word_type*
  %olist746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1745, i32 0, i32 0
  %arrayidx747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist746, i32 0, i64 1
  %osucc748 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx747, i32 0, i32 1
  store %union.rec* %277, %union.rec** %osucc748, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1749 = bitcast %union.rec* %279 to %struct.word_type*
  %olist750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1749, i32 0, i32 0
  %arrayidx751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist750, i32 0, i64 1
  %opred752 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx751, i32 0, i32 0
  store %union.rec* %277, %union.rec** %opred752, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1753 = bitcast %union.rec* %280 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 0
  %osucc756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 1
  store %union.rec* %277, %union.rec** %osucc756, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1757 = bitcast %union.rec* %281 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %opred760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 0
  store %union.rec* %277, %union.rec** %opred760, align 8
  store %union.rec* %277, %union.rec** %g, align 8
  %282 = load %union.rec*, %union.rec** %g, align 8
  %os5 = bitcast %union.rec* %282 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %283 = bitcast %struct.GAP* %ogap to i16*
  %bf.load761 = load i16, i16* %283, align 4
  %bf.clear762 = and i16 %bf.load761, -129
  store i16 %bf.clear762, i16* %283, align 4
  %284 = load %union.rec*, %union.rec** %g, align 8
  %os5763 = bitcast %union.rec* %284 to %struct.gapobj_type*
  %ogap764 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5763, i32 0, i32 3
  %285 = bitcast %struct.GAP* %ogap764 to i16*
  %bf.load765 = load i16, i16* %285, align 4
  %bf.clear766 = and i16 %bf.load765, -257
  store i16 %bf.clear766, i16* %285, align 4
  %286 = load %union.rec*, %union.rec** %g, align 8
  %os5767 = bitcast %union.rec* %286 to %struct.gapobj_type*
  %ogap768 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5767, i32 0, i32 3
  %287 = bitcast %struct.GAP* %ogap768 to i16*
  %bf.load769 = load i16, i16* %287, align 4
  %bf.clear770 = and i16 %bf.load769, -513
  %bf.set771 = or i16 %bf.clear770, 512
  store i16 %bf.set771, i16* %287, align 4
  %288 = load %union.rec*, %union.rec** %g, align 8
  %os5772 = bitcast %union.rec* %288 to %struct.gapobj_type*
  %ogap773 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5772, i32 0, i32 3
  %289 = bitcast %struct.GAP* %ogap773 to i16*
  %bf.load774 = load i16, i16* %289, align 4
  %bf.clear775 = and i16 %bf.load774, -7169
  %bf.set776 = or i16 %bf.clear775, 1024
  store i16 %bf.set776, i16* %289, align 4
  %290 = load %union.rec*, %union.rec** %g, align 8
  %os5777 = bitcast %union.rec* %290 to %struct.gapobj_type*
  %ogap778 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5777, i32 0, i32 3
  %291 = bitcast %struct.GAP* %ogap778 to i16*
  %bf.load779 = load i16, i16* %291, align 4
  %bf.clear780 = and i16 %bf.load779, 8191
  %bf.set781 = or i16 %bf.clear780, 8192
  store i16 %bf.set781, i16* %291, align 4
  %292 = load %union.rec*, %union.rec** %g, align 8
  %os5782 = bitcast %union.rec* %292 to %struct.gapobj_type*
  %ogap783 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5782, i32 0, i32 3
  %owidth784 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap783, i32 0, i32 1
  store i16 0, i16* %owidth784, align 2
  %293 = load %union.rec*, %union.rec** %g, align 8
  %os1785 = bitcast %union.rec* %293 to %struct.word_type*
  %ou2786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2786 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %294 = load %union.rec*, %union.rec** %g, align 8
  %os1787 = bitcast %union.rec* %294 to %struct.word_type*
  %ou2788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1787, i32 0, i32 2
  %os21789 = bitcast %union.SECOND_UNION* %ou2788 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21789, i32 0, i32 1
  store i8 0, i8* %ohspace, align 1
  %295 = load %union.rec*, %union.rec** %g, align 8
  %os1790 = bitcast %union.rec* %295 to %struct.word_type*
  %ou2791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1790, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2791 to %struct.anon.1*
  %296 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load792 = load i32, i32* %296, align 4
  %bf.clear793 = and i32 %bf.load792, -1610612737
  %bf.set794 = or i32 %bf.clear793, 536870912
  store i32 %bf.set794, i32* %296, align 4
  %297 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv795 = zext i8 %297 to i32
  store i32 %conv795, i32* @zz_size, align 4
  %conv796 = sext i32 %conv795 to i64
  %cmp797 = icmp uge i64 %conv796, 265
  br i1 %cmp797, label %if.then.799, label %if.else.801

if.then.799:                                      ; preds = %if.end.740
  %298 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call800 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %298)
  br label %if.end.818

if.else.801:                                      ; preds = %if.end.740
  %299 = load i32, i32* @zz_size, align 4
  %idxprom802 = sext i32 %299 to i64
  %arrayidx803 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom802
  %300 = load %union.rec*, %union.rec** %arrayidx803, align 8
  %cmp804 = icmp eq %union.rec* %300, null
  br i1 %cmp804, label %if.then.806, label %if.else.808

if.then.806:                                      ; preds = %if.else.801
  %301 = load i32, i32* @zz_size, align 4
  %302 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call807 = call %union.rec* @GetMemory(i32 %301, %struct.FILE_POS* %302)
  store %union.rec* %call807, %union.rec** @zz_hold, align 8
  br label %if.end.817

if.else.808:                                      ; preds = %if.else.801
  %303 = load i32, i32* @zz_size, align 4
  %idxprom809 = sext i32 %303 to i64
  %arrayidx810 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom809
  %304 = load %union.rec*, %union.rec** %arrayidx810, align 8
  store %union.rec* %304, %union.rec** @zz_hold, align 8
  store %union.rec* %304, %union.rec** @zz_hold, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1811 = bitcast %union.rec* %305 to %struct.word_type*
  %olist812 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1811, i32 0, i32 0
  %arrayidx813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist812, i32 0, i64 0
  %opred814 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx813, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred814, align 8
  %307 = load i32, i32* @zz_size, align 4
  %idxprom815 = sext i32 %307 to i64
  %arrayidx816 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom815
  store %union.rec* %306, %union.rec** %arrayidx816, align 8
  br label %if.end.817

if.end.817:                                       ; preds = %if.else.808, %if.then.806
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.then.799
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1819 = bitcast %union.rec* %308 to %struct.word_type*
  %ou1820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1819, i32 0, i32 1
  %os11821 = bitcast %union.FIRST_UNION* %ou1820 to %struct.anon*
  %otype822 = getelementptr inbounds %struct.anon, %struct.anon* %os11821, i32 0, i32 0
  store i8 0, i8* %otype822, align 1
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1823 = bitcast %union.rec* %310 to %struct.word_type*
  %olist824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 0
  %arrayidx825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist824, i32 0, i64 1
  %osucc826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx825, i32 0, i32 1
  store %union.rec* %309, %union.rec** %osucc826, align 8
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1827 = bitcast %union.rec* %311 to %struct.word_type*
  %olist828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1827, i32 0, i32 0
  %arrayidx829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist828, i32 0, i64 1
  %opred830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx829, i32 0, i32 0
  store %union.rec* %309, %union.rec** %opred830, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1831 = bitcast %union.rec* %312 to %struct.word_type*
  %olist832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1831, i32 0, i32 0
  %arrayidx833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist832, i32 0, i64 0
  %osucc834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx833, i32 0, i32 1
  store %union.rec* %309, %union.rec** %osucc834, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1835 = bitcast %union.rec* %313 to %struct.word_type*
  %olist836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 0
  %arrayidx837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist836, i32 0, i64 0
  %opred838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx837, i32 0, i32 0
  store %union.rec* %309, %union.rec** %opred838, align 8
  store %union.rec* %309, %union.rec** @xx_link, align 8
  %314 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %314, %union.rec** @zz_res, align 8
  %315 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1839 = bitcast %union.rec* %315 to %struct.word_type*
  %olist840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1839, i32 0, i32 0
  %arrayidx841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist840, i32 0, i64 0
  %osucc842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx841, i32 0, i32 1
  %316 = load %union.rec*, %union.rec** %osucc842, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp843 = icmp eq %union.rec* %317, null
  br i1 %cmp843, label %cond.true.845, label %cond.false.846

cond.true.845:                                    ; preds = %if.end.818
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.881

cond.false.846:                                   ; preds = %if.end.818
  %319 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp847 = icmp eq %union.rec* %319, null
  br i1 %cmp847, label %cond.true.849, label %cond.false.850

cond.true.849:                                    ; preds = %cond.false.846
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.879

cond.false.850:                                   ; preds = %cond.false.846
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1851 = bitcast %union.rec* %321 to %struct.word_type*
  %olist852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 0
  %arrayidx853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist852, i32 0, i64 0
  %opred854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx853, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %opred854, align 8
  store %union.rec* %322, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1855 = bitcast %union.rec* %323 to %struct.word_type*
  %olist856 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1855, i32 0, i32 0
  %arrayidx857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist856, i32 0, i64 0
  %opred858 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx857, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred858, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1859 = bitcast %union.rec* %325 to %struct.word_type*
  %olist860 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1859, i32 0, i32 0
  %arrayidx861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist860, i32 0, i64 0
  %opred862 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx861, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred862, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1863 = bitcast %union.rec* %327 to %struct.word_type*
  %olist864 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1863, i32 0, i32 0
  %arrayidx865 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist864, i32 0, i64 0
  %opred866 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx865, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %opred866, align 8
  %os1867 = bitcast %union.rec* %328 to %struct.word_type*
  %olist868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1867, i32 0, i32 0
  %arrayidx869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist868, i32 0, i64 0
  %osucc870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx869, i32 0, i32 1
  store %union.rec* %326, %union.rec** %osucc870, align 8
  %329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1871 = bitcast %union.rec* %330 to %struct.word_type*
  %olist872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1871, i32 0, i32 0
  %arrayidx873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist872, i32 0, i64 0
  %opred874 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx873, i32 0, i32 0
  store %union.rec* %329, %union.rec** %opred874, align 8
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  %332 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1875 = bitcast %union.rec* %332 to %struct.word_type*
  %olist876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1875, i32 0, i32 0
  %arrayidx877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist876, i32 0, i64 0
  %osucc878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx877, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc878, align 8
  br label %cond.end.879

cond.end.879:                                     ; preds = %cond.false.850, %cond.true.849
  %cond880 = phi %union.rec* [ %320, %cond.true.849 ], [ %331, %cond.false.850 ]
  br label %cond.end.881

cond.end.881:                                     ; preds = %cond.end.879, %cond.true.845
  %cond882 = phi %union.rec* [ %318, %cond.true.845 ], [ %cond880, %cond.end.879 ]
  %333 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %333, %union.rec** @zz_res, align 8
  %334 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %334, %union.rec** @zz_hold, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp883 = icmp eq %union.rec* %335, null
  br i1 %cmp883, label %cond.true.885, label %cond.false.886

cond.true.885:                                    ; preds = %cond.end.881
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.921

cond.false.886:                                   ; preds = %cond.end.881
  %337 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp887 = icmp eq %union.rec* %337, null
  br i1 %cmp887, label %cond.true.889, label %cond.false.890

cond.true.889:                                    ; preds = %cond.false.886
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.919

cond.false.890:                                   ; preds = %cond.false.886
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1891 = bitcast %union.rec* %339 to %struct.word_type*
  %olist892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1891, i32 0, i32 0
  %arrayidx893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist892, i32 0, i64 1
  %opred894 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx893, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %opred894, align 8
  store %union.rec* %340, %union.rec** @zz_tmp, align 8
  %341 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1895 = bitcast %union.rec* %341 to %struct.word_type*
  %olist896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1895, i32 0, i32 0
  %arrayidx897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist896, i32 0, i64 1
  %opred898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx897, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %opred898, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1899 = bitcast %union.rec* %343 to %struct.word_type*
  %olist900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1899, i32 0, i32 0
  %arrayidx901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist900, i32 0, i64 1
  %opred902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx901, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred902, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1903 = bitcast %union.rec* %345 to %struct.word_type*
  %olist904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1903, i32 0, i32 0
  %arrayidx905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist904, i32 0, i64 1
  %opred906 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx905, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %opred906, align 8
  %os1907 = bitcast %union.rec* %346 to %struct.word_type*
  %olist908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1907, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist908, i32 0, i64 1
  %osucc910 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx909, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc910, align 8
  %347 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1911 = bitcast %union.rec* %348 to %struct.word_type*
  %olist912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1911, i32 0, i32 0
  %arrayidx913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist912, i32 0, i64 1
  %opred914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx913, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred914, align 8
  %349 = load %union.rec*, %union.rec** @zz_res, align 8
  %350 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1915 = bitcast %union.rec* %350 to %struct.word_type*
  %olist916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1915, i32 0, i32 0
  %arrayidx917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist916, i32 0, i64 1
  %osucc918 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx917, i32 0, i32 1
  store %union.rec* %349, %union.rec** %osucc918, align 8
  br label %cond.end.919

cond.end.919:                                     ; preds = %cond.false.890, %cond.true.889
  %cond920 = phi %union.rec* [ %338, %cond.true.889 ], [ %349, %cond.false.890 ]
  br label %cond.end.921

cond.end.921:                                     ; preds = %cond.end.919, %cond.true.885
  %cond922 = phi %union.rec* [ %336, %cond.true.885 ], [ %cond920, %cond.end.919 ]
  %351 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv923 = zext i8 %351 to i32
  store i32 %conv923, i32* @zz_size, align 4
  %conv924 = sext i32 %conv923 to i64
  %cmp925 = icmp uge i64 %conv924, 265
  br i1 %cmp925, label %if.then.927, label %if.else.929

if.then.927:                                      ; preds = %cond.end.921
  %352 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call928 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %352)
  br label %if.end.946

if.else.929:                                      ; preds = %cond.end.921
  %353 = load i32, i32* @zz_size, align 4
  %idxprom930 = sext i32 %353 to i64
  %arrayidx931 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom930
  %354 = load %union.rec*, %union.rec** %arrayidx931, align 8
  %cmp932 = icmp eq %union.rec* %354, null
  br i1 %cmp932, label %if.then.934, label %if.else.936

if.then.934:                                      ; preds = %if.else.929
  %355 = load i32, i32* @zz_size, align 4
  %356 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call935 = call %union.rec* @GetMemory(i32 %355, %struct.FILE_POS* %356)
  store %union.rec* %call935, %union.rec** @zz_hold, align 8
  br label %if.end.945

if.else.936:                                      ; preds = %if.else.929
  %357 = load i32, i32* @zz_size, align 4
  %idxprom937 = sext i32 %357 to i64
  %arrayidx938 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom937
  %358 = load %union.rec*, %union.rec** %arrayidx938, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1939 = bitcast %union.rec* %359 to %struct.word_type*
  %olist940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 0
  %arrayidx941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist940, i32 0, i64 0
  %opred942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx941, i32 0, i32 0
  %360 = load %union.rec*, %union.rec** %opred942, align 8
  %361 = load i32, i32* @zz_size, align 4
  %idxprom943 = sext i32 %361 to i64
  %arrayidx944 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom943
  store %union.rec* %360, %union.rec** %arrayidx944, align 8
  br label %if.end.945

if.end.945:                                       ; preds = %if.else.936, %if.then.934
  br label %if.end.946

if.end.946:                                       ; preds = %if.end.945, %if.then.927
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1947 = bitcast %union.rec* %362 to %struct.word_type*
  %ou1948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1947, i32 0, i32 1
  %os11949 = bitcast %union.FIRST_UNION* %ou1948 to %struct.anon*
  %otype950 = getelementptr inbounds %struct.anon, %struct.anon* %os11949, i32 0, i32 0
  store i8 0, i8* %otype950, align 1
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1951 = bitcast %union.rec* %364 to %struct.word_type*
  %olist952 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1951, i32 0, i32 0
  %arrayidx953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist952, i32 0, i64 1
  %osucc954 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx953, i32 0, i32 1
  store %union.rec* %363, %union.rec** %osucc954, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1955 = bitcast %union.rec* %365 to %struct.word_type*
  %olist956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1955, i32 0, i32 0
  %arrayidx957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist956, i32 0, i64 1
  %opred958 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx957, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred958, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1959 = bitcast %union.rec* %366 to %struct.word_type*
  %olist960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1959, i32 0, i32 0
  %arrayidx961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist960, i32 0, i64 0
  %osucc962 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx961, i32 0, i32 1
  store %union.rec* %363, %union.rec** %osucc962, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1963 = bitcast %union.rec* %367 to %struct.word_type*
  %olist964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1963, i32 0, i32 0
  %arrayidx965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist964, i32 0, i64 0
  %opred966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx965, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred966, align 8
  store %union.rec* %363, %union.rec** @xx_link, align 8
  %368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %368, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1967 = bitcast %union.rec* %369 to %struct.word_type*
  %olist968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist968, i32 0, i64 0
  %osucc970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx969, i32 0, i32 1
  %370 = load %union.rec*, %union.rec** %osucc970, align 8
  store %union.rec* %370, %union.rec** @zz_hold, align 8
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp971 = icmp eq %union.rec* %371, null
  br i1 %cmp971, label %cond.true.973, label %cond.false.974

cond.true.973:                                    ; preds = %if.end.946
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1009

cond.false.974:                                   ; preds = %if.end.946
  %373 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp975 = icmp eq %union.rec* %373, null
  br i1 %cmp975, label %cond.true.977, label %cond.false.978

cond.true.977:                                    ; preds = %cond.false.974
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1007

cond.false.978:                                   ; preds = %cond.false.974
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1979 = bitcast %union.rec* %375 to %struct.word_type*
  %olist980 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1979, i32 0, i32 0
  %arrayidx981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist980, i32 0, i64 0
  %opred982 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx981, i32 0, i32 0
  %376 = load %union.rec*, %union.rec** %opred982, align 8
  store %union.rec* %376, %union.rec** @zz_tmp, align 8
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1983 = bitcast %union.rec* %377 to %struct.word_type*
  %olist984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist984, i32 0, i64 0
  %opred986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx985, i32 0, i32 0
  %378 = load %union.rec*, %union.rec** %opred986, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1987 = bitcast %union.rec* %379 to %struct.word_type*
  %olist988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1987, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist988, i32 0, i64 0
  %opred990 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx989, i32 0, i32 0
  store %union.rec* %378, %union.rec** %opred990, align 8
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %381 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1991 = bitcast %union.rec* %381 to %struct.word_type*
  %olist992 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1991, i32 0, i32 0
  %arrayidx993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist992, i32 0, i64 0
  %opred994 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx993, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %opred994, align 8
  %os1995 = bitcast %union.rec* %382 to %struct.word_type*
  %olist996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1995, i32 0, i32 0
  %arrayidx997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist996, i32 0, i64 0
  %osucc998 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx997, i32 0, i32 1
  store %union.rec* %380, %union.rec** %osucc998, align 8
  %383 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1999 = bitcast %union.rec* %384 to %struct.word_type*
  %olist1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1999, i32 0, i32 0
  %arrayidx1001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1000, i32 0, i64 0
  %opred1002 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1001, i32 0, i32 0
  store %union.rec* %383, %union.rec** %opred1002, align 8
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %386 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11003 = bitcast %union.rec* %386 to %struct.word_type*
  %olist1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11003, i32 0, i32 0
  %arrayidx1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1004, i32 0, i64 0
  %osucc1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1005, i32 0, i32 1
  store %union.rec* %385, %union.rec** %osucc1006, align 8
  br label %cond.end.1007

cond.end.1007:                                    ; preds = %cond.false.978, %cond.true.977
  %cond1008 = phi %union.rec* [ %374, %cond.true.977 ], [ %385, %cond.false.978 ]
  br label %cond.end.1009

cond.end.1009:                                    ; preds = %cond.end.1007, %cond.true.973
  %cond1010 = phi %union.rec* [ %372, %cond.true.973 ], [ %cond1008, %cond.end.1007 ]
  %387 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %387, %union.rec** @zz_res, align 8
  %388 = load %union.rec**, %union.rec*** %ins.addr, align 8
  %389 = load %union.rec*, %union.rec** %388, align 8
  store %union.rec* %389, %union.rec** @zz_hold, align 8
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1011 = icmp eq %union.rec* %390, null
  br i1 %cmp1011, label %cond.true.1013, label %cond.false.1014

cond.true.1013:                                   ; preds = %cond.end.1009
  %391 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1049

cond.false.1014:                                  ; preds = %cond.end.1009
  %392 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1015 = icmp eq %union.rec* %392, null
  br i1 %cmp1015, label %cond.true.1017, label %cond.false.1018

cond.true.1017:                                   ; preds = %cond.false.1014
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1047

cond.false.1018:                                  ; preds = %cond.false.1014
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11019 = bitcast %union.rec* %394 to %struct.word_type*
  %olist1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11019, i32 0, i32 0
  %arrayidx1021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1020, i32 0, i64 1
  %opred1022 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1021, i32 0, i32 0
  %395 = load %union.rec*, %union.rec** %opred1022, align 8
  store %union.rec* %395, %union.rec** @zz_tmp, align 8
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11023 = bitcast %union.rec* %396 to %struct.word_type*
  %olist1024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11023, i32 0, i32 0
  %arrayidx1025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1024, i32 0, i64 1
  %opred1026 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1025, i32 0, i32 0
  %397 = load %union.rec*, %union.rec** %opred1026, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11027 = bitcast %union.rec* %398 to %struct.word_type*
  %olist1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11027, i32 0, i32 0
  %arrayidx1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1028, i32 0, i64 1
  %opred1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1029, i32 0, i32 0
  store %union.rec* %397, %union.rec** %opred1030, align 8
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %400 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11031 = bitcast %union.rec* %400 to %struct.word_type*
  %olist1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11031, i32 0, i32 0
  %arrayidx1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1032, i32 0, i64 1
  %opred1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1033, i32 0, i32 0
  %401 = load %union.rec*, %union.rec** %opred1034, align 8
  %os11035 = bitcast %union.rec* %401 to %struct.word_type*
  %olist1036 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11035, i32 0, i32 0
  %arrayidx1037 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1036, i32 0, i64 1
  %osucc1038 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1037, i32 0, i32 1
  store %union.rec* %399, %union.rec** %osucc1038, align 8
  %402 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %403 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11039 = bitcast %union.rec* %403 to %struct.word_type*
  %olist1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11039, i32 0, i32 0
  %arrayidx1041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1040, i32 0, i64 1
  %opred1042 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1041, i32 0, i32 0
  store %union.rec* %402, %union.rec** %opred1042, align 8
  %404 = load %union.rec*, %union.rec** @zz_res, align 8
  %405 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11043 = bitcast %union.rec* %405 to %struct.word_type*
  %olist1044 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11043, i32 0, i32 0
  %arrayidx1045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1044, i32 0, i64 1
  %osucc1046 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1045, i32 0, i32 1
  store %union.rec* %404, %union.rec** %osucc1046, align 8
  br label %cond.end.1047

cond.end.1047:                                    ; preds = %cond.false.1018, %cond.true.1017
  %cond1048 = phi %union.rec* [ %393, %cond.true.1017 ], [ %404, %cond.false.1018 ]
  br label %cond.end.1049

cond.end.1049:                                    ; preds = %cond.end.1047, %cond.true.1013
  %cond1050 = phi %union.rec* [ %391, %cond.true.1013 ], [ %cond1048, %cond.end.1047 ]
  %406 = load %union.rec**, %union.rec*** %ins.addr, align 8
  %407 = load %union.rec*, %union.rec** %406, align 8
  %os11051 = bitcast %union.rec* %407 to %struct.word_type*
  %ou21052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11051, i32 0, i32 2
  %os221053 = bitcast %union.SECOND_UNION* %ou21052 to %struct.anon.1*
  %408 = bitcast %struct.anon.1* %os221053 to i32*
  %bf.load1054 = load i32, i32* %408, align 4
  %bf.clear1055 = and i32 %bf.load1054, -1610612737
  %bf.set1056 = or i32 %bf.clear1055, 536870912
  store i32 %bf.set1056, i32* %408, align 4
  %409 = load %union.rec**, %union.rec*** %ins.addr, align 8
  store %union.rec* null, %union.rec** %409, align 8
  %410 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %410, %union.rec** %res, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %411 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %412 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11057 = bitcast %union.rec* %412 to %struct.word_type*
  %ou11058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11057, i32 0, i32 1
  %os111059 = bitcast %union.FIRST_UNION* %ou11058 to %struct.anon*
  %otype1060 = getelementptr inbounds %struct.anon, %struct.anon* %os111059, i32 0, i32 0
  %413 = load i8, i8* %otype1060, align 1
  %conv1061 = zext i8 %413 to i32
  %call1062 = call i8* @Image(i32 %conv1061)
  %call1063 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.FILE_POS* %411, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %call1062)
  %414 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %414, %union.rec** %res, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.1049, %for.end.714, %for.end.690, %sw.bb.657, %cond.end.258
  %415 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %415
}

; Function Attrs: nounwind uwtable
define %union.rec* @Meld(%union.rec* %x, %union.rec* %y) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y.addr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %table = alloca [32 x [32 x i8]], align 16
  %dir = alloca [32 x [32 x i8]], align 16
  %xcomp = alloca [32 x %union.rec*], align 16
  %ycomp = alloca [32 x %union.rec*], align 16
  %xgaps = alloca [32 x %union.rec*], align 16
  %ygaps = alloca [32 x %union.rec*], align 16
  %is_equal = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %jn = alloca i32, align 4
  %xlen = alloca i32, align 4
  %ylen = alloca i32, align 4
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %y.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %4 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %4 to i32
  %cmp7 = icmp eq i32 %conv6, 17
  br i1 %cmp7, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %xlen, align 4
  %6 = load i32, i32* %xlen, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom
  store %union.rec* null, %union.rec** %arrayidx, align 8
  %7 = load i32, i32* %xlen, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %xlen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %9, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end.11
  %10 = load %union.rec*, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp14 = icmp ne %union.rec* %10, %11
  br i1 %cmp14, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %link, align 8
  %os116 = bitcast %union.rec* %12 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %13, %union.rec** %z, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %14 = load %union.rec*, %union.rec** %z, align 8
  %os120 = bitcast %union.rec* %14 to %struct.word_type*
  %ou121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 1
  %os1122 = bitcast %union.FIRST_UNION* %ou121 to %struct.anon*
  %otype23 = getelementptr inbounds %struct.anon, %struct.anon* %os1122, i32 0, i32 0
  %15 = load i8, i8* %otype23, align 1
  %conv24 = zext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.19
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %16 = load %union.rec*, %union.rec** %z, align 8
  %os128 = bitcast %union.rec* %16 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 1
  %opred31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred31, align 8
  store %union.rec* %17, %union.rec** %z, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %18 = load %union.rec*, %union.rec** %z, align 8
  %os132 = bitcast %union.rec* %18 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %os1134 = bitcast %union.FIRST_UNION* %ou133 to %struct.anon*
  %otype35 = getelementptr inbounds %struct.anon, %struct.anon* %os1134, i32 0, i32 0
  %19 = load i8, i8* %otype35, align 1
  %conv36 = zext i8 %19 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %for.end
  %20 = load i32, i32* %jn, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.39
  %21 = load %union.rec*, %union.rec** %z, align 8
  %os5 = bitcast %union.rec* %21 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %22 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %22, align 4
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool40 = icmp ne i32 %bf.cast, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.39
  %23 = phi i1 [ false, %if.then.39 ], [ %tobool40, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %jn, align 4
  br label %if.end.69

if.else:                                          ; preds = %for.end
  %24 = load %union.rec*, %union.rec** %z, align 8
  %os141 = bitcast %union.rec* %24 to %struct.word_type*
  %ou142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 1
  %os1143 = bitcast %union.FIRST_UNION* %ou142 to %struct.anon*
  %otype44 = getelementptr inbounds %struct.anon, %struct.anon* %os1143, i32 0, i32 0
  %25 = load i8, i8* %otype44, align 1
  %conv45 = zext i8 %25 to i32
  %cmp46 = icmp eq i32 %conv45, 9
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %26 = load %union.rec*, %union.rec** %z, align 8
  %call48 = call i32 @SplitIsDefinite(%union.rec* %26)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.67, label %if.end.68

cond.false:                                       ; preds = %if.else
  %27 = load %union.rec*, %union.rec** %z, align 8
  %os150 = bitcast %union.rec* %27 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %os1152 = bitcast %union.FIRST_UNION* %ou151 to %struct.anon*
  %otype53 = getelementptr inbounds %struct.anon, %struct.anon* %os1152, i32 0, i32 0
  %28 = load i8, i8* %otype53, align 1
  %conv54 = zext i8 %28 to i32
  %cmp55 = icmp sge i32 %conv54, 9
  br i1 %cmp55, label %land.rhs.57, label %land.end.65

land.rhs.57:                                      ; preds = %cond.false
  %29 = load %union.rec*, %union.rec** %z, align 8
  %os158 = bitcast %union.rec* %29 to %struct.word_type*
  %ou159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 1
  %os1160 = bitcast %union.FIRST_UNION* %ou159 to %struct.anon*
  %otype61 = getelementptr inbounds %struct.anon, %struct.anon* %os1160, i32 0, i32 0
  %30 = load i8, i8* %otype61, align 1
  %conv62 = zext i8 %30 to i32
  %cmp63 = icmp sle i32 %conv62, 99
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.57, %cond.false
  %31 = phi i1 [ false, %cond.false ], [ %cmp63, %land.rhs.57 ]
  br i1 %31, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.end.65, %cond.true
  br label %for.end.75

if.end.68:                                        ; preds = %land.end.65, %cond.true
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.end
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %32 = load %union.rec*, %union.rec** %link, align 8
  %os171 = bitcast %union.rec* %32 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 0
  %osucc74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %osucc74, align 8
  store %union.rec* %33, %union.rec** %link, align 8
  br label %for.cond

for.end.75:                                       ; preds = %if.then.67, %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.178, %for.end.75
  %34 = load %union.rec*, %union.rec** %link, align 8
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp76 = icmp ne %union.rec* %34, %35
  br i1 %cmp76, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %xlen, align 4
  %cmp78 = icmp sge i32 %36, 32
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %while.body
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %os181 = bitcast %union.rec* %37 to %struct.word_type*
  %ou182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou182 to %struct.FILE_POS*
  %call83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 7, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 31)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %while.body
  %38 = load %union.rec*, %union.rec** %z, align 8
  %39 = load i32, i32* %xlen, align 4
  %idxprom85 = sext i32 %39 to i64
  %arrayidx86 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom85
  store %union.rec* %38, %union.rec** %arrayidx86, align 8
  %40 = load %union.rec*, %union.rec** %g, align 8
  %41 = load i32, i32* %xlen, align 4
  %idxprom87 = sext i32 %41 to i64
  %arrayidx88 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xgaps, i32 0, i64 %idxprom87
  store %union.rec* %40, %union.rec** %arrayidx88, align 8
  %42 = load i32, i32* %xlen, align 4
  %inc89 = add nsw i32 %42, 1
  store i32 %inc89, i32* %xlen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %43 = load %union.rec*, %union.rec** %link, align 8
  %os190 = bitcast %union.rec* %43 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 0
  %osucc93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 1
  %44 = load %union.rec*, %union.rec** %osucc93, align 8
  store %union.rec* %44, %union.rec** %link, align 8
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.173, %if.end.84
  %45 = load %union.rec*, %union.rec** %link, align 8
  %46 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp95 = icmp ne %union.rec* %45, %46
  br i1 %cmp95, label %for.body.97, label %for.end.178

for.body.97:                                      ; preds = %for.cond.94
  %47 = load %union.rec*, %union.rec** %link, align 8
  %os198 = bitcast %union.rec* %47 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred101, align 8
  store %union.rec* %48, %union.rec** %z, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.111, %for.body.97
  %49 = load %union.rec*, %union.rec** %z, align 8
  %os1103 = bitcast %union.rec* %49 to %struct.word_type*
  %ou1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 1
  %os11105 = bitcast %union.FIRST_UNION* %ou1104 to %struct.anon*
  %otype106 = getelementptr inbounds %struct.anon, %struct.anon* %os11105, i32 0, i32 0
  %50 = load i8, i8* %otype106, align 1
  %conv107 = zext i8 %50 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %for.body.110, label %for.end.116

for.body.110:                                     ; preds = %for.cond.102
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.110
  %51 = load %union.rec*, %union.rec** %z, align 8
  %os1112 = bitcast %union.rec* %51 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 1
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred115, align 8
  store %union.rec* %52, %union.rec** %z, align 8
  br label %for.cond.102

for.end.116:                                      ; preds = %for.cond.102
  %53 = load %union.rec*, %union.rec** %z, align 8
  %os1117 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 1
  %os11119 = bitcast %union.FIRST_UNION* %ou1118 to %struct.anon*
  %otype120 = getelementptr inbounds %struct.anon, %struct.anon* %os11119, i32 0, i32 0
  %54 = load i8, i8* %otype120, align 1
  %conv121 = zext i8 %54 to i32
  %cmp122 = icmp eq i32 %conv121, 1
  br i1 %cmp122, label %if.then.124, label %if.else.136

if.then.124:                                      ; preds = %for.end.116
  %55 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %55, %union.rec** %g, align 8
  %56 = load i32, i32* %jn, align 4
  %tobool125 = icmp ne i32 %56, 0
  br i1 %tobool125, label %land.rhs.126, label %land.end.134

land.rhs.126:                                     ; preds = %if.then.124
  %57 = load %union.rec*, %union.rec** %z, align 8
  %os5127 = bitcast %union.rec* %57 to %struct.gapobj_type*
  %ogap128 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5127, i32 0, i32 3
  %58 = bitcast %struct.GAP* %ogap128 to i16*
  %bf.load129 = load i16, i16* %58, align 4
  %bf.lshr130 = lshr i16 %bf.load129, 9
  %bf.clear131 = and i16 %bf.lshr130, 1
  %bf.cast132 = zext i16 %bf.clear131 to i32
  %tobool133 = icmp ne i32 %bf.cast132, 0
  br label %land.end.134

land.end.134:                                     ; preds = %land.rhs.126, %if.then.124
  %59 = phi i1 [ false, %if.then.124 ], [ %tobool133, %land.rhs.126 ]
  %land.ext135 = zext i1 %59 to i32
  store i32 %land.ext135, i32* %jn, align 4
  br label %if.end.172

if.else.136:                                      ; preds = %for.end.116
  %60 = load %union.rec*, %union.rec** %z, align 8
  %os1137 = bitcast %union.rec* %60 to %struct.word_type*
  %ou1138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 1
  %os11139 = bitcast %union.FIRST_UNION* %ou1138 to %struct.anon*
  %otype140 = getelementptr inbounds %struct.anon, %struct.anon* %os11139, i32 0, i32 0
  %61 = load i8, i8* %otype140, align 1
  %conv141 = zext i8 %61 to i32
  %cmp142 = icmp eq i32 %conv141, 9
  br i1 %cmp142, label %cond.true.144, label %cond.false.147

cond.true.144:                                    ; preds = %if.else.136
  %62 = load %union.rec*, %union.rec** %z, align 8
  %call145 = call i32 @SplitIsDefinite(%union.rec* %62)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.165, label %if.end.171

cond.false.147:                                   ; preds = %if.else.136
  %63 = load %union.rec*, %union.rec** %z, align 8
  %os1148 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 1
  %os11150 = bitcast %union.FIRST_UNION* %ou1149 to %struct.anon*
  %otype151 = getelementptr inbounds %struct.anon, %struct.anon* %os11150, i32 0, i32 0
  %64 = load i8, i8* %otype151, align 1
  %conv152 = zext i8 %64 to i32
  %cmp153 = icmp sge i32 %conv152, 9
  br i1 %cmp153, label %land.rhs.155, label %land.end.163

land.rhs.155:                                     ; preds = %cond.false.147
  %65 = load %union.rec*, %union.rec** %z, align 8
  %os1156 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 1
  %os11158 = bitcast %union.FIRST_UNION* %ou1157 to %struct.anon*
  %otype159 = getelementptr inbounds %struct.anon, %struct.anon* %os11158, i32 0, i32 0
  %66 = load i8, i8* %otype159, align 1
  %conv160 = zext i8 %66 to i32
  %cmp161 = icmp sle i32 %conv160, 99
  br label %land.end.163

land.end.163:                                     ; preds = %land.rhs.155, %cond.false.147
  %67 = phi i1 [ false, %cond.false.147 ], [ %cmp161, %land.rhs.155 ]
  br i1 %67, label %if.then.165, label %if.end.171

if.then.165:                                      ; preds = %land.end.163, %cond.true.144
  %68 = load %union.rec*, %union.rec** %g, align 8
  %cmp166 = icmp ne %union.rec* %68, null
  br i1 %cmp166, label %if.end.170, label %if.then.168

if.then.168:                                      ; preds = %if.then.165
  %69 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call169 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.then.165
  br label %for.end.178

if.end.171:                                       ; preds = %land.end.163, %cond.true.144
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %land.end.134
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.172
  %70 = load %union.rec*, %union.rec** %link, align 8
  %os1174 = bitcast %union.rec* %70 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 0
  %osucc177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 1
  %71 = load %union.rec*, %union.rec** %osucc177, align 8
  store %union.rec* %71, %union.rec** %link, align 8
  br label %for.cond.94

for.end.178:                                      ; preds = %if.end.170, %for.cond.94
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %ylen, align 4
  %72 = load i32, i32* %ylen, align 4
  %idxprom179 = sext i32 %72 to i64
  %arrayidx180 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom179
  store %union.rec* null, %union.rec** %arrayidx180, align 8
  %73 = load i32, i32* %ylen, align 4
  %inc181 = add nsw i32 %73, 1
  store i32 %inc181, i32* %ylen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %74 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1182 = bitcast %union.rec* %74 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 0
  %osucc185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 1
  %75 = load %union.rec*, %union.rec** %osucc185, align 8
  store %union.rec* %75, %union.rec** %link, align 8
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.260, %while.end
  %76 = load %union.rec*, %union.rec** %link, align 8
  %77 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp187 = icmp ne %union.rec* %76, %77
  br i1 %cmp187, label %for.body.189, label %for.end.265

for.body.189:                                     ; preds = %for.cond.186
  %78 = load %union.rec*, %union.rec** %link, align 8
  %os1190 = bitcast %union.rec* %78 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %opred193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred193, align 8
  store %union.rec* %79, %union.rec** %z, align 8
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.203, %for.body.189
  %80 = load %union.rec*, %union.rec** %z, align 8
  %os1195 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 1
  %os11197 = bitcast %union.FIRST_UNION* %ou1196 to %struct.anon*
  %otype198 = getelementptr inbounds %struct.anon, %struct.anon* %os11197, i32 0, i32 0
  %81 = load i8, i8* %otype198, align 1
  %conv199 = zext i8 %81 to i32
  %cmp200 = icmp eq i32 %conv199, 0
  br i1 %cmp200, label %for.body.202, label %for.end.208

for.body.202:                                     ; preds = %for.cond.194
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.202
  %82 = load %union.rec*, %union.rec** %z, align 8
  %os1204 = bitcast %union.rec* %82 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 1
  %opred207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred207, align 8
  store %union.rec* %83, %union.rec** %z, align 8
  br label %for.cond.194

for.end.208:                                      ; preds = %for.cond.194
  %84 = load %union.rec*, %union.rec** %z, align 8
  %os1209 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 1
  %os11211 = bitcast %union.FIRST_UNION* %ou1210 to %struct.anon*
  %otype212 = getelementptr inbounds %struct.anon, %struct.anon* %os11211, i32 0, i32 0
  %85 = load i8, i8* %otype212, align 1
  %conv213 = zext i8 %85 to i32
  %cmp214 = icmp eq i32 %conv213, 1
  br i1 %cmp214, label %if.then.216, label %if.else.228

if.then.216:                                      ; preds = %for.end.208
  %86 = load i32, i32* %jn, align 4
  %tobool217 = icmp ne i32 %86, 0
  br i1 %tobool217, label %land.rhs.218, label %land.end.226

land.rhs.218:                                     ; preds = %if.then.216
  %87 = load %union.rec*, %union.rec** %z, align 8
  %os5219 = bitcast %union.rec* %87 to %struct.gapobj_type*
  %ogap220 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5219, i32 0, i32 3
  %88 = bitcast %struct.GAP* %ogap220 to i16*
  %bf.load221 = load i16, i16* %88, align 4
  %bf.lshr222 = lshr i16 %bf.load221, 9
  %bf.clear223 = and i16 %bf.lshr222, 1
  %bf.cast224 = zext i16 %bf.clear223 to i32
  %tobool225 = icmp ne i32 %bf.cast224, 0
  br label %land.end.226

land.end.226:                                     ; preds = %land.rhs.218, %if.then.216
  %89 = phi i1 [ false, %if.then.216 ], [ %tobool225, %land.rhs.218 ]
  %land.ext227 = zext i1 %89 to i32
  store i32 %land.ext227, i32* %jn, align 4
  br label %if.end.259

if.else.228:                                      ; preds = %for.end.208
  %90 = load %union.rec*, %union.rec** %z, align 8
  %os1229 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 1
  %os11231 = bitcast %union.FIRST_UNION* %ou1230 to %struct.anon*
  %otype232 = getelementptr inbounds %struct.anon, %struct.anon* %os11231, i32 0, i32 0
  %91 = load i8, i8* %otype232, align 1
  %conv233 = zext i8 %91 to i32
  %cmp234 = icmp eq i32 %conv233, 9
  br i1 %cmp234, label %cond.true.236, label %cond.false.239

cond.true.236:                                    ; preds = %if.else.228
  %92 = load %union.rec*, %union.rec** %z, align 8
  %call237 = call i32 @SplitIsDefinite(%union.rec* %92)
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.then.257, label %if.end.258

cond.false.239:                                   ; preds = %if.else.228
  %93 = load %union.rec*, %union.rec** %z, align 8
  %os1240 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 1
  %os11242 = bitcast %union.FIRST_UNION* %ou1241 to %struct.anon*
  %otype243 = getelementptr inbounds %struct.anon, %struct.anon* %os11242, i32 0, i32 0
  %94 = load i8, i8* %otype243, align 1
  %conv244 = zext i8 %94 to i32
  %cmp245 = icmp sge i32 %conv244, 9
  br i1 %cmp245, label %land.rhs.247, label %land.end.255

land.rhs.247:                                     ; preds = %cond.false.239
  %95 = load %union.rec*, %union.rec** %z, align 8
  %os1248 = bitcast %union.rec* %95 to %struct.word_type*
  %ou1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 1
  %os11250 = bitcast %union.FIRST_UNION* %ou1249 to %struct.anon*
  %otype251 = getelementptr inbounds %struct.anon, %struct.anon* %os11250, i32 0, i32 0
  %96 = load i8, i8* %otype251, align 1
  %conv252 = zext i8 %96 to i32
  %cmp253 = icmp sle i32 %conv252, 99
  br label %land.end.255

land.end.255:                                     ; preds = %land.rhs.247, %cond.false.239
  %97 = phi i1 [ false, %cond.false.239 ], [ %cmp253, %land.rhs.247 ]
  br i1 %97, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %land.end.255, %cond.true.236
  br label %for.end.265

if.end.258:                                       ; preds = %land.end.255, %cond.true.236
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %land.end.226
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.259
  %98 = load %union.rec*, %union.rec** %link, align 8
  %os1261 = bitcast %union.rec* %98 to %struct.word_type*
  %olist262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist262, i32 0, i64 0
  %osucc264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx263, i32 0, i32 1
  %99 = load %union.rec*, %union.rec** %osucc264, align 8
  store %union.rec* %99, %union.rec** %link, align 8
  br label %for.cond.186

for.end.265:                                      ; preds = %if.then.257, %for.cond.186
  br label %while.cond.266

while.cond.266:                                   ; preds = %for.end.371, %for.end.265
  %100 = load %union.rec*, %union.rec** %link, align 8
  %101 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp267 = icmp ne %union.rec* %100, %101
  br i1 %cmp267, label %while.body.269, label %while.end.372

while.body.269:                                   ; preds = %while.cond.266
  %102 = load i32, i32* %ylen, align 4
  %cmp270 = icmp sge i32 %102, 32
  br i1 %cmp270, label %if.then.272, label %if.end.277

if.then.272:                                      ; preds = %while.body.269
  %103 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1273 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 1
  %ofpos275 = bitcast %union.FIRST_UNION* %ou1274 to %struct.FILE_POS*
  %call276 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 7, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 31)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.272, %while.body.269
  %104 = load %union.rec*, %union.rec** %z, align 8
  %105 = load i32, i32* %ylen, align 4
  %idxprom278 = sext i32 %105 to i64
  %arrayidx279 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom278
  store %union.rec* %104, %union.rec** %arrayidx279, align 8
  %106 = load %union.rec*, %union.rec** %g, align 8
  %107 = load i32, i32* %ylen, align 4
  %idxprom280 = sext i32 %107 to i64
  %arrayidx281 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ygaps, i32 0, i64 %idxprom280
  store %union.rec* %106, %union.rec** %arrayidx281, align 8
  %108 = load i32, i32* %ylen, align 4
  %inc282 = add nsw i32 %108, 1
  store i32 %inc282, i32* %ylen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %109 = load %union.rec*, %union.rec** %link, align 8
  %os1283 = bitcast %union.rec* %109 to %struct.word_type*
  %olist284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist284, i32 0, i64 0
  %osucc286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx285, i32 0, i32 1
  %110 = load %union.rec*, %union.rec** %osucc286, align 8
  store %union.rec* %110, %union.rec** %link, align 8
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.366, %if.end.277
  %111 = load %union.rec*, %union.rec** %link, align 8
  %112 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp288 = icmp ne %union.rec* %111, %112
  br i1 %cmp288, label %for.body.290, label %for.end.371

for.body.290:                                     ; preds = %for.cond.287
  %113 = load %union.rec*, %union.rec** %link, align 8
  %os1291 = bitcast %union.rec* %113 to %struct.word_type*
  %olist292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1291, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist292, i32 0, i64 1
  %opred294 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx293, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred294, align 8
  store %union.rec* %114, %union.rec** %z, align 8
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.304, %for.body.290
  %115 = load %union.rec*, %union.rec** %z, align 8
  %os1296 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 1
  %os11298 = bitcast %union.FIRST_UNION* %ou1297 to %struct.anon*
  %otype299 = getelementptr inbounds %struct.anon, %struct.anon* %os11298, i32 0, i32 0
  %116 = load i8, i8* %otype299, align 1
  %conv300 = zext i8 %116 to i32
  %cmp301 = icmp eq i32 %conv300, 0
  br i1 %cmp301, label %for.body.303, label %for.end.309

for.body.303:                                     ; preds = %for.cond.295
  br label %for.inc.304

for.inc.304:                                      ; preds = %for.body.303
  %117 = load %union.rec*, %union.rec** %z, align 8
  %os1305 = bitcast %union.rec* %117 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 1
  %opred308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred308, align 8
  store %union.rec* %118, %union.rec** %z, align 8
  br label %for.cond.295

for.end.309:                                      ; preds = %for.cond.295
  %119 = load %union.rec*, %union.rec** %z, align 8
  %os1310 = bitcast %union.rec* %119 to %struct.word_type*
  %ou1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1310, i32 0, i32 1
  %os11312 = bitcast %union.FIRST_UNION* %ou1311 to %struct.anon*
  %otype313 = getelementptr inbounds %struct.anon, %struct.anon* %os11312, i32 0, i32 0
  %120 = load i8, i8* %otype313, align 1
  %conv314 = zext i8 %120 to i32
  %cmp315 = icmp eq i32 %conv314, 1
  br i1 %cmp315, label %if.then.317, label %if.else.329

if.then.317:                                      ; preds = %for.end.309
  %121 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %121, %union.rec** %g, align 8
  %122 = load i32, i32* %jn, align 4
  %tobool318 = icmp ne i32 %122, 0
  br i1 %tobool318, label %land.rhs.319, label %land.end.327

land.rhs.319:                                     ; preds = %if.then.317
  %123 = load %union.rec*, %union.rec** %z, align 8
  %os5320 = bitcast %union.rec* %123 to %struct.gapobj_type*
  %ogap321 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5320, i32 0, i32 3
  %124 = bitcast %struct.GAP* %ogap321 to i16*
  %bf.load322 = load i16, i16* %124, align 4
  %bf.lshr323 = lshr i16 %bf.load322, 9
  %bf.clear324 = and i16 %bf.lshr323, 1
  %bf.cast325 = zext i16 %bf.clear324 to i32
  %tobool326 = icmp ne i32 %bf.cast325, 0
  br label %land.end.327

land.end.327:                                     ; preds = %land.rhs.319, %if.then.317
  %125 = phi i1 [ false, %if.then.317 ], [ %tobool326, %land.rhs.319 ]
  %land.ext328 = zext i1 %125 to i32
  store i32 %land.ext328, i32* %jn, align 4
  br label %if.end.365

if.else.329:                                      ; preds = %for.end.309
  %126 = load %union.rec*, %union.rec** %z, align 8
  %os1330 = bitcast %union.rec* %126 to %struct.word_type*
  %ou1331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 1
  %os11332 = bitcast %union.FIRST_UNION* %ou1331 to %struct.anon*
  %otype333 = getelementptr inbounds %struct.anon, %struct.anon* %os11332, i32 0, i32 0
  %127 = load i8, i8* %otype333, align 1
  %conv334 = zext i8 %127 to i32
  %cmp335 = icmp eq i32 %conv334, 9
  br i1 %cmp335, label %cond.true.337, label %cond.false.340

cond.true.337:                                    ; preds = %if.else.329
  %128 = load %union.rec*, %union.rec** %z, align 8
  %call338 = call i32 @SplitIsDefinite(%union.rec* %128)
  %tobool339 = icmp ne i32 %call338, 0
  br i1 %tobool339, label %if.then.358, label %if.end.364

cond.false.340:                                   ; preds = %if.else.329
  %129 = load %union.rec*, %union.rec** %z, align 8
  %os1341 = bitcast %union.rec* %129 to %struct.word_type*
  %ou1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1341, i32 0, i32 1
  %os11343 = bitcast %union.FIRST_UNION* %ou1342 to %struct.anon*
  %otype344 = getelementptr inbounds %struct.anon, %struct.anon* %os11343, i32 0, i32 0
  %130 = load i8, i8* %otype344, align 1
  %conv345 = zext i8 %130 to i32
  %cmp346 = icmp sge i32 %conv345, 9
  br i1 %cmp346, label %land.rhs.348, label %land.end.356

land.rhs.348:                                     ; preds = %cond.false.340
  %131 = load %union.rec*, %union.rec** %z, align 8
  %os1349 = bitcast %union.rec* %131 to %struct.word_type*
  %ou1350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1349, i32 0, i32 1
  %os11351 = bitcast %union.FIRST_UNION* %ou1350 to %struct.anon*
  %otype352 = getelementptr inbounds %struct.anon, %struct.anon* %os11351, i32 0, i32 0
  %132 = load i8, i8* %otype352, align 1
  %conv353 = zext i8 %132 to i32
  %cmp354 = icmp sle i32 %conv353, 99
  br label %land.end.356

land.end.356:                                     ; preds = %land.rhs.348, %cond.false.340
  %133 = phi i1 [ false, %cond.false.340 ], [ %cmp354, %land.rhs.348 ]
  br i1 %133, label %if.then.358, label %if.end.364

if.then.358:                                      ; preds = %land.end.356, %cond.true.337
  %134 = load %union.rec*, %union.rec** %g, align 8
  %cmp359 = icmp ne %union.rec* %134, null
  br i1 %cmp359, label %if.end.363, label %if.then.361

if.then.361:                                      ; preds = %if.then.358
  %135 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call362 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.361, %if.then.358
  br label %for.end.371

if.end.364:                                       ; preds = %land.end.356, %cond.true.337
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %land.end.327
  br label %for.inc.366

for.inc.366:                                      ; preds = %if.end.365
  %136 = load %union.rec*, %union.rec** %link, align 8
  %os1367 = bitcast %union.rec* %136 to %struct.word_type*
  %olist368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 0
  %arrayidx369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist368, i32 0, i64 0
  %osucc370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx369, i32 0, i32 1
  %137 = load %union.rec*, %union.rec** %osucc370, align 8
  store %union.rec* %137, %union.rec** %link, align 8
  br label %for.cond.287

for.end.371:                                      ; preds = %if.end.363, %for.cond.287
  br label %while.cond.266

while.end.372:                                    ; preds = %while.cond.266
  %arrayidx373 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 0
  %arrayidx374 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx373, i32 0, i64 0
  store i8 0, i8* %arrayidx374, align 1
  %arrayidx375 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 0
  %arrayidx376 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx375, i32 0, i64 0
  store i8 0, i8* %arrayidx376, align 1
  store i32 1, i32* %xi, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.387, %while.end.372
  %138 = load i32, i32* %xi, align 4
  %139 = load i32, i32* %xlen, align 4
  %cmp378 = icmp slt i32 %138, %139
  br i1 %cmp378, label %for.body.380, label %for.end.389

for.body.380:                                     ; preds = %for.cond.377
  %140 = load i32, i32* %xi, align 4
  %idxprom381 = sext i32 %140 to i64
  %arrayidx382 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom381
  %arrayidx383 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx382, i32 0, i64 0
  store i8 0, i8* %arrayidx383, align 1
  %141 = load i32, i32* %xi, align 4
  %idxprom384 = sext i32 %141 to i64
  %arrayidx385 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom384
  %arrayidx386 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx385, i32 0, i64 0
  store i8 1, i8* %arrayidx386, align 1
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.body.380
  %142 = load i32, i32* %xi, align 4
  %inc388 = add nsw i32 %142, 1
  store i32 %inc388, i32* %xi, align 4
  br label %for.cond.377

for.end.389:                                      ; preds = %for.cond.377
  store i32 1, i32* %yi, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.400, %for.end.389
  %143 = load i32, i32* %yi, align 4
  %144 = load i32, i32* %ylen, align 4
  %cmp391 = icmp slt i32 %143, %144
  br i1 %cmp391, label %for.body.393, label %for.end.402

for.body.393:                                     ; preds = %for.cond.390
  %145 = load i32, i32* %yi, align 4
  %idxprom394 = sext i32 %145 to i64
  %arrayidx395 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 0
  %arrayidx396 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx395, i32 0, i64 %idxprom394
  store i8 0, i8* %arrayidx396, align 1
  %146 = load i32, i32* %yi, align 4
  %idxprom397 = sext i32 %146 to i64
  %arrayidx398 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 0
  %arrayidx399 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx398, i32 0, i64 %idxprom397
  store i8 2, i8* %arrayidx399, align 1
  br label %for.inc.400

for.inc.400:                                      ; preds = %for.body.393
  %147 = load i32, i32* %yi, align 4
  %inc401 = add nsw i32 %147, 1
  store i32 %inc401, i32* %yi, align 4
  br label %for.cond.390

for.end.402:                                      ; preds = %for.cond.390
  store i32 1, i32* %xi, align 4
  br label %for.cond.403

for.cond.403:                                     ; preds = %for.inc.546, %for.end.402
  %148 = load i32, i32* %xi, align 4
  %149 = load i32, i32* %xlen, align 4
  %cmp404 = icmp slt i32 %148, %149
  br i1 %cmp404, label %for.body.406, label %for.end.548

for.body.406:                                     ; preds = %for.cond.403
  store i32 1, i32* %yi, align 4
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.543, %for.body.406
  %150 = load i32, i32* %yi, align 4
  %151 = load i32, i32* %ylen, align 4
  %cmp408 = icmp slt i32 %150, %151
  br i1 %cmp408, label %for.body.410, label %for.end.545

for.body.410:                                     ; preds = %for.cond.407
  %152 = load i32, i32* %xi, align 4
  %idxprom411 = sext i32 %152 to i64
  %arrayidx412 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom411
  %153 = load %union.rec*, %union.rec** %arrayidx412, align 8
  %os1413 = bitcast %union.rec* %153 to %struct.word_type*
  %ou1414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1413, i32 0, i32 1
  %os11415 = bitcast %union.FIRST_UNION* %ou1414 to %struct.anon*
  %otype416 = getelementptr inbounds %struct.anon, %struct.anon* %os11415, i32 0, i32 0
  %154 = load i8, i8* %otype416, align 1
  %conv417 = zext i8 %154 to i32
  %cmp418 = icmp eq i32 %conv417, 11
  br i1 %cmp418, label %if.then.429, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.410
  %155 = load i32, i32* %xi, align 4
  %idxprom420 = sext i32 %155 to i64
  %arrayidx421 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom420
  %156 = load %union.rec*, %union.rec** %arrayidx421, align 8
  %os1422 = bitcast %union.rec* %156 to %struct.word_type*
  %ou1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 1
  %os11424 = bitcast %union.FIRST_UNION* %ou1423 to %struct.anon*
  %otype425 = getelementptr inbounds %struct.anon, %struct.anon* %os11424, i32 0, i32 0
  %157 = load i8, i8* %otype425, align 1
  %conv426 = zext i8 %157 to i32
  %cmp427 = icmp eq i32 %conv426, 12
  br i1 %cmp427, label %if.then.429, label %if.else.463

if.then.429:                                      ; preds = %lor.lhs.false, %for.body.410
  %158 = load i32, i32* %yi, align 4
  %idxprom430 = sext i32 %158 to i64
  %arrayidx431 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom430
  %159 = load %union.rec*, %union.rec** %arrayidx431, align 8
  %os1432 = bitcast %union.rec* %159 to %struct.word_type*
  %ou1433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 1
  %os11434 = bitcast %union.FIRST_UNION* %ou1433 to %struct.anon*
  %otype435 = getelementptr inbounds %struct.anon, %struct.anon* %os11434, i32 0, i32 0
  %160 = load i8, i8* %otype435, align 1
  %conv436 = zext i8 %160 to i32
  %cmp437 = icmp eq i32 %conv436, 11
  br i1 %cmp437, label %land.rhs.449, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %if.then.429
  %161 = load i32, i32* %yi, align 4
  %idxprom440 = sext i32 %161 to i64
  %arrayidx441 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom440
  %162 = load %union.rec*, %union.rec** %arrayidx441, align 8
  %os1442 = bitcast %union.rec* %162 to %struct.word_type*
  %ou1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 1
  %os11444 = bitcast %union.FIRST_UNION* %ou1443 to %struct.anon*
  %otype445 = getelementptr inbounds %struct.anon, %struct.anon* %os11444, i32 0, i32 0
  %163 = load i8, i8* %otype445, align 1
  %conv446 = zext i8 %163 to i32
  %cmp447 = icmp eq i32 %conv446, 12
  br i1 %cmp447, label %land.rhs.449, label %land.end.461

land.rhs.449:                                     ; preds = %lor.lhs.false.439, %if.then.429
  %164 = load i32, i32* %xi, align 4
  %idxprom450 = sext i32 %164 to i64
  %arrayidx451 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom450
  %165 = load %union.rec*, %union.rec** %arrayidx451, align 8
  %os1452 = bitcast %union.rec* %165 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %166 = load i32, i32* %yi, align 4
  %idxprom453 = sext i32 %166 to i64
  %arrayidx454 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom453
  %167 = load %union.rec*, %union.rec** %arrayidx454, align 8
  %os1455 = bitcast %union.rec* %167 to %struct.word_type*
  %ostring456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 4
  %arraydecay457 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring456, i32 0, i32 0
  %call458 = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay457) #4
  %cmp459 = icmp eq i32 %call458, 0
  br label %land.end.461

land.end.461:                                     ; preds = %land.rhs.449, %lor.lhs.false.439
  %168 = phi i1 [ false, %lor.lhs.false.439 ], [ %cmp459, %land.rhs.449 ]
  %land.ext462 = zext i1 %168 to i32
  store i32 %land.ext462, i32* %is_equal, align 4
  br label %if.end.480

if.else.463:                                      ; preds = %lor.lhs.false
  %169 = load i32, i32* %xi, align 4
  %idxprom464 = sext i32 %169 to i64
  %arrayidx465 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom464
  %170 = load %union.rec*, %union.rec** %arrayidx465, align 8
  %os1466 = bitcast %union.rec* %170 to %struct.word_type*
  %ou1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 1
  %os11468 = bitcast %union.FIRST_UNION* %ou1467 to %struct.anon*
  %otype469 = getelementptr inbounds %struct.anon, %struct.anon* %os11468, i32 0, i32 0
  %171 = load i8, i8* %otype469, align 1
  %conv470 = zext i8 %171 to i32
  %172 = load i32, i32* %yi, align 4
  %idxprom471 = sext i32 %172 to i64
  %arrayidx472 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom471
  %173 = load %union.rec*, %union.rec** %arrayidx472, align 8
  %os1473 = bitcast %union.rec* %173 to %struct.word_type*
  %ou1474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 1
  %os11475 = bitcast %union.FIRST_UNION* %ou1474 to %struct.anon*
  %otype476 = getelementptr inbounds %struct.anon, %struct.anon* %os11475, i32 0, i32 0
  %174 = load i8, i8* %otype476, align 1
  %conv477 = zext i8 %174 to i32
  %cmp478 = icmp eq i32 %conv470, %conv477
  %conv479 = zext i1 %cmp478 to i32
  store i32 %conv479, i32* %is_equal, align 4
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.463, %land.end.461
  %175 = load i32, i32* %is_equal, align 4
  %tobool481 = icmp ne i32 %175, 0
  br i1 %tobool481, label %if.then.482, label %if.else.498

if.then.482:                                      ; preds = %if.end.480
  %176 = load i32, i32* %yi, align 4
  %sub = sub nsw i32 %176, 1
  %idxprom483 = sext i32 %sub to i64
  %177 = load i32, i32* %xi, align 4
  %sub484 = sub nsw i32 %177, 1
  %idxprom485 = sext i32 %sub484 to i64
  %arrayidx486 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom485
  %arrayidx487 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx486, i32 0, i64 %idxprom483
  %178 = load i8, i8* %arrayidx487, align 1
  %conv488 = sext i8 %178 to i32
  %add = add nsw i32 1, %conv488
  %conv489 = trunc i32 %add to i8
  %179 = load i32, i32* %yi, align 4
  %idxprom490 = sext i32 %179 to i64
  %180 = load i32, i32* %xi, align 4
  %idxprom491 = sext i32 %180 to i64
  %arrayidx492 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom491
  %arrayidx493 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx492, i32 0, i64 %idxprom490
  store i8 %conv489, i8* %arrayidx493, align 1
  %181 = load i32, i32* %yi, align 4
  %idxprom494 = sext i32 %181 to i64
  %182 = load i32, i32* %xi, align 4
  %idxprom495 = sext i32 %182 to i64
  %arrayidx496 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom495
  %arrayidx497 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx496, i32 0, i64 %idxprom494
  store i8 3, i8* %arrayidx497, align 1
  br label %if.end.542

if.else.498:                                      ; preds = %if.end.480
  %183 = load i32, i32* %yi, align 4
  %idxprom499 = sext i32 %183 to i64
  %184 = load i32, i32* %xi, align 4
  %sub500 = sub nsw i32 %184, 1
  %idxprom501 = sext i32 %sub500 to i64
  %arrayidx502 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom501
  %arrayidx503 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx502, i32 0, i64 %idxprom499
  %185 = load i8, i8* %arrayidx503, align 1
  %conv504 = sext i8 %185 to i32
  %186 = load i32, i32* %yi, align 4
  %sub505 = sub nsw i32 %186, 1
  %idxprom506 = sext i32 %sub505 to i64
  %187 = load i32, i32* %xi, align 4
  %idxprom507 = sext i32 %187 to i64
  %arrayidx508 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom507
  %arrayidx509 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx508, i32 0, i64 %idxprom506
  %188 = load i8, i8* %arrayidx509, align 1
  %conv510 = sext i8 %188 to i32
  %cmp511 = icmp sgt i32 %conv504, %conv510
  br i1 %cmp511, label %if.then.513, label %if.else.527

if.then.513:                                      ; preds = %if.else.498
  %189 = load i32, i32* %yi, align 4
  %idxprom514 = sext i32 %189 to i64
  %190 = load i32, i32* %xi, align 4
  %sub515 = sub nsw i32 %190, 1
  %idxprom516 = sext i32 %sub515 to i64
  %arrayidx517 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom516
  %arrayidx518 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx517, i32 0, i64 %idxprom514
  %191 = load i8, i8* %arrayidx518, align 1
  %192 = load i32, i32* %yi, align 4
  %idxprom519 = sext i32 %192 to i64
  %193 = load i32, i32* %xi, align 4
  %idxprom520 = sext i32 %193 to i64
  %arrayidx521 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom520
  %arrayidx522 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx521, i32 0, i64 %idxprom519
  store i8 %191, i8* %arrayidx522, align 1
  %194 = load i32, i32* %yi, align 4
  %idxprom523 = sext i32 %194 to i64
  %195 = load i32, i32* %xi, align 4
  %idxprom524 = sext i32 %195 to i64
  %arrayidx525 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom524
  %arrayidx526 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx525, i32 0, i64 %idxprom523
  store i8 1, i8* %arrayidx526, align 1
  br label %if.end.541

if.else.527:                                      ; preds = %if.else.498
  %196 = load i32, i32* %yi, align 4
  %sub528 = sub nsw i32 %196, 1
  %idxprom529 = sext i32 %sub528 to i64
  %197 = load i32, i32* %xi, align 4
  %idxprom530 = sext i32 %197 to i64
  %arrayidx531 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom530
  %arrayidx532 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx531, i32 0, i64 %idxprom529
  %198 = load i8, i8* %arrayidx532, align 1
  %199 = load i32, i32* %yi, align 4
  %idxprom533 = sext i32 %199 to i64
  %200 = load i32, i32* %xi, align 4
  %idxprom534 = sext i32 %200 to i64
  %arrayidx535 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %idxprom534
  %arrayidx536 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx535, i32 0, i64 %idxprom533
  store i8 %198, i8* %arrayidx536, align 1
  %201 = load i32, i32* %yi, align 4
  %idxprom537 = sext i32 %201 to i64
  %202 = load i32, i32* %xi, align 4
  %idxprom538 = sext i32 %202 to i64
  %arrayidx539 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom538
  %arrayidx540 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx539, i32 0, i64 %idxprom537
  store i8 2, i8* %arrayidx540, align 1
  br label %if.end.541

if.end.541:                                       ; preds = %if.else.527, %if.then.513
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.541, %if.then.482
  br label %for.inc.543

for.inc.543:                                      ; preds = %if.end.542
  %203 = load i32, i32* %yi, align 4
  %inc544 = add nsw i32 %203, 1
  store i32 %inc544, i32* %yi, align 4
  br label %for.cond.407

for.end.545:                                      ; preds = %for.cond.407
  br label %for.inc.546

for.inc.546:                                      ; preds = %for.end.545
  %204 = load i32, i32* %xi, align 4
  %inc547 = add nsw i32 %204, 1
  store i32 %inc547, i32* %xi, align 4
  br label %for.cond.403

for.end.548:                                      ; preds = %for.cond.403
  %205 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv549 = zext i8 %205 to i32
  store i32 %conv549, i32* @zz_size, align 4
  %conv550 = sext i32 %conv549 to i64
  %cmp551 = icmp uge i64 %conv550, 265
  br i1 %cmp551, label %if.then.553, label %if.else.555

if.then.553:                                      ; preds = %for.end.548
  %206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call554 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %206)
  br label %if.end.572

if.else.555:                                      ; preds = %for.end.548
  %207 = load i32, i32* @zz_size, align 4
  %idxprom556 = sext i32 %207 to i64
  %arrayidx557 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom556
  %208 = load %union.rec*, %union.rec** %arrayidx557, align 8
  %cmp558 = icmp eq %union.rec* %208, null
  br i1 %cmp558, label %if.then.560, label %if.else.562

if.then.560:                                      ; preds = %if.else.555
  %209 = load i32, i32* @zz_size, align 4
  %210 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call561 = call %union.rec* @GetMemory(i32 %209, %struct.FILE_POS* %210)
  store %union.rec* %call561, %union.rec** @zz_hold, align 8
  br label %if.end.571

if.else.562:                                      ; preds = %if.else.555
  %211 = load i32, i32* @zz_size, align 4
  %idxprom563 = sext i32 %211 to i64
  %arrayidx564 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom563
  %212 = load %union.rec*, %union.rec** %arrayidx564, align 8
  store %union.rec* %212, %union.rec** @zz_hold, align 8
  store %union.rec* %212, %union.rec** @zz_hold, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %213 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 0
  %opred568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %opred568, align 8
  %215 = load i32, i32* @zz_size, align 4
  %idxprom569 = sext i32 %215 to i64
  %arrayidx570 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom569
  store %union.rec* %214, %union.rec** %arrayidx570, align 8
  br label %if.end.571

if.end.571:                                       ; preds = %if.else.562, %if.then.560
  br label %if.end.572

if.end.572:                                       ; preds = %if.end.571, %if.then.553
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %216 to %struct.word_type*
  %ou1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 1
  %os11575 = bitcast %union.FIRST_UNION* %ou1574 to %struct.anon*
  %otype576 = getelementptr inbounds %struct.anon, %struct.anon* %os11575, i32 0, i32 0
  store i8 17, i8* %otype576, align 1
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1577 = bitcast %union.rec* %218 to %struct.word_type*
  %olist578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist578, i32 0, i64 1
  %osucc580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx579, i32 0, i32 1
  store %union.rec* %217, %union.rec** %osucc580, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1581 = bitcast %union.rec* %219 to %struct.word_type*
  %olist582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist582, i32 0, i64 1
  %opred584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx583, i32 0, i32 0
  store %union.rec* %217, %union.rec** %opred584, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1585 = bitcast %union.rec* %220 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 0
  %osucc588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 1
  store %union.rec* %217, %union.rec** %osucc588, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1589 = bitcast %union.rec* %221 to %struct.word_type*
  %olist590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 0
  %arrayidx591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist590, i32 0, i64 0
  %opred592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx591, i32 0, i32 0
  store %union.rec* %217, %union.rec** %opred592, align 8
  store %union.rec* %217, %union.rec** %res, align 8
  %222 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %222 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %223 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load593 = load i16, i16* %223, align 4
  %bf.lshr594 = lshr i16 %bf.load593, 7
  %bf.clear595 = and i16 %bf.lshr594, 1
  %bf.cast596 = zext i16 %bf.clear595 to i32
  %224 = load %union.rec*, %union.rec** %res, align 8
  %os2597 = bitcast %union.rec* %224 to %struct.closure_type*
  %ou4598 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2597, i32 0, i32 4
  %osave_style599 = bitcast %union.FOURTH_UNION* %ou4598 to %struct.STYLE*
  %osu1600 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style599, i32 0, i32 0
  %oline_gap601 = bitcast %union.anon* %osu1600 to %struct.GAP*
  %225 = bitcast %struct.GAP* %oline_gap601 to i16*
  %226 = trunc i32 %bf.cast596 to i16
  %bf.load602 = load i16, i16* %225, align 4
  %bf.value = and i16 %226, 1
  %bf.shl = shl i16 %bf.value, 7
  %bf.clear603 = and i16 %bf.load602, -129
  %bf.set = or i16 %bf.clear603, %bf.shl
  store i16 %bf.set, i16* %225, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %227 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2604 = bitcast %union.rec* %227 to %struct.closure_type*
  %ou4605 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2604, i32 0, i32 4
  %osave_style606 = bitcast %union.FOURTH_UNION* %ou4605 to %struct.STYLE*
  %osu1607 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style606, i32 0, i32 0
  %oline_gap608 = bitcast %union.anon* %osu1607 to %struct.GAP*
  %228 = bitcast %struct.GAP* %oline_gap608 to i16*
  %bf.load609 = load i16, i16* %228, align 4
  %bf.lshr610 = lshr i16 %bf.load609, 8
  %bf.clear611 = and i16 %bf.lshr610, 1
  %bf.cast612 = zext i16 %bf.clear611 to i32
  %229 = load %union.rec*, %union.rec** %res, align 8
  %os2613 = bitcast %union.rec* %229 to %struct.closure_type*
  %ou4614 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2613, i32 0, i32 4
  %osave_style615 = bitcast %union.FOURTH_UNION* %ou4614 to %struct.STYLE*
  %osu1616 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style615, i32 0, i32 0
  %oline_gap617 = bitcast %union.anon* %osu1616 to %struct.GAP*
  %230 = bitcast %struct.GAP* %oline_gap617 to i16*
  %231 = trunc i32 %bf.cast612 to i16
  %bf.load618 = load i16, i16* %230, align 4
  %bf.value619 = and i16 %231, 1
  %bf.shl620 = shl i16 %bf.value619, 8
  %bf.clear621 = and i16 %bf.load618, -257
  %bf.set622 = or i16 %bf.clear621, %bf.shl620
  store i16 %bf.set622, i16* %230, align 4
  %bf.result.cast623 = zext i16 %bf.value619 to i32
  %232 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2624 = bitcast %union.rec* %232 to %struct.closure_type*
  %ou4625 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2624, i32 0, i32 4
  %osave_style626 = bitcast %union.FOURTH_UNION* %ou4625 to %struct.STYLE*
  %osu1627 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style626, i32 0, i32 0
  %oline_gap628 = bitcast %union.anon* %osu1627 to %struct.GAP*
  %233 = bitcast %struct.GAP* %oline_gap628 to i16*
  %bf.load629 = load i16, i16* %233, align 4
  %bf.lshr630 = lshr i16 %bf.load629, 9
  %bf.clear631 = and i16 %bf.lshr630, 1
  %bf.cast632 = zext i16 %bf.clear631 to i32
  %234 = load %union.rec*, %union.rec** %res, align 8
  %os2633 = bitcast %union.rec* %234 to %struct.closure_type*
  %ou4634 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2633, i32 0, i32 4
  %osave_style635 = bitcast %union.FOURTH_UNION* %ou4634 to %struct.STYLE*
  %osu1636 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style635, i32 0, i32 0
  %oline_gap637 = bitcast %union.anon* %osu1636 to %struct.GAP*
  %235 = bitcast %struct.GAP* %oline_gap637 to i16*
  %236 = trunc i32 %bf.cast632 to i16
  %bf.load638 = load i16, i16* %235, align 4
  %bf.value639 = and i16 %236, 1
  %bf.shl640 = shl i16 %bf.value639, 9
  %bf.clear641 = and i16 %bf.load638, -513
  %bf.set642 = or i16 %bf.clear641, %bf.shl640
  store i16 %bf.set642, i16* %235, align 4
  %bf.result.cast643 = zext i16 %bf.value639 to i32
  %237 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2644 = bitcast %union.rec* %237 to %struct.closure_type*
  %ou4645 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2644, i32 0, i32 4
  %osave_style646 = bitcast %union.FOURTH_UNION* %ou4645 to %struct.STYLE*
  %osu1647 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style646, i32 0, i32 0
  %oline_gap648 = bitcast %union.anon* %osu1647 to %struct.GAP*
  %238 = bitcast %struct.GAP* %oline_gap648 to i16*
  %bf.load649 = load i16, i16* %238, align 4
  %bf.lshr650 = lshr i16 %bf.load649, 10
  %bf.clear651 = and i16 %bf.lshr650, 7
  %bf.cast652 = zext i16 %bf.clear651 to i32
  %239 = load %union.rec*, %union.rec** %res, align 8
  %os2653 = bitcast %union.rec* %239 to %struct.closure_type*
  %ou4654 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2653, i32 0, i32 4
  %osave_style655 = bitcast %union.FOURTH_UNION* %ou4654 to %struct.STYLE*
  %osu1656 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style655, i32 0, i32 0
  %oline_gap657 = bitcast %union.anon* %osu1656 to %struct.GAP*
  %240 = bitcast %struct.GAP* %oline_gap657 to i16*
  %241 = trunc i32 %bf.cast652 to i16
  %bf.load658 = load i16, i16* %240, align 4
  %bf.value659 = and i16 %241, 7
  %bf.shl660 = shl i16 %bf.value659, 10
  %bf.clear661 = and i16 %bf.load658, -7169
  %bf.set662 = or i16 %bf.clear661, %bf.shl660
  store i16 %bf.set662, i16* %240, align 4
  %bf.result.cast663 = zext i16 %bf.value659 to i32
  %242 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2664 = bitcast %union.rec* %242 to %struct.closure_type*
  %ou4665 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2664, i32 0, i32 4
  %osave_style666 = bitcast %union.FOURTH_UNION* %ou4665 to %struct.STYLE*
  %osu1667 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style666, i32 0, i32 0
  %oline_gap668 = bitcast %union.anon* %osu1667 to %struct.GAP*
  %243 = bitcast %struct.GAP* %oline_gap668 to i16*
  %bf.load669 = load i16, i16* %243, align 4
  %bf.lshr670 = lshr i16 %bf.load669, 13
  %bf.cast671 = zext i16 %bf.lshr670 to i32
  %244 = load %union.rec*, %union.rec** %res, align 8
  %os2672 = bitcast %union.rec* %244 to %struct.closure_type*
  %ou4673 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2672, i32 0, i32 4
  %osave_style674 = bitcast %union.FOURTH_UNION* %ou4673 to %struct.STYLE*
  %osu1675 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style674, i32 0, i32 0
  %oline_gap676 = bitcast %union.anon* %osu1675 to %struct.GAP*
  %245 = bitcast %struct.GAP* %oline_gap676 to i16*
  %246 = trunc i32 %bf.cast671 to i16
  %bf.load677 = load i16, i16* %245, align 4
  %bf.value678 = and i16 %246, 7
  %bf.shl679 = shl i16 %bf.value678, 13
  %bf.clear680 = and i16 %bf.load677, 8191
  %bf.set681 = or i16 %bf.clear680, %bf.shl679
  store i16 %bf.set681, i16* %245, align 4
  %bf.result.cast682 = zext i16 %bf.value678 to i32
  %247 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2683 = bitcast %union.rec* %247 to %struct.closure_type*
  %ou4684 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2683, i32 0, i32 4
  %osave_style685 = bitcast %union.FOURTH_UNION* %ou4684 to %struct.STYLE*
  %osu1686 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style685, i32 0, i32 0
  %oline_gap687 = bitcast %union.anon* %osu1686 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap687, i32 0, i32 1
  %248 = load i16, i16* %owidth, align 2
  %249 = load %union.rec*, %union.rec** %res, align 8
  %os2688 = bitcast %union.rec* %249 to %struct.closure_type*
  %ou4689 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2688, i32 0, i32 4
  %osave_style690 = bitcast %union.FOURTH_UNION* %ou4689 to %struct.STYLE*
  %osu1691 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style690, i32 0, i32 0
  %oline_gap692 = bitcast %union.anon* %osu1691 to %struct.GAP*
  %owidth693 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap692, i32 0, i32 1
  store i16 %248, i16* %owidth693, align 2
  %250 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2694 = bitcast %union.rec* %250 to %struct.closure_type*
  %ou4695 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2694, i32 0, i32 4
  %osave_style696 = bitcast %union.FOURTH_UNION* %ou4695 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style696, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %251 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load697 = load i8, i8* %251, align 4
  %bf.clear698 = and i8 %bf.load697, 3
  %bf.cast699 = zext i8 %bf.clear698 to i32
  %252 = load %union.rec*, %union.rec** %res, align 8
  %os2700 = bitcast %union.rec* %252 to %struct.closure_type*
  %ou4701 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2700, i32 0, i32 4
  %osave_style702 = bitcast %union.FOURTH_UNION* %ou4701 to %struct.STYLE*
  %osu2703 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style702, i32 0, i32 1
  %oss2704 = bitcast %union.anon.10* %osu2703 to %struct.anon.11*
  %253 = bitcast %struct.anon.11* %oss2704 to i8*
  %254 = trunc i32 %bf.cast699 to i8
  %bf.load705 = load i8, i8* %253, align 4
  %bf.value706 = and i8 %254, 3
  %bf.clear707 = and i8 %bf.load705, -4
  %bf.set708 = or i8 %bf.clear707, %bf.value706
  store i8 %bf.set708, i8* %253, align 4
  %bf.result.cast709 = zext i8 %bf.value706 to i32
  %255 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2710 = bitcast %union.rec* %255 to %struct.closure_type*
  %ou4711 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2710, i32 0, i32 4
  %osave_style712 = bitcast %union.FOURTH_UNION* %ou4711 to %struct.STYLE*
  %osu2713 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style712, i32 0, i32 1
  %oss2714 = bitcast %union.anon.10* %osu2713 to %struct.anon.11*
  %256 = bitcast %struct.anon.11* %oss2714 to i8*
  %bf.load715 = load i8, i8* %256, align 4
  %bf.lshr716 = lshr i8 %bf.load715, 2
  %bf.clear717 = and i8 %bf.lshr716, 3
  %bf.cast718 = zext i8 %bf.clear717 to i32
  %257 = load %union.rec*, %union.rec** %res, align 8
  %os2719 = bitcast %union.rec* %257 to %struct.closure_type*
  %ou4720 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2719, i32 0, i32 4
  %osave_style721 = bitcast %union.FOURTH_UNION* %ou4720 to %struct.STYLE*
  %osu2722 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style721, i32 0, i32 1
  %oss2723 = bitcast %union.anon.10* %osu2722 to %struct.anon.11*
  %258 = bitcast %struct.anon.11* %oss2723 to i8*
  %259 = trunc i32 %bf.cast718 to i8
  %bf.load724 = load i8, i8* %258, align 4
  %bf.value725 = and i8 %259, 3
  %bf.shl726 = shl i8 %bf.value725, 2
  %bf.clear727 = and i8 %bf.load724, -13
  %bf.set728 = or i8 %bf.clear727, %bf.shl726
  store i8 %bf.set728, i8* %258, align 4
  %bf.result.cast729 = zext i8 %bf.value725 to i32
  %260 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2730 = bitcast %union.rec* %260 to %struct.closure_type*
  %ou4731 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2730, i32 0, i32 4
  %osave_style732 = bitcast %union.FOURTH_UNION* %ou4731 to %struct.STYLE*
  %osu2733 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style732, i32 0, i32 1
  %oss2734 = bitcast %union.anon.10* %osu2733 to %struct.anon.11*
  %261 = bitcast %struct.anon.11* %oss2734 to i8*
  %bf.load735 = load i8, i8* %261, align 4
  %bf.lshr736 = lshr i8 %bf.load735, 4
  %bf.clear737 = and i8 %bf.lshr736, 7
  %bf.cast738 = zext i8 %bf.clear737 to i32
  %262 = load %union.rec*, %union.rec** %res, align 8
  %os2739 = bitcast %union.rec* %262 to %struct.closure_type*
  %ou4740 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2739, i32 0, i32 4
  %osave_style741 = bitcast %union.FOURTH_UNION* %ou4740 to %struct.STYLE*
  %osu2742 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style741, i32 0, i32 1
  %oss2743 = bitcast %union.anon.10* %osu2742 to %struct.anon.11*
  %263 = bitcast %struct.anon.11* %oss2743 to i8*
  %264 = trunc i32 %bf.cast738 to i8
  %bf.load744 = load i8, i8* %263, align 4
  %bf.value745 = and i8 %264, 7
  %bf.shl746 = shl i8 %bf.value745, 4
  %bf.clear747 = and i8 %bf.load744, -113
  %bf.set748 = or i8 %bf.clear747, %bf.shl746
  store i8 %bf.set748, i8* %263, align 4
  %bf.result.cast749 = zext i8 %bf.value745 to i32
  %265 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2750 = bitcast %union.rec* %265 to %struct.closure_type*
  %ou4751 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2750, i32 0, i32 4
  %osave_style752 = bitcast %union.FOURTH_UNION* %ou4751 to %struct.STYLE*
  %osu1753 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style752, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu1753 to %struct.anon.9*
  %266 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load754 = load i8, i8* %266, align 4
  %bf.lshr755 = lshr i8 %bf.load754, 3
  %bf.clear756 = and i8 %bf.lshr755, 1
  %bf.cast757 = zext i8 %bf.clear756 to i32
  %267 = load %union.rec*, %union.rec** %res, align 8
  %os2758 = bitcast %union.rec* %267 to %struct.closure_type*
  %ou4759 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2758, i32 0, i32 4
  %osave_style760 = bitcast %union.FOURTH_UNION* %ou4759 to %struct.STYLE*
  %osu1761 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style760, i32 0, i32 0
  %oss1762 = bitcast %union.anon* %osu1761 to %struct.anon.9*
  %268 = bitcast %struct.anon.9* %oss1762 to i8*
  %269 = trunc i32 %bf.cast757 to i8
  %bf.load763 = load i8, i8* %268, align 4
  %bf.value764 = and i8 %269, 1
  %bf.shl765 = shl i8 %bf.value764, 3
  %bf.clear766 = and i8 %bf.load763, -9
  %bf.set767 = or i8 %bf.clear766, %bf.shl765
  store i8 %bf.set767, i8* %268, align 4
  %bf.result.cast768 = zext i8 %bf.value764 to i32
  %270 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2769 = bitcast %union.rec* %270 to %struct.closure_type*
  %ou4770 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2769, i32 0, i32 4
  %osave_style771 = bitcast %union.FOURTH_UNION* %ou4770 to %struct.STYLE*
  %osu2772 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style771, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2772 to %struct.GAP*
  %271 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load773 = load i16, i16* %271, align 4
  %bf.lshr774 = lshr i16 %bf.load773, 7
  %bf.clear775 = and i16 %bf.lshr774, 1
  %bf.cast776 = zext i16 %bf.clear775 to i32
  %272 = load %union.rec*, %union.rec** %res, align 8
  %os2777 = bitcast %union.rec* %272 to %struct.closure_type*
  %ou4778 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2777, i32 0, i32 4
  %osave_style779 = bitcast %union.FOURTH_UNION* %ou4778 to %struct.STYLE*
  %osu2780 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style779, i32 0, i32 1
  %ospace_gap781 = bitcast %union.anon.10* %osu2780 to %struct.GAP*
  %273 = bitcast %struct.GAP* %ospace_gap781 to i16*
  %274 = trunc i32 %bf.cast776 to i16
  %bf.load782 = load i16, i16* %273, align 4
  %bf.value783 = and i16 %274, 1
  %bf.shl784 = shl i16 %bf.value783, 7
  %bf.clear785 = and i16 %bf.load782, -129
  %bf.set786 = or i16 %bf.clear785, %bf.shl784
  store i16 %bf.set786, i16* %273, align 4
  %bf.result.cast787 = zext i16 %bf.value783 to i32
  %275 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2788 = bitcast %union.rec* %275 to %struct.closure_type*
  %ou4789 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2788, i32 0, i32 4
  %osave_style790 = bitcast %union.FOURTH_UNION* %ou4789 to %struct.STYLE*
  %osu2791 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style790, i32 0, i32 1
  %ospace_gap792 = bitcast %union.anon.10* %osu2791 to %struct.GAP*
  %276 = bitcast %struct.GAP* %ospace_gap792 to i16*
  %bf.load793 = load i16, i16* %276, align 4
  %bf.lshr794 = lshr i16 %bf.load793, 8
  %bf.clear795 = and i16 %bf.lshr794, 1
  %bf.cast796 = zext i16 %bf.clear795 to i32
  %277 = load %union.rec*, %union.rec** %res, align 8
  %os2797 = bitcast %union.rec* %277 to %struct.closure_type*
  %ou4798 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2797, i32 0, i32 4
  %osave_style799 = bitcast %union.FOURTH_UNION* %ou4798 to %struct.STYLE*
  %osu2800 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style799, i32 0, i32 1
  %ospace_gap801 = bitcast %union.anon.10* %osu2800 to %struct.GAP*
  %278 = bitcast %struct.GAP* %ospace_gap801 to i16*
  %279 = trunc i32 %bf.cast796 to i16
  %bf.load802 = load i16, i16* %278, align 4
  %bf.value803 = and i16 %279, 1
  %bf.shl804 = shl i16 %bf.value803, 8
  %bf.clear805 = and i16 %bf.load802, -257
  %bf.set806 = or i16 %bf.clear805, %bf.shl804
  store i16 %bf.set806, i16* %278, align 4
  %bf.result.cast807 = zext i16 %bf.value803 to i32
  %280 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2808 = bitcast %union.rec* %280 to %struct.closure_type*
  %ou4809 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2808, i32 0, i32 4
  %osave_style810 = bitcast %union.FOURTH_UNION* %ou4809 to %struct.STYLE*
  %osu2811 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style810, i32 0, i32 1
  %ospace_gap812 = bitcast %union.anon.10* %osu2811 to %struct.GAP*
  %281 = bitcast %struct.GAP* %ospace_gap812 to i16*
  %bf.load813 = load i16, i16* %281, align 4
  %bf.lshr814 = lshr i16 %bf.load813, 9
  %bf.clear815 = and i16 %bf.lshr814, 1
  %bf.cast816 = zext i16 %bf.clear815 to i32
  %282 = load %union.rec*, %union.rec** %res, align 8
  %os2817 = bitcast %union.rec* %282 to %struct.closure_type*
  %ou4818 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2817, i32 0, i32 4
  %osave_style819 = bitcast %union.FOURTH_UNION* %ou4818 to %struct.STYLE*
  %osu2820 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style819, i32 0, i32 1
  %ospace_gap821 = bitcast %union.anon.10* %osu2820 to %struct.GAP*
  %283 = bitcast %struct.GAP* %ospace_gap821 to i16*
  %284 = trunc i32 %bf.cast816 to i16
  %bf.load822 = load i16, i16* %283, align 4
  %bf.value823 = and i16 %284, 1
  %bf.shl824 = shl i16 %bf.value823, 9
  %bf.clear825 = and i16 %bf.load822, -513
  %bf.set826 = or i16 %bf.clear825, %bf.shl824
  store i16 %bf.set826, i16* %283, align 4
  %bf.result.cast827 = zext i16 %bf.value823 to i32
  %285 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2828 = bitcast %union.rec* %285 to %struct.closure_type*
  %ou4829 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2828, i32 0, i32 4
  %osave_style830 = bitcast %union.FOURTH_UNION* %ou4829 to %struct.STYLE*
  %osu2831 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style830, i32 0, i32 1
  %ospace_gap832 = bitcast %union.anon.10* %osu2831 to %struct.GAP*
  %286 = bitcast %struct.GAP* %ospace_gap832 to i16*
  %bf.load833 = load i16, i16* %286, align 4
  %bf.lshr834 = lshr i16 %bf.load833, 10
  %bf.clear835 = and i16 %bf.lshr834, 7
  %bf.cast836 = zext i16 %bf.clear835 to i32
  %287 = load %union.rec*, %union.rec** %res, align 8
  %os2837 = bitcast %union.rec* %287 to %struct.closure_type*
  %ou4838 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2837, i32 0, i32 4
  %osave_style839 = bitcast %union.FOURTH_UNION* %ou4838 to %struct.STYLE*
  %osu2840 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style839, i32 0, i32 1
  %ospace_gap841 = bitcast %union.anon.10* %osu2840 to %struct.GAP*
  %288 = bitcast %struct.GAP* %ospace_gap841 to i16*
  %289 = trunc i32 %bf.cast836 to i16
  %bf.load842 = load i16, i16* %288, align 4
  %bf.value843 = and i16 %289, 7
  %bf.shl844 = shl i16 %bf.value843, 10
  %bf.clear845 = and i16 %bf.load842, -7169
  %bf.set846 = or i16 %bf.clear845, %bf.shl844
  store i16 %bf.set846, i16* %288, align 4
  %bf.result.cast847 = zext i16 %bf.value843 to i32
  %290 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2848 = bitcast %union.rec* %290 to %struct.closure_type*
  %ou4849 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2848, i32 0, i32 4
  %osave_style850 = bitcast %union.FOURTH_UNION* %ou4849 to %struct.STYLE*
  %osu2851 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style850, i32 0, i32 1
  %ospace_gap852 = bitcast %union.anon.10* %osu2851 to %struct.GAP*
  %291 = bitcast %struct.GAP* %ospace_gap852 to i16*
  %bf.load853 = load i16, i16* %291, align 4
  %bf.lshr854 = lshr i16 %bf.load853, 13
  %bf.cast855 = zext i16 %bf.lshr854 to i32
  %292 = load %union.rec*, %union.rec** %res, align 8
  %os2856 = bitcast %union.rec* %292 to %struct.closure_type*
  %ou4857 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2856, i32 0, i32 4
  %osave_style858 = bitcast %union.FOURTH_UNION* %ou4857 to %struct.STYLE*
  %osu2859 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style858, i32 0, i32 1
  %ospace_gap860 = bitcast %union.anon.10* %osu2859 to %struct.GAP*
  %293 = bitcast %struct.GAP* %ospace_gap860 to i16*
  %294 = trunc i32 %bf.cast855 to i16
  %bf.load861 = load i16, i16* %293, align 4
  %bf.value862 = and i16 %294, 7
  %bf.shl863 = shl i16 %bf.value862, 13
  %bf.clear864 = and i16 %bf.load861, 8191
  %bf.set865 = or i16 %bf.clear864, %bf.shl863
  store i16 %bf.set865, i16* %293, align 4
  %bf.result.cast866 = zext i16 %bf.value862 to i32
  %295 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2867 = bitcast %union.rec* %295 to %struct.closure_type*
  %ou4868 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2867, i32 0, i32 4
  %osave_style869 = bitcast %union.FOURTH_UNION* %ou4868 to %struct.STYLE*
  %osu2870 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style869, i32 0, i32 1
  %ospace_gap871 = bitcast %union.anon.10* %osu2870 to %struct.GAP*
  %owidth872 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap871, i32 0, i32 1
  %296 = load i16, i16* %owidth872, align 2
  %297 = load %union.rec*, %union.rec** %res, align 8
  %os2873 = bitcast %union.rec* %297 to %struct.closure_type*
  %ou4874 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2873, i32 0, i32 4
  %osave_style875 = bitcast %union.FOURTH_UNION* %ou4874 to %struct.STYLE*
  %osu2876 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style875, i32 0, i32 1
  %ospace_gap877 = bitcast %union.anon.10* %osu2876 to %struct.GAP*
  %owidth878 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap877, i32 0, i32 1
  store i16 %296, i16* %owidth878, align 2
  %298 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2879 = bitcast %union.rec* %298 to %struct.closure_type*
  %ou4880 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2879, i32 0, i32 4
  %osave_style881 = bitcast %union.FOURTH_UNION* %ou4880 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style881, i32 0, i32 4
  %bf.load882 = load i32, i32* %ofont, align 4
  %bf.clear883 = and i32 %bf.load882, 4095
  %299 = load %union.rec*, %union.rec** %res, align 8
  %os2884 = bitcast %union.rec* %299 to %struct.closure_type*
  %ou4885 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2884, i32 0, i32 4
  %osave_style886 = bitcast %union.FOURTH_UNION* %ou4885 to %struct.STYLE*
  %ofont887 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style886, i32 0, i32 4
  %bf.load888 = load i32, i32* %ofont887, align 4
  %bf.value889 = and i32 %bf.clear883, 4095
  %bf.clear890 = and i32 %bf.load888, -4096
  %bf.set891 = or i32 %bf.clear890, %bf.value889
  store i32 %bf.set891, i32* %ofont887, align 4
  %300 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2892 = bitcast %union.rec* %300 to %struct.closure_type*
  %ou4893 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2892, i32 0, i32 4
  %osave_style894 = bitcast %union.FOURTH_UNION* %ou4893 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style894, i32 0, i32 4
  %bf.load895 = load i32, i32* %ocolour, align 4
  %bf.lshr896 = lshr i32 %bf.load895, 12
  %bf.clear897 = and i32 %bf.lshr896, 1023
  %301 = load %union.rec*, %union.rec** %res, align 8
  %os2898 = bitcast %union.rec* %301 to %struct.closure_type*
  %ou4899 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2898, i32 0, i32 4
  %osave_style900 = bitcast %union.FOURTH_UNION* %ou4899 to %struct.STYLE*
  %ocolour901 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style900, i32 0, i32 4
  %bf.load902 = load i32, i32* %ocolour901, align 4
  %bf.value903 = and i32 %bf.clear897, 1023
  %bf.shl904 = shl i32 %bf.value903, 12
  %bf.clear905 = and i32 %bf.load902, -4190209
  %bf.set906 = or i32 %bf.clear905, %bf.shl904
  store i32 %bf.set906, i32* %ocolour901, align 4
  %302 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2907 = bitcast %union.rec* %302 to %struct.closure_type*
  %ou4908 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2907, i32 0, i32 4
  %osave_style909 = bitcast %union.FOURTH_UNION* %ou4908 to %struct.STYLE*
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style909, i32 0, i32 4
  %bf.load910 = load i32, i32* %ooutline, align 4
  %bf.lshr911 = lshr i32 %bf.load910, 22
  %bf.clear912 = and i32 %bf.lshr911, 3
  %303 = load %union.rec*, %union.rec** %res, align 8
  %os2913 = bitcast %union.rec* %303 to %struct.closure_type*
  %ou4914 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2913, i32 0, i32 4
  %osave_style915 = bitcast %union.FOURTH_UNION* %ou4914 to %struct.STYLE*
  %ooutline916 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style915, i32 0, i32 4
  %bf.load917 = load i32, i32* %ooutline916, align 4
  %bf.value918 = and i32 %bf.clear912, 3
  %bf.shl919 = shl i32 %bf.value918, 22
  %bf.clear920 = and i32 %bf.load917, -12582913
  %bf.set921 = or i32 %bf.clear920, %bf.shl919
  store i32 %bf.set921, i32* %ooutline916, align 4
  %304 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2922 = bitcast %union.rec* %304 to %struct.closure_type*
  %ou4923 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2922, i32 0, i32 4
  %osave_style924 = bitcast %union.FOURTH_UNION* %ou4923 to %struct.STYLE*
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style924, i32 0, i32 4
  %bf.load925 = load i32, i32* %olanguage, align 4
  %bf.lshr926 = lshr i32 %bf.load925, 24
  %bf.clear927 = and i32 %bf.lshr926, 63
  %305 = load %union.rec*, %union.rec** %res, align 8
  %os2928 = bitcast %union.rec* %305 to %struct.closure_type*
  %ou4929 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2928, i32 0, i32 4
  %osave_style930 = bitcast %union.FOURTH_UNION* %ou4929 to %struct.STYLE*
  %olanguage931 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style930, i32 0, i32 4
  %bf.load932 = load i32, i32* %olanguage931, align 4
  %bf.value933 = and i32 %bf.clear927, 63
  %bf.shl934 = shl i32 %bf.value933, 24
  %bf.clear935 = and i32 %bf.load932, -1056964609
  %bf.set936 = or i32 %bf.clear935, %bf.shl934
  store i32 %bf.set936, i32* %olanguage931, align 4
  %306 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2937 = bitcast %union.rec* %306 to %struct.closure_type*
  %ou4938 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2937, i32 0, i32 4
  %osave_style939 = bitcast %union.FOURTH_UNION* %ou4938 to %struct.STYLE*
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style939, i32 0, i32 4
  %bf.load940 = load i32, i32* %onobreaklast, align 4
  %bf.lshr941 = lshr i32 %bf.load940, 31
  %307 = load %union.rec*, %union.rec** %res, align 8
  %os2942 = bitcast %union.rec* %307 to %struct.closure_type*
  %ou4943 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2942, i32 0, i32 4
  %osave_style944 = bitcast %union.FOURTH_UNION* %ou4943 to %struct.STYLE*
  %onobreaklast945 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style944, i32 0, i32 4
  %bf.load946 = load i32, i32* %onobreaklast945, align 4
  %bf.value947 = and i32 %bf.lshr941, 1
  %bf.shl948 = shl i32 %bf.value947, 31
  %bf.clear949 = and i32 %bf.load946, 2147483647
  %bf.set950 = or i32 %bf.clear949, %bf.shl948
  store i32 %bf.set950, i32* %onobreaklast945, align 4
  %308 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2951 = bitcast %union.rec* %308 to %struct.closure_type*
  %ou4952 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2951, i32 0, i32 4
  %osave_style953 = bitcast %union.FOURTH_UNION* %ou4952 to %struct.STYLE*
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style953, i32 0, i32 4
  %bf.load954 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr955 = lshr i32 %bf.load954, 30
  %bf.clear956 = and i32 %bf.lshr955, 1
  %309 = load %union.rec*, %union.rec** %res, align 8
  %os2957 = bitcast %union.rec* %309 to %struct.closure_type*
  %ou4958 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2957, i32 0, i32 4
  %osave_style959 = bitcast %union.FOURTH_UNION* %ou4958 to %struct.STYLE*
  %onobreakfirst960 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style959, i32 0, i32 4
  %bf.load961 = load i32, i32* %onobreakfirst960, align 4
  %bf.value962 = and i32 %bf.clear956, 1
  %bf.shl963 = shl i32 %bf.value962, 30
  %bf.clear964 = and i32 %bf.load961, -1073741825
  %bf.set965 = or i32 %bf.clear964, %bf.shl963
  store i32 %bf.set965, i32* %onobreakfirst960, align 4
  %310 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2966 = bitcast %union.rec* %310 to %struct.closure_type*
  %ou4967 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2966, i32 0, i32 4
  %osave_style968 = bitcast %union.FOURTH_UNION* %ou4967 to %struct.STYLE*
  %osu1969 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style968, i32 0, i32 0
  %oss1970 = bitcast %union.anon* %osu1969 to %struct.anon.9*
  %311 = bitcast %struct.anon.9* %oss1970 to i8*
  %bf.load971 = load i8, i8* %311, align 4
  %bf.clear972 = and i8 %bf.load971, 1
  %bf.cast973 = zext i8 %bf.clear972 to i32
  %312 = load %union.rec*, %union.rec** %res, align 8
  %os2974 = bitcast %union.rec* %312 to %struct.closure_type*
  %ou4975 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2974, i32 0, i32 4
  %osave_style976 = bitcast %union.FOURTH_UNION* %ou4975 to %struct.STYLE*
  %osu1977 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style976, i32 0, i32 0
  %oss1978 = bitcast %union.anon* %osu1977 to %struct.anon.9*
  %313 = bitcast %struct.anon.9* %oss1978 to i8*
  %314 = trunc i32 %bf.cast973 to i8
  %bf.load979 = load i8, i8* %313, align 4
  %bf.value980 = and i8 %314, 1
  %bf.clear981 = and i8 %bf.load979, -2
  %bf.set982 = or i8 %bf.clear981, %bf.value980
  store i8 %bf.set982, i8* %313, align 4
  %bf.result.cast983 = zext i8 %bf.value980 to i32
  %315 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2984 = bitcast %union.rec* %315 to %struct.closure_type*
  %ou4985 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2984, i32 0, i32 4
  %osave_style986 = bitcast %union.FOURTH_UNION* %ou4985 to %struct.STYLE*
  %osu1987 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style986, i32 0, i32 0
  %oss1988 = bitcast %union.anon* %osu1987 to %struct.anon.9*
  %316 = bitcast %struct.anon.9* %oss1988 to i8*
  %bf.load989 = load i8, i8* %316, align 4
  %bf.lshr990 = lshr i8 %bf.load989, 1
  %bf.clear991 = and i8 %bf.lshr990, 1
  %bf.cast992 = zext i8 %bf.clear991 to i32
  %317 = load %union.rec*, %union.rec** %res, align 8
  %os2993 = bitcast %union.rec* %317 to %struct.closure_type*
  %ou4994 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2993, i32 0, i32 4
  %osave_style995 = bitcast %union.FOURTH_UNION* %ou4994 to %struct.STYLE*
  %osu1996 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style995, i32 0, i32 0
  %oss1997 = bitcast %union.anon* %osu1996 to %struct.anon.9*
  %318 = bitcast %struct.anon.9* %oss1997 to i8*
  %319 = trunc i32 %bf.cast992 to i8
  %bf.load998 = load i8, i8* %318, align 4
  %bf.value999 = and i8 %319, 1
  %bf.shl1000 = shl i8 %bf.value999, 1
  %bf.clear1001 = and i8 %bf.load998, -3
  %bf.set1002 = or i8 %bf.clear1001, %bf.shl1000
  store i8 %bf.set1002, i8* %318, align 4
  %bf.result.cast1003 = zext i8 %bf.value999 to i32
  %320 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21004 = bitcast %union.rec* %320 to %struct.closure_type*
  %ou41005 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21004, i32 0, i32 4
  %osave_style1006 = bitcast %union.FOURTH_UNION* %ou41005 to %struct.STYLE*
  %osu11007 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1006, i32 0, i32 0
  %oss11008 = bitcast %union.anon* %osu11007 to %struct.anon.9*
  %321 = bitcast %struct.anon.9* %oss11008 to i8*
  %bf.load1009 = load i8, i8* %321, align 4
  %bf.lshr1010 = lshr i8 %bf.load1009, 2
  %bf.clear1011 = and i8 %bf.lshr1010, 1
  %bf.cast1012 = zext i8 %bf.clear1011 to i32
  %322 = load %union.rec*, %union.rec** %res, align 8
  %os21013 = bitcast %union.rec* %322 to %struct.closure_type*
  %ou41014 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21013, i32 0, i32 4
  %osave_style1015 = bitcast %union.FOURTH_UNION* %ou41014 to %struct.STYLE*
  %osu11016 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1015, i32 0, i32 0
  %oss11017 = bitcast %union.anon* %osu11016 to %struct.anon.9*
  %323 = bitcast %struct.anon.9* %oss11017 to i8*
  %324 = trunc i32 %bf.cast1012 to i8
  %bf.load1018 = load i8, i8* %323, align 4
  %bf.value1019 = and i8 %324, 1
  %bf.shl1020 = shl i8 %bf.value1019, 2
  %bf.clear1021 = and i8 %bf.load1018, -5
  %bf.set1022 = or i8 %bf.clear1021, %bf.shl1020
  store i8 %bf.set1022, i8* %323, align 4
  %bf.result.cast1023 = zext i8 %bf.value1019 to i32
  %325 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21024 = bitcast %union.rec* %325 to %struct.closure_type*
  %ou41025 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21024, i32 0, i32 4
  %osave_style1026 = bitcast %union.FOURTH_UNION* %ou41025 to %struct.STYLE*
  %osu11027 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1026, i32 0, i32 0
  %oss11028 = bitcast %union.anon* %osu11027 to %struct.anon.9*
  %326 = bitcast %struct.anon.9* %oss11028 to i8*
  %bf.load1029 = load i8, i8* %326, align 4
  %bf.lshr1030 = lshr i8 %bf.load1029, 4
  %bf.clear1031 = and i8 %bf.lshr1030, 7
  %bf.cast1032 = zext i8 %bf.clear1031 to i32
  %327 = load %union.rec*, %union.rec** %res, align 8
  %os21033 = bitcast %union.rec* %327 to %struct.closure_type*
  %ou41034 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21033, i32 0, i32 4
  %osave_style1035 = bitcast %union.FOURTH_UNION* %ou41034 to %struct.STYLE*
  %osu11036 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1035, i32 0, i32 0
  %oss11037 = bitcast %union.anon* %osu11036 to %struct.anon.9*
  %328 = bitcast %struct.anon.9* %oss11037 to i8*
  %329 = trunc i32 %bf.cast1032 to i8
  %bf.load1038 = load i8, i8* %328, align 4
  %bf.value1039 = and i8 %329, 7
  %bf.shl1040 = shl i8 %bf.value1039, 4
  %bf.clear1041 = and i8 %bf.load1038, -113
  %bf.set1042 = or i8 %bf.clear1041, %bf.shl1040
  store i8 %bf.set1042, i8* %328, align 4
  %bf.result.cast1043 = zext i8 %bf.value1039 to i32
  %330 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21044 = bitcast %union.rec* %330 to %struct.closure_type*
  %ou41045 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21044, i32 0, i32 4
  %osave_style1046 = bitcast %union.FOURTH_UNION* %ou41045 to %struct.STYLE*
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1046, i32 0, i32 2
  %331 = load i16, i16* %oyunit, align 2
  %332 = load %union.rec*, %union.rec** %res, align 8
  %os21047 = bitcast %union.rec* %332 to %struct.closure_type*
  %ou41048 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21047, i32 0, i32 4
  %osave_style1049 = bitcast %union.FOURTH_UNION* %ou41048 to %struct.STYLE*
  %oyunit1050 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1049, i32 0, i32 2
  store i16 %331, i16* %oyunit1050, align 2
  %333 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21051 = bitcast %union.rec* %333 to %struct.closure_type*
  %ou41052 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21051, i32 0, i32 4
  %osave_style1053 = bitcast %union.FOURTH_UNION* %ou41052 to %struct.STYLE*
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1053, i32 0, i32 3
  %334 = load i16, i16* %ozunit, align 2
  %335 = load %union.rec*, %union.rec** %res, align 8
  %os21054 = bitcast %union.rec* %335 to %struct.closure_type*
  %ou41055 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21054, i32 0, i32 4
  %osave_style1056 = bitcast %union.FOURTH_UNION* %ou41055 to %struct.STYLE*
  %ozunit1057 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1056, i32 0, i32 3
  store i16 %334, i16* %ozunit1057, align 2
  %336 = load i32, i32* %xlen, align 4
  %sub1058 = sub nsw i32 %336, 1
  store i32 %sub1058, i32* %xi, align 4
  %337 = load i32, i32* %ylen, align 4
  %sub1059 = sub nsw i32 %337, 1
  store i32 %sub1059, i32* %yi, align 4
  br label %for.cond.1060

for.cond.1060:                                    ; preds = %if.end.1991, %if.end.572
  %338 = load i32, i32* %yi, align 4
  %idxprom1061 = sext i32 %338 to i64
  %339 = load i32, i32* %xi, align 4
  %idxprom1062 = sext i32 %339 to i64
  %arrayidx1063 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom1062
  %arrayidx1064 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx1063, i32 0, i64 %idxprom1061
  %340 = load i8, i8* %arrayidx1064, align 1
  %conv1065 = sext i8 %340 to i32
  %cmp1066 = icmp ne i32 %conv1065, 0
  br i1 %cmp1066, label %for.body.1068, label %for.end.1992

for.body.1068:                                    ; preds = %for.cond.1060
  %341 = load i32, i32* %yi, align 4
  %idxprom1069 = sext i32 %341 to i64
  %342 = load i32, i32* %xi, align 4
  %idxprom1070 = sext i32 %342 to i64
  %arrayidx1071 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom1070
  %arrayidx1072 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx1071, i32 0, i64 %idxprom1069
  %343 = load i8, i8* %arrayidx1072, align 1
  %conv1073 = sext i8 %343 to i32
  switch i32 %conv1073, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1206
    i32 1, label %sw.bb.1341
  ]

sw.bb:                                            ; preds = %for.body.1068
  %344 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1074 = zext i8 %344 to i32
  store i32 %conv1074, i32* @zz_size, align 4
  %conv1075 = sext i32 %conv1074 to i64
  %cmp1076 = icmp uge i64 %conv1075, 265
  br i1 %cmp1076, label %if.then.1078, label %if.else.1080

if.then.1078:                                     ; preds = %sw.bb
  %345 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1079 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %345)
  br label %if.end.1097

if.else.1080:                                     ; preds = %sw.bb
  %346 = load i32, i32* @zz_size, align 4
  %idxprom1081 = sext i32 %346 to i64
  %arrayidx1082 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1081
  %347 = load %union.rec*, %union.rec** %arrayidx1082, align 8
  %cmp1083 = icmp eq %union.rec* %347, null
  br i1 %cmp1083, label %if.then.1085, label %if.else.1087

if.then.1085:                                     ; preds = %if.else.1080
  %348 = load i32, i32* @zz_size, align 4
  %349 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1086 = call %union.rec* @GetMemory(i32 %348, %struct.FILE_POS* %349)
  store %union.rec* %call1086, %union.rec** @zz_hold, align 8
  br label %if.end.1096

if.else.1087:                                     ; preds = %if.else.1080
  %350 = load i32, i32* @zz_size, align 4
  %idxprom1088 = sext i32 %350 to i64
  %arrayidx1089 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1088
  %351 = load %union.rec*, %union.rec** %arrayidx1089, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11090 = bitcast %union.rec* %352 to %struct.word_type*
  %olist1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 0
  %arrayidx1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1091, i32 0, i64 0
  %opred1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1092, i32 0, i32 0
  %353 = load %union.rec*, %union.rec** %opred1093, align 8
  %354 = load i32, i32* @zz_size, align 4
  %idxprom1094 = sext i32 %354 to i64
  %arrayidx1095 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1094
  store %union.rec* %353, %union.rec** %arrayidx1095, align 8
  br label %if.end.1096

if.end.1096:                                      ; preds = %if.else.1087, %if.then.1085
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.end.1096, %if.then.1078
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11098 = bitcast %union.rec* %355 to %struct.word_type*
  %ou11099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11098, i32 0, i32 1
  %os111100 = bitcast %union.FIRST_UNION* %ou11099 to %struct.anon*
  %otype1101 = getelementptr inbounds %struct.anon, %struct.anon* %os111100, i32 0, i32 0
  store i8 0, i8* %otype1101, align 1
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11102 = bitcast %union.rec* %357 to %struct.word_type*
  %olist1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11102, i32 0, i32 0
  %arrayidx1104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1103, i32 0, i64 1
  %osucc1105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1104, i32 0, i32 1
  store %union.rec* %356, %union.rec** %osucc1105, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11106 = bitcast %union.rec* %358 to %struct.word_type*
  %olist1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11106, i32 0, i32 0
  %arrayidx1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1107, i32 0, i64 1
  %opred1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1108, i32 0, i32 0
  store %union.rec* %356, %union.rec** %opred1109, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11110 = bitcast %union.rec* %359 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 0
  %osucc1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 1
  store %union.rec* %356, %union.rec** %osucc1113, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11114 = bitcast %union.rec* %360 to %struct.word_type*
  %olist1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11114, i32 0, i32 0
  %arrayidx1116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1115, i32 0, i64 0
  %opred1117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1116, i32 0, i32 0
  store %union.rec* %356, %union.rec** %opred1117, align 8
  store %union.rec* %356, %union.rec** @xx_link, align 8
  %361 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %361, %union.rec** @zz_res, align 8
  %362 = load %union.rec*, %union.rec** %res, align 8
  %os11118 = bitcast %union.rec* %362 to %struct.word_type*
  %olist1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11118, i32 0, i32 0
  %arrayidx1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1119, i32 0, i64 0
  %osucc1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1120, i32 0, i32 1
  %363 = load %union.rec*, %union.rec** %osucc1121, align 8
  store %union.rec* %363, %union.rec** @zz_hold, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1122 = icmp eq %union.rec* %364, null
  br i1 %cmp1122, label %cond.true.1124, label %cond.false.1125

cond.true.1124:                                   ; preds = %if.end.1097
  %365 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1159

cond.false.1125:                                  ; preds = %if.end.1097
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1126 = icmp eq %union.rec* %366, null
  br i1 %cmp1126, label %cond.true.1128, label %cond.false.1129

cond.true.1128:                                   ; preds = %cond.false.1125
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.1129:                                  ; preds = %cond.false.1125
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11130 = bitcast %union.rec* %368 to %struct.word_type*
  %olist1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11130, i32 0, i32 0
  %arrayidx1132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1131, i32 0, i64 0
  %opred1133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1132, i32 0, i32 0
  %369 = load %union.rec*, %union.rec** %opred1133, align 8
  store %union.rec* %369, %union.rec** @zz_tmp, align 8
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11134 = bitcast %union.rec* %370 to %struct.word_type*
  %olist1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11134, i32 0, i32 0
  %arrayidx1136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1135, i32 0, i64 0
  %opred1137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1136, i32 0, i32 0
  %371 = load %union.rec*, %union.rec** %opred1137, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11138 = bitcast %union.rec* %372 to %struct.word_type*
  %olist1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 0
  %arrayidx1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1139, i32 0, i64 0
  %opred1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1140, i32 0, i32 0
  store %union.rec* %371, %union.rec** %opred1141, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11142 = bitcast %union.rec* %374 to %struct.word_type*
  %olist1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11142, i32 0, i32 0
  %arrayidx1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1143, i32 0, i64 0
  %opred1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1144, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred1145, align 8
  %os11146 = bitcast %union.rec* %375 to %struct.word_type*
  %olist1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 0
  %arrayidx1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1147, i32 0, i64 0
  %osucc1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1148, i32 0, i32 1
  store %union.rec* %373, %union.rec** %osucc1149, align 8
  %376 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11151 = bitcast %union.rec* %377 to %struct.word_type*
  %olist1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11151, i32 0, i32 0
  %arrayidx1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1152, i32 0, i64 0
  %opred1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1153, i32 0, i32 0
  store %union.rec* %376, %union.rec** %opred1154, align 8
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  %379 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11155 = bitcast %union.rec* %379 to %struct.word_type*
  %olist1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11155, i32 0, i32 0
  %arrayidx1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1156, i32 0, i64 0
  %osucc1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1157, i32 0, i32 1
  store %union.rec* %378, %union.rec** %osucc1158, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.1129, %cond.true.1128
  %cond = phi %union.rec* [ %367, %cond.true.1128 ], [ %378, %cond.false.1129 ]
  br label %cond.end.1159

cond.end.1159:                                    ; preds = %cond.end, %cond.true.1124
  %cond1160 = phi %union.rec* [ %365, %cond.true.1124 ], [ %cond, %cond.end ]
  %380 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %380, %union.rec** @zz_res, align 8
  %381 = load i32, i32* %xi, align 4
  %idxprom1161 = sext i32 %381 to i64
  %arrayidx1162 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom1161
  %382 = load %union.rec*, %union.rec** %arrayidx1162, align 8
  store %union.rec* %382, %union.rec** @zz_hold, align 8
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1163 = icmp eq %union.rec* %383, null
  br i1 %cmp1163, label %cond.true.1165, label %cond.false.1166

cond.true.1165:                                   ; preds = %cond.end.1159
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1201

cond.false.1166:                                  ; preds = %cond.end.1159
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1167 = icmp eq %union.rec* %385, null
  br i1 %cmp1167, label %cond.true.1169, label %cond.false.1170

cond.true.1169:                                   ; preds = %cond.false.1166
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1199

cond.false.1170:                                  ; preds = %cond.false.1166
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11171 = bitcast %union.rec* %387 to %struct.word_type*
  %olist1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11171, i32 0, i32 0
  %arrayidx1173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1172, i32 0, i64 1
  %opred1174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1173, i32 0, i32 0
  %388 = load %union.rec*, %union.rec** %opred1174, align 8
  store %union.rec* %388, %union.rec** @zz_tmp, align 8
  %389 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11175 = bitcast %union.rec* %389 to %struct.word_type*
  %olist1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 0
  %arrayidx1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1176, i32 0, i64 1
  %opred1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1177, i32 0, i32 0
  %390 = load %union.rec*, %union.rec** %opred1178, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11179 = bitcast %union.rec* %391 to %struct.word_type*
  %olist1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11179, i32 0, i32 0
  %arrayidx1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1180, i32 0, i64 1
  %opred1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1181, i32 0, i32 0
  store %union.rec* %390, %union.rec** %opred1182, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %393 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11183 = bitcast %union.rec* %393 to %struct.word_type*
  %olist1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 0
  %arrayidx1185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1184, i32 0, i64 1
  %opred1186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1185, i32 0, i32 0
  %394 = load %union.rec*, %union.rec** %opred1186, align 8
  %os11187 = bitcast %union.rec* %394 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 1
  %osucc1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 1
  store %union.rec* %392, %union.rec** %osucc1190, align 8
  %395 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11191 = bitcast %union.rec* %396 to %struct.word_type*
  %olist1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11191, i32 0, i32 0
  %arrayidx1193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1192, i32 0, i64 1
  %opred1194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1193, i32 0, i32 0
  store %union.rec* %395, %union.rec** %opred1194, align 8
  %397 = load %union.rec*, %union.rec** @zz_res, align 8
  %398 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11195 = bitcast %union.rec* %398 to %struct.word_type*
  %olist1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11195, i32 0, i32 0
  %arrayidx1197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1196, i32 0, i64 1
  %osucc1198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1197, i32 0, i32 1
  store %union.rec* %397, %union.rec** %osucc1198, align 8
  br label %cond.end.1199

cond.end.1199:                                    ; preds = %cond.false.1170, %cond.true.1169
  %cond1200 = phi %union.rec* [ %386, %cond.true.1169 ], [ %397, %cond.false.1170 ]
  br label %cond.end.1201

cond.end.1201:                                    ; preds = %cond.end.1199, %cond.true.1165
  %cond1202 = phi %union.rec* [ %384, %cond.true.1165 ], [ %cond1200, %cond.end.1199 ]
  %399 = load i32, i32* %xi, align 4
  %idxprom1203 = sext i32 %399 to i64
  %arrayidx1204 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xgaps, i32 0, i64 %idxprom1203
  %400 = load %union.rec*, %union.rec** %arrayidx1204, align 8
  store %union.rec* %400, %union.rec** %g, align 8
  %401 = load i32, i32* %xi, align 4
  %dec = add nsw i32 %401, -1
  store i32 %dec, i32* %xi, align 4
  %402 = load i32, i32* %yi, align 4
  %dec1205 = add nsw i32 %402, -1
  store i32 %dec1205, i32* %yi, align 4
  br label %sw.epilog

sw.bb.1206:                                       ; preds = %for.body.1068
  %403 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1207 = zext i8 %403 to i32
  store i32 %conv1207, i32* @zz_size, align 4
  %conv1208 = sext i32 %conv1207 to i64
  %cmp1209 = icmp uge i64 %conv1208, 265
  br i1 %cmp1209, label %if.then.1211, label %if.else.1213

if.then.1211:                                     ; preds = %sw.bb.1206
  %404 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1212 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %404)
  br label %if.end.1230

if.else.1213:                                     ; preds = %sw.bb.1206
  %405 = load i32, i32* @zz_size, align 4
  %idxprom1214 = sext i32 %405 to i64
  %arrayidx1215 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1214
  %406 = load %union.rec*, %union.rec** %arrayidx1215, align 8
  %cmp1216 = icmp eq %union.rec* %406, null
  br i1 %cmp1216, label %if.then.1218, label %if.else.1220

if.then.1218:                                     ; preds = %if.else.1213
  %407 = load i32, i32* @zz_size, align 4
  %408 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1219 = call %union.rec* @GetMemory(i32 %407, %struct.FILE_POS* %408)
  store %union.rec* %call1219, %union.rec** @zz_hold, align 8
  br label %if.end.1229

if.else.1220:                                     ; preds = %if.else.1213
  %409 = load i32, i32* @zz_size, align 4
  %idxprom1221 = sext i32 %409 to i64
  %arrayidx1222 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1221
  %410 = load %union.rec*, %union.rec** %arrayidx1222, align 8
  store %union.rec* %410, %union.rec** @zz_hold, align 8
  store %union.rec* %410, %union.rec** @zz_hold, align 8
  %411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11223 = bitcast %union.rec* %411 to %struct.word_type*
  %olist1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11223, i32 0, i32 0
  %arrayidx1225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1224, i32 0, i64 0
  %opred1226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1225, i32 0, i32 0
  %412 = load %union.rec*, %union.rec** %opred1226, align 8
  %413 = load i32, i32* @zz_size, align 4
  %idxprom1227 = sext i32 %413 to i64
  %arrayidx1228 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1227
  store %union.rec* %412, %union.rec** %arrayidx1228, align 8
  br label %if.end.1229

if.end.1229:                                      ; preds = %if.else.1220, %if.then.1218
  br label %if.end.1230

if.end.1230:                                      ; preds = %if.end.1229, %if.then.1211
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11232 = bitcast %union.rec* %414 to %struct.word_type*
  %ou11233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11232, i32 0, i32 1
  %os111234 = bitcast %union.FIRST_UNION* %ou11233 to %struct.anon*
  %otype1235 = getelementptr inbounds %struct.anon, %struct.anon* %os111234, i32 0, i32 0
  store i8 0, i8* %otype1235, align 1
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11236 = bitcast %union.rec* %416 to %struct.word_type*
  %olist1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11236, i32 0, i32 0
  %arrayidx1238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1237, i32 0, i64 1
  %osucc1239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1238, i32 0, i32 1
  store %union.rec* %415, %union.rec** %osucc1239, align 8
  %417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11240 = bitcast %union.rec* %417 to %struct.word_type*
  %olist1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11240, i32 0, i32 0
  %arrayidx1242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1241, i32 0, i64 1
  %opred1243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1242, i32 0, i32 0
  store %union.rec* %415, %union.rec** %opred1243, align 8
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11244 = bitcast %union.rec* %418 to %struct.word_type*
  %olist1245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11244, i32 0, i32 0
  %arrayidx1246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1245, i32 0, i64 0
  %osucc1247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1246, i32 0, i32 1
  store %union.rec* %415, %union.rec** %osucc1247, align 8
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11248 = bitcast %union.rec* %419 to %struct.word_type*
  %olist1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11248, i32 0, i32 0
  %arrayidx1250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1249, i32 0, i64 0
  %opred1251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1250, i32 0, i32 0
  store %union.rec* %415, %union.rec** %opred1251, align 8
  store %union.rec* %415, %union.rec** @xx_link, align 8
  %420 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %420, %union.rec** @zz_res, align 8
  %421 = load %union.rec*, %union.rec** %res, align 8
  %os11252 = bitcast %union.rec* %421 to %struct.word_type*
  %olist1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11252, i32 0, i32 0
  %arrayidx1254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1253, i32 0, i64 0
  %osucc1255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1254, i32 0, i32 1
  %422 = load %union.rec*, %union.rec** %osucc1255, align 8
  store %union.rec* %422, %union.rec** @zz_hold, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1256 = icmp eq %union.rec* %423, null
  br i1 %cmp1256, label %cond.true.1258, label %cond.false.1259

cond.true.1258:                                   ; preds = %if.end.1230
  %424 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1294

cond.false.1259:                                  ; preds = %if.end.1230
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1260 = icmp eq %union.rec* %425, null
  br i1 %cmp1260, label %cond.true.1262, label %cond.false.1263

cond.true.1262:                                   ; preds = %cond.false.1259
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1292

cond.false.1263:                                  ; preds = %cond.false.1259
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11264 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11264, i32 0, i32 0
  %arrayidx1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1265, i32 0, i64 0
  %opred1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1266, i32 0, i32 0
  %428 = load %union.rec*, %union.rec** %opred1267, align 8
  store %union.rec* %428, %union.rec** @zz_tmp, align 8
  %429 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11268 = bitcast %union.rec* %429 to %struct.word_type*
  %olist1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11268, i32 0, i32 0
  %arrayidx1270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1269, i32 0, i64 0
  %opred1271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1270, i32 0, i32 0
  %430 = load %union.rec*, %union.rec** %opred1271, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11272 = bitcast %union.rec* %431 to %struct.word_type*
  %olist1273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11272, i32 0, i32 0
  %arrayidx1274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1273, i32 0, i64 0
  %opred1275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1274, i32 0, i32 0
  store %union.rec* %430, %union.rec** %opred1275, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11276 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11276, i32 0, i32 0
  %arrayidx1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1277, i32 0, i64 0
  %opred1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1278, i32 0, i32 0
  %434 = load %union.rec*, %union.rec** %opred1279, align 8
  %os11280 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11280, i32 0, i32 0
  %arrayidx1282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1281, i32 0, i64 0
  %osucc1283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1282, i32 0, i32 1
  store %union.rec* %432, %union.rec** %osucc1283, align 8
  %435 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11284 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11284, i32 0, i32 0
  %arrayidx1286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1285, i32 0, i64 0
  %opred1287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1286, i32 0, i32 0
  store %union.rec* %435, %union.rec** %opred1287, align 8
  %437 = load %union.rec*, %union.rec** @zz_res, align 8
  %438 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11288 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11288, i32 0, i32 0
  %arrayidx1290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1289, i32 0, i64 0
  %osucc1291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1290, i32 0, i32 1
  store %union.rec* %437, %union.rec** %osucc1291, align 8
  br label %cond.end.1292

cond.end.1292:                                    ; preds = %cond.false.1263, %cond.true.1262
  %cond1293 = phi %union.rec* [ %426, %cond.true.1262 ], [ %437, %cond.false.1263 ]
  br label %cond.end.1294

cond.end.1294:                                    ; preds = %cond.end.1292, %cond.true.1258
  %cond1295 = phi %union.rec* [ %424, %cond.true.1258 ], [ %cond1293, %cond.end.1292 ]
  %439 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %439, %union.rec** @zz_res, align 8
  %440 = load i32, i32* %yi, align 4
  %idxprom1296 = sext i32 %440 to i64
  %arrayidx1297 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %idxprom1296
  %441 = load %union.rec*, %union.rec** %arrayidx1297, align 8
  store %union.rec* %441, %union.rec** @zz_hold, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1298 = icmp eq %union.rec* %442, null
  br i1 %cmp1298, label %cond.true.1300, label %cond.false.1301

cond.true.1300:                                   ; preds = %cond.end.1294
  %443 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1336

cond.false.1301:                                  ; preds = %cond.end.1294
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1302 = icmp eq %union.rec* %444, null
  br i1 %cmp1302, label %cond.true.1304, label %cond.false.1305

cond.true.1304:                                   ; preds = %cond.false.1301
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1334

cond.false.1305:                                  ; preds = %cond.false.1301
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11306 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1307, i32 0, i64 1
  %opred1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1308, i32 0, i32 0
  %447 = load %union.rec*, %union.rec** %opred1309, align 8
  store %union.rec* %447, %union.rec** @zz_tmp, align 8
  %448 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11310 = bitcast %union.rec* %448 to %struct.word_type*
  %olist1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11310, i32 0, i32 0
  %arrayidx1312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1311, i32 0, i64 1
  %opred1313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1312, i32 0, i32 0
  %449 = load %union.rec*, %union.rec** %opred1313, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11314 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11314, i32 0, i32 0
  %arrayidx1316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1315, i32 0, i64 1
  %opred1317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1316, i32 0, i32 0
  store %union.rec* %449, %union.rec** %opred1317, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %452 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11318 = bitcast %union.rec* %452 to %struct.word_type*
  %olist1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11318, i32 0, i32 0
  %arrayidx1320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1319, i32 0, i64 1
  %opred1321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1320, i32 0, i32 0
  %453 = load %union.rec*, %union.rec** %opred1321, align 8
  %os11322 = bitcast %union.rec* %453 to %struct.word_type*
  %olist1323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11322, i32 0, i32 0
  %arrayidx1324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1323, i32 0, i64 1
  %osucc1325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1324, i32 0, i32 1
  store %union.rec* %451, %union.rec** %osucc1325, align 8
  %454 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %455 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11326 = bitcast %union.rec* %455 to %struct.word_type*
  %olist1327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11326, i32 0, i32 0
  %arrayidx1328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1327, i32 0, i64 1
  %opred1329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1328, i32 0, i32 0
  store %union.rec* %454, %union.rec** %opred1329, align 8
  %456 = load %union.rec*, %union.rec** @zz_res, align 8
  %457 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11330 = bitcast %union.rec* %457 to %struct.word_type*
  %olist1331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11330, i32 0, i32 0
  %arrayidx1332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1331, i32 0, i64 1
  %osucc1333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1332, i32 0, i32 1
  store %union.rec* %456, %union.rec** %osucc1333, align 8
  br label %cond.end.1334

cond.end.1334:                                    ; preds = %cond.false.1305, %cond.true.1304
  %cond1335 = phi %union.rec* [ %445, %cond.true.1304 ], [ %456, %cond.false.1305 ]
  br label %cond.end.1336

cond.end.1336:                                    ; preds = %cond.end.1334, %cond.true.1300
  %cond1337 = phi %union.rec* [ %443, %cond.true.1300 ], [ %cond1335, %cond.end.1334 ]
  %458 = load i32, i32* %yi, align 4
  %idxprom1338 = sext i32 %458 to i64
  %arrayidx1339 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ygaps, i32 0, i64 %idxprom1338
  %459 = load %union.rec*, %union.rec** %arrayidx1339, align 8
  store %union.rec* %459, %union.rec** %g, align 8
  %460 = load i32, i32* %yi, align 4
  %dec1340 = add nsw i32 %460, -1
  store i32 %dec1340, i32* %yi, align 4
  br label %sw.epilog

sw.bb.1341:                                       ; preds = %for.body.1068
  %461 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1342 = zext i8 %461 to i32
  store i32 %conv1342, i32* @zz_size, align 4
  %conv1343 = sext i32 %conv1342 to i64
  %cmp1344 = icmp uge i64 %conv1343, 265
  br i1 %cmp1344, label %if.then.1346, label %if.else.1348

if.then.1346:                                     ; preds = %sw.bb.1341
  %462 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1347 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %462)
  br label %if.end.1365

if.else.1348:                                     ; preds = %sw.bb.1341
  %463 = load i32, i32* @zz_size, align 4
  %idxprom1349 = sext i32 %463 to i64
  %arrayidx1350 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1349
  %464 = load %union.rec*, %union.rec** %arrayidx1350, align 8
  %cmp1351 = icmp eq %union.rec* %464, null
  br i1 %cmp1351, label %if.then.1353, label %if.else.1355

if.then.1353:                                     ; preds = %if.else.1348
  %465 = load i32, i32* @zz_size, align 4
  %466 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1354 = call %union.rec* @GetMemory(i32 %465, %struct.FILE_POS* %466)
  store %union.rec* %call1354, %union.rec** @zz_hold, align 8
  br label %if.end.1364

if.else.1355:                                     ; preds = %if.else.1348
  %467 = load i32, i32* @zz_size, align 4
  %idxprom1356 = sext i32 %467 to i64
  %arrayidx1357 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1356
  %468 = load %union.rec*, %union.rec** %arrayidx1357, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11358 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1359, i32 0, i64 0
  %opred1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1360, i32 0, i32 0
  %470 = load %union.rec*, %union.rec** %opred1361, align 8
  %471 = load i32, i32* @zz_size, align 4
  %idxprom1362 = sext i32 %471 to i64
  %arrayidx1363 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1362
  store %union.rec* %470, %union.rec** %arrayidx1363, align 8
  br label %if.end.1364

if.end.1364:                                      ; preds = %if.else.1355, %if.then.1353
  br label %if.end.1365

if.end.1365:                                      ; preds = %if.end.1364, %if.then.1346
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11366 = bitcast %union.rec* %472 to %struct.word_type*
  %ou11367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11366, i32 0, i32 1
  %os111368 = bitcast %union.FIRST_UNION* %ou11367 to %struct.anon*
  %otype1369 = getelementptr inbounds %struct.anon, %struct.anon* %os111368, i32 0, i32 0
  store i8 0, i8* %otype1369, align 1
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11370 = bitcast %union.rec* %474 to %struct.word_type*
  %olist1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11370, i32 0, i32 0
  %arrayidx1372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1371, i32 0, i64 1
  %osucc1373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1372, i32 0, i32 1
  store %union.rec* %473, %union.rec** %osucc1373, align 8
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11374 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11374, i32 0, i32 0
  %arrayidx1376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1375, i32 0, i64 1
  %opred1377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1376, i32 0, i32 0
  store %union.rec* %473, %union.rec** %opred1377, align 8
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11378 = bitcast %union.rec* %476 to %struct.word_type*
  %olist1379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11378, i32 0, i32 0
  %arrayidx1380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1379, i32 0, i64 0
  %osucc1381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1380, i32 0, i32 1
  store %union.rec* %473, %union.rec** %osucc1381, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11382 = bitcast %union.rec* %477 to %struct.word_type*
  %olist1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11382, i32 0, i32 0
  %arrayidx1384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1383, i32 0, i64 0
  %opred1385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1384, i32 0, i32 0
  store %union.rec* %473, %union.rec** %opred1385, align 8
  store %union.rec* %473, %union.rec** @xx_link, align 8
  %478 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %478, %union.rec** @zz_res, align 8
  %479 = load %union.rec*, %union.rec** %res, align 8
  %os11386 = bitcast %union.rec* %479 to %struct.word_type*
  %olist1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11386, i32 0, i32 0
  %arrayidx1388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1387, i32 0, i64 0
  %osucc1389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1388, i32 0, i32 1
  %480 = load %union.rec*, %union.rec** %osucc1389, align 8
  store %union.rec* %480, %union.rec** @zz_hold, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1390 = icmp eq %union.rec* %481, null
  br i1 %cmp1390, label %cond.true.1392, label %cond.false.1393

cond.true.1392:                                   ; preds = %if.end.1365
  %482 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1428

cond.false.1393:                                  ; preds = %if.end.1365
  %483 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1394 = icmp eq %union.rec* %483, null
  br i1 %cmp1394, label %cond.true.1396, label %cond.false.1397

cond.true.1396:                                   ; preds = %cond.false.1393
  %484 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1426

cond.false.1397:                                  ; preds = %cond.false.1393
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11398 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11398, i32 0, i32 0
  %arrayidx1400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1399, i32 0, i64 0
  %opred1401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1400, i32 0, i32 0
  %486 = load %union.rec*, %union.rec** %opred1401, align 8
  store %union.rec* %486, %union.rec** @zz_tmp, align 8
  %487 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11402 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11402, i32 0, i32 0
  %arrayidx1404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1403, i32 0, i64 0
  %opred1405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1404, i32 0, i32 0
  %488 = load %union.rec*, %union.rec** %opred1405, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11406 = bitcast %union.rec* %489 to %struct.word_type*
  %olist1407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11406, i32 0, i32 0
  %arrayidx1408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1407, i32 0, i64 0
  %opred1409 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1408, i32 0, i32 0
  store %union.rec* %488, %union.rec** %opred1409, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %491 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11410 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11410, i32 0, i32 0
  %arrayidx1412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1411, i32 0, i64 0
  %opred1413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1412, i32 0, i32 0
  %492 = load %union.rec*, %union.rec** %opred1413, align 8
  %os11414 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11414, i32 0, i32 0
  %arrayidx1416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1415, i32 0, i64 0
  %osucc1417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1416, i32 0, i32 1
  store %union.rec* %490, %union.rec** %osucc1417, align 8
  %493 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %494 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11418 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11418, i32 0, i32 0
  %arrayidx1420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1419, i32 0, i64 0
  %opred1421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1420, i32 0, i32 0
  store %union.rec* %493, %union.rec** %opred1421, align 8
  %495 = load %union.rec*, %union.rec** @zz_res, align 8
  %496 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11422 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11422, i32 0, i32 0
  %arrayidx1424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1423, i32 0, i64 0
  %osucc1425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1424, i32 0, i32 1
  store %union.rec* %495, %union.rec** %osucc1425, align 8
  br label %cond.end.1426

cond.end.1426:                                    ; preds = %cond.false.1397, %cond.true.1396
  %cond1427 = phi %union.rec* [ %484, %cond.true.1396 ], [ %495, %cond.false.1397 ]
  br label %cond.end.1428

cond.end.1428:                                    ; preds = %cond.end.1426, %cond.true.1392
  %cond1429 = phi %union.rec* [ %482, %cond.true.1392 ], [ %cond1427, %cond.end.1426 ]
  %497 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %497, %union.rec** @zz_res, align 8
  %498 = load i32, i32* %xi, align 4
  %idxprom1430 = sext i32 %498 to i64
  %arrayidx1431 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %idxprom1430
  %499 = load %union.rec*, %union.rec** %arrayidx1431, align 8
  store %union.rec* %499, %union.rec** @zz_hold, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1432 = icmp eq %union.rec* %500, null
  br i1 %cmp1432, label %cond.true.1434, label %cond.false.1435

cond.true.1434:                                   ; preds = %cond.end.1428
  %501 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1471

cond.false.1435:                                  ; preds = %cond.end.1428
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1436 = icmp eq %union.rec* %502, null
  br i1 %cmp1436, label %cond.true.1438, label %cond.false.1439

cond.true.1438:                                   ; preds = %cond.false.1435
  %503 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1469

cond.false.1439:                                  ; preds = %cond.false.1435
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11440 = bitcast %union.rec* %504 to %struct.word_type*
  %olist1441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11440, i32 0, i32 0
  %arrayidx1442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1441, i32 0, i64 1
  %opred1443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1442, i32 0, i32 0
  %505 = load %union.rec*, %union.rec** %opred1443, align 8
  store %union.rec* %505, %union.rec** @zz_tmp, align 8
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11445 = bitcast %union.rec* %506 to %struct.word_type*
  %olist1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11445, i32 0, i32 0
  %arrayidx1447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1446, i32 0, i64 1
  %opred1448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1447, i32 0, i32 0
  %507 = load %union.rec*, %union.rec** %opred1448, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11449 = bitcast %union.rec* %508 to %struct.word_type*
  %olist1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11449, i32 0, i32 0
  %arrayidx1451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1450, i32 0, i64 1
  %opred1452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1451, i32 0, i32 0
  store %union.rec* %507, %union.rec** %opred1452, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11453 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11453, i32 0, i32 0
  %arrayidx1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1454, i32 0, i64 1
  %opred1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1455, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1456, align 8
  %os11457 = bitcast %union.rec* %511 to %struct.word_type*
  %olist1458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11457, i32 0, i32 0
  %arrayidx1459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1458, i32 0, i64 1
  %osucc1460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1459, i32 0, i32 1
  store %union.rec* %509, %union.rec** %osucc1460, align 8
  %512 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %513 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11461 = bitcast %union.rec* %513 to %struct.word_type*
  %olist1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11461, i32 0, i32 0
  %arrayidx1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1462, i32 0, i64 1
  %opred1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1463, i32 0, i32 0
  store %union.rec* %512, %union.rec** %opred1464, align 8
  %514 = load %union.rec*, %union.rec** @zz_res, align 8
  %515 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11465 = bitcast %union.rec* %515 to %struct.word_type*
  %olist1466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11465, i32 0, i32 0
  %arrayidx1467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1466, i32 0, i64 1
  %osucc1468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1467, i32 0, i32 1
  store %union.rec* %514, %union.rec** %osucc1468, align 8
  br label %cond.end.1469

cond.end.1469:                                    ; preds = %cond.false.1439, %cond.true.1438
  %cond1470 = phi %union.rec* [ %503, %cond.true.1438 ], [ %514, %cond.false.1439 ]
  br label %cond.end.1471

cond.end.1471:                                    ; preds = %cond.end.1469, %cond.true.1434
  %cond1472 = phi %union.rec* [ %501, %cond.true.1434 ], [ %cond1470, %cond.end.1469 ]
  %516 = load i32, i32* %xi, align 4
  %idxprom1473 = sext i32 %516 to i64
  %arrayidx1474 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xgaps, i32 0, i64 %idxprom1473
  %517 = load %union.rec*, %union.rec** %arrayidx1474, align 8
  store %union.rec* %517, %union.rec** %g, align 8
  %518 = load i32, i32* %xi, align 4
  %dec1475 = add nsw i32 %518, -1
  store i32 %dec1475, i32* %xi, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.1471, %for.body.1068, %cond.end.1336, %cond.end.1201
  %519 = load i32, i32* %yi, align 4
  %idxprom1476 = sext i32 %519 to i64
  %520 = load i32, i32* %xi, align 4
  %idxprom1477 = sext i32 %520 to i64
  %arrayidx1478 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %idxprom1477
  %arrayidx1479 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx1478, i32 0, i64 %idxprom1476
  %521 = load i8, i8* %arrayidx1479, align 1
  %conv1480 = sext i8 %521 to i32
  %cmp1481 = icmp ne i32 %conv1480, 0
  br i1 %cmp1481, label %if.then.1483, label %if.end.1991

if.then.1483:                                     ; preds = %sw.epilog
  %522 = load %union.rec*, %union.rec** %g, align 8
  %cmp1484 = icmp eq %union.rec* %522, null
  br i1 %cmp1484, label %if.then.1486, label %if.else.1848

if.then.1486:                                     ; preds = %if.then.1483
  %523 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv1487 = zext i8 %523 to i32
  store i32 %conv1487, i32* @zz_size, align 4
  %conv1488 = sext i32 %conv1487 to i64
  %cmp1489 = icmp uge i64 %conv1488, 265
  br i1 %cmp1489, label %if.then.1491, label %if.else.1493

if.then.1491:                                     ; preds = %if.then.1486
  %524 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1492 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %524)
  br label %if.end.1510

if.else.1493:                                     ; preds = %if.then.1486
  %525 = load i32, i32* @zz_size, align 4
  %idxprom1494 = sext i32 %525 to i64
  %arrayidx1495 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1494
  %526 = load %union.rec*, %union.rec** %arrayidx1495, align 8
  %cmp1496 = icmp eq %union.rec* %526, null
  br i1 %cmp1496, label %if.then.1498, label %if.else.1500

if.then.1498:                                     ; preds = %if.else.1493
  %527 = load i32, i32* @zz_size, align 4
  %528 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1499 = call %union.rec* @GetMemory(i32 %527, %struct.FILE_POS* %528)
  store %union.rec* %call1499, %union.rec** @zz_hold, align 8
  br label %if.end.1509

if.else.1500:                                     ; preds = %if.else.1493
  %529 = load i32, i32* @zz_size, align 4
  %idxprom1501 = sext i32 %529 to i64
  %arrayidx1502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1501
  %530 = load %union.rec*, %union.rec** %arrayidx1502, align 8
  store %union.rec* %530, %union.rec** @zz_hold, align 8
  store %union.rec* %530, %union.rec** @zz_hold, align 8
  %531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11503 = bitcast %union.rec* %531 to %struct.word_type*
  %olist1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11503, i32 0, i32 0
  %arrayidx1505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1504, i32 0, i64 0
  %opred1506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1505, i32 0, i32 0
  %532 = load %union.rec*, %union.rec** %opred1506, align 8
  %533 = load i32, i32* @zz_size, align 4
  %idxprom1507 = sext i32 %533 to i64
  %arrayidx1508 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1507
  store %union.rec* %532, %union.rec** %arrayidx1508, align 8
  br label %if.end.1509

if.end.1509:                                      ; preds = %if.else.1500, %if.then.1498
  br label %if.end.1510

if.end.1510:                                      ; preds = %if.end.1509, %if.then.1491
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11511 = bitcast %union.rec* %534 to %struct.word_type*
  %ou11512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11511, i32 0, i32 1
  %os111513 = bitcast %union.FIRST_UNION* %ou11512 to %struct.anon*
  %otype1514 = getelementptr inbounds %struct.anon, %struct.anon* %os111513, i32 0, i32 0
  store i8 1, i8* %otype1514, align 1
  %535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11515 = bitcast %union.rec* %536 to %struct.word_type*
  %olist1516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11515, i32 0, i32 0
  %arrayidx1517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1516, i32 0, i64 1
  %osucc1518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1517, i32 0, i32 1
  store %union.rec* %535, %union.rec** %osucc1518, align 8
  %537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11519 = bitcast %union.rec* %537 to %struct.word_type*
  %olist1520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11519, i32 0, i32 0
  %arrayidx1521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1520, i32 0, i64 1
  %opred1522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1521, i32 0, i32 0
  store %union.rec* %535, %union.rec** %opred1522, align 8
  %538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11523 = bitcast %union.rec* %538 to %struct.word_type*
  %olist1524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11523, i32 0, i32 0
  %arrayidx1525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1524, i32 0, i64 0
  %osucc1526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1525, i32 0, i32 1
  store %union.rec* %535, %union.rec** %osucc1526, align 8
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11527 = bitcast %union.rec* %539 to %struct.word_type*
  %olist1528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11527, i32 0, i32 0
  %arrayidx1529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1528, i32 0, i64 0
  %opred1530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1529, i32 0, i32 0
  store %union.rec* %535, %union.rec** %opred1530, align 8
  store %union.rec* %535, %union.rec** %g, align 8
  %540 = load %union.rec*, %union.rec** %g, align 8
  %os11531 = bitcast %union.rec* %540 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11531, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  store i8 1, i8* %ohspace, align 1
  %541 = load %union.rec*, %union.rec** %g, align 8
  %os11532 = bitcast %union.rec* %541 to %struct.word_type*
  %ou21533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11532, i32 0, i32 2
  %os211534 = bitcast %union.SECOND_UNION* %ou21533 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os211534, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %542 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %542, i32 0, i32 2
  %543 = load i16, i16* %ofile_num, align 2
  %544 = load %union.rec*, %union.rec** %g, align 8
  %os11535 = bitcast %union.rec* %544 to %struct.word_type*
  %ou11536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11535, i32 0, i32 1
  %ofpos1537 = bitcast %union.FIRST_UNION* %ou11536 to %struct.FILE_POS*
  %ofile_num1538 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1537, i32 0, i32 2
  store i16 %543, i16* %ofile_num1538, align 2
  %545 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %545, i32 0, i32 3
  %bf.load1539 = load i32, i32* %oline_num, align 4
  %bf.clear1540 = and i32 %bf.load1539, 1048575
  %546 = load %union.rec*, %union.rec** %g, align 8
  %os11541 = bitcast %union.rec* %546 to %struct.word_type*
  %ou11542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11541, i32 0, i32 1
  %ofpos1543 = bitcast %union.FIRST_UNION* %ou11542 to %struct.FILE_POS*
  %oline_num1544 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1543, i32 0, i32 3
  %bf.load1545 = load i32, i32* %oline_num1544, align 4
  %bf.value1546 = and i32 %bf.clear1540, 1048575
  %bf.clear1547 = and i32 %bf.load1545, -1048576
  %bf.set1548 = or i32 %bf.clear1547, %bf.value1546
  store i32 %bf.set1548, i32* %oline_num1544, align 4
  %547 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %547, i32 0, i32 3
  %bf.load1549 = load i32, i32* %ocol_num, align 4
  %bf.lshr1550 = lshr i32 %bf.load1549, 20
  %548 = load %union.rec*, %union.rec** %g, align 8
  %os11551 = bitcast %union.rec* %548 to %struct.word_type*
  %ou11552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11551, i32 0, i32 1
  %ofpos1553 = bitcast %union.FIRST_UNION* %ou11552 to %struct.FILE_POS*
  %ocol_num1554 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1553, i32 0, i32 3
  %bf.load1555 = load i32, i32* %ocol_num1554, align 4
  %bf.value1556 = and i32 %bf.lshr1550, 4095
  %bf.shl1557 = shl i32 %bf.value1556, 20
  %bf.clear1558 = and i32 %bf.load1555, 1048575
  %bf.set1559 = or i32 %bf.clear1558, %bf.shl1557
  store i32 %bf.set1559, i32* %ocol_num1554, align 4
  %549 = load %union.rec*, %union.rec** %g, align 8
  %os51560 = bitcast %union.rec* %549 to %struct.gapobj_type*
  %ogap1561 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51560, i32 0, i32 3
  %550 = bitcast %struct.GAP* %ogap1561 to i16*
  %bf.load1562 = load i16, i16* %550, align 4
  %bf.clear1563 = and i16 %bf.load1562, -129
  store i16 %bf.clear1563, i16* %550, align 4
  %551 = load %union.rec*, %union.rec** %g, align 8
  %os51564 = bitcast %union.rec* %551 to %struct.gapobj_type*
  %ogap1565 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51564, i32 0, i32 3
  %552 = bitcast %struct.GAP* %ogap1565 to i16*
  %bf.load1566 = load i16, i16* %552, align 4
  %bf.clear1567 = and i16 %bf.load1566, -257
  store i16 %bf.clear1567, i16* %552, align 4
  %553 = load %union.rec*, %union.rec** %g, align 8
  %os51568 = bitcast %union.rec* %553 to %struct.gapobj_type*
  %ogap1569 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51568, i32 0, i32 3
  %554 = bitcast %struct.GAP* %ogap1569 to i16*
  %bf.load1570 = load i16, i16* %554, align 4
  %bf.clear1571 = and i16 %bf.load1570, -513
  %bf.set1572 = or i16 %bf.clear1571, 512
  store i16 %bf.set1572, i16* %554, align 4
  %555 = load %union.rec*, %union.rec** %g, align 8
  %os51573 = bitcast %union.rec* %555 to %struct.gapobj_type*
  %ogap1574 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51573, i32 0, i32 3
  %556 = bitcast %struct.GAP* %ogap1574 to i16*
  %bf.load1575 = load i16, i16* %556, align 4
  %bf.clear1576 = and i16 %bf.load1575, -7169
  %bf.set1577 = or i16 %bf.clear1576, 1024
  store i16 %bf.set1577, i16* %556, align 4
  %557 = load %union.rec*, %union.rec** %g, align 8
  %os51578 = bitcast %union.rec* %557 to %struct.gapobj_type*
  %ogap1579 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51578, i32 0, i32 3
  %558 = bitcast %struct.GAP* %ogap1579 to i16*
  %bf.load1580 = load i16, i16* %558, align 4
  %bf.clear1581 = and i16 %bf.load1580, 8191
  %bf.set1582 = or i16 %bf.clear1581, 8192
  store i16 %bf.set1582, i16* %558, align 4
  %559 = load %union.rec*, %union.rec** %res, align 8
  %os21583 = bitcast %union.rec* %559 to %struct.closure_type*
  %ou41584 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21583, i32 0, i32 4
  %osave_style1585 = bitcast %union.FOURTH_UNION* %ou41584 to %struct.STYLE*
  %osu21586 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1585, i32 0, i32 1
  %ospace_gap1587 = bitcast %union.anon.10* %osu21586 to %struct.GAP*
  %owidth1588 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap1587, i32 0, i32 1
  %560 = load i16, i16* %owidth1588, align 2
  %561 = load %union.rec*, %union.rec** %g, align 8
  %os51589 = bitcast %union.rec* %561 to %struct.gapobj_type*
  %ogap1590 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51589, i32 0, i32 3
  %owidth1591 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap1590, i32 0, i32 1
  store i16 %560, i16* %owidth1591, align 2
  %562 = load %union.rec*, %union.rec** %g, align 8
  %os11592 = bitcast %union.rec* %562 to %struct.word_type*
  %ou11593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11592, i32 0, i32 1
  %ofpos1594 = bitcast %union.FIRST_UNION* %ou11593 to %struct.FILE_POS*
  %call1595 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %ofpos1594)
  store %union.rec* %call1595, %union.rec** %tmp, align 8
  %563 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1596 = zext i8 %563 to i32
  store i32 %conv1596, i32* @zz_size, align 4
  %conv1597 = sext i32 %conv1596 to i64
  %cmp1598 = icmp uge i64 %conv1597, 265
  br i1 %cmp1598, label %if.then.1600, label %if.else.1602

if.then.1600:                                     ; preds = %if.end.1510
  %564 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1601 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %564)
  br label %if.end.1619

if.else.1602:                                     ; preds = %if.end.1510
  %565 = load i32, i32* @zz_size, align 4
  %idxprom1603 = sext i32 %565 to i64
  %arrayidx1604 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1603
  %566 = load %union.rec*, %union.rec** %arrayidx1604, align 8
  %cmp1605 = icmp eq %union.rec* %566, null
  br i1 %cmp1605, label %if.then.1607, label %if.else.1609

if.then.1607:                                     ; preds = %if.else.1602
  %567 = load i32, i32* @zz_size, align 4
  %568 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1608 = call %union.rec* @GetMemory(i32 %567, %struct.FILE_POS* %568)
  store %union.rec* %call1608, %union.rec** @zz_hold, align 8
  br label %if.end.1618

if.else.1609:                                     ; preds = %if.else.1602
  %569 = load i32, i32* @zz_size, align 4
  %idxprom1610 = sext i32 %569 to i64
  %arrayidx1611 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1610
  %570 = load %union.rec*, %union.rec** %arrayidx1611, align 8
  store %union.rec* %570, %union.rec** @zz_hold, align 8
  store %union.rec* %570, %union.rec** @zz_hold, align 8
  %571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11612 = bitcast %union.rec* %571 to %struct.word_type*
  %olist1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11612, i32 0, i32 0
  %arrayidx1614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1613, i32 0, i64 0
  %opred1615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1614, i32 0, i32 0
  %572 = load %union.rec*, %union.rec** %opred1615, align 8
  %573 = load i32, i32* @zz_size, align 4
  %idxprom1616 = sext i32 %573 to i64
  %arrayidx1617 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1616
  store %union.rec* %572, %union.rec** %arrayidx1617, align 8
  br label %if.end.1618

if.end.1618:                                      ; preds = %if.else.1609, %if.then.1607
  br label %if.end.1619

if.end.1619:                                      ; preds = %if.end.1618, %if.then.1600
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11620 = bitcast %union.rec* %574 to %struct.word_type*
  %ou11621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11620, i32 0, i32 1
  %os111622 = bitcast %union.FIRST_UNION* %ou11621 to %struct.anon*
  %otype1623 = getelementptr inbounds %struct.anon, %struct.anon* %os111622, i32 0, i32 0
  store i8 0, i8* %otype1623, align 1
  %575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11624 = bitcast %union.rec* %576 to %struct.word_type*
  %olist1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11624, i32 0, i32 0
  %arrayidx1626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1625, i32 0, i64 1
  %osucc1627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1626, i32 0, i32 1
  store %union.rec* %575, %union.rec** %osucc1627, align 8
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11628 = bitcast %union.rec* %577 to %struct.word_type*
  %olist1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11628, i32 0, i32 0
  %arrayidx1630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1629, i32 0, i64 1
  %opred1631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1630, i32 0, i32 0
  store %union.rec* %575, %union.rec** %opred1631, align 8
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11632 = bitcast %union.rec* %578 to %struct.word_type*
  %olist1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11632, i32 0, i32 0
  %arrayidx1634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1633, i32 0, i64 0
  %osucc1635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1634, i32 0, i32 1
  store %union.rec* %575, %union.rec** %osucc1635, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11636 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11636, i32 0, i32 0
  %arrayidx1638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1637, i32 0, i64 0
  %opred1639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1638, i32 0, i32 0
  store %union.rec* %575, %union.rec** %opred1639, align 8
  store %union.rec* %575, %union.rec** @xx_link, align 8
  %580 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %580, %union.rec** @zz_res, align 8
  %581 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %581, %union.rec** @zz_hold, align 8
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1640 = icmp eq %union.rec* %582, null
  br i1 %cmp1640, label %cond.true.1642, label %cond.false.1643

cond.true.1642:                                   ; preds = %if.end.1619
  %583 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1678

cond.false.1643:                                  ; preds = %if.end.1619
  %584 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1644 = icmp eq %union.rec* %584, null
  br i1 %cmp1644, label %cond.true.1646, label %cond.false.1647

cond.true.1646:                                   ; preds = %cond.false.1643
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1676

cond.false.1647:                                  ; preds = %cond.false.1643
  %586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11648 = bitcast %union.rec* %586 to %struct.word_type*
  %olist1649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11648, i32 0, i32 0
  %arrayidx1650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1649, i32 0, i64 0
  %opred1651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1650, i32 0, i32 0
  %587 = load %union.rec*, %union.rec** %opred1651, align 8
  store %union.rec* %587, %union.rec** @zz_tmp, align 8
  %588 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11652 = bitcast %union.rec* %588 to %struct.word_type*
  %olist1653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11652, i32 0, i32 0
  %arrayidx1654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1653, i32 0, i64 0
  %opred1655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1654, i32 0, i32 0
  %589 = load %union.rec*, %union.rec** %opred1655, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11656 = bitcast %union.rec* %590 to %struct.word_type*
  %olist1657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11656, i32 0, i32 0
  %arrayidx1658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1657, i32 0, i64 0
  %opred1659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1658, i32 0, i32 0
  store %union.rec* %589, %union.rec** %opred1659, align 8
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %592 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11660 = bitcast %union.rec* %592 to %struct.word_type*
  %olist1661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11660, i32 0, i32 0
  %arrayidx1662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1661, i32 0, i64 0
  %opred1663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1662, i32 0, i32 0
  %593 = load %union.rec*, %union.rec** %opred1663, align 8
  %os11664 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11664, i32 0, i32 0
  %arrayidx1666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1665, i32 0, i64 0
  %osucc1667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1666, i32 0, i32 1
  store %union.rec* %591, %union.rec** %osucc1667, align 8
  %594 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %595 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11668 = bitcast %union.rec* %595 to %struct.word_type*
  %olist1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11668, i32 0, i32 0
  %arrayidx1670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1669, i32 0, i64 0
  %opred1671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1670, i32 0, i32 0
  store %union.rec* %594, %union.rec** %opred1671, align 8
  %596 = load %union.rec*, %union.rec** @zz_res, align 8
  %597 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11672 = bitcast %union.rec* %597 to %struct.word_type*
  %olist1673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11672, i32 0, i32 0
  %arrayidx1674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1673, i32 0, i64 0
  %osucc1675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1674, i32 0, i32 1
  store %union.rec* %596, %union.rec** %osucc1675, align 8
  br label %cond.end.1676

cond.end.1676:                                    ; preds = %cond.false.1647, %cond.true.1646
  %cond1677 = phi %union.rec* [ %585, %cond.true.1646 ], [ %596, %cond.false.1647 ]
  br label %cond.end.1678

cond.end.1678:                                    ; preds = %cond.end.1676, %cond.true.1642
  %cond1679 = phi %union.rec* [ %583, %cond.true.1642 ], [ %cond1677, %cond.end.1676 ]
  %598 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %598, %union.rec** @zz_res, align 8
  %599 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %599, %union.rec** @zz_hold, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1680 = icmp eq %union.rec* %600, null
  br i1 %cmp1680, label %cond.true.1682, label %cond.false.1683

cond.true.1682:                                   ; preds = %cond.end.1678
  %601 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1718

cond.false.1683:                                  ; preds = %cond.end.1678
  %602 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1684 = icmp eq %union.rec* %602, null
  br i1 %cmp1684, label %cond.true.1686, label %cond.false.1687

cond.true.1686:                                   ; preds = %cond.false.1683
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1716

cond.false.1687:                                  ; preds = %cond.false.1683
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11688 = bitcast %union.rec* %604 to %struct.word_type*
  %olist1689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11688, i32 0, i32 0
  %arrayidx1690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1689, i32 0, i64 1
  %opred1691 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1690, i32 0, i32 0
  %605 = load %union.rec*, %union.rec** %opred1691, align 8
  store %union.rec* %605, %union.rec** @zz_tmp, align 8
  %606 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11692 = bitcast %union.rec* %606 to %struct.word_type*
  %olist1693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11692, i32 0, i32 0
  %arrayidx1694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1693, i32 0, i64 1
  %opred1695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1694, i32 0, i32 0
  %607 = load %union.rec*, %union.rec** %opred1695, align 8
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11696 = bitcast %union.rec* %608 to %struct.word_type*
  %olist1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11696, i32 0, i32 0
  %arrayidx1698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1697, i32 0, i64 1
  %opred1699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1698, i32 0, i32 0
  store %union.rec* %607, %union.rec** %opred1699, align 8
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %610 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11700 = bitcast %union.rec* %610 to %struct.word_type*
  %olist1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11700, i32 0, i32 0
  %arrayidx1702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1701, i32 0, i64 1
  %opred1703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1702, i32 0, i32 0
  %611 = load %union.rec*, %union.rec** %opred1703, align 8
  %os11704 = bitcast %union.rec* %611 to %struct.word_type*
  %olist1705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11704, i32 0, i32 0
  %arrayidx1706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1705, i32 0, i64 1
  %osucc1707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1706, i32 0, i32 1
  store %union.rec* %609, %union.rec** %osucc1707, align 8
  %612 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11708 = bitcast %union.rec* %613 to %struct.word_type*
  %olist1709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11708, i32 0, i32 0
  %arrayidx1710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1709, i32 0, i64 1
  %opred1711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1710, i32 0, i32 0
  store %union.rec* %612, %union.rec** %opred1711, align 8
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  %615 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11712 = bitcast %union.rec* %615 to %struct.word_type*
  %olist1713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11712, i32 0, i32 0
  %arrayidx1714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1713, i32 0, i64 1
  %osucc1715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1714, i32 0, i32 1
  store %union.rec* %614, %union.rec** %osucc1715, align 8
  br label %cond.end.1716

cond.end.1716:                                    ; preds = %cond.false.1687, %cond.true.1686
  %cond1717 = phi %union.rec* [ %603, %cond.true.1686 ], [ %614, %cond.false.1687 ]
  br label %cond.end.1718

cond.end.1718:                                    ; preds = %cond.end.1716, %cond.true.1682
  %cond1719 = phi %union.rec* [ %601, %cond.true.1682 ], [ %cond1717, %cond.end.1716 ]
  %616 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1720 = zext i8 %616 to i32
  store i32 %conv1720, i32* @zz_size, align 4
  %conv1721 = sext i32 %conv1720 to i64
  %cmp1722 = icmp uge i64 %conv1721, 265
  br i1 %cmp1722, label %if.then.1724, label %if.else.1726

if.then.1724:                                     ; preds = %cond.end.1718
  %617 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1725 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %617)
  br label %if.end.1743

if.else.1726:                                     ; preds = %cond.end.1718
  %618 = load i32, i32* @zz_size, align 4
  %idxprom1727 = sext i32 %618 to i64
  %arrayidx1728 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1727
  %619 = load %union.rec*, %union.rec** %arrayidx1728, align 8
  %cmp1729 = icmp eq %union.rec* %619, null
  br i1 %cmp1729, label %if.then.1731, label %if.else.1733

if.then.1731:                                     ; preds = %if.else.1726
  %620 = load i32, i32* @zz_size, align 4
  %621 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1732 = call %union.rec* @GetMemory(i32 %620, %struct.FILE_POS* %621)
  store %union.rec* %call1732, %union.rec** @zz_hold, align 8
  br label %if.end.1742

if.else.1733:                                     ; preds = %if.else.1726
  %622 = load i32, i32* @zz_size, align 4
  %idxprom1734 = sext i32 %622 to i64
  %arrayidx1735 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1734
  %623 = load %union.rec*, %union.rec** %arrayidx1735, align 8
  store %union.rec* %623, %union.rec** @zz_hold, align 8
  store %union.rec* %623, %union.rec** @zz_hold, align 8
  %624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11736 = bitcast %union.rec* %624 to %struct.word_type*
  %olist1737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11736, i32 0, i32 0
  %arrayidx1738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1737, i32 0, i64 0
  %opred1739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1738, i32 0, i32 0
  %625 = load %union.rec*, %union.rec** %opred1739, align 8
  %626 = load i32, i32* @zz_size, align 4
  %idxprom1740 = sext i32 %626 to i64
  %arrayidx1741 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1740
  store %union.rec* %625, %union.rec** %arrayidx1741, align 8
  br label %if.end.1742

if.end.1742:                                      ; preds = %if.else.1733, %if.then.1731
  br label %if.end.1743

if.end.1743:                                      ; preds = %if.end.1742, %if.then.1724
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11744 = bitcast %union.rec* %627 to %struct.word_type*
  %ou11745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11744, i32 0, i32 1
  %os111746 = bitcast %union.FIRST_UNION* %ou11745 to %struct.anon*
  %otype1747 = getelementptr inbounds %struct.anon, %struct.anon* %os111746, i32 0, i32 0
  store i8 0, i8* %otype1747, align 1
  %628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11748 = bitcast %union.rec* %629 to %struct.word_type*
  %olist1749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11748, i32 0, i32 0
  %arrayidx1750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1749, i32 0, i64 1
  %osucc1751 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1750, i32 0, i32 1
  store %union.rec* %628, %union.rec** %osucc1751, align 8
  %630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11752 = bitcast %union.rec* %630 to %struct.word_type*
  %olist1753 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11752, i32 0, i32 0
  %arrayidx1754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1753, i32 0, i64 1
  %opred1755 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1754, i32 0, i32 0
  store %union.rec* %628, %union.rec** %opred1755, align 8
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11756 = bitcast %union.rec* %631 to %struct.word_type*
  %olist1757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11756, i32 0, i32 0
  %arrayidx1758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1757, i32 0, i64 0
  %osucc1759 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1758, i32 0, i32 1
  store %union.rec* %628, %union.rec** %osucc1759, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11760 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11760, i32 0, i32 0
  %arrayidx1762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1761, i32 0, i64 0
  %opred1763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1762, i32 0, i32 0
  store %union.rec* %628, %union.rec** %opred1763, align 8
  store %union.rec* %628, %union.rec** @xx_link, align 8
  %633 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %633, %union.rec** @zz_res, align 8
  %634 = load %union.rec*, %union.rec** %res, align 8
  %os11764 = bitcast %union.rec* %634 to %struct.word_type*
  %olist1765 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11764, i32 0, i32 0
  %arrayidx1766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1765, i32 0, i64 0
  %osucc1767 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1766, i32 0, i32 1
  %635 = load %union.rec*, %union.rec** %osucc1767, align 8
  store %union.rec* %635, %union.rec** @zz_hold, align 8
  %636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1768 = icmp eq %union.rec* %636, null
  br i1 %cmp1768, label %cond.true.1770, label %cond.false.1771

cond.true.1770:                                   ; preds = %if.end.1743
  %637 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1806

cond.false.1771:                                  ; preds = %if.end.1743
  %638 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1772 = icmp eq %union.rec* %638, null
  br i1 %cmp1772, label %cond.true.1774, label %cond.false.1775

cond.true.1774:                                   ; preds = %cond.false.1771
  %639 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1804

cond.false.1775:                                  ; preds = %cond.false.1771
  %640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11776 = bitcast %union.rec* %640 to %struct.word_type*
  %olist1777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11776, i32 0, i32 0
  %arrayidx1778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1777, i32 0, i64 0
  %opred1779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1778, i32 0, i32 0
  %641 = load %union.rec*, %union.rec** %opred1779, align 8
  store %union.rec* %641, %union.rec** @zz_tmp, align 8
  %642 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11780 = bitcast %union.rec* %642 to %struct.word_type*
  %olist1781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11780, i32 0, i32 0
  %arrayidx1782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1781, i32 0, i64 0
  %opred1783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1782, i32 0, i32 0
  %643 = load %union.rec*, %union.rec** %opred1783, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11784 = bitcast %union.rec* %644 to %struct.word_type*
  %olist1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11784, i32 0, i32 0
  %arrayidx1786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1785, i32 0, i64 0
  %opred1787 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1786, i32 0, i32 0
  store %union.rec* %643, %union.rec** %opred1787, align 8
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %646 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11788 = bitcast %union.rec* %646 to %struct.word_type*
  %olist1789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11788, i32 0, i32 0
  %arrayidx1790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1789, i32 0, i64 0
  %opred1791 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1790, i32 0, i32 0
  %647 = load %union.rec*, %union.rec** %opred1791, align 8
  %os11792 = bitcast %union.rec* %647 to %struct.word_type*
  %olist1793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11792, i32 0, i32 0
  %arrayidx1794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1793, i32 0, i64 0
  %osucc1795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1794, i32 0, i32 1
  store %union.rec* %645, %union.rec** %osucc1795, align 8
  %648 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %649 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11796 = bitcast %union.rec* %649 to %struct.word_type*
  %olist1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11796, i32 0, i32 0
  %arrayidx1798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1797, i32 0, i64 0
  %opred1799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1798, i32 0, i32 0
  store %union.rec* %648, %union.rec** %opred1799, align 8
  %650 = load %union.rec*, %union.rec** @zz_res, align 8
  %651 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11800 = bitcast %union.rec* %651 to %struct.word_type*
  %olist1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11800, i32 0, i32 0
  %arrayidx1802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1801, i32 0, i64 0
  %osucc1803 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1802, i32 0, i32 1
  store %union.rec* %650, %union.rec** %osucc1803, align 8
  br label %cond.end.1804

cond.end.1804:                                    ; preds = %cond.false.1775, %cond.true.1774
  %cond1805 = phi %union.rec* [ %639, %cond.true.1774 ], [ %650, %cond.false.1775 ]
  br label %cond.end.1806

cond.end.1806:                                    ; preds = %cond.end.1804, %cond.true.1770
  %cond1807 = phi %union.rec* [ %637, %cond.true.1770 ], [ %cond1805, %cond.end.1804 ]
  %652 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %652, %union.rec** @zz_res, align 8
  %653 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %653, %union.rec** @zz_hold, align 8
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1808 = icmp eq %union.rec* %654, null
  br i1 %cmp1808, label %cond.true.1810, label %cond.false.1811

cond.true.1810:                                   ; preds = %cond.end.1806
  %655 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1846

cond.false.1811:                                  ; preds = %cond.end.1806
  %656 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1812 = icmp eq %union.rec* %656, null
  br i1 %cmp1812, label %cond.true.1814, label %cond.false.1815

cond.true.1814:                                   ; preds = %cond.false.1811
  %657 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1844

cond.false.1815:                                  ; preds = %cond.false.1811
  %658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11816 = bitcast %union.rec* %658 to %struct.word_type*
  %olist1817 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11816, i32 0, i32 0
  %arrayidx1818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1817, i32 0, i64 1
  %opred1819 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1818, i32 0, i32 0
  %659 = load %union.rec*, %union.rec** %opred1819, align 8
  store %union.rec* %659, %union.rec** @zz_tmp, align 8
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11820 = bitcast %union.rec* %660 to %struct.word_type*
  %olist1821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11820, i32 0, i32 0
  %arrayidx1822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1821, i32 0, i64 1
  %opred1823 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1822, i32 0, i32 0
  %661 = load %union.rec*, %union.rec** %opred1823, align 8
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11824 = bitcast %union.rec* %662 to %struct.word_type*
  %olist1825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11824, i32 0, i32 0
  %arrayidx1826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1825, i32 0, i64 1
  %opred1827 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1826, i32 0, i32 0
  store %union.rec* %661, %union.rec** %opred1827, align 8
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %664 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11828 = bitcast %union.rec* %664 to %struct.word_type*
  %olist1829 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11828, i32 0, i32 0
  %arrayidx1830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1829, i32 0, i64 1
  %opred1831 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1830, i32 0, i32 0
  %665 = load %union.rec*, %union.rec** %opred1831, align 8
  %os11832 = bitcast %union.rec* %665 to %struct.word_type*
  %olist1833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11832, i32 0, i32 0
  %arrayidx1834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1833, i32 0, i64 1
  %osucc1835 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1834, i32 0, i32 1
  store %union.rec* %663, %union.rec** %osucc1835, align 8
  %666 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %667 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11836 = bitcast %union.rec* %667 to %struct.word_type*
  %olist1837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11836, i32 0, i32 0
  %arrayidx1838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1837, i32 0, i64 1
  %opred1839 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1838, i32 0, i32 0
  store %union.rec* %666, %union.rec** %opred1839, align 8
  %668 = load %union.rec*, %union.rec** @zz_res, align 8
  %669 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11840 = bitcast %union.rec* %669 to %struct.word_type*
  %olist1841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11840, i32 0, i32 0
  %arrayidx1842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1841, i32 0, i64 1
  %osucc1843 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1842, i32 0, i32 1
  store %union.rec* %668, %union.rec** %osucc1843, align 8
  br label %cond.end.1844

cond.end.1844:                                    ; preds = %cond.false.1815, %cond.true.1814
  %cond1845 = phi %union.rec* [ %657, %cond.true.1814 ], [ %668, %cond.false.1815 ]
  br label %cond.end.1846

cond.end.1846:                                    ; preds = %cond.end.1844, %cond.true.1810
  %cond1847 = phi %union.rec* [ %655, %cond.true.1810 ], [ %cond1845, %cond.end.1844 ]
  br label %if.end.1990

if.else.1848:                                     ; preds = %if.then.1483
  %670 = load %union.rec*, %union.rec** %g, align 8
  %os11849 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11849, i32 0, i32 0
  %arrayidx1851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1850, i32 0, i64 1
  %osucc1852 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1851, i32 0, i32 1
  %671 = load %union.rec*, %union.rec** %osucc1852, align 8
  %672 = load %union.rec*, %union.rec** %g, align 8
  %os11853 = bitcast %union.rec* %672 to %struct.word_type*
  %olist1854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11853, i32 0, i32 0
  %arrayidx1855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1854, i32 0, i64 1
  %opred1856 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1855, i32 0, i32 0
  %673 = load %union.rec*, %union.rec** %opred1856, align 8
  %cmp1857 = icmp eq %union.rec* %671, %673
  br i1 %cmp1857, label %if.end.1861, label %if.then.1859

if.then.1859:                                     ; preds = %if.else.1848
  %674 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1860 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %674, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.1861

if.end.1861:                                      ; preds = %if.then.1859, %if.else.1848
  %675 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1862 = zext i8 %675 to i32
  store i32 %conv1862, i32* @zz_size, align 4
  %conv1863 = sext i32 %conv1862 to i64
  %cmp1864 = icmp uge i64 %conv1863, 265
  br i1 %cmp1864, label %if.then.1866, label %if.else.1868

if.then.1866:                                     ; preds = %if.end.1861
  %676 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1867 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %676)
  br label %if.end.1885

if.else.1868:                                     ; preds = %if.end.1861
  %677 = load i32, i32* @zz_size, align 4
  %idxprom1869 = sext i32 %677 to i64
  %arrayidx1870 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1869
  %678 = load %union.rec*, %union.rec** %arrayidx1870, align 8
  %cmp1871 = icmp eq %union.rec* %678, null
  br i1 %cmp1871, label %if.then.1873, label %if.else.1875

if.then.1873:                                     ; preds = %if.else.1868
  %679 = load i32, i32* @zz_size, align 4
  %680 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1874 = call %union.rec* @GetMemory(i32 %679, %struct.FILE_POS* %680)
  store %union.rec* %call1874, %union.rec** @zz_hold, align 8
  br label %if.end.1884

if.else.1875:                                     ; preds = %if.else.1868
  %681 = load i32, i32* @zz_size, align 4
  %idxprom1876 = sext i32 %681 to i64
  %arrayidx1877 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1876
  %682 = load %union.rec*, %union.rec** %arrayidx1877, align 8
  store %union.rec* %682, %union.rec** @zz_hold, align 8
  store %union.rec* %682, %union.rec** @zz_hold, align 8
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11878 = bitcast %union.rec* %683 to %struct.word_type*
  %olist1879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11878, i32 0, i32 0
  %arrayidx1880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1879, i32 0, i64 0
  %opred1881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1880, i32 0, i32 0
  %684 = load %union.rec*, %union.rec** %opred1881, align 8
  %685 = load i32, i32* @zz_size, align 4
  %idxprom1882 = sext i32 %685 to i64
  %arrayidx1883 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1882
  store %union.rec* %684, %union.rec** %arrayidx1883, align 8
  br label %if.end.1884

if.end.1884:                                      ; preds = %if.else.1875, %if.then.1873
  br label %if.end.1885

if.end.1885:                                      ; preds = %if.end.1884, %if.then.1866
  %686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11886 = bitcast %union.rec* %686 to %struct.word_type*
  %ou11887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11886, i32 0, i32 1
  %os111888 = bitcast %union.FIRST_UNION* %ou11887 to %struct.anon*
  %otype1889 = getelementptr inbounds %struct.anon, %struct.anon* %os111888, i32 0, i32 0
  store i8 0, i8* %otype1889, align 1
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11890 = bitcast %union.rec* %688 to %struct.word_type*
  %olist1891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11890, i32 0, i32 0
  %arrayidx1892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1891, i32 0, i64 1
  %osucc1893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1892, i32 0, i32 1
  store %union.rec* %687, %union.rec** %osucc1893, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11894 = bitcast %union.rec* %689 to %struct.word_type*
  %olist1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11894, i32 0, i32 0
  %arrayidx1896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1895, i32 0, i64 1
  %opred1897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1896, i32 0, i32 0
  store %union.rec* %687, %union.rec** %opred1897, align 8
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11898 = bitcast %union.rec* %690 to %struct.word_type*
  %olist1899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11898, i32 0, i32 0
  %arrayidx1900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1899, i32 0, i64 0
  %osucc1901 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1900, i32 0, i32 1
  store %union.rec* %687, %union.rec** %osucc1901, align 8
  %691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11902 = bitcast %union.rec* %691 to %struct.word_type*
  %olist1903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11902, i32 0, i32 0
  %arrayidx1904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1903, i32 0, i64 0
  %opred1905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1904, i32 0, i32 0
  store %union.rec* %687, %union.rec** %opred1905, align 8
  store %union.rec* %687, %union.rec** @xx_link, align 8
  %692 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %692, %union.rec** @zz_res, align 8
  %693 = load %union.rec*, %union.rec** %res, align 8
  %os11906 = bitcast %union.rec* %693 to %struct.word_type*
  %olist1907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11906, i32 0, i32 0
  %arrayidx1908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1907, i32 0, i64 0
  %osucc1909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1908, i32 0, i32 1
  %694 = load %union.rec*, %union.rec** %osucc1909, align 8
  store %union.rec* %694, %union.rec** @zz_hold, align 8
  %695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1910 = icmp eq %union.rec* %695, null
  br i1 %cmp1910, label %cond.true.1912, label %cond.false.1913

cond.true.1912:                                   ; preds = %if.end.1885
  %696 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1948

cond.false.1913:                                  ; preds = %if.end.1885
  %697 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1914 = icmp eq %union.rec* %697, null
  br i1 %cmp1914, label %cond.true.1916, label %cond.false.1917

cond.true.1916:                                   ; preds = %cond.false.1913
  %698 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1946

cond.false.1917:                                  ; preds = %cond.false.1913
  %699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11918 = bitcast %union.rec* %699 to %struct.word_type*
  %olist1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11918, i32 0, i32 0
  %arrayidx1920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1919, i32 0, i64 0
  %opred1921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1920, i32 0, i32 0
  %700 = load %union.rec*, %union.rec** %opred1921, align 8
  store %union.rec* %700, %union.rec** @zz_tmp, align 8
  %701 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11922 = bitcast %union.rec* %701 to %struct.word_type*
  %olist1923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11922, i32 0, i32 0
  %arrayidx1924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1923, i32 0, i64 0
  %opred1925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1924, i32 0, i32 0
  %702 = load %union.rec*, %union.rec** %opred1925, align 8
  %703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11926 = bitcast %union.rec* %703 to %struct.word_type*
  %olist1927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11926, i32 0, i32 0
  %arrayidx1928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1927, i32 0, i64 0
  %opred1929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1928, i32 0, i32 0
  store %union.rec* %702, %union.rec** %opred1929, align 8
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %705 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11930 = bitcast %union.rec* %705 to %struct.word_type*
  %olist1931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11930, i32 0, i32 0
  %arrayidx1932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1931, i32 0, i64 0
  %opred1933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1932, i32 0, i32 0
  %706 = load %union.rec*, %union.rec** %opred1933, align 8
  %os11934 = bitcast %union.rec* %706 to %struct.word_type*
  %olist1935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11934, i32 0, i32 0
  %arrayidx1936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1935, i32 0, i64 0
  %osucc1937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1936, i32 0, i32 1
  store %union.rec* %704, %union.rec** %osucc1937, align 8
  %707 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %708 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11938 = bitcast %union.rec* %708 to %struct.word_type*
  %olist1939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11938, i32 0, i32 0
  %arrayidx1940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1939, i32 0, i64 0
  %opred1941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1940, i32 0, i32 0
  store %union.rec* %707, %union.rec** %opred1941, align 8
  %709 = load %union.rec*, %union.rec** @zz_res, align 8
  %710 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11942 = bitcast %union.rec* %710 to %struct.word_type*
  %olist1943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11942, i32 0, i32 0
  %arrayidx1944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1943, i32 0, i64 0
  %osucc1945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1944, i32 0, i32 1
  store %union.rec* %709, %union.rec** %osucc1945, align 8
  br label %cond.end.1946

cond.end.1946:                                    ; preds = %cond.false.1917, %cond.true.1916
  %cond1947 = phi %union.rec* [ %698, %cond.true.1916 ], [ %709, %cond.false.1917 ]
  br label %cond.end.1948

cond.end.1948:                                    ; preds = %cond.end.1946, %cond.true.1912
  %cond1949 = phi %union.rec* [ %696, %cond.true.1912 ], [ %cond1947, %cond.end.1946 ]
  %711 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %711, %union.rec** @zz_res, align 8
  %712 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %712, %union.rec** @zz_hold, align 8
  %713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1950 = icmp eq %union.rec* %713, null
  br i1 %cmp1950, label %cond.true.1952, label %cond.false.1953

cond.true.1952:                                   ; preds = %cond.end.1948
  %714 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1988

cond.false.1953:                                  ; preds = %cond.end.1948
  %715 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1954 = icmp eq %union.rec* %715, null
  br i1 %cmp1954, label %cond.true.1956, label %cond.false.1957

cond.true.1956:                                   ; preds = %cond.false.1953
  %716 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1986

cond.false.1957:                                  ; preds = %cond.false.1953
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11958 = bitcast %union.rec* %717 to %struct.word_type*
  %olist1959 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11958, i32 0, i32 0
  %arrayidx1960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1959, i32 0, i64 1
  %opred1961 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1960, i32 0, i32 0
  %718 = load %union.rec*, %union.rec** %opred1961, align 8
  store %union.rec* %718, %union.rec** @zz_tmp, align 8
  %719 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11962 = bitcast %union.rec* %719 to %struct.word_type*
  %olist1963 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11962, i32 0, i32 0
  %arrayidx1964 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1963, i32 0, i64 1
  %opred1965 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1964, i32 0, i32 0
  %720 = load %union.rec*, %union.rec** %opred1965, align 8
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11966 = bitcast %union.rec* %721 to %struct.word_type*
  %olist1967 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11966, i32 0, i32 0
  %arrayidx1968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1967, i32 0, i64 1
  %opred1969 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1968, i32 0, i32 0
  store %union.rec* %720, %union.rec** %opred1969, align 8
  %722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %723 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11970 = bitcast %union.rec* %723 to %struct.word_type*
  %olist1971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11970, i32 0, i32 0
  %arrayidx1972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1971, i32 0, i64 1
  %opred1973 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1972, i32 0, i32 0
  %724 = load %union.rec*, %union.rec** %opred1973, align 8
  %os11974 = bitcast %union.rec* %724 to %struct.word_type*
  %olist1975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11974, i32 0, i32 0
  %arrayidx1976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1975, i32 0, i64 1
  %osucc1977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1976, i32 0, i32 1
  store %union.rec* %722, %union.rec** %osucc1977, align 8
  %725 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %726 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11978 = bitcast %union.rec* %726 to %struct.word_type*
  %olist1979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11978, i32 0, i32 0
  %arrayidx1980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1979, i32 0, i64 1
  %opred1981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1980, i32 0, i32 0
  store %union.rec* %725, %union.rec** %opred1981, align 8
  %727 = load %union.rec*, %union.rec** @zz_res, align 8
  %728 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11982 = bitcast %union.rec* %728 to %struct.word_type*
  %olist1983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11982, i32 0, i32 0
  %arrayidx1984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1983, i32 0, i64 1
  %osucc1985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1984, i32 0, i32 1
  store %union.rec* %727, %union.rec** %osucc1985, align 8
  br label %cond.end.1986

cond.end.1986:                                    ; preds = %cond.false.1957, %cond.true.1956
  %cond1987 = phi %union.rec* [ %716, %cond.true.1956 ], [ %727, %cond.false.1957 ]
  br label %cond.end.1988

cond.end.1988:                                    ; preds = %cond.end.1986, %cond.true.1952
  %cond1989 = phi %union.rec* [ %714, %cond.true.1952 ], [ %cond1987, %cond.end.1986 ]
  br label %if.end.1990

if.end.1990:                                      ; preds = %cond.end.1988, %cond.end.1846
  br label %if.end.1991

if.end.1991:                                      ; preds = %if.end.1990, %sw.epilog
  br label %for.cond.1060

for.end.1992:                                     ; preds = %for.cond.1060
  %729 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %729
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
