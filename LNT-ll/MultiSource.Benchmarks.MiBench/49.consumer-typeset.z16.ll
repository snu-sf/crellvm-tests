; ModuleID = './MultiSource.Benchmarks.MiBench/49.consumer-typeset.z16.bc'
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
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon = type { i8, i8, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.2 = type { i8, i8, i16 }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.anon.11 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"FindShift: units\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FindShift: type\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*pg)!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*sg)!\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"AdjustSize: Up(x) == x!\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"cannot recover from earlier errors\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"AdjustSize: COL_THR!\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"AdjustSize: type(y) != SPLIT!\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"AdjustSize: actual(index)==nilobj!\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"AdjustSize: index non-C!\00", align 1
@GalleySym = external global %union.rec*, align 8
@ForceGalleySym = external global %union.rec*, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"size constraint %s,%s,%s broken by %s,%s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"size adjustment of %s not implemented\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"AdjustSize: span\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"AdjustSize:\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FindShift(%union.rec* %x, %union.rec* %y, i32 %dim) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y.addr = alloca %union.rec*, align 8
  %dim.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %res = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %0 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %1 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load = load i16, i16* %1, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21 = bitcast %union.rec* %2 to %struct.closure_type*
  %ou42 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21, i32 0, i32 4
  %osave_style3 = bitcast %union.FOURTH_UNION* %ou42 to %struct.STYLE*
  %osu14 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style3, i32 0, i32 0
  %oline_gap5 = bitcast %union.anon* %osu14 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap5, i32 0, i32 1
  %3 = load i16, i16* %owidth, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %len, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %4 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %dim.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %union.rec*, %union.rec** %y.addr, align 8
  %os18 = bitcast %union.rec* %8 to %struct.word_type*
  %ou39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 3
  %os3110 = bitcast %union.THIRD_UNION* %ou39 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3110, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %6, %9
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os212 = bitcast %union.rec* %10 to %struct.closure_type*
  %ou413 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os212, i32 0, i32 4
  %osave_style14 = bitcast %union.FOURTH_UNION* %ou413 to %struct.STYLE*
  %osu115 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style14, i32 0, i32 0
  %oline_gap16 = bitcast %union.anon* %osu115 to %struct.GAP*
  %owidth17 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap16, i32 0, i32 1
  %11 = load i16, i16* %owidth17, align 2
  %conv18 = sext i16 %11 to i32
  %mul = mul nsw i32 %add, %conv18
  %div = sdiv i32 %mul, 4096
  store i32 %div, i32* %len, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os219 = bitcast %union.rec* %13 to %struct.closure_type*
  %ou420 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os219, i32 0, i32 4
  %osave_style21 = bitcast %union.FOURTH_UNION* %ou420 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style21, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %owidth22 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap, i32 0, i32 1
  %14 = load i16, i16* %owidth22, align 2
  %conv23 = sext i16 %14 to i32
  switch i32 %conv23, label %sw.default.34 [
    i32 158, label %sw.bb.24
    i32 159, label %sw.bb.31
    i32 160, label %sw.bb.32
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %15 = load i32, i32* %len, align 4
  %16 = load i32, i32* %dim.addr, align 4
  %idxprom25 = sext i32 %16 to i64
  %17 = load %union.rec*, %union.rec** %y.addr, align 8
  %os126 = bitcast %union.rec* %17 to %struct.word_type*
  %ou327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 3
  %os3128 = bitcast %union.THIRD_UNION* %ou327 to %struct.anon.6*
  %oback29 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %oback29, i32 0, i64 %idxprom25
  %18 = load i32, i32* %arrayidx30, align 4
  %sub = sub nsw i32 %15, %18
  store i32 %sub, i32* %res, align 4
  br label %sw.epilog.36

sw.bb.31:                                         ; preds = %sw.epilog
  %19 = load i32, i32* %len, align 4
  store i32 %19, i32* %res, align 4
  br label %sw.epilog.36

sw.bb.32:                                         ; preds = %sw.epilog
  %20 = load i32, i32* %len, align 4
  %sub33 = sub nsw i32 0, %20
  store i32 %sub33, i32* %res, align 4
  br label %sw.epilog.36

sw.default.34:                                    ; preds = %sw.epilog
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog.36

sw.epilog.36:                                     ; preds = %sw.default.34, %sw.bb.32, %sw.bb.31, %sw.bb.24
  %22 = load i32, i32* %res, align 4
  ret i32 %22
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @SetNeighbours(%union.rec* %link, i32 %ratm, %union.rec** %pg, %union.rec** %pdef, %union.rec** %sg, %union.rec** %sdef, i32* %side) #0 {
entry:
  %link.addr = alloca %union.rec*, align 8
  %ratm.addr = alloca i32, align 4
  %pg.addr = alloca %union.rec**, align 8
  %pdef.addr = alloca %union.rec**, align 8
  %sg.addr = alloca %union.rec**, align 8
  %sdef.addr = alloca %union.rec**, align 8
  %side.addr = alloca i32*, align 8
  %plink = alloca %union.rec*, align 8
  %slink = alloca %union.rec*, align 8
  store %union.rec* %link, %union.rec** %link.addr, align 8
  store i32 %ratm, i32* %ratm.addr, align 4
  store %union.rec** %pg, %union.rec*** %pg.addr, align 8
  store %union.rec** %pdef, %union.rec*** %pdef.addr, align 8
  store %union.rec** %sg, %union.rec*** %sg.addr, align 8
  store %union.rec** %sdef, %union.rec*** %sdef.addr, align 8
  store i32* %side, i32** %side.addr, align 8
  %0 = load %union.rec**, %union.rec*** %pg.addr, align 8
  store %union.rec* null, %union.rec** %0, align 8
  %1 = load %union.rec*, %union.rec** %link.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %2, %union.rec** %plink, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.118, %entry
  %3 = load %union.rec*, %union.rec** %plink, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 1
  %os112 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os112, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond
  %5 = load %union.rec*, %union.rec** %plink, align 8
  %os14 = bitcast %union.rec* %5 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 1
  %opred7 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %opred7, align 8
  %7 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  store %union.rec* %6, %union.rec** %7, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %8 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  %9 = load %union.rec*, %union.rec** %8, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os1111 = bitcast %union.FIRST_UNION* %ou110 to %struct.anon*
  %otype12 = getelementptr inbounds %struct.anon, %struct.anon* %os1111, i32 0, i32 0
  %10 = load i8, i8* %otype12, align 1
  %conv13 = zext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.8
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %11 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  %12 = load %union.rec*, %union.rec** %11, align 8
  %os117 = bitcast %union.rec* %12 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %opred20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred20, align 8
  %14 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  store %union.rec* %13, %union.rec** %14, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %15 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  %16 = load %union.rec*, %union.rec** %15, align 8
  %os121 = bitcast %union.rec* %16 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %17 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 9
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %18 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  %19 = load %union.rec*, %union.rec** %18, align 8
  %call = call i32 @SplitIsDefinite(%union.rec* %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.117

cond.false:                                       ; preds = %for.end
  %20 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  %21 = load %union.rec*, %union.rec** %20, align 8
  %os128 = bitcast %union.rec* %21 to %struct.word_type*
  %ou129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 1
  %os1130 = bitcast %union.FIRST_UNION* %ou129 to %struct.anon*
  %otype31 = getelementptr inbounds %struct.anon, %struct.anon* %os1130, i32 0, i32 0
  %22 = load i8, i8* %otype31, align 1
  %conv32 = zext i8 %22 to i32
  %cmp33 = icmp sge i32 %conv32, 9
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false
  %23 = load %union.rec**, %union.rec*** %pdef.addr, align 8
  %24 = load %union.rec*, %union.rec** %23, align 8
  %os135 = bitcast %union.rec* %24 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %os1137 = bitcast %union.FIRST_UNION* %ou136 to %struct.anon*
  %otype38 = getelementptr inbounds %struct.anon, %struct.anon* %os1137, i32 0, i32 0
  %25 = load i8, i8* %otype38, align 1
  %conv39 = zext i8 %25 to i32
  %cmp40 = icmp sle i32 %conv39, 99
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %26 = phi i1 [ false, %cond.false ], [ %cmp40, %land.rhs ]
  br i1 %26, label %if.then, label %if.end.117

if.then:                                          ; preds = %land.end, %cond.true
  %27 = load %union.rec*, %union.rec** %link.addr, align 8
  %os142 = bitcast %union.rec* %27 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 0
  %opred45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred45, align 8
  %os146 = bitcast %union.rec* %28 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 1
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %opred49, align 8
  %30 = load %union.rec**, %union.rec*** %pg.addr, align 8
  store %union.rec* %29, %union.rec** %30, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.59, %if.then
  %31 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %32 = load %union.rec*, %union.rec** %31, align 8
  %os151 = bitcast %union.rec* %32 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %os1153 = bitcast %union.FIRST_UNION* %ou152 to %struct.anon*
  %otype54 = getelementptr inbounds %struct.anon, %struct.anon* %os1153, i32 0, i32 0
  %33 = load i8, i8* %otype54, align 1
  %conv55 = zext i8 %33 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %for.body.58, label %for.end.64

for.body.58:                                      ; preds = %for.cond.50
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.58
  %34 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %35 = load %union.rec*, %union.rec** %34, align 8
  %os160 = bitcast %union.rec* %35 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 1
  %opred63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred63, align 8
  %37 = load %union.rec**, %union.rec*** %pg.addr, align 8
  store %union.rec* %36, %union.rec** %37, align 8
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  br label %while.cond

while.cond:                                       ; preds = %for.end.107, %for.end.64
  %38 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %39 = load %union.rec*, %union.rec** %38, align 8
  %os165 = bitcast %union.rec* %39 to %struct.word_type*
  %ou166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 1
  %os1167 = bitcast %union.FIRST_UNION* %ou166 to %struct.anon*
  %otype68 = getelementptr inbounds %struct.anon, %struct.anon* %os1167, i32 0, i32 0
  %40 = load i8, i8* %otype68, align 1
  %conv69 = zext i8 %40 to i32
  %cmp70 = icmp sge i32 %conv69, 119
  br i1 %cmp70, label %land.rhs.72, label %land.end.80

land.rhs.72:                                      ; preds = %while.cond
  %41 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %42 = load %union.rec*, %union.rec** %41, align 8
  %os173 = bitcast %union.rec* %42 to %struct.word_type*
  %ou174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 1
  %os1175 = bitcast %union.FIRST_UNION* %ou174 to %struct.anon*
  %otype76 = getelementptr inbounds %struct.anon, %struct.anon* %os1175, i32 0, i32 0
  %43 = load i8, i8* %otype76, align 1
  %conv77 = zext i8 %43 to i32
  %cmp78 = icmp sle i32 %conv77, 138
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.72, %while.cond
  %44 = phi i1 [ false, %while.cond ], [ %cmp78, %land.rhs.72 ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.80
  %45 = load %union.rec*, %union.rec** %link.addr, align 8
  %os181 = bitcast %union.rec* %45 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 0
  %opred84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred84, align 8
  store %union.rec* %46, %union.rec** %link.addr, align 8
  %47 = load %union.rec*, %union.rec** %link.addr, align 8
  %os185 = bitcast %union.rec* %47 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 0
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred88, align 8
  %os189 = bitcast %union.rec* %48 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 1
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred92, align 8
  %50 = load %union.rec**, %union.rec*** %pg.addr, align 8
  store %union.rec* %49, %union.rec** %50, align 8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.102, %while.body
  %51 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %52 = load %union.rec*, %union.rec** %51, align 8
  %os194 = bitcast %union.rec* %52 to %struct.word_type*
  %ou195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 1
  %os1196 = bitcast %union.FIRST_UNION* %ou195 to %struct.anon*
  %otype97 = getelementptr inbounds %struct.anon, %struct.anon* %os1196, i32 0, i32 0
  %53 = load i8, i8* %otype97, align 1
  %conv98 = zext i8 %53 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %for.body.101, label %for.end.107

for.body.101:                                     ; preds = %for.cond.93
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.101
  %54 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %55 = load %union.rec*, %union.rec** %54, align 8
  %os1103 = bitcast %union.rec* %55 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 1
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred106, align 8
  %57 = load %union.rec**, %union.rec*** %pg.addr, align 8
  store %union.rec* %56, %union.rec** %57, align 8
  br label %for.cond.93

for.end.107:                                      ; preds = %for.cond.93
  br label %while.cond

while.end:                                        ; preds = %land.end.80
  %58 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %59 = load %union.rec*, %union.rec** %58, align 8
  %os1108 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 1
  %os11110 = bitcast %union.FIRST_UNION* %ou1109 to %struct.anon*
  %otype111 = getelementptr inbounds %struct.anon, %struct.anon* %os11110, i32 0, i32 0
  %60 = load i8, i8* %otype111, align 1
  %conv112 = zext i8 %60 to i32
  %cmp113 = icmp eq i32 %conv112, 1
  br i1 %cmp113, label %if.end, label %if.then.115

if.then.115:                                      ; preds = %while.end
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call116 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.115, %while.end
  br label %for.end.123

if.end.117:                                       ; preds = %land.end, %cond.true
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %62 = load %union.rec*, %union.rec** %plink, align 8
  %os1119 = bitcast %union.rec* %62 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred122, align 8
  store %union.rec* %63, %union.rec** %plink, align 8
  br label %for.cond

for.end.123:                                      ; preds = %if.end, %for.cond
  %64 = load %union.rec**, %union.rec*** %sg.addr, align 8
  store %union.rec* null, %union.rec** %64, align 8
  %65 = load %union.rec*, %union.rec** %link.addr, align 8
  %os1124 = bitcast %union.rec* %65 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  %66 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %66, %union.rec** %slink, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.263, %for.end.123
  %67 = load %union.rec*, %union.rec** %slink, align 8
  %os1128 = bitcast %union.rec* %67 to %struct.word_type*
  %ou1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 1
  %os11130 = bitcast %union.FIRST_UNION* %ou1129 to %struct.anon*
  %otype131 = getelementptr inbounds %struct.anon, %struct.anon* %os11130, i32 0, i32 0
  %68 = load i8, i8* %otype131, align 1
  %conv132 = zext i8 %68 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %for.body.135, label %for.end.268

for.body.135:                                     ; preds = %for.cond.127
  %69 = load %union.rec*, %union.rec** %slink, align 8
  %os1136 = bitcast %union.rec* %69 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 1
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %opred139, align 8
  %71 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  store %union.rec* %70, %union.rec** %71, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.149, %for.body.135
  %72 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  %73 = load %union.rec*, %union.rec** %72, align 8
  %os1141 = bitcast %union.rec* %73 to %struct.word_type*
  %ou1142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 1
  %os11143 = bitcast %union.FIRST_UNION* %ou1142 to %struct.anon*
  %otype144 = getelementptr inbounds %struct.anon, %struct.anon* %os11143, i32 0, i32 0
  %74 = load i8, i8* %otype144, align 1
  %conv145 = zext i8 %74 to i32
  %cmp146 = icmp eq i32 %conv145, 0
  br i1 %cmp146, label %for.body.148, label %for.end.154

for.body.148:                                     ; preds = %for.cond.140
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.148
  %75 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  %76 = load %union.rec*, %union.rec** %75, align 8
  %os1150 = bitcast %union.rec* %76 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 1
  %opred153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %opred153, align 8
  %78 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  store %union.rec* %77, %union.rec** %78, align 8
  br label %for.cond.140

for.end.154:                                      ; preds = %for.cond.140
  %79 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  %80 = load %union.rec*, %union.rec** %79, align 8
  %os1155 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 1
  %os11157 = bitcast %union.FIRST_UNION* %ou1156 to %struct.anon*
  %otype158 = getelementptr inbounds %struct.anon, %struct.anon* %os11157, i32 0, i32 0
  %81 = load i8, i8* %otype158, align 1
  %conv159 = zext i8 %81 to i32
  %cmp160 = icmp eq i32 %conv159, 9
  br i1 %cmp160, label %cond.true.162, label %cond.false.165

cond.true.162:                                    ; preds = %for.end.154
  %82 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  %83 = load %union.rec*, %union.rec** %82, align 8
  %call163 = call i32 @SplitIsDefinite(%union.rec* %83)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.182, label %if.end.262

cond.false.165:                                   ; preds = %for.end.154
  %84 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  %85 = load %union.rec*, %union.rec** %84, align 8
  %os1166 = bitcast %union.rec* %85 to %struct.word_type*
  %ou1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 1
  %os11168 = bitcast %union.FIRST_UNION* %ou1167 to %struct.anon*
  %otype169 = getelementptr inbounds %struct.anon, %struct.anon* %os11168, i32 0, i32 0
  %86 = load i8, i8* %otype169, align 1
  %conv170 = zext i8 %86 to i32
  %cmp171 = icmp sge i32 %conv170, 9
  br i1 %cmp171, label %land.rhs.173, label %land.end.181

land.rhs.173:                                     ; preds = %cond.false.165
  %87 = load %union.rec**, %union.rec*** %sdef.addr, align 8
  %88 = load %union.rec*, %union.rec** %87, align 8
  %os1174 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 1
  %os11176 = bitcast %union.FIRST_UNION* %ou1175 to %struct.anon*
  %otype177 = getelementptr inbounds %struct.anon, %struct.anon* %os11176, i32 0, i32 0
  %89 = load i8, i8* %otype177, align 1
  %conv178 = zext i8 %89 to i32
  %cmp179 = icmp sle i32 %conv178, 99
  br label %land.end.181

land.end.181:                                     ; preds = %land.rhs.173, %cond.false.165
  %90 = phi i1 [ false, %cond.false.165 ], [ %cmp179, %land.rhs.173 ]
  br i1 %90, label %if.then.182, label %if.end.262

if.then.182:                                      ; preds = %land.end.181, %cond.true.162
  %91 = load %union.rec*, %union.rec** %slink, align 8
  %os1183 = bitcast %union.rec* %91 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 0
  %opred186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %opred186, align 8
  %os1187 = bitcast %union.rec* %92 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 1
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  %93 = load %union.rec*, %union.rec** %opred190, align 8
  %94 = load %union.rec**, %union.rec*** %sg.addr, align 8
  store %union.rec* %93, %union.rec** %94, align 8
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.200, %if.then.182
  %95 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %96 = load %union.rec*, %union.rec** %95, align 8
  %os1192 = bitcast %union.rec* %96 to %struct.word_type*
  %ou1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 1
  %os11194 = bitcast %union.FIRST_UNION* %ou1193 to %struct.anon*
  %otype195 = getelementptr inbounds %struct.anon, %struct.anon* %os11194, i32 0, i32 0
  %97 = load i8, i8* %otype195, align 1
  %conv196 = zext i8 %97 to i32
  %cmp197 = icmp eq i32 %conv196, 0
  br i1 %cmp197, label %for.body.199, label %for.end.205

for.body.199:                                     ; preds = %for.cond.191
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.199
  %98 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %99 = load %union.rec*, %union.rec** %98, align 8
  %os1201 = bitcast %union.rec* %99 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred204, align 8
  %101 = load %union.rec**, %union.rec*** %sg.addr, align 8
  store %union.rec* %100, %union.rec** %101, align 8
  br label %for.cond.191

for.end.205:                                      ; preds = %for.cond.191
  br label %while.cond.206

while.cond.206:                                   ; preds = %for.end.250, %for.end.205
  %102 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %103 = load %union.rec*, %union.rec** %102, align 8
  %os1207 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 1
  %os11209 = bitcast %union.FIRST_UNION* %ou1208 to %struct.anon*
  %otype210 = getelementptr inbounds %struct.anon, %struct.anon* %os11209, i32 0, i32 0
  %104 = load i8, i8* %otype210, align 1
  %conv211 = zext i8 %104 to i32
  %cmp212 = icmp sge i32 %conv211, 119
  br i1 %cmp212, label %land.rhs.214, label %land.end.222

land.rhs.214:                                     ; preds = %while.cond.206
  %105 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %106 = load %union.rec*, %union.rec** %105, align 8
  %os1215 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 1
  %os11217 = bitcast %union.FIRST_UNION* %ou1216 to %struct.anon*
  %otype218 = getelementptr inbounds %struct.anon, %struct.anon* %os11217, i32 0, i32 0
  %107 = load i8, i8* %otype218, align 1
  %conv219 = zext i8 %107 to i32
  %cmp220 = icmp sle i32 %conv219, 138
  br label %land.end.222

land.end.222:                                     ; preds = %land.rhs.214, %while.cond.206
  %108 = phi i1 [ false, %while.cond.206 ], [ %cmp220, %land.rhs.214 ]
  br i1 %108, label %while.body.223, label %while.end.251

while.body.223:                                   ; preds = %land.end.222
  %109 = load %union.rec*, %union.rec** %slink, align 8
  %os1224 = bitcast %union.rec* %109 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 0
  %opred227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %opred227, align 8
  store %union.rec* %110, %union.rec** %slink, align 8
  %111 = load %union.rec*, %union.rec** %slink, align 8
  %os1228 = bitcast %union.rec* %111 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 0
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  %112 = load %union.rec*, %union.rec** %opred231, align 8
  %os1232 = bitcast %union.rec* %112 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 1
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred235, align 8
  %114 = load %union.rec**, %union.rec*** %sg.addr, align 8
  store %union.rec* %113, %union.rec** %114, align 8
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.245, %while.body.223
  %115 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %116 = load %union.rec*, %union.rec** %115, align 8
  %os1237 = bitcast %union.rec* %116 to %struct.word_type*
  %ou1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1237, i32 0, i32 1
  %os11239 = bitcast %union.FIRST_UNION* %ou1238 to %struct.anon*
  %otype240 = getelementptr inbounds %struct.anon, %struct.anon* %os11239, i32 0, i32 0
  %117 = load i8, i8* %otype240, align 1
  %conv241 = zext i8 %117 to i32
  %cmp242 = icmp eq i32 %conv241, 0
  br i1 %cmp242, label %for.body.244, label %for.end.250

for.body.244:                                     ; preds = %for.cond.236
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.244
  %118 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %119 = load %union.rec*, %union.rec** %118, align 8
  %os1246 = bitcast %union.rec* %119 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 1
  %opred249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred249, align 8
  %121 = load %union.rec**, %union.rec*** %sg.addr, align 8
  store %union.rec* %120, %union.rec** %121, align 8
  br label %for.cond.236

for.end.250:                                      ; preds = %for.cond.236
  br label %while.cond.206

while.end.251:                                    ; preds = %land.end.222
  %122 = load %union.rec**, %union.rec*** %sg.addr, align 8
  %123 = load %union.rec*, %union.rec** %122, align 8
  %os1252 = bitcast %union.rec* %123 to %struct.word_type*
  %ou1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 1
  %os11254 = bitcast %union.FIRST_UNION* %ou1253 to %struct.anon*
  %otype255 = getelementptr inbounds %struct.anon, %struct.anon* %os11254, i32 0, i32 0
  %124 = load i8, i8* %otype255, align 1
  %conv256 = zext i8 %124 to i32
  %cmp257 = icmp eq i32 %conv256, 1
  br i1 %cmp257, label %if.end.261, label %if.then.259

if.then.259:                                      ; preds = %while.end.251
  %125 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call260 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %while.end.251
  br label %for.end.268

if.end.262:                                       ; preds = %land.end.181, %cond.true.162
  br label %for.inc.263

for.inc.263:                                      ; preds = %if.end.262
  %126 = load %union.rec*, %union.rec** %slink, align 8
  %os1264 = bitcast %union.rec* %126 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %osucc267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 1
  %127 = load %union.rec*, %union.rec** %osucc267, align 8
  store %union.rec* %127, %union.rec** %slink, align 8
  br label %for.cond.127

for.end.268:                                      ; preds = %if.end.261, %for.cond.127
  %128 = load i32, i32* %ratm.addr, align 4
  %tobool269 = icmp ne i32 %128, 0
  br i1 %tobool269, label %cond.true.270, label %cond.false.271

cond.true.270:                                    ; preds = %for.end.268
  br label %cond.end

cond.false.271:                                   ; preds = %for.end.268
  %129 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %130 = load %union.rec*, %union.rec** %129, align 8
  %cmp272 = icmp eq %union.rec* %130, null
  br i1 %cmp272, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.271
  %131 = load %union.rec**, %union.rec*** %pg.addr, align 8
  %132 = load %union.rec*, %union.rec** %131, align 8
  %os5 = bitcast %union.rec* %132 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %133 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %133, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool274 = icmp ne i32 %bf.cast, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.271
  %134 = phi i1 [ true, %cond.false.271 ], [ %tobool274, %lor.rhs ]
  %cond = select i1 %134, i32 152, i32 153
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.270
  %cond275 = phi i32 [ 151, %cond.true.270 ], [ %cond, %lor.end ]
  %135 = load i32*, i32** %side.addr, align 8
  store i32 %cond275, i32* %135, align 4
  ret void
}

declare i32 @SplitIsDefinite(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @AdjustSize(%union.rec* %x, i32 %b, i32 %f, i32 %dim) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %b.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %dim.addr = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  %lp = alloca %union.rec*, align 8
  %rp = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %ratm = alloca i32, align 4
  %tb = alloca i32, align 4
  %tf = alloca i32, align 4
  %cby = alloca i32, align 4
  %cfy = alloca i32, align 4
  %rby = alloca i32, align 4
  %rfy = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load i32, i32* %dim.addr, align 4
  call void @SetLengthDim(i32 %0)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %b.addr, align 4
  %2 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, %4
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load i32, i32* %f.addr, align 4
  %6 = load i32, i32* %dim.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %7 to %struct.word_type*
  %ou33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 3
  %os314 = bitcast %union.THIRD_UNION* %ou33 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom1
  %8 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %5, %8
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os17 = bitcast %union.rec* %9 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %10 = load i8, i8* %otype, align 1
  %conv = zext i8 %10 to i32
  %cmp8 = icmp sge i32 %conv, 2
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %11 = load %union.rec*, %union.rec** %x.addr, align 8
  %os110 = bitcast %union.rec* %11 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os1112 = bitcast %union.FIRST_UNION* %ou111 to %struct.anon*
  %otype13 = getelementptr inbounds %struct.anon, %struct.anon* %os1112, i32 0, i32 0
  %12 = load i8, i8* %otype13, align 1
  %conv14 = zext i8 %12 to i32
  %cmp15 = icmp sle i32 %conv14, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %13 = phi i1 [ false, %lor.rhs ], [ %cmp15, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %while.cond
  %14 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %13, %land.end ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %15 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc, align 8
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp19 = icmp ne %union.rec* %16, %17
  br i1 %cmp19, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load i32, i32* %b.addr, align 4
  %cmp21 = icmp slt i32 %19, 0
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.end
  %20 = load i32, i32* %f.addr, align 4
  %cmp24 = icmp slt i32 %20, 0
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %lor.lhs.false.23, %if.end
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %21 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou128 to %struct.FILE_POS*
  %call29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %lor.lhs.false.23
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os131 = bitcast %union.rec* %22 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %23 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %23 to i32
  %cmp36 = icmp eq i32 %conv35, 16
  br i1 %cmp36, label %if.then.46, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.30
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os139 = bitcast %union.rec* %24 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon*
  %otype42 = getelementptr inbounds %struct.anon, %struct.anon* %os1141, i32 0, i32 0
  %25 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %25 to i32
  %cmp44 = icmp eq i32 %conv43, 15
  br i1 %cmp44, label %if.then.46, label %if.end.111

if.then.46:                                       ; preds = %lor.lhs.false.38, %if.end.30
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  %os147 = bitcast %union.rec* %26 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %os1149 = bitcast %union.FIRST_UNION* %ou148 to %struct.anon*
  %otype50 = getelementptr inbounds %struct.anon, %struct.anon* %os1149, i32 0, i32 0
  %27 = load i8, i8* %otype50, align 1
  %conv51 = zext i8 %27 to i32
  %cmp52 = icmp eq i32 %conv51, 16
  %conv53 = zext i1 %cmp52 to i32
  %28 = load i32, i32* %dim.addr, align 4
  %cmp54 = icmp eq i32 %28, 0
  %conv55 = zext i1 %cmp54 to i32
  %cmp56 = icmp eq i32 %conv53, %conv55
  br i1 %cmp56, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.then.46
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.46
  %30 = load i32, i32* %b.addr, align 4
  %31 = load i32, i32* %dim.addr, align 4
  %idxprom61 = sext i32 %31 to i64
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %os162 = bitcast %union.rec* %32 to %struct.word_type*
  %ou363 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 3
  %os3164 = bitcast %union.THIRD_UNION* %ou363 to %struct.anon.6*
  %oback65 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %oback65, i32 0, i64 %idxprom61
  store i32 %30, i32* %arrayidx66, align 4
  %33 = load i32, i32* %f.addr, align 4
  %34 = load i32, i32* %dim.addr, align 4
  %idxprom67 = sext i32 %34 to i64
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os168 = bitcast %union.rec* %35 to %struct.word_type*
  %ou369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 3
  %os3170 = bitcast %union.THIRD_UNION* %ou369 to %struct.anon.6*
  %ofwd71 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3170, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd71, i32 0, i64 %idxprom67
  store i32 %33, i32* %arrayidx72, align 4
  %36 = load %union.rec*, %union.rec** %x.addr, align 8
  %os173 = bitcast %union.rec* %36 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 1
  %osucc76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc76, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %if.end.60
  %38 = load %union.rec*, %union.rec** %link, align 8
  %39 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp77 = icmp ne %union.rec* %38, %39
  br i1 %cmp77, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond
  %40 = load %union.rec*, %union.rec** %link, align 8
  %os179 = bitcast %union.rec* %40 to %struct.word_type*
  %olist80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist80, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx81, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %41, %union.rec** %y, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc, %for.body
  %42 = load %union.rec*, %union.rec** %y, align 8
  %os183 = bitcast %union.rec* %42 to %struct.word_type*
  %ou184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 1
  %os1185 = bitcast %union.FIRST_UNION* %ou184 to %struct.anon*
  %otype86 = getelementptr inbounds %struct.anon, %struct.anon* %os1185, i32 0, i32 0
  %43 = load i8, i8* %otype86, align 1
  %conv87 = zext i8 %43 to i32
  %cmp88 = icmp eq i32 %conv87, 0
  br i1 %cmp88, label %for.body.90, label %for.end

for.body.90:                                      ; preds = %for.cond.82
  br label %for.inc

for.inc:                                          ; preds = %for.body.90
  %44 = load %union.rec*, %union.rec** %y, align 8
  %os191 = bitcast %union.rec* %44 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 0
  %opred94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred94, align 8
  store %union.rec* %45, %union.rec** %y, align 8
  br label %for.cond.82

for.end:                                          ; preds = %for.cond.82
  %46 = load %union.rec*, %union.rec** %y, align 8
  %os195 = bitcast %union.rec* %46 to %struct.word_type*
  %ou196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 1
  %os1197 = bitcast %union.FIRST_UNION* %ou196 to %struct.anon*
  %otype98 = getelementptr inbounds %struct.anon, %struct.anon* %os1197, i32 0, i32 0
  %47 = load i8, i8* %otype98, align 1
  %conv99 = zext i8 %47 to i32
  %cmp100 = icmp eq i32 %conv99, 9
  br i1 %cmp100, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %for.end
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %for.end
  %49 = load %union.rec*, %union.rec** %y, align 8
  %50 = load i32, i32* %b.addr, align 4
  %51 = load i32, i32* %f.addr, align 4
  %52 = load i32, i32* %dim.addr, align 4
  call void @AdjustSize(%union.rec* %49, i32 %50, i32 %51, i32 %52)
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %53 = load %union.rec*, %union.rec** %link, align 8
  %os1106 = bitcast %union.rec* %53 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 1
  %osucc109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 1
  %54 = load %union.rec*, %union.rec** %osucc109, align 8
  store %union.rec* %54, %union.rec** %link, align 8
  br label %for.cond

for.end.110:                                      ; preds = %for.cond
  br label %while.end

if.end.111:                                       ; preds = %lor.lhs.false.38
  %55 = load i32, i32* %dim.addr, align 4
  %cmp112 = icmp eq i32 %55, 0
  br i1 %cmp112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.111
  %56 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1114 = bitcast %union.rec* %56 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 1
  %osucc117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %osucc117, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.111
  %58 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1118 = bitcast %union.rec* %58 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 1
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %opred121, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %57, %cond.true ], [ %59, %cond.false ]
  store %union.rec* %cond, %union.rec** %link, align 8
  store i32 0, i32* %ratm, align 4
  %60 = load %union.rec*, %union.rec** %link, align 8
  %os1122 = bitcast %union.rec* %60 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 0
  %osucc125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 1
  %61 = load %union.rec*, %union.rec** %osucc125, align 8
  store %union.rec* %61, %union.rec** %tlink, align 8
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.164, %cond.end
  %62 = load %union.rec*, %union.rec** %tlink, align 8
  %os1127 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 1
  %os11129 = bitcast %union.FIRST_UNION* %ou1128 to %struct.anon*
  %otype130 = getelementptr inbounds %struct.anon, %struct.anon* %os11129, i32 0, i32 0
  %63 = load i8, i8* %otype130, align 1
  %conv131 = zext i8 %63 to i32
  %cmp132 = icmp eq i32 %conv131, 0
  br i1 %cmp132, label %for.body.134, label %for.end.169

for.body.134:                                     ; preds = %for.cond.126
  %64 = load %union.rec*, %union.rec** %tlink, align 8
  %os1135 = bitcast %union.rec* %64 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 1
  %opred138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred138, align 8
  store %union.rec* %65, %union.rec** %y, align 8
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.148, %for.body.134
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os1140 = bitcast %union.rec* %66 to %struct.word_type*
  %ou1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 1
  %os11142 = bitcast %union.FIRST_UNION* %ou1141 to %struct.anon*
  %otype143 = getelementptr inbounds %struct.anon, %struct.anon* %os11142, i32 0, i32 0
  %67 = load i8, i8* %otype143, align 1
  %conv144 = zext i8 %67 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %for.body.147, label %for.end.154

for.body.147:                                     ; preds = %for.cond.139
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.147
  %68 = load %union.rec*, %union.rec** %y, align 8
  %os1150 = bitcast %union.rec* %68 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 1
  %opred153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred153, align 8
  store %union.rec* %69, %union.rec** %y, align 8
  br label %for.cond.139

for.end.154:                                      ; preds = %for.cond.139
  %70 = load %union.rec*, %union.rec** %y, align 8
  %os1155 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 1
  %os11157 = bitcast %union.FIRST_UNION* %ou1156 to %struct.anon*
  %otype158 = getelementptr inbounds %struct.anon, %struct.anon* %os11157, i32 0, i32 0
  %71 = load i8, i8* %otype158, align 1
  %conv159 = zext i8 %71 to i32
  %cmp160 = icmp eq i32 %conv159, 1
  br i1 %cmp160, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %for.end.154
  %72 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %72 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %73 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %73, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %land.lhs.true
  store i32 1, i32* %ratm, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %land.lhs.true, %for.end.154
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %74 = load %union.rec*, %union.rec** %tlink, align 8
  %os1165 = bitcast %union.rec* %74 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 0
  %osucc168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 1
  %75 = load %union.rec*, %union.rec** %osucc168, align 8
  store %union.rec* %75, %union.rec** %tlink, align 8
  br label %for.cond.126

for.end.169:                                      ; preds = %for.cond.126
  %76 = load %union.rec*, %union.rec** %tlink, align 8
  store %union.rec* %76, %union.rec** %y, align 8
  %77 = load %union.rec*, %union.rec** %y, align 8
  %os1170 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 1
  %os11172 = bitcast %union.FIRST_UNION* %ou1171 to %struct.anon*
  %otype173 = getelementptr inbounds %struct.anon, %struct.anon* %os11172, i32 0, i32 0
  %78 = load i8, i8* %otype173, align 1
  %conv174 = zext i8 %78 to i32
  switch i32 %conv174, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb.596
    i32 36, label %sw.bb.596
    i32 37, label %sw.bb.596
    i32 40, label %sw.bb.596
    i32 41, label %sw.bb.596
    i32 20, label %sw.bb.596
    i32 21, label %sw.bb.596
    i32 22, label %sw.bb.596
    i32 23, label %sw.bb.596
    i32 24, label %sw.bb.596
    i32 25, label %sw.bb.596
    i32 96, label %sw.bb.596
    i32 97, label %sw.bb.596
    i32 98, label %sw.bb.596
    i32 99, label %sw.bb.596
    i32 35, label %sw.bb.596
    i32 51, label %sw.bb.596
    i32 30, label %sw.bb.609
    i32 31, label %sw.bb.609
    i32 32, label %sw.bb.635
    i32 33, label %sw.bb.635
    i32 34, label %sw.bb.661
    i32 50, label %sw.bb.697
    i32 26, label %sw.bb.747
    i32 27, label %sw.bb.747
    i32 38, label %sw.bb.845
    i32 39, label %sw.bb.845
    i32 28, label %sw.bb.884
    i32 29, label %sw.bb.884
    i32 16, label %sw.bb.954
    i32 15, label %sw.bb.954
    i32 19, label %sw.bb.1017
    i32 18, label %sw.bb.1017
    i32 17, label %sw.bb.1017
    i32 44, label %sw.bb.1302
    i32 43, label %sw.bb.1313
    i32 46, label %sw.bb.1313
    i32 42, label %sw.bb.1341
    i32 45, label %sw.bb.1341
    i32 13, label %sw.bb.1369
    i32 14, label %sw.bb.1369
    i32 11, label %sw.bb.1408
    i32 12, label %sw.bb.1408
    i32 2, label %sw.bb.1408
    i32 5, label %sw.bb.1408
    i32 4, label %sw.bb.1408
    i32 6, label %sw.bb.1408
    i32 7, label %sw.bb.1408
  ]

sw.bb:                                            ; preds = %for.end.169
  %79 = load %union.rec*, %union.rec** %y, align 8
  %os1175 = bitcast %union.rec* %79 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load176 = load i16, i16* %ogall_dir, align 2
  %bf.lshr177 = lshr i16 %bf.load176, 8
  %bf.clear178 = and i16 %bf.lshr177, 1
  %bf.cast179 = zext i16 %bf.clear178 to i32
  %cmp180 = icmp eq i32 %bf.cast179, 0
  br i1 %cmp180, label %if.then.182, label %if.else

if.then.182:                                      ; preds = %sw.bb
  %80 = load i32, i32* %b.addr, align 4
  %81 = load i32, i32* %dim.addr, align 4
  %idxprom183 = sext i32 %81 to i64
  %82 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1184 = bitcast %union.rec* %82 to %struct.word_type*
  %ou3185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 3
  %os31186 = bitcast %union.THIRD_UNION* %ou3185 to %struct.anon.6*
  %oback187 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x i32], [2 x i32]* %oback187, i32 0, i64 %idxprom183
  store i32 %80, i32* %arrayidx188, align 4
  %83 = load i32, i32* %f.addr, align 4
  %84 = load i32, i32* %dim.addr, align 4
  %idxprom189 = sext i32 %84 to i64
  %85 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1190 = bitcast %union.rec* %85 to %struct.word_type*
  %ou3191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 3
  %os31192 = bitcast %union.THIRD_UNION* %ou3191 to %struct.anon.6*
  %ofwd193 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31192, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd193, i32 0, i64 %idxprom189
  store i32 %83, i32* %arrayidx194, align 4
  br label %while.end

if.else:                                          ; preds = %sw.bb
  %86 = load i32, i32* %dim.addr, align 4
  %cmp195 = icmp eq i32 %86, 1
  br i1 %cmp195, label %if.then.197, label %if.else.210

if.then.197:                                      ; preds = %if.else
  %87 = load i32, i32* %b.addr, align 4
  %88 = load i32, i32* %dim.addr, align 4
  %idxprom198 = sext i32 %88 to i64
  %89 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1199 = bitcast %union.rec* %89 to %struct.word_type*
  %ou3200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 3
  %os31201 = bitcast %union.THIRD_UNION* %ou3200 to %struct.anon.6*
  %oback202 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x i32], [2 x i32]* %oback202, i32 0, i64 %idxprom198
  store i32 %87, i32* %arrayidx203, align 4
  %90 = load i32, i32* %f.addr, align 4
  %91 = load i32, i32* %dim.addr, align 4
  %idxprom204 = sext i32 %91 to i64
  %92 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1205 = bitcast %union.rec* %92 to %struct.word_type*
  %ou3206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 3
  %os31207 = bitcast %union.THIRD_UNION* %ou3206 to %struct.anon.6*
  %ofwd208 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31207, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd208, i32 0, i64 %idxprom204
  store i32 %90, i32* %arrayidx209, align 4
  br label %while.end

if.else.210:                                      ; preds = %if.else
  %93 = load %union.rec*, %union.rec** %link, align 8
  %os1211 = bitcast %union.rec* %93 to %struct.word_type*
  %olist212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist212, i32 0, i64 0
  %opred214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx213, i32 0, i32 0
  %94 = load %union.rec*, %union.rec** %opred214, align 8
  store %union.rec* %94, %union.rec** %lp, align 8
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.255, %if.else.210
  %95 = load %union.rec*, %union.rec** %lp, align 8
  %96 = load %union.rec*, %union.rec** %y, align 8
  %cmp216 = icmp ne %union.rec* %95, %96
  br i1 %cmp216, label %for.body.218, label %for.end.260

for.body.218:                                     ; preds = %for.cond.215
  %97 = load %union.rec*, %union.rec** %lp, align 8
  %os1219 = bitcast %union.rec* %97 to %struct.word_type*
  %olist220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1219, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist220, i32 0, i64 1
  %opred222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx221, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred222, align 8
  store %union.rec* %98, %union.rec** %z, align 8
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.232, %for.body.218
  %99 = load %union.rec*, %union.rec** %z, align 8
  %os1224 = bitcast %union.rec* %99 to %struct.word_type*
  %ou1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 1
  %os11226 = bitcast %union.FIRST_UNION* %ou1225 to %struct.anon*
  %otype227 = getelementptr inbounds %struct.anon, %struct.anon* %os11226, i32 0, i32 0
  %100 = load i8, i8* %otype227, align 1
  %conv228 = zext i8 %100 to i32
  %cmp229 = icmp eq i32 %conv228, 0
  br i1 %cmp229, label %for.body.231, label %for.end.237

for.body.231:                                     ; preds = %for.cond.223
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.body.231
  %101 = load %union.rec*, %union.rec** %z, align 8
  %os1233 = bitcast %union.rec* %101 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 1
  %opred236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred236, align 8
  store %union.rec* %102, %union.rec** %z, align 8
  br label %for.cond.223

for.end.237:                                      ; preds = %for.cond.223
  %103 = load %union.rec*, %union.rec** %z, align 8
  %os1238 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 1
  %os11240 = bitcast %union.FIRST_UNION* %ou1239 to %struct.anon*
  %otype241 = getelementptr inbounds %struct.anon, %struct.anon* %os11240, i32 0, i32 0
  %104 = load i8, i8* %otype241, align 1
  %conv242 = zext i8 %104 to i32
  %cmp243 = icmp eq i32 %conv242, 1
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.254

land.lhs.true.245:                                ; preds = %for.end.237
  %105 = load %union.rec*, %union.rec** %z, align 8
  %os5246 = bitcast %union.rec* %105 to %struct.gapobj_type*
  %ogap247 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5246, i32 0, i32 3
  %106 = bitcast %struct.GAP* %ogap247 to i16*
  %bf.load248 = load i16, i16* %106, align 4
  %bf.lshr249 = lshr i16 %bf.load248, 9
  %bf.clear250 = and i16 %bf.lshr249, 1
  %bf.cast251 = zext i16 %bf.clear250 to i32
  %tobool252 = icmp ne i32 %bf.cast251, 0
  br i1 %tobool252, label %if.end.254, label %if.then.253

if.then.253:                                      ; preds = %land.lhs.true.245
  br label %for.end.260

if.end.254:                                       ; preds = %land.lhs.true.245, %for.end.237
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254
  %107 = load %union.rec*, %union.rec** %lp, align 8
  %os1256 = bitcast %union.rec* %107 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 0
  %opred259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 0
  %108 = load %union.rec*, %union.rec** %opred259, align 8
  store %union.rec* %108, %union.rec** %lp, align 8
  br label %for.cond.215

for.end.260:                                      ; preds = %if.then.253, %for.cond.215
  %109 = load %union.rec*, %union.rec** %link, align 8
  %os1261 = bitcast %union.rec* %109 to %struct.word_type*
  %olist262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist262, i32 0, i64 0
  %osucc264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx263, i32 0, i32 1
  %110 = load %union.rec*, %union.rec** %osucc264, align 8
  store %union.rec* %110, %union.rec** %rp, align 8
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.305, %for.end.260
  %111 = load %union.rec*, %union.rec** %rp, align 8
  %112 = load %union.rec*, %union.rec** %y, align 8
  %cmp266 = icmp ne %union.rec* %111, %112
  br i1 %cmp266, label %for.body.268, label %for.end.310

for.body.268:                                     ; preds = %for.cond.265
  %113 = load %union.rec*, %union.rec** %rp, align 8
  %os1269 = bitcast %union.rec* %113 to %struct.word_type*
  %olist270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist270, i32 0, i64 1
  %opred272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx271, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred272, align 8
  store %union.rec* %114, %union.rec** %z, align 8
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.282, %for.body.268
  %115 = load %union.rec*, %union.rec** %z, align 8
  %os1274 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 1
  %os11276 = bitcast %union.FIRST_UNION* %ou1275 to %struct.anon*
  %otype277 = getelementptr inbounds %struct.anon, %struct.anon* %os11276, i32 0, i32 0
  %116 = load i8, i8* %otype277, align 1
  %conv278 = zext i8 %116 to i32
  %cmp279 = icmp eq i32 %conv278, 0
  br i1 %cmp279, label %for.body.281, label %for.end.287

for.body.281:                                     ; preds = %for.cond.273
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.body.281
  %117 = load %union.rec*, %union.rec** %z, align 8
  %os1283 = bitcast %union.rec* %117 to %struct.word_type*
  %olist284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist284, i32 0, i64 1
  %opred286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx285, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred286, align 8
  store %union.rec* %118, %union.rec** %z, align 8
  br label %for.cond.273

for.end.287:                                      ; preds = %for.cond.273
  %119 = load %union.rec*, %union.rec** %z, align 8
  %os1288 = bitcast %union.rec* %119 to %struct.word_type*
  %ou1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 1
  %os11290 = bitcast %union.FIRST_UNION* %ou1289 to %struct.anon*
  %otype291 = getelementptr inbounds %struct.anon, %struct.anon* %os11290, i32 0, i32 0
  %120 = load i8, i8* %otype291, align 1
  %conv292 = zext i8 %120 to i32
  %cmp293 = icmp eq i32 %conv292, 1
  br i1 %cmp293, label %land.lhs.true.295, label %if.end.304

land.lhs.true.295:                                ; preds = %for.end.287
  %121 = load %union.rec*, %union.rec** %z, align 8
  %os5296 = bitcast %union.rec* %121 to %struct.gapobj_type*
  %ogap297 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5296, i32 0, i32 3
  %122 = bitcast %struct.GAP* %ogap297 to i16*
  %bf.load298 = load i16, i16* %122, align 4
  %bf.lshr299 = lshr i16 %bf.load298, 9
  %bf.clear300 = and i16 %bf.lshr299, 1
  %bf.cast301 = zext i16 %bf.clear300 to i32
  %tobool302 = icmp ne i32 %bf.cast301, 0
  br i1 %tobool302, label %if.end.304, label %if.then.303

if.then.303:                                      ; preds = %land.lhs.true.295
  br label %for.end.310

if.end.304:                                       ; preds = %land.lhs.true.295, %for.end.287
  br label %for.inc.305

for.inc.305:                                      ; preds = %if.end.304
  %123 = load %union.rec*, %union.rec** %rp, align 8
  %os1306 = bitcast %union.rec* %123 to %struct.word_type*
  %olist307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1306, i32 0, i32 0
  %arrayidx308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist307, i32 0, i64 0
  %osucc309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx308, i32 0, i32 1
  %124 = load %union.rec*, %union.rec** %osucc309, align 8
  store %union.rec* %124, %union.rec** %rp, align 8
  br label %for.cond.265

for.end.310:                                      ; preds = %if.then.303, %for.cond.265
  %125 = load i32, i32* %b.addr, align 4
  %126 = load i32, i32* %dim.addr, align 4
  %idxprom311 = sext i32 %126 to i64
  %127 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1312 = bitcast %union.rec* %127 to %struct.word_type*
  %ou3313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 3
  %os31314 = bitcast %union.THIRD_UNION* %ou3313 to %struct.anon.6*
  %oback315 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31314, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [2 x i32], [2 x i32]* %oback315, i32 0, i64 %idxprom311
  store i32 %125, i32* %arrayidx316, align 4
  %128 = load i32, i32* %f.addr, align 4
  %129 = load i32, i32* %dim.addr, align 4
  %idxprom317 = sext i32 %129 to i64
  %130 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1318 = bitcast %union.rec* %130 to %struct.word_type*
  %ou3319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 3
  %os31320 = bitcast %union.THIRD_UNION* %ou3319 to %struct.anon.6*
  %ofwd321 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31320, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd321, i32 0, i64 %idxprom317
  store i32 %128, i32* %arrayidx322, align 4
  %131 = load %union.rec*, %union.rec** %lp, align 8
  %132 = load %union.rec*, %union.rec** %y, align 8
  %cmp323 = icmp eq %union.rec* %131, %132
  br i1 %cmp323, label %land.lhs.true.325, label %if.else.374

land.lhs.true.325:                                ; preds = %for.end.310
  %133 = load %union.rec*, %union.rec** %rp, align 8
  %134 = load %union.rec*, %union.rec** %y, align 8
  %cmp326 = icmp eq %union.rec* %133, %134
  br i1 %cmp326, label %land.lhs.true.328, label %if.else.374

land.lhs.true.328:                                ; preds = %land.lhs.true.325
  %135 = load %union.rec*, %union.rec** %y, align 8
  %os1329 = bitcast %union.rec* %135 to %struct.word_type*
  %ou2330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 2
  %os23331 = bitcast %union.SECOND_UNION* %ou2330 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23331, i32 0, i32 2
  %bf.load332 = load i16, i16* %oblocked, align 2
  %bf.lshr333 = lshr i16 %bf.load332, 5
  %bf.clear334 = and i16 %bf.lshr333, 1
  %bf.cast335 = zext i16 %bf.clear334 to i32
  %tobool336 = icmp ne i32 %bf.cast335, 0
  br i1 %tobool336, label %if.else.374, label %if.then.337

if.then.337:                                      ; preds = %land.lhs.true.328
  %136 = load i32, i32* %b.addr, align 4
  %137 = load i32, i32* %dim.addr, align 4
  %idxprom338 = sext i32 %137 to i64
  %138 = load %union.rec*, %union.rec** %y, align 8
  %os1339 = bitcast %union.rec* %138 to %struct.word_type*
  %ou3340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 3
  %os31341 = bitcast %union.THIRD_UNION* %ou3340 to %struct.anon.6*
  %oback342 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31341, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [2 x i32], [2 x i32]* %oback342, i32 0, i64 %idxprom338
  %139 = load i32, i32* %arrayidx343, align 4
  %cmp344 = icmp slt i32 %136, %139
  br i1 %cmp344, label %cond.true.346, label %cond.false.353

cond.true.346:                                    ; preds = %if.then.337
  %140 = load i32, i32* %dim.addr, align 4
  %idxprom347 = sext i32 %140 to i64
  %141 = load %union.rec*, %union.rec** %y, align 8
  %os1348 = bitcast %union.rec* %141 to %struct.word_type*
  %ou3349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 3
  %os31350 = bitcast %union.THIRD_UNION* %ou3349 to %struct.anon.6*
  %oback351 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [2 x i32], [2 x i32]* %oback351, i32 0, i64 %idxprom347
  %142 = load i32, i32* %arrayidx352, align 4
  br label %cond.end.354

cond.false.353:                                   ; preds = %if.then.337
  %143 = load i32, i32* %b.addr, align 4
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.353, %cond.true.346
  %cond355 = phi i32 [ %142, %cond.true.346 ], [ %143, %cond.false.353 ]
  store i32 %cond355, i32* %b.addr, align 4
  %144 = load i32, i32* %f.addr, align 4
  %145 = load i32, i32* %dim.addr, align 4
  %idxprom356 = sext i32 %145 to i64
  %146 = load %union.rec*, %union.rec** %y, align 8
  %os1357 = bitcast %union.rec* %146 to %struct.word_type*
  %ou3358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 3
  %os31359 = bitcast %union.THIRD_UNION* %ou3358 to %struct.anon.6*
  %ofwd360 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31359, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd360, i32 0, i64 %idxprom356
  %147 = load i32, i32* %arrayidx361, align 4
  %cmp362 = icmp slt i32 %144, %147
  br i1 %cmp362, label %cond.true.364, label %cond.false.371

cond.true.364:                                    ; preds = %cond.end.354
  %148 = load i32, i32* %dim.addr, align 4
  %idxprom365 = sext i32 %148 to i64
  %149 = load %union.rec*, %union.rec** %y, align 8
  %os1366 = bitcast %union.rec* %149 to %struct.word_type*
  %ou3367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 3
  %os31368 = bitcast %union.THIRD_UNION* %ou3367 to %struct.anon.6*
  %ofwd369 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31368, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd369, i32 0, i64 %idxprom365
  %150 = load i32, i32* %arrayidx370, align 4
  br label %cond.end.372

cond.false.371:                                   ; preds = %cond.end.354
  %151 = load i32, i32* %f.addr, align 4
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.371, %cond.true.364
  %cond373 = phi i32 [ %150, %cond.true.364 ], [ %151, %cond.false.371 ]
  store i32 %cond373, i32* %f.addr, align 4
  br label %if.end.488

if.else.374:                                      ; preds = %land.lhs.true.328, %land.lhs.true.325, %for.end.310
  store i32 0, i32* %tf, align 4
  store i32 0, i32* %tb, align 4
  %152 = load %union.rec*, %union.rec** %lp, align 8
  %os1375 = bitcast %union.rec* %152 to %struct.word_type*
  %olist376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1375, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist376, i32 0, i64 0
  %osucc378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx377, i32 0, i32 1
  %153 = load %union.rec*, %union.rec** %osucc378, align 8
  store %union.rec* %153, %union.rec** %link, align 8
  br label %for.cond.379

for.cond.379:                                     ; preds = %for.inc.463, %if.else.374
  %154 = load %union.rec*, %union.rec** %link, align 8
  %155 = load %union.rec*, %union.rec** %rp, align 8
  %cmp380 = icmp ne %union.rec* %154, %155
  br i1 %cmp380, label %for.body.382, label %for.end.468

for.body.382:                                     ; preds = %for.cond.379
  %156 = load %union.rec*, %union.rec** %link, align 8
  %os1383 = bitcast %union.rec* %156 to %struct.word_type*
  %olist384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1383, i32 0, i32 0
  %arrayidx385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist384, i32 0, i64 1
  %opred386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx385, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred386, align 8
  store %union.rec* %157, %union.rec** %z, align 8
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.396, %for.body.382
  %158 = load %union.rec*, %union.rec** %z, align 8
  %os1388 = bitcast %union.rec* %158 to %struct.word_type*
  %ou1389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 1
  %os11390 = bitcast %union.FIRST_UNION* %ou1389 to %struct.anon*
  %otype391 = getelementptr inbounds %struct.anon, %struct.anon* %os11390, i32 0, i32 0
  %159 = load i8, i8* %otype391, align 1
  %conv392 = zext i8 %159 to i32
  %cmp393 = icmp eq i32 %conv392, 0
  br i1 %cmp393, label %for.body.395, label %for.end.401

for.body.395:                                     ; preds = %for.cond.387
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.395
  %160 = load %union.rec*, %union.rec** %z, align 8
  %os1397 = bitcast %union.rec* %160 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 1
  %opred400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 0
  %161 = load %union.rec*, %union.rec** %opred400, align 8
  store %union.rec* %161, %union.rec** %z, align 8
  br label %for.cond.387

for.end.401:                                      ; preds = %for.cond.387
  %162 = load %union.rec*, %union.rec** %z, align 8
  %os1402 = bitcast %union.rec* %162 to %struct.word_type*
  %ou1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 1
  %os11404 = bitcast %union.FIRST_UNION* %ou1403 to %struct.anon*
  %otype405 = getelementptr inbounds %struct.anon, %struct.anon* %os11404, i32 0, i32 0
  %163 = load i8, i8* %otype405, align 1
  %conv406 = zext i8 %163 to i32
  %cmp407 = icmp eq i32 %conv406, 1
  br i1 %cmp407, label %if.then.425, label %lor.lhs.false.409

lor.lhs.false.409:                                ; preds = %for.end.401
  %164 = load %union.rec*, %union.rec** %z, align 8
  %os1410 = bitcast %union.rec* %164 to %struct.word_type*
  %ou1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1410, i32 0, i32 1
  %os11412 = bitcast %union.FIRST_UNION* %ou1411 to %struct.anon*
  %otype413 = getelementptr inbounds %struct.anon, %struct.anon* %os11412, i32 0, i32 0
  %165 = load i8, i8* %otype413, align 1
  %conv414 = zext i8 %165 to i32
  %cmp415 = icmp sge i32 %conv414, 119
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.426

land.lhs.true.417:                                ; preds = %lor.lhs.false.409
  %166 = load %union.rec*, %union.rec** %z, align 8
  %os1418 = bitcast %union.rec* %166 to %struct.word_type*
  %ou1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1418, i32 0, i32 1
  %os11420 = bitcast %union.FIRST_UNION* %ou1419 to %struct.anon*
  %otype421 = getelementptr inbounds %struct.anon, %struct.anon* %os11420, i32 0, i32 0
  %167 = load i8, i8* %otype421, align 1
  %conv422 = zext i8 %167 to i32
  %cmp423 = icmp sle i32 %conv422, 138
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %land.lhs.true.417, %for.end.401
  br label %for.inc.463

if.end.426:                                       ; preds = %land.lhs.true.417, %lor.lhs.false.409
  %168 = load i32, i32* %tb, align 4
  %169 = load i32, i32* %dim.addr, align 4
  %idxprom427 = sext i32 %169 to i64
  %170 = load %union.rec*, %union.rec** %z, align 8
  %os1428 = bitcast %union.rec* %170 to %struct.word_type*
  %ou3429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 3
  %os31430 = bitcast %union.THIRD_UNION* %ou3429 to %struct.anon.6*
  %oback431 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31430, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x i32], [2 x i32]* %oback431, i32 0, i64 %idxprom427
  %171 = load i32, i32* %arrayidx432, align 4
  %cmp433 = icmp slt i32 %168, %171
  br i1 %cmp433, label %cond.true.435, label %cond.false.442

cond.true.435:                                    ; preds = %if.end.426
  %172 = load i32, i32* %dim.addr, align 4
  %idxprom436 = sext i32 %172 to i64
  %173 = load %union.rec*, %union.rec** %z, align 8
  %os1437 = bitcast %union.rec* %173 to %struct.word_type*
  %ou3438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1437, i32 0, i32 3
  %os31439 = bitcast %union.THIRD_UNION* %ou3438 to %struct.anon.6*
  %oback440 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [2 x i32], [2 x i32]* %oback440, i32 0, i64 %idxprom436
  %174 = load i32, i32* %arrayidx441, align 4
  br label %cond.end.443

cond.false.442:                                   ; preds = %if.end.426
  %175 = load i32, i32* %tb, align 4
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.442, %cond.true.435
  %cond444 = phi i32 [ %174, %cond.true.435 ], [ %175, %cond.false.442 ]
  store i32 %cond444, i32* %tb, align 4
  %176 = load i32, i32* %tf, align 4
  %177 = load i32, i32* %dim.addr, align 4
  %idxprom445 = sext i32 %177 to i64
  %178 = load %union.rec*, %union.rec** %z, align 8
  %os1446 = bitcast %union.rec* %178 to %struct.word_type*
  %ou3447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1446, i32 0, i32 3
  %os31448 = bitcast %union.THIRD_UNION* %ou3447 to %struct.anon.6*
  %ofwd449 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31448, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd449, i32 0, i64 %idxprom445
  %179 = load i32, i32* %arrayidx450, align 4
  %cmp451 = icmp slt i32 %176, %179
  br i1 %cmp451, label %cond.true.453, label %cond.false.460

cond.true.453:                                    ; preds = %cond.end.443
  %180 = load i32, i32* %dim.addr, align 4
  %idxprom454 = sext i32 %180 to i64
  %181 = load %union.rec*, %union.rec** %z, align 8
  %os1455 = bitcast %union.rec* %181 to %struct.word_type*
  %ou3456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1455, i32 0, i32 3
  %os31457 = bitcast %union.THIRD_UNION* %ou3456 to %struct.anon.6*
  %ofwd458 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31457, i32 0, i32 1
  %arrayidx459 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd458, i32 0, i64 %idxprom454
  %182 = load i32, i32* %arrayidx459, align 4
  br label %cond.end.461

cond.false.460:                                   ; preds = %cond.end.443
  %183 = load i32, i32* %tf, align 4
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.460, %cond.true.453
  %cond462 = phi i32 [ %182, %cond.true.453 ], [ %183, %cond.false.460 ]
  store i32 %cond462, i32* %tf, align 4
  br label %for.inc.463

for.inc.463:                                      ; preds = %cond.end.461, %if.then.425
  %184 = load %union.rec*, %union.rec** %link, align 8
  %os1464 = bitcast %union.rec* %184 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 0
  %osucc467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 1
  %185 = load %union.rec*, %union.rec** %osucc467, align 8
  store %union.rec* %185, %union.rec** %link, align 8
  br label %for.cond.379

for.end.468:                                      ; preds = %for.cond.379
  store i32 0, i32* %b.addr, align 4
  %186 = load i32, i32* %tb, align 4
  %187 = load i32, i32* %tf, align 4
  %add = add nsw i32 %186, %187
  %188 = load i32, i32* %dim.addr, align 4
  %idxprom469 = sext i32 %188 to i64
  %189 = load %union.rec*, %union.rec** %y, align 8
  %os1470 = bitcast %union.rec* %189 to %struct.word_type*
  %ou3471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1470, i32 0, i32 3
  %os31472 = bitcast %union.THIRD_UNION* %ou3471 to %struct.anon.6*
  %ofwd473 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31472, i32 0, i32 1
  %arrayidx474 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd473, i32 0, i64 %idxprom469
  %190 = load i32, i32* %arrayidx474, align 4
  %cmp475 = icmp slt i32 %add, %190
  br i1 %cmp475, label %cond.true.477, label %cond.false.484

cond.true.477:                                    ; preds = %for.end.468
  %191 = load i32, i32* %dim.addr, align 4
  %idxprom478 = sext i32 %191 to i64
  %192 = load %union.rec*, %union.rec** %y, align 8
  %os1479 = bitcast %union.rec* %192 to %struct.word_type*
  %ou3480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 3
  %os31481 = bitcast %union.THIRD_UNION* %ou3480 to %struct.anon.6*
  %ofwd482 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31481, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd482, i32 0, i64 %idxprom478
  %193 = load i32, i32* %arrayidx483, align 4
  br label %cond.end.486

cond.false.484:                                   ; preds = %for.end.468
  %194 = load i32, i32* %tb, align 4
  %195 = load i32, i32* %tf, align 4
  %add485 = add nsw i32 %194, %195
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.484, %cond.true.477
  %cond487 = phi i32 [ %193, %cond.true.477 ], [ %add485, %cond.false.484 ]
  store i32 %cond487, i32* %f.addr, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %cond.end.486, %cond.end.372
  %196 = load i32, i32* %dim.addr, align 4
  %idxprom489 = sext i32 %196 to i64
  %197 = load %union.rec*, %union.rec** %y, align 8
  %os1490 = bitcast %union.rec* %197 to %struct.word_type*
  %ou3491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1490, i32 0, i32 3
  %os31492 = bitcast %union.THIRD_UNION* %ou3491 to %struct.anon.6*
  %oback493 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31492, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [2 x i32], [2 x i32]* %oback493, i32 0, i64 %idxprom489
  %198 = load i32, i32* %arrayidx494, align 4
  %199 = load i32, i32* %b.addr, align 4
  %cmp495 = icmp eq i32 %198, %199
  br i1 %cmp495, label %land.lhs.true.497, label %if.end.507

land.lhs.true.497:                                ; preds = %if.end.488
  %200 = load i32, i32* %dim.addr, align 4
  %idxprom498 = sext i32 %200 to i64
  %201 = load %union.rec*, %union.rec** %y, align 8
  %os1499 = bitcast %union.rec* %201 to %struct.word_type*
  %ou3500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 3
  %os31501 = bitcast %union.THIRD_UNION* %ou3500 to %struct.anon.6*
  %ofwd502 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31501, i32 0, i32 1
  %arrayidx503 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd502, i32 0, i64 %idxprom498
  %202 = load i32, i32* %arrayidx503, align 4
  %203 = load i32, i32* %f.addr, align 4
  %cmp504 = icmp eq i32 %202, %203
  br i1 %cmp504, label %if.then.506, label %if.end.507

if.then.506:                                      ; preds = %land.lhs.true.497
  br label %while.end

if.end.507:                                       ; preds = %land.lhs.true.497, %if.end.488
  %204 = load i32, i32* %b.addr, align 4
  %205 = load i32, i32* %dim.addr, align 4
  %idxprom508 = sext i32 %205 to i64
  %206 = load %union.rec*, %union.rec** %y, align 8
  %os1509 = bitcast %union.rec* %206 to %struct.word_type*
  %ou3510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 3
  %os31511 = bitcast %union.THIRD_UNION* %ou3510 to %struct.anon.6*
  %oback512 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x i32], [2 x i32]* %oback512, i32 0, i64 %idxprom508
  store i32 %204, i32* %arrayidx513, align 4
  %207 = load i32, i32* %f.addr, align 4
  %208 = load i32, i32* %dim.addr, align 4
  %idxprom514 = sext i32 %208 to i64
  %209 = load %union.rec*, %union.rec** %y, align 8
  %os1515 = bitcast %union.rec* %209 to %struct.word_type*
  %ou3516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 3
  %os31517 = bitcast %union.THIRD_UNION* %ou3516 to %struct.anon.6*
  %ofwd518 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31517, i32 0, i32 1
  %arrayidx519 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd518, i32 0, i64 %idxprom514
  store i32 %207, i32* %arrayidx519, align 4
  %210 = load %union.rec*, %union.rec** %y, align 8
  %os1520 = bitcast %union.rec* %210 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 1
  %osucc523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 1
  %211 = load %union.rec*, %union.rec** %osucc523, align 8
  %212 = load %union.rec*, %union.rec** %y, align 8
  %cmp524 = icmp eq %union.rec* %211, %212
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.end.507
  br label %while.end

if.end.527:                                       ; preds = %if.end.507
  %213 = load %union.rec*, %union.rec** %y, align 8
  %os1528 = bitcast %union.rec* %213 to %struct.word_type*
  %olist529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 0
  %arrayidx530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist529, i32 0, i64 1
  %osucc531 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx530, i32 0, i32 1
  %214 = load %union.rec*, %union.rec** %osucc531, align 8
  %os1532 = bitcast %union.rec* %214 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 0
  %opred535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred535, align 8
  store %union.rec* %215, %union.rec** %index, align 8
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.545, %if.end.527
  %216 = load %union.rec*, %union.rec** %index, align 8
  %os1537 = bitcast %union.rec* %216 to %struct.word_type*
  %ou1538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1537, i32 0, i32 1
  %os11539 = bitcast %union.FIRST_UNION* %ou1538 to %struct.anon*
  %otype540 = getelementptr inbounds %struct.anon, %struct.anon* %os11539, i32 0, i32 0
  %217 = load i8, i8* %otype540, align 1
  %conv541 = zext i8 %217 to i32
  %cmp542 = icmp eq i32 %conv541, 0
  br i1 %cmp542, label %for.body.544, label %for.end.550

for.body.544:                                     ; preds = %for.cond.536
  br label %for.inc.545

for.inc.545:                                      ; preds = %for.body.544
  %218 = load %union.rec*, %union.rec** %index, align 8
  %os1546 = bitcast %union.rec* %218 to %struct.word_type*
  %olist547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1546, i32 0, i32 0
  %arrayidx548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist547, i32 0, i64 0
  %opred549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx548, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %opred549, align 8
  store %union.rec* %219, %union.rec** %index, align 8
  br label %for.cond.536

for.end.550:                                      ; preds = %for.cond.536
  %220 = load %union.rec*, %union.rec** %index, align 8
  %os1551 = bitcast %union.rec* %220 to %struct.word_type*
  %ou1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1551, i32 0, i32 1
  %os11553 = bitcast %union.FIRST_UNION* %ou1552 to %struct.anon*
  %otype554 = getelementptr inbounds %struct.anon, %struct.anon* %os11553, i32 0, i32 0
  %221 = load i8, i8* %otype554, align 1
  %conv555 = zext i8 %221 to i32
  %cmp556 = icmp ne i32 %conv555, 122
  br i1 %cmp556, label %if.then.558, label %if.end.559

if.then.558:                                      ; preds = %for.end.550
  br label %while.end

if.end.559:                                       ; preds = %for.end.550
  %222 = load %union.rec*, %union.rec** %index, align 8
  %os2 = bitcast %union.rec* %222 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %223 = load %union.rec*, %union.rec** %oactual, align 8
  %cmp560 = icmp ne %union.rec* %223, null
  br i1 %cmp560, label %if.end.564, label %if.then.562

if.then.562:                                      ; preds = %if.end.559
  %224 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call563 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %224, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.562, %if.end.559
  %225 = load %union.rec*, %union.rec** %index, align 8
  %os2565 = bitcast %union.rec* %225 to %struct.closure_type*
  %oactual566 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2565, i32 0, i32 5
  %226 = load %union.rec*, %union.rec** %oactual566, align 8
  %os1567 = bitcast %union.rec* %226 to %struct.word_type*
  %ou1568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1567, i32 0, i32 1
  %os11569 = bitcast %union.FIRST_UNION* %ou1568 to %struct.anon*
  %otype570 = getelementptr inbounds %struct.anon, %struct.anon* %os11569, i32 0, i32 0
  %227 = load i8, i8* %otype570, align 1
  %conv571 = zext i8 %227 to i32
  %cmp572 = icmp eq i32 %conv571, 2
  br i1 %cmp572, label %if.end.576, label %if.then.574

if.then.574:                                      ; preds = %if.end.564
  %228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call575 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.576

if.end.576:                                       ; preds = %if.then.574, %if.end.564
  %229 = load %union.rec*, %union.rec** %index, align 8
  %os2577 = bitcast %union.rec* %229 to %struct.closure_type*
  %oactual578 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2577, i32 0, i32 5
  %230 = load %union.rec*, %union.rec** %oactual578, align 8
  %os2579 = bitcast %union.rec* %230 to %struct.closure_type*
  %oactual580 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2579, i32 0, i32 5
  %231 = load %union.rec*, %union.rec** %oactual580, align 8
  %232 = load %union.rec*, %union.rec** @GalleySym, align 8
  %cmp581 = icmp ne %union.rec* %231, %232
  br i1 %cmp581, label %land.lhs.true.583, label %if.end.591

land.lhs.true.583:                                ; preds = %if.end.576
  %233 = load %union.rec*, %union.rec** %index, align 8
  %os2584 = bitcast %union.rec* %233 to %struct.closure_type*
  %oactual585 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2584, i32 0, i32 5
  %234 = load %union.rec*, %union.rec** %oactual585, align 8
  %os2586 = bitcast %union.rec* %234 to %struct.closure_type*
  %oactual587 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2586, i32 0, i32 5
  %235 = load %union.rec*, %union.rec** %oactual587, align 8
  %236 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %cmp588 = icmp ne %union.rec* %235, %236
  br i1 %cmp588, label %if.then.590, label %if.end.591

if.then.590:                                      ; preds = %land.lhs.true.583
  br label %while.end

if.end.591:                                       ; preds = %land.lhs.true.583, %if.end.576
  %237 = load %union.rec*, %union.rec** %index, align 8
  %os2592 = bitcast %union.rec* %237 to %struct.closure_type*
  %oactual593 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2592, i32 0, i32 5
  %238 = load %union.rec*, %union.rec** %oactual593, align 8
  store %union.rec* %238, %union.rec** %y, align 8
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.591
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594
  br label %sw.epilog

sw.bb.596:                                        ; preds = %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169
  %239 = load i32, i32* %b.addr, align 4
  %240 = load i32, i32* %dim.addr, align 4
  %idxprom597 = sext i32 %240 to i64
  %241 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1598 = bitcast %union.rec* %241 to %struct.word_type*
  %ou3599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 3
  %os31600 = bitcast %union.THIRD_UNION* %ou3599 to %struct.anon.6*
  %oback601 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31600, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [2 x i32], [2 x i32]* %oback601, i32 0, i64 %idxprom597
  store i32 %239, i32* %arrayidx602, align 4
  %242 = load i32, i32* %f.addr, align 4
  %243 = load i32, i32* %dim.addr, align 4
  %idxprom603 = sext i32 %243 to i64
  %244 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1604 = bitcast %union.rec* %244 to %struct.word_type*
  %ou3605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 3
  %os31606 = bitcast %union.THIRD_UNION* %ou3605 to %struct.anon.6*
  %ofwd607 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31606, i32 0, i32 1
  %arrayidx608 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd607, i32 0, i64 %idxprom603
  store i32 %242, i32* %arrayidx608, align 4
  br label %sw.epilog

sw.bb.609:                                        ; preds = %for.end.169, %for.end.169
  %245 = load i32, i32* %b.addr, align 4
  %246 = load i32, i32* %dim.addr, align 4
  %idxprom610 = sext i32 %246 to i64
  %247 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1611 = bitcast %union.rec* %247 to %struct.word_type*
  %ou3612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 3
  %os31613 = bitcast %union.THIRD_UNION* %ou3612 to %struct.anon.6*
  %oback614 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31613, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [2 x i32], [2 x i32]* %oback614, i32 0, i64 %idxprom610
  store i32 %245, i32* %arrayidx615, align 4
  %248 = load i32, i32* %f.addr, align 4
  %249 = load i32, i32* %dim.addr, align 4
  %idxprom616 = sext i32 %249 to i64
  %250 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1617 = bitcast %union.rec* %250 to %struct.word_type*
  %ou3618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1617, i32 0, i32 3
  %os31619 = bitcast %union.THIRD_UNION* %ou3618 to %struct.anon.6*
  %ofwd620 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31619, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd620, i32 0, i64 %idxprom616
  store i32 %248, i32* %arrayidx621, align 4
  %251 = load i32, i32* %dim.addr, align 4
  %cmp622 = icmp eq i32 %251, 0
  %conv623 = zext i1 %cmp622 to i32
  %252 = load %union.rec*, %union.rec** %y, align 8
  %os1624 = bitcast %union.rec* %252 to %struct.word_type*
  %ou1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 1
  %os11626 = bitcast %union.FIRST_UNION* %ou1625 to %struct.anon*
  %otype627 = getelementptr inbounds %struct.anon, %struct.anon* %os11626, i32 0, i32 0
  %253 = load i8, i8* %otype627, align 1
  %conv628 = zext i8 %253 to i32
  %cmp629 = icmp eq i32 %conv628, 30
  %conv630 = zext i1 %cmp629 to i32
  %cmp631 = icmp eq i32 %conv623, %conv630
  br i1 %cmp631, label %if.then.633, label %if.end.634

if.then.633:                                      ; preds = %sw.bb.609
  br label %while.end

if.end.634:                                       ; preds = %sw.bb.609
  br label %sw.epilog

sw.bb.635:                                        ; preds = %for.end.169, %for.end.169
  %254 = load i32, i32* %b.addr, align 4
  %255 = load i32, i32* %dim.addr, align 4
  %idxprom636 = sext i32 %255 to i64
  %256 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1637 = bitcast %union.rec* %256 to %struct.word_type*
  %ou3638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 3
  %os31639 = bitcast %union.THIRD_UNION* %ou3638 to %struct.anon.6*
  %oback640 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x i32], [2 x i32]* %oback640, i32 0, i64 %idxprom636
  store i32 %254, i32* %arrayidx641, align 4
  %257 = load i32, i32* %f.addr, align 4
  %258 = load i32, i32* %dim.addr, align 4
  %idxprom642 = sext i32 %258 to i64
  %259 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1643 = bitcast %union.rec* %259 to %struct.word_type*
  %ou3644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1643, i32 0, i32 3
  %os31645 = bitcast %union.THIRD_UNION* %ou3644 to %struct.anon.6*
  %ofwd646 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31645, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd646, i32 0, i64 %idxprom642
  store i32 %257, i32* %arrayidx647, align 4
  %260 = load i32, i32* %dim.addr, align 4
  %cmp648 = icmp eq i32 %260, 0
  %conv649 = zext i1 %cmp648 to i32
  %261 = load %union.rec*, %union.rec** %y, align 8
  %os1650 = bitcast %union.rec* %261 to %struct.word_type*
  %ou1651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1650, i32 0, i32 1
  %os11652 = bitcast %union.FIRST_UNION* %ou1651 to %struct.anon*
  %otype653 = getelementptr inbounds %struct.anon, %struct.anon* %os11652, i32 0, i32 0
  %262 = load i8, i8* %otype653, align 1
  %conv654 = zext i8 %262 to i32
  %cmp655 = icmp eq i32 %conv654, 32
  %conv656 = zext i1 %cmp655 to i32
  %cmp657 = icmp eq i32 %conv649, %conv656
  br i1 %cmp657, label %if.then.659, label %if.end.660

if.then.659:                                      ; preds = %sw.bb.635
  br label %while.end

if.end.660:                                       ; preds = %sw.bb.635
  br label %sw.epilog

sw.bb.661:                                        ; preds = %for.end.169
  %263 = load i32, i32* %b.addr, align 4
  %264 = load i32, i32* %dim.addr, align 4
  %idxprom662 = sext i32 %264 to i64
  %265 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1663 = bitcast %union.rec* %265 to %struct.word_type*
  %ou3664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 3
  %os31665 = bitcast %union.THIRD_UNION* %ou3664 to %struct.anon.6*
  %oback666 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31665, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [2 x i32], [2 x i32]* %oback666, i32 0, i64 %idxprom662
  store i32 %263, i32* %arrayidx667, align 4
  %266 = load i32, i32* %f.addr, align 4
  %267 = load i32, i32* %dim.addr, align 4
  %idxprom668 = sext i32 %267 to i64
  %268 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1669 = bitcast %union.rec* %268 to %struct.word_type*
  %ou3670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 3
  %os31671 = bitcast %union.THIRD_UNION* %ou3670 to %struct.anon.6*
  %ofwd672 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31671, i32 0, i32 1
  %arrayidx673 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd672, i32 0, i64 %idxprom668
  store i32 %266, i32* %arrayidx673, align 4
  %269 = load i32, i32* %dim.addr, align 4
  %cmp674 = icmp eq i32 %269, 0
  br i1 %cmp674, label %if.then.676, label %if.else.684

if.then.676:                                      ; preds = %sw.bb.661
  %270 = load %union.rec*, %union.rec** %y, align 8
  %os2677 = bitcast %union.rec* %270 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2677, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  %271 = load i32, i32* %obc, align 4
  %div = sdiv i32 %271, 128
  %272 = load i32, i32* %b.addr, align 4
  %mul = mul nsw i32 %272, %div
  store i32 %mul, i32* %b.addr, align 4
  %273 = load %union.rec*, %union.rec** %y, align 8
  %os2678 = bitcast %union.rec* %273 to %struct.closure_type*
  %ou4679 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2678, i32 0, i32 4
  %oconstraint680 = bitcast %union.FOURTH_UNION* %ou4679 to %struct.CONSTRAINT*
  %obc681 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint680, i32 0, i32 0
  %274 = load i32, i32* %obc681, align 4
  %div682 = sdiv i32 %274, 128
  %275 = load i32, i32* %f.addr, align 4
  %mul683 = mul nsw i32 %275, %div682
  store i32 %mul683, i32* %f.addr, align 4
  br label %if.end.696

if.else.684:                                      ; preds = %sw.bb.661
  %276 = load %union.rec*, %union.rec** %y, align 8
  %os2685 = bitcast %union.rec* %276 to %struct.closure_type*
  %ou4686 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2685, i32 0, i32 4
  %oconstraint687 = bitcast %union.FOURTH_UNION* %ou4686 to %struct.CONSTRAINT*
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint687, i32 0, i32 2
  %277 = load i32, i32* %ofc, align 4
  %div688 = sdiv i32 %277, 128
  %278 = load i32, i32* %b.addr, align 4
  %mul689 = mul nsw i32 %278, %div688
  store i32 %mul689, i32* %b.addr, align 4
  %279 = load %union.rec*, %union.rec** %y, align 8
  %os2690 = bitcast %union.rec* %279 to %struct.closure_type*
  %ou4691 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2690, i32 0, i32 4
  %oconstraint692 = bitcast %union.FOURTH_UNION* %ou4691 to %struct.CONSTRAINT*
  %ofc693 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint692, i32 0, i32 2
  %280 = load i32, i32* %ofc693, align 4
  %div694 = sdiv i32 %280, 128
  %281 = load i32, i32* %f.addr, align 4
  %mul695 = mul nsw i32 %281, %div694
  store i32 %mul695, i32* %f.addr, align 4
  br label %if.end.696

if.end.696:                                       ; preds = %if.else.684, %if.then.676
  br label %sw.epilog

sw.bb.697:                                        ; preds = %for.end.169
  %282 = load i32, i32* %b.addr, align 4
  %283 = load i32, i32* %dim.addr, align 4
  %idxprom698 = sext i32 %283 to i64
  %284 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1699 = bitcast %union.rec* %284 to %struct.word_type*
  %ou3700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 3
  %os31701 = bitcast %union.THIRD_UNION* %ou3700 to %struct.anon.6*
  %oback702 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x i32], [2 x i32]* %oback702, i32 0, i64 %idxprom698
  store i32 %282, i32* %arrayidx703, align 4
  %285 = load i32, i32* %f.addr, align 4
  %286 = load i32, i32* %dim.addr, align 4
  %idxprom704 = sext i32 %286 to i64
  %287 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1705 = bitcast %union.rec* %287 to %struct.word_type*
  %ou3706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 3
  %os31707 = bitcast %union.THIRD_UNION* %ou3706 to %struct.anon.6*
  %ofwd708 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31707, i32 0, i32 1
  %arrayidx709 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd708, i32 0, i64 %idxprom704
  store i32 %285, i32* %arrayidx709, align 4
  %288 = load %union.rec*, %union.rec** %x.addr, align 8
  %289 = load %union.rec*, %union.rec** %y, align 8
  %os2710 = bitcast %union.rec* %289 to %struct.closure_type*
  %ou4711 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2710, i32 0, i32 4
  %oconstraint712 = bitcast %union.FOURTH_UNION* %ou4711 to %struct.CONSTRAINT*
  %osparec = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint712, i32 0, i32 3
  %290 = load i32, i32* %osparec, align 4
  call void @RotateSize(i32* %cby, i32* %cfy, i32* %rby, i32* %rfy, %union.rec* %288, i32 %290)
  %291 = load i32, i32* %cby, align 4
  %292 = load %union.rec*, %union.rec** %y, align 8
  %os1713 = bitcast %union.rec* %292 to %struct.word_type*
  %ou3714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 3
  %os31715 = bitcast %union.THIRD_UNION* %ou3714 to %struct.anon.6*
  %oback716 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31715, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x i32], [2 x i32]* %oback716, i32 0, i64 0
  %293 = load i32, i32* %arrayidx717, align 4
  %cmp718 = icmp ne i32 %291, %293
  br i1 %cmp718, label %if.then.728, label %lor.lhs.false.720

lor.lhs.false.720:                                ; preds = %sw.bb.697
  %294 = load i32, i32* %cfy, align 4
  %295 = load %union.rec*, %union.rec** %y, align 8
  %os1721 = bitcast %union.rec* %295 to %struct.word_type*
  %ou3722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 3
  %os31723 = bitcast %union.THIRD_UNION* %ou3722 to %struct.anon.6*
  %ofwd724 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31723, i32 0, i32 1
  %arrayidx725 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd724, i32 0, i64 0
  %296 = load i32, i32* %arrayidx725, align 4
  %cmp726 = icmp ne i32 %294, %296
  br i1 %cmp726, label %if.then.728, label %if.end.729

if.then.728:                                      ; preds = %lor.lhs.false.720, %sw.bb.697
  %297 = load %union.rec*, %union.rec** %y, align 8
  %298 = load i32, i32* %cby, align 4
  %299 = load i32, i32* %cfy, align 4
  call void @AdjustSize(%union.rec* %297, i32 %298, i32 %299, i32 0)
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.728, %lor.lhs.false.720
  %300 = load i32, i32* %rby, align 4
  %301 = load %union.rec*, %union.rec** %y, align 8
  %os1730 = bitcast %union.rec* %301 to %struct.word_type*
  %ou3731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1730, i32 0, i32 3
  %os31732 = bitcast %union.THIRD_UNION* %ou3731 to %struct.anon.6*
  %oback733 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31732, i32 0, i32 0
  %arrayidx734 = getelementptr inbounds [2 x i32], [2 x i32]* %oback733, i32 0, i64 1
  %302 = load i32, i32* %arrayidx734, align 4
  %cmp735 = icmp ne i32 %300, %302
  br i1 %cmp735, label %if.then.745, label %lor.lhs.false.737

lor.lhs.false.737:                                ; preds = %if.end.729
  %303 = load i32, i32* %rfy, align 4
  %304 = load %union.rec*, %union.rec** %y, align 8
  %os1738 = bitcast %union.rec* %304 to %struct.word_type*
  %ou3739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 3
  %os31740 = bitcast %union.THIRD_UNION* %ou3739 to %struct.anon.6*
  %ofwd741 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31740, i32 0, i32 1
  %arrayidx742 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd741, i32 0, i64 1
  %305 = load i32, i32* %arrayidx742, align 4
  %cmp743 = icmp ne i32 %303, %305
  br i1 %cmp743, label %if.then.745, label %if.end.746

if.then.745:                                      ; preds = %lor.lhs.false.737, %if.end.729
  %306 = load %union.rec*, %union.rec** %y, align 8
  %307 = load i32, i32* %rby, align 4
  %308 = load i32, i32* %rfy, align 4
  call void @AdjustSize(%union.rec* %306, i32 %307, i32 %308, i32 1)
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.745, %lor.lhs.false.737
  br label %while.end

sw.bb.747:                                        ; preds = %for.end.169, %for.end.169
  %309 = load %union.rec*, %union.rec** %y, align 8
  %os1748 = bitcast %union.rec* %309 to %struct.word_type*
  %ou1749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1748, i32 0, i32 1
  %os11750 = bitcast %union.FIRST_UNION* %ou1749 to %struct.anon*
  %otype751 = getelementptr inbounds %struct.anon, %struct.anon* %os11750, i32 0, i32 0
  %310 = load i8, i8* %otype751, align 1
  %conv752 = zext i8 %310 to i32
  %cmp753 = icmp eq i32 %conv752, 26
  %conv754 = zext i1 %cmp753 to i32
  %311 = load i32, i32* %dim.addr, align 4
  %cmp755 = icmp eq i32 %311, 0
  %conv756 = zext i1 %cmp755 to i32
  %cmp757 = icmp eq i32 %conv754, %conv756
  br i1 %cmp757, label %if.then.759, label %if.else.831

if.then.759:                                      ; preds = %sw.bb.747
  %312 = load i32, i32* %b.addr, align 4
  %313 = load %union.rec*, %union.rec** %y, align 8
  %os2760 = bitcast %union.rec* %313 to %struct.closure_type*
  %ou4761 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2760, i32 0, i32 4
  %oconstraint762 = bitcast %union.FOURTH_UNION* %ou4761 to %struct.CONSTRAINT*
  %obc763 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint762, i32 0, i32 0
  %314 = load i32, i32* %obc763, align 4
  %cmp764 = icmp sle i32 %312, %314
  br i1 %cmp764, label %land.lhs.true.766, label %if.then.780

land.lhs.true.766:                                ; preds = %if.then.759
  %315 = load i32, i32* %b.addr, align 4
  %316 = load i32, i32* %f.addr, align 4
  %add767 = add nsw i32 %315, %316
  %317 = load %union.rec*, %union.rec** %y, align 8
  %os2768 = bitcast %union.rec* %317 to %struct.closure_type*
  %ou4769 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2768, i32 0, i32 4
  %oconstraint770 = bitcast %union.FOURTH_UNION* %ou4769 to %struct.CONSTRAINT*
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint770, i32 0, i32 1
  %318 = load i32, i32* %obfc, align 4
  %cmp771 = icmp sle i32 %add767, %318
  br i1 %cmp771, label %land.lhs.true.773, label %if.then.780

land.lhs.true.773:                                ; preds = %land.lhs.true.766
  %319 = load i32, i32* %f.addr, align 4
  %320 = load %union.rec*, %union.rec** %y, align 8
  %os2774 = bitcast %union.rec* %320 to %struct.closure_type*
  %ou4775 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2774, i32 0, i32 4
  %oconstraint776 = bitcast %union.FOURTH_UNION* %ou4775 to %struct.CONSTRAINT*
  %ofc777 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint776, i32 0, i32 2
  %321 = load i32, i32* %ofc777, align 4
  %cmp778 = icmp sle i32 %319, %321
  br i1 %cmp778, label %if.end.815, label %if.then.780

if.then.780:                                      ; preds = %land.lhs.true.773, %land.lhs.true.766, %if.then.759
  %322 = load %union.rec*, %union.rec** %y, align 8
  %os1781 = bitcast %union.rec* %322 to %struct.word_type*
  %ou1782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 1
  %ofpos783 = bitcast %union.FIRST_UNION* %ou1782 to %struct.FILE_POS*
  %323 = load %union.rec*, %union.rec** %y, align 8
  %os2784 = bitcast %union.rec* %323 to %struct.closure_type*
  %ou4785 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2784, i32 0, i32 4
  %oconstraint786 = bitcast %union.FOURTH_UNION* %ou4785 to %struct.CONSTRAINT*
  %obc787 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint786, i32 0, i32 0
  %324 = load i32, i32* %obc787, align 4
  %call788 = call i8* @EchoLength(i32 %324)
  %325 = load %union.rec*, %union.rec** %y, align 8
  %os2789 = bitcast %union.rec* %325 to %struct.closure_type*
  %ou4790 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2789, i32 0, i32 4
  %oconstraint791 = bitcast %union.FOURTH_UNION* %ou4790 to %struct.CONSTRAINT*
  %obfc792 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint791, i32 0, i32 1
  %326 = load i32, i32* %obfc792, align 4
  %call793 = call i8* @EchoLength(i32 %326)
  %327 = load %union.rec*, %union.rec** %y, align 8
  %os2794 = bitcast %union.rec* %327 to %struct.closure_type*
  %ou4795 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2794, i32 0, i32 4
  %oconstraint796 = bitcast %union.FOURTH_UNION* %ou4795 to %struct.CONSTRAINT*
  %ofc797 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint796, i32 0, i32 2
  %328 = load i32, i32* %ofc797, align 4
  %call798 = call i8* @EchoLength(i32 %328)
  %329 = load i32, i32* %b.addr, align 4
  %call799 = call i8* @EchoLength(i32 %329)
  %330 = load i32, i32* %f.addr, align 4
  %call800 = call i8* @EchoLength(i32 %330)
  %call801 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos783, i8* %call788, i8* %call793, i8* %call798, i8* %call799, i8* %call800)
  %331 = load %union.rec*, %union.rec** %y, align 8
  %os2802 = bitcast %union.rec* %331 to %struct.closure_type*
  %ou4803 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2802, i32 0, i32 4
  %oconstraint804 = bitcast %union.FOURTH_UNION* %ou4803 to %struct.CONSTRAINT*
  %obc805 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint804, i32 0, i32 0
  store i32 8388607, i32* %obc805, align 4
  %332 = load i32, i32* %b.addr, align 4
  %333 = load i32, i32* %f.addr, align 4
  %add806 = add nsw i32 %332, %333
  %334 = load %union.rec*, %union.rec** %y, align 8
  %os2807 = bitcast %union.rec* %334 to %struct.closure_type*
  %ou4808 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2807, i32 0, i32 4
  %oconstraint809 = bitcast %union.FOURTH_UNION* %ou4808 to %struct.CONSTRAINT*
  %obfc810 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint809, i32 0, i32 1
  store i32 %add806, i32* %obfc810, align 4
  %335 = load %union.rec*, %union.rec** %y, align 8
  %os2811 = bitcast %union.rec* %335 to %struct.closure_type*
  %ou4812 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2811, i32 0, i32 4
  %oconstraint813 = bitcast %union.FOURTH_UNION* %ou4812 to %struct.CONSTRAINT*
  %ofc814 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint813, i32 0, i32 2
  store i32 8388607, i32* %ofc814, align 4
  br label %if.end.815

if.end.815:                                       ; preds = %if.then.780, %land.lhs.true.773
  %336 = load i32, i32* %b.addr, align 4
  %337 = load i32, i32* %dim.addr, align 4
  %idxprom816 = sext i32 %337 to i64
  %338 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1817 = bitcast %union.rec* %338 to %struct.word_type*
  %ou3818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1817, i32 0, i32 3
  %os31819 = bitcast %union.THIRD_UNION* %ou3818 to %struct.anon.6*
  %oback820 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31819, i32 0, i32 0
  %arrayidx821 = getelementptr inbounds [2 x i32], [2 x i32]* %oback820, i32 0, i64 %idxprom816
  store i32 %336, i32* %arrayidx821, align 4
  %339 = load i32, i32* %f.addr, align 4
  %340 = load i32, i32* %dim.addr, align 4
  %idxprom822 = sext i32 %340 to i64
  %341 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1823 = bitcast %union.rec* %341 to %struct.word_type*
  %ou3824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 3
  %os31825 = bitcast %union.THIRD_UNION* %ou3824 to %struct.anon.6*
  %ofwd826 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31825, i32 0, i32 1
  %arrayidx827 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd826, i32 0, i64 %idxprom822
  store i32 %339, i32* %arrayidx827, align 4
  %342 = load %union.rec*, %union.rec** %y, align 8
  %os2828 = bitcast %union.rec* %342 to %struct.closure_type*
  %ou4829 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2828, i32 0, i32 4
  %oconstraint830 = bitcast %union.FOURTH_UNION* %ou4829 to %struct.CONSTRAINT*
  call void @EnlargeToConstraint(i32* %b.addr, i32* %f.addr, %struct.CONSTRAINT* %oconstraint830)
  br label %if.end.844

if.else.831:                                      ; preds = %sw.bb.747
  %343 = load i32, i32* %b.addr, align 4
  %344 = load i32, i32* %dim.addr, align 4
  %idxprom832 = sext i32 %344 to i64
  %345 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1833 = bitcast %union.rec* %345 to %struct.word_type*
  %ou3834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1833, i32 0, i32 3
  %os31835 = bitcast %union.THIRD_UNION* %ou3834 to %struct.anon.6*
  %oback836 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31835, i32 0, i32 0
  %arrayidx837 = getelementptr inbounds [2 x i32], [2 x i32]* %oback836, i32 0, i64 %idxprom832
  store i32 %343, i32* %arrayidx837, align 4
  %346 = load i32, i32* %f.addr, align 4
  %347 = load i32, i32* %dim.addr, align 4
  %idxprom838 = sext i32 %347 to i64
  %348 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1839 = bitcast %union.rec* %348 to %struct.word_type*
  %ou3840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1839, i32 0, i32 3
  %os31841 = bitcast %union.THIRD_UNION* %ou3840 to %struct.anon.6*
  %ofwd842 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31841, i32 0, i32 1
  %arrayidx843 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd842, i32 0, i64 %idxprom838
  store i32 %346, i32* %arrayidx843, align 4
  br label %if.end.844

if.end.844:                                       ; preds = %if.else.831, %if.end.815
  br label %sw.epilog

sw.bb.845:                                        ; preds = %for.end.169, %for.end.169
  %349 = load %union.rec*, %union.rec** %y, align 8
  %os1846 = bitcast %union.rec* %349 to %struct.word_type*
  %ou1847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 1
  %os11848 = bitcast %union.FIRST_UNION* %ou1847 to %struct.anon*
  %otype849 = getelementptr inbounds %struct.anon, %struct.anon* %os11848, i32 0, i32 0
  %350 = load i8, i8* %otype849, align 1
  %conv850 = zext i8 %350 to i32
  %cmp851 = icmp eq i32 %conv850, 38
  %conv852 = zext i1 %cmp851 to i32
  %351 = load i32, i32* %dim.addr, align 4
  %cmp853 = icmp eq i32 %351, 0
  %conv854 = zext i1 %cmp853 to i32
  %cmp855 = icmp eq i32 %conv852, %conv854
  br i1 %cmp855, label %if.then.857, label %if.else.870

if.then.857:                                      ; preds = %sw.bb.845
  %352 = load i32, i32* %b.addr, align 4
  %353 = load i32, i32* %dim.addr, align 4
  %idxprom858 = sext i32 %353 to i64
  %354 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1859 = bitcast %union.rec* %354 to %struct.word_type*
  %ou3860 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1859, i32 0, i32 3
  %os31861 = bitcast %union.THIRD_UNION* %ou3860 to %struct.anon.6*
  %oback862 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31861, i32 0, i32 0
  %arrayidx863 = getelementptr inbounds [2 x i32], [2 x i32]* %oback862, i32 0, i64 %idxprom858
  store i32 %352, i32* %arrayidx863, align 4
  %355 = load i32, i32* %f.addr, align 4
  %356 = load i32, i32* %dim.addr, align 4
  %idxprom864 = sext i32 %356 to i64
  %357 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1865 = bitcast %union.rec* %357 to %struct.word_type*
  %ou3866 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1865, i32 0, i32 3
  %os31867 = bitcast %union.THIRD_UNION* %ou3866 to %struct.anon.6*
  %ofwd868 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31867, i32 0, i32 1
  %arrayidx869 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd868, i32 0, i64 %idxprom864
  store i32 %355, i32* %arrayidx869, align 4
  br label %if.end.883

if.else.870:                                      ; preds = %sw.bb.845
  %358 = load i32, i32* %b.addr, align 4
  %359 = load i32, i32* %dim.addr, align 4
  %idxprom871 = sext i32 %359 to i64
  %360 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1872 = bitcast %union.rec* %360 to %struct.word_type*
  %ou3873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 3
  %os31874 = bitcast %union.THIRD_UNION* %ou3873 to %struct.anon.6*
  %oback875 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31874, i32 0, i32 0
  %arrayidx876 = getelementptr inbounds [2 x i32], [2 x i32]* %oback875, i32 0, i64 %idxprom871
  store i32 %358, i32* %arrayidx876, align 4
  %361 = load i32, i32* %f.addr, align 4
  %362 = load i32, i32* %dim.addr, align 4
  %idxprom877 = sext i32 %362 to i64
  %363 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1878 = bitcast %union.rec* %363 to %struct.word_type*
  %ou3879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1878, i32 0, i32 3
  %os31880 = bitcast %union.THIRD_UNION* %ou3879 to %struct.anon.6*
  %ofwd881 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31880, i32 0, i32 1
  %arrayidx882 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd881, i32 0, i64 %idxprom877
  store i32 %361, i32* %arrayidx882, align 4
  br label %if.end.883

if.end.883:                                       ; preds = %if.else.870, %if.then.857
  br label %sw.epilog

sw.bb.884:                                        ; preds = %for.end.169, %for.end.169
  %364 = load i32, i32* %b.addr, align 4
  %365 = load i32, i32* %dim.addr, align 4
  %idxprom885 = sext i32 %365 to i64
  %366 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1886 = bitcast %union.rec* %366 to %struct.word_type*
  %ou3887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1886, i32 0, i32 3
  %os31888 = bitcast %union.THIRD_UNION* %ou3887 to %struct.anon.6*
  %oback889 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31888, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [2 x i32], [2 x i32]* %oback889, i32 0, i64 %idxprom885
  store i32 %364, i32* %arrayidx890, align 4
  %367 = load i32, i32* %f.addr, align 4
  %368 = load i32, i32* %dim.addr, align 4
  %idxprom891 = sext i32 %368 to i64
  %369 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1892 = bitcast %union.rec* %369 to %struct.word_type*
  %ou3893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1892, i32 0, i32 3
  %os31894 = bitcast %union.THIRD_UNION* %ou3893 to %struct.anon.6*
  %ofwd895 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31894, i32 0, i32 1
  %arrayidx896 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd895, i32 0, i64 %idxprom891
  store i32 %367, i32* %arrayidx896, align 4
  %370 = load %union.rec*, %union.rec** %y, align 8
  %os1897 = bitcast %union.rec* %370 to %struct.word_type*
  %ou1898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1897, i32 0, i32 1
  %os11899 = bitcast %union.FIRST_UNION* %ou1898 to %struct.anon*
  %otype900 = getelementptr inbounds %struct.anon, %struct.anon* %os11899, i32 0, i32 0
  %371 = load i8, i8* %otype900, align 1
  %conv901 = zext i8 %371 to i32
  %cmp902 = icmp eq i32 %conv901, 28
  %conv903 = zext i1 %cmp902 to i32
  %372 = load i32, i32* %dim.addr, align 4
  %cmp904 = icmp eq i32 %372, 0
  %conv905 = zext i1 %cmp904 to i32
  %cmp906 = icmp eq i32 %conv903, %conv905
  br i1 %cmp906, label %if.then.908, label %if.end.953

if.then.908:                                      ; preds = %sw.bb.884
  %373 = load %union.rec*, %union.rec** %y, align 8
  %374 = load %union.rec*, %union.rec** %x.addr, align 8
  %375 = load i32, i32* %dim.addr, align 4
  %call909 = call i32 @FindShift(%union.rec* %373, %union.rec* %374, i32 %375)
  store i32 %call909, i32* %tf, align 4
  %376 = load i32, i32* %b.addr, align 4
  %377 = load i32, i32* %tf, align 4
  %add910 = add nsw i32 %376, %377
  %cmp911 = icmp slt i32 0, %add910
  br i1 %cmp911, label %cond.true.913, label %cond.false.915

cond.true.913:                                    ; preds = %if.then.908
  %378 = load i32, i32* %b.addr, align 4
  %379 = load i32, i32* %tf, align 4
  %add914 = add nsw i32 %378, %379
  br label %cond.end.916

cond.false.915:                                   ; preds = %if.then.908
  br label %cond.end.916

cond.end.916:                                     ; preds = %cond.false.915, %cond.true.913
  %cond917 = phi i32 [ %add914, %cond.true.913 ], [ 0, %cond.false.915 ]
  %cmp918 = icmp slt i32 8388607, %cond917
  br i1 %cmp918, label %cond.true.920, label %cond.false.921

cond.true.920:                                    ; preds = %cond.end.916
  br label %cond.end.930

cond.false.921:                                   ; preds = %cond.end.916
  %380 = load i32, i32* %b.addr, align 4
  %381 = load i32, i32* %tf, align 4
  %add922 = add nsw i32 %380, %381
  %cmp923 = icmp slt i32 0, %add922
  br i1 %cmp923, label %cond.true.925, label %cond.false.927

cond.true.925:                                    ; preds = %cond.false.921
  %382 = load i32, i32* %b.addr, align 4
  %383 = load i32, i32* %tf, align 4
  %add926 = add nsw i32 %382, %383
  br label %cond.end.928

cond.false.927:                                   ; preds = %cond.false.921
  br label %cond.end.928

cond.end.928:                                     ; preds = %cond.false.927, %cond.true.925
  %cond929 = phi i32 [ %add926, %cond.true.925 ], [ 0, %cond.false.927 ]
  br label %cond.end.930

cond.end.930:                                     ; preds = %cond.end.928, %cond.true.920
  %cond931 = phi i32 [ 8388607, %cond.true.920 ], [ %cond929, %cond.end.928 ]
  store i32 %cond931, i32* %b.addr, align 4
  %384 = load i32, i32* %f.addr, align 4
  %385 = load i32, i32* %tf, align 4
  %sub = sub nsw i32 %384, %385
  %cmp932 = icmp slt i32 0, %sub
  br i1 %cmp932, label %cond.true.934, label %cond.false.936

cond.true.934:                                    ; preds = %cond.end.930
  %386 = load i32, i32* %f.addr, align 4
  %387 = load i32, i32* %tf, align 4
  %sub935 = sub nsw i32 %386, %387
  br label %cond.end.937

cond.false.936:                                   ; preds = %cond.end.930
  br label %cond.end.937

cond.end.937:                                     ; preds = %cond.false.936, %cond.true.934
  %cond938 = phi i32 [ %sub935, %cond.true.934 ], [ 0, %cond.false.936 ]
  %cmp939 = icmp slt i32 8388607, %cond938
  br i1 %cmp939, label %cond.true.941, label %cond.false.942

cond.true.941:                                    ; preds = %cond.end.937
  br label %cond.end.951

cond.false.942:                                   ; preds = %cond.end.937
  %388 = load i32, i32* %f.addr, align 4
  %389 = load i32, i32* %tf, align 4
  %sub943 = sub nsw i32 %388, %389
  %cmp944 = icmp slt i32 0, %sub943
  br i1 %cmp944, label %cond.true.946, label %cond.false.948

cond.true.946:                                    ; preds = %cond.false.942
  %390 = load i32, i32* %f.addr, align 4
  %391 = load i32, i32* %tf, align 4
  %sub947 = sub nsw i32 %390, %391
  br label %cond.end.949

cond.false.948:                                   ; preds = %cond.false.942
  br label %cond.end.949

cond.end.949:                                     ; preds = %cond.false.948, %cond.true.946
  %cond950 = phi i32 [ %sub947, %cond.true.946 ], [ 0, %cond.false.948 ]
  br label %cond.end.951

cond.end.951:                                     ; preds = %cond.end.949, %cond.true.941
  %cond952 = phi i32 [ 8388607, %cond.true.941 ], [ %cond950, %cond.end.949 ]
  store i32 %cond952, i32* %f.addr, align 4
  br label %if.end.953

if.end.953:                                       ; preds = %cond.end.951, %sw.bb.884
  br label %sw.epilog

sw.bb.954:                                        ; preds = %for.end.169, %for.end.169
  %392 = load %union.rec*, %union.rec** %y, align 8
  %os1955 = bitcast %union.rec* %392 to %struct.word_type*
  %ou1956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1955, i32 0, i32 1
  %os11957 = bitcast %union.FIRST_UNION* %ou1956 to %struct.anon*
  %otype958 = getelementptr inbounds %struct.anon, %struct.anon* %os11957, i32 0, i32 0
  %393 = load i8, i8* %otype958, align 1
  %conv959 = zext i8 %393 to i32
  %cmp960 = icmp eq i32 %conv959, 16
  %conv961 = zext i1 %cmp960 to i32
  %394 = load i32, i32* %dim.addr, align 4
  %cmp962 = icmp eq i32 %394, 0
  %conv963 = zext i1 %cmp962 to i32
  %cmp964 = icmp eq i32 %conv961, %conv963
  br i1 %cmp964, label %if.end.968, label %if.then.966

if.then.966:                                      ; preds = %sw.bb.954
  %395 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call967 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %395, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.968

if.end.968:                                       ; preds = %if.then.966, %sw.bb.954
  %396 = load i32, i32* %b.addr, align 4
  %397 = load i32, i32* %dim.addr, align 4
  %idxprom969 = sext i32 %397 to i64
  %398 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1970 = bitcast %union.rec* %398 to %struct.word_type*
  %ou3971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1970, i32 0, i32 3
  %os31972 = bitcast %union.THIRD_UNION* %ou3971 to %struct.anon.6*
  %oback973 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31972, i32 0, i32 0
  %arrayidx974 = getelementptr inbounds [2 x i32], [2 x i32]* %oback973, i32 0, i64 %idxprom969
  store i32 %396, i32* %arrayidx974, align 4
  %399 = load i32, i32* %f.addr, align 4
  %400 = load i32, i32* %dim.addr, align 4
  %idxprom975 = sext i32 %400 to i64
  %401 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1976 = bitcast %union.rec* %401 to %struct.word_type*
  %ou3977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1976, i32 0, i32 3
  %os31978 = bitcast %union.THIRD_UNION* %ou3977 to %struct.anon.6*
  %ofwd979 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31978, i32 0, i32 1
  %arrayidx980 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd979, i32 0, i64 %idxprom975
  store i32 %399, i32* %arrayidx980, align 4
  %402 = load i32, i32* %b.addr, align 4
  %403 = load i32, i32* %dim.addr, align 4
  %idxprom981 = sext i32 %403 to i64
  %404 = load %union.rec*, %union.rec** %y, align 8
  %os1982 = bitcast %union.rec* %404 to %struct.word_type*
  %ou3983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1982, i32 0, i32 3
  %os31984 = bitcast %union.THIRD_UNION* %ou3983 to %struct.anon.6*
  %oback985 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31984, i32 0, i32 0
  %arrayidx986 = getelementptr inbounds [2 x i32], [2 x i32]* %oback985, i32 0, i64 %idxprom981
  %405 = load i32, i32* %arrayidx986, align 4
  %cmp987 = icmp slt i32 %402, %405
  br i1 %cmp987, label %cond.true.989, label %cond.false.996

cond.true.989:                                    ; preds = %if.end.968
  %406 = load i32, i32* %dim.addr, align 4
  %idxprom990 = sext i32 %406 to i64
  %407 = load %union.rec*, %union.rec** %y, align 8
  %os1991 = bitcast %union.rec* %407 to %struct.word_type*
  %ou3992 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1991, i32 0, i32 3
  %os31993 = bitcast %union.THIRD_UNION* %ou3992 to %struct.anon.6*
  %oback994 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31993, i32 0, i32 0
  %arrayidx995 = getelementptr inbounds [2 x i32], [2 x i32]* %oback994, i32 0, i64 %idxprom990
  %408 = load i32, i32* %arrayidx995, align 4
  br label %cond.end.997

cond.false.996:                                   ; preds = %if.end.968
  %409 = load i32, i32* %b.addr, align 4
  br label %cond.end.997

cond.end.997:                                     ; preds = %cond.false.996, %cond.true.989
  %cond998 = phi i32 [ %408, %cond.true.989 ], [ %409, %cond.false.996 ]
  store i32 %cond998, i32* %b.addr, align 4
  %410 = load i32, i32* %f.addr, align 4
  %411 = load i32, i32* %dim.addr, align 4
  %idxprom999 = sext i32 %411 to i64
  %412 = load %union.rec*, %union.rec** %y, align 8
  %os11000 = bitcast %union.rec* %412 to %struct.word_type*
  %ou31001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11000, i32 0, i32 3
  %os311002 = bitcast %union.THIRD_UNION* %ou31001 to %struct.anon.6*
  %ofwd1003 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311002, i32 0, i32 1
  %arrayidx1004 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1003, i32 0, i64 %idxprom999
  %413 = load i32, i32* %arrayidx1004, align 4
  %cmp1005 = icmp slt i32 %410, %413
  br i1 %cmp1005, label %cond.true.1007, label %cond.false.1014

cond.true.1007:                                   ; preds = %cond.end.997
  %414 = load i32, i32* %dim.addr, align 4
  %idxprom1008 = sext i32 %414 to i64
  %415 = load %union.rec*, %union.rec** %y, align 8
  %os11009 = bitcast %union.rec* %415 to %struct.word_type*
  %ou31010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11009, i32 0, i32 3
  %os311011 = bitcast %union.THIRD_UNION* %ou31010 to %struct.anon.6*
  %ofwd1012 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311011, i32 0, i32 1
  %arrayidx1013 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1012, i32 0, i64 %idxprom1008
  %416 = load i32, i32* %arrayidx1013, align 4
  br label %cond.end.1015

cond.false.1014:                                  ; preds = %cond.end.997
  %417 = load i32, i32* %f.addr, align 4
  br label %cond.end.1015

cond.end.1015:                                    ; preds = %cond.false.1014, %cond.true.1007
  %cond1016 = phi i32 [ %416, %cond.true.1007 ], [ %417, %cond.false.1014 ]
  store i32 %cond1016, i32* %f.addr, align 4
  br label %sw.epilog

sw.bb.1017:                                       ; preds = %for.end.169, %for.end.169, %for.end.169
  %418 = load %union.rec*, %union.rec** %y, align 8
  %os11018 = bitcast %union.rec* %418 to %struct.word_type*
  %ou11019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11018, i32 0, i32 1
  %os111020 = bitcast %union.FIRST_UNION* %ou11019 to %struct.anon*
  %otype1021 = getelementptr inbounds %struct.anon, %struct.anon* %os111020, i32 0, i32 0
  %419 = load i8, i8* %otype1021, align 1
  %conv1022 = zext i8 %419 to i32
  %cmp1023 = icmp eq i32 %conv1022, 19
  %conv1024 = zext i1 %cmp1023 to i32
  %420 = load i32, i32* %dim.addr, align 4
  %cmp1025 = icmp eq i32 %420, 1
  %conv1026 = zext i1 %cmp1025 to i32
  %cmp1027 = icmp eq i32 %conv1024, %conv1026
  br i1 %cmp1027, label %if.then.1029, label %if.else.1030

if.then.1029:                                     ; preds = %sw.bb.1017
  %421 = load %union.rec*, %union.rec** %x.addr, align 8
  %422 = load i32, i32* %ratm, align 4
  %423 = load %union.rec*, %union.rec** %y, align 8
  %424 = load i32, i32* %dim.addr, align 4
  call void @CatAdjustSize(%union.rec* %421, i32* %b.addr, i32* %f.addr, i32 %422, %union.rec* %423, i32 %424)
  br label %if.end.1301

if.else.1030:                                     ; preds = %sw.bb.1017
  %425 = load %union.rec*, %union.rec** %link, align 8
  %os11031 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11031, i32 0, i32 0
  %arrayidx1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1032, i32 0, i64 0
  %opred1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1033, i32 0, i32 0
  %426 = load %union.rec*, %union.rec** %opred1034, align 8
  store %union.rec* %426, %union.rec** %lp, align 8
  br label %for.cond.1035

for.cond.1035:                                    ; preds = %for.inc.1075, %if.else.1030
  %427 = load %union.rec*, %union.rec** %lp, align 8
  %428 = load %union.rec*, %union.rec** %y, align 8
  %cmp1036 = icmp ne %union.rec* %427, %428
  br i1 %cmp1036, label %for.body.1038, label %for.end.1080

for.body.1038:                                    ; preds = %for.cond.1035
  %429 = load %union.rec*, %union.rec** %lp, align 8
  %os11039 = bitcast %union.rec* %429 to %struct.word_type*
  %olist1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11039, i32 0, i32 0
  %arrayidx1041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1040, i32 0, i64 1
  %opred1042 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1041, i32 0, i32 0
  %430 = load %union.rec*, %union.rec** %opred1042, align 8
  store %union.rec* %430, %union.rec** %z, align 8
  br label %for.cond.1043

for.cond.1043:                                    ; preds = %for.inc.1052, %for.body.1038
  %431 = load %union.rec*, %union.rec** %z, align 8
  %os11044 = bitcast %union.rec* %431 to %struct.word_type*
  %ou11045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11044, i32 0, i32 1
  %os111046 = bitcast %union.FIRST_UNION* %ou11045 to %struct.anon*
  %otype1047 = getelementptr inbounds %struct.anon, %struct.anon* %os111046, i32 0, i32 0
  %432 = load i8, i8* %otype1047, align 1
  %conv1048 = zext i8 %432 to i32
  %cmp1049 = icmp eq i32 %conv1048, 0
  br i1 %cmp1049, label %for.body.1051, label %for.end.1057

for.body.1051:                                    ; preds = %for.cond.1043
  br label %for.inc.1052

for.inc.1052:                                     ; preds = %for.body.1051
  %433 = load %union.rec*, %union.rec** %z, align 8
  %os11053 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11053, i32 0, i32 0
  %arrayidx1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1054, i32 0, i64 1
  %opred1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1055, i32 0, i32 0
  %434 = load %union.rec*, %union.rec** %opred1056, align 8
  store %union.rec* %434, %union.rec** %z, align 8
  br label %for.cond.1043

for.end.1057:                                     ; preds = %for.cond.1043
  %435 = load %union.rec*, %union.rec** %z, align 8
  %os11058 = bitcast %union.rec* %435 to %struct.word_type*
  %ou11059 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11058, i32 0, i32 1
  %os111060 = bitcast %union.FIRST_UNION* %ou11059 to %struct.anon*
  %otype1061 = getelementptr inbounds %struct.anon, %struct.anon* %os111060, i32 0, i32 0
  %436 = load i8, i8* %otype1061, align 1
  %conv1062 = zext i8 %436 to i32
  %cmp1063 = icmp eq i32 %conv1062, 1
  br i1 %cmp1063, label %land.lhs.true.1065, label %if.end.1074

land.lhs.true.1065:                               ; preds = %for.end.1057
  %437 = load %union.rec*, %union.rec** %z, align 8
  %os51066 = bitcast %union.rec* %437 to %struct.gapobj_type*
  %ogap1067 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51066, i32 0, i32 3
  %438 = bitcast %struct.GAP* %ogap1067 to i16*
  %bf.load1068 = load i16, i16* %438, align 4
  %bf.lshr1069 = lshr i16 %bf.load1068, 9
  %bf.clear1070 = and i16 %bf.lshr1069, 1
  %bf.cast1071 = zext i16 %bf.clear1070 to i32
  %tobool1072 = icmp ne i32 %bf.cast1071, 0
  br i1 %tobool1072, label %if.end.1074, label %if.then.1073

if.then.1073:                                     ; preds = %land.lhs.true.1065
  br label %for.end.1080

if.end.1074:                                      ; preds = %land.lhs.true.1065, %for.end.1057
  br label %for.inc.1075

for.inc.1075:                                     ; preds = %if.end.1074
  %439 = load %union.rec*, %union.rec** %lp, align 8
  %os11076 = bitcast %union.rec* %439 to %struct.word_type*
  %olist1077 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11076, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1077, i32 0, i64 0
  %opred1079 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1078, i32 0, i32 0
  %440 = load %union.rec*, %union.rec** %opred1079, align 8
  store %union.rec* %440, %union.rec** %lp, align 8
  br label %for.cond.1035

for.end.1080:                                     ; preds = %if.then.1073, %for.cond.1035
  %441 = load %union.rec*, %union.rec** %link, align 8
  %os11081 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1082 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11081, i32 0, i32 0
  %arrayidx1083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1082, i32 0, i64 0
  %osucc1084 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1083, i32 0, i32 1
  %442 = load %union.rec*, %union.rec** %osucc1084, align 8
  store %union.rec* %442, %union.rec** %rp, align 8
  br label %for.cond.1085

for.cond.1085:                                    ; preds = %for.inc.1125, %for.end.1080
  %443 = load %union.rec*, %union.rec** %rp, align 8
  %444 = load %union.rec*, %union.rec** %y, align 8
  %cmp1086 = icmp ne %union.rec* %443, %444
  br i1 %cmp1086, label %for.body.1088, label %for.end.1130

for.body.1088:                                    ; preds = %for.cond.1085
  %445 = load %union.rec*, %union.rec** %rp, align 8
  %os11089 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11089, i32 0, i32 0
  %arrayidx1091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1090, i32 0, i64 1
  %opred1092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1091, i32 0, i32 0
  %446 = load %union.rec*, %union.rec** %opred1092, align 8
  store %union.rec* %446, %union.rec** %z, align 8
  br label %for.cond.1093

for.cond.1093:                                    ; preds = %for.inc.1102, %for.body.1088
  %447 = load %union.rec*, %union.rec** %z, align 8
  %os11094 = bitcast %union.rec* %447 to %struct.word_type*
  %ou11095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11094, i32 0, i32 1
  %os111096 = bitcast %union.FIRST_UNION* %ou11095 to %struct.anon*
  %otype1097 = getelementptr inbounds %struct.anon, %struct.anon* %os111096, i32 0, i32 0
  %448 = load i8, i8* %otype1097, align 1
  %conv1098 = zext i8 %448 to i32
  %cmp1099 = icmp eq i32 %conv1098, 0
  br i1 %cmp1099, label %for.body.1101, label %for.end.1107

for.body.1101:                                    ; preds = %for.cond.1093
  br label %for.inc.1102

for.inc.1102:                                     ; preds = %for.body.1101
  %449 = load %union.rec*, %union.rec** %z, align 8
  %os11103 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11103, i32 0, i32 0
  %arrayidx1105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1104, i32 0, i64 1
  %opred1106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1105, i32 0, i32 0
  %450 = load %union.rec*, %union.rec** %opred1106, align 8
  store %union.rec* %450, %union.rec** %z, align 8
  br label %for.cond.1093

for.end.1107:                                     ; preds = %for.cond.1093
  %451 = load %union.rec*, %union.rec** %z, align 8
  %os11108 = bitcast %union.rec* %451 to %struct.word_type*
  %ou11109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 1
  %os111110 = bitcast %union.FIRST_UNION* %ou11109 to %struct.anon*
  %otype1111 = getelementptr inbounds %struct.anon, %struct.anon* %os111110, i32 0, i32 0
  %452 = load i8, i8* %otype1111, align 1
  %conv1112 = zext i8 %452 to i32
  %cmp1113 = icmp eq i32 %conv1112, 1
  br i1 %cmp1113, label %land.lhs.true.1115, label %if.end.1124

land.lhs.true.1115:                               ; preds = %for.end.1107
  %453 = load %union.rec*, %union.rec** %z, align 8
  %os51116 = bitcast %union.rec* %453 to %struct.gapobj_type*
  %ogap1117 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51116, i32 0, i32 3
  %454 = bitcast %struct.GAP* %ogap1117 to i16*
  %bf.load1118 = load i16, i16* %454, align 4
  %bf.lshr1119 = lshr i16 %bf.load1118, 9
  %bf.clear1120 = and i16 %bf.lshr1119, 1
  %bf.cast1121 = zext i16 %bf.clear1120 to i32
  %tobool1122 = icmp ne i32 %bf.cast1121, 0
  br i1 %tobool1122, label %if.end.1124, label %if.then.1123

if.then.1123:                                     ; preds = %land.lhs.true.1115
  br label %for.end.1130

if.end.1124:                                      ; preds = %land.lhs.true.1115, %for.end.1107
  br label %for.inc.1125

for.inc.1125:                                     ; preds = %if.end.1124
  %455 = load %union.rec*, %union.rec** %rp, align 8
  %os11126 = bitcast %union.rec* %455 to %struct.word_type*
  %olist1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1127, i32 0, i64 0
  %osucc1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1128, i32 0, i32 1
  %456 = load %union.rec*, %union.rec** %osucc1129, align 8
  store %union.rec* %456, %union.rec** %rp, align 8
  br label %for.cond.1085

for.end.1130:                                     ; preds = %if.then.1123, %for.cond.1085
  %457 = load i32, i32* %b.addr, align 4
  %458 = load i32, i32* %dim.addr, align 4
  %idxprom1131 = sext i32 %458 to i64
  %459 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11132 = bitcast %union.rec* %459 to %struct.word_type*
  %ou31133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 3
  %os311134 = bitcast %union.THIRD_UNION* %ou31133 to %struct.anon.6*
  %oback1135 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311134, i32 0, i32 0
  %arrayidx1136 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1135, i32 0, i64 %idxprom1131
  store i32 %457, i32* %arrayidx1136, align 4
  %460 = load i32, i32* %f.addr, align 4
  %461 = load i32, i32* %dim.addr, align 4
  %idxprom1137 = sext i32 %461 to i64
  %462 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11138 = bitcast %union.rec* %462 to %struct.word_type*
  %ou31139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 3
  %os311140 = bitcast %union.THIRD_UNION* %ou31139 to %struct.anon.6*
  %ofwd1141 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311140, i32 0, i32 1
  %arrayidx1142 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1141, i32 0, i64 %idxprom1137
  store i32 %460, i32* %arrayidx1142, align 4
  %463 = load %union.rec*, %union.rec** %lp, align 8
  %464 = load %union.rec*, %union.rec** %y, align 8
  %cmp1143 = icmp eq %union.rec* %463, %464
  br i1 %cmp1143, label %land.lhs.true.1145, label %if.else.1185

land.lhs.true.1145:                               ; preds = %for.end.1130
  %465 = load %union.rec*, %union.rec** %rp, align 8
  %466 = load %union.rec*, %union.rec** %y, align 8
  %cmp1146 = icmp eq %union.rec* %465, %466
  br i1 %cmp1146, label %if.then.1148, label %if.else.1185

if.then.1148:                                     ; preds = %land.lhs.true.1145
  %467 = load i32, i32* %b.addr, align 4
  %468 = load i32, i32* %dim.addr, align 4
  %idxprom1149 = sext i32 %468 to i64
  %469 = load %union.rec*, %union.rec** %y, align 8
  %os11150 = bitcast %union.rec* %469 to %struct.word_type*
  %ou31151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11150, i32 0, i32 3
  %os311152 = bitcast %union.THIRD_UNION* %ou31151 to %struct.anon.6*
  %oback1153 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311152, i32 0, i32 0
  %arrayidx1154 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1153, i32 0, i64 %idxprom1149
  %470 = load i32, i32* %arrayidx1154, align 4
  %cmp1155 = icmp slt i32 %467, %470
  br i1 %cmp1155, label %cond.true.1157, label %cond.false.1164

cond.true.1157:                                   ; preds = %if.then.1148
  %471 = load i32, i32* %dim.addr, align 4
  %idxprom1158 = sext i32 %471 to i64
  %472 = load %union.rec*, %union.rec** %y, align 8
  %os11159 = bitcast %union.rec* %472 to %struct.word_type*
  %ou31160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11159, i32 0, i32 3
  %os311161 = bitcast %union.THIRD_UNION* %ou31160 to %struct.anon.6*
  %oback1162 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311161, i32 0, i32 0
  %arrayidx1163 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1162, i32 0, i64 %idxprom1158
  %473 = load i32, i32* %arrayidx1163, align 4
  br label %cond.end.1165

cond.false.1164:                                  ; preds = %if.then.1148
  %474 = load i32, i32* %b.addr, align 4
  br label %cond.end.1165

cond.end.1165:                                    ; preds = %cond.false.1164, %cond.true.1157
  %cond1166 = phi i32 [ %473, %cond.true.1157 ], [ %474, %cond.false.1164 ]
  store i32 %cond1166, i32* %b.addr, align 4
  %475 = load i32, i32* %f.addr, align 4
  %476 = load i32, i32* %dim.addr, align 4
  %idxprom1167 = sext i32 %476 to i64
  %477 = load %union.rec*, %union.rec** %y, align 8
  %os11168 = bitcast %union.rec* %477 to %struct.word_type*
  %ou31169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11168, i32 0, i32 3
  %os311170 = bitcast %union.THIRD_UNION* %ou31169 to %struct.anon.6*
  %ofwd1171 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311170, i32 0, i32 1
  %arrayidx1172 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1171, i32 0, i64 %idxprom1167
  %478 = load i32, i32* %arrayidx1172, align 4
  %cmp1173 = icmp slt i32 %475, %478
  br i1 %cmp1173, label %cond.true.1175, label %cond.false.1182

cond.true.1175:                                   ; preds = %cond.end.1165
  %479 = load i32, i32* %dim.addr, align 4
  %idxprom1176 = sext i32 %479 to i64
  %480 = load %union.rec*, %union.rec** %y, align 8
  %os11177 = bitcast %union.rec* %480 to %struct.word_type*
  %ou31178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11177, i32 0, i32 3
  %os311179 = bitcast %union.THIRD_UNION* %ou31178 to %struct.anon.6*
  %ofwd1180 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311179, i32 0, i32 1
  %arrayidx1181 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1180, i32 0, i64 %idxprom1176
  %481 = load i32, i32* %arrayidx1181, align 4
  br label %cond.end.1183

cond.false.1182:                                  ; preds = %cond.end.1165
  %482 = load i32, i32* %f.addr, align 4
  br label %cond.end.1183

cond.end.1183:                                    ; preds = %cond.false.1182, %cond.true.1175
  %cond1184 = phi i32 [ %481, %cond.true.1175 ], [ %482, %cond.false.1182 ]
  store i32 %cond1184, i32* %f.addr, align 4
  br label %if.end.1300

if.else.1185:                                     ; preds = %land.lhs.true.1145, %for.end.1130
  store i32 0, i32* %tf, align 4
  store i32 0, i32* %tb, align 4
  %483 = load %union.rec*, %union.rec** %lp, align 8
  %os11186 = bitcast %union.rec* %483 to %struct.word_type*
  %olist1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11186, i32 0, i32 0
  %arrayidx1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1187, i32 0, i64 0
  %osucc1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1188, i32 0, i32 1
  %484 = load %union.rec*, %union.rec** %osucc1189, align 8
  store %union.rec* %484, %union.rec** %link, align 8
  br label %for.cond.1190

for.cond.1190:                                    ; preds = %for.inc.1274, %if.else.1185
  %485 = load %union.rec*, %union.rec** %link, align 8
  %486 = load %union.rec*, %union.rec** %rp, align 8
  %cmp1191 = icmp ne %union.rec* %485, %486
  br i1 %cmp1191, label %for.body.1193, label %for.end.1279

for.body.1193:                                    ; preds = %for.cond.1190
  %487 = load %union.rec*, %union.rec** %link, align 8
  %os11194 = bitcast %union.rec* %487 to %struct.word_type*
  %olist1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11194, i32 0, i32 0
  %arrayidx1196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1195, i32 0, i64 1
  %opred1197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1196, i32 0, i32 0
  %488 = load %union.rec*, %union.rec** %opred1197, align 8
  store %union.rec* %488, %union.rec** %z, align 8
  br label %for.cond.1198

for.cond.1198:                                    ; preds = %for.inc.1207, %for.body.1193
  %489 = load %union.rec*, %union.rec** %z, align 8
  %os11199 = bitcast %union.rec* %489 to %struct.word_type*
  %ou11200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11199, i32 0, i32 1
  %os111201 = bitcast %union.FIRST_UNION* %ou11200 to %struct.anon*
  %otype1202 = getelementptr inbounds %struct.anon, %struct.anon* %os111201, i32 0, i32 0
  %490 = load i8, i8* %otype1202, align 1
  %conv1203 = zext i8 %490 to i32
  %cmp1204 = icmp eq i32 %conv1203, 0
  br i1 %cmp1204, label %for.body.1206, label %for.end.1212

for.body.1206:                                    ; preds = %for.cond.1198
  br label %for.inc.1207

for.inc.1207:                                     ; preds = %for.body.1206
  %491 = load %union.rec*, %union.rec** %z, align 8
  %os11208 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11208, i32 0, i32 0
  %arrayidx1210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1209, i32 0, i64 1
  %opred1211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1210, i32 0, i32 0
  %492 = load %union.rec*, %union.rec** %opred1211, align 8
  store %union.rec* %492, %union.rec** %z, align 8
  br label %for.cond.1198

for.end.1212:                                     ; preds = %for.cond.1198
  %493 = load %union.rec*, %union.rec** %z, align 8
  %os11213 = bitcast %union.rec* %493 to %struct.word_type*
  %ou11214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11213, i32 0, i32 1
  %os111215 = bitcast %union.FIRST_UNION* %ou11214 to %struct.anon*
  %otype1216 = getelementptr inbounds %struct.anon, %struct.anon* %os111215, i32 0, i32 0
  %494 = load i8, i8* %otype1216, align 1
  %conv1217 = zext i8 %494 to i32
  %cmp1218 = icmp eq i32 %conv1217, 1
  br i1 %cmp1218, label %if.then.1236, label %lor.lhs.false.1220

lor.lhs.false.1220:                               ; preds = %for.end.1212
  %495 = load %union.rec*, %union.rec** %z, align 8
  %os11221 = bitcast %union.rec* %495 to %struct.word_type*
  %ou11222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11221, i32 0, i32 1
  %os111223 = bitcast %union.FIRST_UNION* %ou11222 to %struct.anon*
  %otype1224 = getelementptr inbounds %struct.anon, %struct.anon* %os111223, i32 0, i32 0
  %496 = load i8, i8* %otype1224, align 1
  %conv1225 = zext i8 %496 to i32
  %cmp1226 = icmp sge i32 %conv1225, 119
  br i1 %cmp1226, label %land.lhs.true.1228, label %if.end.1237

land.lhs.true.1228:                               ; preds = %lor.lhs.false.1220
  %497 = load %union.rec*, %union.rec** %z, align 8
  %os11229 = bitcast %union.rec* %497 to %struct.word_type*
  %ou11230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11229, i32 0, i32 1
  %os111231 = bitcast %union.FIRST_UNION* %ou11230 to %struct.anon*
  %otype1232 = getelementptr inbounds %struct.anon, %struct.anon* %os111231, i32 0, i32 0
  %498 = load i8, i8* %otype1232, align 1
  %conv1233 = zext i8 %498 to i32
  %cmp1234 = icmp sle i32 %conv1233, 138
  br i1 %cmp1234, label %if.then.1236, label %if.end.1237

if.then.1236:                                     ; preds = %land.lhs.true.1228, %for.end.1212
  br label %for.inc.1274

if.end.1237:                                      ; preds = %land.lhs.true.1228, %lor.lhs.false.1220
  %499 = load i32, i32* %tb, align 4
  %500 = load i32, i32* %dim.addr, align 4
  %idxprom1238 = sext i32 %500 to i64
  %501 = load %union.rec*, %union.rec** %z, align 8
  %os11239 = bitcast %union.rec* %501 to %struct.word_type*
  %ou31240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11239, i32 0, i32 3
  %os311241 = bitcast %union.THIRD_UNION* %ou31240 to %struct.anon.6*
  %oback1242 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311241, i32 0, i32 0
  %arrayidx1243 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1242, i32 0, i64 %idxprom1238
  %502 = load i32, i32* %arrayidx1243, align 4
  %cmp1244 = icmp slt i32 %499, %502
  br i1 %cmp1244, label %cond.true.1246, label %cond.false.1253

cond.true.1246:                                   ; preds = %if.end.1237
  %503 = load i32, i32* %dim.addr, align 4
  %idxprom1247 = sext i32 %503 to i64
  %504 = load %union.rec*, %union.rec** %z, align 8
  %os11248 = bitcast %union.rec* %504 to %struct.word_type*
  %ou31249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11248, i32 0, i32 3
  %os311250 = bitcast %union.THIRD_UNION* %ou31249 to %struct.anon.6*
  %oback1251 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311250, i32 0, i32 0
  %arrayidx1252 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1251, i32 0, i64 %idxprom1247
  %505 = load i32, i32* %arrayidx1252, align 4
  br label %cond.end.1254

cond.false.1253:                                  ; preds = %if.end.1237
  %506 = load i32, i32* %tb, align 4
  br label %cond.end.1254

cond.end.1254:                                    ; preds = %cond.false.1253, %cond.true.1246
  %cond1255 = phi i32 [ %505, %cond.true.1246 ], [ %506, %cond.false.1253 ]
  store i32 %cond1255, i32* %tb, align 4
  %507 = load i32, i32* %tf, align 4
  %508 = load i32, i32* %dim.addr, align 4
  %idxprom1256 = sext i32 %508 to i64
  %509 = load %union.rec*, %union.rec** %z, align 8
  %os11257 = bitcast %union.rec* %509 to %struct.word_type*
  %ou31258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11257, i32 0, i32 3
  %os311259 = bitcast %union.THIRD_UNION* %ou31258 to %struct.anon.6*
  %ofwd1260 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311259, i32 0, i32 1
  %arrayidx1261 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1260, i32 0, i64 %idxprom1256
  %510 = load i32, i32* %arrayidx1261, align 4
  %cmp1262 = icmp slt i32 %507, %510
  br i1 %cmp1262, label %cond.true.1264, label %cond.false.1271

cond.true.1264:                                   ; preds = %cond.end.1254
  %511 = load i32, i32* %dim.addr, align 4
  %idxprom1265 = sext i32 %511 to i64
  %512 = load %union.rec*, %union.rec** %z, align 8
  %os11266 = bitcast %union.rec* %512 to %struct.word_type*
  %ou31267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11266, i32 0, i32 3
  %os311268 = bitcast %union.THIRD_UNION* %ou31267 to %struct.anon.6*
  %ofwd1269 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311268, i32 0, i32 1
  %arrayidx1270 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1269, i32 0, i64 %idxprom1265
  %513 = load i32, i32* %arrayidx1270, align 4
  br label %cond.end.1272

cond.false.1271:                                  ; preds = %cond.end.1254
  %514 = load i32, i32* %tf, align 4
  br label %cond.end.1272

cond.end.1272:                                    ; preds = %cond.false.1271, %cond.true.1264
  %cond1273 = phi i32 [ %513, %cond.true.1264 ], [ %514, %cond.false.1271 ]
  store i32 %cond1273, i32* %tf, align 4
  br label %for.inc.1274

for.inc.1274:                                     ; preds = %cond.end.1272, %if.then.1236
  %515 = load %union.rec*, %union.rec** %link, align 8
  %os11275 = bitcast %union.rec* %515 to %struct.word_type*
  %olist1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11275, i32 0, i32 0
  %arrayidx1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1276, i32 0, i64 0
  %osucc1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1277, i32 0, i32 1
  %516 = load %union.rec*, %union.rec** %osucc1278, align 8
  store %union.rec* %516, %union.rec** %link, align 8
  br label %for.cond.1190

for.end.1279:                                     ; preds = %for.cond.1190
  store i32 0, i32* %b.addr, align 4
  %517 = load i32, i32* %tb, align 4
  %518 = load i32, i32* %tf, align 4
  %add1280 = add nsw i32 %517, %518
  %519 = load i32, i32* %dim.addr, align 4
  %idxprom1281 = sext i32 %519 to i64
  %520 = load %union.rec*, %union.rec** %y, align 8
  %os11282 = bitcast %union.rec* %520 to %struct.word_type*
  %ou31283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11282, i32 0, i32 3
  %os311284 = bitcast %union.THIRD_UNION* %ou31283 to %struct.anon.6*
  %ofwd1285 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311284, i32 0, i32 1
  %arrayidx1286 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1285, i32 0, i64 %idxprom1281
  %521 = load i32, i32* %arrayidx1286, align 4
  %cmp1287 = icmp slt i32 %add1280, %521
  br i1 %cmp1287, label %cond.true.1289, label %cond.false.1296

cond.true.1289:                                   ; preds = %for.end.1279
  %522 = load i32, i32* %dim.addr, align 4
  %idxprom1290 = sext i32 %522 to i64
  %523 = load %union.rec*, %union.rec** %y, align 8
  %os11291 = bitcast %union.rec* %523 to %struct.word_type*
  %ou31292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11291, i32 0, i32 3
  %os311293 = bitcast %union.THIRD_UNION* %ou31292 to %struct.anon.6*
  %ofwd1294 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311293, i32 0, i32 1
  %arrayidx1295 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1294, i32 0, i64 %idxprom1290
  %524 = load i32, i32* %arrayidx1295, align 4
  br label %cond.end.1298

cond.false.1296:                                  ; preds = %for.end.1279
  %525 = load i32, i32* %tb, align 4
  %526 = load i32, i32* %tf, align 4
  %add1297 = add nsw i32 %525, %526
  br label %cond.end.1298

cond.end.1298:                                    ; preds = %cond.false.1296, %cond.true.1289
  %cond1299 = phi i32 [ %524, %cond.true.1289 ], [ %add1297, %cond.false.1296 ]
  store i32 %cond1299, i32* %f.addr, align 4
  br label %if.end.1300

if.end.1300:                                      ; preds = %cond.end.1298, %cond.end.1183
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.end.1300, %if.then.1029
  br label %sw.epilog

sw.bb.1302:                                       ; preds = %for.end.169
  %527 = load %union.rec*, %union.rec** %y, align 8
  %os11303 = bitcast %union.rec* %527 to %struct.word_type*
  %ou11304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11303, i32 0, i32 1
  %ofpos1305 = bitcast %union.FIRST_UNION* %ou11304 to %struct.FILE_POS*
  %528 = load %union.rec*, %union.rec** %y, align 8
  %os11306 = bitcast %union.rec* %528 to %struct.word_type*
  %ou11307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 1
  %os111308 = bitcast %union.FIRST_UNION* %ou11307 to %struct.anon*
  %otype1309 = getelementptr inbounds %struct.anon, %struct.anon* %os111308, i32 0, i32 0
  %529 = load i8, i8* %otype1309, align 1
  %conv1310 = zext i8 %529 to i32
  %call1311 = call i8* @Image(i32 %conv1310)
  %call1312 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1305, i8* %call1311)
  br label %sw.epilog

sw.bb.1313:                                       ; preds = %for.end.169, %for.end.169
  %530 = load i32, i32* %dim.addr, align 4
  %cmp1314 = icmp eq i32 %530, 0
  br i1 %cmp1314, label %if.then.1316, label %if.else.1329

if.then.1316:                                     ; preds = %sw.bb.1313
  %531 = load i32, i32* %b.addr, align 4
  %532 = load i32, i32* %dim.addr, align 4
  %idxprom1317 = sext i32 %532 to i64
  %533 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11318 = bitcast %union.rec* %533 to %struct.word_type*
  %ou31319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11318, i32 0, i32 3
  %os311320 = bitcast %union.THIRD_UNION* %ou31319 to %struct.anon.6*
  %oback1321 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311320, i32 0, i32 0
  %arrayidx1322 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1321, i32 0, i64 %idxprom1317
  store i32 %531, i32* %arrayidx1322, align 4
  %534 = load i32, i32* %f.addr, align 4
  %535 = load i32, i32* %dim.addr, align 4
  %idxprom1323 = sext i32 %535 to i64
  %536 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11324 = bitcast %union.rec* %536 to %struct.word_type*
  %ou31325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11324, i32 0, i32 3
  %os311326 = bitcast %union.THIRD_UNION* %ou31325 to %struct.anon.6*
  %ofwd1327 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311326, i32 0, i32 1
  %arrayidx1328 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1327, i32 0, i64 %idxprom1323
  store i32 %534, i32* %arrayidx1328, align 4
  br label %if.end.1340

if.else.1329:                                     ; preds = %sw.bb.1313
  %537 = load %union.rec*, %union.rec** %y, align 8
  %os11330 = bitcast %union.rec* %537 to %struct.word_type*
  %ou11331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11330, i32 0, i32 1
  %ofpos1332 = bitcast %union.FIRST_UNION* %ou11331 to %struct.FILE_POS*
  %538 = load %union.rec*, %union.rec** %y, align 8
  %os11333 = bitcast %union.rec* %538 to %struct.word_type*
  %ou11334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11333, i32 0, i32 1
  %os111335 = bitcast %union.FIRST_UNION* %ou11334 to %struct.anon*
  %otype1336 = getelementptr inbounds %struct.anon, %struct.anon* %os111335, i32 0, i32 0
  %539 = load i8, i8* %otype1336, align 1
  %conv1337 = zext i8 %539 to i32
  %call1338 = call i8* @Image(i32 %conv1337)
  %call1339 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1332, i8* %call1338)
  br label %if.end.1340

if.end.1340:                                      ; preds = %if.else.1329, %if.then.1316
  br label %sw.epilog

sw.bb.1341:                                       ; preds = %for.end.169, %for.end.169
  %540 = load i32, i32* %dim.addr, align 4
  %cmp1342 = icmp eq i32 %540, 1
  br i1 %cmp1342, label %if.then.1344, label %if.else.1357

if.then.1344:                                     ; preds = %sw.bb.1341
  %541 = load i32, i32* %b.addr, align 4
  %542 = load i32, i32* %dim.addr, align 4
  %idxprom1345 = sext i32 %542 to i64
  %543 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11346 = bitcast %union.rec* %543 to %struct.word_type*
  %ou31347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11346, i32 0, i32 3
  %os311348 = bitcast %union.THIRD_UNION* %ou31347 to %struct.anon.6*
  %oback1349 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311348, i32 0, i32 0
  %arrayidx1350 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1349, i32 0, i64 %idxprom1345
  store i32 %541, i32* %arrayidx1350, align 4
  %544 = load i32, i32* %f.addr, align 4
  %545 = load i32, i32* %dim.addr, align 4
  %idxprom1351 = sext i32 %545 to i64
  %546 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11352 = bitcast %union.rec* %546 to %struct.word_type*
  %ou31353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11352, i32 0, i32 3
  %os311354 = bitcast %union.THIRD_UNION* %ou31353 to %struct.anon.6*
  %ofwd1355 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311354, i32 0, i32 1
  %arrayidx1356 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1355, i32 0, i64 %idxprom1351
  store i32 %544, i32* %arrayidx1356, align 4
  br label %if.end.1368

if.else.1357:                                     ; preds = %sw.bb.1341
  %547 = load %union.rec*, %union.rec** %y, align 8
  %os11358 = bitcast %union.rec* %547 to %struct.word_type*
  %ou11359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 1
  %ofpos1360 = bitcast %union.FIRST_UNION* %ou11359 to %struct.FILE_POS*
  %548 = load %union.rec*, %union.rec** %y, align 8
  %os11361 = bitcast %union.rec* %548 to %struct.word_type*
  %ou11362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11361, i32 0, i32 1
  %os111363 = bitcast %union.FIRST_UNION* %ou11362 to %struct.anon*
  %otype1364 = getelementptr inbounds %struct.anon, %struct.anon* %os111363, i32 0, i32 0
  %549 = load i8, i8* %otype1364, align 1
  %conv1365 = zext i8 %549 to i32
  %call1366 = call i8* @Image(i32 %conv1365)
  %call1367 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1360, i8* %call1366)
  br label %if.end.1368

if.end.1368:                                      ; preds = %if.else.1357, %if.then.1344
  br label %sw.epilog

sw.bb.1369:                                       ; preds = %for.end.169, %for.end.169
  %550 = load i32, i32* %dim.addr, align 4
  %cmp1370 = icmp eq i32 %550, 0
  %conv1371 = zext i1 %cmp1370 to i32
  %551 = load %union.rec*, %union.rec** %y, align 8
  %os11372 = bitcast %union.rec* %551 to %struct.word_type*
  %ou11373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11372, i32 0, i32 1
  %os111374 = bitcast %union.FIRST_UNION* %ou11373 to %struct.anon*
  %otype1375 = getelementptr inbounds %struct.anon, %struct.anon* %os111374, i32 0, i32 0
  %552 = load i8, i8* %otype1375, align 1
  %conv1376 = zext i8 %552 to i32
  %cmp1377 = icmp eq i32 %conv1376, 13
  %conv1378 = zext i1 %cmp1377 to i32
  %cmp1379 = icmp eq i32 %conv1371, %conv1378
  br i1 %cmp1379, label %if.end.1383, label %if.then.1381

if.then.1381:                                     ; preds = %sw.bb.1369
  %553 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1382 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %553, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.1383

if.end.1383:                                      ; preds = %if.then.1381, %sw.bb.1369
  %554 = load i32, i32* %b.addr, align 4
  %555 = load i32, i32* %dim.addr, align 4
  %idxprom1384 = sext i32 %555 to i64
  %556 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11385 = bitcast %union.rec* %556 to %struct.word_type*
  %ou31386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11385, i32 0, i32 3
  %os311387 = bitcast %union.THIRD_UNION* %ou31386 to %struct.anon.6*
  %oback1388 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311387, i32 0, i32 0
  %arrayidx1389 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1388, i32 0, i64 %idxprom1384
  store i32 %554, i32* %arrayidx1389, align 4
  %557 = load i32, i32* %f.addr, align 4
  %558 = load i32, i32* %dim.addr, align 4
  %idxprom1390 = sext i32 %558 to i64
  %559 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11391 = bitcast %union.rec* %559 to %struct.word_type*
  %ou31392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11391, i32 0, i32 3
  %os311393 = bitcast %union.THIRD_UNION* %ou31392 to %struct.anon.6*
  %ofwd1394 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311393, i32 0, i32 1
  %arrayidx1395 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1394, i32 0, i64 %idxprom1390
  store i32 %557, i32* %arrayidx1395, align 4
  %560 = load i32, i32* %b.addr, align 4
  %561 = load i32, i32* %dim.addr, align 4
  %idxprom1396 = sext i32 %561 to i64
  %562 = load %union.rec*, %union.rec** %y, align 8
  %os11397 = bitcast %union.rec* %562 to %struct.word_type*
  %ou31398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11397, i32 0, i32 3
  %os311399 = bitcast %union.THIRD_UNION* %ou31398 to %struct.anon.6*
  %oback1400 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311399, i32 0, i32 0
  %arrayidx1401 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1400, i32 0, i64 %idxprom1396
  store i32 %560, i32* %arrayidx1401, align 4
  %563 = load i32, i32* %f.addr, align 4
  %564 = load i32, i32* %dim.addr, align 4
  %idxprom1402 = sext i32 %564 to i64
  %565 = load %union.rec*, %union.rec** %y, align 8
  %os11403 = bitcast %union.rec* %565 to %struct.word_type*
  %ou31404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 3
  %os311405 = bitcast %union.THIRD_UNION* %ou31404 to %struct.anon.6*
  %ofwd1406 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311405, i32 0, i32 1
  %arrayidx1407 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1406, i32 0, i64 %idxprom1402
  store i32 %563, i32* %arrayidx1407, align 4
  br label %while.end

sw.bb.1408:                                       ; preds = %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169, %for.end.169
  br label %sw.default

sw.default:                                       ; preds = %for.end.169, %sw.bb.1408
  %566 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %567 = load %union.rec*, %union.rec** %y, align 8
  %os11409 = bitcast %union.rec* %567 to %struct.word_type*
  %ou11410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11409, i32 0, i32 1
  %os111411 = bitcast %union.FIRST_UNION* %ou11410 to %struct.anon*
  %otype1412 = getelementptr inbounds %struct.anon, %struct.anon* %os111411, i32 0, i32 0
  %568 = load i8, i8* %otype1412, align 1
  %conv1413 = zext i8 %568 to i32
  %call1414 = call i8* @Image(i32 %conv1413)
  %call1415 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 0, %struct.FILE_POS* %566, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %call1414)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.1368, %if.end.1340, %sw.bb.1302, %if.end.1301, %cond.end.1015, %if.end.953, %if.end.883, %if.end.844, %if.end.696, %if.end.660, %if.end.634, %sw.bb.596, %if.end.595
  %569 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %569, %union.rec** %x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %for.end.110, %if.then.182, %if.then.197, %if.then.506, %if.then.526, %if.then.558, %if.then.590, %if.then.633, %if.then.659, %if.end.746, %if.end.1383, %lor.end
  ret void
}

declare void @SetLengthDim(i32) #1

declare void @RotateSize(i32*, i32*, i32*, i32*, %union.rec*, i32) #1

declare i8* @EchoLength(i32) #1

declare void @EnlargeToConstraint(i32*, i32*, %struct.CONSTRAINT*) #1

; Function Attrs: nounwind uwtable
define internal void @CatAdjustSize(%union.rec* %x, i32* %b, i32* %f, i32 %ratm, %union.rec* %y, i32 %dim) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %b.addr = alloca i32*, align 8
  %f.addr = alloca i32*, align 8
  %ratm.addr = alloca i32, align 4
  %y.addr = alloca %union.rec*, align 8
  %dim.addr = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %pg = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %sg = alloca %union.rec*, align 8
  %sd = alloca %union.rec*, align 8
  %beffect = alloca i32, align 4
  %feffect = alloca i32, align 4
  %seffect = alloca i32, align 4
  %side = alloca i32, align 4
  %bb = alloca i32, align 4
  %ff = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %f, i32** %f.addr, align 8
  store i32 %ratm, i32* %ratm.addr, align 4
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load i32, i32* %dim.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 17
  br i1 %cmp1, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load %union.rec*, %union.rec** %y.addr, align 8
  %os2 = bitcast %union.rec* %3 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %4 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load = load i8, i8* %4, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %cmp4 = icmp eq i32 %bf.cast, 7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %5 = load i32*, i32** %b.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16 = bitcast %union.rec* %8 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  %9 = load i32*, i32** %f.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %dim.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %12 to %struct.word_type*
  %ou39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 3
  %os3110 = bitcast %union.THIRD_UNION* %ou39 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3110, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom7
  store i32 %10, i32* %arrayidx11, align 4
  %13 = load i32, i32* %dim.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %union.rec*, %union.rec** %y.addr, align 8
  %os113 = bitcast %union.rec* %14 to %struct.word_type*
  %ou314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 3
  %os3115 = bitcast %union.THIRD_UNION* %ou314 to %struct.anon.6*
  %oback16 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %oback16, i32 0, i64 %idxprom12
  %15 = load i32, i32* %arrayidx17, align 4
  %16 = load i32*, i32** %b.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %dim.addr, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %union.rec*, %union.rec** %y.addr, align 8
  %os119 = bitcast %union.rec* %18 to %struct.word_type*
  %ou320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 3
  %os3121 = bitcast %union.THIRD_UNION* %ou320 to %struct.anon.6*
  %ofwd22 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3121, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd22, i32 0, i64 %idxprom18
  %19 = load i32, i32* %arrayidx23, align 4
  %20 = load i32*, i32** %f.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %21 = load i32, i32* %dim.addr, align 4
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os126 = bitcast %union.rec* %22 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os128 = bitcast %union.rec* %24 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %opred, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %23, %cond.true ], [ %25, %cond.false ]
  store %union.rec* %cond, %union.rec** %link, align 8
  %26 = load %union.rec*, %union.rec** %link, align 8
  %27 = load i32, i32* %ratm.addr, align 4
  call void @SetNeighbours(%union.rec* %26, i32 %27, %union.rec** %pg, %union.rec** %prec_def, %union.rec** %sg, %union.rec** %sd, i32* %side)
  %28 = load %union.rec*, %union.rec** %x.addr, align 8
  %os131 = bitcast %union.rec* %28 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %29 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %29 to i32
  %cmp36 = icmp sge i32 %conv35, 2
  br i1 %cmp36, label %land.lhs.true.38, label %if.else

land.lhs.true.38:                                 ; preds = %cond.end
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os139 = bitcast %union.rec* %30 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon*
  %otype42 = getelementptr inbounds %struct.anon, %struct.anon* %os1141, i32 0, i32 0
  %31 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %31 to i32
  %cmp44 = icmp sle i32 %conv43, 8
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %land.lhs.true.38
  %32 = load %union.rec*, %union.rec** %pg, align 8
  %cmp47 = icmp eq %union.rec* %32, null
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %if.then.46
  %33 = load i32*, i32** %b.addr, align 8
  %34 = load i32, i32* %33, align 4
  br label %cond.end.57

cond.false.50:                                    ; preds = %if.then.46
  %35 = load i32, i32* %dim.addr, align 4
  %idxprom51 = sext i32 %35 to i64
  %36 = load %union.rec*, %union.rec** %prec_def, align 8
  %os152 = bitcast %union.rec* %36 to %struct.word_type*
  %ou353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 3
  %os3154 = bitcast %union.THIRD_UNION* %ou353 to %struct.anon.6*
  %ofwd55 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3154, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd55, i32 0, i64 %idxprom51
  %37 = load i32, i32* %arrayidx56, align 4
  %38 = load i32*, i32** %b.addr, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %f.addr, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %union.rec*, %union.rec** %pg, align 8
  %os5 = bitcast %union.rec* %42 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %call = call i32 @MinGap(i32 %37, i32 %39, i32 %41, %struct.GAP* %ogap)
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.50, %cond.true.49
  %cond58 = phi i32 [ %34, %cond.true.49 ], [ %call, %cond.false.50 ]
  store i32 %cond58, i32* %beffect, align 4
  %43 = load %union.rec*, %union.rec** %sg, align 8
  %cmp59 = icmp eq %union.rec* %43, null
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.57
  %44 = load i32*, i32** %f.addr, align 8
  %45 = load i32, i32* %44, align 4
  br label %cond.end.78

cond.false.62:                                    ; preds = %cond.end.57
  %46 = load i32*, i32** %f.addr, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %dim.addr, align 4
  %idxprom63 = sext i32 %48 to i64
  %49 = load %union.rec*, %union.rec** %sd, align 8
  %os164 = bitcast %union.rec* %49 to %struct.word_type*
  %ou365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 3
  %os3166 = bitcast %union.THIRD_UNION* %ou365 to %struct.anon.6*
  %oback67 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* %oback67, i32 0, i64 %idxprom63
  %50 = load i32, i32* %arrayidx68, align 4
  %51 = load i32, i32* %dim.addr, align 4
  %idxprom69 = sext i32 %51 to i64
  %52 = load %union.rec*, %union.rec** %sd, align 8
  %os170 = bitcast %union.rec* %52 to %struct.word_type*
  %ou371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 3
  %os3172 = bitcast %union.THIRD_UNION* %ou371 to %struct.anon.6*
  %ofwd73 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3172, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd73, i32 0, i64 %idxprom69
  %53 = load i32, i32* %arrayidx74, align 4
  %54 = load %union.rec*, %union.rec** %sg, align 8
  %os575 = bitcast %union.rec* %54 to %struct.gapobj_type*
  %ogap76 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os575, i32 0, i32 3
  %call77 = call i32 @MinGap(i32 %47, i32 %50, i32 %53, %struct.GAP* %ogap76)
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.62, %cond.true.61
  %cond79 = phi i32 [ %45, %cond.true.61 ], [ %call77, %cond.false.62 ]
  store i32 %cond79, i32* %feffect, align 4
  %55 = load %union.rec*, %union.rec** %pg, align 8
  %cmp80 = icmp eq %union.rec* %55, null
  br i1 %cmp80, label %cond.true.82, label %cond.false.95

cond.true.82:                                     ; preds = %cond.end.78
  %56 = load %union.rec*, %union.rec** %sg, align 8
  %cmp83 = icmp eq %union.rec* %56, null
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.true.82
  br label %cond.end.93

cond.false.86:                                    ; preds = %cond.true.82
  %57 = load i32, i32* %dim.addr, align 4
  %idxprom87 = sext i32 %57 to i64
  %58 = load %union.rec*, %union.rec** %sd, align 8
  %os188 = bitcast %union.rec* %58 to %struct.word_type*
  %ou389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 3
  %os3190 = bitcast %union.THIRD_UNION* %ou389 to %struct.anon.6*
  %oback91 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %oback91, i32 0, i64 %idxprom87
  %59 = load i32, i32* %arrayidx92, align 4
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.86, %cond.true.85
  %cond94 = phi i32 [ 0, %cond.true.85 ], [ %59, %cond.false.86 ]
  br label %cond.end.129

cond.false.95:                                    ; preds = %cond.end.78
  %60 = load %union.rec*, %union.rec** %sg, align 8
  %cmp96 = icmp eq %union.rec* %60, null
  br i1 %cmp96, label %cond.true.98, label %cond.false.105

cond.true.98:                                     ; preds = %cond.false.95
  %61 = load i32, i32* %dim.addr, align 4
  %idxprom99 = sext i32 %61 to i64
  %62 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1100 = bitcast %union.rec* %62 to %struct.word_type*
  %ou3101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 3
  %os31102 = bitcast %union.THIRD_UNION* %ou3101 to %struct.anon.6*
  %ofwd103 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31102, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd103, i32 0, i64 %idxprom99
  %63 = load i32, i32* %arrayidx104, align 4
  br label %cond.end.127

cond.false.105:                                   ; preds = %cond.false.95
  %64 = load i32, i32* %dim.addr, align 4
  %idxprom106 = sext i32 %64 to i64
  %65 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1107 = bitcast %union.rec* %65 to %struct.word_type*
  %ou3108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 3
  %os31109 = bitcast %union.THIRD_UNION* %ou3108 to %struct.anon.6*
  %ofwd110 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31109, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd110, i32 0, i64 %idxprom106
  %66 = load i32, i32* %arrayidx111, align 4
  %67 = load i32, i32* %dim.addr, align 4
  %idxprom112 = sext i32 %67 to i64
  %68 = load %union.rec*, %union.rec** %sd, align 8
  %os1113 = bitcast %union.rec* %68 to %struct.word_type*
  %ou3114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 3
  %os31115 = bitcast %union.THIRD_UNION* %ou3114 to %struct.anon.6*
  %oback116 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x i32], [2 x i32]* %oback116, i32 0, i64 %idxprom112
  %69 = load i32, i32* %arrayidx117, align 4
  %70 = load i32, i32* %dim.addr, align 4
  %idxprom118 = sext i32 %70 to i64
  %71 = load %union.rec*, %union.rec** %sd, align 8
  %os1119 = bitcast %union.rec* %71 to %struct.word_type*
  %ou3120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 3
  %os31121 = bitcast %union.THIRD_UNION* %ou3120 to %struct.anon.6*
  %ofwd122 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31121, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd122, i32 0, i64 %idxprom118
  %72 = load i32, i32* %arrayidx123, align 4
  %73 = load %union.rec*, %union.rec** %sg, align 8
  %os5124 = bitcast %union.rec* %73 to %struct.gapobj_type*
  %ogap125 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5124, i32 0, i32 3
  %call126 = call i32 @MinGap(i32 %66, i32 %69, i32 %72, %struct.GAP* %ogap125)
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.105, %cond.true.98
  %cond128 = phi i32 [ %63, %cond.true.98 ], [ %call126, %cond.false.105 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.end.93
  %cond130 = phi i32 [ %cond94, %cond.end.93 ], [ %cond128, %cond.end.127 ]
  store i32 %cond130, i32* %seffect, align 4
  br label %if.end.224

if.else:                                          ; preds = %land.lhs.true.38, %cond.end
  %74 = load %union.rec*, %union.rec** %pg, align 8
  %cmp131 = icmp eq %union.rec* %74, null
  br i1 %cmp131, label %cond.true.133, label %cond.false.140

cond.true.133:                                    ; preds = %if.else
  %75 = load i32*, i32** %b.addr, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %dim.addr, align 4
  %idxprom134 = sext i32 %77 to i64
  %78 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1135 = bitcast %union.rec* %78 to %struct.word_type*
  %ou3136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 3
  %os31137 = bitcast %union.THIRD_UNION* %ou3136 to %struct.anon.6*
  %oback138 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %oback138, i32 0, i64 %idxprom134
  %79 = load i32, i32* %arrayidx139, align 4
  %sub = sub nsw i32 %76, %79
  br label %cond.end.172

cond.false.140:                                   ; preds = %if.else
  %80 = load i32, i32* %dim.addr, align 4
  %idxprom141 = sext i32 %80 to i64
  %81 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1142 = bitcast %union.rec* %81 to %struct.word_type*
  %ou3143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 3
  %os31144 = bitcast %union.THIRD_UNION* %ou3143 to %struct.anon.6*
  %ofwd145 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31144, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd145, i32 0, i64 %idxprom141
  %82 = load i32, i32* %arrayidx146, align 4
  %83 = load i32*, i32** %b.addr, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %f.addr, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %union.rec*, %union.rec** %pg, align 8
  %os5147 = bitcast %union.rec* %87 to %struct.gapobj_type*
  %ogap148 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5147, i32 0, i32 3
  %call149 = call i32 @MinGap(i32 %82, i32 %84, i32 %86, %struct.GAP* %ogap148)
  %88 = load i32, i32* %dim.addr, align 4
  %idxprom150 = sext i32 %88 to i64
  %89 = load %union.rec*, %union.rec** %prec_def, align 8
  %os1151 = bitcast %union.rec* %89 to %struct.word_type*
  %ou3152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 3
  %os31153 = bitcast %union.THIRD_UNION* %ou3152 to %struct.anon.6*
  %ofwd154 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31153, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd154, i32 0, i64 %idxprom150
  %90 = load i32, i32* %arrayidx155, align 4
  %91 = load i32, i32* %dim.addr, align 4
  %idxprom156 = sext i32 %91 to i64
  %92 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1157 = bitcast %union.rec* %92 to %struct.word_type*
  %ou3158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 3
  %os31159 = bitcast %union.THIRD_UNION* %ou3158 to %struct.anon.6*
  %oback160 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x i32], [2 x i32]* %oback160, i32 0, i64 %idxprom156
  %93 = load i32, i32* %arrayidx161, align 4
  %94 = load i32, i32* %dim.addr, align 4
  %idxprom162 = sext i32 %94 to i64
  %95 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1163 = bitcast %union.rec* %95 to %struct.word_type*
  %ou3164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 3
  %os31165 = bitcast %union.THIRD_UNION* %ou3164 to %struct.anon.6*
  %ofwd166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31165, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd166, i32 0, i64 %idxprom162
  %96 = load i32, i32* %arrayidx167, align 4
  %97 = load %union.rec*, %union.rec** %pg, align 8
  %os5168 = bitcast %union.rec* %97 to %struct.gapobj_type*
  %ogap169 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5168, i32 0, i32 3
  %call170 = call i32 @MinGap(i32 %90, i32 %93, i32 %96, %struct.GAP* %ogap169)
  %sub171 = sub nsw i32 %call149, %call170
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.140, %cond.true.133
  %cond173 = phi i32 [ %sub, %cond.true.133 ], [ %sub171, %cond.false.140 ]
  store i32 %cond173, i32* %beffect, align 4
  %98 = load %union.rec*, %union.rec** %sg, align 8
  %cmp174 = icmp eq %union.rec* %98, null
  br i1 %cmp174, label %cond.true.176, label %cond.false.184

cond.true.176:                                    ; preds = %cond.end.172
  %99 = load i32*, i32** %f.addr, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %dim.addr, align 4
  %idxprom177 = sext i32 %101 to i64
  %102 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1178 = bitcast %union.rec* %102 to %struct.word_type*
  %ou3179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 3
  %os31180 = bitcast %union.THIRD_UNION* %ou3179 to %struct.anon.6*
  %ofwd181 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31180, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd181, i32 0, i64 %idxprom177
  %103 = load i32, i32* %arrayidx182, align 4
  %sub183 = sub nsw i32 %100, %103
  br label %cond.end.222

cond.false.184:                                   ; preds = %cond.end.172
  %104 = load i32*, i32** %f.addr, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %dim.addr, align 4
  %idxprom185 = sext i32 %106 to i64
  %107 = load %union.rec*, %union.rec** %sd, align 8
  %os1186 = bitcast %union.rec* %107 to %struct.word_type*
  %ou3187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 3
  %os31188 = bitcast %union.THIRD_UNION* %ou3187 to %struct.anon.6*
  %oback189 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x i32], [2 x i32]* %oback189, i32 0, i64 %idxprom185
  %108 = load i32, i32* %arrayidx190, align 4
  %109 = load i32, i32* %dim.addr, align 4
  %idxprom191 = sext i32 %109 to i64
  %110 = load %union.rec*, %union.rec** %sd, align 8
  %os1192 = bitcast %union.rec* %110 to %struct.word_type*
  %ou3193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 3
  %os31194 = bitcast %union.THIRD_UNION* %ou3193 to %struct.anon.6*
  %ofwd195 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31194, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd195, i32 0, i64 %idxprom191
  %111 = load i32, i32* %arrayidx196, align 4
  %112 = load %union.rec*, %union.rec** %sg, align 8
  %os5197 = bitcast %union.rec* %112 to %struct.gapobj_type*
  %ogap198 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5197, i32 0, i32 3
  %call199 = call i32 @MinGap(i32 %105, i32 %108, i32 %111, %struct.GAP* %ogap198)
  %113 = load i32, i32* %dim.addr, align 4
  %idxprom200 = sext i32 %113 to i64
  %114 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1201 = bitcast %union.rec* %114 to %struct.word_type*
  %ou3202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 3
  %os31203 = bitcast %union.THIRD_UNION* %ou3202 to %struct.anon.6*
  %ofwd204 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31203, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd204, i32 0, i64 %idxprom200
  %115 = load i32, i32* %arrayidx205, align 4
  %116 = load i32, i32* %dim.addr, align 4
  %idxprom206 = sext i32 %116 to i64
  %117 = load %union.rec*, %union.rec** %sd, align 8
  %os1207 = bitcast %union.rec* %117 to %struct.word_type*
  %ou3208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 3
  %os31209 = bitcast %union.THIRD_UNION* %ou3208 to %struct.anon.6*
  %oback210 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x i32], [2 x i32]* %oback210, i32 0, i64 %idxprom206
  %118 = load i32, i32* %arrayidx211, align 4
  %119 = load i32, i32* %dim.addr, align 4
  %idxprom212 = sext i32 %119 to i64
  %120 = load %union.rec*, %union.rec** %sd, align 8
  %os1213 = bitcast %union.rec* %120 to %struct.word_type*
  %ou3214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 3
  %os31215 = bitcast %union.THIRD_UNION* %ou3214 to %struct.anon.6*
  %ofwd216 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31215, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd216, i32 0, i64 %idxprom212
  %121 = load i32, i32* %arrayidx217, align 4
  %122 = load %union.rec*, %union.rec** %sg, align 8
  %os5218 = bitcast %union.rec* %122 to %struct.gapobj_type*
  %ogap219 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5218, i32 0, i32 3
  %call220 = call i32 @MinGap(i32 %115, i32 %118, i32 %121, %struct.GAP* %ogap219)
  %sub221 = sub nsw i32 %call199, %call220
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.false.184, %cond.true.176
  %cond223 = phi i32 [ %sub183, %cond.true.176 ], [ %sub221, %cond.false.184 ]
  store i32 %cond223, i32* %feffect, align 4
  store i32 0, i32* %seffect, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %cond.end.222, %cond.end.129
  %123 = load i32*, i32** %b.addr, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %dim.addr, align 4
  %idxprom225 = sext i32 %125 to i64
  %126 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1226 = bitcast %union.rec* %126 to %struct.word_type*
  %ou3227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 3
  %os31228 = bitcast %union.THIRD_UNION* %ou3227 to %struct.anon.6*
  %oback229 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x i32], [2 x i32]* %oback229, i32 0, i64 %idxprom225
  store i32 %124, i32* %arrayidx230, align 4
  %127 = load i32*, i32** %f.addr, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %dim.addr, align 4
  %idxprom231 = sext i32 %129 to i64
  %130 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1232 = bitcast %union.rec* %130 to %struct.word_type*
  %ou3233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 3
  %os31234 = bitcast %union.THIRD_UNION* %ou3233 to %struct.anon.6*
  %ofwd235 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31234, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd235, i32 0, i64 %idxprom231
  store i32 %128, i32* %arrayidx236, align 4
  %131 = load i32, i32* %side, align 4
  switch i32 %131, label %sw.epilog [
    i32 151, label %sw.bb
    i32 152, label %sw.bb.251
    i32 153, label %sw.bb.267
  ]

sw.bb:                                            ; preds = %if.end.224
  %132 = load i32, i32* %dim.addr, align 4
  %idxprom237 = sext i32 %132 to i64
  %133 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1238 = bitcast %union.rec* %133 to %struct.word_type*
  %ou3239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 3
  %os31240 = bitcast %union.THIRD_UNION* %ou3239 to %struct.anon.6*
  %oback241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x i32], [2 x i32]* %oback241, i32 0, i64 %idxprom237
  %134 = load i32, i32* %arrayidx242, align 4
  %135 = load i32, i32* %beffect, align 4
  %add = add nsw i32 %134, %135
  %136 = load i32, i32* %feffect, align 4
  %add243 = add nsw i32 %add, %136
  %137 = load i32, i32* %seffect, align 4
  %sub244 = sub nsw i32 %add243, %137
  store i32 %sub244, i32* %bb, align 4
  %138 = load i32, i32* %dim.addr, align 4
  %idxprom245 = sext i32 %138 to i64
  %139 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1246 = bitcast %union.rec* %139 to %struct.word_type*
  %ou3247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 3
  %os31248 = bitcast %union.THIRD_UNION* %ou3247 to %struct.anon.6*
  %ofwd249 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31248, i32 0, i32 1
  %arrayidx250 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd249, i32 0, i64 %idxprom245
  %140 = load i32, i32* %arrayidx250, align 4
  store i32 %140, i32* %ff, align 4
  br label %sw.epilog

sw.bb.251:                                        ; preds = %if.end.224
  %141 = load i32, i32* %dim.addr, align 4
  %idxprom252 = sext i32 %141 to i64
  %142 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1253 = bitcast %union.rec* %142 to %struct.word_type*
  %ou3254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 3
  %os31255 = bitcast %union.THIRD_UNION* %ou3254 to %struct.anon.6*
  %oback256 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x i32], [2 x i32]* %oback256, i32 0, i64 %idxprom252
  %143 = load i32, i32* %arrayidx257, align 4
  %144 = load i32, i32* %beffect, align 4
  %add258 = add nsw i32 %143, %144
  %145 = load i32, i32* %seffect, align 4
  %sub259 = sub nsw i32 %add258, %145
  store i32 %sub259, i32* %bb, align 4
  %146 = load i32, i32* %dim.addr, align 4
  %idxprom260 = sext i32 %146 to i64
  %147 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1261 = bitcast %union.rec* %147 to %struct.word_type*
  %ou3262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 3
  %os31263 = bitcast %union.THIRD_UNION* %ou3262 to %struct.anon.6*
  %ofwd264 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31263, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd264, i32 0, i64 %idxprom260
  %148 = load i32, i32* %arrayidx265, align 4
  %149 = load i32, i32* %feffect, align 4
  %add266 = add nsw i32 %148, %149
  store i32 %add266, i32* %ff, align 4
  br label %sw.epilog

sw.bb.267:                                        ; preds = %if.end.224
  %150 = load i32, i32* %dim.addr, align 4
  %idxprom268 = sext i32 %150 to i64
  %151 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1269 = bitcast %union.rec* %151 to %struct.word_type*
  %ou3270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 3
  %os31271 = bitcast %union.THIRD_UNION* %ou3270 to %struct.anon.6*
  %oback272 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x i32], [2 x i32]* %oback272, i32 0, i64 %idxprom268
  %152 = load i32, i32* %arrayidx273, align 4
  store i32 %152, i32* %bb, align 4
  %153 = load i32, i32* %dim.addr, align 4
  %idxprom274 = sext i32 %153 to i64
  %154 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1275 = bitcast %union.rec* %154 to %struct.word_type*
  %ou3276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 3
  %os31277 = bitcast %union.THIRD_UNION* %ou3276 to %struct.anon.6*
  %ofwd278 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31277, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd278, i32 0, i64 %idxprom274
  %155 = load i32, i32* %arrayidx279, align 4
  %156 = load i32, i32* %beffect, align 4
  %add280 = add nsw i32 %155, %156
  %157 = load i32, i32* %feffect, align 4
  %add281 = add nsw i32 %add280, %157
  %158 = load i32, i32* %seffect, align 4
  %sub282 = sub nsw i32 %add281, %158
  store i32 %sub282, i32* %ff, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.224, %sw.bb.267, %sw.bb.251, %sw.bb
  %159 = load i32, i32* %bb, align 4
  %160 = load i32*, i32** %b.addr, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %ff, align 4
  %162 = load i32*, i32** %f.addr, align 8
  store i32 %161, i32* %162, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

declare i8* @Image(i32) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
