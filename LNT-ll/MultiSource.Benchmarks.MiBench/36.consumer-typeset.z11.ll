; ModuleID = './MultiSource.Benchmarks.MiBench/36.consumer-typeset.z11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.STYLE = type { %union.anon, %union.anon.0, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.0 = type { %struct.GAP }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.4 }
%struct.anon.4 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.2 = type { i8, i8, i32 }
%struct.anon = type { i8, [3 x i8] }
%struct.anon.1 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid left parameter of %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"this unit not allowed with %s symbol\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"changespace: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"unknown option to %s symbol (%s)\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"spacing %s is not compatible with current spacing\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"hyphen\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"nohyphen\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"outdent\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ragged\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"cragged\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"rragged\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"oragged\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"clines\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"rlines\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"unbreakablefirst\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"breakablefirst\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"unbreakablelast\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"breakablelast\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"line spacing %s is not compatible with current spacing\00", align 1

; Function Attrs: nounwind uwtable
define void @SpaceChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.2*
  %otype = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.1
    i32 12, label %sw.bb.1
    i32 17, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.1
  %3 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @changespace(%struct.STYLE* %3, %union.rec* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %6, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %sw.bb.4
  %7 = load %union.rec*, %union.rec** %link, align 8
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp6 = icmp ne %union.rec* %7, %8
  br i1 %cmp6, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %9 = load %union.rec*, %union.rec** %link, align 8
  %os18 = bitcast %union.rec* %9 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %10, %union.rec** %y, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os112 = bitcast %union.rec* %11 to %struct.word_type*
  %ou113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os1114 = bitcast %union.FIRST_UNION* %ou113 to %struct.anon.2*
  %otype15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1114, i32 0, i32 0
  %12 = load i8, i8* %otype15, align 1
  %conv16 = zext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.11
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os120 = bitcast %union.rec* %13 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 1
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred23, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os124 = bitcast %union.rec* %15 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou125 to %struct.anon.2*
  %otype27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1126, i32 0, i32 0
  %16 = load i8, i8* %otype27, align 1
  %conv28 = zext i8 %16 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os131 = bitcast %union.rec* %17 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon.2*
  %otype34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1133, i32 0, i32 0
  %18 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv35, 5
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %lor.lhs.false, %for.end
  br label %for.inc.69

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os139 = bitcast %union.rec* %19 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon.2*
  %otype42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1141, i32 0, i32 0
  %20 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %20 to i32
  %cmp44 = icmp eq i32 %conv43, 11
  br i1 %cmp44, label %if.then.54, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.else
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os147 = bitcast %union.rec* %21 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %os1149 = bitcast %union.FIRST_UNION* %ou148 to %struct.anon.2*
  %otype50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1149, i32 0, i32 0
  %22 = load i8, i8* %otype50, align 1
  %conv51 = zext i8 %22 to i32
  %cmp52 = icmp eq i32 %conv51, 12
  br i1 %cmp52, label %if.then.54, label %if.else.63

if.then.54:                                       ; preds = %lor.lhs.false.46, %if.else
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os155 = bitcast %union.rec* %23 to %struct.word_type*
  %ostring56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 4
  %arraydecay57 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring56, i32 0, i32 0
  %call58 = call i32 @strcmp(i8* %arraydecay57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.54
  %24 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %25 = load %union.rec*, %union.rec** %y, align 8
  call void @changespace(%struct.STYLE* %24, %union.rec* %25)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.54
  br label %if.end.67

if.else.63:                                       ; preds = %lor.lhs.false.46
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %26 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou165 to %struct.FILE_POS*
  %call66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.63, %if.end.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68, %if.then.38
  %27 = load %union.rec*, %union.rec** %link, align 8
  %os170 = bitcast %union.rec* %27 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %osucc73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc73, align 8
  store %union.rec* %28, %union.rec** %link, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os175 = bitcast %union.rec* %29 to %struct.word_type*
  %ou176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 1
  %ofpos77 = bitcast %union.FIRST_UNION* %ou176 to %struct.FILE_POS*
  %call78 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.74, %if.end, %sw.bb
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @changespace(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.2*
  %otype = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon.2*
  %otype5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp sge i32 %conv10, 97
  br i1 %cmp11, label %land.lhs.true, label %if.else.88

land.lhs.true:                                    ; preds = %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os113 = bitcast %union.rec* %7 to %struct.word_type*
  %ostring14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring14, i32 0, i64 0
  %8 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %8 to i32
  %cmp17 = icmp sle i32 %conv16, 122
  br i1 %cmp17, label %if.then.19, label %if.else.88

if.then.19:                                       ; preds = %land.lhs.true
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os120 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring21, i32 0, i32 0
  %call22 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #3
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.19
  %10 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %10, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu1 to %struct.anon*
  %11 = bitcast %struct.anon* %oss1 to i8*
  %bf.load = load i8, i8* %11, align 4
  %bf.clear = and i8 %bf.load, -113
  store i8 %bf.clear, i8* %11, align 4
  br label %if.end.87

if.else:                                          ; preds = %if.then.19
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os126 = bitcast %union.rec* %12 to %struct.word_type*
  %ostring27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 4
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring27, i32 0, i32 0
  %call29 = call i32 @strcmp(i8* %arraydecay28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #3
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.else
  %13 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu133 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %13, i32 0, i32 0
  %oss134 = bitcast %union.anon* %osu133 to %struct.anon*
  %14 = bitcast %struct.anon* %oss134 to i8*
  %bf.load35 = load i8, i8* %14, align 4
  %bf.clear36 = and i8 %bf.load35, -113
  %bf.set = or i8 %bf.clear36, 16
  store i8 %bf.set, i8* %14, align 4
  br label %if.end.86

if.else.37:                                       ; preds = %if.else
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os138 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 4
  %arraydecay40 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring39, i32 0, i32 0
  %call41 = call i32 @strcmp(i8* %arraydecay40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #3
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %if.else.37
  %16 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu145 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %16, i32 0, i32 0
  %oss146 = bitcast %union.anon* %osu145 to %struct.anon*
  %17 = bitcast %struct.anon* %oss146 to i8*
  %bf.load47 = load i8, i8* %17, align 4
  %bf.clear48 = and i8 %bf.load47, -113
  %bf.set49 = or i8 %bf.clear48, 32
  store i8 %bf.set49, i8* %17, align 4
  br label %if.end.85

if.else.50:                                       ; preds = %if.else.37
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os151 = bitcast %union.rec* %18 to %struct.word_type*
  %ostring52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 4
  %arraydecay53 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring52, i32 0, i32 0
  %call54 = call i32 @strcmp(i8* %arraydecay53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.63

if.then.57:                                       ; preds = %if.else.50
  %19 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu158 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %19, i32 0, i32 0
  %oss159 = bitcast %union.anon* %osu158 to %struct.anon*
  %20 = bitcast %struct.anon* %oss159 to i8*
  %bf.load60 = load i8, i8* %20, align 4
  %bf.clear61 = and i8 %bf.load60, -113
  %bf.set62 = or i8 %bf.clear61, 48
  store i8 %bf.set62, i8* %20, align 4
  br label %if.end.84

if.else.63:                                       ; preds = %if.else.50
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring65, i32 0, i32 0
  %call67 = call i32 @strcmp(i8* %arraydecay66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #3
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.76

if.then.70:                                       ; preds = %if.else.63
  %22 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu171 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %22, i32 0, i32 0
  %oss172 = bitcast %union.anon* %osu171 to %struct.anon*
  %23 = bitcast %struct.anon* %oss172 to i8*
  %bf.load73 = load i8, i8* %23, align 4
  %bf.clear74 = and i8 %bf.load73, -113
  %bf.set75 = or i8 %bf.clear74, 64
  store i8 %bf.set75, i8* %23, align 4
  br label %if.end.83

if.else.76:                                       ; preds = %if.else.63
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os177 = bitcast %union.rec* %24 to %struct.word_type*
  %ou178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou178 to %struct.FILE_POS*
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os179 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 4
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring80, i32 0, i32 0
  %call82 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.76, %if.then.70
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.57
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.44
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.32
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.25
  br label %if.end.168

if.else.88:                                       ; preds = %land.lhs.true, %if.end
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  %27 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  call void @GetGap(%union.rec* %26, %struct.STYLE* %27, %struct.GAP* %res_gap, i32* %gap_inc)
  %28 = load i32, i32* %gap_inc, align 4
  %cmp89 = icmp ne i32 %28, 158
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.108

land.lhs.true.91:                                 ; preds = %if.else.88
  %29 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load92 = load i16, i16* %29, align 4
  %bf.lshr = lshr i16 %bf.load92, 10
  %bf.clear93 = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear93 to i32
  %30 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %30, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.0* %osu2 to %struct.GAP*
  %31 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load94 = load i16, i16* %31, align 4
  %bf.lshr95 = lshr i16 %bf.load94, 10
  %bf.clear96 = and i16 %bf.lshr95, 7
  %bf.cast97 = zext i16 %bf.clear96 to i32
  %cmp98 = icmp ne i32 %bf.cast, %bf.cast97
  br i1 %cmp98, label %if.then.100, label %if.else.108

if.then.100:                                      ; preds = %land.lhs.true.91
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1101 = bitcast %union.rec* %32 to %struct.word_type*
  %ou1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 1
  %ofpos103 = bitcast %union.FIRST_UNION* %ou1102 to %struct.FILE_POS*
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1104 = bitcast %union.rec* %33 to %struct.word_type*
  %ostring105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 4
  %arraydecay106 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring105, i32 0, i32 0
  %call107 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos103, i8* %arraydecay106)
  br label %if.end.167

if.else.108:                                      ; preds = %land.lhs.true.91, %if.else.88
  %34 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load109 = load i16, i16* %34, align 4
  %bf.lshr110 = lshr i16 %bf.load109, 10
  %bf.clear111 = and i16 %bf.lshr110, 7
  %bf.cast112 = zext i16 %bf.clear111 to i32
  %35 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2113 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %35, i32 0, i32 1
  %ospace_gap114 = bitcast %union.anon.0* %osu2113 to %struct.GAP*
  %36 = bitcast %struct.GAP* %ospace_gap114 to i16*
  %37 = trunc i32 %bf.cast112 to i16
  %bf.load115 = load i16, i16* %36, align 4
  %bf.value = and i16 %37, 7
  %bf.shl = shl i16 %bf.value, 10
  %bf.clear116 = and i16 %bf.load115, -7169
  %bf.set117 = or i16 %bf.clear116, %bf.shl
  store i16 %bf.set117, i16* %36, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %38 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load118 = load i16, i16* %38, align 4
  %bf.lshr119 = lshr i16 %bf.load118, 13
  %bf.cast120 = zext i16 %bf.lshr119 to i32
  %39 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2121 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %39, i32 0, i32 1
  %ospace_gap122 = bitcast %union.anon.0* %osu2121 to %struct.GAP*
  %40 = bitcast %struct.GAP* %ospace_gap122 to i16*
  %41 = trunc i32 %bf.cast120 to i16
  %bf.load123 = load i16, i16* %40, align 4
  %bf.value124 = and i16 %41, 7
  %bf.shl125 = shl i16 %bf.value124, 13
  %bf.clear126 = and i16 %bf.load123, 8191
  %bf.set127 = or i16 %bf.clear126, %bf.shl125
  store i16 %bf.set127, i16* %40, align 4
  %bf.result.cast128 = zext i16 %bf.value124 to i32
  %42 = load i32, i32* %gap_inc, align 4
  %cmp129 = icmp eq i32 %42, 158
  br i1 %cmp129, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.108
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %43 = load i16, i16* %owidth, align 2
  %conv131 = sext i16 %43 to i32
  br label %cond.end.161

cond.false:                                       ; preds = %if.else.108
  %44 = load i32, i32* %gap_inc, align 4
  %cmp132 = icmp eq i32 %44, 159
  br i1 %cmp132, label %cond.true.134, label %cond.false.141

cond.true.134:                                    ; preds = %cond.false
  %45 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2135 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %45, i32 0, i32 1
  %ospace_gap136 = bitcast %union.anon.0* %osu2135 to %struct.GAP*
  %owidth137 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap136, i32 0, i32 1
  %46 = load i16, i16* %owidth137, align 2
  %conv138 = sext i16 %46 to i32
  %owidth139 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %47 = load i16, i16* %owidth139, align 2
  %conv140 = sext i16 %47 to i32
  %add = add nsw i32 %conv138, %conv140
  br label %cond.end.159

cond.false.141:                                   ; preds = %cond.false
  %48 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2142 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %48, i32 0, i32 1
  %ospace_gap143 = bitcast %union.anon.0* %osu2142 to %struct.GAP*
  %owidth144 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap143, i32 0, i32 1
  %49 = load i16, i16* %owidth144, align 2
  %conv145 = sext i16 %49 to i32
  %owidth146 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %50 = load i16, i16* %owidth146, align 2
  %conv147 = sext i16 %50 to i32
  %sub = sub nsw i32 %conv145, %conv147
  %cmp148 = icmp slt i32 %sub, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %cond.false.141
  br label %cond.end

cond.false.151:                                   ; preds = %cond.false.141
  %51 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2152 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %51, i32 0, i32 1
  %ospace_gap153 = bitcast %union.anon.0* %osu2152 to %struct.GAP*
  %owidth154 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap153, i32 0, i32 1
  %52 = load i16, i16* %owidth154, align 2
  %conv155 = sext i16 %52 to i32
  %owidth156 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %53 = load i16, i16* %owidth156, align 2
  %conv157 = sext i16 %53 to i32
  %sub158 = sub nsw i32 %conv155, %conv157
  br label %cond.end

cond.end:                                         ; preds = %cond.false.151, %cond.true.150
  %cond = phi i32 [ 0, %cond.true.150 ], [ %sub158, %cond.false.151 ]
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.end, %cond.true.134
  %cond160 = phi i32 [ %add, %cond.true.134 ], [ %cond, %cond.end ]
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.end.159, %cond.true
  %cond162 = phi i32 [ %conv131, %cond.true ], [ %cond160, %cond.end.159 ]
  %conv163 = trunc i32 %cond162 to i16
  %54 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2164 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %54, i32 0, i32 1
  %ospace_gap165 = bitcast %union.anon.0* %osu2164 to %struct.GAP*
  %owidth166 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap165, i32 0, i32 1
  store i16 %conv163, i16* %owidth166, align 2
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.161, %if.then.100
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.87
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind uwtable
define void @BreakChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.2*
  %otype = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.1
    i32 12, label %sw.bb.1
    i32 17, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.1
  %3 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @changebreak(%struct.STYLE* %3, %union.rec* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %6, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %sw.bb.4
  %7 = load %union.rec*, %union.rec** %link, align 8
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp6 = icmp ne %union.rec* %7, %8
  br i1 %cmp6, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %9 = load %union.rec*, %union.rec** %link, align 8
  %os18 = bitcast %union.rec* %9 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %10, %union.rec** %y, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os112 = bitcast %union.rec* %11 to %struct.word_type*
  %ou113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os1114 = bitcast %union.FIRST_UNION* %ou113 to %struct.anon.2*
  %otype15 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1114, i32 0, i32 0
  %12 = load i8, i8* %otype15, align 1
  %conv16 = zext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.11
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os120 = bitcast %union.rec* %13 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 1
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred23, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os124 = bitcast %union.rec* %15 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou125 to %struct.anon.2*
  %otype27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1126, i32 0, i32 0
  %16 = load i8, i8* %otype27, align 1
  %conv28 = zext i8 %16 to i32
  %cmp29 = icmp eq i32 %conv28, 1
  br i1 %cmp29, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os131 = bitcast %union.rec* %17 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon.2*
  %otype34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1133, i32 0, i32 0
  %18 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv35, 5
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %lor.lhs.false, %for.end
  br label %for.inc.69

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os139 = bitcast %union.rec* %19 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon.2*
  %otype42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1141, i32 0, i32 0
  %20 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %20 to i32
  %cmp44 = icmp eq i32 %conv43, 11
  br i1 %cmp44, label %if.then.54, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.else
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os147 = bitcast %union.rec* %21 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %os1149 = bitcast %union.FIRST_UNION* %ou148 to %struct.anon.2*
  %otype50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os1149, i32 0, i32 0
  %22 = load i8, i8* %otype50, align 1
  %conv51 = zext i8 %22 to i32
  %cmp52 = icmp eq i32 %conv51, 12
  br i1 %cmp52, label %if.then.54, label %if.else.63

if.then.54:                                       ; preds = %lor.lhs.false.46, %if.else
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os155 = bitcast %union.rec* %23 to %struct.word_type*
  %ostring56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 4
  %arraydecay57 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring56, i32 0, i32 0
  %call58 = call i32 @strcmp(i8* %arraydecay57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.54
  %24 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %25 = load %union.rec*, %union.rec** %y, align 8
  call void @changebreak(%struct.STYLE* %24, %union.rec* %25)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.54
  br label %if.end.67

if.else.63:                                       ; preds = %lor.lhs.false.46
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %26 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou165 to %struct.FILE_POS*
  %call66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.63, %if.end.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68, %if.then.38
  %27 = load %union.rec*, %union.rec** %link, align 8
  %os170 = bitcast %union.rec* %27 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %osucc73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc73, align 8
  store %union.rec* %28, %union.rec** %link, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os175 = bitcast %union.rec* %29 to %struct.word_type*
  %ou176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 1
  %ofpos77 = bitcast %union.FIRST_UNION* %ou176 to %struct.FILE_POS*
  %call78 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.74, %if.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @changebreak(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.else.251

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring3, i32 0, i64 0
  %3 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %cmp6 = icmp sle i32 %conv5, 122
  br i1 %cmp6, label %if.then, label %if.else.251

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %4 to %struct.word_type*
  %ostring9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring9, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %5 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %5, i32 0, i32 1
  %oss2 = bitcast %union.anon.0* %osu2 to %struct.anon.1*
  %6 = bitcast %struct.anon.1* %oss2 to i8*
  %bf.load = load i8, i8* %6, align 4
  %bf.clear = and i8 %bf.load, -4
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %6, align 4
  br label %if.end.250

if.else:                                          ; preds = %if.then
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os113 = bitcast %union.rec* %7 to %struct.word_type*
  %ostring14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 4
  %arraydecay15 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring14, i32 0, i32 0
  %call16 = call i32 @strcmp(i8* %arraydecay15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #3
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %if.else
  %8 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu220 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %8, i32 0, i32 1
  %oss221 = bitcast %union.anon.0* %osu220 to %struct.anon.1*
  %9 = bitcast %struct.anon.1* %oss221 to i8*
  %bf.load22 = load i8, i8* %9, align 4
  %bf.clear23 = and i8 %bf.load22, -4
  %bf.set24 = or i8 %bf.clear23, 1
  store i8 %bf.set24, i8* %9, align 4
  br label %if.end.249

if.else.25:                                       ; preds = %if.else
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os126 = bitcast %union.rec* %10 to %struct.word_type*
  %ostring27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 4
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring27, i32 0, i32 0
  %call29 = call i32 @strcmp(i8* %arraydecay28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.43

if.then.32:                                       ; preds = %if.else.25
  %11 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu233 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %11, i32 0, i32 1
  %oss234 = bitcast %union.anon.0* %osu233 to %struct.anon.1*
  %12 = bitcast %struct.anon.1* %oss234 to i8*
  %bf.load35 = load i8, i8* %12, align 4
  %bf.clear36 = and i8 %bf.load35, -13
  %bf.set37 = or i8 %bf.clear36, 8
  store i8 %bf.set37, i8* %12, align 4
  %13 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu238 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %13, i32 0, i32 1
  %oss239 = bitcast %union.anon.0* %osu238 to %struct.anon.1*
  %14 = bitcast %struct.anon.1* %oss239 to i8*
  %bf.load40 = load i8, i8* %14, align 4
  %bf.clear41 = and i8 %bf.load40, -113
  %bf.set42 = or i8 %bf.clear41, 16
  store i8 %bf.set42, i8* %14, align 4
  br label %if.end.248

if.else.43:                                       ; preds = %if.else.25
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os144 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 4
  %arraydecay46 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring45, i32 0, i32 0
  %call47 = call i32 @strcmp(i8* %arraydecay46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #3
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.61

if.then.50:                                       ; preds = %if.else.43
  %16 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu251 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %16, i32 0, i32 1
  %oss252 = bitcast %union.anon.0* %osu251 to %struct.anon.1*
  %17 = bitcast %struct.anon.1* %oss252 to i8*
  %bf.load53 = load i8, i8* %17, align 4
  %bf.clear54 = and i8 %bf.load53, -13
  %bf.set55 = or i8 %bf.clear54, 8
  store i8 %bf.set55, i8* %17, align 4
  %18 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu256 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %18, i32 0, i32 1
  %oss257 = bitcast %union.anon.0* %osu256 to %struct.anon.1*
  %19 = bitcast %struct.anon.1* %oss257 to i8*
  %bf.load58 = load i8, i8* %19, align 4
  %bf.clear59 = and i8 %bf.load58, -113
  %bf.set60 = or i8 %bf.clear59, 32
  store i8 %bf.set60, i8* %19, align 4
  br label %if.end.247

if.else.61:                                       ; preds = %if.else.43
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %os162 = bitcast %union.rec* %20 to %struct.word_type*
  %ostring63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 4
  %arraydecay64 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring63, i32 0, i32 0
  %call65 = call i32 @strcmp(i8* %arraydecay64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #3
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.79

if.then.68:                                       ; preds = %if.else.61
  %21 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu269 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %21, i32 0, i32 1
  %oss270 = bitcast %union.anon.0* %osu269 to %struct.anon.1*
  %22 = bitcast %struct.anon.1* %oss270 to i8*
  %bf.load71 = load i8, i8* %22, align 4
  %bf.clear72 = and i8 %bf.load71, -13
  %bf.set73 = or i8 %bf.clear72, 8
  store i8 %bf.set73, i8* %22, align 4
  %23 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu274 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %23, i32 0, i32 1
  %oss275 = bitcast %union.anon.0* %osu274 to %struct.anon.1*
  %24 = bitcast %struct.anon.1* %oss275 to i8*
  %bf.load76 = load i8, i8* %24, align 4
  %bf.clear77 = and i8 %bf.load76, -113
  %bf.set78 = or i8 %bf.clear77, 64
  store i8 %bf.set78, i8* %24, align 4
  br label %if.end.246

if.else.79:                                       ; preds = %if.else.61
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os180 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 4
  %arraydecay82 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring81, i32 0, i32 0
  %call83 = call i32 @strcmp(i8* %arraydecay82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #3
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.97

if.then.86:                                       ; preds = %if.else.79
  %26 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu287 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %26, i32 0, i32 1
  %oss288 = bitcast %union.anon.0* %osu287 to %struct.anon.1*
  %27 = bitcast %struct.anon.1* %oss288 to i8*
  %bf.load89 = load i8, i8* %27, align 4
  %bf.clear90 = and i8 %bf.load89, -13
  %bf.set91 = or i8 %bf.clear90, 8
  store i8 %bf.set91, i8* %27, align 4
  %28 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu292 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %28, i32 0, i32 1
  %oss293 = bitcast %union.anon.0* %osu292 to %struct.anon.1*
  %29 = bitcast %struct.anon.1* %oss293 to i8*
  %bf.load94 = load i8, i8* %29, align 4
  %bf.clear95 = and i8 %bf.load94, -113
  %bf.set96 = or i8 %bf.clear95, 80
  store i8 %bf.set96, i8* %29, align 4
  br label %if.end.245

if.else.97:                                       ; preds = %if.else.79
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os198 = bitcast %union.rec* %30 to %struct.word_type*
  %ostring99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 4
  %arraydecay100 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring99, i32 0, i32 0
  %call101 = call i32 @strcmp(i8* %arraydecay100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #3
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.115

if.then.104:                                      ; preds = %if.else.97
  %31 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2105 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %31, i32 0, i32 1
  %oss2106 = bitcast %union.anon.0* %osu2105 to %struct.anon.1*
  %32 = bitcast %struct.anon.1* %oss2106 to i8*
  %bf.load107 = load i8, i8* %32, align 4
  %bf.clear108 = and i8 %bf.load107, -13
  %bf.set109 = or i8 %bf.clear108, 8
  store i8 %bf.set109, i8* %32, align 4
  %33 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2110 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %33, i32 0, i32 1
  %oss2111 = bitcast %union.anon.0* %osu2110 to %struct.anon.1*
  %34 = bitcast %struct.anon.1* %oss2111 to i8*
  %bf.load112 = load i8, i8* %34, align 4
  %bf.clear113 = and i8 %bf.load112, -113
  %bf.set114 = or i8 %bf.clear113, 96
  store i8 %bf.set114, i8* %34, align 4
  br label %if.end.244

if.else.115:                                      ; preds = %if.else.97
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1116 = bitcast %union.rec* %35 to %struct.word_type*
  %ostring117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 4
  %arraydecay118 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring117, i32 0, i32 0
  %call119 = call i32 @strcmp(i8* %arraydecay118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #3
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then.122, label %if.else.133

if.then.122:                                      ; preds = %if.else.115
  %36 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2123 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %36, i32 0, i32 1
  %oss2124 = bitcast %union.anon.0* %osu2123 to %struct.anon.1*
  %37 = bitcast %struct.anon.1* %oss2124 to i8*
  %bf.load125 = load i8, i8* %37, align 4
  %bf.clear126 = and i8 %bf.load125, -13
  %bf.set127 = or i8 %bf.clear126, 8
  store i8 %bf.set127, i8* %37, align 4
  %38 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2128 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %38, i32 0, i32 1
  %oss2129 = bitcast %union.anon.0* %osu2128 to %struct.anon.1*
  %39 = bitcast %struct.anon.1* %oss2129 to i8*
  %bf.load130 = load i8, i8* %39, align 4
  %bf.clear131 = and i8 %bf.load130, -113
  %bf.set132 = or i8 %bf.clear131, 48
  store i8 %bf.set132, i8* %39, align 4
  br label %if.end.243

if.else.133:                                      ; preds = %if.else.115
  %40 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1134 = bitcast %union.rec* %40 to %struct.word_type*
  %ostring135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 4
  %arraydecay136 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring135, i32 0, i32 0
  %call137 = call i32 @strcmp(i8* %arraydecay136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #3
  %cmp138 = icmp eq i32 %call137, 0
  br i1 %cmp138, label %if.then.140, label %if.else.151

if.then.140:                                      ; preds = %if.else.133
  %41 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2141 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %41, i32 0, i32 1
  %oss2142 = bitcast %union.anon.0* %osu2141 to %struct.anon.1*
  %42 = bitcast %struct.anon.1* %oss2142 to i8*
  %bf.load143 = load i8, i8* %42, align 4
  %bf.clear144 = and i8 %bf.load143, -13
  %bf.set145 = or i8 %bf.clear144, 4
  store i8 %bf.set145, i8* %42, align 4
  %43 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2146 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %43, i32 0, i32 1
  %oss2147 = bitcast %union.anon.0* %osu2146 to %struct.anon.1*
  %44 = bitcast %struct.anon.1* %oss2147 to i8*
  %bf.load148 = load i8, i8* %44, align 4
  %bf.clear149 = and i8 %bf.load148, -113
  %bf.set150 = or i8 %bf.clear149, 64
  store i8 %bf.set150, i8* %44, align 4
  br label %if.end.242

if.else.151:                                      ; preds = %if.else.133
  %45 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1152 = bitcast %union.rec* %45 to %struct.word_type*
  %ostring153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 4
  %arraydecay154 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring153, i32 0, i32 0
  %call155 = call i32 @strcmp(i8* %arraydecay154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #3
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then.158, label %if.else.169

if.then.158:                                      ; preds = %if.else.151
  %46 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2159 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %46, i32 0, i32 1
  %oss2160 = bitcast %union.anon.0* %osu2159 to %struct.anon.1*
  %47 = bitcast %struct.anon.1* %oss2160 to i8*
  %bf.load161 = load i8, i8* %47, align 4
  %bf.clear162 = and i8 %bf.load161, -13
  %bf.set163 = or i8 %bf.clear162, 4
  store i8 %bf.set163, i8* %47, align 4
  %48 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2164 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %48, i32 0, i32 1
  %oss2165 = bitcast %union.anon.0* %osu2164 to %struct.anon.1*
  %49 = bitcast %struct.anon.1* %oss2165 to i8*
  %bf.load166 = load i8, i8* %49, align 4
  %bf.clear167 = and i8 %bf.load166, -113
  %bf.set168 = or i8 %bf.clear167, 80
  store i8 %bf.set168, i8* %49, align 4
  br label %if.end.241

if.else.169:                                      ; preds = %if.else.151
  %50 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1170 = bitcast %union.rec* %50 to %struct.word_type*
  %ostring171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 4
  %arraydecay172 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring171, i32 0, i32 0
  %call173 = call i32 @strcmp(i8* %arraydecay172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #3
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then.176, label %if.else.187

if.then.176:                                      ; preds = %if.else.169
  %51 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2177 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %51, i32 0, i32 1
  %oss2178 = bitcast %union.anon.0* %osu2177 to %struct.anon.1*
  %52 = bitcast %struct.anon.1* %oss2178 to i8*
  %bf.load179 = load i8, i8* %52, align 4
  %bf.clear180 = and i8 %bf.load179, -13
  %bf.set181 = or i8 %bf.clear180, 4
  store i8 %bf.set181, i8* %52, align 4
  %53 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2182 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %53, i32 0, i32 1
  %oss2183 = bitcast %union.anon.0* %osu2182 to %struct.anon.1*
  %54 = bitcast %struct.anon.1* %oss2183 to i8*
  %bf.load184 = load i8, i8* %54, align 4
  %bf.clear185 = and i8 %bf.load184, -113
  %bf.set186 = or i8 %bf.clear185, 96
  store i8 %bf.set186, i8* %54, align 4
  br label %if.end.240

if.else.187:                                      ; preds = %if.else.169
  %55 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1188 = bitcast %union.rec* %55 to %struct.word_type*
  %ostring189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 4
  %arraydecay190 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring189, i32 0, i32 0
  %call191 = call i32 @strcmp(i8* %arraydecay190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)) #3
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.198

if.then.194:                                      ; preds = %if.else.187
  %56 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %56, i32 0, i32 4
  %bf.load195 = load i32, i32* %onobreaklast, align 4
  %bf.clear196 = and i32 %bf.load195, 2147483647
  %bf.set197 = or i32 %bf.clear196, -2147483648
  store i32 %bf.set197, i32* %onobreaklast, align 4
  br label %if.end.239

if.else.198:                                      ; preds = %if.else.187
  %57 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1199 = bitcast %union.rec* %57 to %struct.word_type*
  %ostring200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 4
  %arraydecay201 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring200, i32 0, i32 0
  %call202 = call i32 @strcmp(i8* %arraydecay201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0)) #3
  %cmp203 = icmp eq i32 %call202, 0
  br i1 %cmp203, label %if.then.205, label %if.else.209

if.then.205:                                      ; preds = %if.else.198
  %58 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreaklast206 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %58, i32 0, i32 4
  %bf.load207 = load i32, i32* %onobreaklast206, align 4
  %bf.clear208 = and i32 %bf.load207, 2147483647
  store i32 %bf.clear208, i32* %onobreaklast206, align 4
  br label %if.end.238

if.else.209:                                      ; preds = %if.else.198
  %59 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1210 = bitcast %union.rec* %59 to %struct.word_type*
  %ostring211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 4
  %arraydecay212 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring211, i32 0, i32 0
  %call213 = call i32 @strcmp(i8* %arraydecay212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #3
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.else.220

if.then.216:                                      ; preds = %if.else.209
  %60 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %60, i32 0, i32 4
  %bf.load217 = load i32, i32* %onobreakfirst, align 4
  %bf.clear218 = and i32 %bf.load217, -1073741825
  %bf.set219 = or i32 %bf.clear218, 1073741824
  store i32 %bf.set219, i32* %onobreakfirst, align 4
  br label %if.end.237

if.else.220:                                      ; preds = %if.else.209
  %61 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1221 = bitcast %union.rec* %61 to %struct.word_type*
  %ostring222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 4
  %arraydecay223 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring222, i32 0, i32 0
  %call224 = call i32 @strcmp(i8* %arraydecay223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #3
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %if.then.227, label %if.else.231

if.then.227:                                      ; preds = %if.else.220
  %62 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreakfirst228 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %62, i32 0, i32 4
  %bf.load229 = load i32, i32* %onobreakfirst228, align 4
  %bf.clear230 = and i32 %bf.load229, -1073741825
  store i32 %bf.clear230, i32* %onobreakfirst228, align 4
  br label %if.end

if.else.231:                                      ; preds = %if.else.220
  %63 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1232 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %64 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1233 = bitcast %union.rec* %64 to %struct.word_type*
  %ostring234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 4
  %arraydecay235 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring234, i32 0, i32 0
  %call236 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay235)
  br label %if.end

if.end:                                           ; preds = %if.else.231, %if.then.227
  br label %if.end.237

if.end.237:                                       ; preds = %if.end, %if.then.216
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.205
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.194
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.176
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.158
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.140
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.122
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.104
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.86
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.68
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.50
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.32
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.19
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.12
  br label %if.end.331

if.else.251:                                      ; preds = %land.lhs.true, %entry
  %65 = load %union.rec*, %union.rec** %x.addr, align 8
  %66 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  call void @GetGap(%union.rec* %65, %struct.STYLE* %66, %struct.GAP* %res_gap, i32* %gap_inc)
  %67 = load i32, i32* %gap_inc, align 4
  %cmp252 = icmp ne i32 %67, 158
  br i1 %cmp252, label %land.lhs.true.254, label %if.else.271

land.lhs.true.254:                                ; preds = %if.else.251
  %68 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load255 = load i16, i16* %68, align 4
  %bf.lshr = lshr i16 %bf.load255, 10
  %bf.clear256 = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear256 to i32
  %69 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %69, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %70 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load257 = load i16, i16* %70, align 4
  %bf.lshr258 = lshr i16 %bf.load257, 10
  %bf.clear259 = and i16 %bf.lshr258, 7
  %bf.cast260 = zext i16 %bf.clear259 to i32
  %cmp261 = icmp ne i32 %bf.cast, %bf.cast260
  br i1 %cmp261, label %if.then.263, label %if.else.271

if.then.263:                                      ; preds = %land.lhs.true.254
  %71 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1264 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 1
  %ofpos266 = bitcast %union.FIRST_UNION* %ou1265 to %struct.FILE_POS*
  %72 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1267 = bitcast %union.rec* %72 to %struct.word_type*
  %ostring268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 4
  %arraydecay269 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring268, i32 0, i32 0
  %call270 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos266, i8* %arraydecay269)
  br label %if.end.330

if.else.271:                                      ; preds = %land.lhs.true.254, %if.else.251
  %73 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load272 = load i16, i16* %73, align 4
  %bf.lshr273 = lshr i16 %bf.load272, 10
  %bf.clear274 = and i16 %bf.lshr273, 7
  %bf.cast275 = zext i16 %bf.clear274 to i32
  %74 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1276 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %74, i32 0, i32 0
  %oline_gap277 = bitcast %union.anon* %osu1276 to %struct.GAP*
  %75 = bitcast %struct.GAP* %oline_gap277 to i16*
  %76 = trunc i32 %bf.cast275 to i16
  %bf.load278 = load i16, i16* %75, align 4
  %bf.value = and i16 %76, 7
  %bf.shl = shl i16 %bf.value, 10
  %bf.clear279 = and i16 %bf.load278, -7169
  %bf.set280 = or i16 %bf.clear279, %bf.shl
  store i16 %bf.set280, i16* %75, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %77 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load281 = load i16, i16* %77, align 4
  %bf.lshr282 = lshr i16 %bf.load281, 13
  %bf.cast283 = zext i16 %bf.lshr282 to i32
  %78 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1284 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %78, i32 0, i32 0
  %oline_gap285 = bitcast %union.anon* %osu1284 to %struct.GAP*
  %79 = bitcast %struct.GAP* %oline_gap285 to i16*
  %80 = trunc i32 %bf.cast283 to i16
  %bf.load286 = load i16, i16* %79, align 4
  %bf.value287 = and i16 %80, 7
  %bf.shl288 = shl i16 %bf.value287, 13
  %bf.clear289 = and i16 %bf.load286, 8191
  %bf.set290 = or i16 %bf.clear289, %bf.shl288
  store i16 %bf.set290, i16* %79, align 4
  %bf.result.cast291 = zext i16 %bf.value287 to i32
  %81 = load i32, i32* %gap_inc, align 4
  %cmp292 = icmp eq i32 %81, 158
  br i1 %cmp292, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.271
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %82 = load i16, i16* %owidth, align 2
  %conv294 = sext i16 %82 to i32
  br label %cond.end.324

cond.false:                                       ; preds = %if.else.271
  %83 = load i32, i32* %gap_inc, align 4
  %cmp295 = icmp eq i32 %83, 159
  br i1 %cmp295, label %cond.true.297, label %cond.false.304

cond.true.297:                                    ; preds = %cond.false
  %84 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1298 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %84, i32 0, i32 0
  %oline_gap299 = bitcast %union.anon* %osu1298 to %struct.GAP*
  %owidth300 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap299, i32 0, i32 1
  %85 = load i16, i16* %owidth300, align 2
  %conv301 = sext i16 %85 to i32
  %owidth302 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %86 = load i16, i16* %owidth302, align 2
  %conv303 = sext i16 %86 to i32
  %add = add nsw i32 %conv301, %conv303
  br label %cond.end.322

cond.false.304:                                   ; preds = %cond.false
  %87 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1305 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %87, i32 0, i32 0
  %oline_gap306 = bitcast %union.anon* %osu1305 to %struct.GAP*
  %owidth307 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap306, i32 0, i32 1
  %88 = load i16, i16* %owidth307, align 2
  %conv308 = sext i16 %88 to i32
  %owidth309 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %89 = load i16, i16* %owidth309, align 2
  %conv310 = sext i16 %89 to i32
  %sub = sub nsw i32 %conv308, %conv310
  %cmp311 = icmp slt i32 %sub, 0
  br i1 %cmp311, label %cond.true.313, label %cond.false.314

cond.true.313:                                    ; preds = %cond.false.304
  br label %cond.end

cond.false.314:                                   ; preds = %cond.false.304
  %90 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1315 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %90, i32 0, i32 0
  %oline_gap316 = bitcast %union.anon* %osu1315 to %struct.GAP*
  %owidth317 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap316, i32 0, i32 1
  %91 = load i16, i16* %owidth317, align 2
  %conv318 = sext i16 %91 to i32
  %owidth319 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %92 = load i16, i16* %owidth319, align 2
  %conv320 = sext i16 %92 to i32
  %sub321 = sub nsw i32 %conv318, %conv320
  br label %cond.end

cond.end:                                         ; preds = %cond.false.314, %cond.true.313
  %cond = phi i32 [ 0, %cond.true.313 ], [ %sub321, %cond.false.314 ]
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.end, %cond.true.297
  %cond323 = phi i32 [ %add, %cond.true.297 ], [ %cond, %cond.end ]
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.end.322, %cond.true
  %cond325 = phi i32 [ %conv294, %cond.true ], [ %cond323, %cond.end.322 ]
  %conv326 = trunc i32 %cond325 to i16
  %93 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1327 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %93, i32 0, i32 0
  %oline_gap328 = bitcast %union.anon* %osu1327 to %struct.GAP*
  %owidth329 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap328, i32 0, i32 1
  store i16 %conv326, i16* %owidth329, align 2
  br label %if.end.330

if.end.330:                                       ; preds = %cond.end.324, %if.then.263
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.end.250
  ret void
}

; Function Attrs: nounwind uwtable
define void @YUnitChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %1 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  call void @GetGap(%union.rec* %0, %struct.STYLE* %1, %struct.GAP* %res_gap, i32* %gap_inc)
  %2 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load = load i16, i16* %2, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.25

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %gap_inc, align 4
  %cmp1 = icmp eq i32 %4, 158
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %5 = load i16, i16* %owidth, align 2
  %6 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %6, i32 0, i32 2
  store i16 %5, i16* %oyunit, align 2
  br label %if.end.24

if.else.3:                                        ; preds = %if.else
  %7 = load i32, i32* %gap_inc, align 4
  %cmp4 = icmp eq i32 %7, 159
  br i1 %cmp4, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.else.3
  %owidth6 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %8 = load i16, i16* %owidth6, align 2
  %conv = sext i16 %8 to i32
  %9 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit7 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %9, i32 0, i32 2
  %10 = load i16, i16* %oyunit7, align 2
  %conv8 = sext i16 %10 to i32
  %add = add nsw i32 %conv8, %conv
  %conv9 = trunc i32 %add to i16
  store i16 %conv9, i16* %oyunit7, align 2
  br label %if.end

if.else.10:                                       ; preds = %if.else.3
  %11 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit11 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %11, i32 0, i32 2
  %12 = load i16, i16* %oyunit11, align 2
  %conv12 = sext i16 %12 to i32
  %owidth13 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %13 = load i16, i16* %owidth13, align 2
  %conv14 = sext i16 %13 to i32
  %sub = sub nsw i32 %conv12, %conv14
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.10
  br label %cond.end

cond.false:                                       ; preds = %if.else.10
  %14 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit17 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %14, i32 0, i32 2
  %15 = load i16, i16* %oyunit17, align 2
  %conv18 = sext i16 %15 to i32
  %owidth19 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %16 = load i16, i16* %owidth19, align 2
  %conv20 = sext i16 %16 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub21, %cond.false ]
  %conv22 = trunc i32 %cond to i16
  %17 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit23 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %17, i32 0, i32 2
  store i16 %conv22, i16* %oyunit23, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.5
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.2
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  ret void
}

declare void @GetGap(%union.rec*, %struct.STYLE*, %struct.GAP*, i32*) #2

; Function Attrs: nounwind uwtable
define void @ZUnitChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %1 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  call void @GetGap(%union.rec* %0, %struct.STYLE* %1, %struct.GAP* %res_gap, i32* %gap_inc)
  %2 = bitcast %struct.GAP* %res_gap to i16*
  %bf.load = load i16, i16* %2, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.25

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %gap_inc, align 4
  %cmp1 = icmp eq i32 %4, 158
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %5 = load i16, i16* %owidth, align 2
  %6 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %6, i32 0, i32 3
  store i16 %5, i16* %ozunit, align 2
  br label %if.end.24

if.else.3:                                        ; preds = %if.else
  %7 = load i32, i32* %gap_inc, align 4
  %cmp4 = icmp eq i32 %7, 159
  br i1 %cmp4, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.else.3
  %owidth6 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %8 = load i16, i16* %owidth6, align 2
  %conv = sext i16 %8 to i32
  %9 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit7 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %9, i32 0, i32 3
  %10 = load i16, i16* %ozunit7, align 2
  %conv8 = sext i16 %10 to i32
  %add = add nsw i32 %conv8, %conv
  %conv9 = trunc i32 %add to i16
  store i16 %conv9, i16* %ozunit7, align 2
  br label %if.end

if.else.10:                                       ; preds = %if.else.3
  %11 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit11 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %11, i32 0, i32 3
  %12 = load i16, i16* %ozunit11, align 2
  %conv12 = sext i16 %12 to i32
  %owidth13 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %13 = load i16, i16* %owidth13, align 2
  %conv14 = sext i16 %13 to i32
  %sub = sub nsw i32 %conv12, %conv14
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.10
  br label %cond.end

cond.false:                                       ; preds = %if.else.10
  %14 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit17 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %14, i32 0, i32 3
  %15 = load i16, i16* %ozunit17, align 2
  %conv18 = sext i16 %15 to i32
  %owidth19 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %16 = load i16, i16* %owidth19, align 2
  %conv20 = sext i16 %16 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub21, %cond.false ]
  %conv22 = trunc i32 %cond to i16
  %17 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit23 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %17, i32 0, i32 3
  store i16 %conv22, i16* %ozunit23, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.5
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.2
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
